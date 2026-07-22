.include "macros.s.inc"


thumb_func_start func_806AF4C
func_806AF4C:
	push	{r4, r5, lr}
	sub	sp, #8
	ldr	r2, .L_6af84
	mov	r1, #0
	mov	r0, sp
	add	r0, #6
.L_6af58:
	strh	r1, [r0, #0]
	sub	r0, #2
	cmp	r0, sp
	bge	.L_6af58
	mov	r0, #0
	strb	r0, [r2, #0]
	ldr	r2, .L_6af88
	ldrb	r1, [r2, #1]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_6af8c
	ldr	r0, [r2, #8]
	ldrb	r0, [r0, #0]
	bl	func_806B3E8
	mov	r2, sp
	mov	r1, #8
	orr	r0, r1
	strh	r0, [r2, #0]
	b	.L_6af92
	.align	2, 0
.L_6af84:
	.4byte	gDrawWarioOverBackground
.L_6af88:
	.4byte	gCurrentRoomHeader
.L_6af8c:
	mov	r1, sp
	ldr	r0, .L_6afb0
	strh	r0, [r1, #0]
.L_6af92:
	mov	r1, sp
	ldr	r0, .L_6afb4
	strh	r0, [r1, #2]
	ldr	r0, .L_6afb8
	strh	r0, [r1, #4]
	mov	r0, sp
	ldr	r3, .L_6afbc
	strh	r3, [r0, #6]
	ldr	r0, .L_6afc0
	ldrb	r0, [r0, #4]
	cmp	r0, #32
	bne	.L_6afc4
	mov	r2, sp
	mov	r1, #8
	b	.L_6afc8
.L_6afb0:
	.4byte	0x4004
.L_6afb4:
	.4byte	0x4204
.L_6afb8:
	.4byte	0x4404
.L_6afbc:
	.4byte	0x603
.L_6afc0:
	.4byte	gCurrentRoomHeader
.L_6afc4:
	mov	r2, sp
	mov	r1, #4
.L_6afc8:
	add	r0, r3, #0
	orr	r0, r1
	strh	r0, [r2, #6]
	ldr	r4, .L_6aff4
	ldr	r0, [r4, #20]
	ldrb	r0, [r0, #0]
	bl	func_806B3E8
	mov	r2, sp
	mov	r1, sp
	ldrh	r1, [r1, #6]
	orr	r0, r1
	strh	r0, [r2, #6]
	ldrb	r0, [r4, #26]
	cmp	r0, #51	@ 0x33
	bhi	.L_6b0cc
	lsl	r0, r0, #2
	ldr	r1, .L_6aff8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_6aff4:
	.4byte	gCurrentRoomHeader
.L_6aff8:
	.4byte	.L_6affc
.L_6affc:
	.4byte	.L_6b0cc
	.4byte	.L_6b0cc
	.4byte	.L_6b0cc
	.4byte	.L_6b0cc
	.4byte	.L_6b0cc
	.4byte	.L_6b0e2
	.4byte	.L_6b102
	.4byte	.L_6b12c
	.4byte	.L_6b0cc
	.4byte	.L_6b0e2
	.4byte	.L_6b102
	.4byte	.L_6b12c
	.4byte	.L_6b0cc
	.4byte	.L_6b0e2
	.4byte	.L_6b102
	.4byte	.L_6b12c
	.4byte	.L_6b0cc
	.4byte	.L_6b0e2
	.4byte	.L_6b102
	.4byte	.L_6b12c
	.4byte	.L_6b0cc
	.4byte	.L_6b0e2
	.4byte	.L_6b102
	.4byte	.L_6b12c
	.4byte	.L_6b0cc
	.4byte	.L_6b0e2
	.4byte	.L_6b102
	.4byte	.L_6b12c
	.4byte	.L_6b0cc
	.4byte	.L_6b0e2
	.4byte	.L_6b102
	.4byte	.L_6b12c
	.4byte	.L_6b0cc
	.4byte	.L_6b0e2
	.4byte	.L_6b102
	.4byte	.L_6b12c
	.4byte	.L_6b0cc
	.4byte	.L_6b0e2
	.4byte	.L_6b102
	.4byte	.L_6b12c
	.4byte	.L_6b0cc
	.4byte	.L_6b0e2
	.4byte	.L_6b102
	.4byte	.L_6b12c
	.4byte	.L_6b0cc
	.4byte	.L_6b0e2
	.4byte	.L_6b102
	.4byte	.L_6b12c
	.4byte	.L_6b0cc
	.4byte	.L_6b0e2
	.4byte	.L_6b102
	.4byte	.L_6b12c
.L_6b0cc:
	mov	r1, sp
	mov	r0, sp
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	mov	r2, sp
	mov	r0, sp
	ldrh	r0, [r0, #2]
	mov	r1, #1
	orr	r0, r1
	strh	r0, [r2, #2]
	b	.L_6b0f6
.L_6b0e2:
	mov	r2, sp
	mov	r0, sp
	ldrh	r1, [r0, #0]
	mov	r0, #1
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r1, sp
	mov	r0, sp
	ldrh	r0, [r0, #2]
	strh	r0, [r1, #2]
.L_6b0f6:
	mov	r0, sp
	ldrh	r1, [r0, #4]
	mov	r0, #2
	orr	r0, r1
	strh	r0, [r2, #4]
	b	.L_6b14e
.L_6b102:
	mov	r1, sp
	mov	r0, sp
	ldrh	r0, [r0, #0]
	mov	r3, #1
	orr	r0, r3
	strh	r0, [r1, #0]
	mov	r0, sp
	ldrh	r0, [r0, #2]
	strh	r0, [r1, #2]
	mov	r2, sp
	mov	r0, sp
	ldrh	r1, [r0, #4]
	mov	r0, #2
	orr	r0, r1
	strh	r0, [r2, #4]
	ldr	r0, .L_6b128
	strb	r3, [r0, #0]
	b	.L_6b14e
	.align	2, 0
.L_6b128:
	.4byte	gDrawWarioOverBackground
.L_6b12c:
	mov	r2, sp
	mov	r0, sp
	ldrh	r1, [r0, #0]
	mov	r0, #2
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r1, sp
	mov	r0, sp
	ldrh	r0, [r0, #2]
	strh	r0, [r1, #2]
	mov	r0, sp
	ldrh	r0, [r0, #4]
	mov	r1, #1
	orr	r0, r1
	strh	r0, [r2, #4]
	ldr	r0, .L_6b168
	strb	r1, [r0, #0]
.L_6b14e:
	mov	r3, #0
	mov	r2, #0
	ldr	r0, .L_6b16c
	ldrb	r0, [r0, #26]
	sub	r0, #8
	cmp	r0, #43	@ 0x2b
	bhi	.L_6b24e
	lsl	r0, r0, #2
	ldr	r1, .L_6b170
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_6b168:
	.4byte	gDrawWarioOverBackground
.L_6b16c:
	.4byte	gCurrentRoomHeader
.L_6b170:
	.4byte	.L_6b174
.L_6b174:
	.4byte	.L_6b240
	.4byte	.L_6b240
	.4byte	.L_6b240
	.4byte	.L_6b240
	.4byte	.L_6b244
	.4byte	.L_6b244
	.4byte	.L_6b244
	.4byte	.L_6b244
	.4byte	.L_6b248
	.4byte	.L_6b248
	.4byte	.L_6b248
	.4byte	.L_6b248
	.4byte	.L_6b24c
	.4byte	.L_6b24c
	.4byte	.L_6b24c
	.4byte	.L_6b24c
	.4byte	.L_6b224
	.4byte	.L_6b224
	.4byte	.L_6b224
	.4byte	.L_6b224
	.4byte	.L_6b228
	.4byte	.L_6b228
	.4byte	.L_6b228
	.4byte	.L_6b228
	.4byte	.L_6b22c
	.4byte	.L_6b22c
	.4byte	.L_6b22c
	.4byte	.L_6b22c
	.4byte	.L_6b230
	.4byte	.L_6b230
	.4byte	.L_6b230
	.4byte	.L_6b230
	.4byte	.L_6b234
	.4byte	.L_6b234
	.4byte	.L_6b234
	.4byte	.L_6b234
	.4byte	.L_6b238
	.4byte	.L_6b238
	.4byte	.L_6b238
	.4byte	.L_6b238
	.4byte	.L_6b23c
	.4byte	.L_6b23c
	.4byte	.L_6b23c
	.4byte	.L_6b23c
.L_6b224:
	mov	r2, #0
	b	.L_6b24e
.L_6b228:
	mov	r2, #3
	b	.L_6b24e
.L_6b22c:
	mov	r2, #6
	b	.L_6b24e
.L_6b230:
	mov	r2, #9
	b	.L_6b24e
.L_6b234:
	mov	r2, #11
	b	.L_6b24e
.L_6b238:
	mov	r2, #13
	b	.L_6b24e
.L_6b23c:
	mov	r2, #16
	b	.L_6b24e
.L_6b240:
	mov	r3, #7
	b	.L_6b2b8
.L_6b244:
	mov	r3, #10
	b	.L_6b2b8
.L_6b248:
	mov	r3, #13
	b	.L_6b2b8
.L_6b24c:
	mov	r3, #16
.L_6b24e:
	cmp	r3, #0
	bne	.L_6b2b8
	ldr	r0, .L_6b2a0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	bne	.L_6b286
	ldr	r0, .L_6b2a4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_6b286
	ldr	r4, .L_6b2a8
	strb	r3, [r4, #3]
	strb	r2, [r4, #0]
	strb	r2, [r4, #1]
	strb	r2, [r4, #2]
	ldr	r0, .L_6b2ac
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	beq	.L_6b286
	mov	r0, #0
	bl	func_806ADD4
	ldrb	r0, [r4, #0]
	strb	r0, [r4, #1]
.L_6b286:
	ldr	r3, .L_6b2b0
	ldr	r0, .L_6b2a8
	ldrb	r2, [r0, #1]
	lsl	r1, r2, #8
	mov	r0, #16
	sub	r0, r0, r2
	orr	r1, r0
	strh	r1, [r3, #0]
	ldr	r1, .L_6b2b4
	mov	r0, #0
	strh	r0, [r1, #0]
	b	.L_6b2ce
	.align	2, 0
.L_6b2a0:
	.4byte	gPauseFlag
.L_6b2a4:
	.4byte	gHasTemporarySave
.L_6b2a8:
	.4byte	gUnk_30000D8
.L_6b2ac:
	.4byte	gUnk_3000C3F
.L_6b2b0:
	.4byte	0x4000052
.L_6b2b4:
	.4byte	gBldAlpha
.L_6b2b8:
	ldr	r0, .L_6b2fc
	mov	r2, #0
	strb	r3, [r0, #2]
	ldr	r1, .L_6b300
	mov	r4, #128	@ 0x80
	lsl	r4, r4, #5
	add	r0, r4, #0
	orr	r3, r0
	strh	r3, [r1, #0]
	ldr	r0, .L_6b304
	strh	r2, [r0, #0]
.L_6b2ce:
	ldr	r0, .L_6b308
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_6b356
	ldr	r2, .L_6b30c
	ldr	r3, .L_6b310
	ldrh	r0, [r3, #18]
	ldr	r5, .L_6b314
	ldrh	r1, [r5, #0]
	sub	r0, r0, r1
	asr	r0, r0, #2
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	add	r4, r2, #0
	cmp	r0, #240	@ 0xf0
	bls	.L_6b31c
	ldrh	r0, [r3, #18]
	ldrh	r5, [r5, #0]
	cmp	r0, r5
	bcs	.L_6b318
	mov	r0, #0
	b	.L_6b31a
.L_6b2fc:
	.4byte	gUnk_30000D8
.L_6b300:
	.4byte	0x4000052
.L_6b304:
	.4byte	gBldAlpha
.L_6b308:
	.4byte	gColorFading
.L_6b30c:
	.4byte	gWindow
.L_6b310:
	.4byte	gWarioData
.L_6b314:
	.4byte	gBg1XPosition
.L_6b318:
	mov	r0, #240	@ 0xf0
.L_6b31a:
	strb	r0, [r4, #0]
.L_6b31c:
	ldrh	r1, [r3, #20]
	ldr	r2, .L_6b340
	ldrh	r0, [r2, #0]
	add	r0, #63	@ 0x3f
	sub	r1, r1, r0
	asr	r1, r1, #2
	strb	r1, [r4, #2]
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	cmp	r1, #160	@ 0xa0
	bls	.L_6b348
	ldrh	r0, [r3, #20]
	sub	r0, #63	@ 0x3f
	ldrh	r2, [r2, #0]
	cmp	r0, r2
	bge	.L_6b344
	mov	r0, #0
	b	.L_6b346
.L_6b340:
	.4byte	gBg1YPosition
.L_6b344:
	mov	r0, #160	@ 0xa0
.L_6b346:
	strb	r0, [r4, #2]
.L_6b348:
	ldrb	r0, [r4, #0]
	mov	r1, #0
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #2]
	strb	r0, [r4, #3]
	strb	r1, [r4, #4]
	b	.L_6b36a
.L_6b356:
	ldr	r1, .L_6b3d0
	mov	r2, #0
	strb	r2, [r1, #0]
	mov	r0, #240	@ 0xf0
	strb	r0, [r1, #1]
	strb	r2, [r1, #2]
	mov	r0, #160	@ 0xa0
	strb	r0, [r1, #3]
	strb	r2, [r1, #4]
	add	r4, r1, #0
.L_6b36a:
	ldr	r1, .L_6b3d4
	mov	r0, #32
	strb	r0, [r1, #0]
	sub	r1, #1
	mov	r0, #63	@ 0x3f
	strb	r0, [r1, #0]
	ldr	r2, .L_6b3d8
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #8
	ldrb	r0, [r4, #1]
	orr	r0, r1
	strh	r0, [r2, #0]
	add	r2, #4
	ldrb	r1, [r4, #2]
	lsl	r1, r1, #8
	ldrb	r0, [r4, #3]
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_6b3dc
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r0, .L_6b3e0
	mov	r2, #0
	strh	r2, [r0, #0]
	add	r0, #4
	strh	r2, [r0, #0]
	sub	r1, #64	@ 0x40
	mov	r0, sp
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	mov	r0, sp
	ldrh	r0, [r0, #2]
	strh	r0, [r1, #0]
	add	r1, #2
	mov	r0, sp
	ldrh	r0, [r0, #4]
	strh	r0, [r1, #0]
	add	r1, #2
	mov	r0, sp
	ldrh	r0, [r0, #6]
	strh	r0, [r1, #0]
	ldr	r0, .L_6b3e4
	strh	r2, [r0, #0]
	add	r1, #62	@ 0x3e
	mov	r0, #0
	strh	r0, [r1, #0]
	add	sp, #8
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_6b3d0:
	.4byte	gWindow
.L_6b3d4:
	.4byte	0x400004A
.L_6b3d8:
	.4byte	0x4000042
.L_6b3dc:
	.4byte	0x4000048
.L_6b3e0:
	.4byte	0x4000040
.L_6b3e4:
	.4byte	gMosaic


thumb_func_start func_806B3E8
func_806B3E8:
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	add	r2, r0, #0
	mov	r1, #0
	cmp	r0, #1
	beq	.L_6b402
	cmp	r0, #1
	bgt	.L_6b3fe
	cmp	r0, #0
	beq	.L_6b40c
	b	.L_6b402
.L_6b3fe:
	cmp	r2, #2
	beq	.L_6b408
.L_6b402:
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #7
	b	.L_6b40c
.L_6b408:
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #8
.L_6b40c:
	add	r0, r1, #0
	bx	lr


thumb_func_start func_806B410
func_806B410:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #36	@ 0x24
	bl	func_806B864
	ldr	r4, .L_6b470
	ldr	r1, .L_6b474
	ldr	r0, .L_6b478
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, .L_6b47c
	ldrb	r1, [r1, #0]
	ldr	r2, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r1, r0
	add	r0, r4, #0
	add	r1, r1, r2
	ldmia	r1!, {r2, r3, r5}
	stmia	r0!, {r2, r3, r5}
	ldmia	r1!, {r2, r3, r5}
	stmia	r0!, {r2, r3, r5}
	ldmia	r1!, {r2, r3, r5}
	stmia	r0!, {r2, r3, r5}
	ldmia	r1!, {r2, r3}
	stmia	r0!, {r2, r3}
	ldr	r2, .L_6b480
	ldrb	r0, [r4, #0]
	lsl	r1, r0, #3
	add	r1, r1, r0
	lsl	r1, r1, #2
	mov	r0, sp
	add	r1, r1, r2
	ldmia	r1!, {r2, r3, r5}
	stmia	r0!, {r2, r3, r5}
	ldmia	r1!, {r2, r3, r5}
	stmia	r0!, {r2, r3, r5}
	ldmia	r1!, {r2, r3, r5}
	stmia	r0!, {r2, r3, r5}
	bl	func_806BF3C
	ldr	r0, .L_6b484
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_6b488
	ldr	r0, [r4, #32]
	b	.L_6b48e
.L_6b470:
	.4byte	gCurrentRoomHeader
.L_6b474:
	.4byte	sUnk_878F280
.L_6b478:
	.4byte	gUnk_3000023
.L_6b47c:
	.4byte	gCurrentRoom
.L_6b480:
	.4byte	sUnk_83F2298
.L_6b484:
	.4byte	gDifficulty
.L_6b488:
	cmp	r0, #2
	bne	.L_6b490
	ldr	r0, [r4, #36]	@ 0x24
.L_6b48e:
	str	r0, [r4, #28]
.L_6b490:
	ldr	r0, .L_6b5cc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6b49e
	ldr	r1, .L_6b5d0
	mov	r0, #0
	strh	r0, [r1, #42]	@ 0x2a
.L_6b49e:
	ldr	r1, .L_6b5d4
	ldr	r0, [sp, #20]
	str	r0, [r1, #0]
	ldr	r0, [sp, #24]
	str	r0, [r1, #4]
	ldr	r0, [sp, #28]
	str	r0, [r1, #8]
	bl	func_806BAD0
	ldr	r0, .L_6b5d8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	beq	.L_6b4c4
	ldr	r0, .L_6b5dc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6b4c8
.L_6b4c4:
	bl	func_806BD64
.L_6b4c8:
	ldr	r5, .L_6b5e0
	ldr	r0, [sp, #0]
	str	r0, [r5, #0]
	ldr	r0, .L_6b5e4
	str	r0, [r5, #4]
	mov	r0, sp
	ldrh	r0, [r0, #4]
	lsr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	mov	r8, r1
	orr	r0, r1
	str	r0, [r5, #8]
	ldr	r0, [r5, #8]
	bl	func_806D3A4
	ldr	r7, .L_6b5e8
	str	r7, [r5, #0]
	ldr	r0, .L_6b5ec
	str	r0, [r5, #4]
	ldr	r6, .L_6b5f0
	str	r6, [r5, #8]
	ldr	r0, [r5, #8]
	ldr	r0, [sp, #8]
	str	r0, [r5, #0]
	mov	r4, #160	@ 0xa0
	lsl	r4, r4, #19
	str	r4, [r5, #4]
	ldr	r0, .L_6b5f4
	str	r0, [r5, #8]
	ldr	r0, [r5, #8]
	bl	func_806D3A4
	ldr	r0, .L_6b5f8
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	beq	.L_6b51e
	ldr	r0, [sp, #32]
	str	r0, [r5, #0]
	ldr	r0, .L_6b5fc
	str	r0, [r5, #4]
	str	r6, [r5, #8]
	ldr	r0, [r5, #8]
.L_6b51e:
	ldr	r2, .L_6b600
	ldr	r0, [sp, #8]
	ldrh	r0, [r0, #0]
	mov	r1, #0
	strh	r0, [r2, #0]
	strh	r1, [r4, #0]
	strh	r1, [r2, #2]
	ldr	r0, [sp, #12]
	str	r0, [r5, #0]
	mov	r0, sp
	ldrh	r0, [r0, #16]
	ldr	r4, .L_6b604
	sub	r0, r4, r0
	str	r0, [r5, #4]
	mov	r0, sp
	ldrh	r0, [r0, #16]
	lsr	r0, r0, #1
	mov	r2, r8
	orr	r0, r2
	str	r0, [r5, #8]
	ldr	r0, [r5, #8]
	bl	func_806D3A4
	str	r7, [r5, #0]
	str	r4, [r5, #4]
	str	r6, [r5, #8]
	ldr	r0, [r5, #8]
	bl	func_806B71C
	bl	func_806B810
	ldr	r1, .L_6b608
	ldr	r2, .L_6b60c
	ldrh	r0, [r2, #18]
	strh	r0, [r1, #0]
	ldr	r1, .L_6b610
	ldrh	r0, [r2, #20]
	strh	r0, [r1, #0]
	ldr	r0, .L_6b614
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	bne	.L_6b594
	ldr	r0, .L_6b5dc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_6b594
	bl	func_806E7F8
	ldr	r1, .L_6b618
	ldr	r2, .L_6b61c
	ldrh	r0, [r2, #2]
	strh	r0, [r1, #0]
	ldr	r1, .L_6b620
	ldrh	r0, [r2, #0]
	strh	r0, [r1, #0]
	bl	func_806E7F8
.L_6b594:
	bl	func_806AF4C
	bl	func_806C828
	mov	r0, #0
	bl	func_806BB4C
	mov	r0, #1
	bl	func_806BB4C
	mov	r0, #2
	bl	func_806BB4C
	ldr	r0, .L_6b624
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_6b666
	ldr	r0, .L_6b628
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_6b638
	ldr	r0, .L_6b62c
	ldr	r1, .L_6b630
	bl	LZ77UnCompVram
	ldr	r1, .L_6b634
	b	.L_6b642
	.align	2, 0
.L_6b5cc:
	.4byte	gUnk_300001C
.L_6b5d0:
	.4byte	gCurrentRoomHeader
.L_6b5d4:
	.4byte	gUnk_30031F4
.L_6b5d8:
	.4byte	gUnk_3000C3F
.L_6b5dc:
	.4byte	gHasTemporarySave
.L_6b5e0:
	.4byte	0x40000D4
.L_6b5e4:
	.4byte	0x6004820
.L_6b5e8:
	.4byte	sUnk_83F2020
.L_6b5ec:
	.4byte	0x6004800
.L_6b5f0:
	.4byte	0x80000010
.L_6b5f4:
	.4byte	0x80000100
.L_6b5f8:
	.4byte	gCurrentStageNumber
.L_6b5fc:
	.4byte	0x5000260
.L_6b600:
	.4byte	gUnk_300321C
.L_6b604:
	.4byte	0x600FFE0
.L_6b608:
	.4byte	gPreviousXPosition
.L_6b60c:
	.4byte	gWarioData
.L_6b610:
	.4byte	gPreviousYPosition
.L_6b614:
	.4byte	gPauseFlag
.L_6b618:
	.4byte	gBg1YPosition
.L_6b61c:
	.4byte	gUnk_3003224
.L_6b620:
	.4byte	gBg1XPosition
.L_6b624:
	.4byte	gUnk_300001B
.L_6b628:
	.4byte	gCurrentPassage
.L_6b62c:
	.4byte	sUnk_83FBDF0
.L_6b630:
	.4byte	0x6008000
.L_6b634:
	.4byte	sUnk_83FD74F
.L_6b638:
	ldr	r0, .L_6b69c
	ldr	r1, .L_6b6a0
	bl	LZ77UnCompVram
	ldr	r1, .L_6b6a4
.L_6b642:
	ldr	r2, .L_6b6a8
	mov	r0, #0
	bl	func_806BDF8
	add	r3, r0, #0
	ldr	r2, .L_6b6ac
	ldr	r0, .L_6b6a8
	str	r0, [r2, #0]
	ldr	r0, .L_6b6b0
	str	r0, [r2, #4]
	lsr	r0, r3, #31
	add	r0, r3, r0
	asr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_6b666:
	ldr	r0, .L_6b6b4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6b678
	ldr	r1, .L_6b6b8
	ldr	r2, .L_6b6bc
	mov	r0, #0
	bl	func_806BDF8
.L_6b678:
	bl	func_806F7CC
	bl	func_806E1E8
	bl	func_8071598
	bl	func_8071A2C
	ldr	r1, .L_6b6c0
	ldrb	r0, [r1, #2]
	cmp	r0, #0
	beq	.L_6b6d6
	ldrb	r0, [r1, #1]
	cmp	r0, #17
	bne	.L_6b6c4
	ldrh	r0, [r1, #20]
	add	r0, #128	@ 0x80
	b	.L_6b6cc
.L_6b69c:
	.4byte	sUnk_83FA838
.L_6b6a0:
	.4byte	0x6008000
.L_6b6a4:
	.4byte	sUnk_83FD4A8
.L_6b6a8:
	.4byte	0x201F840
.L_6b6ac:
	.4byte	0x40000D4
.L_6b6b0:
	.4byte	0x6003800
.L_6b6b4:
	.4byte	gUnk_300001B
.L_6b6b8:
	.4byte	sUnk_83F2240
.L_6b6bc:
	.4byte	0x201F040
.L_6b6c0:
	.4byte	gWarioData
.L_6b6c4:
	cmp	r0, #18
	bne	.L_6b6ce
	ldrh	r0, [r1, #20]
	sub	r0, #128	@ 0x80
.L_6b6cc:
	strh	r0, [r1, #20]
.L_6b6ce:
	ldr	r0, .L_6b6f0
	ldr	r1, .L_6b6f4
	ldrh	r1, [r1, #20]
	strh	r1, [r0, #0]
.L_6b6d6:
	ldr	r0, .L_6b6f8
	ldr	r0, [r0, #8]
	ldrh	r3, [r0, #0]
	ldr	r0, .L_6b6fc
	ldr	r1, [r0, #8]
	lsl	r0, r3, #1
	add	r0, r0, r1
	ldrh	r3, [r0, #0]
	cmp	r3, #160	@ 0xa0
	bne	.L_6b704
	ldr	r1, .L_6b700
	mov	r0, #1
	b	.L_6b708
.L_6b6f0:
	.4byte	gPreviousYPosition
.L_6b6f4:
	.4byte	gWarioData
.L_6b6f8:
	.4byte	gBackgroundInfo
.L_6b6fc:
	.4byte	gUnk_30031F4
.L_6b700:
	.4byte	gUnk_3000034
.L_6b704:
	ldr	r1, .L_6b718
	mov	r0, #0
.L_6b708:
	strb	r0, [r1, #0]
	add	sp, #36	@ 0x24
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6b718:
	.4byte	gUnk_3000034


thumb_func_start func_806B71C
func_806B71C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r6, .L_6b7b4
	ldr	r1, [r6, #20]
	ldr	r4, .L_6b7b8
	mov	r0, #0
	add	r2, r4, #0
	bl	func_806BDF8
	add	r1, r0, #0
	ldr	r5, .L_6b7bc
	str	r4, [r5, #0]
	ldr	r0, .L_6b7c0
	str	r0, [r5, #4]
	lsr	r0, r1, #31
	add	r0, r1, r0
	asr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	mov	r8, r1
	orr	r0, r1
	str	r0, [r5, #8]
	ldr	r0, [r5, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #18
	ldr	r0, .L_6b7c4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	ldr	r4, .L_6b7c8
	ldrh	r1, [r0, #0]
	strh	r1, [r4, #12]
	add	r0, #2
	ldrh	r1, [r0, #0]
	strh	r1, [r4, #14]
	add	r0, #2
	str	r0, [r4, #8]
	ldrb	r1, [r6, #3]
	mov	r7, #16
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_6b78e
	ldr	r1, [r6, #16]
	ldr	r2, .L_6b7cc
	str	r2, [r4, #16]
	mov	r0, #1
	bl	func_806BDF8
	add	r1, r0, #0
	asr	r0, r1, #16
	strh	r0, [r4, #20]
	mov	r0, #255	@ 0xff
	and	r1, r0
	strh	r1, [r4, #22]
.L_6b78e:
	ldrb	r1, [r6, #1]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_6b7d4
	ldr	r1, [r6, #8]
	ldr	r2, .L_6b7d0
	str	r2, [r4, #0]
	mov	r0, #1
	bl	func_806BDF8
	add	r1, r0, #0
	asr	r0, r1, #16
	strh	r0, [r4, #4]
	mov	r0, #255	@ 0xff
	and	r1, r0
	strh	r1, [r4, #6]
	b	.L_6b800
	.align	2, 0
.L_6b7b4:
	.4byte	gCurrentRoomHeader
.L_6b7b8:
	.4byte	0x201F040
.L_6b7bc:
	.4byte	0x40000D4
.L_6b7c0:
	.4byte	0x6003000
.L_6b7c4:
	.4byte	gCurrentRoom
.L_6b7c8:
	.4byte	gBackgroundInfo
.L_6b7cc:
	.4byte	0x201A040
.L_6b7d0:
	.4byte	0x201C840
.L_6b7d4:
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_6b800
	ldr	r1, [r6, #8]
	ldr	r4, .L_6b80c
	mov	r0, #0
	add	r2, r4, #0
	bl	func_806BDF8
	add	r1, r0, #0
	str	r4, [r5, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r5, #4]
	lsr	r0, r1, #31
	add	r0, r1, r0
	asr	r0, r0, #1
	mov	r1, r8
	orr	r0, r1
	str	r0, [r5, #8]
	ldr	r0, [r5, #8]
.L_6b800:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6b80c:
	.4byte	0x201C840


thumb_func_start func_806B810
func_806B810:
	push	{r4, r5, lr}
	ldr	r0, .L_6b858
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6b850
	ldr	r3, .L_6b85c
	ldrh	r0, [r3, #0]
	cmp	r0, #0
	beq	.L_6b844
	mov	r1, #0
	ldrh	r0, [r3, #0]
	cmp	r1, r0
	beq	.L_6b844
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #18
	mov	r4, #0
	ldr	r2, .L_6b860
.L_6b832:
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #1
	add	r0, r0, r5
	strh	r4, [r0, #0]
	add	r2, #2
	add	r1, #1
	ldrh	r0, [r3, #0]
	cmp	r1, r0
	bne	.L_6b832
.L_6b844:
	mov	r0, #1
	bl	func_806DF3C
	mov	r0, #1
	bl	func_806DFD8
.L_6b850:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6b858:
	.4byte	gHasTemporarySave
.L_6b85c:
	.4byte	gUnk_300003E
.L_6b860:
	.4byte	0x203A000


thumb_func_start func_806B864
func_806B864:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_6b958
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_6b95c
	strb	r1, [r0, #0]
	ldr	r0, .L_6b960
	strb	r1, [r0, #0]
	ldr	r2, .L_6b964
	mov	r0, #0
	strb	r0, [r2, #1]
	strb	r0, [r2, #2]
	strb	r0, [r2, #3]
	strb	r0, [r2, #4]
	strb	r0, [r2, #5]
	ldr	r1, .L_6b968
	strb	r0, [r1, #0]
	ldr	r1, .L_6b96c
	mov	r3, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_6b970
	strb	r3, [r0, #0]
	ldr	r0, .L_6b974
	mov	r1, #0
	ldrsb	r1, [r0, r1]
	add	r5, r2, #0
	ldr	r4, .L_6b978
	cmp	r1, #0
	bne	.L_6b902
	mov	r0, #2
	strb	r0, [r5, #0]
	ldr	r0, .L_6b97c
	strb	r3, [r0, #0]
	strb	r3, [r0, #1]
	strh	r1, [r0, #4]
	strb	r3, [r0, #6]
	ldr	r0, .L_6b980
	strb	r3, [r0, #0]
	ldr	r0, .L_6b984
	strb	r3, [r0, #0]
	strb	r3, [r0, #1]
	strb	r3, [r0, #2]
	strb	r3, [r0, #3]
	strb	r3, [r0, #4]
	strb	r3, [r0, #5]
	ldr	r0, .L_6b988
	strb	r3, [r0, #0]
	strb	r3, [r0, #1]
	strb	r3, [r0, #2]
	strb	r3, [r0, #3]
	strb	r3, [r0, #4]
	strb	r3, [r0, #5]
	ldr	r0, .L_6b98c
	strb	r3, [r0, #0]
	ldr	r0, .L_6b990
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_6b902
	ldr	r0, .L_6b994
	ldrb	r1, [r0, #0]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	bne	.L_6b8e8
	ldr	r0, .L_6b998
	strb	r3, [r0, #0]
.L_6b8e8:
	ldr	r0, .L_6b99c
	strh	r2, [r0, #0]
	ldr	r0, .L_6b9a0
	strh	r2, [r0, #0]
	ldr	r0, .L_6b9a4
	strh	r2, [r0, #0]
	ldr	r1, .L_6b9a8
	mov	r3, #0
	add	r0, r1, #4
.L_6b8fa:
	strb	r3, [r0, #0]
	sub	r0, #1
	cmp	r0, r1
	bge	.L_6b8fa
.L_6b902:
	mov	r1, #0
	ldrsb	r1, [r4, r1]
	cmp	r1, #0
	beq	.L_6b90c
	b	.L_6baa2
.L_6b90c:
	ldr	r0, .L_6b9ac
	strb	r1, [r0, #0]
	ldr	r1, .L_6b9b0
	ldr	r0, .L_6b9b4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldr	r0, .L_6b998
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r3, r3, r0
	ldr	r1, .L_6b9b8
	ldrb	r0, [r3, #1]
	strb	r0, [r1, #0]
	ldr	r1, .L_6b9bc
	ldrb	r0, [r3, #9]
	strb	r0, [r1, #0]
	ldr	r1, .L_6b9c0
	ldrb	r0, [r3, #0]
	strb	r0, [r1, #0]
	ldrb	r1, [r3, #0]
	ldr	r2, .L_6b990
	cmp	r1, #5
	bne	.L_6b94a
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_6b950
	strb	r1, [r5, #0]
.L_6b94a:
	ldrb	r2, [r2, #0]
	cmp	r2, #0
	beq	.L_6b9c4
.L_6b950:
	bl	func_8000D18
	b	.L_6baa2
	.align	2, 0
.L_6b958:
	.4byte	gSpriteAiDropTimer
.L_6b95c:
	.4byte	gStageExitType
.L_6b960:
	.4byte	gUnk_300001A
.L_6b964:
	.4byte	gColorFading
.L_6b968:
	.4byte	gGoldenDivaShopItemState
.L_6b96c:
	.4byte	gBldCnt
.L_6b970:
	.4byte	gUnk_30037BE
.L_6b974:
	.4byte	gUnk_3000C3F
.L_6b978:
	.4byte	gPauseFlag
.L_6b97c:
	.4byte	gUnk_3003200
.L_6b980:
	.4byte	gUnk_3000035
.L_6b984:
	.4byte	gGoldenDivaDefeatTimer
.L_6b988:
	.4byte	gGoldenDivaRoomTimer
.L_6b98c:
	.4byte	gSpriteAiCollisionOffset
.L_6b990:
	.4byte	gHasTemporarySave
.L_6b994:
	.4byte	gUnk_3000020
.L_6b998:
	.4byte	gUnk_3000025
.L_6b99c:
	.4byte	gUnk_300003E
.L_6b9a0:
	.4byte	gUnk_300003A
.L_6b9a4:
	.4byte	gUnk_300003C
.L_6b9a8:
	.4byte	gSwitchStates
.L_6b9ac:
	.4byte	gUnk_3000046
.L_6b9b0:
	.4byte	sUnk_878F21C
.L_6b9b4:
	.4byte	gUnk_3000023
.L_6b9b8:
	.4byte	gCurrentRoom
.L_6b9bc:
	.4byte	gUnk_3000027
.L_6b9c0:
	.4byte	gUnk_3000026
.L_6b9c4:
	ldr	r0, .L_6ba18
	mov	r1, #0
	strh	r2, [r0, #0]
	strh	r2, [r0, #2]
	strb	r1, [r0, #4]
	strb	r1, [r0, #5]
	ldr	r2, .L_6ba1c
	mov	r1, #0
	ldr	r6, .L_6ba20
	ldr	r4, .L_6ba24
	mov	r5, #0
.L_6b9da:
	strh	r5, [r2, #0]
	add	r2, #2
	add	r0, r1, #1
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	cmp	r1, #63	@ 0x3f
	bls	.L_6b9da
	ldrh	r1, [r3, #10]
	cmp	r1, #0
	beq	.L_6b9f2
	ldr	r0, .L_6ba28
	strh	r1, [r0, #2]
.L_6b9f2:
	ldrb	r0, [r3, #0]
	cmp	r0, #3
	bne	.L_6ba38
	ldrb	r0, [r3, #2]
	add	r1, r0, #1
	ldrb	r0, [r3, #5]
	add	r2, r0, #1
	lsl	r0, r1, #6
	strh	r0, [r4, #18]
	lsl	r1, r2, #6
	sub	r0, r1, #1
	strh	r0, [r4, #20]
	ldrb	r0, [r4, #1]
	cmp	r0, #17
	bne	.L_6ba2c
	add	r0, r1, #0
	sub	r0, #65	@ 0x41
	strh	r0, [r4, #20]
	b	.L_6ba5a
.L_6ba18:
	.4byte	gUnk_3003224
.L_6ba1c:
	.4byte	0x2039F00
.L_6ba20:
	.4byte	gUnk_3000020
.L_6ba24:
	.4byte	gWarioData
.L_6ba28:
	.4byte	gUnk_3003200
.L_6ba2c:
	cmp	r0, #18
	bne	.L_6ba5a
	add	r0, r1, #0
	add	r0, #127	@ 0x7f
	strh	r0, [r4, #20]
	b	.L_6ba5a
.L_6ba38:
	ldrb	r1, [r3, #2]
	ldrb	r0, [r3, #5]
	add	r2, r0, #1
	lsl	r1, r1, #6
	mov	r0, #7
	ldrsb	r0, [r3, r0]
	add	r0, #8
	lsl	r0, r0, #2
	add	r1, r1, r0
	strh	r1, [r4, #18]
	lsl	r1, r2, #6
	mov	r0, #8
	ldrsb	r0, [r3, r0]
	lsl	r0, r0, #2
	add	r1, r1, r0
	sub	r1, #1
	strh	r1, [r4, #20]
.L_6ba5a:
	ldrb	r1, [r6, #0]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_6ba68
	bl	func_8072B24
.L_6ba68:
	ldr	r0, .L_6baa8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6ba76
	ldr	r1, .L_6baac
	mov	r0, #0
	strb	r0, [r1, #0]
.L_6ba76:
	ldr	r0, .L_6bab0
	mov	r1, #0
	strb	r1, [r0, #0]
	strb	r1, [r0, #1]
	strb	r1, [r0, #2]
	ldr	r0, .L_6bab4
	strb	r1, [r0, #0]
	strb	r1, [r0, #1]
	strb	r1, [r0, #2]
	ldr	r0, .L_6bab8
	mov	r2, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_6babc
	strh	r1, [r0, #0]
	ldr	r0, .L_6bac0
	strh	r1, [r0, #0]
	ldr	r0, .L_6bac4
	strh	r1, [r0, #0]
	ldr	r0, .L_6bac8
	strb	r2, [r0, #0]
	ldr	r0, .L_6bacc
	strb	r2, [r0, #0]
.L_6baa2:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_6baa8:
	.4byte	gDemoState
.L_6baac:
	.4byte	gMainTimer
.L_6bab0:
	.4byte	gScreenShakeY
.L_6bab4:
	.4byte	gScreenShakeX
.L_6bab8:
	.4byte	gBg1YPosition
.L_6babc:
	.4byte	gBg1XPosition
.L_6bac0:
	.4byte	gUnk_3001876
.L_6bac4:
	.4byte	gUnk_3001878
.L_6bac8:
	.4byte	gUnk_300342C
.L_6bacc:
	.4byte	gUnk_3000038


thumb_func_start func_806BAD0
func_806BAD0:
	push	{r4, r5, lr}
	ldr	r5, .L_6bb10
	ldrb	r0, [r5, #24]
	cmp	r0, #3
	bne	.L_6bade
	bl	func_806E598
.L_6bade:
	ldr	r1, .L_6bb14
	mov	r4, #0
	mov	r3, #0
	mov	r2, #128	@ 0x80
	strh	r2, [r1, #0]
	strh	r2, [r1, #2]
	strh	r2, [r1, #6]
	strh	r2, [r1, #4]
	ldr	r0, .L_6bb18
	ldrb	r0, [r0, #0]
	cmp	r0, #24
	bne	.L_6bafc
	strh	r3, [r1, #0]
	strh	r3, [r1, #2]
	strh	r3, [r1, #6]
.L_6bafc:
	ldr	r1, .L_6bb1c
	strh	r3, [r1, #2]
	strb	r4, [r1, #1]
	ldrb	r0, [r5, #25]
	cmp	r0, #7
	bne	.L_6bb20
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_6bb22
	.align	2, 0
.L_6bb10:
	.4byte	gCurrentRoomHeader
.L_6bb14:
	.4byte	gUnk_300320C
.L_6bb18:
	.4byte	gUnk_3000023
.L_6bb1c:
	.4byte	gUnk_3003214
.L_6bb20:
	strb	r4, [r1, #0]
.L_6bb22:
	ldr	r1, .L_6bb3c
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #2]
	strb	r2, [r1, #1]
	ldr	r0, .L_6bb40
	ldrb	r0, [r0, #1]
	cmp	r0, #34	@ 0x22
	bne	.L_6bb44
	mov	r0, #2
	strb	r0, [r1, #0]
	b	.L_6bb46
	.align	2, 0
.L_6bb3c:
	.4byte	gUnk_3003218
.L_6bb40:
	.4byte	gCurrentRoomHeader
.L_6bb44:
	strb	r2, [r1, #0]
.L_6bb46:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_806BB4C
func_806BB4C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #32
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	str	r0, [sp, #0]
	cmp	r0, #0
	bne	.L_6bb7c
	ldr	r0, .L_6bb70
	ldrb	r0, [r0, #1]
	str	r0, [sp, #4]
	ldr	r0, .L_6bb74
	ldrh	r2, [r0, #0]
	ldr	r0, .L_6bb78
	b	.L_6bba8
.L_6bb70:
	.4byte	gCurrentRoomHeader
.L_6bb74:
	.4byte	gUnk_3001878
.L_6bb78:
	.4byte	gUnk_3001876
.L_6bb7c:
	ldr	r0, [sp, #0]
	cmp	r0, #1
	bne	.L_6bb9c
	ldr	r0, .L_6bb90
	ldrb	r0, [r0, #2]
	str	r0, [sp, #4]
	ldr	r0, .L_6bb94
	ldrh	r2, [r0, #0]
	ldr	r0, .L_6bb98
	b	.L_6bba8
.L_6bb90:
	.4byte	gCurrentRoomHeader
.L_6bb94:
	.4byte	gBg1YPosition
.L_6bb98:
	.4byte	gBg1XPosition
.L_6bb9c:
	ldr	r0, .L_6bd3c
	ldrb	r0, [r0, #3]
	str	r0, [sp, #4]
	ldr	r0, .L_6bd40
	ldrh	r2, [r0, #0]
	ldr	r0, .L_6bd44
.L_6bba8:
	ldrh	r1, [r0, #0]
	mov	r0, #16
	ldr	r3, [sp, #4]
	and	r0, r3
	cmp	r0, #0
	bne	.L_6bbb6
	b	.L_6bcf0
.L_6bbb6:
	lsr	r0, r1, #6
	mov	r4, #21
	str	r4, [sp, #16]
	sub	r0, #3
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r0, #0
	bge	.L_6bbc8
	mov	r3, #0
.L_6bbc8:
	ldr	r1, .L_6bd48
	ldr	r5, [sp, #0]
	lsl	r0, r5, #3
	add	r6, r0, r1
	ldrh	r4, [r6, #4]
	lsl	r1, r3, #16
	asr	r0, r1, #16
	sub	r0, r4, r0
	ldr	r5, [sp, #16]
	cmp	r5, r0
	ble	.L_6bbe6
	sub	r0, r4, r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #16]
.L_6bbe6:
	lsr	r1, r1, #16
	str	r1, [sp, #12]
	lsr	r0, r2, #6
	mov	r1, #16
	str	r1, [sp, #20]
	sub	r0, #3
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r0, #0
	bge	.L_6bbfc
	mov	r3, #0
.L_6bbfc:
	ldrh	r1, [r6, #6]
	lsl	r2, r3, #16
	asr	r0, r2, #16
	sub	r0, r1, r0
	ldr	r5, [sp, #20]
	cmp	r5, r0
	ble	.L_6bc12
	sub	r0, r1, r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #20]
.L_6bc12:
	lsr	r2, r2, #16
	add	r0, r4, #0
	mul	r0, r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r1, [sp, #12]
	add	r0, r1, r0
	lsl	r0, r0, #1
	ldr	r1, [r6, #0]
	add	r1, r1, r0
	str	r1, [sp, #8]
	mov	r1, #0
	ldr	r3, [sp, #20]
	cmp	r1, r3
	bge	.L_6bcf0
	str	r6, [sp, #24]
.L_6bc32:
	ldr	r4, [sp, #24]
	ldrh	r0, [r4, #4]
	mul	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	ldr	r7, [sp, #12]
	add	r1, #1
	mov	sl, r1
	add	r5, r2, #1
	str	r5, [sp, #28]
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.L_6bce2
	ldr	r1, [sp, #0]
	lsl	r1, r1, #12
	mov	ip, r1
	mov	r3, #15
	and	r2, r3
	lsl	r2, r2, #6
	mov	r9, r2
	add	r5, r0, #0
.L_6bc5e:
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	mov	r4, ip
	add	r6, r4, r0
	mov	r1, #31
	and	r1, r7
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_6bc76
	ldr	r6, .L_6bd4c
	add	r6, ip
.L_6bc76:
	mov	r0, #15
	and	r0, r1
	lsl	r1, r0, #1
	mov	r2, r9
	add	r0, r2, r1
	lsl	r0, r0, #1
	add	r6, r6, r0
	mov	r3, r8
	lsl	r0, r3, #1
	ldr	r4, [sp, #8]
	add	r0, r0, r4
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #18
	lsr	r0, r0, #16
	mov	r2, #1
	orr	r2, r0
	ldr	r1, .L_6bd50
	ldr	r4, [r1, #0]
	lsl	r0, r0, #1
	add	r0, r0, r4
	ldrh	r0, [r0, #0]
	strh	r0, [r6, #0]
	add	r1, r2, #1
	lsl	r1, r1, #16
	lsl	r2, r2, #1
	add	r2, r2, r4
	ldrh	r0, [r2, #0]
	strh	r0, [r6, #2]
	add	r3, r6, #0
	add	r3, #64	@ 0x40
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #9
	add	r2, r1, r0
	lsr	r1, r1, #15
	add	r1, r1, r4
	ldrh	r0, [r1, #0]
	strh	r0, [r3, #0]
	add	r1, r6, #0
	add	r1, #66	@ 0x42
	lsr	r2, r2, #15
	add	r2, r2, r4
	ldrh	r0, [r2, #0]
	strh	r0, [r1, #0]
	mov	r0, r8
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	sub	r5, #1
	add	r0, r7, #1
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	cmp	r5, #0
	bne	.L_6bc5e
.L_6bce2:
	mov	r1, sl
	ldr	r2, [sp, #28]
	lsl	r0, r2, #16
	lsr	r2, r0, #16
	ldr	r3, [sp, #20]
	cmp	r1, r3
	blt	.L_6bc32
.L_6bcf0:
	ldr	r4, [sp, #4]
	cmp	r4, #0
	bne	.L_6bd2c
	ldr	r1, .L_6bd54
	ldr	r6, .L_6bd58
	mov	r0, #0
	add	r2, r6, #0
	bl	func_806BDF8
	ldr	r4, .L_6bd5c
	str	r6, [r4, #0]
	ldr	r0, [sp, #0]
	lsl	r5, r0, #12
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	add	r0, r5, r0
	str	r0, [r4, #4]
	ldr	r1, .L_6bd60
	mov	r8, r1
	str	r1, [r4, #8]
	ldr	r0, [r4, #8]
	bl	func_806D3A4
	str	r6, [r4, #0]
	ldr	r0, .L_6bd4c
	add	r5, r5, r0
	str	r5, [r4, #4]
	mov	r2, r8
	str	r2, [r4, #8]
	ldr	r0, [r4, #8]
.L_6bd2c:
	add	sp, #32
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_6bd3c:
	.4byte	gCurrentRoomHeader
.L_6bd40:
	.4byte	gUnk_3001880
.L_6bd44:
	.4byte	gUnk_300187E
.L_6bd48:
	.4byte	gBackgroundInfo
.L_6bd4c:
	.4byte	0x6000800
.L_6bd50:
	.4byte	gUnk_30031F4
.L_6bd54:
	.4byte	sUnk_858DA7C
.L_6bd58:
	.4byte	0x201F040
.L_6bd5c:
	.4byte	0x40000D4
.L_6bd60:
	.4byte	0x80000400


thumb_func_start func_806BD64
func_806BD64:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r7, .L_6bde4
	ldr	r1, .L_6bde8
	ldr	r0, .L_6bdec
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r5, [r0, #0]
	mov	r6, #0
	ldr	r2, .L_6bdf0
	ldr	r0, .L_6bdf4
	mov	r1, #0
	ldrsb	r1, [r0, r1]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r2, #1
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	cmp	r6, r0
	bge	.L_6bdd6
	mov	r8, r2
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #18
	mov	r9, r0
.L_6bd9c:
	ldr	r1, [r5, #12]
	ldrb	r2, [r1, #0]
	ldrb	r0, [r1, #1]
	add	r4, r2, #0
	mul	r4, r0
	add	r4, #2
	lsl	r4, r4, #1
	mov	r0, #2
	add	r2, r7, #0
	bl	func_806BDF8
	mov	r0, r9
	add	r0, #4
	mov	r9, r0
	sub	r0, #4
	stmia	r0!, {r7}
	add	r7, r7, r4
	add	r5, #44	@ 0x2c
	add	r6, #1
	ldr	r0, .L_6bdf4
	mov	r1, #0
	ldrsb	r1, [r0, r1]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r8
	ldrb	r0, [r0, #0]
	cmp	r6, r0
	blt	.L_6bd9c
.L_6bdd6:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6bde4:
	.4byte	0x2000040
.L_6bde8:
	.4byte	sUnk_878F280
.L_6bdec:
	.4byte	gUnk_3000023
.L_6bdf0:
	.4byte	sUnk_8639068
.L_6bdf4:
	.4byte	gCurrentStageID


thumb_func_start func_806BDF8
func_806BDF8:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	r5, #0
	cmp	r0, #0
	bne	.L_6be26
	ldrb	r5, [r1, #0]
	add	r1, #1
	cmp	r5, #0
	bne	.L_6be12
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #4
	b	.L_6be50
.L_6be12:
	cmp	r5, #1
	beq	.L_6be1a
	cmp	r5, #2
	bne	.L_6be20
.L_6be1a:
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #5
	b	.L_6be50
.L_6be20:
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #6
	b	.L_6be50
.L_6be26:
	cmp	r0, #1
	bne	.L_6be38
	ldrb	r5, [r1, #0]
	add	r1, #1
	ldrb	r0, [r1, #0]
	lsl	r5, r5, #16
	orr	r5, r0
	add	r1, #1
	b	.L_6be50
.L_6be38:
	ldrb	r0, [r1, #0]
	strb	r0, [r2, #0]
	add	r1, #1
	add	r2, #1
	strb	r5, [r2, #0]
	add	r2, #1
	ldrb	r0, [r1, #0]
	strb	r0, [r2, #0]
	add	r1, #1
	add	r2, #1
	strb	r5, [r2, #0]
	add	r2, #1
.L_6be50:
	add	r6, r2, #0
	mov	r4, #0
.L_6be54:
	ldrb	r0, [r1, #0]
	add	r1, #1
	cmp	r0, #1
	bne	.L_6be9e
	ldrb	r3, [r1, #0]
	add	r1, #1
	add	r4, #1
	cmp	r3, #0
	beq	.L_6bef6
.L_6be66:
	mov	r0, #128	@ 0x80
	and	r0, r3
	cmp	r0, #0
	beq	.L_6be90
	mov	r0, #127	@ 0x7f
	and	r3, r0
	cmp	r3, #0
	beq	.L_6be82
.L_6be76:
	ldrb	r0, [r1, #0]
	strb	r0, [r2, #0]
	add	r2, #2
	sub	r3, #1
	cmp	r3, #0
	bne	.L_6be76
.L_6be82:
	add	r1, #1
	b	.L_6be94
.L_6be86:
	ldrb	r0, [r1, #0]
	strb	r0, [r2, #0]
	add	r1, #1
	add	r2, #2
	sub	r3, #1
.L_6be90:
	cmp	r3, #0
	bne	.L_6be86
.L_6be94:
	ldrb	r3, [r1, #0]
	add	r1, #1
	cmp	r3, #0
	bne	.L_6be66
	b	.L_6bef6
.L_6be9e:
	ldrb	r3, [r1, #0]
	add	r1, #1
	lsl	r3, r3, #8
	ldrb	r0, [r1, #0]
	orr	r3, r0
	add	r1, #1
	add	r4, #1
	cmp	r3, #0
	beq	.L_6bef6
.L_6beb0:
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #8
	and	r0, r3
	cmp	r0, #0
	beq	.L_6bee2
	ldr	r0, .L_6bed4
	and	r3, r0
	cmp	r3, #0
	beq	.L_6bece
.L_6bec2:
	ldrb	r0, [r1, #0]
	strb	r0, [r2, #0]
	add	r2, #2
	sub	r3, #1
	cmp	r3, #0
	bne	.L_6bec2
.L_6bece:
	add	r1, #1
	b	.L_6bee6
	.align	2, 0
.L_6bed4:
	.4byte	0x7FFF
.L_6bed8:
	ldrb	r0, [r1, #0]
	strb	r0, [r2, #0]
	add	r1, #1
	add	r2, #2
	sub	r3, #1
.L_6bee2:
	cmp	r3, #0
	bne	.L_6bed8
.L_6bee6:
	ldrb	r3, [r1, #0]
	add	r1, #1
	lsl	r3, r3, #8
	ldrb	r0, [r1, #0]
	orr	r3, r0
	add	r1, #1
	cmp	r3, #0
	bne	.L_6beb0
.L_6bef6:
	add	r2, r6, #1
	cmp	r4, #1
	ble	.L_6be54
	add	r0, r5, #0
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_806BF04
func_806BF04:
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_6bf18
	ldr	r1, .L_6bf10
	ldr	r0, .L_6bf14
	b	.L_6bf1c
.L_6bf10:
	.4byte	0x40000D4
.L_6bf14:
	.4byte	sUnk_854EE1C
.L_6bf18:
	ldr	r1, .L_6bf2c
	ldr	r0, .L_6bf30
.L_6bf1c:
	str	r0, [r1, #0]
	ldr	r0, .L_6bf34
	str	r0, [r1, #4]
	ldr	r0, .L_6bf38
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	bx	lr
	.align	2, 0
.L_6bf2c:
	.4byte	0x40000D4
.L_6bf30:
	.4byte	sUnk_83F1E80
.L_6bf34:
	.4byte	0x600FE40
.L_6bf38:
	.4byte	0x800000D0


thumb_func_start func_806BF3C
func_806BF3C:
	ldr	r1, .L_6bf70
	mov	r2, #0
	strb	r2, [r1, #0]
	ldr	r0, .L_6bf74
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bne	.L_6bf6e
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_6bf78
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6bf6e
	mov	r0, #2
	strb	r0, [r1, #0]
	ldr	r0, .L_6bf7c
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_6bf6e
	mov	r0, #3
	strb	r0, [r1, #0]
	ldr	r0, .L_6bf80
	strb	r2, [r0, #0]
	ldr	r0, .L_6bf84
	strb	r2, [r0, #0]
.L_6bf6e:
	bx	lr
.L_6bf70:
	.4byte	gUnk_300001B
.L_6bf74:
	.4byte	gCurrentStageNumber
.L_6bf78:
	.4byte	gCurrentRoom
.L_6bf7c:
	.4byte	gCurrentPassage
.L_6bf80:
	.4byte	gSpriteAiDropTimer
.L_6bf84:
	.4byte	gGoldenDivaShopItemTimer


thumb_func_start func_806BF88
func_806BF88:
	push	{r4, lr}
	ldr	r0, .L_6c010
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6bf94
	b	.L_6c0d8
.L_6bf94:
	ldr	r4, .L_6c014
	strb	r0, [r4, #10]
	strb	r0, [r4, #11]
	ldr	r2, .L_6c018
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_6bfaa
	ldr	r1, .L_6c01c
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	strh	r0, [r1, #42]	@ 0x2a
.L_6bfaa:
	ldr	r0, .L_6c020
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	bne	.L_6c03e
	strh	r0, [r4, #8]
	ldr	r0, .L_6c024
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6bfcc
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_6bfcc
	mov	r0, #0
	bl	func_806C0E8
.L_6bfcc:
	ldr	r4, .L_6c014
	ldrh	r0, [r4, #2]
	bl	m4aSongNumStartOrChange
	ldr	r2, .L_6c028
	ldr	r1, .L_6c02c
	ldrh	r0, [r4, #2]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r1, [r0, #4]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	ldr	r1, .L_6c030
	ldr	r2, .L_6c01c
	ldrh	r2, [r2, #42]	@ 0x2a
	bl	m4aMPlayVolumeControl
	ldrh	r0, [r4, #2]
	strh	r0, [r4, #4]
	ldr	r0, .L_6c024
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6c0ca
	ldr	r0, .L_6c018
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6c034
	mov	r0, #217	@ 0xd9
	bl	m4aSongNumStart
	b	.L_6c0ca
.L_6c010:
	.4byte	gUnk_300001C
.L_6c014:
	.4byte	gUnk_3003200
.L_6c018:
	.4byte	gSwitchPressed
.L_6c01c:
	.4byte	gCurrentRoomHeader
.L_6c020:
	.4byte	gUnk_3000C3F
.L_6c024:
	.4byte	gHasTemporarySave
.L_6c028:
	.4byte	gMPlayTable
.L_6c02c:
	.4byte	gSongTable
.L_6c030:
	.4byte	0xFFFF
.L_6c034:
	mov	r0, #230	@ 0xe6
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_6c0ca
.L_6c03e:
	ldr	r0, .L_6c06c
	mov	r1, #0
	ldrsb	r1, [r0, r1]
	cmp	r1, #0
	bne	.L_6c050
	ldr	r0, .L_6c070
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_6c0b8
.L_6c050:
	ldrh	r0, [r4, #8]
	cmp	r0, #0
	beq	.L_6c078
	bl	m4aSongNumStartOrContinue
	ldr	r1, .L_6c074
	ldrh	r0, [r4, #8]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r0, [r0, #4]
	strb	r0, [r4, #11]
	mov	r0, #1
	strb	r0, [r4, #10]
	b	.L_6c0aa
.L_6c06c:
	.4byte	gPauseFlag
.L_6c070:
	.4byte	gUnk_3000026
.L_6c074:
	.4byte	gSongTable
.L_6c078:
	ldrh	r0, [r4, #2]
	ldrh	r1, [r4, #4]
	cmp	r0, r1
	bne	.L_6c0a4
	ldr	r2, .L_6c09c
	ldr	r1, .L_6c0a0
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r1, [r0, #4]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	mov	r1, #1
	bl	m4aMPlayFadeIn
	b	.L_6c0aa
.L_6c09c:
	.4byte	gMPlayTable
.L_6c0a0:
	.4byte	gSongTable
.L_6c0a4:
	ldrh	r0, [r4, #2]
	bl	m4aSongNumStart
.L_6c0aa:
	ldr	r1, .L_6c0b4
	ldrh	r0, [r1, #2]
	strh	r0, [r1, #4]
	b	.L_6c0ca
	.align	2, 0
.L_6c0b4:
	.4byte	gUnk_3003200
.L_6c0b8:
	strh	r1, [r4, #8]
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_6c0c6
	mov	r0, #0
	bl	func_806C0E8
.L_6c0c6:
	mov	r0, #1
	strb	r0, [r4, #0]
.L_6c0ca:
	ldr	r2, .L_6c0e0
	ldr	r1, .L_6c0e4
	ldrh	r0, [r2, #4]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r0, [r0, #4]
	strb	r0, [r2, #6]
.L_6c0d8:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6c0e0:
	.4byte	gUnk_3003200
.L_6c0e4:
	.4byte	gSongTable


thumb_func_start func_806C0E8
func_806C0E8:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	ldr	r0, .L_6c11c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_6c116
	ldr	r4, .L_6c120
	mov	r1, #0
	ldr	r0, .L_6c124
	strh	r0, [r4, #2]
	cmp	r2, #0
	beq	.L_6c116
	strb	r1, [r4, #0]
	strb	r1, [r4, #1]
	strh	r0, [r4, #4]
	bl	m4aSongNumStartOrChange
	ldr	r0, .L_6c128
	ldr	r1, .L_6c12c
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strb	r0, [r4, #6]
.L_6c116:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_6c11c:
	.4byte	gUnk_300001C
.L_6c120:
	.4byte	gUnk_3003200
.L_6c124:
	.4byte	0x2A9
.L_6c128:
	.4byte	gSongTable
.L_6c12c:
	.4byte	0x154C


thumb_func_start func_806C130
func_806C130:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_6c14c
	ldrb	r4, [r0, #0]
	cmp	r4, #0
	bne	.L_6c200
	ldr	r6, .L_6c150
	ldrb	r0, [r6, #0]
	cmp	r0, #1
	beq	.L_6c160
	cmp	r0, #1
	bgt	.L_6c154
	cmp	r0, #0
	beq	.L_6c15a
	b	.L_6c200
.L_6c14c:
	.4byte	gUnk_300001C
.L_6c150:
	.4byte	gUnk_3003200
.L_6c154:
	cmp	r0, #2
	beq	.L_6c1ac
	b	.L_6c200
.L_6c15a:
	bl	func_806C21C
	b	.L_6c200
.L_6c160:
	ldrh	r0, [r6, #4]
	ldrh	r1, [r6, #2]
	cmp	r0, r1
	bne	.L_6c19c
	ldr	r2, .L_6c18c
	ldr	r1, .L_6c190
	ldrh	r0, [r6, #2]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r1, [r0, #4]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	ldr	r1, .L_6c194
	ldr	r2, .L_6c198
	ldrh	r2, [r2, #42]	@ 0x2a
	bl	m4aMPlayVolumeControl
	strb	r4, [r6, #0]
	b	.L_6c200
.L_6c18c:
	.4byte	gMPlayTable
.L_6c190:
	.4byte	gSongTable
.L_6c194:
	.4byte	0xFFFF
.L_6c198:
	.4byte	gCurrentRoomHeader
.L_6c19c:
	mov	r0, #2
	strb	r0, [r6, #0]
	ldr	r0, .L_6c1a8
	ldrb	r0, [r0, #0]
	strb	r0, [r6, #1]
	b	.L_6c200
.L_6c1a8:
	.4byte	gMPlayMemAccArea
.L_6c1ac:
	ldr	r1, .L_6c208
	ldrb	r0, [r6, #1]
	ldrb	r1, [r1, #0]
	cmp	r0, r1
	beq	.L_6c200
	ldr	r4, .L_6c20c
	ldrb	r1, [r6, #6]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldr	r0, [r0, #0]
	mov	r1, #12
	bl	m4aMPlayFadeOut
	ldrh	r0, [r6, #2]
	bl	m4aSongNumStart
	ldr	r5, .L_6c210
	ldrh	r0, [r6, #2]
	lsl	r0, r0, #3
	add	r0, r0, r5
	ldrh	r1, [r0, #4]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldr	r0, [r0, #0]
	ldr	r1, .L_6c214
	ldr	r2, .L_6c218
	ldrh	r2, [r2, #42]	@ 0x2a
	bl	m4aMPlayVolumeControl
	ldrh	r0, [r6, #2]
	mov	r1, #0
	strh	r0, [r6, #4]
	ldrh	r0, [r6, #4]
	lsl	r0, r0, #3
	add	r0, r0, r5
	ldrh	r0, [r0, #4]
	strb	r0, [r6, #6]
	strb	r1, [r6, #0]
.L_6c200:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6c208:
	.4byte	gMPlayMemAccArea
.L_6c20c:
	.4byte	gMPlayTable
.L_6c210:
	.4byte	gSongTable
.L_6c214:
	.4byte	0xFFFF
.L_6c218:
	.4byte	gCurrentRoomHeader


thumb_func_start func_806C21C
func_806C21C:
	push	{r4, r5, lr}
	ldr	r0, .L_6c238
	ldrb	r4, [r0, #0]
	cmp	r4, #0
	bne	.L_6c2c2
	ldr	r5, .L_6c23c
	ldrb	r0, [r5, #10]
	cmp	r0, #1
	beq	.L_6c288
	cmp	r0, #1
	bgt	.L_6c240
	cmp	r0, #0
	beq	.L_6c246
	b	.L_6c2c2
.L_6c238:
	.4byte	gSwitchPressed
.L_6c23c:
	.4byte	gUnk_3003200
.L_6c240:
	cmp	r0, #2
	beq	.L_6c2a4
	b	.L_6c2c2
.L_6c246:
	ldr	r1, .L_6c280
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_6c2c2
	ldrb	r0, [r1, #1]
	cmp	r0, #54	@ 0x36
	beq	.L_6c258
	cmp	r0, #59	@ 0x3b
	bne	.L_6c2c2
.L_6c258:
	bl	func_806C2CC
	ldrh	r0, [r5, #8]
	bl	m4aSongNumStart
	ldr	r2, .L_6c284
	ldrb	r1, [r5, #6]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	mov	r1, #38	@ 0x26
	bl	m4aMPlayFadeOutTemporarily
	ldrb	r0, [r5, #10]
	add	r0, #1
	strb	r0, [r5, #10]
	b	.L_6c2c2
	.align	2, 0
.L_6c280:
	.4byte	gWarioData
.L_6c284:
	.4byte	gMPlayTable
.L_6c288:
	ldr	r1, .L_6c2a0
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_6c2c2
	ldrb	r0, [r1, #1]
	cmp	r0, #54	@ 0x36
	beq	.L_6c2c2
	cmp	r0, #59	@ 0x3b
	beq	.L_6c2c2
	mov	r0, #2
	strb	r0, [r5, #10]
	b	.L_6c2c2
.L_6c2a0:
	.4byte	gWarioData
.L_6c2a4:
	ldr	r2, .L_6c2c8
	ldrb	r1, [r5, #6]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	mov	r1, #1
	bl	m4aMPlayFadeIn
	ldrh	r0, [r5, #8]
	bl	m4aSongNumStop
	strb	r4, [r5, #10]
	strh	r4, [r5, #8]
.L_6c2c2:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_6c2c8:
	.4byte	gMPlayTable


thumb_func_start func_806C2CC
func_806C2CC:
	ldr	r1, .L_6c2f4
	ldrb	r0, [r1, #0]
	mov	r3, #0
	cmp	r0, #16
	bhi	.L_6c2d8
	add	r3, r0, #0
.L_6c2d8:
	ldr	r2, .L_6c2f8
	ldr	r1, .L_6c2fc
	lsl	r0, r3, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	strh	r0, [r2, #8]
	ldr	r1, .L_6c300
	ldrh	r0, [r2, #8]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrh	r0, [r0, #4]
	strb	r0, [r2, #11]
	bx	lr
	.align	2, 0
.L_6c2f4:
	.4byte	gUnk_3000C36
.L_6c2f8:
	.4byte	gUnk_3003200
.L_6c2fc:
	.4byte	sUnk_86D371C
.L_6c300:
	.4byte	gSongTable


thumb_func_start MusicPauseFadeOut
MusicPauseFadeOut:
	push	{r4, lr}
	ldr	r4, .L_6c328
	ldr	r0, [r4, #0]
	mov	r1, #2
	bl	m4aMPlayFadeOutTemporarily
	ldr	r0, [r4, #12]
	mov	r1, #2
	bl	m4aMPlayFadeOutTemporarily
	ldr	r0, .L_6c32c
	ldrh	r0, [r0, #8]
	bl	m4aSongNumStop
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6c328:
	.4byte	gMPlayTable
.L_6c32c:
	.4byte	gUnk_3003200


thumb_func_start func_806C330
func_806C330:
	push	{r4, r5, r6, lr}
	mov	r5, #0
	ldr	r0, .L_6c35c
	ldrb	r1, [r0, #0]
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_6c346
	ldr	r1, .L_6c360
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_6c346:
	ldr	r0, .L_6c364
	ldrb	r1, [r0, #0]
	add	r6, r0, #0
	cmp	r1, #11
	bls	.L_6c352
	b	.L_6c58a
.L_6c352:
	lsl	r0, r1, #2
	ldr	r1, .L_6c368
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_6c35c:
	.4byte	gGoldenDivaShopItemTimer
.L_6c360:
	.4byte	gUnk_300188E
.L_6c364:
	.4byte	gSpriteAiDropTimer
.L_6c368:
	.4byte	.L_6c36c
.L_6c36c:
	.4byte	.L_6c39c
	.4byte	.L_6c3c0
	.4byte	.L_6c3f0
	.4byte	.L_6c434
	.4byte	.L_6c474
	.4byte	.L_6c48c
	.4byte	.L_6c4c4
	.4byte	.L_6c4dc
	.4byte	.L_6c4ec
	.4byte	.L_6c4f2
	.4byte	.L_6c4fa
	.4byte	.L_6c540
.L_6c39c:
	ldr	r0, .L_6c3b4
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_6c3b8
	strb	r1, [r0, #0]
	ldr	r0, .L_6c3bc
	strb	r1, [r0, #0]
	ldrb	r0, [r4, #0]
	cmp	r0, #1
	beq	.L_6c3b2
	b	.L_6c58a
.L_6c3b2:
	b	.L_6c58e
.L_6c3b4:
	.4byte	gUnk_300003C
.L_6c3b8:
	.4byte	gUnk_3003BF5
.L_6c3bc:
	.4byte	gUnk_3003BF6
.L_6c3c0:
	ldr	r1, .L_6c3dc
	ldr	r2, .L_6c3e0
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_6c3e4
	mov	r1, #16
	strh	r1, [r0, #0]
	ldr	r2, .L_6c3e8
	mov	r0, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_6c3ec
	lsl	r1, r1, #8
	strh	r1, [r0, #0]
	b	.L_6c58e
.L_6c3dc:
	.4byte	0x4000050
.L_6c3e0:
	.4byte	0x3748
.L_6c3e4:
	.4byte	gUnk_3001874
.L_6c3e8:
	.4byte	gUnk_3001872
.L_6c3ec:
	.4byte	gBldAlpha
.L_6c3f0:
	ldr	r3, .L_6c428
	ldrh	r1, [r3, #0]
	ldr	r2, .L_6c42c
	add	r0, r2, #0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strh	r0, [r3, #0]
	add	r3, #2
	ldrh	r1, [r3, #0]
	add	r0, r2, #0
	and	r0, r1
	mov	r1, #2
	orr	r0, r1
	strh	r0, [r3, #0]
	add	r3, #2
	ldrh	r1, [r3, #0]
	add	r0, r2, #0
	and	r0, r1
	mov	r1, #3
	orr	r0, r1
	strh	r0, [r3, #0]
	ldr	r1, .L_6c430
	ldrh	r0, [r1, #0]
	and	r2, r0
	strh	r2, [r1, #0]
	b	.L_6c58e
	.align	2, 0
.L_6c428:
	.4byte	0x4000008
.L_6c42c:
	.4byte	0xFFFC
.L_6c430:
	.4byte	0x400000E
.L_6c434:
	ldr	r0, .L_6c464
	ldrh	r1, [r0, #0]
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	beq	.L_6c442
	b	.L_6c58a
.L_6c442:
	ldr	r1, .L_6c468
	ldrh	r0, [r1, #0]
	sub	r3, r0, #1
	strh	r3, [r1, #0]
	lsl	r0, r3, #16
	lsr	r0, r0, #16
	cmp	r0, #8
	bne	.L_6c454
	mov	r5, #1
.L_6c454:
	ldr	r2, .L_6c46c
	lsl	r0, r3, #8
	ldr	r1, .L_6c470
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	b	.L_6c58a
	.align	2, 0
.L_6c464:
	.4byte	gUnk_300188E
.L_6c468:
	.4byte	gUnk_3001874
.L_6c46c:
	.4byte	gBldAlpha
.L_6c470:
	.4byte	gUnk_3001872
.L_6c474:
	ldr	r0, .L_6c488
	ldrh	r0, [r0, #0]
	cmp	r0, #40	@ 0x28
	bhi	.L_6c47e
	b	.L_6c58a
.L_6c47e:
	mov	r0, #15
	bl	func_8071600
	b	.L_6c58e
	.align	2, 0
.L_6c488:
	.4byte	gUnk_300188E
.L_6c48c:
	ldr	r0, .L_6c4b4
	ldrh	r1, [r0, #0]
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_6c58a
	ldr	r1, .L_6c4b8
	ldrh	r0, [r1, #0]
	add	r2, r0, #1
	strh	r2, [r1, #0]
	lsl	r0, r2, #16
	lsr	r0, r0, #16
	cmp	r0, #8
	bne	.L_6c4aa
	mov	r5, #1
.L_6c4aa:
	ldr	r1, .L_6c4bc
	ldr	r0, .L_6c4c0
	ldrh	r0, [r0, #0]
	b	.L_6c526
	.align	2, 0
.L_6c4b4:
	.4byte	gUnk_300188E
.L_6c4b8:
	.4byte	gUnk_3001872
.L_6c4bc:
	.4byte	gBldAlpha
.L_6c4c0:
	.4byte	gUnk_3001874
.L_6c4c4:
	ldr	r0, .L_6c4d4
	ldrh	r0, [r0, #0]
	cmp	r0, #45	@ 0x2d
	bls	.L_6c58a
	ldr	r1, .L_6c4d8
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_6c58e
.L_6c4d4:
	.4byte	gUnk_300188E
.L_6c4d8:
	.4byte	gUnk_3003BF5
.L_6c4dc:
	ldr	r0, .L_6c4e8
	ldrh	r0, [r0, #0]
	cmp	r0, #45	@ 0x2d
	bls	.L_6c58a
	b	.L_6c58e
	.align	2, 0
.L_6c4e8:
	.4byte	gUnk_300188E
.L_6c4ec:
	mov	r0, #2
	strb	r0, [r4, #0]
	b	.L_6c58e
.L_6c4f2:
	ldrb	r0, [r4, #0]
	cmp	r0, #3
	bne	.L_6c58a
	b	.L_6c58e
.L_6c4fa:
	ldr	r0, .L_6c530
	ldrh	r1, [r0, #0]
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	bne	.L_6c58a
	ldr	r1, .L_6c534
	ldrh	r0, [r1, #0]
	sub	r2, r0, #1
	strh	r2, [r1, #0]
	ldr	r3, .L_6c538
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	lsl	r0, r2, #16
	cmp	r0, #0
	bne	.L_6c522
	mov	r0, #16
	strh	r0, [r3, #0]
	mov	r5, #1
.L_6c522:
	ldr	r1, .L_6c53c
	ldrh	r0, [r3, #0]
.L_6c526:
	lsl	r0, r0, #8
	orr	r2, r0
	strh	r2, [r1, #0]
	b	.L_6c58a
	.align	2, 0
.L_6c530:
	.4byte	gUnk_300188E
.L_6c534:
	.4byte	gUnk_3001872
.L_6c538:
	.4byte	gUnk_3001874
.L_6c53c:
	.4byte	gBldAlpha
.L_6c540:
	ldr	r3, .L_6c5a8
	ldrh	r1, [r3, #0]
	ldr	r2, .L_6c5ac
	add	r0, r2, #0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strh	r0, [r3, #0]
	add	r3, #2
	ldrh	r1, [r3, #0]
	add	r0, r2, #0
	and	r0, r1
	strh	r0, [r3, #0]
	add	r3, #2
	ldrh	r1, [r3, #0]
	add	r0, r2, #0
	and	r0, r1
	mov	r1, #2
	orr	r0, r1
	strh	r0, [r3, #0]
	ldr	r1, .L_6c5b0
	ldrh	r0, [r1, #0]
	and	r2, r0
	mov	r0, #3
	orr	r2, r0
	strh	r2, [r1, #0]
	add	r1, #66	@ 0x42
	mov	r2, #253	@ 0xfd
	lsl	r2, r2, #6
	add	r0, r2, #0
	strh	r0, [r1, #0]
	mov	r0, #0
	strb	r0, [r4, #0]
	strb	r0, [r6, #0]
	ldr	r1, .L_6c5b4
	mov	r0, #0
	strh	r0, [r1, #0]
.L_6c58a:
	cmp	r5, #0
	beq	.L_6c59c
.L_6c58e:
	ldr	r1, .L_6c5b8
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_6c5b4
	mov	r0, #0
	strh	r0, [r1, #0]
.L_6c59c:
	bl	func_806C5BC
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6c5a8:
	.4byte	0x4000008
.L_6c5ac:
	.4byte	0xFFFC
.L_6c5b0:
	.4byte	0x400000E
.L_6c5b4:
	.4byte	gUnk_300188E
.L_6c5b8:
	.4byte	gSpriteAiDropTimer


thumb_func_start func_806C5BC
func_806C5BC:
	ldr	r2, .L_6c5cc
	ldrb	r1, [r2, #0]
	cmp	r1, #0
	bne	.L_6c5d4
	ldr	r0, .L_6c5d0
	strb	r1, [r0, #0]
	b	.L_6c5f8
	.align	2, 0
.L_6c5cc:
	.4byte	gUnk_3003BF5
.L_6c5d0:
	.4byte	gUnk_3003BF6
.L_6c5d4:
	ldr	r1, .L_6c5ec
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_6c5f0
	ldrh	r0, [r1, #0]
	cmp	r0, #149	@ 0x95
	bhi	.L_6c5f4
	add	r0, #1
	strh	r0, [r1, #0]
	b	.L_6c5f8
	.align	2, 0
.L_6c5ec:
	.4byte	gUnk_3003BF6
.L_6c5f0:
	.4byte	gUnk_300003C
.L_6c5f4:
	mov	r0, #0
	strb	r0, [r2, #0]
.L_6c5f8:
	bx	lr
	.align	2, 0


thumb_func_start BackgroundProcessMain
BackgroundProcessMain:
	push	{r4, lr}
	ldr	r1, .L_6c610
	ldrb	r0, [r1, #1]
	cmp	r0, #31
	bhi	.L_6c620
	cmp	r0, #17
	bne	.L_6c614
	bl	func_806AED4
	b	.L_6c620
.L_6c610:
	.4byte	gCurrentRoomHeader
.L_6c614:
	ldrb	r0, [r1, #26]
	cmp	r0, #23
	bls	.L_6c620
	mov	r0, #1
	bl	func_806ADD4
.L_6c620:
	ldr	r0, .L_6c67c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6c62c
	bl	func_8070E24
.L_6c62c:
	bl	func_8070BB8
	bl	func_8070C38
	ldr	r0, .L_6c680
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6c640
	bl	func_806C694
.L_6c640:
	ldr	r4, .L_6c684
	ldrb	r0, [r4, #0]
	cmp	r0, #1
	bls	.L_6c656
	bl	func_806F684
	ldrb	r0, [r4, #0]
	cmp	r0, #3
	bne	.L_6c656
	bl	func_806C330
.L_6c656:
	ldr	r0, .L_6c688
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	beq	.L_6c674
	bl	func_80701F4
	ldr	r0, .L_6c68c
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r2, .L_6c690
	strb	r1, [r2, #2]
	mov	r0, #2
	strb	r0, [r2, #0]
.L_6c674:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6c67c:
	.4byte	gTimerState
.L_6c680:
	.4byte	gGoldenDivaShopItemState
.L_6c684:
	.4byte	gUnk_300001B
.L_6c688:
	.4byte	gPauseFlag
.L_6c68c:
	.4byte	gUnk_3003200
.L_6c690:
	.4byte	gColorFading


thumb_func_start func_806C694
func_806C694:
	push	{r4, r5, r6, lr}
	ldr	r6, .L_6c6b0
	ldrb	r4, [r6, #0]
	mov	r0, #192	@ 0xc0
	and	r0, r4
	cmp	r0, #0
	bne	.L_6c6b8
	mov	r0, #192	@ 0xc0
	orr	r0, r4
	strb	r0, [r6, #0]
	ldr	r1, .L_6c6b4
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_6c756
.L_6c6b0:
	.4byte	gGoldenDivaShopItemState
.L_6c6b4:
	.4byte	gUnk_30037BF
.L_6c6b8:
	mov	r0, #128	@ 0x80
	and	r0, r4
	cmp	r0, #0
	beq	.L_6c708
	ldr	r5, .L_6c6f8
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_6c756
	ldr	r3, .L_6c6fc
	mov	r0, #160	@ 0xa0
	strb	r0, [r3, #2]
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	ldr	r2, .L_6c700
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r2, .L_6c704
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #8
	ldrb	r0, [r3, #3]
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #2
	strb	r0, [r5, #0]
	mov	r0, #127	@ 0x7f
	and	r0, r4
	strb	r0, [r6, #0]
	b	.L_6c756
	.align	2, 0
.L_6c6f8:
	.4byte	gUnk_30037BF
.L_6c6fc:
	.4byte	gWindow
.L_6c700:
	.4byte	0x7FFF
.L_6c704:
	.4byte	0x4000046
.L_6c708:
	ldr	r3, .L_6c73c
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_6c756
	ldr	r0, .L_6c740
	strb	r2, [r0, #2]
	ldr	r1, .L_6c744
	ldrb	r0, [r0, #3]
	strh	r0, [r1, #0]
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	ldr	r0, .L_6c748
	ldrh	r0, [r0, #2]
	strh	r0, [r1, #0]
	sub	r1, r4, #1
	strb	r1, [r6, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #64	@ 0x40
	bne	.L_6c74c
	strb	r2, [r6, #0]
	b	.L_6c756
.L_6c73c:
	.4byte	gUnk_30037BF
.L_6c740:
	.4byte	gWindow
.L_6c744:
	.4byte	0x4000046
.L_6c748:
	.4byte	gUnk_300321C
.L_6c74c:
	mov	r0, #2
	strb	r0, [r3, #0]
	mov	r0, #128	@ 0x80
	orr	r1, r0
	strb	r1, [r6, #0]
.L_6c756:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_806C75C
func_806C75C:
	push	{lr}
	ldr	r0, .L_6c788
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #2
	beq	.L_6c778
	cmp	r0, #6
	beq	.L_6c778
	cmp	r0, #4
	bne	.L_6c784
	ldr	r0, .L_6c78c
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_6c784
.L_6c778:
	ldr	r0, .L_6c790
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_6c784
	bl	func_806E08C
.L_6c784:
	pop	{r0}
	bx	r0
.L_6c788:
	.4byte	gSubGameMode
.L_6c78c:
	.4byte	gUnk_300001B
.L_6c790:
	.4byte	gUnk_3000046


thumb_func_start GameScreenDraw
GameScreenDraw:
	push	{lr}
	bl	func_806C828
	ldr	r0, .L_6c81c
	ldrb	r1, [r0, #0]
	add	r1, #1
	strb	r1, [r0, #0]
	mov	r0, #1
	and	r1, r0
	cmp	r1, #0
	bne	.L_6c7bc
	ldr	r0, .L_6c820
	mov	r1, #4
	ldrsb	r1, [r0, r1]
	mov	r0, #28
	neg	r0, r0
	cmp	r1, r0
	blt	.L_6c7bc
	cmp	r1, #28
	ble	.L_6c7d2
.L_6c7bc:
	mov	r0, #16
	bl	func_806CF28
	bl	func_806D218
	mov	r0, #2
	neg	r0, r0
	bl	func_806CF28
	bl	func_806D218
.L_6c7d2:
	ldr	r0, .L_6c81c
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_6c7f0
	ldr	r0, .L_6c820
	mov	r1, #5
	ldrsb	r1, [r0, r1]
	mov	r0, #28
	neg	r0, r0
	cmp	r1, r0
	blt	.L_6c7f0
	cmp	r1, #28
	ble	.L_6c806
.L_6c7f0:
	mov	r0, #11
	bl	func_806CA00
	bl	func_806CCE4
	mov	r0, #2
	neg	r0, r0
	bl	func_806CA00
	bl	func_806CCE4
.L_6c806:
	ldr	r0, .L_6c824
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #2
	bne	.L_6c814
	bl	func_806F838
.L_6c814:
	bl	func_8071A2C
	pop	{r0}
	bx	r0
.L_6c81c:
	.4byte	gUnk_30037BE
.L_6c820:
	.4byte	gUnk_3003224
.L_6c824:
	.4byte	gSubGameMode
