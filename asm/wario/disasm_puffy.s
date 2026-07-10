.include "macros.s.inc"


thumb_func_start func_801A508
func_801A508:
	push	{lr}
	ldr	r1, .L_1a524
	ldr	r0, .L_1a528
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
.L_1a524:
	.4byte	sPuffyWarioPoseTable
.L_1a528:
	.4byte	gWarioData


thumb_func_start func_801A52C
func_801A52C:
	ldr	r2, .L_1a574
	ldrb	r0, [r2, #31]
	sub	r0, #2
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_1a540
	ldrh	r0, [r2, #20]
	sub	r0, #8
	strh	r0, [r2, #20]
.L_1a540:
	ldr	r3, .L_1a578
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1a57c
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
	bne	.L_1a57c
	mov	r0, #1
	b	.L_1a57e
	.align	2, 0
.L_1a574:
	.4byte	gWarioData
.L_1a578:
	.4byte	sUnk_83314A0
.L_1a57c:
	mov	r0, #255	@ 0xff
.L_1a57e:
	bx	lr


thumb_func_start func_801A580
func_801A580:
	push	{lr}
	ldr	r0, .L_1a594
	ldrh	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_1a598
	mov	r0, #2
	b	.L_1a616
	.align	2, 0
.L_1a594:
	.4byte	gButtonsPressed
.L_1a598:
	ldr	r0, .L_1a5b8
	ldr	r3, .L_1a5bc
	ldrh	r2, [r0, #0]
	ldrh	r1, [r3, #14]
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_1a5cc
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_1a5c0
	mov	r0, #32
	strh	r0, [r3, #22]
	b	.L_1a5e2
	.align	2, 0
.L_1a5b8:
	.4byte	gButtonsHeld
.L_1a5bc:
	.4byte	gWarioData
.L_1a5c0:
	ldr	r0, .L_1a5c8
	strh	r0, [r3, #22]
	b	.L_1a5e2
	.align	2, 0
.L_1a5c8:
	.4byte	0xFFE0
.L_1a5cc:
	mov	r0, #48	@ 0x30
	eor	r1, r0
	add	r0, r1, #0
	and	r0, r2
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_1a5e2
	strh	r1, [r3, #14]
	ldr	r0, .L_1a61c
	bl	m4aSongNumStart
.L_1a5e2:
	ldr	r2, .L_1a620
	ldr	r3, .L_1a624
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1a614
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
	bne	.L_1a614
	strb	r0, [r2, #31]
.L_1a614:
	mov	r0, #255	@ 0xff
.L_1a616:
	pop	{r1}
	bx	r1
	.align	2, 0
.L_1a61c:
	.4byte	0x169
.L_1a620:
	.4byte	gWarioData
.L_1a624:
	.4byte	sUnk_833150C


thumb_func_start func_801A628
func_801A628:
	ldr	r0, .L_1a644
	ldrh	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_1a63e
	ldr	r2, .L_1a648
	mov	r1, #24
	ldrsh	r0, [r2, r1]
	cmp	r0, #24
	bgt	.L_1a64c
.L_1a63e:
	mov	r0, #1
	b	.L_1a67e
	.align	2, 0
.L_1a644:
	.4byte	gButtonsHeld
.L_1a648:
	.4byte	gWarioData
.L_1a64c:
	ldr	r3, .L_1a680
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1a67c
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
	bne	.L_1a67c
	strb	r0, [r2, #31]
.L_1a67c:
	mov	r0, #255	@ 0xff
.L_1a67e:
	bx	lr
.L_1a680:
	.4byte	sUnk_833189C


thumb_func_start func_801A684
func_801A684:
	ldr	r2, .L_1a6cc
	ldr	r3, .L_1a6d0
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1a6da
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #3
	beq	.L_1a6d4
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_1a6da
	strb	r0, [r2, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #4]
	ldrh	r0, [r2, #20]
	add	r0, #64	@ 0x40
	strh	r0, [r2, #20]
	mov	r0, #2
	b	.L_1a6dc
.L_1a6cc:
	.4byte	gWarioData
.L_1a6d0:
	.4byte	sUnk_8331548
.L_1a6d4:
	ldrh	r0, [r2, #20]
	sub	r0, #16
	strh	r0, [r2, #20]
.L_1a6da:
	mov	r0, #255	@ 0xff
.L_1a6dc:
	bx	lr
	.align	2, 0


thumb_func_start func_801A6E0
func_801A6E0:
	push	{r4, r5, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	add	r5, r4, #0
	add	r0, r4, #3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bls	.L_1a738
	bl	func_8010230
	ldr	r1, .L_1a708
	strb	r4, [r1, #1]
	cmp	r4, #1
	beq	.L_1a720
	cmp	r4, #1
	bgt	.L_1a70c
	cmp	r4, #0
	beq	.L_1a716
	b	.L_1a738
.L_1a708:
	.4byte	gWarioData
.L_1a70c:
	cmp	r5, #2
	beq	.L_1a726
	cmp	r5, #3
	beq	.L_1a732
	b	.L_1a738
.L_1a716:
	mov	r0, #180	@ 0xb4
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_1a738
.L_1a720:
	mov	r0, #24
	strh	r0, [r1, #24]
	b	.L_1a738
.L_1a726:
	mov	r0, #108	@ 0x6c
	strh	r0, [r1, #24]
	add	r0, #254	@ 0xfe
	bl	m4aSongNumStart
	b	.L_1a738
.L_1a732:
	ldr	r0, .L_1a740
	bl	m4aSongNumStart
.L_1a738:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1a740:
	.4byte	0x16B


thumb_func_start func_801A744
func_801A744:
	push	{r4, lr}
	ldr	r3, .L_1a7a0
.L_1a748:
	ldr	r2, .L_1a7a4
	ldr	r4, .L_1a7a8
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
	ldrh	r1, [r4, #24]
	lsl	r0, r1, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	ldrb	r0, [r4, #1]
	cmp	r0, #2
	bne	.L_1a784
	sub	r0, r1, #4
	strh	r0, [r4, #24]
.L_1a784:
	ldrh	r0, [r4, #20]
	sub	r0, r0, r2
	strh	r0, [r4, #20]
	ldrh	r0, [r4, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	add	r0, r0, r1
	strh	r0, [r4, #18]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_1a7a0:
	.4byte	gWarioCollisionData
.L_1a7a4:
	.4byte	sUnk_82DDBD0
.L_1a7a8:
	.4byte	gWarioData


thumb_func_start func_801A7AC
func_801A7AC:
	push	{r4, r5, lr}
	ldr	r5, .L_1a800
	ldr	r2, .L_1a804
	ldr	r4, .L_1a808
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r1, r2, #4
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r5, #11]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r1, r2, #5
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r5, #12]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r1, r2, #6
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r5, #13]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r2, #7
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r5, #17]
	bl	func_8014C4C
	ldrb	r0, [r4, #1]
	cmp	r0, #3
	beq	.L_1a7fa
	ldrb	r0, [r5, #19]
	cmp	r0, #0
	beq	.L_1a7fa
	mov	r0, #3
	bl	func_801A6E0
.L_1a7fa:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_1a800:
	.4byte	gWarioCollisionData
.L_1a804:
	.4byte	sUnk_82DDBD0
.L_1a808:
	.4byte	gWarioData


thumb_func_start func_801A80C
func_801A80C:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r4, r4, #24
	lsr	r4, r4, #24
	bl	func_800FF64
	ldr	r1, .L_1a868
	lsl	r4, r4, #2
	ldr	r2, .L_1a86c
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
	ldr	r1, .L_1a870
	mov	r0, #32
	strh	r0, [r1, #0]
	ldr	r0, .L_1a874
	mov	r1, #0
	mov	r2, #16
	bl	func_800FD90
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1a868:
	.4byte	sUnk_82DDBB0
.L_1a86c:
	.4byte	gWarioData
.L_1a870:
	.4byte	gWarioPaletteSize
.L_1a874:
	.4byte	sUnk_82DE918


thumb_func_start func_801A878
func_801A878:
	push	{r4, r5, r6, r7, lr}
	ldr	r7, .L_1a8e4
	mov	r0, #0
	ldrsb	r0, [r7, r0]
	cmp	r0, #12
	beq	.L_1a8dc
	ldr	r4, .L_1a8e8
	ldr	r5, [r4, #0]
	add	r0, r5, #0
	mov	r1, #200	@ 0xc8
	bl	m4aMPlayTempoControl
	ldr	r6, [r4, #12]
	add	r0, r6, #0
	mov	r1, #200	@ 0xc8
	bl	m4aMPlayTempoControl
	ldr	r4, .L_1a8ec
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, #200	@ 0xc8
	bl	m4aMPlayPitchControl
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #200	@ 0xc8
	bl	m4aMPlayPitchControl
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, #10
	bl	m4aMPlayModDepthSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #10
	bl	m4aMPlayModDepthSet
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayLFOSpeedSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayLFOSpeedSet
	mov	r0, #12
	strb	r0, [r7, #0]
.L_1a8dc:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1a8e4:
	.4byte	gUnk_30031BC
.L_1a8e8:
	.4byte	gMPlayTable
.L_1a8ec:
	.4byte	0xFFFF


thumb_func_start func_801A8F0
func_801A8F0:
	push	{r4, lr}
	ldr	r4, .L_1a934
	ldr	r3, .L_1a938
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r1, [r0, #0]
	ldr	r2, .L_1a93c
	lsl	r1, r1, #3
	add	r0, r1, r2
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #50]	@ 0x32
	add	r0, r2, #2
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #52]	@ 0x34
	add	r0, r2, #4
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #54]	@ 0x36
	add	r2, #6
	add	r1, r1, r2
	ldrh	r0, [r1, #0]
	strh	r0, [r3, #56]	@ 0x38
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r4, #7
	add	r0, r0, r4
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #26]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1a934:
	.4byte	sUnk_82DDBD0
.L_1a938:
	.4byte	gWarioData
.L_1a93c:
	.4byte	sWarioHitboxes
