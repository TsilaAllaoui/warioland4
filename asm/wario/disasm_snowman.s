.include "macros.s.inc"


thumb_func_start func_80193F4
func_80193F4:
	push	{lr}
	ldr	r1, .L_19410
	ldr	r0, .L_19414
	ldrb	r0, [r0, #1]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	pop	{r1}
	bx	r1
	.align	2, 0
.L_19410:
	.4byte	sSnowmanWarioPoseTable
.L_19414:
	.4byte	gWarioData


thumb_func_start func_8019418
func_8019418:
	ldr	r2, .L_1944c
	ldr	r3, .L_19450
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_19454
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_19454
	mov	r0, #7
	b	.L_19456
.L_1944c:
	.4byte	gWarioData
.L_19450:
	.4byte	sUnk_833BAE0
.L_19454:
	mov	r0, #255	@ 0xff
.L_19456:
	bx	lr


thumb_func_start func_8019458
func_8019458:
	mov	r0, #255	@ 0xff
	bx	lr


thumb_func_start func_801945C
func_801945C:
	push	{r4, lr}
	ldr	r4, .L_19490
	ldrh	r1, [r4, #28]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_19494
	ldrh	r0, [r4, #20]
	add	r0, #20
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	func_806D4C0
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #17
	and	r1, r0
	cmp	r1, #0
	bne	.L_19494
	ldrh	r0, [r4, #28]
	mov	r1, #48	@ 0x30
	eor	r0, r1
	and	r0, r1
	strh	r0, [r4, #14]
	mov	r0, #10
	b	.L_19538
.L_19490:
	.4byte	gWarioData
.L_19494:
	ldr	r0, .L_194a4
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_194a8
	mov	r0, #4
	b	.L_19538
.L_194a4:
	.4byte	gButtonsPressed
.L_194a8:
	ldr	r0, .L_194c8
	ldr	r1, .L_194cc
	ldrh	r3, [r0, #0]
	ldrh	r2, [r1, #14]
	add	r0, r3, #0
	and	r0, r2
	add	r4, r1, #0
	cmp	r0, #0
	beq	.L_194dc
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_194d0
	mov	r0, #32
	strh	r0, [r4, #22]
	b	.L_194f0
.L_194c8:
	.4byte	gButtonsHeld
.L_194cc:
	.4byte	gWarioData
.L_194d0:
	ldr	r0, .L_194d8
	strh	r0, [r4, #22]
	b	.L_194f0
	.align	2, 0
.L_194d8:
	.4byte	0xFFE0
.L_194dc:
	mov	r0, #48	@ 0x30
	eor	r0, r2
	and	r0, r3
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_194ec
	mov	r0, #9
	b	.L_19538
.L_194ec:
	mov	r0, #8
	b	.L_19538
.L_194f0:
	add	r2, r4, #0
	ldr	r3, .L_19520
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_19536
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bne	.L_19524
	mov	r0, #3
	bl	m4aSongNumStart
	b	.L_19536
.L_19520:
	.4byte	sUnk_833B9E4
.L_19524:
	ldrb	r1, [r4, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_19536
	strb	r0, [r4, #31]
.L_19536:
	mov	r0, #255	@ 0xff
.L_19538:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_801953E
func_801953E:
	.align	2, 0
	ldr	r2, .L_1957c
	ldr	r3, .L_19580
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_19584
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_19584
	strb	r0, [r2, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #4]
	mov	r0, #2
	b	.L_19586
	.align	2, 0
.L_1957c:
	.4byte	gWarioData
.L_19580:
	.4byte	sUnk_833BA2C
.L_19584:
	mov	r0, #255	@ 0xff
.L_19586:
	bx	lr


thumb_func_start func_8019588
func_8019588:
	ldr	r2, .L_195c0
	ldr	r3, .L_195c4
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_195c8
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_195c8
	mov	r0, #1
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_195ca
.L_195c0:
	.4byte	gWarioData
.L_195c4:
	.4byte	sUnk_833BA74
.L_195c8:
	mov	r0, #255	@ 0xff
.L_195ca:
	bx	lr


thumb_func_start func_80195CC
func_80195CC:
	push	{r4, lr}
	ldr	r0, .L_195ec
	ldr	r4, .L_195f0
	ldrh	r2, [r0, #0]
	ldrh	r1, [r4, #14]
	add	r3, r2, #0
	and	r3, r1
	cmp	r3, #0
	beq	.L_19600
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_195f4
	mov	r0, #32
	strh	r0, [r4, #22]
	b	.L_19612
.L_195ec:
	.4byte	gButtonsHeld
.L_195f0:
	.4byte	gWarioData
.L_195f4:
	ldr	r0, .L_195fc
	strh	r0, [r4, #22]
	b	.L_19612
	.align	2, 0
.L_195fc:
	.4byte	0xFFE0
.L_19600:
	mov	r0, #48	@ 0x30
	eor	r1, r0
	add	r0, r1, #0
	and	r0, r2
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_19610
	strh	r1, [r4, #14]
.L_19610:
	strh	r3, [r4, #22]
.L_19612:
	mov	r0, #255	@ 0xff
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_801961A
func_801961A:
	.align	2, 0
	ldr	r0, .L_19628
	ldrb	r0, [r0, #30]
	cmp	r0, #29
	bls	.L_1962c
	mov	r0, #8
	b	.L_19658
.L_19628:
	.4byte	gWarioData
.L_1962c:
	ldr	r2, .L_1965c
	ldr	r3, .L_19660
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r2, #1]
	ldrh	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_19656
	mov	r0, #0
	strb	r0, [r2, #1]
	ldrb	r0, [r2, #2]
	add	r0, #1
	strb	r0, [r2, #2]
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_19656
	strb	r0, [r2, #2]
.L_19656:
	mov	r0, #255	@ 0xff
.L_19658:
	bx	lr
	.align	2, 0
.L_1965c:
	.4byte	gUnk_3001930
.L_19660:
	.4byte	sUnk_82E04C4


thumb_func_start func_8019664
func_8019664:
	ldr	r2, .L_19698
	ldr	r3, .L_1969c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_196a0
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_196a0
	mov	r0, #8
	b	.L_196a2
.L_19698:
	.4byte	gWarioData
.L_1969c:
	.4byte	sUnk_833BB10
.L_196a0:
	mov	r0, #255	@ 0xff
.L_196a2:
	bx	lr


thumb_func_start func_80196A4
func_80196A4:
	push	{r4, lr}
	ldr	r3, .L_196c4
	ldrh	r2, [r3, #28]
	mov	r4, #1
	add	r0, r4, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_196c8
	mov	r1, #48	@ 0x30
	add	r0, r2, #0
	eor	r0, r1
	and	r0, r1
	strh	r0, [r3, #14]
	mov	r0, #10
	b	.L_19704
	.align	2, 0
.L_196c4:
	.4byte	gWarioData
.L_196c8:
	ldr	r0, .L_196d8
	ldrh	r1, [r0, #0]
	add	r0, r4, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_196dc
	mov	r0, #4
	b	.L_19704
.L_196d8:
	.4byte	gButtonsPressed
.L_196dc:
	ldr	r0, .L_196f0
	ldrh	r2, [r0, #0]
	ldrh	r1, [r3, #14]
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_196f4
	mov	r0, #2
	b	.L_19704
	.align	2, 0
.L_196f0:
	.4byte	gButtonsHeld
.L_196f4:
	mov	r0, #48	@ 0x30
	eor	r0, r1
	and	r0, r2
	cmp	r0, #0
	bne	.L_19702
	mov	r0, #255	@ 0xff
	b	.L_19704
.L_19702:
	mov	r0, #9
.L_19704:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_801970A
func_801970A:
	.align	2, 0
	ldr	r2, .L_19740
	ldr	r3, .L_19744
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_19748
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_19748
	mov	r0, #8
	b	.L_1974a
.L_19740:
	.4byte	gWarioData
.L_19744:
	.4byte	sUnk_833BBA0
.L_19748:
	mov	r0, #255	@ 0xff
.L_1974a:
	bx	lr


thumb_func_start func_801974C
func_801974C:
	ldr	r2, .L_1975c
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_19760
	mov	r0, #64	@ 0x40
	b	.L_19762
.L_1975c:
	.4byte	gWarioData
.L_19760:
	ldr	r0, .L_19798
.L_19762:
	strh	r0, [r2, #22]
	ldr	r3, .L_1979c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_197a0
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_197a0
	mov	r0, #12
	b	.L_197a2
	.align	2, 0
.L_19798:
	.4byte	0xFFC0
.L_1979c:
	.4byte	sUnk_833BBC4
.L_197a0:
	mov	r0, #255	@ 0xff
.L_197a2:
	bx	lr


thumb_func_start func_80197A4
func_80197A4:
	ldr	r2, .L_197b4
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_197b8
	mov	r0, #64	@ 0x40
	b	.L_197ba
.L_197b4:
	.4byte	gWarioData
.L_197b8:
	ldr	r0, .L_197f0
.L_197ba:
	strh	r0, [r2, #22]
	ldr	r3, .L_197f4
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_197f8
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_197f8
	mov	r0, #13
	b	.L_197fa
	.align	2, 0
.L_197f0:
	.4byte	0xFFC0
.L_197f4:
	.4byte	sUnk_833BBC4
.L_197f8:
	mov	r0, #255	@ 0xff
.L_197fa:
	bx	lr


thumb_func_start func_80197FC
func_80197FC:
	ldr	r2, .L_1980c
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_19810
	mov	r0, #96	@ 0x60
	b	.L_19812
.L_1980c:
	.4byte	gWarioData
.L_19810:
	ldr	r0, .L_19820
.L_19812:
	strh	r0, [r2, #22]
	ldrb	r0, [r2, #10]
	cmp	r0, #47	@ 0x2f
	bls	.L_19824
	mov	r0, #14
	b	.L_1985a
	.align	2, 0
.L_19820:
	.4byte	0xFFA0
.L_19824:
	add	r0, #1
	strb	r0, [r2, #10]
	ldr	r3, .L_1985c
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r1, [r2, #30]
	ldrb	r0, [r0, #8]
	cmp	r1, r0
	bcc	.L_19858
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_19858
	strb	r0, [r2, #31]
.L_19858:
	mov	r0, #255	@ 0xff
.L_1985a:
	bx	lr
.L_1985c:
	.4byte	sUnk_833BC18


thumb_func_start func_8019860
func_8019860:
	ldr	r2, .L_19870
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_19874
	mov	r0, #96	@ 0x60
	b	.L_19876
.L_19870:
	.4byte	gWarioData
.L_19874:
	ldr	r0, .L_19884
.L_19876:
	strh	r0, [r2, #22]
	ldrb	r0, [r2, #10]
	cmp	r0, #47	@ 0x2f
	bls	.L_19888
	mov	r0, #15
	b	.L_198be
	.align	2, 0
.L_19884:
	.4byte	0xFFA0
.L_19888:
	add	r0, #1
	strb	r0, [r2, #10]
	ldr	r3, .L_198c0
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r1, [r2, #30]
	ldrb	r0, [r0, #8]
	cmp	r1, r0
	bcc	.L_198bc
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_198bc
	strb	r0, [r2, #31]
.L_198bc:
	mov	r0, #255	@ 0xff
.L_198be:
	bx	lr
.L_198c0:
	.4byte	sUnk_833BC18


thumb_func_start func_80198C4
func_80198C4:
	ldr	r2, .L_198d4
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_198d8
	mov	r0, #128	@ 0x80
	b	.L_198da
.L_198d4:
	.4byte	gWarioData
.L_198d8:
	ldr	r0, .L_19910
.L_198da:
	strh	r0, [r2, #22]
	ldr	r3, .L_19914
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1990c
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_1990c
	strb	r0, [r2, #31]
.L_1990c:
	mov	r0, #255	@ 0xff
	bx	lr
.L_19910:
	.4byte	0xFF80
.L_19914:
	.4byte	sUnk_833BC54


thumb_func_start func_8019918
func_8019918:
	ldr	r2, .L_19928
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_1992c
	mov	r0, #128	@ 0x80
	b	.L_1992e
.L_19928:
	.4byte	gWarioData
.L_1992c:
	ldr	r0, .L_19964
.L_1992e:
	strh	r0, [r2, #22]
	ldr	r3, .L_19968
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_19960
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_19960
	strb	r0, [r2, #31]
.L_19960:
	mov	r0, #255	@ 0xff
	bx	lr
.L_19964:
	.4byte	0xFF80
.L_19968:
	.4byte	sUnk_833BC54


thumb_func_start func_801996C
func_801996C:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	bl	ResetWarioState
	cmp	r4, #0
	bne	.L_19998
	ldr	r0, .L_19994
	ldrb	r0, [r0, #26]
	cmp	r0, #2
	bne	.L_19984
	mov	r4, #1
.L_19984:
	mov	r0, #175	@ 0xaf
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	mov	r0, #4
	bl	VoiceSetPlay
	b	.L_199b0
.L_19994:
	.4byte	gWarioDataCopy
.L_19998:
	cmp	r4, #253	@ 0xfd
	bne	.L_199b0
	ldr	r1, .L_199c4
	ldr	r0, .L_199c8
	ldrb	r0, [r0, #1]
	lsl	r0, r0, #3
	add	r1, #7
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	beq	.L_199b0
	b	.L_19ac2
.L_199b0:
	cmp	r4, #10
	beq	.L_19a88
	cmp	r4, #10
	bgt	.L_199cc
	cmp	r4, #3
	beq	.L_19a6c
	cmp	r4, #9
	bne	.L_199c2
	b	.L_19aa4
.L_199c2:
	b	.L_19aaa
.L_199c4:
	.4byte	sUnk_82DDA90
.L_199c8:
	.4byte	gWarioDataCopy
.L_199cc:
	cmp	r4, #253	@ 0xfd
	beq	.L_19a14
	cmp	r4, #254	@ 0xfe
	bne	.L_19aaa
	ldr	r2, .L_199e4
	ldrb	r0, [r2, #1]
	cmp	r0, #0
	bne	.L_199ec
	ldr	r1, .L_199e8
	mov	r0, #1
	strb	r0, [r1, #1]
	b	.L_19aae
.L_199e4:
	.4byte	gWarioDataCopy
.L_199e8:
	.4byte	gWarioData
.L_199ec:
	cmp	r0, #9
	bls	.L_199fc
	ldr	r0, .L_199f8
	ldrb	r1, [r0, #1]
	add	r1, #1
	b	.L_19a5e
.L_199f8:
	.4byte	gWarioData
.L_199fc:
	ldr	r1, .L_19a10
	mov	r0, #5
	strb	r0, [r1, #1]
	ldrb	r0, [r2, #8]
	cmp	r0, #0
	beq	.L_19aae
	mov	r0, #96	@ 0x60
	strh	r0, [r1, #24]
	b	.L_19aae
	.align	2, 0
.L_19a10:
	.4byte	gWarioData
.L_19a14:
	ldr	r2, .L_19a24
	ldrb	r0, [r2, #1]
	cmp	r0, #1
	bne	.L_19a2c
	ldr	r1, .L_19a28
	mov	r0, #7
	strb	r0, [r1, #1]
	b	.L_19aae
.L_19a24:
	.4byte	gWarioDataCopy
.L_19a28:
	.4byte	gWarioData
.L_19a2c:
	cmp	r0, #5
	bne	.L_19a54
	ldr	r1, .L_19a4c
	mov	r0, #6
	strb	r0, [r1, #1]
	ldr	r1, .L_19a50
	mov	r0, #4
	strb	r0, [r1, #0]
	mov	r0, #64	@ 0x40
	mov	r1, #0
	bl	ScreenShakeRequestY
	mov	r0, #24
	bl	m4aSongNumStart
	b	.L_19aae
.L_19a4c:
	.4byte	gWarioData
.L_19a50:
	.4byte	gUnk_3001930
.L_19a54:
	cmp	r0, #9
	bls	.L_19aae
	ldr	r0, .L_19a68
	ldrb	r1, [r0, #1]
	sub	r1, #1
.L_19a5e:
	strb	r1, [r0, #1]
	ldrh	r1, [r2, #22]
	strh	r1, [r0, #22]
	b	.L_19aae
	.align	2, 0
.L_19a68:
	.4byte	gWarioData
.L_19a6c:
	ldr	r0, .L_19a80
	strb	r4, [r0, #1]
	ldr	r0, .L_19a84
	bl	m4aSongNumStart
	mov	r0, #0
	bl	VoiceSetPlay
	b	.L_19aae
	.align	2, 0
.L_19a80:
	.4byte	gWarioData
.L_19a84:
	.4byte	0x15F
.L_19a88:
	ldr	r0, .L_19a9c
	strb	r4, [r0, #1]
	ldr	r0, .L_19aa0
	ldrb	r0, [r0, #1]
	cmp	r0, #9
	bhi	.L_19aae
	mov	r0, #45	@ 0x2d
	bl	m4aSongNumStart
	b	.L_19aae
.L_19a9c:
	.4byte	gWarioData
.L_19aa0:
	.4byte	gWarioDataCopy
.L_19aa4:
	ldr	r1, .L_19ac8
	mov	r0, #1
	strb	r0, [r1, #3]
.L_19aaa:
	ldr	r0, .L_19ac8
	strb	r4, [r0, #1]
.L_19aae:
	ldr	r1, .L_19ac8
	ldrb	r0, [r1, #1]
	sub	r0, #12
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_19ac2
	ldr	r0, .L_19acc
	ldrb	r0, [r0, #10]
	strb	r0, [r1, #10]
.L_19ac2:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_19ac8:
	.4byte	gWarioData
.L_19acc:
	.4byte	gWarioDataCopy


thumb_func_start func_8019AD0
func_8019AD0:
	push	{r4, lr}
	ldr	r3, .L_19b38
	ldr	r2, .L_19b3c
	ldr	r4, .L_19b40
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r1, r2, #1
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #8]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r1, r2, #2
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #9]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r2, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #10]
	bl	UpdateWarioHorizontalCollisionOffset
	mov	r2, #0
	ldrb	r0, [r4, #26]
	cmp	r0, #2
	bne	.L_19b16
	ldrh	r1, [r4, #24]
	lsl	r0, r1, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	sub	r1, #8
	strh	r1, [r4, #24]
.L_19b16:
	mov	r1, #24
	ldrsh	r0, [r4, r1]
	mov	r1, #128	@ 0x80
	neg	r1, r1
	cmp	r0, r1
	bge	.L_19b24
	strh	r1, [r4, #24]
.L_19b24:
	ldrh	r0, [r4, #20]
	sub	r0, r0, r2
	strh	r0, [r4, #20]
	ldrb	r0, [r4, #26]
	cmp	r0, #0
	bne	.L_19b44
	bl	GetAdjustedWarioXVelocity
	b	.L_19b46
	.align	2, 0
.L_19b38:
	.4byte	gUnk_3001918
.L_19b3c:
	.4byte	sUnk_82DDA90
.L_19b40:
	.4byte	gWarioData
.L_19b44:
	ldrh	r0, [r4, #22]
.L_19b46:
	lsl	r0, r0, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	ldr	r1, .L_19b5c
	ldrh	r0, [r1, #18]
	add	r0, r0, r2
	strh	r0, [r1, #18]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_19b5c:
	.4byte	gWarioData


thumb_func_start func_8019B60
func_8019B60:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	ldr	r4, .L_19bb8
	ldr	r2, .L_19bbc
	ldr	r3, .L_19bc0
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #4
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #11]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #5
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #12]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #6
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #13]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r2, #7
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #17]
	mov	r1, #24
	ldrsh	r0, [r3, r1]
	cmp	r0, #47	@ 0x2f
	bgt	.L_19ba6
	mov	r0, #0
	strb	r0, [r4, #12]
.L_19ba6:
	mov	r5, #255	@ 0xff
	ldrh	r1, [r4, #2]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_19bc4
	bl	func_8014C4C
	b	.L_19bf4
.L_19bb8:
	.4byte	gUnk_3001918
.L_19bbc:
	.4byte	sUnk_82DDA90
.L_19bc0:
	.4byte	gWarioData
.L_19bc4:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_19bd2
	bl	func_8014930
	b	.L_19bf4
.L_19bd2:
	ldrh	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_19bea
	ldrb	r0, [r4, #17]
	cmp	r0, #2
	bne	.L_19be4
	bl	func_8014930
	b	.L_19bf4
.L_19be4:
	bl	func_80143D8
	b	.L_19bf4
.L_19bea:
	ldrb	r0, [r4, #17]
	cmp	r0, #0
	bne	.L_19bf8
	bl	func_8014758
.L_19bf4:
	lsl	r0, r0, #24
	lsr	r5, r0, #24
.L_19bf8:
	ldr	r4, .L_19c20
	ldrh	r0, [r4, #20]
	sub	r0, #48	@ 0x30
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	func_806DAC0
	add	r1, r0, #0
	mov	r0, #255	@ 0xff
	and	r1, r0
	cmp	r1, #1
	bne	.L_19c24
	strb	r1, [r4, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r4, #4]
	mov	r0, #0
	bl	func_8016614
	b	.L_19c6e
.L_19c20:
	.4byte	gWarioData
.L_19c24:
	ldr	r0, .L_19c3c
	ldrb	r1, [r0, #17]
	add	r6, r0, #0
	cmp	r1, #255	@ 0xff
	beq	.L_19c6e
	ldrb	r0, [r4, #1]
	cmp	r0, #9
	bls	.L_19c40
	cmp	r5, #252	@ 0xfc
	bne	.L_19c40
	mov	r5, #3
	b	.L_19c64
.L_19c3c:
	.4byte	gUnk_3001918
.L_19c40:
	ldr	r1, .L_19c78
	ldrb	r0, [r1, #1]
	cmp	r0, #5
	bne	.L_19c64
	cmp	r5, #253	@ 0xfd
	bne	.L_19c64
	ldrb	r0, [r6, #8]
	ldrh	r1, [r1, #20]
	add	r1, #1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r2, sp
	bl	func_8014268
	ldrb	r6, [r6, #16]
	cmp	r0, r6
	bgt	.L_19c64
	mov	r5, #255	@ 0xff
.L_19c64:
	cmp	r5, #255	@ 0xff
	beq	.L_19c6e
	add	r0, r5, #0
	bl	func_801996C
.L_19c6e:
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_19c78:
	.4byte	gWarioData


thumb_func_start func_8019C7C
func_8019C7C:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r4, r4, #24
	lsr	r4, r4, #24
	bl	UpdateWarioPositionHistory
	ldr	r1, .L_19ce0
	lsl	r4, r4, #2
	ldr	r2, .L_19ce4
	ldrb	r0, [r2, #1]
	lsl	r0, r0, #3
	add	r4, r4, r0
	add	r4, r4, r1
	ldr	r3, [r4, #0]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r3, r3, r0
	ldr	r1, [r3, #0]
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	strh	r0, [r2, #40]	@ 0x28
	add	r1, #1
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	strh	r0, [r2, #48]	@ 0x30
	add	r1, #1
	str	r1, [r2, #36]	@ 0x24
	ldrh	r0, [r2, #40]	@ 0x28
	add	r1, r1, r0
	str	r1, [r2, #44]	@ 0x2c
	ldr	r0, [r3, #4]
	str	r0, [r2, #32]
	ldr	r1, .L_19ce8
	mov	r0, #96	@ 0x60
	strh	r0, [r1, #0]
	ldr	r0, .L_19cec
	mov	r1, #0
	mov	r2, #16
	bl	CopyWarioPalette
	ldr	r0, .L_19cf0
	mov	r1, #16
	mov	r2, #32
	bl	CopyWarioPalette
	pop	{r4}
	pop	{r0}
	bx	r0
.L_19ce0:
	.4byte	sUnk_82DDA10
.L_19ce4:
	.4byte	gWarioData
.L_19ce8:
	.4byte	gWarioPaletteSize
.L_19cec:
	.4byte	sUnk_82DDDA0
.L_19cf0:
	.4byte	sUnk_82DE878


thumb_func_start func_8019CF4
func_8019CF4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, .L_19d6c
	mov	r0, #0
	ldrsb	r0, [r7, r0]
	cmp	r0, #10
	beq	.L_19d60
	ldr	r4, .L_19d70
	ldr	r6, [r4, #0]
	add	r0, r6, #0
	mov	r1, #180	@ 0xb4
	bl	m4aMPlayTempoControl
	ldr	r4, [r4, #12]
	mov	r8, r4
	mov	r0, r8
	mov	r1, #180	@ 0xb4
	bl	m4aMPlayTempoControl
	ldr	r4, .L_19d74
	ldr	r5, .L_19d78
	add	r0, r6, #0
	add	r1, r4, #0
	add	r2, r5, #0
	bl	m4aMPlayPitchControl
	mov	r0, r8
	add	r1, r4, #0
	add	r2, r5, #0
	bl	m4aMPlayPitchControl
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayModDepthSet
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayModDepthSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayLFOSpeedSet
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayLFOSpeedSet
	mov	r0, #10
	strb	r0, [r7, #0]
.L_19d60:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_19d6c:
	.4byte	gUnk_30031BC
.L_19d70:
	.4byte	gMPlayTable
.L_19d74:
	.4byte	0xFFFF
.L_19d78:
	.4byte	0xFFFFFE0C


thumb_func_start func_8019D7C
func_8019D7C:
	push	{r4, lr}
	ldr	r3, .L_19dc0
	ldr	r4, .L_19dc4
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #0]
	ldr	r2, .L_19dc8
	lsl	r1, r1, #3
	add	r0, r1, r2
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #50]	@ 0x32
	add	r0, r2, #2
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #52]	@ 0x34
	add	r0, r2, #4
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #54]	@ 0x36
	add	r2, #6
	add	r1, r1, r2
	ldrh	r0, [r1, #0]
	strh	r0, [r4, #56]	@ 0x38
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r3, #7
	add	r0, r0, r3
	ldrb	r0, [r0, #0]
	add	r1, r0, #0
	cmp	r0, #2
	bne	.L_19dcc
	strb	r0, [r4, #26]
	b	.L_19dd4
.L_19dc0:
	.4byte	sUnk_82DDA90
.L_19dc4:
	.4byte	gWarioData
.L_19dc8:
	.4byte	sUnk_82DEB18
.L_19dcc:
	ldrb	r0, [r4, #26]
	cmp	r0, #1
	beq	.L_19dd4
	strb	r1, [r4, #26]
.L_19dd4:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
