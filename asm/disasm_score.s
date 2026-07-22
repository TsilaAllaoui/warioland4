.include "macros.s.inc"


thumb_func_start ProcessSecondarySprites
ProcessSecondarySprites:
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
	bl	func_80762E4
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
	bl	func_80762E4
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
	bl	func_8075988
	ldr	r0, .L_752e4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_752b2
	bl	func_80752F0
.L_752b2:
	ldr	r0, .L_752e8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_752be
	bl	func_8075388
.L_752be:
	ldr	r0, .L_752ec
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_752ca
	bl	func_807569C
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
	.4byte	gUnk_3000C02
.L_752e8:
	.4byte	gUnk_3000C01
.L_752ec:
	.4byte	gUnk_3000C03


thumb_func_start func_80752F0
func_80752F0:
	push	{r4, lr}
	ldr	r1, .L_75360
	ldr	r4, .L_75364
	mov	r0, #4
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r3, .L_75368
	add	r0, r0, r3
	str	r0, [r1, #0]
	ldr	r0, .L_7536c
	str	r0, [r1, #4]
	ldr	r2, .L_75370
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #3
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	add	r0, r0, r3
	str	r0, [r1, #0]
	ldr	r0, .L_75374
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #2
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	add	r0, r0, r3
	str	r0, [r1, #0]
	ldr	r0, .L_75378
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #1
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	add	r0, r0, r3
	str	r0, [r1, #0]
	ldr	r0, .L_7537c
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #0
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	add	r0, r0, r3
	str	r0, [r1, #0]
	ldr	r0, .L_75380
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r1, .L_75384
	mov	r0, #0
	strb	r0, [r1, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_75360:
	.4byte	0x040000d4
.L_75364:
	.4byte	gScoreDigits
.L_75368:
	.4byte	sScoreDigitsGfx
.L_7536c:
	.4byte	0x06011080
.L_75370:
	.4byte	0x80000010
.L_75374:
	.4byte	0x060110a0
.L_75378:
	.4byte	0x060110c0
.L_7537c:
	.4byte	0x060110e0
.L_75380:
	.4byte	0x06011100
.L_75384:
	.4byte	gUnk_3000C02


thumb_func_start func_8075388
func_8075388:
	push	{r4, lr}
	ldr	r0, .L_753bc
	ldrb	r4, [r0, #0]
	ldr	r2, .L_753c0
	mov	r0, #2
	ldrsb	r0, [r2, r0]
	cmp	r0, #0
	bne	.L_753e2
	mov	r1, #1
	ldrsb	r1, [r2, r1]
	lsl	r0, r1, #2
	add	r0, r0, r1
	lsl	r0, r0, #1
	ldrb	r2, [r2, #0]
	add	r0, r0, r2
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #10
	bne	.L_753c4
	mov	r4, #35	@ 0x23
	mov	r0, #225	@ 0xe1
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_753e2
	.align	2, 0
.L_753bc:
	.4byte	gUnk_3000C01
.L_753c0:
	.4byte	gUnk_3000BF0
.L_753c4:
	cmp	r0, #30
	bne	.L_753cc
	mov	r4, #19
	b	.L_753e2
.L_753cc:
	cmp	r0, #9
	bgt	.L_753d6
	mov	r0, #32
	orr	r4, r0
	b	.L_753e2
.L_753d6:
	cmp	r0, #29
	bgt	.L_753e2
	mov	r0, #16
	orr	r4, r0
	lsl	r0, r4, #24
	lsr	r4, r0, #24
.L_753e2:
	sub	r0, r4, #1
	cmp	r0, #34	@ 0x22
	bls	.L_753ea
	b	.L_7565e
.L_753ea:
	lsl	r0, r0, #2
	ldr	r1, .L_753f4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_753f4:
	.4byte	.L_753f8
.L_753f8:
	.4byte	.L_754e0
	.4byte	.L_754b2
	.4byte	.L_75484
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_75588
	.4byte	.L_7555a
	.4byte	.L_7552c
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_7565e
	.4byte	.L_75630
	.4byte	.L_75602
	.4byte	.L_755d4
.L_75484:
	ldr	r2, .L_75504
	ldr	r4, .L_75508
	mov	r0, #2
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_7550c
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_75510
	str	r0, [r2, #4]
	ldr	r3, .L_75514
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r0, #2
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_75518
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_7551c
	str	r0, [r2, #4]
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
.L_754b2:
	ldr	r2, .L_75504
	ldr	r4, .L_75508
	mov	r0, #1
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_7550c
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_75520
	str	r0, [r2, #4]
	ldr	r3, .L_75514
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r0, #1
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_75518
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_75524
	str	r0, [r2, #4]
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
.L_754e0:
	ldr	r2, .L_75504
	ldr	r4, .L_75508
	mov	r0, #0
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_7550c
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_75528
	str	r0, [r2, #4]
	ldr	r3, .L_75514
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r0, #0
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_75518
	b	.L_75652
.L_75504:
	.4byte	0x040000d4
.L_75508:
	.4byte	gUnk_3000BF0
.L_7550c:
	.4byte	sTimeDigitsUpperGfx
.L_75510:
	.4byte	0x06011000
.L_75514:
	.4byte	0x80000010
.L_75518:
	.4byte	sTimeDigitsLowerGfx
.L_7551c:
	.4byte	0x06011400
.L_75520:
	.4byte	0x06011040
.L_75524:
	.4byte	0x06011440
.L_75528:
	.4byte	0x06011060
.L_7552c:
	ldr	r2, .L_755ac
	ldr	r4, .L_755b0
	mov	r0, #2
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_755b4
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_755b8
	str	r0, [r2, #4]
	ldr	r3, .L_755bc
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r0, #2
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_755c0
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_755c4
	str	r0, [r2, #4]
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
.L_7555a:
	ldr	r2, .L_755ac
	ldr	r4, .L_755b0
	mov	r0, #1
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_755b4
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_755c8
	str	r0, [r2, #4]
	ldr	r3, .L_755bc
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r0, #1
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_755c0
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_755cc
	str	r0, [r2, #4]
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
.L_75588:
	ldr	r2, .L_755ac
	ldr	r4, .L_755b0
	mov	r0, #0
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_755b4
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_755d0
	str	r0, [r2, #4]
	ldr	r3, .L_755bc
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r0, #0
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_755c0
	b	.L_75652
.L_755ac:
	.4byte	0x040000d4
.L_755b0:
	.4byte	gUnk_3000BF0
.L_755b4:
	.4byte	sTimeDigitsYellowUpperGfx
.L_755b8:
	.4byte	0x06011000
.L_755bc:
	.4byte	0x80000010
.L_755c0:
	.4byte	sTimeDigitsYellowLowerGfx
.L_755c4:
	.4byte	0x06011400
.L_755c8:
	.4byte	0x06011040
.L_755cc:
	.4byte	0x06011440
.L_755d0:
	.4byte	0x06011060
.L_755d4:
	ldr	r2, .L_7566c
	ldr	r4, .L_75670
	mov	r0, #2
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_75674
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_75678
	str	r0, [r2, #4]
	ldr	r3, .L_7567c
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r0, #2
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_75680
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_75684
	str	r0, [r2, #4]
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
.L_75602:
	ldr	r2, .L_7566c
	ldr	r4, .L_75670
	mov	r0, #1
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_75674
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_75688
	str	r0, [r2, #4]
	ldr	r3, .L_7567c
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r0, #1
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_75680
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_7568c
	str	r0, [r2, #4]
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
.L_75630:
	ldr	r2, .L_7566c
	ldr	r4, .L_75670
	mov	r0, #0
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_75674
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_75690
	str	r0, [r2, #4]
	ldr	r3, .L_7567c
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r0, #0
	ldrsb	r0, [r4, r0]
	lsl	r0, r0, #5
	ldr	r1, .L_75680
.L_75652:
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_75694
	str	r0, [r2, #4]
	str	r3, [r2, #8]
	ldr	r0, [r2, #8]
.L_7565e:
	ldr	r1, .L_75698
	mov	r0, #0
	strb	r0, [r1, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7566c:
	.4byte	0x040000d4
.L_75670:
	.4byte	gUnk_3000BF0
.L_75674:
	.4byte	sTimeDigitsRedUpperGfx
.L_75678:
	.4byte	0x06011000
.L_7567c:
	.4byte	0x80000010
.L_75680:
	.4byte	sTimeDigitsRedLowerGfx
.L_75684:
	.4byte	0x06011400
.L_75688:
	.4byte	0x06011040
.L_7568c:
	.4byte	0x06011440
.L_75690:
	.4byte	0x06011060
.L_75694:
	.4byte	0x06011460
.L_75698:
	.4byte	gUnk_3000C01


thumb_func_start func_807569C
func_807569C:
	push	{r4, lr}
	ldr	r1, .L_756cc
	ldrb	r2, [r1, #0]
	ldr	r3, .L_756d0
	mov	r0, #2
	ldrsb	r0, [r3, r0]
	add	r4, r1, #0
	cmp	r0, #0
	bne	.L_756e0
	mov	r1, #1
	ldrsb	r1, [r3, r1]
	lsl	r0, r1, #2
	add	r0, r0, r1
	lsl	r0, r0, #1
	ldrb	r3, [r3, #0]
	add	r0, r0, r3
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #10
	bgt	.L_756d4
	mov	r0, #32
	orr	r2, r0
	b	.L_756e0
	.align	2, 0
.L_756cc:
	.4byte	gUnk_3000C03
.L_756d0:
	.4byte	gUnk_3000BF0
.L_756d4:
	cmp	r0, #30
	bgt	.L_756e0
	mov	r0, #16
	orr	r2, r0
	lsl	r0, r2, #24
	lsr	r2, r0, #24
.L_756e0:
	sub	r0, r2, #1
	cmp	r0, #33	@ 0x21
	bls	.L_756e8
	b	.L_75864
.L_756e8:
	lsl	r0, r0, #2
	ldr	r1, .L_756f4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_756f4:
	.4byte	.L_756f8
.L_756f8:
	.4byte	.L_757a8
	.4byte	.L_75780
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_757f8
	.4byte	.L_757d0
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75864
	.4byte	.L_75848
	.4byte	.L_75820
.L_75780:
	ldr	r0, .L_75794
	ldr	r1, .L_75798
	str	r1, [r0, #0]
	ldr	r1, .L_7579c
	str	r1, [r0, #4]
	ldr	r2, .L_757a0
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_757a4
	b	.L_7585a
.L_75794:
	.4byte	0x040000d4
.L_75798:
	.4byte	sTimeColonUpperGfx
.L_7579c:
	.4byte	0x06011020
.L_757a0:
	.4byte	0x80000010
.L_757a4:
	.4byte	sTimeColonLowerGfx
.L_757a8:
	ldr	r0, .L_757bc
	ldr	r1, .L_757c0
	str	r1, [r0, #0]
	ldr	r1, .L_757c4
	str	r1, [r0, #4]
	ldr	r2, .L_757c8
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_757cc
	b	.L_7585a
.L_757bc:
	.4byte	0x040000d4
.L_757c0:
	.4byte	sTimeColonEmptyUpperGfx
.L_757c4:
	.4byte	0x06011020
.L_757c8:
	.4byte	0x80000010
.L_757cc:
	.4byte	sTimeColonEmptyLowerGfx
.L_757d0:
	ldr	r0, .L_757e4
	ldr	r1, .L_757e8
	str	r1, [r0, #0]
	ldr	r1, .L_757ec
	str	r1, [r0, #4]
	ldr	r2, .L_757f0
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_757f4
	b	.L_7585a
.L_757e4:
	.4byte	0x040000d4
.L_757e8:
	.4byte	sTimeColonYellowUpperGfx
.L_757ec:
	.4byte	0x06011020
.L_757f0:
	.4byte	0x80000010
.L_757f4:
	.4byte	sTimeColonYellowLowerGfx
.L_757f8:
	ldr	r0, .L_7580c
	ldr	r1, .L_75810
	str	r1, [r0, #0]
	ldr	r1, .L_75814
	str	r1, [r0, #4]
	ldr	r2, .L_75818
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_7581c
	b	.L_7585a
.L_7580c:
	.4byte	0x040000d4
.L_75810:
	.4byte	sTimeColonEmptyYellowUpperGfx
.L_75814:
	.4byte	0x06011020
.L_75818:
	.4byte	0x80000010
.L_7581c:
	.4byte	sTimeColonEmptyYellowLowerGfx
.L_75820:
	ldr	r0, .L_75834
	ldr	r1, .L_75838
	str	r1, [r0, #0]
	ldr	r1, .L_7583c
	str	r1, [r0, #4]
	ldr	r2, .L_75840
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_75844
	b	.L_7585a
.L_75834:
	.4byte	0x040000d4
.L_75838:
	.4byte	sTimeColonRedUpperGfx
.L_7583c:
	.4byte	0x06011020
.L_75840:
	.4byte	0x80000010
.L_75844:
	.4byte	sTimeColonRedLowerGfx
.L_75848:
	ldr	r0, .L_75870
	ldr	r1, .L_75874
	str	r1, [r0, #0]
	ldr	r1, .L_75878
	str	r1, [r0, #4]
	ldr	r2, .L_7587c
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_75880
.L_7585a:
	str	r1, [r0, #0]
	ldr	r1, .L_75884
	str	r1, [r0, #4]
	str	r2, [r0, #8]
	ldr	r0, [r0, #8]
.L_75864:
	mov	r0, #0
	strb	r0, [r4, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_75870:
	.4byte	0x040000d4
.L_75874:
	.4byte	sTimeColonEmptyRedUpperGfx
.L_75878:
	.4byte	0x06011020
.L_7587c:
	.4byte	0x80000010
.L_75880:
	.4byte	sTimeColonEmptyRedLowerGfx
.L_75884:
	.4byte	0x06011420


thumb_func_start func_8075888
func_8075888:
	push	{r4, r5, lr}
	ldr	r1, .L_75920
	mov	r2, #250	@ 0xfa
	lsl	r2, r2, #2
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_75924
	mov	r2, #1
	strb	r2, [r0, #0]
	ldr	r1, .L_75928
	mov	r0, #2
	strb	r0, [r1, #0]
	ldr	r0, .L_7592c
	strb	r2, [r0, #0]
	ldr	r0, .L_75930
	ldr	r1, .L_75934
	str	r1, [r0, #0]
	ldr	r1, .L_75938
	str	r1, [r0, #4]
	ldr	r5, .L_7593c
	str	r5, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r2, .L_75940
	str	r2, [r0, #0]
	ldr	r1, .L_75944
	str	r1, [r0, #4]
	ldr	r4, .L_75948
	str	r4, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r3, .L_7594c
	str	r3, [r0, #0]
	ldr	r1, .L_75950
	str	r1, [r0, #4]
	str	r4, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_75954
	add	r2, r2, r1
	str	r2, [r0, #0]
	ldr	r1, .L_75958
	str	r1, [r0, #4]
	ldr	r2, .L_7595c
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_75954
	add	r3, r3, r1
	str	r3, [r0, #0]
	ldr	r1, .L_75960
	str	r1, [r0, #4]
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_75964
	str	r1, [r0, #0]
	ldr	r1, .L_75968
	str	r1, [r0, #4]
	str	r5, [r0, #8]
	ldr	r0, [r0, #8]
	ldr	r1, .L_7596c
	ldrh	r0, [r1, #20]
	ldrh	r1, [r1, #18]
	mov	r2, #77	@ 0x4d
	bl	SpriteSpawnSecondary
	ldr	r0, .L_75970
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bne	.L_75910
	bl	AutosaveDefeat
.L_75910:
	bl	func_801E4D4
	mov	r0, #22
	bl	m4aSongNumStart
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_75920:
	.4byte	gWarioPauseTimer
.L_75924:
	.4byte	gDisableWario
.L_75928:
	.4byte	gUnk_3000C03
.L_7592c:
	.4byte	gUnk_3000046
.L_75930:
	.4byte	0x040000d4
.L_75934:
	.4byte	sTimeUpTextPal
.L_75938:
	.4byte	0x05000240
.L_7593c:
	.4byte	0x80000010
.L_75940:
	.4byte	sTimeUpGfx + 0x300
.L_75944:
	.4byte	0x06010380
.L_75948:
	.4byte	0x80000080
.L_7594c:
	.4byte	sTimeUpGfx + 0x700
.L_75950:
	.4byte	0x06010780
.L_75954:
	.4byte	-0x300
.L_75958:
	.4byte	0x06010800
.L_7595c:
	.4byte	0x80000200
.L_75960:
	.4byte	0x06010c00
.L_75964:
	.4byte	sTimeUpWarioPal
.L_75968:
	.4byte	0x05000200
.L_7596c:
	.4byte	gWarioData
.L_75970:
	.4byte	gCurrentStageNumber


thumb_func_start func_8075974
func_8075974:
	push	{lr}
	bl	func_801E4D4
	ldr	r0, .L_75984
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_75984:
	.4byte	0x000001c5


thumb_func_start func_8075988
func_8075988:
	push	{r4, r5, lr}
	ldr	r0, .L_759c4
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #2
	beq	.L_75996
	b	.L_75b48
.L_75996:
	ldr	r0, .L_759c8
	ldrb	r1, [r0, #0]
	add	r5, r0, #0
	cmp	r1, #3
	bls	.L_759a2
	b	.L_75b48
.L_759a2:
	ldr	r0, .L_759cc
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_759ac
	b	.L_75b48
.L_759ac:
	ldr	r0, .L_759d0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_759d8
	ldr	r0, .L_759d4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_759d8
	bl	func_8075888
	b	.L_75b48
	.align	2, 0
.L_759c4:
	.4byte	gSubGameMode
.L_759c8:
	.4byte	gTimerState
.L_759cc:
	.4byte	gWarioPauseTimer
.L_759d0:
	.4byte	gHeartMeter
.L_759d4:
	.4byte	gUnk_3000022
.L_759d8:
	ldr	r0, .L_75a28
	ldr	r1, [r0, #0]
	add	r1, #1
	str	r1, [r0, #0]
	add	r4, r1, #0
	ldrb	r0, [r5, #0]
	cmp	r0, #1
	bls	.L_75a3c
	mov	r0, #7
	and	r0, r4
	cmp	r0, #0
	bne	.L_75a5e
	mov	r0, #1
	neg	r0, r0
	bl	ScoreGivePoints
	ldr	r1, .L_75a2c
	ldrh	r0, [r1, #20]
	ldrh	r1, [r1, #18]
	mov	r2, #46	@ 0x2e
	bl	SpriteSpawnSecondary
	ldr	r0, .L_75a30
	ldr	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_75a5e
	mov	r0, #4
	strb	r0, [r5, #0]
	ldr	r1, .L_75a34
	mov	r2, #250	@ 0xfa
	lsl	r2, r2, #2
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_75a38
	mov	r0, #1
	strb	r0, [r1, #0]
	bl	func_8075974
	b	.L_75a5e
	.align	2, 0
.L_75a28:
	.4byte	gUnk_3000BEC
.L_75a2c:
	.4byte	gWarioData
.L_75a30:
	.4byte	gStageScore
.L_75a34:
	.4byte	gWarioPauseTimer
.L_75a38:
	.4byte	gUnk_3000046
.L_75a3c:
	mov	r0, #31
	and	r0, r4
	cmp	r0, #0
	bne	.L_75a5e
	mov	r0, #32
	and	r0, r4
	cmp	r0, #0
	beq	.L_75a58
	ldr	r1, .L_75a54
	mov	r0, #1
	b	.L_75a5c
	.align	2, 0
.L_75a54:
	.4byte	gUnk_3000C03
.L_75a58:
	ldr	r1, .L_75ab4
	mov	r0, #2
.L_75a5c:
	strb	r0, [r1, #0]
.L_75a5e:
	mov	r0, #63	@ 0x3f
	and	r0, r4
	cmp	r0, #0
	bne	.L_75b48
	ldr	r0, .L_75ab8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_75a74
	mov	r0, #64	@ 0x40
	bl	ScreenShakeRequestX
.L_75a74:
	ldr	r4, .L_75abc
	ldrb	r0, [r4, #0]
	cmp	r0, #1
	bne	.L_75b1e
	mov	r5, #1
	ldr	r1, .L_75ac0
	ldrb	r2, [r1, #0]
	mov	r0, #0
	ldrsb	r0, [r1, r0]
	cmp	r0, #0
	ble	.L_75aec
	sub	r0, r2, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_75b1a
	ldrb	r0, [r1, #1]
	ldrb	r1, [r1, #2]
	orr	r0, r1
	cmp	r0, #0
	bne	.L_75b1a
	ldr	r0, .L_75ac4
	bl	m4aSongNumStart
	ldr	r0, .L_75ac8
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_75acc
	mov	r0, #2
	strb	r0, [r4, #0]
	b	.L_75b1a
	.align	2, 0
.L_75ab4:
	.4byte	gUnk_3000C03
.L_75ab8:
	.4byte	gSwitchPressed
.L_75abc:
	.4byte	gTimerState
.L_75ac0:
	.4byte	gUnk_3000BF0
.L_75ac4:
	.4byte	0x000001c3
.L_75ac8:
	.4byte	gStageScore
.L_75acc:
	mov	r0, #4
	strb	r0, [r4, #0]
	ldr	r1, .L_75ae4
	mov	r2, #250	@ 0xfa
	lsl	r2, r2, #2
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_75ae8
	strb	r5, [r0, #0]
	bl	func_8075974
	b	.L_75b1a
.L_75ae4:
	.4byte	gWarioPauseTimer
.L_75ae8:
	.4byte	gUnk_3000046
.L_75aec:
	mov	r5, #2
	mov	r3, #9
	strb	r3, [r1, #0]
	ldrb	r2, [r1, #1]
	mov	r0, #1
	ldrsb	r0, [r1, r0]
	cmp	r0, #0
	ble	.L_75b02
	sub	r0, r2, #1
	strb	r0, [r1, #1]
	b	.L_75b1a
.L_75b02:
	mov	r5, #3
	mov	r0, #5
	strb	r0, [r1, #1]
	ldrb	r2, [r1, #2]
	mov	r0, #2
	ldrsb	r0, [r1, r0]
	cmp	r0, #0
	ble	.L_75b18
	sub	r0, r2, #1
	strb	r0, [r1, #2]
	b	.L_75b1a
.L_75b18:
	strb	r3, [r1, #2]
.L_75b1a:
	ldr	r0, .L_75b38
	strb	r5, [r0, #0]
.L_75b1e:
	ldr	r0, .L_75b3c
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bne	.L_75b48
	ldr	r0, .L_75b40
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_75b48
	cmp	r0, #5
	bne	.L_75b44
	bl	func_807507C
	b	.L_75b48
.L_75b38:
	.4byte	gUnk_3000C01
.L_75b3c:
	.4byte	gCurrentStageNumber
.L_75b40:
	.4byte	gCurrentPassage
.L_75b44:
	bl	func_8074F44
.L_75b48:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8075B50
func_8075B50:
	push	{r4, r5, r6, lr}
	ldr	r1, .L_75b70
	ldrb	r6, [r1, #0]
	ldr	r1, .L_75b74
	ldrb	r3, [r1, #0]
	cmp	r3, #4
	beq	.L_75b60
	b	.L_75e40
.L_75b60:
	cmp	r6, #1
	bge	.L_75b66
	b	.L_75e1c
.L_75b66:
	cmp	r6, #4
	ble	.L_75b78
	cmp	r6, #5
	beq	.L_75ba8
	b	.L_75e1c
.L_75b70:
	.4byte	gCurrentPassage
.L_75b74:
	.4byte	gCurrentStageNumber
.L_75b78:
	ldr	r1, .L_75b94
	mov	r2, #2
	strb	r2, [r1, #0]
	ldr	r1, .L_75b98
	strb	r2, [r1, #0]
	ldr	r1, .L_75b9c
	strb	r2, [r1, #0]
	ldr	r1, .L_75ba0
	mov	r2, #0
.L_75b8a:
	strb	r2, [r1, #0]
	ldr	r1, .L_75ba4
	strb	r2, [r1, #0]
	b	.L_75f34
	.align	2, 0
.L_75b94:
	.4byte	gCollectedNEJewelPiece
.L_75b98:
	.4byte	gCollectedSEJewelPiece
.L_75b9c:
	.4byte	gCollectedSWJewelPiece
.L_75ba0:
	.4byte	gCollectedNWJewelPiece
.L_75ba4:
	.4byte	gCollectedCD
.L_75ba8:
	ldr	r3, .L_75bcc
	add	r1, r3, #0
	add	r1, #40	@ 0x28
	ldrb	r1, [r1, #0]
	mov	r2, #1
	and	r2, r1
	mov	ip, r3
	cmp	r2, #0
	beq	.L_75bd8
	ldr	r2, .L_75bd0
	mov	r1, #2
	strb	r1, [r2, #0]
	ldr	r2, .L_75bd4
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75bdc
	.align	2, 0
.L_75bcc:
	.4byte	gCurrentCollection
.L_75bd0:
	.4byte	gCollectedNEJewelPiece
.L_75bd4:
	.4byte	gGoldenTreasureCount
.L_75bd8:
	ldr	r1, .L_75c00
	strb	r2, [r1, #0]
.L_75bdc:
	mov	r1, ip
	add	r1, #40	@ 0x28
	ldrb	r2, [r1, #0]
	mov	r3, #2
	add	r1, r3, #0
	and	r1, r2
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	cmp	r2, #0
	beq	.L_75c0c
	ldr	r1, .L_75c04
	strb	r3, [r1, #0]
	ldr	r2, .L_75c08
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75c10
	.align	2, 0
.L_75c00:
	.4byte	gCollectedNEJewelPiece
.L_75c04:
	.4byte	gCollectedSEJewelPiece
.L_75c08:
	.4byte	gGoldenTreasureCount
.L_75c0c:
	ldr	r1, .L_75c34
	strb	r2, [r1, #0]
.L_75c10:
	mov	r1, ip
	add	r1, #40	@ 0x28
	ldrb	r2, [r1, #0]
	mov	r1, #4
	and	r1, r2
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	cmp	r2, #0
	beq	.L_75c40
	ldr	r2, .L_75c38
	mov	r1, #2
	strb	r1, [r2, #0]
	ldr	r2, .L_75c3c
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75c44
	.align	2, 0
.L_75c34:
	.4byte	gCollectedSEJewelPiece
.L_75c38:
	.4byte	gCollectedSWJewelPiece
.L_75c3c:
	.4byte	gGoldenTreasureCount
.L_75c40:
	ldr	r1, .L_75c64
	strb	r2, [r1, #0]
.L_75c44:
	mov	r1, ip
	add	r1, #64	@ 0x40
	ldrb	r1, [r1, #0]
	mov	r2, #1
	and	r2, r1
	cmp	r2, #0
	beq	.L_75c70
	ldr	r2, .L_75c68
	mov	r1, #2
	strb	r1, [r2, #0]
	ldr	r2, .L_75c6c
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75c74
	.align	2, 0
.L_75c64:
	.4byte	gCollectedSWJewelPiece
.L_75c68:
	.4byte	gCollectedNWJewelPiece
.L_75c6c:
	.4byte	gGoldenTreasureCount
.L_75c70:
	ldr	r1, .L_75c98
	strb	r2, [r1, #0]
.L_75c74:
	mov	r1, ip
	add	r1, #64	@ 0x40
	ldrb	r2, [r1, #0]
	mov	r3, #2
	add	r1, r3, #0
	and	r1, r2
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	cmp	r2, #0
	beq	.L_75ca4
	ldr	r1, .L_75c9c
	strb	r3, [r1, #0]
	ldr	r2, .L_75ca0
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75ca8
	.align	2, 0
.L_75c98:
	.4byte	gCollectedNWJewelPiece
.L_75c9c:
	.4byte	gHasGoldenDivaChest5
.L_75ca0:
	.4byte	gGoldenTreasureCount
.L_75ca4:
	ldr	r1, .L_75ccc
	strb	r2, [r1, #0]
.L_75ca8:
	mov	r1, ip
	add	r1, #64	@ 0x40
	ldrb	r2, [r1, #0]
	mov	r1, #4
	and	r1, r2
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	cmp	r2, #0
	beq	.L_75cd8
	ldr	r2, .L_75cd0
	mov	r1, #2
	strb	r1, [r2, #0]
	ldr	r2, .L_75cd4
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75cdc
	.align	2, 0
.L_75ccc:
	.4byte	gHasGoldenDivaChest5
.L_75cd0:
	.4byte	gHasGoldenDivaChest6
.L_75cd4:
	.4byte	gGoldenTreasureCount
.L_75cd8:
	ldr	r1, .L_75cfc
	strb	r2, [r1, #0]
.L_75cdc:
	mov	r1, ip
	add	r1, #88	@ 0x58
	ldrb	r1, [r1, #0]
	mov	r2, #1
	and	r2, r1
	cmp	r2, #0
	beq	.L_75d08
	ldr	r2, .L_75d00
	mov	r1, #2
	strb	r1, [r2, #0]
	ldr	r2, .L_75d04
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75d0c
	.align	2, 0
.L_75cfc:
	.4byte	gHasGoldenDivaChest6
.L_75d00:
	.4byte	gHasGoldenDivaChest7
.L_75d04:
	.4byte	gGoldenTreasureCount
.L_75d08:
	ldr	r1, .L_75d30
	strb	r2, [r1, #0]
.L_75d0c:
	mov	r1, ip
	add	r1, #88	@ 0x58
	ldrb	r2, [r1, #0]
	mov	r3, #2
	add	r1, r3, #0
	and	r1, r2
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	cmp	r2, #0
	beq	.L_75d3c
	ldr	r1, .L_75d34
	strb	r3, [r1, #0]
	ldr	r2, .L_75d38
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75d40
	.align	2, 0
.L_75d30:
	.4byte	gHasGoldenDivaChest7
.L_75d34:
	.4byte	gHasGoldenDivaChest8
.L_75d38:
	.4byte	gGoldenTreasureCount
.L_75d3c:
	ldr	r1, .L_75d64
	strb	r2, [r1, #0]
.L_75d40:
	mov	r1, ip
	add	r1, #88	@ 0x58
	ldrb	r2, [r1, #0]
	mov	r1, #4
	and	r1, r2
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	cmp	r2, #0
	beq	.L_75d70
	ldr	r2, .L_75d68
	mov	r1, #2
	strb	r1, [r2, #0]
	ldr	r2, .L_75d6c
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75d74
	.align	2, 0
.L_75d64:
	.4byte	gHasGoldenDivaChest8
.L_75d68:
	.4byte	gHasGoldenDivaChest9
.L_75d6c:
	.4byte	gGoldenTreasureCount
.L_75d70:
	ldr	r1, .L_75d94
	strb	r2, [r1, #0]
.L_75d74:
	mov	r1, ip
	add	r1, #112	@ 0x70
	ldrb	r1, [r1, #0]
	mov	r2, #1
	and	r2, r1
	cmp	r2, #0
	beq	.L_75da0
	ldr	r2, .L_75d98
	mov	r1, #2
	strb	r1, [r2, #0]
	ldr	r2, .L_75d9c
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75da4
	.align	2, 0
.L_75d94:
	.4byte	gHasGoldenDivaChest9
.L_75d98:
	.4byte	gHasGoldenDivaChest10
.L_75d9c:
	.4byte	gGoldenTreasureCount
.L_75da0:
	ldr	r1, .L_75dc8
	strb	r2, [r1, #0]
.L_75da4:
	mov	r1, ip
	add	r1, #112	@ 0x70
	ldrb	r2, [r1, #0]
	mov	r3, #2
	add	r1, r3, #0
	and	r1, r2
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	cmp	r2, #0
	beq	.L_75dd4
	ldr	r1, .L_75dcc
	strb	r3, [r1, #0]
	ldr	r2, .L_75dd0
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75dd8
	.align	2, 0
.L_75dc8:
	.4byte	gHasGoldenDivaChest10
.L_75dcc:
	.4byte	gHasGoldenDivaChest11
.L_75dd0:
	.4byte	gGoldenTreasureCount
.L_75dd4:
	ldr	r1, .L_75dfc
	strb	r2, [r1, #0]
.L_75dd8:
	mov	r1, ip
	add	r1, #112	@ 0x70
	ldrb	r2, [r1, #0]
	mov	r1, #4
	and	r1, r2
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	cmp	r2, #0
	beq	.L_75e08
	ldr	r2, .L_75e00
	mov	r1, #2
	strb	r1, [r2, #0]
	ldr	r2, .L_75e04
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75e0c
	.align	2, 0
.L_75dfc:
	.4byte	gHasGoldenDivaChest11
.L_75e00:
	.4byte	gHasGoldenDivaChest12
.L_75e04:
	.4byte	gGoldenTreasureCount
.L_75e08:
	ldr	r1, .L_75e14
	strb	r2, [r1, #0]
.L_75e0c:
	ldr	r1, .L_75e18
	mov	r2, #0
	strb	r2, [r1, #0]
	b	.L_75f34
.L_75e14:
	.4byte	gHasGoldenDivaChest12
.L_75e18:
	.4byte	gCollectedCD
.L_75e1c:
	ldr	r1, .L_75e30
	mov	r2, #0
	strb	r2, [r1, #0]
	ldr	r1, .L_75e34
	strb	r2, [r1, #0]
	ldr	r1, .L_75e38
	strb	r2, [r1, #0]
	ldr	r1, .L_75e3c
	b	.L_75b8a
	.align	2, 0
.L_75e30:
	.4byte	gCollectedNEJewelPiece
.L_75e34:
	.4byte	gCollectedSEJewelPiece
.L_75e38:
	.4byte	gCollectedSWJewelPiece
.L_75e3c:
	.4byte	gCollectedNWJewelPiece
.L_75e40:
	ldr	r2, .L_75e64
	lsl	r3, r3, #2
	lsl	r4, r6, #1
	add	r1, r4, r6
	lsl	r1, r1, #3
	add	r1, r3, r1
	add	r1, r1, r2
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #31
	lsr	r5, r1, #31
	mov	ip, r2
	cmp	r5, #0
	beq	.L_75e6c
	ldr	r2, .L_75e68
	mov	r1, #3
	strb	r1, [r2, #0]
	b	.L_75e70
	.align	2, 0
.L_75e64:
	.4byte	gCurrentCollection
.L_75e68:
	.4byte	gCollectedNEJewelPiece
.L_75e6c:
	ldr	r1, .L_75e8c
	strb	r5, [r1, #0]
.L_75e70:
	add	r1, r4, r6
	lsl	r1, r1, #3
	add	r1, r3, r1
	add	r1, ip
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #30
	lsr	r2, r1, #31
	cmp	r2, #0
	beq	.L_75e94
	ldr	r2, .L_75e90
	mov	r1, #3
	strb	r1, [r2, #0]
	b	.L_75e98
	.align	2, 0
.L_75e8c:
	.4byte	gCollectedNEJewelPiece
.L_75e90:
	.4byte	gCollectedSEJewelPiece
.L_75e94:
	ldr	r1, .L_75eb4
	strb	r2, [r1, #0]
.L_75e98:
	add	r1, r4, r6
	lsl	r1, r1, #3
	add	r1, r3, r1
	add	r1, ip
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #29
	lsr	r2, r1, #31
	cmp	r2, #0
	beq	.L_75ebc
	ldr	r2, .L_75eb8
	mov	r1, #3
	strb	r1, [r2, #0]
	b	.L_75ec0
	.align	2, 0
.L_75eb4:
	.4byte	gCollectedSEJewelPiece
.L_75eb8:
	.4byte	gCollectedSWJewelPiece
.L_75ebc:
	ldr	r1, .L_75edc
	strb	r2, [r1, #0]
.L_75ec0:
	add	r1, r4, r6
	lsl	r1, r1, #3
	add	r1, r3, r1
	add	r1, ip
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #28
	lsr	r2, r1, #31
	cmp	r2, #0
	beq	.L_75ee4
	ldr	r2, .L_75ee0
	mov	r1, #3
	strb	r1, [r2, #0]
	b	.L_75ee8
	.align	2, 0
.L_75edc:
	.4byte	gCollectedSWJewelPiece
.L_75ee0:
	.4byte	gCollectedNWJewelPiece
.L_75ee4:
	ldr	r1, .L_75f04
	strb	r2, [r1, #0]
.L_75ee8:
	add	r1, r4, r6
	lsl	r1, r1, #3
	add	r1, r3, r1
	add	r1, ip
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #27
	lsr	r2, r1, #31
	cmp	r2, #0
	beq	.L_75f0c
	ldr	r2, .L_75f08
	mov	r1, #3
	strb	r1, [r2, #0]
	b	.L_75f10
	.align	2, 0
.L_75f04:
	.4byte	gCollectedNWJewelPiece
.L_75f08:
	.4byte	gCollectedCD
.L_75f0c:
	ldr	r1, .L_75f2c
	strb	r2, [r1, #0]
.L_75f10:
	add	r1, r4, r6
	lsl	r1, r1, #3
	add	r1, r3, r1
	add	r1, ip
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #26
	lsr	r2, r1, #31
	cmp	r2, #0
	beq	.L_75f34
	ldr	r2, .L_75f30
	mov	r1, #2
	strb	r1, [r2, #0]
	b	.L_75f38
	.align	2, 0
.L_75f2c:
	.4byte	gCollectedCD
.L_75f30:
	.4byte	gCollectedKeyzer
.L_75f34:
	ldr	r1, .L_75f40
	strb	r2, [r1, #0]
.L_75f38:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_75f40:
	.4byte	gCollectedKeyzer


thumb_func_start func_8075F44
func_8075F44:
	push	{r4, r5, r6, lr}
	ldr	r1, .L_75f7c
	ldr	r0, .L_75f80
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	ldr	r1, .L_75f84
	ldr	r0, .L_75f88
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	ldr	r0, .L_75f8c
	mov	r1, #0
	ldrsb	r1, [r0, r1]
	add	r6, r0, #0
	cmp	r1, #0
	bne	.L_75f6a
	ldr	r0, .L_75f90
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_75fdc
.L_75f6a:
	ldr	r3, .L_75f94
	mov	r5, #7
.L_75f6e:
	ldrb	r0, [r3, #2]
	cmp	r0, #73	@ 0x49
	bhi	.L_75f98
	mov	r0, #0
	strb	r0, [r3, #0]
	b	.L_75fd2
	.align	2, 0
.L_75f7c:
	.4byte	gUnk_3000C2A
.L_75f80:
	.4byte	gCurrentPassage
.L_75f84:
	.4byte	gUnk_3000C2B
.L_75f88:
	.4byte	gCurrentStageNumber
.L_75f8c:
	.4byte	gUnk_3000C3F
.L_75f90:
	.4byte	gHasTemporarySave
.L_75f94:
	.4byte	gSecondarySpriteData
.L_75f98:
	cmp	r0, #75	@ 0x4b
	bne	.L_75fd2
	ldrb	r1, [r3, #0]
	mov	r4, #1
	add	r0, r4, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_75fd2
	ldr	r2, .L_75fc4
	ldrh	r0, [r2, #20]
	sub	r0, #96	@ 0x60
	strh	r0, [r3, #8]
	ldrh	r1, [r2, #14]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_75fc8
	ldrh	r0, [r2, #18]
	add	r0, #64	@ 0x40
	strh	r0, [r3, #10]
	strb	r4, [r3, #3]
	b	.L_75fd2
.L_75fc4:
	.4byte	gWarioData
.L_75fc8:
	ldrh	r0, [r2, #18]
	sub	r0, #64	@ 0x40
	strh	r0, [r3, #10]
	mov	r0, #3
	strb	r0, [r3, #3]
.L_75fd2:
	add	r3, #12
	sub	r5, #1
	cmp	r5, #0
	bge	.L_75f6e
	b	.L_75fec
.L_75fdc:
	ldr	r1, .L_760a0
	mov	r2, #0
	add	r0, r1, #0
	add	r0, #84	@ 0x54
.L_75fe4:
	strb	r2, [r0, #0]
	sub	r0, #12
	cmp	r0, r1
	bge	.L_75fe4
.L_75fec:
	mov	r0, #0
	ldrsb	r0, [r6, r0]
	cmp	r0, #0
	bne	.L_76054
	ldr	r0, .L_760a4
	ldrb	r4, [r0, #0]
	cmp	r4, #0
	bne	.L_76054
	ldr	r0, .L_760a8
	strb	r4, [r0, #0]
	ldr	r0, .L_760ac
	strb	r4, [r0, #0]
	strb	r4, [r0, #1]
	strb	r4, [r0, #2]
	strb	r4, [r0, #3]
	strb	r4, [r0, #4]
	ldr	r0, .L_760b0
	str	r4, [r0, #0]
	ldr	r0, .L_760b4
	str	r4, [r0, #0]
	ldr	r0, .L_760b8
	strb	r4, [r0, #0]
	ldr	r0, .L_760bc
	strb	r4, [r0, #0]
	ldr	r0, .L_760c0
	strb	r4, [r0, #0]
	bl	func_8075B50
	ldr	r0, .L_760c4
	strb	r4, [r0, #0]
	ldr	r0, .L_760c8
	strb	r4, [r0, #0]
	ldr	r0, .L_760cc
	strb	r4, [r0, #0]
	ldr	r0, .L_760d0
	strb	r4, [r0, #0]
	ldr	r0, .L_760d4
	strb	r4, [r0, #0]
	ldr	r0, .L_760d8
	strb	r4, [r0, #0]
	ldr	r0, .L_760dc
	strb	r4, [r0, #0]
	ldr	r0, .L_760e0
	strb	r4, [r0, #0]
	ldr	r0, .L_760e4
	strb	r4, [r0, #0]
	ldr	r0, .L_760e8
	strb	r4, [r0, #0]
	ldr	r0, .L_760ec
	strb	r4, [r0, #0]
	ldr	r0, .L_760f0
	strh	r4, [r0, #0]
.L_76054:
	ldr	r0, .L_760f4
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_760f8
	strb	r1, [r0, #0]
	ldr	r0, .L_760fc
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_76100
	strh	r1, [r0, #0]
	ldr	r0, .L_76104
	strb	r1, [r0, #0]
	ldr	r1, .L_76108
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_7610c
	mov	r0, #3
	strb	r0, [r1, #0]
	ldr	r1, .L_76110
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_80752F0
	bl	func_8075388
	bl	func_807569C
	ldr	r0, .L_76114
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bls	.L_76094
	b	.L_76194
.L_76094:
	lsl	r0, r0, #2
	ldr	r1, .L_76118
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_760a0:
	.4byte	gSecondarySpriteData
.L_760a4:
	.4byte	gHasTemporarySave
.L_760a8:
	.4byte	gCurrentShopItem
.L_760ac:
	.4byte	gScoreDigits
.L_760b0:
	.4byte	gStageScore
.L_760b4:
	.4byte	gUnk_3000BEC
.L_760b8:
	.4byte	gUnk_3000C06
.L_760bc:
	.4byte	gSwitchPressed
.L_760c0:
	.4byte	gGoldenTreasureCount
.L_760c4:
	.4byte	gBossTookDamage
.L_760c8:
	.4byte	gCuckooCondorPendulumLength
.L_760cc:
	.4byte	gCuckooCondorMoveRight
.L_760d0:
	.4byte	gCuckooCondorHasCapturedWario
.L_760d4:
	.4byte	gInitialHealth
.L_760d8:
	.4byte	gPaletteFlashTimer
.L_760dc:
	.4byte	gBgAnimationFrame
.L_760e0:
	.4byte	gBgAnimationTimer
.L_760e4:
	.4byte	gSpriteAiDynamicGraphicsTimer
.L_760e8:
	.4byte	gGoldenDivaShopItemHealthTarget
.L_760ec:
	.4byte	gUnk_3000A62
.L_760f0:
	.4byte	gSpriteAiRadius
.L_760f4:
	.4byte	gUnk_3000C04
.L_760f8:
	.4byte	gUnk_3000C0E
.L_760fc:
	.4byte	gVortexYPosition
.L_76100:
	.4byte	gVortexXPosition
.L_76104:
	.4byte	gVortexGfxSlot
.L_76108:
	.4byte	gUnk_3000C02
.L_7610c:
	.4byte	gUnk_3000C01
.L_76110:
	.4byte	gUnk_3000C03
.L_76114:
	.4byte	gCurrentPassage
.L_76118:
	.4byte	.L_7611c
.L_7611c:
	.4byte	.L_76134
	.4byte	.L_76144
	.4byte	.L_76154
	.4byte	.L_76164
	.4byte	.L_76174
	.4byte	.L_76184
.L_76134:
	ldr	r1, .L_7613c
	ldr	r0, .L_76140
	b	.L_76188
	.align	2, 0
.L_7613c:
	.4byte	0x040000d4
.L_76140:
	.4byte	sStageEntryPassagePal
.L_76144:
	ldr	r1, .L_7614c
	ldr	r0, .L_76150
	b	.L_76188
	.align	2, 0
.L_7614c:
	.4byte	0x040000d4
.L_76150:
	.4byte	sStageEmeraldPassagePal
.L_76154:
	ldr	r1, .L_7615c
	ldr	r0, .L_76160
	b	.L_76188
	.align	2, 0
.L_7615c:
	.4byte	0x040000d4
.L_76160:
	.4byte	sStageRubyPassagePal
.L_76164:
	ldr	r1, .L_7616c
	ldr	r0, .L_76170
	b	.L_76188
	.align	2, 0
.L_7616c:
	.4byte	0x040000d4
.L_76170:
	.4byte	sStageTopazPassagePal
.L_76174:
	ldr	r1, .L_7617c
	ldr	r0, .L_76180
	b	.L_76188
	.align	2, 0
.L_7617c:
	.4byte	0x040000d4
.L_76180:
	.4byte	sStageSapphirePassagePal
.L_76184:
	ldr	r1, .L_761ac
	ldr	r0, .L_761b0
.L_76188:
	str	r0, [r1, #0]
	ldr	r0, .L_761b4
	str	r0, [r1, #4]
	ldr	r0, .L_761b8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_76194:
	ldr	r0, .L_761bc
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bne	.L_7619e
	b	.L_762cc
.L_7619e:
	ldr	r0, .L_761c0
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bne	.L_761c8
	ldr	r1, .L_761ac
	ldr	r0, .L_761c4
	b	.L_761d0
.L_761ac:
	.4byte	0x040000d4
.L_761b0:
	.4byte	sStageGoldenPyramidPal
.L_761b4:
	.4byte	0x05000280
.L_761b8:
	.4byte	0x80000010
.L_761bc:
	.4byte	gCurrentStageNumber
.L_761c0:
	.4byte	gCollectedNEJewelPiece
.L_761c4:
	.4byte	sJewelPieceIconNEGfx
.L_761c8:
	cmp	r0, #0
	beq	.L_761dc
	ldr	r1, .L_761ec
	ldr	r0, .L_761f0
.L_761d0:
	str	r0, [r1, #0]
	ldr	r0, .L_761f4
	str	r0, [r1, #4]
	ldr	r0, .L_761f8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_761dc:
	ldr	r0, .L_761fc
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bne	.L_76204
	ldr	r1, .L_761ec
	ldr	r0, .L_76200
	b	.L_7620c
	.align	2, 0
.L_761ec:
	.4byte	0x040000d4
.L_761f0:
	.4byte	sJewelPieceIconPartialNEGfx
.L_761f4:
	.4byte	0x06011c20
.L_761f8:
	.4byte	0x80000010
.L_761fc:
	.4byte	gCollectedSEJewelPiece
.L_76200:
	.4byte	sJewelPieceIconSEGfx
.L_76204:
	cmp	r0, #0
	beq	.L_76218
	ldr	r1, .L_76228
	ldr	r0, .L_7622c
.L_7620c:
	str	r0, [r1, #0]
	ldr	r0, .L_76230
	str	r0, [r1, #4]
	ldr	r0, .L_76234
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_76218:
	ldr	r0, .L_76238
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bne	.L_76240
	ldr	r1, .L_76228
	ldr	r0, .L_7623c
	b	.L_76248
	.align	2, 0
.L_76228:
	.4byte	0x040000d4
.L_7622c:
	.4byte	sJewelPieceIconPartialSEGfx
.L_76230:
	.4byte	0x06012020
.L_76234:
	.4byte	0x80000010
.L_76238:
	.4byte	gCollectedSWJewelPiece
.L_7623c:
	.4byte	sJewelPieceIconSWGfx
.L_76240:
	cmp	r0, #0
	beq	.L_76254
	ldr	r1, .L_76264
	ldr	r0, .L_76268
.L_76248:
	str	r0, [r1, #0]
	ldr	r0, .L_7626c
	str	r0, [r1, #4]
	ldr	r0, .L_76270
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_76254:
	ldr	r0, .L_76274
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bne	.L_7627c
	ldr	r1, .L_76264
	ldr	r0, .L_76278
	b	.L_76284
	.align	2, 0
.L_76264:
	.4byte	0x040000d4
.L_76268:
	.4byte	sJewelPieceIconPartialSWGfx
.L_7626c:
	.4byte	0x06012000
.L_76270:
	.4byte	0x80000010
.L_76274:
	.4byte	gCollectedNWJewelPiece
.L_76278:
	.4byte	sJewelPieceIconNWGfx
.L_7627c:
	cmp	r0, #0
	beq	.L_76290
	ldr	r1, .L_762a0
	ldr	r0, .L_762a4
.L_76284:
	str	r0, [r1, #0]
	ldr	r0, .L_762a8
	str	r0, [r1, #4]
	ldr	r0, .L_762ac
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_76290:
	ldr	r0, .L_762b0
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bne	.L_762b8
	ldr	r1, .L_762a0
	ldr	r0, .L_762b4
	b	.L_762c0
	.align	2, 0
.L_762a0:
	.4byte	0x040000d4
.L_762a4:
	.4byte	sJewelPieceIconPartialNWGfx
.L_762a8:
	.4byte	0x06011c00
.L_762ac:
	.4byte	0x80000010
.L_762b0:
	.4byte	gCollectedCD
.L_762b4:
	.4byte	sCDIconGfx
.L_762b8:
	cmp	r0, #0
	beq	.L_762cc
	ldr	r1, .L_762d4
	ldr	r0, .L_762d8
.L_762c0:
	str	r0, [r1, #0]
	ldr	r0, .L_762dc
	str	r0, [r1, #4]
	ldr	r0, .L_762e0
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_762cc:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_762d4:
	.4byte	0x040000d4
.L_762d8:
	.4byte	sCDIconPartialGfx
.L_762dc:
	.4byte	0x060114c0
.L_762e0:
	.4byte	0x80000010


thumb_func_start func_80762E4
func_80762E4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #12
	str	r0, [sp, #0]
	ldr	r0, .L_7639c
	ldrb	r2, [r0, #2]
	add	r4, r0, #0
	cmp	r2, #77	@ 0x4d
	bls	.L_763b4
	ldr	r1, .L_763a0
	ldrb	r2, [r1, #0]
	ldr	r0, .L_763a4
	ldr	r5, [r0, #0]
	ldrh	r6, [r5, #0]
	add	r5, #2
	add	r0, r6, r2
	mov	r8, r0
	cmp	r0, #127	@ 0x7f
	ble	.L_76312
	b	.L_76620
.L_76312:
	lsl	r0, r2, #3
	ldr	r2, .L_763a8
	add	r3, r0, r2
	ldrh	r0, [r4, #8]
	lsr	r0, r0, #2
	mov	r9, r0
	ldrh	r0, [r4, #10]
	lsr	r0, r0, #2
	mov	ip, r0
	ldrb	r1, [r4, #0]
	mov	r0, #2
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	cmp	r6, #0
	bne	.L_76334
	b	.L_765d8
.L_76334:
	mov	r1, #7
	ldr	r0, [sp, #0]
	and	r0, r1
	lsl	r0, r0, #1
	mov	sl, r0
	add	r4, r3, #0
.L_76340:
	ldrh	r0, [r5, #0]
	add	r5, #2
	strh	r0, [r3, #0]
	add	r3, #2
	add	r0, r9
	strb	r0, [r4, #0]
	ldrh	r0, [r5, #0]
	add	r5, #2
	strh	r0, [r3, #0]
	add	r3, #2
	mov	r2, ip
	add	r1, r0, r2
	ldr	r0, .L_763ac
	and	r1, r0
	ldrh	r2, [r4, #2]
	ldr	r0, .L_763b0
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r5, #0]
	strh	r0, [r3, #0]
	add	r5, #2
	add	r3, #2
	cmp	r7, #0
	beq	.L_76390
	ldrb	r0, [r4, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #3]
	mov	r1, #32
	orr	r0, r1
	mov	r1, #16
	orr	r0, r1
	mov	r1, #15
	neg	r1, r1
	and	r0, r1
	mov	r2, sl
	orr	r0, r2
	strb	r0, [r4, #3]
.L_76390:
	add	r3, #2
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_76340
	b	.L_765d8
.L_7639c:
	.4byte	gCurrentSecondarySprite
.L_763a0:
	.4byte	gOamSlotsUsed
.L_763a4:
	.4byte	gUnk_3000C10
.L_763a8:
	.4byte	gOamBuffer
.L_763ac:
	.4byte	0x000001ff
.L_763b0:
	.4byte	0xfffffe00
.L_763b4:
	cmp	r2, #75	@ 0x4b
	beq	.L_763ba
	b	.L_764fc
.L_763ba:
	ldr	r0, .L_763c8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_763cc
	mov	r0, #0
	mov	sl, r0
	b	.L_763dc
.L_763c8:
	.4byte	gUnk_3000034
.L_763cc:
	ldr	r0, .L_764d8
	ldrb	r0, [r0, #0]
	mov	r1, #2
	mov	sl, r1
	cmp	r0, #0
	beq	.L_763dc
	mov	r2, #1
	mov	sl, r2
.L_763dc:
	ldrh	r1, [r4, #8]
	lsr	r1, r1, #2
	ldr	r0, .L_764dc
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r9, r1
	ldr	r1, .L_764e0
	ldrb	r2, [r1, #0]
	ldr	r0, .L_764e4
	ldr	r5, [r0, #0]
	ldrh	r6, [r5, #0]
	add	r5, #2
	add	r0, r6, r2
	mov	r8, r0
	cmp	r0, #127	@ 0x7f
	ble	.L_76404
	b	.L_76620
.L_76404:
	lsl	r0, r2, #3
	ldr	r2, .L_764e8
	add	r3, r0, r2
	ldrh	r1, [r4, #10]
	lsr	r1, r1, #2
	ldr	r0, .L_764ec
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	ip, r1
	ldrb	r1, [r4, #0]
	mov	r0, #2
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	cmp	r6, #0
	beq	.L_764ac
	mov	r2, #3
	mov	r1, sp
	strb	r2, [r1, #4]
	mov	r0, sl
	lsl	r0, r0, #2
	str	r0, [sp, #8]
	add	r4, r3, #0
	mov	r1, #7
	ldr	r0, [sp, #0]
	and	r0, r1
	lsl	r0, r0, #1
	mov	sl, r0
.L_76442:
	ldrh	r0, [r5, #0]
	add	r5, #2
	strh	r0, [r3, #0]
	add	r3, #2
	add	r0, r9
	strb	r0, [r4, #0]
	ldrh	r0, [r5, #0]
	add	r5, #2
	strh	r0, [r3, #0]
	add	r3, #2
	mov	r2, ip
	add	r1, r0, r2
	ldr	r0, .L_764f0
	and	r1, r0
	ldrh	r2, [r4, #2]
	ldr	r0, .L_764f4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r5, #0]
	strh	r0, [r3, #0]
	add	r5, #2
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	ldr	r1, [sp, #8]
	orr	r0, r1
	strb	r0, [r4, #5]
	cmp	r7, #0
	beq	.L_764a2
	ldrb	r0, [r4, #1]
	mov	r2, sp
	ldrb	r2, [r2, #4]
	orr	r0, r2
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #3]
	mov	r1, #32
	orr	r0, r1
	mov	r1, #16
	orr	r0, r1
	mov	r1, #15
	neg	r1, r1
	and	r0, r1
	mov	r1, sl
	orr	r0, r1
	strb	r0, [r4, #3]
.L_764a2:
	add	r3, #2
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_76442
.L_764ac:
	mov	r6, r8
	ldr	r2, .L_764e0
	strb	r6, [r2, #0]
	cmp	r7, #0
	bne	.L_764b8
	b	.L_76620
.L_764b8:
	ldr	r0, [sp, #0]
	lsl	r2, r0, #2
	add	r0, r2, #0
	add	r0, #96	@ 0x60
	lsl	r0, r0, #3
	ldr	r1, .L_764e8
	add	r0, r0, r1
	ldr	r1, .L_764f8
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #6]
	add	r0, r2, #0
	add	r0, #97	@ 0x61
	lsl	r0, r0, #3
	ldr	r6, .L_764e8
	b	.L_765fc
	.align	2, 0
.L_764d8:
	.4byte	gDrawWarioOverBackground
.L_764dc:
	.4byte	gBg1YPosition
.L_764e0:
	.4byte	gOamSlotsUsed
.L_764e4:
	.4byte	gUnk_3000C10
.L_764e8:
	.4byte	gOamBuffer
.L_764ec:
	.4byte	gBg1XPosition
.L_764f0:
	.4byte	0x000001ff
.L_764f4:
	.4byte	0xfffffe00
.L_764f8:
	.4byte	gUnk_3000C14
.L_764fc:
	ldr	r5, .L_76524
	cmp	r2, #73	@ 0x49
	bhi	.L_76528
	ldrh	r3, [r5, #0]
	add	r1, r3, #0
	add	r1, #192	@ 0xc0
	ldrh	r0, [r4, #8]
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	add	r2, r0, r6
	cmp	r1, r2
	bgt	.L_7651e
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #2
	add	r0, r3, r1
	cmp	r0, r2
	bge	.L_76528
.L_7651e:
	mov	r0, #0
	strb	r0, [r4, #0]
	b	.L_76620
.L_76524:
	.4byte	gBg1YPosition
.L_76528:
	ldrh	r0, [r4, #8]
	lsr	r0, r0, #2
	ldrh	r1, [r5, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r9, r0
	ldr	r1, .L_76630
	ldrb	r2, [r1, #0]
	ldr	r0, .L_76634
	ldr	r5, [r0, #0]
	ldrh	r6, [r5, #0]
	add	r5, #2
	add	r0, r6, r2
	mov	r8, r0
	cmp	r0, #127	@ 0x7f
	bgt	.L_76620
	lsl	r0, r2, #3
	ldr	r2, .L_76638
	add	r3, r0, r2
	ldrh	r1, [r4, #10]
	lsr	r1, r1, #2
	ldr	r0, .L_7663c
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	ip, r1
	ldrb	r1, [r4, #0]
	mov	r0, #2
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	cmp	r6, #0
	beq	.L_765d8
	mov	r1, #7
	ldr	r0, [sp, #0]
	and	r0, r1
	lsl	r0, r0, #1
	mov	sl, r0
	add	r4, r3, #0
.L_7657e:
	ldrh	r0, [r5, #0]
	add	r5, #2
	strh	r0, [r3, #0]
	add	r3, #2
	add	r0, r9
	strb	r0, [r4, #0]
	ldrh	r0, [r5, #0]
	add	r5, #2
	strh	r0, [r3, #0]
	add	r3, #2
	mov	r2, ip
	add	r1, r0, r2
	ldr	r0, .L_76640
	and	r1, r0
	ldrh	r2, [r4, #2]
	ldr	r0, .L_76644
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r5, #0]
	strh	r0, [r3, #0]
	add	r5, #2
	add	r3, #2
	cmp	r7, #0
	beq	.L_765ce
	ldrb	r0, [r4, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #3]
	mov	r1, #32
	orr	r0, r1
	mov	r1, #16
	orr	r0, r1
	mov	r1, #15
	neg	r1, r1
	and	r0, r1
	mov	r2, sl
	orr	r0, r2
	strb	r0, [r4, #3]
.L_765ce:
	add	r3, #2
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_7657e
.L_765d8:
	mov	r0, r8
	ldr	r6, .L_76630
	strb	r0, [r6, #0]
	cmp	r7, #0
	beq	.L_76620
	ldr	r1, [sp, #0]
	lsl	r2, r1, #2
	add	r0, r2, #0
	add	r0, #96	@ 0x60
	lsl	r0, r0, #3
	ldr	r6, .L_76638
	add	r0, r0, r6
	ldr	r1, .L_76648
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #6]
	add	r0, r2, #0
	add	r0, #97	@ 0x61
	lsl	r0, r0, #3
.L_765fc:
	add	r0, r0, r6
	ldr	r1, .L_7664c
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #6]
	add	r0, r2, #0
	add	r0, #98	@ 0x62
	lsl	r0, r0, #3
	add	r0, r0, r6
	ldr	r1, .L_76650
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #6]
	add	r0, r2, #0
	add	r0, #99	@ 0x63
	lsl	r0, r0, #3
	add	r0, r0, r6
	ldr	r1, .L_76654
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #6]
.L_76620:
	add	sp, #12
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_76630:
	.4byte	gOamSlotsUsed
.L_76634:
	.4byte	gUnk_3000C10
.L_76638:
	.4byte	gOamBuffer
.L_7663c:
	.4byte	gBg1XPosition
.L_76640:
	.4byte	0x000001ff
.L_76644:
	.4byte	0xfffffe00
.L_76648:
	.4byte	gUnk_3000C14
.L_7664c:
	.4byte	gUnk_3000C16
.L_76650:
	.4byte	gUnk_3000C18
.L_76654:
	.4byte	gUnk_3000C1A


thumb_func_start ScoreGivePoints
ScoreGivePoints:
	push	{r4, r5, lr}
	ldr	r2, .L_76694
	mov	r1, #1
	strb	r1, [r2, #0]
	ldr	r2, .L_76698
	ldr	r1, [r2, #0]
	add	r1, r1, r0
	str	r1, [r2, #0]
	cmp	r1, #0
	bge	.L_76670
	mov	r0, #0
	str	r0, [r2, #0]
.L_76670:
	ldr	r4, .L_7669c
	ldr	r5, [r2, #0]
	ldr	r1, .L_766a0
	add	r0, r5, #0
	bl	__divsi3
	strb	r0, [r4, #4]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #9
	ble	.L_766a4
	mov	r0, #9
	strb	r0, [r4, #4]
	strb	r0, [r4, #3]
	strb	r0, [r4, #2]
	strb	r0, [r4, #1]
	b	.L_766de
	.align	2, 0
.L_76694:
	.4byte	gUnk_3000C02
.L_76698:
	.4byte	gStageScore
.L_7669c:
	.4byte	gScoreDigits
.L_766a0:
	.4byte	0x00002710
.L_766a4:
	mov	r1, #250	@ 0xfa
	lsl	r1, r1, #2
	add	r0, r5, #0
	bl	__divsi3
	mov	r1, #10
	bl	__modsi3
	strb	r0, [r4, #3]
	add	r0, r5, #0
	mov	r1, #100	@ 0x64
	bl	__divsi3
	mov	r1, #10
	bl	__modsi3
	strb	r0, [r4, #2]
	add	r0, r5, #0
	mov	r1, #10
	bl	__divsi3
	mov	r1, #10
	bl	__modsi3
	strb	r0, [r4, #1]
	add	r0, r5, #0
	mov	r1, #10
	bl	__modsi3
.L_766de:
	strb	r0, [r4, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start SpriteSpawnSecondary
SpriteSpawnSecondary:
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


thumb_func_start func_8076784
func_8076784:
	push	{lr}
	ldr	r0, .L_767a8
	mov	r3, #0
	mov	r1, #1
	strb	r1, [r0, #0]
	mov	r2, #0
	strh	r3, [r0, #6]
	strb	r2, [r0, #1]
	mov	r1, #47	@ 0x2f
	strb	r1, [r0, #2]
	strb	r2, [r0, #3]
	strb	r2, [r0, #4]
	strb	r2, [r0, #5]
	ldr	r0, .L_767ac
	bl	func_8076A0C
	pop	{r0}
	bx	r0
.L_767a8:
	.4byte	gCurrentSecondarySprite
.L_767ac:
	.4byte	sUnk_840FB94
	push	{lr}
	ldr	r0, .L_767d4
	mov	r3, #0
	mov	r1, #1
	strb	r1, [r0, #0]
	mov	r2, #0
	strh	r3, [r0, #6]
	strb	r2, [r0, #1]
	mov	r1, #80	@ 0x50
	strb	r1, [r0, #2]
	strb	r2, [r0, #3]
	strb	r2, [r0, #4]
	strb	r2, [r0, #5]
	ldr	r0, .L_767d8
	bl	func_8076A0C
	pop	{r0}
	bx	r0
.L_767d4:
	.4byte	gCurrentSecondarySprite
.L_767d8:
	.4byte	sUnk_840FB94


thumb_func_start func_80767DC
func_80767DC:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #4
	add	r4, r2, #0
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	lsl	r1, r1, #16
	lsr	r6, r1, #16
	mov	r5, #0
	cmp	r4, #99	@ 0x63
	ble	.L_7681e
.L_767f0:
	sub	r3, r7, r5
	sub	r0, r6, r5
	str	r0, [sp, #0]
	mov	r0, #133	@ 0x85
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	sub	r4, #100	@ 0x64
	add	r5, #32
	cmp	r4, #99	@ 0x63
	bgt	.L_767f0
	b	.L_7681e
.L_7680a:
	sub	r3, r7, r5
	sub	r0, r6, r5
	str	r0, [sp, #0]
	mov	r0, #132	@ 0x84
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	sub	r4, #50	@ 0x32
	add	r5, #32
.L_7681e:
	cmp	r4, #49	@ 0x31
	bgt	.L_7680a
	cmp	r4, #9
	ble	.L_76854
.L_76826:
	sub	r3, r7, r5
	sub	r0, r6, r5
	str	r0, [sp, #0]
	mov	r0, #131	@ 0x83
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	sub	r4, #10
	add	r5, #32
	cmp	r4, #9
	bgt	.L_76826
	b	.L_76854
.L_76840:
	sub	r3, r7, r5
	sub	r0, r6, r5
	str	r0, [sp, #0]
	mov	r0, #130	@ 0x82
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	sub	r4, #5
	add	r5, #32
.L_76854:
	cmp	r4, #4
	bgt	.L_76840
	cmp	r4, #0
	ble	.L_76874
.L_7685c:
	sub	r3, r7, r5
	sub	r0, r6, r5
	str	r0, [sp, #0]
	mov	r0, #129	@ 0x81
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	sub	r4, #1
	add	r5, #32
	cmp	r4, #0
	bgt	.L_7685c
.L_76874:
	add	sp, #4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_807687C
func_807687C:
	push	{r4, r5, lr}
	sub	sp, #4
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	lsl	r2, r2, #16
	lsr	r4, r2, #16
	ldr	r1, .L_768b4
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	cmp	r3, #0
	beq	.L_768ac
	add	r0, r5, #0
	add	r1, r4, #0
	add	r2, r3, #0
	bl	func_80767DC
	str	r4, [sp, #0]
	mov	r0, #13
	mov	r1, #0
	mov	r2, #0
	add	r3, r5, #0
	bl	SpriteSpawnAsChild
.L_768ac:
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_768b4:
	.4byte	gUnk_3000C06


thumb_func_start ScoreGiveOrDropCoins
ScoreGiveOrDropCoins:
	push	{r4, r5, lr}
	add	r5, r0, #0
	ldr	r0, .L_768e4
	ldr	r4, [r0, #0]
	ldr	r1, .L_768e8
	mov	r0, #0
	strb	r0, [r1, #0]
	cmp	r5, #0
	bge	.L_76902
	neg	r2, r5
	cmp	r4, r2
	blt	.L_768f0
	ldr	r1, .L_768ec
	ldrh	r0, [r1, #20]
	ldrh	r1, [r1, #18]
	bl	func_80767DC
	add	r0, r5, #0
	bl	ScoreGivePoints
	b	.L_76902
	.align	2, 0
.L_768e4:
	.4byte	gStageScore
.L_768e8:
	.4byte	gUnk_3000C04
.L_768ec:
	.4byte	gWarioData
.L_768f0:
	ldr	r1, .L_76908
	ldrh	r0, [r1, #20]
	ldrh	r1, [r1, #18]
	add	r2, r4, #0
	bl	func_80767DC
	neg	r0, r4
	bl	ScoreGivePoints
.L_76902:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_76908:
	.4byte	gWarioData


thumb_func_start func_807690C
func_807690C:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	mov	r0, #1
	bl	ScoreGivePoints
	add	r0, r4, #0
	add	r1, r5, #0
	mov	r2, #0
	bl	SpriteSpawnSecondary
	ldr	r0, .L_7693c
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_76940
	mov	r0, #168	@ 0xa8
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_76948
.L_7693c:
	.4byte	gWarioData
.L_76940:
	mov	r0, #159	@ 0x9f
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_76948:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8076950
func_8076950:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	mov	r0, #10
	bl	ScoreGivePoints
	add	r0, r4, #0
	add	r1, r5, #0
	mov	r2, #2
	bl	SpriteSpawnSecondary
	ldr	r0, .L_76980
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_76988
	ldr	r0, .L_76984
	bl	m4aSongNumStart
	b	.L_7698e
	.align	2, 0
.L_76980:
	.4byte	gWarioData
.L_76984:
	.4byte	0x00000151
.L_76988:
	ldr	r0, .L_76994
	bl	m4aSongNumStart
.L_7698e:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_76994:
	.4byte	0x0000013f


thumb_func_start func_8076998
func_8076998:
	push	{r4, r5, r6, lr}
	ldr	r4, [sp, #16]
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	lsl	r1, r1, #16
	lsr	r6, r1, #16
	lsl	r2, r2, #24
	lsr	r2, r2, #24
	add	r1, r2, #0
	lsl	r3, r3, #24
	lsr	r0, r3, #24
	lsl	r4, r4, #24
	lsr	r4, r4, #24
	cmp	r2, #1
	beq	.L_769ce
	cmp	r2, #1
	bgt	.L_769c0
	cmp	r2, #0
	beq	.L_769ca
	b	.L_769ee
.L_769c0:
	cmp	r1, #2
	beq	.L_769d2
	cmp	r1, #3
	beq	.L_769e4
	b	.L_769ee
.L_769ca:
	add	r0, #7
	b	.L_769d4
.L_769ce:
	add	r0, #19
	b	.L_769d4
.L_769d2:
	add	r0, #31
.L_769d4:
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r4, #0
	beq	.L_769f0
	add	r0, r2, #6
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	b	.L_769f0
.L_769e4:
	mov	r2, #44	@ 0x2c
	cmp	r4, #0
	beq	.L_769f0
	mov	r2, #45	@ 0x2d
	b	.L_769f0
.L_769ee:
	mov	r2, #6
.L_769f0:
	add	r0, r5, #0
	add	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r6, #0
	add	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	SpriteSpawnSecondary
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8076A0C
func_8076A0C:
	add	r3, r0, #0
	ldr	r2, .L_76a4c
	ldrb	r1, [r2, #1]
	add	r1, #1
	strb	r1, [r2, #1]
	ldrh	r0, [r2, #6]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	cmp	r0, r1
	bhi	.L_76a3e
	mov	r0, #0
	strb	r0, [r2, #1]
	ldrh	r0, [r2, #6]
	add	r0, #1
	strh	r0, [r2, #6]
	ldrh	r0, [r2, #6]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_76a3e
	strh	r0, [r2, #6]
.L_76a3e:
	ldr	r0, .L_76a50
	ldrh	r1, [r2, #6]
	lsl	r1, r1, #3
	add	r1, r1, r3
	ldr	r1, [r1, #0]
	str	r1, [r0, #0]
	bx	lr
.L_76a4c:
	.4byte	gCurrentSecondarySprite
.L_76a50:
	.4byte	gUnk_3000C10
