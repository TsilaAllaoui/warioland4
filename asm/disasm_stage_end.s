.include "macros.s.inc"


thumb_func_start func_80720E8
func_80720E8:
	push	{r4, r5, lr}
	mov	r5, #0
	bl	func_80703DC
	ldr	r0, .L_72104
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	bge	.L_72108
	bl	func_807239C
	add	r5, r0, #0
	b	.L_7238c
.L_72104:
	.4byte	gStageExitType
.L_72108:
	mov	r4, #0
	ldr	r0, .L_72120
	ldrb	r0, [r0, #0]
	cmp	r0, #31
	bls	.L_72114
	b	.L_7234c
.L_72114:
	lsl	r0, r0, #2
	ldr	r1, .L_72124
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_72120:
	.4byte	gSpriteAiDropTimer
.L_72124:
	.4byte	.L_72128
.L_72128:
	.4byte	.L_721a8
	.4byte	.L_721ec
	.4byte	.L_72208
	.4byte	.L_72210
	.4byte	.L_722c6
	.4byte	.L_722dc
	.4byte	.L_72228
	.4byte	.L_72280
	.4byte	.L_722b0
	.4byte	.L_722c0
	.4byte	.L_72280
	.4byte	.L_722fc
	.4byte	.L_72314
	.4byte	.L_72244
	.4byte	.L_72280
	.4byte	.L_722b0
	.4byte	.L_722c0
	.4byte	.L_72298
	.4byte	.L_7225c
	.4byte	.L_722c6
	.4byte	.L_722dc
	.4byte	.L_72298
	.4byte	.L_72280
	.4byte	.L_722b0
	.4byte	.L_722c0
	.4byte	.L_72280
	.4byte	.L_722fc
	.4byte	.L_72314
	.4byte	.L_72298
	.4byte	.L_7223a
	.4byte	.L_7223a
	.4byte	.L_72328
.L_721a8:
	ldr	r0, .L_721e4
	mov	r1, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_721e8
	ldrb	r0, [r0, #0]
	mov	r4, #18
	cmp	r0, #5
	bne	.L_721ba
	b	.L_72350
.L_721ba:
	mov	r4, #14
	cmp	r0, #3
	bne	.L_721c2
	b	.L_72350
.L_721c2:
	mov	r4, #1
	cmp	r0, #2
	bne	.L_721ca
	b	.L_72350
.L_721ca:
	mov	r4, #7
	cmp	r0, #1
	bne	.L_721d2
	b	.L_72350
.L_721d2:
	mov	r4, #22
	cmp	r0, #0
	bne	.L_721da
	b	.L_72350
.L_721da:
	cmp	r0, #6
	beq	.L_721e0
	b	.L_7234c
.L_721e0:
	mov	r4, #29
	b	.L_72350
.L_721e4:
	.4byte	gUnk_3000046
.L_721e8:
	.4byte	gStageExitType
.L_721ec:
	ldr	r1, .L_72204
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #20
	bhi	.L_721fe
	b	.L_7234c
.L_721fe:
	mov	r4, #128	@ 0x80
	b	.L_72350
	.align	2, 0
.L_72204:
	.4byte	gUnk_300188E
.L_72208:
	mov	r0, #1
	bl	func_8071600
	mov	r4, #128	@ 0x80
.L_72210:
	ldr	r1, .L_72224
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #120	@ 0x78
	bhi	.L_72222
	b	.L_7234c
.L_72222:
	b	.L_721fe
.L_72224:
	.4byte	gUnk_300188E
.L_72228:
	ldr	r1, .L_72240
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #45	@ 0x2d
	bhi	.L_7223a
	b	.L_7234c
.L_7223a:
	mov	r4, #31
	b	.L_72350
	.align	2, 0
.L_72240:
	.4byte	gUnk_300188E
.L_72244:
	ldr	r1, .L_72258
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #10
	bhi	.L_72256
	b	.L_7234c
.L_72256:
	b	.L_7223a
.L_72258:
	.4byte	gUnk_300188E
.L_7225c:
	ldr	r1, .L_72278
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #60	@ 0x3c
	bls	.L_7234c
	mov	r4, #128	@ 0x80
	ldr	r1, .L_7227c
	mov	r0, #0
	strb	r0, [r1, #0]
	b	.L_7234c
	.align	2, 0
.L_72278:
	.4byte	gUnk_300188E
.L_7227c:
	.4byte	gUnk_3003BF0
.L_72280:
	ldr	r1, .L_72294
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #60	@ 0x3c
	bls	.L_7234c
	b	.L_721fe
	.align	2, 0
.L_72294:
	.4byte	gUnk_300188E
.L_72298:
	ldr	r1, .L_722ac
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #60	@ 0x3c
	bls	.L_7234c
	b	.L_7223a
	.align	2, 0
.L_722ac:
	.4byte	gUnk_300188E
.L_722b0:
	ldr	r0, .L_722bc
	mov	r2, #0
	mov	r1, #5
	strb	r1, [r0, #0]
	strb	r2, [r0, #2]
	b	.L_721fe
.L_722bc:
	.4byte	gColorFading
.L_722c0:
	bl	func_80714F0
	b	.L_722f0
.L_722c6:
	ldr	r0, .L_722d8
	mov	r2, #0
	mov	r1, #2
	strb	r1, [r0, #0]
	strb	r2, [r0, #2]
	bl	func_80701F4
	b	.L_721fe
	.align	2, 0
.L_722d8:
	.4byte	gColorFading
.L_722dc:
	ldr	r0, .L_722f8
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_7238a
	mov	r0, #1
	mov	r1, #2
	bl	func_80710D8
.L_722f0:
	cmp	r0, #0
	beq	.L_7234c
	b	.L_721fe
	.align	2, 0
.L_722f8:
	.4byte	gMainTimer
.L_722fc:
	ldr	r1, .L_7230c
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_72310
	mov	r0, #255	@ 0xff
	strh	r0, [r1, #0]
	b	.L_721fe
	.align	2, 0
.L_7230c:
	.4byte	gBldy
.L_72310:
	.4byte	gBldCnt
.L_72314:
	ldr	r1, .L_72324
	ldrh	r0, [r1, #0]
	cmp	r0, #15
	bls	.L_7231e
	b	.L_721fe
.L_7231e:
	add	r0, #1
	strh	r0, [r1, #0]
	b	.L_7234c
.L_72324:
	.4byte	gBldy
.L_72328:
	ldr	r2, .L_72360
	ldrh	r1, [r2, #0]
	ldr	r0, .L_72364
	and	r0, r1
	strh	r0, [r2, #0]
	ldr	r2, .L_72368
	ldrh	r1, [r2, #0]
	ldr	r0, .L_7236c
	and	r0, r1
	strh	r0, [r2, #0]
	ldr	r0, .L_72370
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_72374
	strb	r1, [r0, #0]
	ldr	r0, .L_72378
	strb	r1, [r0, #0]
	mov	r5, #1
.L_7234c:
	cmp	r4, #0
	beq	.L_7238a
.L_72350:
	cmp	r4, #128	@ 0x80
	bne	.L_72380
	ldr	r1, .L_7237c
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	b	.L_72384
	.align	2, 0
.L_72360:
	.4byte	0x04000004
.L_72364:
	.4byte	0x0000ffef
.L_72368:
	.4byte	0x04000200
.L_7236c:
	.4byte	0x0000fffd
.L_72370:
	.4byte	gSwitchPressed
.L_72374:
	.4byte	gUnk_3000C3F
.L_72378:
	.4byte	gUnk_3000025
.L_7237c:
	.4byte	gSpriteAiDropTimer
.L_72380:
	ldr	r0, .L_72394
	strb	r4, [r0, #0]
.L_72384:
	ldr	r1, .L_72398
	mov	r0, #0
	strh	r0, [r1, #0]
.L_7238a:
	add	r0, r5, #0
.L_7238c:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_72394:
	.4byte	gSpriteAiDropTimer
.L_72398:
	.4byte	gUnk_300188E


thumb_func_start func_807239C
func_807239C:
	push	{r4, lr}
	bl	func_807053C
	ldr	r1, .L_723c4
	ldr	r0, .L_723c8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	add	r4, r0, #0
	bl	func_8070BB8
	bl	func_8070C38
	add	r0, r4, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.L_723c4:
	.4byte	sUnk_878F5DC
.L_723c8:
	.4byte	gCurrentPassage


thumb_func_start func_80723CC
func_80723CC:
	push	{r4, r5, r6, lr}
	mov	r6, #0
	ldr	r0, .L_723e8
	ldrb	r1, [r0, #0]
	add	r4, r0, #0
	cmp	r1, #8
	bls	.L_723dc
	b	.L_72594
.L_723dc:
	lsl	r0, r1, #2
	ldr	r1, .L_723ec
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_723e8:
	.4byte	gSpriteAiDropTimer
.L_723ec:
	.4byte	.L_723f0
.L_723f0:
	.4byte	.L_72414
	.4byte	.L_72430
	.4byte	.L_72484
	.4byte	.L_724a8
	.4byte	.L_724b8
	.4byte	.L_724ec
	.4byte	.L_72530
	.4byte	.L_72554
	.4byte	.L_72578
.L_72414:
	bl	func_8072754
	ldr	r1, .L_72428
	mov	r0, #168	@ 0xa8
	strb	r0, [r1, #0]
	ldr	r1, .L_7242c
	mov	r0, #136	@ 0x88
	strb	r0, [r1, #0]
	b	.L_72560
	.align	2, 0
.L_72428:
	.4byte	gUnk_3003BF6
.L_7242c:
	.4byte	gUnk_3003BF5
.L_72430:
	ldr	r3, .L_7245c
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	mov	r1, #7
	and	r0, r1
	cmp	r0, #0
	beq	.L_72442
	b	.L_72594
.L_72442:
	ldr	r2, .L_72460
	ldrb	r0, [r2, #2]
	add	r1, r0, #0
	cmp	r1, #0
	bne	.L_72468
	strh	r1, [r3, #0]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r0, .L_72464
	bl	m4aSongNumStart
	b	.L_72594
.L_7245c:
	.4byte	gUnk_300188E
.L_72460:
	.4byte	gUnk_30000D8
.L_72464:
	.4byte	0x000001e3
.L_72468:
	sub	r0, #1
	strb	r0, [r2, #2]
	ldr	r3, .L_72480
	ldrb	r1, [r2, #2]
	ldrh	r2, [r3, #0]
	mov	r0, #255	@ 0xff
	lsl	r0, r0, #8
	and	r0, r2
	orr	r1, r0
	strh	r1, [r3, #0]
	b	.L_72594
	.align	2, 0
.L_72480:
	.4byte	0x04000052
.L_72484:
	ldr	r1, .L_724a4
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #10
	bhi	.L_72496
	b	.L_72594
.L_72496:
	mov	r0, #0
	strh	r0, [r1, #0]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	b	.L_72594
	.align	2, 0
.L_724a4:
	.4byte	gUnk_300188E
.L_724a8:
	bl	func_80728C0
	ldr	r1, .L_724b4
	mov	r0, #2
	strb	r0, [r1, #0]
	b	.L_72560
.L_724b4:
	.4byte	gUnk_3003BF4
.L_724b8:
	ldr	r3, .L_724e0
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldr	r2, .L_724e4
	mov	r1, #2
	strb	r1, [r2, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #19
	bls	.L_72594
	mov	r0, #0
	strh	r0, [r3, #0]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r1, .L_724e8
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_72594
.L_724e0:
	.4byte	gUnk_300188E
.L_724e4:
	.4byte	gUnk_3003BF4
.L_724e8:
	.4byte	gUnk_3000038
.L_724ec:
	ldr	r1, .L_72524
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #14
	bls	.L_72506
	mov	r0, #0
	strh	r0, [r1, #0]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
.L_72506:
	ldrh	r1, [r1, #0]
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_72594
	ldr	r1, .L_72528
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r2, .L_7252c
	lsl	r1, r0, #4
	orr	r0, r1
	strh	r0, [r2, #0]
	b	.L_72594
	.align	2, 0
.L_72524:
	.4byte	gUnk_300188E
.L_72528:
	.4byte	gMosaic
.L_7252c:
	.4byte	0x0400004c
.L_72530:
	ldr	r4, .L_7254c
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	ldr	r1, .L_72550
	mov	r5, #0
	mov	r0, #2
	strb	r0, [r1, #0]
	strb	r5, [r1, #2]
	bl	func_80701F4
	strh	r5, [r4, #0]
	b	.L_72566
	.align	2, 0
.L_7254c:
	.4byte	gUnk_300188E
.L_72550:
	.4byte	gColorFading
.L_72554:
	mov	r0, #1
	mov	r1, #2
	bl	func_80710D8
	cmp	r0, #0
	beq	.L_72594
.L_72560:
	ldr	r1, .L_72570
	mov	r0, #0
	strh	r0, [r1, #0]
.L_72566:
	ldr	r1, .L_72574
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	b	.L_72594
.L_72570:
	.4byte	gUnk_300188E
.L_72574:
	.4byte	gSpriteAiDropTimer
.L_72578:
	ldr	r1, .L_725a8
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #40	@ 0x28
	bls	.L_72594
	mov	r0, #0
	strh	r0, [r1, #0]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	mov	r6, #2
.L_72594:
	bl	func_80728E4
	bl	func_8072704
	bl	func_80725AC
	add	r0, r6, #0
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L_725a8:
	.4byte	gUnk_300188E


thumb_func_start func_80725AC
func_80725AC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, .L_726c8
	mov	r8, r0
	ldr	r6, .L_726cc
	ldrh	r0, [r6, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	ldr	r5, .L_726d0
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, .L_726d4
	strh	r0, [r3, #0]
	ldrh	r0, [r6, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r7, #0
	ldrsh	r4, [r0, r7]
	mov	r1, #0
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, .L_726d8
	strh	r0, [r2, #0]
	ldr	r3, .L_726dc
	mov	r9, r3
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	neg	r1, r1
	ldrh	r0, [r6, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r7, #0
	ldrsh	r0, [r0, r7]
	add	r4, r1, #0
	mul	r4, r0
	lsl	r4, r4, #16
	asr	r4, r4, #16
	ldr	r5, .L_726e0
	mov	r1, #0
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, .L_726e4
	mov	sl, r2
	strh	r0, [r2, #0]
	mov	r3, r9
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	ldrh	r0, [r6, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	ldrh	r0, [r0, #0]
	add	r4, r1, #0
	mul	r4, r0
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r7, #0
	ldrsh	r0, [r5, r7]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r6, .L_726e8
	strh	r0, [r6, #0]
	ldr	r4, .L_726ec
	ldr	r5, .L_726f0
	ldrb	r2, [r5, #0]
	ldr	r0, .L_726f4
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	sub	r0, r2, r0
	lsl	r0, r0, #8
	ldr	r3, .L_726d4
	mov	r7, #0
	ldrsh	r1, [r3, r7]
	mul	r1, r2
	sub	r0, r0, r1
	ldr	r1, .L_726d8
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r3, .L_726f8
	ldrb	r1, [r3, #0]
	mul	r1, r2
	sub	r0, r0, r1
	str	r0, [r4, #0]
	ldr	r4, .L_726fc
	ldrb	r3, [r3, #0]
	ldr	r0, .L_72700
	mov	r7, #0
	ldrsh	r0, [r0, r7]
	sub	r0, r3, r0
	lsl	r0, r0, #8
	mov	r1, sl
	mov	r7, #0
	ldrsh	r2, [r1, r7]
	ldrb	r1, [r5, #0]
	mul	r1, r2
	sub	r0, r0, r1
	mov	r2, #0
	ldrsh	r1, [r6, r2]
	mul	r1, r3
	sub	r0, r0, r1
	str	r0, [r4, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_726c8:
	.4byte	sSinCosTable
.L_726cc:
	.4byte	gUnk_3001866
.L_726d0:
	.4byte	gUnk_3001862
.L_726d4:
	.4byte	gBg2PA
.L_726d8:
	.4byte	gBg2PB
.L_726dc:
	.4byte	gUnk_3003BF2
.L_726e0:
	.4byte	gUnk_3001864
.L_726e4:
	.4byte	gBg2PC
.L_726e8:
	.4byte	gBg2PD
.L_726ec:
	.4byte	gBg2X
.L_726f0:
	.4byte	gUnk_3003BF6
.L_726f4:
	.4byte	gUnk_3001852
.L_726f8:
	.4byte	gUnk_3003BF5
.L_726fc:
	.4byte	gBg2Y
.L_72700:
	.4byte	gUnk_3001854


thumb_func_start func_8072704
func_8072704:
	push	{r4, lr}
	ldr	r0, .L_72728
	mov	r1, #0
	ldrsb	r1, [r0, r1]
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_72748
	ldr	r1, .L_7272c
	ldrh	r0, [r1, #0]
	mov	r3, #0
	ldrsb	r3, [r4, r3]
	add	r0, r0, r3
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	cmp	r0, r2
	ble	.L_72730
	strh	r2, [r1, #0]
	b	.L_7273a
.L_72728:
	.4byte	gUnk_3003BF4
.L_7272c:
	.4byte	gUnk_3001862
.L_72730:
	strh	r0, [r1, #0]
	ldr	r1, .L_72750
	ldrh	r0, [r1, #0]
	add	r0, r0, r3
	strh	r0, [r1, #0]
.L_7273a:
	ldrb	r1, [r4, #0]
	mov	r0, #0
	ldrsb	r0, [r4, r0]
	cmp	r0, #127	@ 0x7f
	beq	.L_72748
	add	r0, r1, #1
	strb	r0, [r4, #0]
.L_72748:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_72750:
	.4byte	gUnk_3001864


thumb_func_start func_8072754
func_8072754:
	ldr	r0, .L_727b0
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	add	r1, r2, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_727b4
	mov	r3, #0
	strh	r3, [r0, #0]
	ldr	r0, .L_727b8
	strh	r3, [r0, #0]
	ldr	r0, .L_727bc
	strh	r1, [r0, #0]
	ldr	r0, .L_727c0
	strh	r1, [r0, #0]
	ldr	r0, .L_727c4
	strh	r1, [r0, #0]
	ldr	r0, .L_727c8
	strh	r3, [r0, #0]
	ldr	r0, .L_727cc
	mov	r2, #0
	str	r2, [r0, #0]
	ldr	r0, .L_727d0
	str	r2, [r0, #0]
	ldr	r0, .L_727d4
	strh	r2, [r0, #0]
	ldr	r0, .L_727d8
	strh	r2, [r0, #0]
	ldr	r0, .L_727dc
	strb	r3, [r0, #0]
	ldr	r0, .L_727e0
	strb	r3, [r0, #0]
	ldr	r0, .L_727e4
	strb	r3, [r0, #0]
	ldr	r1, .L_727e8
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	ldr	r1, .L_727ec
	mov	r0, #120	@ 0x78
	strb	r0, [r1, #0]
	ldr	r0, .L_727f0
	strh	r2, [r0, #0]
	ldr	r1, .L_727f4
	mov	r0, #1
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_727b0:
	.4byte	gBg2PA
.L_727b4:
	.4byte	gBg2PB
.L_727b8:
	.4byte	gBg2PC
.L_727bc:
	.4byte	gBg2PD
.L_727c0:
	.4byte	gUnk_3001862
.L_727c4:
	.4byte	gUnk_3001864
.L_727c8:
	.4byte	gUnk_3001866
.L_727cc:
	.4byte	gBg2X
.L_727d0:
	.4byte	gBg2Y
.L_727d4:
	.4byte	gUnk_3001852
.L_727d8:
	.4byte	gUnk_3001854
.L_727dc:
	.4byte	gUnk_3003BF1
.L_727e0:
	.4byte	gUnk_3003BF3
.L_727e4:
	.4byte	gUnk_3003BF4
.L_727e8:
	.4byte	gUnk_3003BF5
.L_727ec:
	.4byte	gUnk_3003BF6
.L_727f0:
	.4byte	gMosaic
.L_727f4:
	.4byte	gUnk_3003BF2


thumb_func_start func_80727F8
func_80727F8:
	push	{r4, lr}
	bl	m4aSoundVSync
	ldr	r1, .L_72888
	ldr	r0, .L_7288c
	str	r0, [r1, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_72890
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_72894
	mov	r4, #0
	strh	r4, [r0, #0]
	add	r0, #2
	strh	r4, [r0, #0]
	sub	r1, #180	@ 0xb4
	ldr	r0, .L_72898
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, .L_7289c
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, .L_728a0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, .L_728a4
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, .L_728a8
	ldr	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_728ac
	and	r0, r2
	asr	r0, r0, #16
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, .L_728b0
	ldr	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	and	r0, r2
	asr	r0, r0, #16
	strh	r0, [r1, #0]
	sub	r1, #46	@ 0x2e
	ldr	r2, .L_728b4
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #12
	ldr	r2, .L_728b8
	add	r0, r2, #0
	strh	r0, [r1, #0]
	sub	r1, #2
	ldr	r2, .L_728bc
	add	r0, r2, #0
	strh	r0, [r1, #0]
	mov	r0, #14
	bl	func_8071600
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	strh	r4, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_72888:
	.4byte	0x040000d4
.L_7288c:
	.4byte	gOamBuffer
.L_72890:
	.4byte	0x84000100
.L_72894:
	.4byte	0x04000014
.L_72898:
	.4byte	gBg2PA
.L_7289c:
	.4byte	gBg2PB
.L_728a0:
	.4byte	gBg2PC
.L_728a4:
	.4byte	gBg2PD
.L_728a8:
	.4byte	gBg2X
.L_728ac:
	.4byte	0x0fff0000
.L_728b0:
	.4byte	gBg2Y
.L_728b4:
	.4byte	0x00001601
.L_728b8:
	.4byte	0x00004709
.L_728bc:
	.4byte	0x0000064a


thumb_func_start func_80728C0
func_80728C0:
	push	{lr}
	ldr	r0, .L_728d8
	mov	r1, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_728dc
	strb	r1, [r0, #0]
	ldr	r0, .L_728e0
	bl	InterruptCallbackSetVBlank
	pop	{r0}
	bx	r0
	.align	2, 0
.L_728d8:
	.4byte	gDrawWarioOverBackground
.L_728dc:
	.4byte	gUnk_3000046
.L_728e0:
	.4byte	func_80727F8


thumb_func_start func_80728E4
func_80728E4:
	push	{r4, lr}
	ldr	r3, .L_728f8
	ldrb	r0, [r3, #0]
	cmp	r0, #1
	beq	.L_728fc
	cmp	r0, #1
	ble	.L_72954
	cmp	r0, #2
	beq	.L_72924
	b	.L_72954
.L_728f8:
	.4byte	gUnk_3000038
.L_728fc:
	ldr	r1, .L_72918
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_7291c
	mov	r0, #16
	strh	r0, [r1, #0]
	sub	r1, #2
	ldr	r2, .L_72920
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldrb	r0, [r3, #0]
	add	r0, #1
	strb	r0, [r3, #0]
	b	.L_72954
.L_72918:
	.4byte	gUnk_3001874
.L_7291c:
	.4byte	0x04000052
.L_72920:
	.4byte	0x00002f50
.L_72924:
	ldr	r4, .L_72934
	ldrh	r2, [r4, #0]
	cmp	r2, #16
	bne	.L_72938
	mov	r0, #0
	strb	r0, [r3, #0]
	b	.L_72954
	.align	2, 0
.L_72934:
	.4byte	gUnk_3001874
.L_72938:
	ldr	r0, .L_7295c
	ldrb	r1, [r0, #0]
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	bne	.L_72954
	add	r2, #1
	strh	r2, [r4, #0]
	ldr	r3, .L_72960
	lsl	r1, r2, #8
	mov	r0, #16
	sub	r0, r0, r2
	orr	r1, r0
	strh	r1, [r3, #0]
.L_72954:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7295c:
	.4byte	gMainTimer
.L_72960:
	.4byte	0x04000052
