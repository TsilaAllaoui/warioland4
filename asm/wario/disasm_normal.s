.include "macros.s.inc"


thumb_func_start func_80104A4
func_80104A4:
	push	{lr}
	mov	r3, #255	@ 0xff
	ldr	r2, .L_104d0
	ldrb	r1, [r2, #2]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_1052c
	ldrb	r0, [r2, #0]
	cmp	r0, #44	@ 0x2c
	bls	.L_1052c
	ldr	r1, .L_104d4
	ldrb	r0, [r1, #1]
	sub	r0, #29
	add	r2, r1, #0
	cmp	r0, #16
	bhi	.L_10524
	lsl	r0, r0, #2
	ldr	r1, .L_104d8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_104d0:
	.4byte	gScreenShakeY
.L_104d4:
	.4byte	gWarioData
.L_104d8:
	.4byte	.L_104dc
.L_104dc:
	.4byte	.L_1052c
	.4byte	.L_1052c
	.4byte	.L_10524
	.4byte	.L_10524
	.4byte	.L_10524
	.4byte	.L_10524
	.4byte	.L_10524
	.4byte	.L_10524
	.4byte	.L_10524
	.4byte	.L_10524
	.4byte	.L_10524
	.4byte	.L_10520
	.4byte	.L_10520
	.4byte	.L_10524
	.4byte	.L_10520
	.4byte	.L_10520
	.4byte	.L_10520
.L_10520:
	mov	r3, #48	@ 0x30
	b	.L_1052c
.L_10524:
	ldrb	r0, [r2, #26]
	cmp	r0, #1
	bhi	.L_1052c
	mov	r3, #47	@ 0x2f
.L_1052c:
	cmp	r3, #255	@ 0xff
	bne	.L_10544
	ldr	r1, .L_1054c
	ldr	r0, .L_10550
	ldrb	r0, [r0, #1]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	lsl	r0, r0, #24
	lsr	r3, r0, #24
.L_10544:
	add	r0, r3, #0
	pop	{r1}
	bx	r1
	.align	2, 0
.L_1054c:
	.4byte	sWarioNormalPoseTable
.L_10550:
	.4byte	gWarioData


thumb_func_start func_8010554
func_8010554:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_10574
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	ldr	r6, .L_10578
	cmp	r0, #0
	bne	.L_1056a
	ldrb	r0, [r6, #7]
	cmp	r0, #0
	beq	.L_1057c
.L_1056a:
	mov	r0, #1
	strb	r0, [r6, #8]
	mov	r0, #254	@ 0xfe
	b	.L_107de
	.align	2, 0
.L_10574:
	.4byte	gButtonsPressed
.L_10578:
	.4byte	gWarioData
.L_1057c:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_10598
	ldr	r0, .L_10590
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_10594
	mov	r0, #34	@ 0x22
	b	.L_107de
.L_10590:
	.4byte	gCurrentCarriedSprite
.L_10594:
	mov	r0, #22
	b	.L_107de
.L_10598:
	ldr	r0, .L_105a8
	ldrh	r1, [r0, #0]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_105ac
	mov	r0, #5
	b	.L_107de
.L_105a8:
	.4byte	gButtonsHeld
.L_105ac:
	ldrh	r0, [r6, #20]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r6, #18]
	sub	r1, #30
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	GetBackgroundCollisionAtPosition
	add	r4, r0, #0
	asr	r4, r4, #16
	mov	r5, #255	@ 0xff
	and	r4, r5
	ldrh	r0, [r6, #20]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r6, #18]
	add	r1, #30
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	GetBackgroundCollisionAtPosition
	asr	r0, r0, #16
	and	r0, r5
	cmp	r4, #11
	beq	.L_105e8
	cmp	r0, #11
	bne	.L_105ec
.L_105e8:
	mov	r4, #1
	b	.L_105ee
.L_105ec:
	mov	r4, #6
.L_105ee:
	ldr	r0, .L_10618
	ldr	r1, .L_1061c
	ldrh	r3, [r0, #0]
	ldrh	r2, [r1, #14]
	add	r0, r3, #0
	and	r0, r2
	add	r6, r1, #0
	cmp	r0, #0
	bne	.L_10602
	b	.L_10710
.L_10602:
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_10682
	ldrh	r1, [r6, #22]
	mov	r0, #22
	ldrsh	r2, [r6, r0]
	cmp	r2, #19
	bgt	.L_10620
	add	r0, r1, r4
	b	.L_10692
.L_10618:
	.4byte	gButtonsHeld
.L_1061c:
	.4byte	gWarioData
.L_10620:
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #2
	and	r0, r3
	ldr	r3, .L_1063c
	cmp	r0, #0
	beq	.L_10654
	ldrb	r0, [r3, #0]
	cmp	r0, #0
	bne	.L_10654
	cmp	r2, #63	@ 0x3f
	bgt	.L_10640
	add	r0, r1, #6
	strh	r0, [r6, #22]
	b	.L_1073c
.L_1063c:
	.4byte	gCurrentCarriedSprite
.L_10640:
	add	r0, r1, #2
	strh	r0, [r6, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #127	@ 0x7f
	ble	.L_1073c
	mov	r0, #128	@ 0x80
	strh	r0, [r6, #22]
	mov	r0, #23
	b	.L_107de
.L_10654:
	ldrh	r0, [r6, #22]
	mov	r2, #22
	ldrsh	r1, [r6, r2]
	cmp	r1, #63	@ 0x3f
	bgt	.L_1066c
	add	r0, #6
	strh	r0, [r6, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #64	@ 0x40
	ble	.L_1073c
	b	.L_1067c
.L_1066c:
	cmp	r1, #64	@ 0x40
	ble	.L_1073c
	sub	r0, #6
	strh	r0, [r6, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #63	@ 0x3f
	bgt	.L_1073c
.L_1067c:
	mov	r0, #64	@ 0x40
	strh	r0, [r6, #22]
	b	.L_1073c
.L_10682:
	ldrh	r1, [r6, #22]
	mov	r0, #22
	ldrsh	r2, [r6, r0]
	mov	r0, #20
	neg	r0, r0
	cmp	r2, r0
	ble	.L_1069c
	sub	r0, r1, r4
.L_10692:
	strh	r0, [r6, #22]
	ldr	r3, .L_10698
	b	.L_1073c
.L_10698:
	.4byte	gCurrentCarriedSprite
.L_1069c:
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #2
	and	r0, r3
	ldr	r3, .L_106bc
	cmp	r0, #0
	beq	.L_106d6
	ldrb	r0, [r3, #0]
	cmp	r0, #0
	bne	.L_106d6
	mov	r0, #64	@ 0x40
	neg	r0, r0
	cmp	r2, r0
	ble	.L_106c0
	sub	r0, r1, #6
	strh	r0, [r6, #22]
	b	.L_1073c
.L_106bc:
	.4byte	gCurrentCarriedSprite
.L_106c0:
	sub	r0, r1, #2
	strh	r0, [r6, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	r1, #128	@ 0x80
	neg	r1, r1
	cmp	r0, r1
	bgt	.L_1073c
	strh	r1, [r6, #22]
	mov	r0, #23
	b	.L_107de
.L_106d6:
	ldrh	r0, [r6, #22]
	mov	r2, #22
	ldrsh	r1, [r6, r2]
	mov	r2, #64	@ 0x40
	neg	r2, r2
	cmp	r1, r2
	ble	.L_106fc
	sub	r0, #6
	strh	r0, [r6, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, r2
	bge	.L_1073c
	ldr	r0, .L_106f8
	strh	r0, [r6, #22]
	b	.L_1073c
	.align	2, 0
.L_106f8:
	.4byte	0xFFC0
.L_106fc:
	cmp	r1, r2
	bge	.L_1073c
	add	r0, #6
	strh	r0, [r6, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, r2
	ble	.L_1073c
	strh	r2, [r6, #22]
	b	.L_1073c
.L_10710:
	ldrh	r0, [r6, #22]
	add	r0, #96	@ 0x60
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #192	@ 0xc0
	bls	.L_10720
	mov	r0, #11
	b	.L_107de
.L_10720:
	mov	r0, #48	@ 0x30
	eor	r0, r2
	and	r0, r3
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_10730
	mov	r0, #1
	b	.L_107de
.L_10730:
	cmp	r4, #1
	bne	.L_10738
	mov	r0, #10
	b	.L_107de
.L_10738:
	mov	r0, #2
	b	.L_107de
.L_1073c:
	ldrb	r1, [r3, #1]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #1
	bls	.L_1078c
	ldr	r2, .L_10788
	ldrb	r0, [r6, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldrb	r0, [r6, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_107dc
	mov	r0, #0
	strb	r0, [r6, #30]
	ldrb	r0, [r6, #31]
	add	r0, #1
	strb	r0, [r6, #31]
	ldrb	r1, [r6, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	beq	.L_107ba
	add	r0, r1, #0
	cmp	r0, #2
	beq	.L_1077e
	cmp	r0, #9
	bne	.L_107dc
.L_1077e:
	mov	r0, #1
	bl	m4aSongNumStart
	b	.L_107dc
	.align	2, 0
.L_10788:
	.4byte	sUnk_8307048
.L_1078c:
	ldr	r2, .L_107c4
	ldrb	r0, [r6, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldrb	r0, [r6, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_107dc
	mov	r0, #0
	strb	r0, [r6, #30]
	ldrb	r0, [r6, #31]
	add	r0, #1
	strb	r0, [r6, #31]
	ldrb	r1, [r6, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_107cc
.L_107ba:
	strb	r0, [r6, #31]
	ldr	r1, .L_107c8
	mov	r0, #5
	strb	r0, [r1, #0]
	b	.L_107dc
.L_107c4:
	.4byte	sUnk_82F1200
.L_107c8:
	.4byte	gWarioDustEffect1
.L_107cc:
	add	r0, r1, #0
	cmp	r0, #2
	beq	.L_107d6
	cmp	r0, #9
	bne	.L_107dc
.L_107d6:
	mov	r0, #1
	bl	m4aSongNumStart
.L_107dc:
	mov	r0, #255	@ 0xff
.L_107de:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_80107E4
func_80107E4:
	ldr	r0, .L_107fc
	ldrb	r1, [r0, #1]
	add	r3, r0, #0
	cmp	r1, #1
	bne	.L_10820
	ldr	r0, .L_10800
	ldrh	r2, [r0, #0]
	and	r1, r2
	cmp	r1, #0
	beq	.L_10804
	mov	r0, #3
	b	.L_10862
.L_107fc:
	.4byte	gWarioData
.L_10800:
	.4byte	gButtonsPressed
.L_10804:
	mov	r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_10820
	ldr	r0, .L_10818
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_1081c
	mov	r0, #34	@ 0x22
	b	.L_10862
.L_10818:
	.4byte	gCurrentCarriedSprite
.L_1081c:
	mov	r0, #22
	b	.L_10862
.L_10820:
	ldr	r2, .L_10858
	ldrb	r0, [r3, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldrb	r0, [r3, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_10860
	mov	r0, #0
	strb	r0, [r3, #30]
	ldrb	r0, [r3, #31]
	add	r0, #1
	strb	r0, [r3, #31]
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_10860
	ldrb	r0, [r3, #1]
	cmp	r0, #1
	bne	.L_1085c
	mov	r0, #2
	b	.L_10862
.L_10858:
	.4byte	sUnk_82F1BC8
.L_1085c:
	mov	r0, #64	@ 0x40
	b	.L_10862
.L_10860:
	mov	r0, #255	@ 0xff
.L_10862:
	bx	lr


thumb_func_start func_8010864
func_8010864:
	push	{r4, r5, lr}
	ldr	r0, .L_10880
	ldrh	r1, [r0, #0]
	mov	r5, #1
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_1087c
	ldr	r4, .L_10884
	ldrb	r0, [r4, #7]
	cmp	r0, #0
	beq	.L_10888
.L_1087c:
	mov	r0, #3
	b	.L_10a30
.L_10880:
	.4byte	gButtonsPressed
.L_10884:
	.4byte	gWarioData
.L_10888:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_108a4
	ldr	r0, .L_1089c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_108a0
	mov	r0, #34	@ 0x22
	b	.L_10a30
.L_1089c:
	.4byte	gCurrentCarriedSprite
.L_108a0:
	mov	r0, #22
	b	.L_10a30
.L_108a4:
	ldr	r0, .L_108e0
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_10936
	ldr	r0, .L_108e4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_108e8
	ldrh	r0, [r4, #20]
	ldrh	r1, [r4, #18]
	bl	GetBackgroundCollisionAtPosition
	asr	r1, r0, #16
	cmp	r1, #1
	bne	.L_108e8
	ldrh	r0, [r4, #20]
	sub	r0, #119	@ 0x77
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	GetBackgroundCollisionAtPosition
	asr	r1, r0, #16
	cmp	r1, #1
	bne	.L_108e8
	mov	r0, #49	@ 0x31
	b	.L_10a30
	.align	2, 0
.L_108e0:
	.4byte	gButtonsHeld
.L_108e4:
	.4byte	gUnk_30031BE
.L_108e8:
	ldr	r0, .L_10918
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_10932
	ldr	r4, .L_1091c
	ldrh	r0, [r4, #20]
	sub	r0, #119	@ 0x77
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	GetBackgroundCollisionAtPosition
	asr	r1, r0, #16
	sub	r0, r1, #2
	cmp	r0, #1
	bhi	.L_10924
	ldrh	r0, [r4, #18]
	ldr	r1, .L_10920
	and	r1, r0
	add	r1, #32
	strh	r1, [r4, #18]
	ldrh	r0, [r4, #20]
	sub	r0, #4
	b	.L_10992
.L_10918:
	.4byte	gCurrentCarriedSprite
.L_1091c:
	.4byte	gWarioData
.L_10920:
	.4byte	0xFFC0
.L_10924:
	cmp	r1, #4
	bne	.L_10932
	ldrh	r0, [r4, #20]
	sub	r0, #4
	strh	r0, [r4, #20]
	mov	r0, #43	@ 0x2b
	b	.L_10a30
.L_10932:
	mov	r0, #51	@ 0x33
	b	.L_10a30
.L_10936:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_109a0
	ldrh	r0, [r4, #20]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	GetBackgroundCollisionAtPosition
	asr	r1, r0, #16
	ldr	r0, .L_10964
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_1099c
	cmp	r1, #7
	bne	.L_1096c
	ldrh	r1, [r4, #18]
	ldr	r0, .L_10968
	and	r0, r1
	add	r0, #64	@ 0x40
	b	.L_10976
.L_10964:
	.4byte	gCurrentCarriedSprite
.L_10968:
	.4byte	0xFFC0
.L_1096c:
	cmp	r1, #8
	bne	.L_10980
	ldrh	r1, [r4, #18]
	ldr	r0, .L_1097c
	and	r0, r1
.L_10976:
	strh	r0, [r4, #18]
	mov	r0, #18
	b	.L_10a30
.L_1097c:
	.4byte	0xFFC0
.L_10980:
	cmp	r1, #3
	bne	.L_1099c
	ldrh	r0, [r4, #18]
	ldr	r1, .L_10998
	and	r1, r0
	add	r1, #32
	strh	r1, [r4, #18]
	ldrh	r0, [r4, #20]
	add	r0, #4
.L_10992:
	strh	r0, [r4, #20]
	mov	r0, #40	@ 0x28
	b	.L_10a30
.L_10998:
	.4byte	0xFFC0
.L_1099c:
	mov	r0, #5
	b	.L_10a30
.L_109a0:
	ldrh	r2, [r4, #14]
	add	r0, r1, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_109ae
	mov	r0, #0
	b	.L_10a30
.L_109ae:
	mov	r0, #48	@ 0x30
	eor	r0, r2
	and	r0, r1
	cmp	r0, #0
	beq	.L_109bc
	mov	r0, #1
	b	.L_10a30
.L_109bc:
	ldr	r0, .L_109fc
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_10a2e
	ldr	r3, .L_10a00
	ldrb	r0, [r4, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r4, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_10a2e
	strb	r2, [r4, #30]
	ldrb	r0, [r4, #31]
	add	r0, #1
	strb	r0, [r4, #31]
	ldrb	r1, [r4, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_10a2e
	ldr	r0, .L_10a04
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	beq	.L_10a08
	mov	r0, #53	@ 0x35
	b	.L_10a30
.L_109fc:
	.4byte	gCurrentCarriedSprite
.L_10a00:
	.4byte	sUnk_834F04C
.L_10a04:
	.4byte	gSwitchPressed
.L_10a08:
	ldrb	r0, [r4, #10]
	cmp	r0, #6
	bls	.L_10a28
	ldr	r0, .L_10a20
	ldrb	r1, [r0, #0]
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_10a24
	mov	r0, #59	@ 0x3b
	b	.L_10a30
	.align	2, 0
.L_10a20:
	.4byte	gMainTimer
.L_10a24:
	mov	r0, #54	@ 0x36
	b	.L_10a30
.L_10a28:
	strb	r1, [r4, #31]
	add	r0, #1
	strb	r0, [r4, #10]
.L_10a2e:
	mov	r0, #255	@ 0xff
.L_10a30:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8010A38
func_8010A38:
	ldr	r0, .L_10a50
	ldrh	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_10a58
	ldr	r0, .L_10a54
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_10a58
	mov	r0, #34	@ 0x22
	b	.L_10a9a
.L_10a50:
	.4byte	gButtonsPressed
.L_10a54:
	.4byte	gCurrentCarriedSprite
.L_10a58:
	ldr	r2, .L_10a90
	ldr	r3, .L_10a94
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_10a98
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
	bne	.L_10a98
	mov	r0, #1
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_10a9a
.L_10a90:
	.4byte	gWarioData
.L_10a94:
	.4byte	sUnk_82F12F0
.L_10a98:
	mov	r0, #255	@ 0xff
.L_10a9a:
	bx	lr


thumb_func_start func_8010A9C
func_8010A9C:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_10abc
	ldrb	r0, [r3, #0]
	ldr	r2, .L_10ac0
	cmp	r0, #0
	beq	.L_10ae4
	ldr	r0, .L_10ac4
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_10ac8
	ldrb	r1, [r3, #1]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	b	.L_10ace
.L_10abc:
	.4byte	gCurrentCarriedSprite
.L_10ac0:
	.4byte	gButtonsPressed
.L_10ac4:
	.4byte	gButtonsHeld
.L_10ac8:
	ldrb	r1, [r3, #1]
	mov	r0, #15
	and	r0, r1
.L_10ace:
	strb	r0, [r3, #1]
	ldr	r2, .L_10ae0
	ldrh	r1, [r2, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_10ae4
	mov	r0, #38	@ 0x26
	b	.L_10bfe
.L_10ae0:
	.4byte	gButtonsPressed
.L_10ae4:
	ldrh	r2, [r2, #0]
	mov	r0, #128	@ 0x80
	and	r0, r2
	cmp	r0, #0
	beq	.L_10af2
	mov	r0, #27
	b	.L_10bfe
.L_10af2:
	mov	r0, #1
	and	r0, r2
	ldr	r5, .L_10b38
	cmp	r0, #0
	beq	.L_10b00
	mov	r0, #1
	strb	r0, [r5, #7]
.L_10b00:
	ldr	r0, .L_10b3c
	ldrh	r1, [r0, #0]
	mov	r0, #66	@ 0x42
	and	r0, r1
	cmp	r0, #64	@ 0x40
	bne	.L_10b4c
	ldrh	r0, [r5, #20]
	sub	r0, #119	@ 0x77
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r5, #18]
	bl	GetBackgroundCollisionAtPosition
	asr	r1, r0, #16
	ldr	r0, .L_10b40
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_10b4c
	mov	r2, #24
	ldrsh	r0, [r5, r2]
	cmp	r0, #0
	bgt	.L_10b4c
	sub	r0, r1, #2
	cmp	r0, #1
	bhi	.L_10b44
	mov	r0, #41	@ 0x29
	b	.L_10bfe
	.align	2, 0
.L_10b38:
	.4byte	gWarioData
.L_10b3c:
	.4byte	gButtonsHeld
.L_10b40:
	.4byte	gCurrentCarriedSprite
.L_10b44:
	cmp	r1, #4
	bne	.L_10b4c
	mov	r0, #45	@ 0x2d
	b	.L_10bfe
.L_10b4c:
	ldr	r0, .L_10b84
	ldr	r1, .L_10b88
	ldrh	r3, [r0, #0]
	ldrh	r2, [r1, #14]
	add	r4, r3, #0
	and	r4, r2
	add	r6, r0, #0
	add	r5, r1, #0
	cmp	r4, #0
	beq	.L_10baa
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_10b8c
	ldrh	r1, [r5, #22]
	mov	r3, #22
	ldrsh	r0, [r5, r3]
	cmp	r0, #63	@ 0x3f
	bgt	.L_10be8
	add	r0, r1, #6
	strh	r0, [r5, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #64	@ 0x40
	ble	.L_10be8
	mov	r0, #64	@ 0x40
	strh	r0, [r5, #22]
	b	.L_10be8
.L_10b84:
	.4byte	gButtonsHeld
.L_10b88:
	.4byte	gWarioData
.L_10b8c:
	ldrh	r2, [r5, #22]
	mov	r1, #22
	ldrsh	r0, [r5, r1]
	mov	r1, #64	@ 0x40
	neg	r1, r1
	cmp	r0, r1
	ble	.L_10be8
	sub	r0, r2, #6
	strh	r0, [r5, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, r1
	bge	.L_10be8
	strh	r1, [r5, #22]
	b	.L_10be8
.L_10baa:
	mov	r0, #48	@ 0x30
	add	r1, r2, #0
	eor	r1, r0
	add	r0, r1, #0
	and	r0, r3
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, #0
	beq	.L_10bc2
	strh	r1, [r5, #14]
	strh	r4, [r5, #22]
	b	.L_10be8
.L_10bc2:
	ldrh	r0, [r5, #22]
	mov	r3, #22
	ldrsh	r1, [r5, r3]
	cmp	r1, #0
	ble	.L_10bd8
	sub	r0, #10
	strh	r0, [r5, #22]
	lsl	r0, r0, #16
	cmp	r0, #0
	bge	.L_10be8
	b	.L_10be6
.L_10bd8:
	cmp	r1, #0
	bge	.L_10be8
	add	r0, #10
	strh	r0, [r5, #22]
	lsl	r0, r0, #16
	cmp	r0, #0
	ble	.L_10be8
.L_10be6:
	strh	r2, [r5, #22]
.L_10be8:
	ldrh	r0, [r6, #0]
	mov	r1, #1
	and	r1, r0
	cmp	r1, #0
	bne	.L_10bfc
	mov	r2, #24
	ldrsh	r0, [r5, r2]
	cmp	r0, #0
	ble	.L_10bfc
	strh	r1, [r5, #24]
.L_10bfc:
	mov	r0, #255	@ 0xff
.L_10bfe:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_8010C04
func_8010C04:
	push	{lr}
	ldr	r0, .L_10c38
	ldrh	r1, [r0, #4]
	mov	r0, #0
	mov	r2, #1
	bl	func_8014090
	add	r3, r0, #0
	ldr	r1, .L_10c3c
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r2, .L_10c40
	ldrb	r0, [r2, #6]
	cmp	r0, #0
	bne	.L_10c70
	ldr	r0, .L_10c44
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_10c48
	mov	r0, #1
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_10c9c
	.align	2, 0
.L_10c38:
	.4byte	sUnk_82DEB60
.L_10c3c:
	.4byte	gCurrentCarriedSprite
.L_10c40:
	.4byte	gWarioData
.L_10c44:
	.4byte	gButtonsPressed
.L_10c48:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_10c58
	cmp	r3, #0
	bne	.L_10c58
	mov	r0, #22
	b	.L_10c9c
.L_10c58:
	ldr	r0, .L_10c6c
	ldrh	r1, [r0, #0]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	bne	.L_10c70
	cmp	r3, #0
	bne	.L_10c70
	mov	r0, #2
	b	.L_10c9c
.L_10c6c:
	.4byte	gButtonsHeld
.L_10c70:
	ldr	r0, .L_10c84
	ldr	r1, .L_10c88
	ldrh	r2, [r0, #0]
	ldrh	r1, [r1, #14]
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_10c8c
	mov	r0, #7
	b	.L_10c9c
.L_10c84:
	.4byte	gButtonsHeld
.L_10c88:
	.4byte	gWarioData
.L_10c8c:
	mov	r0, #48	@ 0x30
	eor	r0, r1
	and	r0, r2
	cmp	r0, #0
	bne	.L_10c9a
	mov	r0, #255	@ 0xff
	b	.L_10c9c
.L_10c9a:
	mov	r0, #9
.L_10c9c:
	pop	{r1}
	bx	r1


thumb_func_start func_8010CA0
func_8010CA0:
	push	{lr}
	ldr	r0, .L_10cc0
	ldrh	r1, [r0, #4]
	mov	r0, #0
	mov	r2, #1
	bl	func_8014090
	ldr	r2, .L_10cc4
	ldrh	r1, [r2, #28]
	mov	r3, #1
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_10cc8
	mov	r0, #12
	b	.L_10d14
.L_10cc0:
	.4byte	sUnk_82DEB60
.L_10cc4:
	.4byte	gWarioData
.L_10cc8:
	ldr	r0, .L_10cdc
	ldrh	r1, [r0, #0]
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_10ce0
	mov	r0, #1
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_10d14
.L_10cdc:
	.4byte	gButtonsPressed
.L_10ce0:
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_10cfa
	ldrh	r0, [r2, #22]
	sub	r0, #2
	strh	r0, [r2, #22]
	lsl	r0, r0, #16
	cmp	r0, #0
	bgt	.L_10d06
.L_10cf6:
	mov	r0, #5
	b	.L_10d14
.L_10cfa:
	ldrh	r0, [r2, #22]
	add	r0, #2
	strh	r0, [r2, #22]
	lsl	r0, r0, #16
	cmp	r0, #0
	bge	.L_10cf6
.L_10d06:
	ldr	r1, .L_10d18
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_10d12
	mov	r0, #5
	strb	r0, [r1, #0]
.L_10d12:
	mov	r0, #255	@ 0xff
.L_10d14:
	pop	{r1}
	bx	r1
.L_10d18:
	.4byte	gWarioDustEffect1


thumb_func_start func_8010D1C
func_8010D1C:
	push	{r4, lr}
	ldr	r4, .L_10d44
	ldrb	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_10d8c
	ldr	r0, .L_10d48
	ldrh	r1, [r0, #4]
	mov	r0, #0
	mov	r2, #1
	bl	func_8014090
	add	r3, r0, #0
	ldrh	r1, [r4, #28]
	mov	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_10d4c
	mov	r0, #12
	b	.L_10e42
.L_10d44:
	.4byte	gWarioData
.L_10d48:
	.4byte	sUnk_82DEB60
.L_10d4c:
	ldr	r0, .L_10d60
	ldrh	r1, [r0, #0]
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_10d64
	mov	r0, #1
	strb	r0, [r4, #8]
	mov	r0, #254	@ 0xfe
	b	.L_10e42
.L_10d60:
	.4byte	gButtonsPressed
.L_10d64:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_10d74
	cmp	r3, #0
	bne	.L_10d74
	mov	r0, #22
	b	.L_10e42
.L_10d74:
	ldr	r0, .L_10d88
	ldrh	r1, [r0, #0]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	bne	.L_10d8c
	cmp	r3, #0
	bne	.L_10d8c
	mov	r0, #2
	b	.L_10e42
.L_10d88:
	.4byte	gButtonsHeld
.L_10d8c:
	ldr	r0, .L_10dbc
	ldr	r1, .L_10dc0
	ldrh	r4, [r0, #0]
	ldrh	r2, [r1, #14]
	add	r0, r4, #0
	and	r0, r2
	add	r3, r1, #0
	cmp	r0, #0
	beq	.L_10dda
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_10dc4
	ldrh	r0, [r3, #22]
	add	r0, #6
	strh	r0, [r3, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #32
	ble	.L_10dee
	mov	r0, #32
	strh	r0, [r3, #22]
	b	.L_10dee
	.align	2, 0
.L_10dbc:
	.4byte	gButtonsHeld
.L_10dc0:
	.4byte	gWarioData
.L_10dc4:
	ldrh	r0, [r3, #22]
	sub	r0, #6
	strh	r0, [r3, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	r1, #32
	neg	r1, r1
	cmp	r0, r1
	bge	.L_10dee
	strh	r1, [r3, #22]
	b	.L_10dee
.L_10dda:
	mov	r0, #48	@ 0x30
	eor	r0, r2
	and	r0, r4
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_10dea
	mov	r0, #9
	b	.L_10e42
.L_10dea:
	mov	r0, #5
	b	.L_10e42
.L_10dee:
	ldr	r2, .L_10e28
	ldrb	r0, [r3, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldrb	r0, [r3, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_10e40
	mov	r0, #0
	strb	r0, [r3, #30]
	ldrb	r0, [r3, #31]
	add	r0, #1
	strb	r0, [r3, #31]
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_10e30
	strb	r0, [r3, #31]
	ldr	r1, .L_10e2c
	mov	r0, #5
	strb	r0, [r1, #0]
	b	.L_10e40
	.align	2, 0
.L_10e28:
	.4byte	sUnk_82F1380
.L_10e2c:
	.4byte	gWarioDustEffect1
.L_10e30:
	add	r0, r1, #0
	cmp	r0, #1
	beq	.L_10e3a
	cmp	r0, #4
	bne	.L_10e40
.L_10e3a:
	mov	r0, #2
	bl	m4aSongNumStart
.L_10e40:
	mov	r0, #255	@ 0xff
.L_10e42:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_8010E48
func_8010E48:
	push	{r4, lr}
	ldr	r1, .L_10ea0
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r2, .L_10ea4
	ldrb	r4, [r2, #9]
	cmp	r4, #0
	bne	.L_10f0c
	mov	r1, #24
	ldrsh	r0, [r2, r1]
	ldr	r3, .L_10ea8
	cmp	r0, #0
	ble	.L_10e74
	ldrh	r1, [r3, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_10e72
	ldrb	r0, [r2, #6]
	cmp	r0, #0
	beq	.L_10e74
.L_10e72:
	strh	r4, [r2, #24]
.L_10e74:
	ldrh	r1, [r3, #0]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	bne	.L_10eb0
	ldr	r4, .L_10eac
	ldrh	r1, [r4, #10]
	mov	r0, #0
	mov	r2, #1
	bl	func_8014090
	cmp	r0, #0
	bne	.L_10eb0
	ldrh	r1, [r4, #16]
	mov	r0, #0
	mov	r2, #1
	bl	func_8014090
	cmp	r0, #0
	bne	.L_10eb0
	mov	r0, #4
	b	.L_10f0e
.L_10ea0:
	.4byte	gCurrentCarriedSprite
.L_10ea4:
	.4byte	gWarioData
.L_10ea8:
	.4byte	gButtonsHeld
.L_10eac:
	.4byte	sUnk_82DEB60
.L_10eb0:
	ldr	r0, .L_10edc
	ldr	r2, .L_10ee0
	ldrh	r3, [r0, #0]
	ldrh	r1, [r2, #14]
	add	r4, r3, #0
	and	r4, r1
	cmp	r4, #0
	beq	.L_10efa
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_10ee4
	ldrh	r0, [r2, #22]
	add	r0, #6
	strh	r0, [r2, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #32
	ble	.L_10f0c
	mov	r0, #32
	strh	r0, [r2, #22]
	b	.L_10f0c
.L_10edc:
	.4byte	gButtonsHeld
.L_10ee0:
	.4byte	gWarioData
.L_10ee4:
	ldrh	r0, [r2, #22]
	sub	r0, #6
	strh	r0, [r2, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	r1, #32
	neg	r1, r1
	cmp	r0, r1
	bge	.L_10f0c
	strh	r1, [r2, #22]
	b	.L_10f0c
.L_10efa:
	mov	r0, #48	@ 0x30
	eor	r1, r0
	add	r0, r1, #0
	and	r0, r3
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_10f0a
	strh	r1, [r2, #14]
.L_10f0a:
	strh	r4, [r2, #22]
.L_10f0c:
	mov	r0, #255	@ 0xff
.L_10f0e:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_8010F14
func_8010F14:
	push	{lr}
	ldr	r0, .L_10f38
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r2, .L_10f3c
	ldrb	r0, [r2, #6]
	cmp	r0, #0
	bne	.L_10f64
	ldr	r0, .L_10f40
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_10f44
	mov	r0, #1
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_10fa2
.L_10f38:
	.4byte	gCurrentCarriedSprite
.L_10f3c:
	.4byte	gWarioData
.L_10f40:
	.4byte	gButtonsPressed
.L_10f44:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_10f64
	ldr	r0, .L_10f60
	ldrh	r1, [r0, #4]
	mov	r0, #0
	mov	r2, #1
	bl	func_8014090
	cmp	r0, #0
	bne	.L_10f64
	mov	r0, #22
	b	.L_10fa2
.L_10f60:
	.4byte	sUnk_82DEB60
.L_10f64:
	ldr	r2, .L_10f98
	ldr	r3, .L_10f9c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_10fa0
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
	bne	.L_10fa0
	mov	r0, #5
	b	.L_10fa2
.L_10f98:
	.4byte	gWarioData
.L_10f9c:
	.4byte	sUnk_82F13EC
.L_10fa0:
	mov	r0, #255	@ 0xff
.L_10fa2:
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8010FA8
func_8010FA8:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_10fbc
	ldrh	r2, [r0, #0]
	mov	r0, #1
	and	r0, r2
	cmp	r0, #0
	beq	.L_10fc0
	mov	r0, #3
	b	.L_11098
	.align	2, 0
.L_10fbc:
	.4byte	gButtonsPressed
.L_10fc0:
	mov	r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_10fdc
	ldr	r0, .L_10fd4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_10fd8
	mov	r0, #34	@ 0x22
	b	.L_11098
.L_10fd4:
	.4byte	gCurrentCarriedSprite
.L_10fd8:
	mov	r0, #22
	b	.L_11098
.L_10fdc:
	ldr	r3, .L_10ff4
	ldrb	r0, [r3, #10]
	cmp	r0, #0
	beq	.L_10ff8
	sub	r0, #1
	strb	r0, [r3, #10]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_11008
.L_10fee:
	mov	r0, #1
	b	.L_11098
	.align	2, 0
.L_10ff4:
	.4byte	gWarioData
.L_10ff8:
	ldrh	r0, [r3, #14]
	mov	r1, #48	@ 0x30
	eor	r0, r1
	and	r0, r2
	cmp	r0, #0
	beq	.L_11008
	mov	r0, #14
	strb	r0, [r3, #10]
.L_11008:
	ldr	r6, .L_1105c
	ldrh	r0, [r6, #20]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r6, #18]
	sub	r1, #30
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	GetBackgroundCollisionAtPosition
	add	r4, r0, #0
	asr	r4, r4, #16
	mov	r5, #255	@ 0xff
	and	r4, r5
	ldrh	r0, [r6, #20]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r6, #18]
	add	r1, #30
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	GetBackgroundCollisionAtPosition
	asr	r0, r0, #16
	and	r0, r5
	cmp	r4, #11
	beq	.L_11046
	cmp	r0, #11
	bne	.L_11060
.L_11046:
	mov	r4, #2
	ldrh	r0, [r6, #12]
	cmp	r0, #0
	bne	.L_11062
	add	r0, #1
	strh	r0, [r6, #12]
	mov	r0, #11
	bl	m4aSongNumStart
	b	.L_11062
	.align	2, 0
.L_1105c:
	.4byte	gWarioData
.L_11060:
	mov	r4, #32
.L_11062:
	ldr	r2, .L_1107c
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_11080
	ldrh	r0, [r2, #22]
	sub	r0, r0, r4
	strh	r0, [r2, #22]
	lsl	r0, r0, #16
	cmp	r0, #0
	bgt	.L_11096
	b	.L_1108c
.L_1107c:
	.4byte	gWarioData
.L_11080:
	ldrh	r0, [r2, #22]
	add	r0, r0, r4
	strh	r0, [r2, #22]
	lsl	r0, r0, #16
	cmp	r0, #0
	blt	.L_11096
.L_1108c:
	ldrb	r0, [r2, #10]
	cmp	r0, #0
	bne	.L_10fee
	mov	r0, #2
	b	.L_11098
.L_11096:
	mov	r0, #255	@ 0xff
.L_11098:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_80110A0
func_80110A0:
	push	{r4, r5, r6, lr}
	ldr	r6, .L_110f4
	ldrh	r0, [r6, #20]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r6, #18]
	sub	r1, #30
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	GetBackgroundCollisionAtPosition
	add	r4, r0, #0
	asr	r4, r4, #16
	mov	r5, #255	@ 0xff
	and	r4, r5
	ldrh	r0, [r6, #20]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r6, #18]
	add	r1, #30
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	GetBackgroundCollisionAtPosition
	asr	r0, r0, #16
	and	r0, r5
	cmp	r4, #11
	beq	.L_110e0
	cmp	r0, #11
	bne	.L_110f8
.L_110e0:
	mov	r4, #1
	ldrh	r0, [r6, #12]
	cmp	r0, #0
	bne	.L_1110a
	add	r0, #1
	strh	r0, [r6, #12]
	mov	r0, #11
	bl	m4aSongNumStart
	b	.L_1110a
.L_110f4:
	.4byte	gWarioData
.L_110f8:
	mov	r4, #32
	ldrh	r0, [r6, #12]
	cmp	r0, #0
	bne	.L_1110a
	add	r0, #1
	strh	r0, [r6, #12]
	mov	r0, #9
	bl	m4aSongNumStart
.L_1110a:
	ldr	r2, .L_11124
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_11138
	ldrh	r1, [r2, #22]
	mov	r3, #22
	ldrsh	r0, [r2, r3]
	cmp	r0, #48	@ 0x30
	ble	.L_11128
	sub	r0, r1, #3
	b	.L_1112a
.L_11124:
	.4byte	gWarioData
.L_11128:
	sub	r0, r1, r4
.L_1112a:
	strh	r0, [r2, #22]
	mov	r1, #22
	ldrsh	r0, [r2, r1]
	cmp	r0, #0
	bgt	.L_11156
.L_11134:
	mov	r0, #2
	b	.L_1118e
.L_11138:
	ldrh	r3, [r2, #22]
	mov	r0, #22
	ldrsh	r1, [r2, r0]
	mov	r0, #48	@ 0x30
	neg	r0, r0
	cmp	r1, r0
	bge	.L_1114a
	add	r0, r3, #3
	b	.L_1114c
.L_1114a:
	add	r0, r3, r4
.L_1114c:
	strh	r0, [r2, #22]
	mov	r1, #22
	ldrsh	r0, [r2, r1]
	cmp	r0, #0
	bge	.L_11134
.L_11156:
	ldr	r3, .L_11194
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1118c
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
	bne	.L_1118c
	strb	r0, [r2, #31]
	ldr	r1, .L_11198
	mov	r0, #5
	strb	r0, [r1, #0]
.L_1118c:
	mov	r0, #255	@ 0xff
.L_1118e:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L_11194:
	.4byte	sUnk_82F1428
.L_11198:
	.4byte	gWarioDustEffect1


thumb_func_start func_801119C
func_801119C:
	ldr	r0, .L_111b4
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_111bc
	ldr	r1, .L_111b8
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r0, #254	@ 0xfe
	b	.L_11234
	.align	2, 0
.L_111b4:
	.4byte	gButtonsPressed
.L_111b8:
	.4byte	gWarioData
.L_111bc:
	ldr	r2, .L_111e0
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_111e4
	ldrh	r0, [r2, #22]
	add	r0, #6
	strh	r0, [r2, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #127	@ 0x7f
	ble	.L_111fc
	mov	r0, #128	@ 0x80
	strh	r0, [r2, #22]
	mov	r0, #13
	b	.L_11234
	.align	2, 0
.L_111e0:
	.4byte	gWarioData
.L_111e4:
	ldrh	r0, [r2, #22]
	sub	r0, #6
	strh	r0, [r2, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	r1, #128	@ 0x80
	neg	r1, r1
	cmp	r0, r1
	bgt	.L_111fc
	strh	r1, [r2, #22]
	mov	r0, #13
	b	.L_11234
.L_111fc:
	ldr	r3, .L_11238
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_11232
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
	bne	.L_11232
	strb	r0, [r2, #31]
	ldr	r1, .L_1123c
	mov	r0, #5
	strb	r0, [r1, #0]
.L_11232:
	mov	r0, #255	@ 0xff
.L_11234:
	bx	lr
	.align	2, 0
.L_11238:
	.4byte	sUnk_82F144C
.L_1123c:
	.4byte	gWarioDustEffect1


thumb_func_start func_8011240
func_8011240:
	ldr	r2, .L_11274
	ldr	r3, .L_11278
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1127c
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
	bne	.L_1127c
	mov	r0, #14
	b	.L_1127e
.L_11274:
	.4byte	gWarioData
.L_11278:
	.4byte	sUnk_82F1488
.L_1127c:
	mov	r0, #255	@ 0xff
.L_1127e:
	bx	lr


thumb_func_start func_8011280
func_8011280:
	push	{r4, lr}
	ldr	r0, .L_112a0
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	ldr	r1, .L_112a4
	cmp	r0, #0
	bne	.L_11298
	add	r2, r1, #0
	ldrb	r3, [r2, #7]
	cmp	r3, #0
	beq	.L_112a8
.L_11298:
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r0, #254	@ 0xfe
	b	.L_112de
.L_112a0:
	.4byte	gButtonsPressed
.L_112a4:
	.4byte	gWarioData
.L_112a8:
	ldr	r4, .L_112e4
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r4
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_112dc
	strb	r3, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_112dc
	strb	r0, [r2, #31]
	ldr	r1, .L_112e8
	mov	r0, #5
	strb	r0, [r1, #0]
.L_112dc:
	mov	r0, #255	@ 0xff
.L_112de:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_112e4:
	.4byte	sUnk_82F14AC
.L_112e8:
	.4byte	gWarioDustEffect1


thumb_func_start func_80112EC
func_80112EC:
	ldr	r0, .L_11334
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	ldr	r2, .L_11338
	cmp	r0, #0
	beq	.L_112fe
	mov	r0, #1
	strb	r0, [r2, #7]
.L_112fe:
	ldr	r3, .L_1133c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1132e
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
	bne	.L_1132e
	strb	r0, [r2, #31]
.L_1132e:
	mov	r0, #255	@ 0xff
	bx	lr
	.align	2, 0
.L_11334:
	.4byte	gButtonsPressed
.L_11338:
	.4byte	gWarioData
.L_1133c:
	.4byte	sUnk_82F14AC


thumb_func_start func_8011340
func_8011340:
	ldr	r1, .L_1137c
	mov	r0, #0
	strb	r0, [r1, #1]
	strb	r0, [r1, #0]
	ldr	r2, .L_11380
	ldrb	r0, [r2, #30]
	cmp	r0, #59	@ 0x3b
	bhi	.L_11374
	mov	r0, #24
	ldrsh	r1, [r2, r0]
	mov	r0, #120	@ 0x78
	neg	r0, r0
	cmp	r1, r0
	bge	.L_1138c
	ldr	r0, .L_11384
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_11374
	ldr	r0, .L_11388
	ldrh	r1, [r0, #0]
	mov	r0, #48	@ 0x30
	orr	r0, r1
	cmp	r0, #0
	beq	.L_1138c
.L_11374:
	mov	r0, #2
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_1138e
.L_1137c:
	.4byte	gCurrentCarriedSprite
.L_11380:
	.4byte	gWarioData
.L_11384:
	.4byte	gButtonsPressed
.L_11388:
	.4byte	gButtonsHeld
.L_1138c:
	mov	r0, #255	@ 0xff
.L_1138e:
	bx	lr


thumb_func_start func_8011390
func_8011390:
	ldr	r2, .L_113cc
	ldr	r3, .L_113d0
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_113d8
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
	bne	.L_113d8
	ldrb	r0, [r2, #1]
	cmp	r0, #17
	bne	.L_113d4
	mov	r0, #2
	b	.L_113da
	.align	2, 0
.L_113cc:
	.4byte	gWarioData
.L_113d0:
	.4byte	sUnk_8316078
.L_113d4:
	mov	r0, #254	@ 0xfe
	b	.L_113da
.L_113d8:
	mov	r0, #255	@ 0xff
.L_113da:
	bx	lr


thumb_func_start func_80113DC
func_80113DC:
	ldr	r2, .L_11414
	ldr	r3, .L_11418
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1140e
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
	bne	.L_1140e
	strb	r0, [r2, #31]
.L_1140e:
	mov	r0, #255	@ 0xff
	bx	lr
	.align	2, 0
.L_11414:
	.4byte	gWarioData
.L_11418:
	.4byte	sUnk_82F14E8


thumb_func_start func_801141C
func_801141C:
	ldr	r2, .L_11454
	ldr	r3, .L_11458
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_11450
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
	bne	.L_11450
	sub	r0, r1, #1
	strb	r0, [r2, #31]
.L_11450:
	mov	r0, #255	@ 0xff
	bx	lr
.L_11454:
	.4byte	gWarioData
.L_11458:
	.4byte	sUnk_82F1518


thumb_func_start func_801145C
func_801145C:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_11480
	ldrb	r1, [r0, #10]
	add	r6, r0, #0
	cmp	r1, #45	@ 0x2d
	bhi	.L_11488
	add	r0, r1, #1
	strb	r0, [r6, #10]
	ldr	r0, .L_11484
	ldrh	r1, [r0, #0]
	mov	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_114ec
	strb	r2, [r6, #8]
	mov	r0, #254	@ 0xfe
	b	.L_11584
.L_11480:
	.4byte	gWarioData
.L_11484:
	.4byte	gButtonsPressed
.L_11488:
	ldr	r0, .L_11498
	ldrh	r1, [r0, #0]
	ldrh	r0, [r6, #14]
	and	r0, r1
	cmp	r0, #0
	beq	.L_1149c
	mov	r0, #0
	b	.L_11584
.L_11498:
	.4byte	gButtonsHeld
.L_1149c:
	ldrh	r0, [r6, #20]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r6, #18]
	sub	r1, #30
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	GetBackgroundCollisionAtPosition
	add	r4, r0, #0
	asr	r4, r4, #16
	mov	r5, #255	@ 0xff
	and	r4, r5
	ldrh	r0, [r6, #20]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r6, #18]
	add	r1, #30
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	GetBackgroundCollisionAtPosition
	asr	r0, r0, #16
	and	r0, r5
	cmp	r4, #11
	beq	.L_114d8
	cmp	r0, #11
	bne	.L_114e8
.L_114d8:
	mov	r0, #22
	ldrsh	r1, [r6, r0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	asr	r0, r0, #2
	strh	r0, [r6, #22]
	mov	r0, #10
	b	.L_11584
.L_114e8:
	mov	r0, #2
	b	.L_11584
.L_114ec:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_114f8
	mov	r0, #6
	b	.L_11584
.L_114f8:
	ldr	r1, .L_1150c
	ldrh	r2, [r6, #14]
	mov	r0, #48	@ 0x30
	eor	r0, r2
	ldrh	r1, [r1, #0]
	and	r0, r1
	cmp	r0, #0
	beq	.L_11510
	mov	r0, #1
	b	.L_11584
.L_1150c:
	.4byte	gButtonsHeld
.L_11510:
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_1152c
	ldrh	r0, [r6, #22]
	add	r0, #4
	strh	r0, [r6, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #96	@ 0x60
	ble	.L_11540
	mov	r0, #96	@ 0x60
	strh	r0, [r6, #22]
	b	.L_11540
.L_1152c:
	ldrh	r0, [r6, #22]
	sub	r0, #4
	strh	r0, [r6, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	r1, #96	@ 0x60
	neg	r1, r1
	cmp	r0, r1
	bge	.L_11540
	strh	r1, [r6, #22]
.L_11540:
	ldr	r2, .L_11574
	ldrb	r0, [r6, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldrb	r0, [r6, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_11582
	mov	r0, #0
	strb	r0, [r6, #30]
	ldrb	r0, [r6, #31]
	add	r0, #1
	strb	r0, [r6, #31]
	ldrb	r1, [r6, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_11578
	strb	r0, [r6, #31]
	b	.L_11582
	.align	2, 0
.L_11574:
	.4byte	sUnk_82FBF7C
.L_11578:
	cmp	r1, #1
	bne	.L_11582
	ldr	r1, .L_1158c
	mov	r0, #5
	strb	r0, [r1, #0]
.L_11582:
	mov	r0, #255	@ 0xff
.L_11584:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_1158c:
	.4byte	gWarioDustEffect1


thumb_func_start func_8011590
func_8011590:
	push	{r4, lr}
	ldr	r0, .L_115a8
	ldrh	r0, [r0, #0]
	mov	r4, #1
	and	r4, r0
	cmp	r4, #0
	beq	.L_115b0
	ldr	r1, .L_115ac
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r0, #254	@ 0xfe
	b	.L_11644
.L_115a8:
	.4byte	gButtonsPressed
.L_115ac:
	.4byte	gWarioData
.L_115b0:
	ldr	r0, .L_115d0
	ldr	r2, .L_115d4
	ldrh	r3, [r0, #0]
	ldrh	r1, [r2, #14]
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_115e2
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_115d8
	ldrh	r0, [r2, #22]
	sub	r0, #3
	b	.L_115dc
	.align	2, 0
.L_115d0:
	.4byte	gButtonsHeld
.L_115d4:
	.4byte	gWarioData
.L_115d8:
	ldrh	r0, [r2, #22]
	add	r0, #3
.L_115dc:
	strh	r0, [r2, #22]
	mov	r0, #11
	b	.L_11644
.L_115e2:
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #2
	and	r0, r3
	cmp	r0, #0
	bne	.L_11604
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_115fa
	ldrh	r0, [r2, #22]
	sub	r0, #6
	b	.L_115fe
.L_115fa:
	ldrh	r0, [r2, #22]
	add	r0, #6
.L_115fe:
	strh	r0, [r2, #22]
	mov	r0, #0
	b	.L_11644
.L_11604:
	ldr	r3, .L_11634
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_11642
	strb	r4, [r2, #30]
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
	bne	.L_11638
	strb	r0, [r2, #31]
	b	.L_11642
.L_11634:
	.4byte	sUnk_82FC2C4
.L_11638:
	cmp	r1, #1
	bne	.L_11642
	ldr	r1, .L_1164c
	mov	r0, #5
	strb	r0, [r1, #0]
.L_11642:
	mov	r0, #255	@ 0xff
.L_11644:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_1164c:
	.4byte	gWarioDustEffect1


thumb_func_start func_8011650
func_8011650:
	push	{r4, lr}
	ldr	r0, .L_11684
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	ldr	r4, .L_11688
	cmp	r0, #0
	beq	.L_11664
	mov	r0, #1
	strb	r0, [r4, #7]
.L_11664:
	ldrh	r1, [r4, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_1168c
	ldrh	r0, [r4, #22]
	add	r0, #10
	strh	r0, [r4, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #96	@ 0x60
	ble	.L_116a0
	mov	r0, #96	@ 0x60
	strh	r0, [r4, #22]
	b	.L_116a0
	.align	2, 0
.L_11684:
	.4byte	gButtonsPressed
.L_11688:
	.4byte	gWarioData
.L_1168c:
	ldrh	r0, [r4, #22]
	sub	r0, #10
	strh	r0, [r4, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	r1, #96	@ 0x60
	neg	r1, r1
	cmp	r0, r1
	bge	.L_116a0
	strh	r1, [r4, #22]
.L_116a0:
	ldr	r2, .L_116c8
	add	r3, r4, #0
	ldrh	r1, [r3, #14]
	mov	r0, #48	@ 0x30
	eor	r1, r0
	ldrh	r0, [r2, #0]
	add	r2, r1, #0
	and	r2, r0
	cmp	r2, #0
	beq	.L_116cc
	strh	r1, [r3, #14]
	mov	r1, #24
	ldrsh	r0, [r3, r1]
	cmp	r0, #0
	bge	.L_116c2
	mov	r0, #2
	strb	r0, [r3, #8]
.L_116c2:
	mov	r0, #254	@ 0xfe
	b	.L_116fc
	.align	2, 0
.L_116c8:
	.4byte	gButtonsHeld
.L_116cc:
	ldr	r3, .L_11704
	ldrb	r0, [r4, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r4, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_116fa
	strb	r2, [r4, #30]
	ldrb	r0, [r4, #31]
	add	r0, #1
	strb	r0, [r4, #31]
	ldrb	r1, [r4, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_116fa
	strb	r0, [r4, #31]
.L_116fa:
	mov	r0, #255	@ 0xff
.L_116fc:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_11704:
	.4byte	sUnk_82FC000


thumb_func_start func_8011708
func_8011708:
	ldr	r2, .L_11740
	ldr	r3, .L_11744
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1173a
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
	bne	.L_1173a
	strb	r0, [r2, #31]
.L_1173a:
	mov	r0, #255	@ 0xff
	bx	lr
	.align	2, 0
.L_11740:
	.4byte	gWarioData
.L_11744:
	.4byte	sUnk_82FC2C4


thumb_func_start func_8011748
func_8011748:
	ldr	r2, .L_11774
	ldrb	r0, [r2, #30]
	cmp	r0, #59	@ 0x3b
	bhi	.L_1176a
	mov	r0, #24
	ldrsh	r1, [r2, r0]
	mov	r0, #120	@ 0x78
	neg	r0, r0
	cmp	r1, r0
	bge	.L_1177c
	ldr	r0, .L_11778
	ldrh	r0, [r0, #0]
	mov	r1, #48	@ 0x30
	and	r1, r0
	cmp	r1, #0
	beq	.L_1177c
	strh	r1, [r2, #14]
.L_1176a:
	mov	r0, #2
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_1177e
	.align	2, 0
.L_11774:
	.4byte	gWarioData
.L_11778:
	.4byte	gButtonsHeld
.L_1177c:
	mov	r0, #255	@ 0xff
.L_1177e:
	bx	lr


thumb_func_start func_8011780
func_8011780:
	push	{r4, lr}
	ldr	r0, .L_117ac
	mov	r2, #24
	ldrsh	r1, [r0, r2]
	add	r4, r0, #0
	cmp	r1, #0
	ble	.L_11792
	mov	r0, #0
	strh	r0, [r4, #24]
.L_11792:
	ldrb	r0, [r4, #1]
	ldr	r2, .L_117b0
	cmp	r0, #27
	bne	.L_117c2
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	bne	.L_117b4
	mov	r0, #2
	strb	r0, [r4, #8]
	mov	r0, #254	@ 0xfe
	b	.L_11886
.L_117ac:
	.4byte	gWarioData
.L_117b0:
	.4byte	gButtonsHeld
.L_117b4:
	ldrb	r0, [r4, #10]
	cmp	r0, #23
	bls	.L_117be
	mov	r0, #28
	b	.L_11886
.L_117be:
	add	r0, #1
	strb	r0, [r4, #10]
.L_117c2:
	ldrh	r1, [r2, #0]
	ldrh	r2, [r4, #14]
	add	r3, r1, #0
	and	r3, r2
	cmp	r3, #0
	beq	.L_117e8
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_117dc
	mov	r0, #32
	strh	r0, [r4, #22]
	b	.L_117fa
.L_117dc:
	ldr	r0, .L_117e4
	strh	r0, [r4, #22]
	b	.L_117fa
	.align	2, 0
.L_117e4:
	.4byte	0xFFE0
.L_117e8:
	mov	r0, #48	@ 0x30
	eor	r2, r0
	add	r0, r2, #0
	and	r0, r1
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_117f8
	strh	r2, [r4, #14]
.L_117f8:
	strh	r3, [r4, #22]
.L_117fa:
	add	r2, r4, #0
	ldr	r3, .L_11830
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_11852
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
	bne	.L_11834
	mov	r0, #1
	strb	r0, [r2, #31]
	b	.L_11844
.L_11830:
	.4byte	sUnk_82FC084
.L_11834:
	ldrb	r0, [r4, #1]
	cmp	r0, #27
	bne	.L_11844
	cmp	r1, #1
	bne	.L_11844
	mov	r0, #33	@ 0x21
	bl	m4aSongNumStart
.L_11844:
	ldr	r0, .L_1188c
	ldrb	r0, [r0, #31]
	cmp	r0, #0
	beq	.L_11852
	ldr	r1, .L_11890
	mov	r0, #2
	strb	r0, [r1, #0]
.L_11852:
	ldr	r2, .L_11890
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_11884
	ldr	r3, .L_11894
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r2, #1]
	ldrh	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_11884
	mov	r0, #0
	strb	r0, [r2, #1]
	ldrb	r0, [r2, #2]
	add	r0, #1
	strb	r0, [r2, #2]
	ldrb	r1, [r2, #2]
	lsl	r0, r1, #3
	add	r0, r0, r3
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_11884
	sub	r0, r1, #1
	strb	r0, [r2, #2]
.L_11884:
	mov	r0, #255	@ 0xff
.L_11886:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_1188c:
	.4byte	gWarioData
.L_11890:
	.4byte	gUnk_3001930
.L_11894:
	.4byte	sUnk_82E0394


thumb_func_start func_8011898
func_8011898:
	ldr	r2, .L_118a4
	ldrb	r0, [r2, #1]
	cmp	r0, #29
	bne	.L_118ac
	ldr	r3, .L_118a8
	b	.L_118ae
.L_118a4:
	.4byte	gWarioData
.L_118a8:
	.4byte	sUnk_82FC0D8
.L_118ac:
	ldr	r3, .L_118e0
.L_118ae:
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_118e4
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
	bne	.L_118e4
	mov	r0, #2
	b	.L_11910
	.align	2, 0
.L_118e0:
	.4byte	sUnk_82FC0F0
.L_118e4:
	ldr	r2, .L_11914
	ldr	r3, .L_11918
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r2, #1]
	ldrh	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_1190e
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
	bne	.L_1190e
	strb	r0, [r2, #2]
.L_1190e:
	mov	r0, #255	@ 0xff
.L_11910:
	bx	lr
	.align	2, 0
.L_11914:
	.4byte	gUnk_3001930
.L_11918:
	.4byte	sUnk_82E03BC


thumb_func_start func_801191C
func_801191C:
	ldr	r2, .L_11950
	ldrb	r0, [r2, #30]
	cmp	r0, #39	@ 0x27
	bhi	.L_11948
	mov	r0, #24
	ldrsh	r1, [r2, r0]
	mov	r0, #120	@ 0x78
	neg	r0, r0
	cmp	r1, r0
	bge	.L_1195c
	ldr	r0, .L_11954
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_11948
	ldr	r0, .L_11958
	ldrh	r1, [r0, #0]
	mov	r0, #48	@ 0x30
	and	r0, r1
	cmp	r0, #0
	beq	.L_1195c
.L_11948:
	mov	r0, #2
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_1195e
.L_11950:
	.4byte	gWarioData
.L_11954:
	.4byte	gButtonsPressed
.L_11958:
	.4byte	gButtonsHeld
.L_1195c:
	mov	r0, #255	@ 0xff
.L_1195e:
	bx	lr


thumb_func_start func_8011960
func_8011960:
	push	{r4, lr}
	ldr	r4, .L_11984
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_119c8
	ldr	r0, .L_11988
	ldrh	r0, [r0, #0]
	mov	r2, #1
	and	r2, r0
	cmp	r2, #0
	beq	.L_1199c
	ldr	r0, .L_1198c
	ldrb	r1, [r0, #31]
	add	r2, r0, #0
	cmp	r1, #1
	bhi	.L_11990
	mov	r0, #0
	b	.L_11992
.L_11984:
	.4byte	gCurrentCarriedSprite
.L_11988:
	.4byte	gButtonsHeld
.L_1198c:
	.4byte	gWarioData
.L_11990:
	mov	r0, #4
.L_11992:
	strb	r0, [r4, #0]
	mov	r0, #1
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_119da
.L_1199c:
	ldr	r1, .L_119cc
	ldr	r3, .L_119d0
	ldrb	r0, [r3, #31]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	ldrb	r0, [r3, #30]
	cmp	r0, #2
	bls	.L_119d8
	strb	r2, [r3, #30]
	ldrb	r0, [r3, #31]
	add	r0, #1
	strb	r0, [r3, #31]
	ldr	r2, .L_119d4
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_119d8
.L_119c8:
	mov	r0, #2
	b	.L_119da
.L_119cc:
	.4byte	sUnk_82DEC2A
.L_119d0:
	.4byte	gWarioData
.L_119d4:
	.4byte	sUnk_8306E38
.L_119d8:
	mov	r0, #255	@ 0xff
.L_119da:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_80119E0
func_80119E0:
	push	{r4, lr}
	ldr	r4, .L_11a04
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_11a48
	ldr	r0, .L_11a08
	ldrh	r0, [r0, #0]
	mov	r2, #1
	and	r2, r0
	cmp	r2, #0
	beq	.L_11a1c
	ldr	r0, .L_11a0c
	ldrb	r1, [r0, #31]
	add	r2, r0, #0
	cmp	r1, #2
	bhi	.L_11a10
	mov	r0, #0
	b	.L_11a12
.L_11a04:
	.4byte	gCurrentCarriedSprite
.L_11a08:
	.4byte	gButtonsPressed
.L_11a0c:
	.4byte	gWarioData
.L_11a10:
	mov	r0, #4
.L_11a12:
	strb	r0, [r4, #0]
	mov	r0, #1
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_11a5a
.L_11a1c:
	ldr	r1, .L_11a4c
	ldr	r3, .L_11a50
	ldrb	r0, [r3, #31]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	ldrb	r0, [r3, #30]
	cmp	r0, #3
	bls	.L_11a58
	strb	r2, [r3, #30]
	ldrb	r0, [r3, #31]
	add	r0, #1
	strb	r0, [r3, #31]
	ldr	r2, .L_11a54
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_11a58
.L_11a48:
	mov	r0, #2
	b	.L_11a5a
.L_11a4c:
	.4byte	sUnk_82DEC2E
.L_11a50:
	.4byte	gWarioData
.L_11a54:
	.4byte	sUnk_8306E74
.L_11a58:
	mov	r0, #255	@ 0xff
.L_11a5a:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_8011A60
func_8011A60:
	ldr	r0, .L_11a70
	ldrb	r1, [r0, #0]
	add	r3, r0, #0
	cmp	r1, #0
	bne	.L_11a74
	mov	r0, #2
	b	.L_11b02
	.align	2, 0
.L_11a70:
	.4byte	gCurrentCarriedSprite
.L_11a74:
	ldr	r2, .L_11a88
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_11a8c
	ldrb	r1, [r3, #1]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	b	.L_11a92
.L_11a88:
	.4byte	gButtonsHeld
.L_11a8c:
	ldrb	r1, [r3, #1]
	mov	r0, #15
	and	r0, r1
.L_11a92:
	strb	r0, [r3, #1]
	ldrh	r1, [r2, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	bne	.L_11ab4
	ldr	r0, .L_11aac
	ldrb	r0, [r0, #31]
	cmp	r0, #0
	beq	.L_11ab0
	mov	r0, #37	@ 0x25
	b	.L_11b02
	.align	2, 0
.L_11aac:
	.4byte	gWarioData
.L_11ab0:
	mov	r0, #36	@ 0x24
	b	.L_11b02
.L_11ab4:
	ldr	r1, .L_11af4
	ldr	r2, .L_11af8
	ldrb	r0, [r2, #31]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #0]
	ldr	r3, .L_11afc
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r1, [r2, #30]
	ldrb	r0, [r0, #8]
	cmp	r1, r0
	bcc	.L_11b00
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
	bne	.L_11b00
	mov	r0, #35	@ 0x23
	b	.L_11b02
	.align	2, 0
.L_11af4:
	.4byte	sUnk_82DEC33
.L_11af8:
	.4byte	gWarioData
.L_11afc:
	.4byte	sUnk_8306EBC
.L_11b00:
	mov	r0, #255	@ 0xff
.L_11b02:
	bx	lr


thumb_func_start func_8011B04
func_8011B04:
	ldr	r3, .L_11b10
	ldrb	r0, [r3, #0]
	cmp	r0, #0
	bne	.L_11b14
	mov	r0, #2
	b	.L_11b8a
.L_11b10:
	.4byte	gCurrentCarriedSprite
.L_11b14:
	ldr	r0, .L_11b30
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_11b38
	mov	r0, #0
	strb	r0, [r3, #0]
	ldr	r1, .L_11b34
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r0, #254	@ 0xfe
	b	.L_11b8a
	.align	2, 0
.L_11b30:
	.4byte	gButtonsPressed
.L_11b34:
	.4byte	gWarioData
.L_11b38:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_11b44
	mov	r0, #5
	b	.L_11b8a
.L_11b44:
	ldr	r2, .L_11b58
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_11b5c
	ldrb	r1, [r3, #1]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	b	.L_11b62
.L_11b58:
	.4byte	gButtonsHeld
.L_11b5c:
	ldrb	r1, [r3, #1]
	mov	r0, #15
	and	r0, r1
.L_11b62:
	strb	r0, [r3, #1]
	ldrh	r2, [r2, #0]
	mov	r0, #2
	and	r0, r2
	cmp	r0, #0
	bne	.L_11b72
	mov	r0, #37	@ 0x25
	b	.L_11b8a
.L_11b72:
	ldr	r0, .L_11b84
	ldrh	r0, [r0, #14]
	mov	r1, #48	@ 0x30
	eor	r0, r1
	and	r0, r2
	cmp	r0, #0
	bne	.L_11b88
	mov	r0, #255	@ 0xff
	b	.L_11b8a
.L_11b84:
	.4byte	gWarioData
.L_11b88:
	mov	r0, #39	@ 0x27
.L_11b8a:
	bx	lr


thumb_func_start func_8011B8C
func_8011B8C:
	ldr	r2, .L_11bd8
	ldr	r1, .L_11bdc
	ldr	r3, .L_11be0
	ldrb	r0, [r3, #31]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #0]
	ldr	r2, .L_11be4
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r1, [r3, #30]
	ldrb	r0, [r0, #8]
	cmp	r1, r0
	bcc	.L_11bf0
	mov	r0, #0
	strb	r0, [r3, #30]
	ldrb	r0, [r3, #31]
	add	r0, #1
	strb	r0, [r3, #31]
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_11bf0
	ldr	r0, .L_11be8
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_11bec
	mov	r0, #51	@ 0x33
	b	.L_11bf2
.L_11bd8:
	.4byte	gCurrentCarriedSprite
.L_11bdc:
	.4byte	sUnk_82DEC36
.L_11be0:
	.4byte	gWarioData
.L_11be4:
	.4byte	sUnk_8306F04
.L_11be8:
	.4byte	gButtonsHeld
.L_11bec:
	mov	r0, #2
	b	.L_11bf2
.L_11bf0:
	mov	r0, #255	@ 0xff
.L_11bf2:
	bx	lr


thumb_func_start func_8011BF4
func_8011BF4:
	ldr	r2, .L_11c40
	ldr	r1, .L_11c44
	ldr	r3, .L_11c48
	ldrb	r0, [r3, #31]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #0]
	ldr	r2, .L_11c4c
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r1, [r3, #30]
	ldrb	r0, [r0, #8]
	cmp	r1, r0
	bcc	.L_11c58
	mov	r0, #0
	strb	r0, [r3, #30]
	ldrb	r0, [r3, #31]
	add	r0, #1
	strb	r0, [r3, #31]
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_11c58
	ldr	r0, .L_11c50
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_11c54
	mov	r0, #51	@ 0x33
	b	.L_11c5a
.L_11c40:
	.4byte	gCurrentCarriedSprite
.L_11c44:
	.4byte	sUnk_82DEC39
.L_11c48:
	.4byte	gWarioData
.L_11c4c:
	.4byte	sUnk_8306F34
.L_11c50:
	.4byte	gButtonsHeld
.L_11c54:
	mov	r0, #2
	b	.L_11c5a
.L_11c58:
	mov	r0, #255	@ 0xff
.L_11c5a:
	bx	lr


thumb_func_start func_8011C5C
func_8011C5C:
	push	{r4, lr}
	ldr	r0, .L_11c9c
	mov	r3, #0
	strb	r3, [r0, #0]
	ldr	r2, .L_11ca0
	ldr	r4, .L_11ca4
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldrb	r1, [r2, #30]
	ldrb	r0, [r0, #8]
	cmp	r1, r0
	bcc	.L_11ca8
	strb	r3, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_11ca8
	mov	r0, #2
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_11caa
	.align	2, 0
.L_11c9c:
	.4byte	gCurrentCarriedSprite
.L_11ca0:
	.4byte	gWarioData
.L_11ca4:
	.4byte	sUnk_8306F70
.L_11ca8:
	mov	r0, #255	@ 0xff
.L_11caa:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_8011CB0
func_8011CB0:
	push	{r4, lr}
	ldr	r3, .L_11cc0
	ldrb	r0, [r3, #0]
	cmp	r0, #0
	bne	.L_11cc4
	mov	r0, #2
	b	.L_11d6a
	.align	2, 0
.L_11cc0:
	.4byte	gCurrentCarriedSprite
.L_11cc4:
	ldr	r1, .L_11cec
	ldr	r2, .L_11cf0
	ldrb	r0, [r2, #31]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #0]
	ldr	r0, .L_11cf4
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	add	r4, r2, #0
	cmp	r0, #0
	beq	.L_11cf8
	mov	r0, #0
	strb	r0, [r3, #0]
	mov	r0, #1
	strb	r0, [r4, #8]
	mov	r0, #254	@ 0xfe
	b	.L_11d6a
	.align	2, 0
.L_11cec:
	.4byte	sUnk_82DEC3D
.L_11cf0:
	.4byte	gWarioData
.L_11cf4:
	.4byte	gButtonsPressed
.L_11cf8:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_11d04
	mov	r0, #5
	b	.L_11d6a
.L_11d04:
	ldr	r2, .L_11d18
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_11d1c
	ldrb	r0, [r3, #1]
	mov	r1, #128	@ 0x80
	orr	r0, r1
	b	.L_11d22
.L_11d18:
	.4byte	gButtonsHeld
.L_11d1c:
	ldrb	r1, [r3, #1]
	mov	r0, #15
	and	r0, r1
.L_11d22:
	strb	r0, [r3, #1]
	ldrh	r1, [r2, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	bne	.L_11d32
	mov	r0, #37	@ 0x25
	b	.L_11d6a
.L_11d32:
	ldr	r2, .L_11d64
	ldrb	r0, [r4, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldrb	r0, [r4, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_11d68
	mov	r0, #0
	strb	r0, [r4, #30]
	ldrb	r0, [r4, #31]
	add	r0, #1
	strb	r0, [r4, #31]
	ldrb	r1, [r4, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_11d68
	mov	r0, #35	@ 0x23
	b	.L_11d6a
.L_11d64:
	.4byte	sUnk_8306FA0
.L_11d68:
	mov	r0, #255	@ 0xff
.L_11d6a:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_8011D70
func_8011D70:
	push	{r4, r5, lr}
	ldr	r1, .L_11d8c
	ldrh	r2, [r1, #0]
	mov	r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_11d9c
	mov	r0, #128	@ 0x80
	and	r0, r2
	cmp	r0, #0
	beq	.L_11d90
	mov	r0, #42	@ 0x2a
	b	.L_11e12
	.align	2, 0
.L_11d8c:
	.4byte	gButtonsHeld
.L_11d90:
	mov	r0, #48	@ 0x30
	and	r0, r2
	cmp	r0, #0
	beq	.L_11d9c
	mov	r0, #254	@ 0xfe
	b	.L_11e12
.L_11d9c:
	ldrh	r1, [r1, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_11db4
	ldr	r1, .L_11db0
	ldrh	r0, [r1, #20]
	sub	r0, #4
	b	.L_11dc6
	.align	2, 0
.L_11db0:
	.4byte	gWarioData
.L_11db4:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	bne	.L_11dc0
	mov	r0, #41	@ 0x29
	b	.L_11e12
.L_11dc0:
	ldr	r1, .L_11e18
	ldrh	r0, [r1, #20]
	add	r0, #4
.L_11dc6:
	strh	r0, [r1, #20]
	add	r4, r1, #0
	add	r2, r4, #0
	ldr	r5, .L_11e1c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r5
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_11e10
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bne	.L_11df8
	mov	r0, #5
	bl	m4aSongNumStart
.L_11df8:
	ldrb	r1, [r4, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r5
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_11e10
	strb	r0, [r4, #31]
	ldr	r1, .L_11e20
	mov	r0, #7
	strb	r0, [r1, #0]
.L_11e10:
	mov	r0, #255	@ 0xff
.L_11e12:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_11e18:
	.4byte	gWarioData
.L_11e1c:
	.4byte	sUnk_8315EA4
.L_11e20:
	.4byte	gWarioDustEffect1


thumb_func_start func_8011E24
func_8011E24:
	ldr	r1, .L_11e3c
	ldrh	r2, [r1, #0]
	mov	r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_11e48
	mov	r0, #128	@ 0x80
	and	r0, r2
	cmp	r0, #0
	beq	.L_11e40
	mov	r0, #42	@ 0x2a
	b	.L_11e7c
.L_11e3c:
	.4byte	gButtonsHeld
.L_11e40:
	mov	r0, #48	@ 0x30
	and	r0, r2
	cmp	r0, #0
	bne	.L_11e66
.L_11e48:
	ldrh	r1, [r1, #0]
	mov	r0, #192	@ 0xc0
	and	r0, r1
	cmp	r0, #0
	beq	.L_11e56
	mov	r0, #40	@ 0x28
	b	.L_11e7c
.L_11e56:
	mov	r2, #48	@ 0x30
	and	r2, r1
	cmp	r2, #0
	beq	.L_11e76
	ldr	r1, .L_11e6c
	ldrb	r0, [r1, #10]
	cmp	r0, #10
	bls	.L_11e70
.L_11e66:
	mov	r0, #254	@ 0xfe
	b	.L_11e7c
	.align	2, 0
.L_11e6c:
	.4byte	gWarioData
.L_11e70:
	add	r0, #1
	strb	r0, [r1, #10]
	b	.L_11e7a
.L_11e76:
	ldr	r0, .L_11e80
	strb	r2, [r0, #10]
.L_11e7a:
	mov	r0, #255	@ 0xff
.L_11e7c:
	bx	lr
	.align	2, 0
.L_11e80:
	.4byte	gWarioData


thumb_func_start func_8011E84
func_8011E84:
	push	{r4, lr}
	ldr	r4, .L_11ec4
	ldrh	r0, [r4, #20]
	sub	r0, #111	@ 0x6f
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	GetBackgroundCollisionAtPosition
	asr	r0, r0, #16
	sub	r0, #2
	cmp	r0, #1
	bhi	.L_11ed0
	ldr	r0, .L_11ec8
	ldrh	r1, [r0, #0]
	mov	r2, #64	@ 0x40
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_11ebe
	ldr	r0, .L_11ecc
	ldrh	r1, [r0, #0]
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_11ee8
	ldrb	r0, [r4, #10]
	cmp	r0, #14
	bls	.L_11ef2
.L_11ebe:
	mov	r0, #41	@ 0x29
	b	.L_11f0e
	.align	2, 0
.L_11ec4:
	.4byte	gWarioData
.L_11ec8:
	.4byte	gButtonsPressed
.L_11ecc:
	.4byte	gButtonsHeld
.L_11ed0:
	ldrh	r0, [r4, #20]
	ldrh	r1, [r4, #18]
	bl	GetBackgroundCollisionAtPosition
	asr	r0, r0, #16
	sub	r0, #2
	cmp	r0, #1
	bls	.L_11ee8
	mov	r0, #2
	strb	r0, [r4, #8]
	mov	r0, #254	@ 0xfe
	b	.L_11f0e
.L_11ee8:
	ldr	r0, .L_11f14
	ldrb	r1, [r0, #10]
	add	r2, r0, #0
	cmp	r1, #14
	bhi	.L_11efc
.L_11ef2:
	ldr	r1, .L_11f14
	ldrb	r0, [r1, #10]
	add	r0, #1
	strb	r0, [r1, #10]
	add	r2, r1, #0
.L_11efc:
	ldrb	r0, [r2, #30]
	cmp	r0, #5
	bls	.L_11f0c
	mov	r0, #0
	strb	r0, [r2, #30]
	ldr	r1, .L_11f18
	mov	r0, #11
	strb	r0, [r1, #0]
.L_11f0c:
	mov	r0, #255	@ 0xff
.L_11f0e:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_11f14:
	.4byte	gWarioData
.L_11f18:
	.4byte	gWarioDustEffect1


thumb_func_start func_8011F1C
func_8011F1C:
	ldr	r0, .L_11f34
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_11f3c
	ldr	r1, .L_11f38
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r0, #254	@ 0xfe
	b	.L_11fe4
	.align	2, 0
.L_11f34:
	.4byte	gButtonsPressed
.L_11f38:
	.4byte	gWarioData
.L_11f3c:
	ldr	r1, .L_11f54
	ldrh	r2, [r1, #0]
	mov	r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_11f58
	mov	r0, #128	@ 0x80
	and	r0, r2
	cmp	r0, #0
	beq	.L_11f58
	mov	r0, #46	@ 0x2e
	b	.L_11fe4
.L_11f54:
	.4byte	gButtonsHeld
.L_11f58:
	ldrh	r1, [r1, #0]
	mov	r0, #192	@ 0xc0
	and	r0, r1
	cmp	r0, #0
	beq	.L_11f94
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_11f7c
	ldr	r1, .L_11f78
	ldrh	r0, [r1, #20]
	sub	r0, #4
	strh	r0, [r1, #20]
	add	r2, r1, #0
	b	.L_11fac
	.align	2, 0
.L_11f78:
	.4byte	gWarioData
.L_11f7c:
	mov	r0, #128	@ 0x80
	and	r0, r1
	ldr	r2, .L_11f90
	cmp	r0, #0
	beq	.L_11fac
	ldrh	r0, [r2, #20]
	add	r0, #4
	strh	r0, [r2, #20]
	b	.L_11fac
	.align	2, 0
.L_11f90:
	.4byte	gWarioData
.L_11f94:
	mov	r2, #48	@ 0x30
	and	r2, r1
	cmp	r2, #0
	beq	.L_11fa8
	ldr	r0, .L_11fa4
	strh	r2, [r0, #14]
	mov	r0, #44	@ 0x2c
	b	.L_11fe4
.L_11fa4:
	.4byte	gWarioData
.L_11fa8:
	mov	r0, #45	@ 0x2d
	b	.L_11fe4
.L_11fac:
	ldr	r3, .L_11fe8
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_11fe2
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
	bne	.L_11fe2
	strb	r0, [r2, #31]
	ldr	r1, .L_11fec
	mov	r0, #7
	strb	r0, [r1, #0]
.L_11fe2:
	mov	r0, #255	@ 0xff
.L_11fe4:
	bx	lr
	.align	2, 0
.L_11fe8:
	.4byte	sUnk_8315EA4
.L_11fec:
	.4byte	gWarioDustEffect1


thumb_func_start func_8011FF0
func_8011FF0:
	ldr	r0, .L_12008
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_12010
	ldr	r1, .L_1200c
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r0, #254	@ 0xfe
	b	.L_120a6
	.align	2, 0
.L_12008:
	.4byte	gButtonsPressed
.L_1200c:
	.4byte	gWarioData
.L_12010:
	ldr	r1, .L_12028
	ldrh	r2, [r1, #0]
	mov	r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_1202c
	mov	r0, #128	@ 0x80
	and	r0, r2
	cmp	r0, #0
	beq	.L_1202c
	mov	r0, #46	@ 0x2e
	b	.L_120a6
.L_12028:
	.4byte	gButtonsHeld
.L_1202c:
	ldrh	r1, [r1, #0]
	mov	r0, #192	@ 0xc0
	and	r0, r1
	cmp	r0, #0
	beq	.L_1203a
	mov	r0, #43	@ 0x2b
	b	.L_120a6
.L_1203a:
	mov	r2, #16
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_12054
	ldr	r1, .L_12050
	strh	r2, [r1, #14]
	ldrh	r0, [r1, #18]
	add	r0, #4
	b	.L_1206a
	.align	2, 0
.L_12050:
	.4byte	gWarioData
.L_12054:
	mov	r2, #32
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_12062
	mov	r0, #45	@ 0x2d
	b	.L_120a6
.L_12062:
	ldr	r1, .L_120a8
	strh	r2, [r1, #14]
	ldrh	r0, [r1, #18]
	sub	r0, #4
.L_1206a:
	strh	r0, [r1, #18]
	add	r2, r1, #0
	ldr	r3, .L_120ac
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_120a4
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
	bne	.L_120a4
	strb	r0, [r2, #31]
	ldr	r1, .L_120b0
	mov	r0, #7
	strb	r0, [r1, #0]
.L_120a4:
	mov	r0, #255	@ 0xff
.L_120a6:
	bx	lr
.L_120a8:
	.4byte	gWarioData
.L_120ac:
	.4byte	sUnk_8315F10
.L_120b0:
	.4byte	gWarioDustEffect1


thumb_func_start func_80120B4
func_80120B4:
	ldr	r0, .L_120cc
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_120d4
	ldr	r1, .L_120d0
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r0, #254	@ 0xfe
	b	.L_1210c
	.align	2, 0
.L_120cc:
	.4byte	gButtonsPressed
.L_120d0:
	.4byte	gWarioData
.L_120d4:
	ldr	r1, .L_120ec
	ldrh	r2, [r1, #0]
	mov	r0, #2
	and	r0, r2
	cmp	r0, #0
	beq	.L_120f0
	mov	r0, #128	@ 0x80
	and	r0, r2
	cmp	r0, #0
	beq	.L_120f0
	mov	r0, #46	@ 0x2e
	b	.L_1210c
.L_120ec:
	.4byte	gButtonsHeld
.L_120f0:
	ldrh	r1, [r1, #0]
	mov	r0, #192	@ 0xc0
	and	r0, r1
	cmp	r0, #0
	beq	.L_120fe
	mov	r0, #43	@ 0x2b
	b	.L_1210c
.L_120fe:
	mov	r0, #48	@ 0x30
	and	r0, r1
	cmp	r0, #0
	bne	.L_1210a
	mov	r0, #255	@ 0xff
	b	.L_1210c
.L_1210a:
	mov	r0, #44	@ 0x2c
.L_1210c:
	bx	lr
	.align	2, 0


thumb_func_start func_8012110
func_8012110:
	push	{r4, lr}
	ldr	r4, .L_12138
	ldrh	r0, [r4, #20]
	sub	r0, #111	@ 0x6f
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	GetBackgroundCollisionAtPosition
	asr	r0, r0, #16
	cmp	r0, #4
	bne	.L_12140
	ldr	r0, .L_1213c
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_12148
	mov	r0, #45	@ 0x2d
	b	.L_12154
.L_12138:
	.4byte	gWarioData
.L_1213c:
	.4byte	gButtonsHeld
.L_12140:
	mov	r0, #2
	strb	r0, [r4, #8]
	mov	r0, #254	@ 0xfe
	b	.L_12154
.L_12148:
	ldrb	r0, [r4, #10]
	cmp	r0, #14
	bhi	.L_12152
	add	r0, #1
	strb	r0, [r4, #10]
.L_12152:
	mov	r0, #255	@ 0xff
.L_12154:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_801215C
func_801215C:
	push	{r4, lr}
	ldr	r4, .L_12184
	mov	r0, #24
	ldrsh	r1, [r4, r0]
	mov	r0, #128	@ 0x80
	neg	r0, r0
	cmp	r1, r0
	bgt	.L_1219a
	ldrh	r0, [r4, #20]
	sub	r0, #119	@ 0x77
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	GetBackgroundCollisionAtPosition
	asr	r0, r0, #16
	cmp	r0, #4
	bne	.L_12188
	mov	r0, #46	@ 0x2e
	b	.L_121cc
.L_12184:
	.4byte	gWarioData
.L_12188:
	sub	r0, #2
	cmp	r0, #1
	bhi	.L_12192
	mov	r0, #42	@ 0x2a
	b	.L_121cc
.L_12192:
	mov	r0, #2
	strb	r0, [r4, #8]
	mov	r0, #254	@ 0xfe
	b	.L_121cc
.L_1219a:
	ldr	r2, .L_121d4
	ldrb	r0, [r4, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldrb	r0, [r4, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_121ca
	mov	r0, #0
	strb	r0, [r4, #30]
	ldrb	r0, [r4, #31]
	add	r0, #1
	strb	r0, [r4, #31]
	ldrb	r1, [r4, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_121ca
	strb	r0, [r4, #31]
.L_121ca:
	mov	r0, #255	@ 0xff
.L_121cc:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_121d4:
	.4byte	sUnk_8315FE8


thumb_func_start func_80121D8
func_80121D8:
	push	{r4, lr}
	ldr	r0, .L_121ec
	ldrh	r1, [r0, #12]
	add	r4, r1, #0
	add	r3, r0, #0
	cmp	r4, #0
	beq	.L_121f0
	sub	r0, r1, #1
	strh	r0, [r3, #12]
	b	.L_12248
.L_121ec:
	.4byte	gWarioData
.L_121f0:
	ldr	r2, .L_1222c
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r1, [r3, #30]
	ldrb	r0, [r0, #8]
	cmp	r1, r0
	bcc	.L_12248
	strb	r4, [r3, #30]
	ldrb	r0, [r3, #31]
	add	r1, r0, #1
	strb	r1, [r3, #31]
	ldr	r0, .L_12230
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bne	.L_12234
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #2
	bne	.L_12234
	ldrh	r1, [r3, #18]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #3
	cmp	r1, r0
	bls	.L_12248
	mov	r0, #255	@ 0xff
	strh	r0, [r3, #12]
	b	.L_12248
.L_1222c:
	.4byte	sUnk_8316048
.L_12230:
	.4byte	gCurrentStageNumber
.L_12234:
	ldrb	r0, [r3, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldrb	r0, [r1, #8]
	cmp	r0, #0
	bne	.L_12248
	mov	r0, #50	@ 0x32
	b	.L_1224a
.L_12248:
	mov	r0, #255	@ 0xff
.L_1224a:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_8012250
func_8012250:
	ldr	r2, .L_12290
	ldr	r3, .L_12294
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_122a0
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
	bne	.L_122a0
	ldr	r0, .L_12298
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_1229c
	mov	r0, #16
	strh	r0, [r2, #14]
	mov	r0, #58	@ 0x3a
	b	.L_122a2
.L_12290:
	.4byte	gWarioData
.L_12294:
	.4byte	sUnk_8315FE8
.L_12298:
	.4byte	gCurrentShopItem
.L_1229c:
	mov	r0, #2
	b	.L_122a2
.L_122a0:
	mov	r0, #255	@ 0xff
.L_122a2:
	bx	lr


thumb_func_start func_80122A4
func_80122A4:
	push	{r4, lr}
	ldr	r0, .L_122b8
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_122bc
	mov	r0, #3
	b	.L_12358
	.align	2, 0
.L_122b8:
	.4byte	gButtonsPressed
.L_122bc:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_122d8
	ldr	r0, .L_122d0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_122d4
	mov	r0, #34	@ 0x22
	b	.L_12358
.L_122d0:
	.4byte	gCurrentCarriedSprite
.L_122d4:
	mov	r0, #22
	b	.L_12358
.L_122d8:
	ldr	r0, .L_12314
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_12320
	ldr	r0, .L_12318
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_12320
	ldr	r4, .L_1231c
	ldrh	r0, [r4, #20]
	ldrh	r1, [r4, #18]
	bl	GetBackgroundCollisionAtPosition
	asr	r0, r0, #16
	cmp	r0, #1
	bne	.L_12320
	ldrh	r0, [r4, #20]
	sub	r0, #119	@ 0x77
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	GetBackgroundCollisionAtPosition
	asr	r0, r0, #16
	cmp	r0, #1
	bne	.L_12320
	mov	r0, #49	@ 0x31
	b	.L_12358
.L_12314:
	.4byte	gUnk_30031BE
.L_12318:
	.4byte	gButtonsHeld
.L_1231c:
	.4byte	gWarioData
.L_12320:
	ldr	r0, .L_12334
	ldr	r1, .L_12338
	ldrh	r2, [r0, #0]
	ldrh	r1, [r1, #14]
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_1233c
	mov	r0, #0
	b	.L_12358
.L_12334:
	.4byte	gButtonsHeld
.L_12338:
	.4byte	gWarioData
.L_1233c:
	mov	r0, #48	@ 0x30
	eor	r0, r1
	and	r0, r2
	cmp	r0, #0
	beq	.L_1234a
	mov	r0, #1
	b	.L_12358
.L_1234a:
	mov	r0, #64	@ 0x40
	and	r0, r2
	cmp	r0, #0
	beq	.L_12356
	mov	r0, #255	@ 0xff
	b	.L_12358
.L_12356:
	mov	r0, #2
.L_12358:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8012360
func_8012360:
	ldr	r1, .L_12374
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r0, .L_12378
	ldrb	r0, [r0, #30]
	cmp	r0, #15
	bhi	.L_1237c
	mov	r0, #255	@ 0xff
	b	.L_1237e
	.align	2, 0
.L_12374:
	.4byte	gCurrentCarriedSprite
.L_12378:
	.4byte	gWarioData
.L_1237c:
	mov	r0, #5
.L_1237e:
	bx	lr


thumb_func_start func_8012380
func_8012380:
	push	{r4, lr}
	ldr	r0, .L_12394
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_12398
	mov	r0, #3
	b	.L_123e2
	.align	2, 0
.L_12394:
	.4byte	gButtonsPressed
.L_12398:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_123a4
	mov	r0, #22
	b	.L_123e2
.L_123a4:
	mov	r3, #243	@ 0xf3
	and	r3, r1
	cmp	r3, #0
	beq	.L_123b0
	mov	r0, #2
	b	.L_123e2
.L_123b0:
	ldr	r2, .L_123e8
	ldr	r4, .L_123ec
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r4
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_123e0
	strb	r3, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_123e0
	strb	r0, [r2, #31]
.L_123e0:
	mov	r0, #255	@ 0xff
.L_123e2:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_123e8:
	.4byte	gWarioData
.L_123ec:
	.4byte	sUnk_834F1B4


thumb_func_start func_80123F0
func_80123F0:
	ldr	r0, .L_1240c
	ldrb	r1, [r0, #1]
	add	r2, r0, #0
	cmp	r1, #54	@ 0x36
	bne	.L_1242c
	ldr	r0, .L_12410
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_12414
	mov	r0, #3
	b	.L_1245e
	.align	2, 0
.L_1240c:
	.4byte	gWarioData
.L_12410:
	.4byte	gButtonsPressed
.L_12414:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_12420
	mov	r0, #22
	b	.L_1245e
.L_12420:
	mov	r0, #243	@ 0xf3
	and	r0, r1
	cmp	r0, #0
	beq	.L_1242c
	mov	r0, #2
	b	.L_1245e
.L_1242c:
	ldr	r3, .L_12460
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1245c
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
	bne	.L_1245c
	strb	r0, [r2, #31]
.L_1245c:
	mov	r0, #255	@ 0xff
.L_1245e:
	bx	lr
.L_12460:
	.4byte	sUnk_831D888


thumb_func_start func_8012464
func_8012464:
	ldr	r2, .L_12498
	ldr	r3, .L_1249c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_124a0
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
	bne	.L_124a0
	mov	r0, #57	@ 0x39
	b	.L_124a2
.L_12498:
	.4byte	gWarioData
.L_1249c:
	.4byte	sUnk_83528A0
.L_124a0:
	mov	r0, #255	@ 0xff
.L_124a2:
	bx	lr


thumb_func_start func_80124A4
func_80124A4:
	ldr	r2, .L_124dc
	ldr	r3, .L_124e0
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_124d6
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
	bne	.L_124d6
	strb	r0, [r2, #31]
.L_124d6:
	mov	r0, #255	@ 0xff
	bx	lr
	.align	2, 0
.L_124dc:
	.4byte	gWarioData
.L_124e0:
	.4byte	sUnk_8352930


thumb_func_start func_80124E4
func_80124E4:
	push	{lr}
	ldr	r0, .L_124fc
	ldrb	r1, [r0, #1]
	add	r2, r0, #0
	cmp	r1, #58	@ 0x3a
	bne	.L_12504
	ldrh	r1, [r2, #18]
	ldr	r0, .L_12500
	cmp	r1, r0
	bls	.L_12534
	mov	r0, #49	@ 0x31
	b	.L_1259e
.L_124fc:
	.4byte	gWarioData
.L_12500:
	.4byte	0x6DF
.L_12504:
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_12516
	ldrh	r1, [r2, #18]
	ldr	r0, .L_12530
	cmp	r1, r0
	bhi	.L_1252a
.L_12516:
	ldrh	r1, [r2, #14]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_12534
	ldrh	r1, [r2, #18]
	mov	r0, #156	@ 0x9c
	lsl	r0, r0, #3
	cmp	r1, r0
	bhi	.L_12534
.L_1252a:
	mov	r0, #65	@ 0x41
	b	.L_1259e
	.align	2, 0
.L_12530:
	.4byte	0x4DF
.L_12534:
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_12542
	mov	r0, #64	@ 0x40
	b	.L_12544
.L_12542:
	ldr	r0, .L_12580
.L_12544:
	strh	r0, [r2, #22]
	ldr	r3, .L_12584
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1259c
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
	bne	.L_1258c
	strb	r0, [r2, #31]
	ldr	r1, .L_12588
	mov	r0, #5
	strb	r0, [r1, #0]
	b	.L_1259c
	.align	2, 0
.L_12580:
	.4byte	0xFFC0
.L_12584:
	.4byte	sUnk_82F1200
.L_12588:
	.4byte	gWarioDustEffect1
.L_1258c:
	add	r0, r1, #0
	cmp	r0, #2
	beq	.L_12596
	cmp	r0, #9
	bne	.L_1259c
.L_12596:
	mov	r0, #1
	bl	m4aSongNumStart
.L_1259c:
	mov	r0, #255	@ 0xff
.L_1259e:
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_80125A4
func_80125A4:
	push	{r4, lr}
	ldr	r0, .L_125b8
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_125bc
	mov	r0, #3
	b	.L_12606
	.align	2, 0
.L_125b8:
	.4byte	gButtonsPressed
.L_125bc:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_125c8
	mov	r0, #22
	b	.L_12606
.L_125c8:
	mov	r3, #243	@ 0xf3
	and	r3, r1
	cmp	r3, #0
	beq	.L_125d4
	mov	r0, #2
	b	.L_12606
.L_125d4:
	ldr	r2, .L_1260c
	ldr	r4, .L_12610
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r4
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_12604
	strb	r3, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
.L_125fc:
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_12604
	strb	r0, [r2, #31]
.L_12604:
	mov	r0, #255	@ 0xff
.L_12606:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_1260c:
	.4byte	gWarioData
.L_12610:
	.4byte	sUnk_831D8F4


thumb_func_start func_8012614
func_8012614:
	push	{r4, lr}
	ldr	r0, .L_1262c
	ldrb	r2, [r0, #10]
	add	r4, r2, #0
	add	r3, r0, #0
	cmp	r4, #64	@ 0x40
	bls	.L_12630
	mov	r0, #96	@ 0x60
	strb	r0, [r3, #4]
	mov	r0, #4
	b	.L_12686
	.align	2, 0
.L_1262c:
	.4byte	gWarioData
.L_12630:
	ldr	r0, .L_12648
	ldrh	r0, [r0, #0]
	mov	r1, #48	@ 0x30
	and	r1, r0
	cmp	r1, #0
	beq	.L_1264c
	add	r0, r2, #0
	add	r0, #11
	strb	r0, [r3, #10]
	strh	r1, [r3, #14]
	b	.L_12654
	.align	2, 0
.L_12648:
	.4byte	gButtonsPressed
.L_1264c:
	cmp	r4, #0
	beq	.L_12654
	sub	r0, r2, #1
	strb	r0, [r3, #10]
.L_12654:
	ldr	r2, .L_1268c
	ldrb	r0, [r3, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldrb	r0, [r3, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_12684
	mov	r0, #0
	strb	r0, [r3, #30]
	ldrb	r0, [r3, #31]
	add	r0, #1
	strb	r0, [r3, #31]
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_12684
	strb	r0, [r3, #31]
.L_12684:
	mov	r0, #255	@ 0xff
.L_12686:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_1268c:
	.4byte	sUnk_831D9C0


thumb_func_start func_8012690
func_8012690:
	mov	r0, #255	@ 0xff
	bx	lr


thumb_func_start func_8012694
func_8012694:
	ldr	r0, .L_126a0
	ldrb	r0, [r0, #30]
	cmp	r0, #39	@ 0x27
	bhi	.L_126a4
	mov	r0, #255	@ 0xff
	b	.L_126a6
.L_126a0:
	.4byte	gWarioData
.L_126a4:
	mov	r0, #65	@ 0x41
.L_126a6:
	bx	lr


thumb_func_start func_80126A8
func_80126A8:
	push	{r4, r5, lr}
	ldr	r0, .L_126f8
	ldrb	r1, [r0, #0]
	add	r5, r0, #0
	ldr	r4, .L_126fc
	cmp	r1, #0
	bne	.L_126c6
	ldrb	r0, [r4, #31]
	cmp	r0, #0
	bne	.L_126c6
	ldrb	r0, [r4, #30]
	cmp	r0, #49	@ 0x31
	bhi	.L_126c6
	mov	r0, #50	@ 0x32
	strb	r0, [r4, #30]
.L_126c6:
	ldr	r2, .L_12700
	ldrb	r1, [r4, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r1, [r4, #30]
	ldrb	r0, [r0, #8]
	cmp	r1, r0
	bcc	.L_12724
	mov	r0, #0
	strb	r0, [r4, #30]
	ldrb	r3, [r4, #31]
	add	r1, r3, #1
	strb	r1, [r4, #31]
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_12704
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #9
	bne	.L_12704
	strb	r3, [r4, #31]
	b	.L_12718
	.align	2, 0
.L_126f8:
	.4byte	gCurrentPassage
.L_126fc:
	.4byte	gWarioData
.L_12700:
	.4byte	sUnk_8316294
.L_12704:
	ldrb	r1, [r4, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_12718
	sub	r0, r1, #4
	strb	r0, [r4, #31]
.L_12718:
	ldrb	r0, [r4, #31]
	cmp	r0, #1
	bne	.L_12724
	ldr	r0, .L_1272c
	bl	m4aSongNumStart
.L_12724:
	mov	r0, #255	@ 0xff
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_1272c:
	.4byte	0x1B1


thumb_func_start func_8012730
func_8012730:
	ldr	r2, .L_12768
	ldr	r3, .L_1276c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_12762
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
	bne	.L_12762
	strb	r0, [r2, #31]
.L_12762:
	mov	r0, #255	@ 0xff
	bx	lr
	.align	2, 0
.L_12768:
	.4byte	gWarioData
.L_1276c:
	.4byte	sUnk_831651C


thumb_func_start func_8012770
func_8012770:
	ldr	r2, .L_127a8
	ldr	r3, .L_127ac
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_127a4
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
	bne	.L_127a4
	sub	r0, r1, #1
	strb	r0, [r2, #31]
.L_127a4:
	mov	r0, #255	@ 0xff
	bx	lr
.L_127a8:
	.4byte	gWarioData
.L_127ac:
	.4byte	sUnk_8316558


thumb_func_start func_80127B0
func_80127B0:
	ldr	r2, .L_127e8
	ldr	r3, .L_127ec
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_127e2
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
	bne	.L_127e2
	strb	r0, [r2, #31]
.L_127e2:
	mov	r0, #255	@ 0xff
	bx	lr
	.align	2, 0
.L_127e8:
	.4byte	gWarioData
.L_127ec:
	.4byte	sUnk_831663C


thumb_func_start func_80127F0
func_80127F0:
	push	{r4, lr}
	ldr	r0, .L_12804
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_12808
	mov	r0, #3
	b	.L_12854
	.align	2, 0
.L_12804:
	.4byte	gButtonsPressed
.L_12808:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_12814
	mov	r0, #22
	b	.L_12854
.L_12814:
	mov	r3, #243	@ 0xf3
	and	r3, r1
	cmp	r3, #0
	beq	.L_12820
	mov	r0, #70	@ 0x46
	b	.L_12854
.L_12820:
	ldr	r2, .L_1285c
	ldr	r4, .L_12860
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r4
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_12852
	strb	r3, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_12852
	sub	r0, r1, #6
	strb	r0, [r2, #31]
.L_12852:
	mov	r0, #255	@ 0xff
.L_12854:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_1285c:
	.4byte	gWarioData
.L_12860:
	.4byte	sUnk_834F0A0


thumb_func_start func_8012864
func_8012864:
	ldr	r2, .L_12898
	ldr	r3, .L_1289c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_128a0
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
	bne	.L_128a0
	mov	r0, #2
	b	.L_128a2
.L_12898:
	.4byte	gWarioData
.L_1289c:
	.4byte	sUnk_834F190
.L_128a0:
	mov	r0, #255	@ 0xff
.L_128a2:
	bx	lr


thumb_func_start func_80128A4
func_80128A4:
	ldr	r0, .L_128bc
	ldrh	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_128c4
	ldr	r0, .L_128c0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_128c4
	mov	r0, #34	@ 0x22
	b	.L_12912
.L_128bc:
	.4byte	gButtonsPressed
.L_128c0:
	.4byte	gCurrentCarriedSprite
.L_128c4:
	ldr	r2, .L_12904
	ldr	r3, .L_12908
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_12910
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
	bne	.L_12910
	ldrb	r0, [r2, #7]
	cmp	r0, #0
	beq	.L_1290c
	mov	r0, #1
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_12912
	.align	2, 0
.L_12904:
	.4byte	gWarioData
.L_12908:
	.4byte	sUnk_82F1344
.L_1290c:
	mov	r0, #2
	b	.L_12912
.L_12910:
	mov	r0, #255	@ 0xff
.L_12912:
	bx	lr


thumb_func_start func_8012914
func_8012914:
	push	{r4, lr}
	ldr	r0, .L_12934
	ldrh	r3, [r0, #0]
	mov	r0, #1
	and	r0, r3
	ldr	r1, .L_12938
	cmp	r0, #0
	bne	.L_1292c
	add	r2, r1, #0
	ldrb	r0, [r2, #7]
	cmp	r0, #0
	beq	.L_1293c
.L_1292c:
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r0, #254	@ 0xfe
	b	.L_129ce
.L_12934:
	.4byte	gButtonsPressed
.L_12938:
	.4byte	gWarioData
.L_1293c:
	mov	r0, #2
	and	r0, r3
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	cmp	r4, #0
	beq	.L_1294c
	mov	r0, #23
	b	.L_129ce
.L_1294c:
	ldr	r0, .L_12974
	ldrh	r1, [r0, #0]
	ldrh	r3, [r2, #14]
	add	r0, r1, #0
	and	r0, r3
	cmp	r0, #0
	beq	.L_12982
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #2
	and	r0, r1
	cmp	r0, #0
	bne	.L_12986
	mov	r0, #16
	and	r0, r3
	cmp	r0, #0
	beq	.L_12978
	ldrh	r0, [r2, #22]
	sub	r0, #6
	b	.L_1297c
	.align	2, 0
.L_12974:
	.4byte	gButtonsHeld
.L_12978:
	ldrh	r0, [r2, #22]
	add	r0, #6
.L_1297c:
	strh	r0, [r2, #22]
	mov	r0, #0
	b	.L_129ce
.L_12982:
	mov	r0, #11
	b	.L_129ce
.L_12986:
	ldr	r3, .L_129b8
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_129cc
	strb	r4, [r2, #30]
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
	bne	.L_129bc
	strb	r0, [r2, #31]
	b	.L_129cc
	.align	2, 0
.L_129b8:
	.4byte	sUnk_82F1200
.L_129bc:
	add	r0, r1, #0
	cmp	r0, #2
	beq	.L_129c6
	cmp	r0, #9
	bne	.L_129cc
.L_129c6:
	mov	r0, #1
	bl	m4aSongNumStart
.L_129cc:
	mov	r0, #255	@ 0xff
.L_129ce:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_80129D4
func_80129D4:
	mov	r0, #255	@ 0xff
	bx	lr


thumb_func_start func_80129D8
func_80129D8:
	ldr	r2, .L_12a00
	ldrb	r0, [r2, #30]
	cmp	r0, #59	@ 0x3b
	bhi	.L_129f8
	mov	r0, #24
	ldrsh	r1, [r2, r0]
	mov	r0, #120	@ 0x78
	neg	r0, r0
	cmp	r1, r0
	bge	.L_12a08
	ldr	r0, .L_12a04
	ldrh	r1, [r0, #0]
	mov	r0, #48	@ 0x30
	and	r0, r1
	cmp	r0, #0
	beq	.L_12a08
.L_129f8:
	mov	r0, #2
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_12a0a
.L_12a00:
	.4byte	gWarioData
.L_12a04:
	.4byte	gButtonsHeld
.L_12a08:
	mov	r0, #255	@ 0xff
.L_12a0a:
	bx	lr


thumb_func_start func_8012A0C
func_8012A0C:
	ldr	r2, .L_12a40
	ldr	r3, .L_12a44
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_12a48
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
	bne	.L_12a48
	mov	r0, #2
	b	.L_12a4a
.L_12a40:
	.4byte	gWarioData
.L_12a44:
	.4byte	sUnk_82F1578
.L_12a48:
	mov	r0, #255	@ 0xff
.L_12a4a:
	bx	lr


thumb_func_start func_8012A4C
func_8012A4C:
	ldr	r2, .L_12a80
	ldr	r3, .L_12a84
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_12a88
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
	bne	.L_12a88
	mov	r0, #2
	b	.L_12a8a
.L_12a80:
	.4byte	gWarioData
.L_12a84:
	.4byte	sUnk_82E6A38
.L_12a88:
	mov	r0, #255	@ 0xff
.L_12a8a:
	bx	lr


thumb_func_start func_8012A8C
func_8012A8C:
	ldr	r0, .L_12aac
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_12ab4
	ldr	r0, .L_12ab0
	ldrh	r2, [r0, #0]
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #2
	add	r0, r1, #0
	and	r0, r2
	cmp	r0, r1
	bne	.L_12ab4
	mov	r0, #78	@ 0x4e
	b	.L_12aea
.L_12aac:
	.4byte	gButtonsPressed
.L_12ab0:
	.4byte	gButtonsHeld
.L_12ab4:
	ldr	r2, .L_12aec
	ldr	r3, .L_12af0
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_12ae8
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
	bne	.L_12ae8
	sub	r0, r1, #1
	strb	r0, [r2, #31]
.L_12ae8:
	mov	r0, #255	@ 0xff
.L_12aea:
	bx	lr
.L_12aec:
	.4byte	gWarioData
.L_12af0:
	.4byte	sUnk_83170DC


thumb_func_start func_8012AF4
func_8012AF4:
	push	{r4, lr}
	ldr	r0, .L_12b0c
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_12b14
	ldr	r1, .L_12b10
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r0, #254	@ 0xfe
	b	.L_12ba6
.L_12b0c:
	.4byte	gButtonsPressed
.L_12b10:
	.4byte	gWarioData
.L_12b14:
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_12b20
	mov	r0, #22
	b	.L_12ba6
.L_12b20:
	ldr	r0, .L_12b34
	ldr	r2, .L_12b38
	ldrh	r1, [r0, #0]
	ldrh	r0, [r2, #14]
	and	r0, r1
	cmp	r0, #0
	beq	.L_12b3c
	mov	r0, #0
	b	.L_12ba6
	.align	2, 0
.L_12b34:
	.4byte	gButtonsHeld
.L_12b38:
	.4byte	gWarioData
.L_12b3c:
	ldrb	r0, [r2, #10]
	cmp	r0, #0
	bne	.L_12b46
	mov	r0, #2
	b	.L_12ba6
.L_12b46:
	sub	r0, #1
	strb	r0, [r2, #10]
	ldrh	r0, [r2, #22]
	add	r0, #6
	mov	r4, #0
	strh	r0, [r2, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #64	@ 0x40
	ble	.L_12b5e
	mov	r0, #64	@ 0x40
	strh	r0, [r2, #22]
.L_12b5e:
	ldr	r3, .L_12b90
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_12ba4
	strb	r4, [r2, #30]
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
	bne	.L_12b94
	strb	r4, [r2, #31]
	b	.L_12ba4
	.align	2, 0
.L_12b90:
	.4byte	sUnk_82F1200
.L_12b94:
	add	r0, r1, #0
	cmp	r0, #2
	beq	.L_12b9e
	cmp	r0, #9
	bne	.L_12ba4
.L_12b9e:
	mov	r0, #1
	bl	m4aSongNumStart
.L_12ba4:
	mov	r0, #255	@ 0xff
.L_12ba6:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_8012BAC
func_8012BAC:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	bl	func_800FD28
	ldr	r2, .L_12bf0
	ldr	r0, .L_12bf4
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	str	r1, [r2, #4]
	ldr	r2, .L_12bf8
	ldrb	r0, [r2, #0]
	cmp	r0, #4
	beq	.L_12bd4
	ldr	r0, .L_12bfc
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
.L_12bd0:
	str	r0, [r2, #0]
	str	r1, [r2, #4]
.L_12bd4:
	ldr	r1, .L_12c00
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	cmp	r0, #4
	bne	.L_12c1c
	mov	r2, #2
	strh	r2, [r1, #0]
	ldr	r1, .L_12c04
	ldrb	r0, [r1, #1]
	cmp	r0, #17
.L_12be8:
	bne	.L_12c08
	mov	r0, #32
	strh	r0, [r1, #24]
	b	.L_12cc0
.L_12bf0:
	.4byte	gUnk_3001930
.L_12bf4:
	.4byte	sUnk_82DD0EC
.L_12bf8:
	.4byte	gCurrentWarioEffect
.L_12bfc:
	.4byte	sStartingWarioEffect
.L_12c00:
	.4byte	gSubGameMode
.L_12c04:
	.4byte	gWarioData
.L_12c08:
	cmp	r0, #18
	bne	.L_12c18
	ldr	r0, .L_12c14
	strh	r0, [r1, #24]
	b	.L_12cc0
	.align	2, 0
.L_12c14:
	.4byte	0xFFE0
.L_12c18:
	strb	r2, [r1, #31]
	b	.L_12cc0
.L_12c1c:
	ldr	r1, .L_12c54
	mov	r0, #0
	strb	r0, [r1, #2]
	cmp	r4, #5
	bne	.L_12c34
	ldr	r0, .L_12c58
	ldrh	r1, [r0, #28]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_12c34
	mov	r4, #12
.L_12c34:
	cmp	r4, #31
	bne	.L_12c74
	ldr	r1, .L_12c5c
	mov	r0, #0
	mov	r2, #1
	bl	func_8014090
	cmp	r0, #0
	beq	.L_12c60
	ldr	r0, .L_12c54
	ldr	r1, .L_12c58
	mov	r2, #60	@ 0x3c
	bl	memcpy
	b	.L_12cc0
	.align	2, 0
.L_12c54:
	.4byte	gWarioData
.L_12c58:
	.4byte	gWarioDataCopy
.L_12c5c:
	.4byte	0xFFC0
.L_12c60:
	ldr	r0, .L_12c8c
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_12c74
	ldr	r1, .L_12c90
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r4, #254	@ 0xfe
.L_12c74:
	ldr	r0, .L_12c90
	ldrb	r0, [r0, #1]
	cmp	r0, #35	@ 0x23
	bne	.L_12c94
	cmp	r4, #37	@ 0x25
	beq	.L_12ca6
	cmp	r4, #39	@ 0x27
	beq	.L_12ca6
	mov	r0, #40	@ 0x28
	bl	m4aSongNumStart
	b	.L_12ca6
.L_12c8c:
	.4byte	gButtonsHeld
.L_12c90:
	.4byte	gWarioDataCopy
.L_12c94:
	cmp	r0, #39	@ 0x27
	bne	.L_12ca6
	cmp	r4, #37	@ 0x25
	beq	.L_12ca6
	cmp	r4, #35	@ 0x23
	beq	.L_12ca6
	mov	r0, #40	@ 0x28
	bl	m4aSongNumStart
.L_12ca6:
	cmp	r4, #254	@ 0xfe
	bne	.L_12cb0
	bl	func_8012CC8
	b	.L_12cc0
.L_12cb0:
	cmp	r4, #253	@ 0xfd
	bne	.L_12cba
	bl	func_8012E5C
	b	.L_12cc0
.L_12cba:
	add	r0, r4, #0
	bl	func_801318C
.L_12cc0:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8012CC8
func_8012CC8:
	push	{r4, lr}
	ldr	r2, .L_12cec
	ldr	r1, .L_12cf0
	ldrh	r0, [r1, #22]
	strh	r0, [r2, #22]
	ldrb	r0, [r1, #1]
	sub	r0, #5
	add	r3, r2, #0
	add	r4, r1, #0
	cmp	r0, #47	@ 0x2f
	bls	.L_12ce0
	b	.L_12e06
.L_12ce0:
	lsl	r0, r0, #2
	ldr	r1, .L_12cf4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_12cec:
	.4byte	gWarioData
.L_12cf0:
	.4byte	gWarioDataCopy
.L_12cf4:
	.4byte	.L_12cf8
.L_12cf8:
	.4byte	.L_12dbe
	.4byte	.L_12dbe
	.4byte	.L_12dbe
	.4byte	.L_12dc2
	.4byte	.L_12dbe
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12dc6
	.4byte	.L_12e06
	.4byte	.L_12dfc
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12dca
	.4byte	.L_12dd4
	.4byte	.L_12df6
	.4byte	.L_12e06
	.4byte	.L_12dfc
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12dfc
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12dec
	.4byte	.L_12dec
	.4byte	.L_12dec
	.4byte	.L_12e06
	.4byte	.L_12dfc
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12e06
	.4byte	.L_12db8
.L_12db8:
	ldrb	r0, [r3, #9]
	add	r0, #1
	strb	r0, [r3, #9]
.L_12dbe:
	mov	r0, #0
	strh	r0, [r3, #22]
.L_12dc2:
	mov	r0, #8
	b	.L_12dee
.L_12dc6:
	mov	r0, #15
	b	.L_12dee
.L_12dca:
	mov	r0, #24
	strb	r0, [r3, #1]
	mov	r0, #176	@ 0xb0
	strh	r0, [r3, #24]
	b	.L_12e3a
.L_12dd4:
	mov	r0, #25
	strb	r0, [r3, #1]
	mov	r0, #176	@ 0xb0
	strh	r0, [r3, #24]
	ldrh	r0, [r4, #12]
	strh	r0, [r3, #12]
	ldr	r1, .L_12de8
	mov	r0, #3
	strb	r0, [r1, #0]
	b	.L_12e3a
.L_12de8:
	.4byte	gCurrentWarioEffect
.L_12dec:
	mov	r0, #4
.L_12dee:
	strb	r0, [r3, #1]
	mov	r0, #128	@ 0x80
	strh	r0, [r3, #24]
	b	.L_12e3a
.L_12df6:
	mov	r0, #31
	bl	m4aSongNumStart
.L_12dfc:
	ldr	r1, .L_12e1c
	mov	r0, #0
	strh	r0, [r1, #22]
	add	r3, r1, #0
	ldr	r4, .L_12e20
.L_12e06:
	mov	r0, #4
	strb	r0, [r3, #1]
	ldr	r2, .L_12e24
	ldrb	r1, [r2, #1]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #1
	bls	.L_12e28
	mov	r0, #128	@ 0x80
	b	.L_12e2a
	.align	2, 0
.L_12e1c:
	.4byte	gWarioData
.L_12e20:
	.4byte	gWarioDataCopy
.L_12e24:
	.4byte	gCurrentCarriedSprite
.L_12e28:
	mov	r0, #176	@ 0xb0
.L_12e2a:
	strh	r0, [r3, #24]
	ldrb	r1, [r2, #1]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_12e3a
	mov	r0, #4
	strb	r0, [r2, #0]
.L_12e3a:
	ldrb	r0, [r4, #8]
	cmp	r0, #0
	bne	.L_12e44
	strh	r0, [r3, #24]
	b	.L_12e54
.L_12e44:
	cmp	r0, #2
	bne	.L_12e4e
	ldrh	r0, [r4, #24]
	strh	r0, [r3, #24]
	b	.L_12e54
.L_12e4e:
	mov	r0, #13
	bl	m4aSongNumStart
.L_12e54:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8012E5C
func_8012E5C:
	push	{r4, r5, r6, r7, lr}
	ldr	r1, .L_12e7c
	mov	r0, #9
	strb	r0, [r1, #0]
	ldr	r1, .L_12e80
	ldrb	r0, [r1, #1]
	sub	r0, #4
	add	r7, r1, #0
	cmp	r0, #57	@ 0x39
	bls	.L_12e72
	b	.L_1312e
.L_12e72:
	lsl	r0, r0, #2
	ldr	r1, .L_12e84
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_12e7c:
	.4byte	gWarioDustEffect1
.L_12e80:
	.4byte	gWarioDataCopy
.L_12e84:
	.4byte	.L_12e88
.L_12e88:
	.4byte	.L_12ffc
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_13028
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1304c
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_13120
	.4byte	.L_13120
	.4byte	.L_1312e
	.4byte	.L_12f70
	.4byte	.L_13060
	.4byte	.L_12f70
	.4byte	.L_13060
	.4byte	.L_1312e
	.4byte	.L_130c4
	.4byte	.L_130e8
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_13126
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_1312e
	.4byte	.L_13114
.L_12f70:
	ldr	r0, .L_12f88
	ldrh	r1, [r0, #0]
	ldrh	r0, [r7, #14]
	and	r0, r1
	cmp	r0, #0
	beq	.L_12f90
	ldr	r0, .L_12f8c
	mov	r1, #0
	strb	r1, [r0, #1]
	ldrh	r1, [r7, #22]
	strh	r1, [r0, #22]
	b	.L_12fe8
.L_12f88:
	.4byte	gButtonsHeld
.L_12f8c:
	.4byte	gWarioData
.L_12f90:
	ldr	r6, .L_12fe0
	ldrh	r0, [r6, #20]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r6, #18]
	sub	r1, #30
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	GetBackgroundCollisionAtPosition
	add	r4, r0, #0
	asr	r4, r4, #16
	mov	r5, #255	@ 0xff
	and	r4, r5
	ldrh	r0, [r6, #20]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r6, #18]
	add	r1, #30
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	GetBackgroundCollisionAtPosition
	asr	r0, r0, #16
	and	r0, r5
	cmp	r4, #11
	beq	.L_12fce
	cmp	r0, #11
	bne	.L_12fe4
.L_12fce:
	mov	r0, #10
	strb	r0, [r6, #1]
	mov	r0, #22
	ldrsh	r1, [r7, r0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	asr	r0, r0, #2
	strh	r0, [r6, #22]
	b	.L_12fe8
.L_12fe0:
	.4byte	gWarioData
.L_12fe4:
	mov	r0, #2
	strb	r0, [r6, #1]
.L_12fe8:
	ldr	r1, .L_12ff8
	ldrb	r0, [r7, #7]
	strb	r0, [r1, #7]
	mov	r0, #31
	bl	m4aSongNumStart
	b	.L_13134
	.align	2, 0
.L_12ff8:
	.4byte	gWarioData
.L_12ffc:
	ldr	r0, .L_13014
	ldrh	r1, [r0, #0]
	ldrh	r0, [r7, #14]
	and	r0, r1
	cmp	r0, #0
	beq	.L_1301c
	ldr	r0, .L_13018
	mov	r1, #0
	strb	r1, [r0, #1]
	ldrh	r1, [r7, #22]
	strh	r1, [r0, #22]
	b	.L_1303e
.L_13014:
	.4byte	gButtonsHeld
.L_13018:
	.4byte	gWarioData
.L_1301c:
	ldr	r1, .L_13024
	mov	r0, #2
	b	.L_1303c
	.align	2, 0
.L_13024:
	.4byte	gWarioData
.L_13028:
	ldrb	r0, [r7, #9]
	cmp	r0, #0
	beq	.L_13038
	ldr	r1, .L_13034
	mov	r0, #52	@ 0x34
	b	.L_1303c
.L_13034:
	.4byte	gWarioData
.L_13038:
	ldr	r1, .L_13048
	mov	r0, #5
.L_1303c:
	strb	r0, [r1, #1]
.L_1303e:
	ldr	r1, .L_13048
	ldrb	r0, [r7, #7]
	strb	r0, [r1, #7]
	b	.L_13134
	.align	2, 0
.L_13048:
	.4byte	gWarioData
.L_1304c:
	ldr	r1, .L_1305c
	mov	r0, #14
	strb	r0, [r1, #1]
	ldrb	r0, [r7, #7]
	strb	r0, [r1, #7]
	ldrh	r0, [r7, #22]
	strh	r0, [r1, #22]
	b	.L_13134
.L_1305c:
	.4byte	gWarioData
.L_13060:
	ldr	r0, .L_13088
	ldrh	r1, [r0, #0]
	ldrh	r0, [r7, #14]
	and	r0, r1
	cmp	r0, #0
	beq	.L_130a4
	mov	r2, #192	@ 0xc0
	lsl	r2, r2, #2
	and	r2, r1
	cmp	r2, #0
	beq	.L_13094
	ldr	r1, .L_1308c
	mov	r0, #23
	strb	r0, [r1, #1]
	ldrh	r0, [r7, #12]
	strh	r0, [r1, #12]
	ldr	r2, .L_13090
	mov	r0, #3
	strb	r0, [r2, #0]
	b	.L_1309a
.L_13088:
	.4byte	gButtonsHeld
.L_1308c:
	.4byte	gWarioData
.L_13090:
	.4byte	gCurrentWarioEffect
.L_13094:
	ldr	r0, .L_130a0
	strb	r2, [r0, #1]
	add	r1, r0, #0
.L_1309a:
	ldrb	r0, [r7, #7]
	strb	r0, [r1, #7]
	b	.L_130aa
.L_130a0:
	.4byte	gWarioData
.L_130a4:
	ldr	r1, .L_130c0
	mov	r0, #11
	strb	r0, [r1, #1]
.L_130aa:
	ldr	r0, .L_130c0
	ldrh	r1, [r7, #22]
	strh	r1, [r0, #22]
	ldrb	r0, [r0, #1]
	cmp	r0, #23
	beq	.L_13134
	mov	r0, #42	@ 0x2a
	bl	m4aSongNumStart
	b	.L_13134
	.align	2, 0
.L_130c0:
	.4byte	gWarioData
.L_130c4:
	ldr	r1, .L_130e0
	mov	r0, #29
	strb	r0, [r1, #1]
	ldr	r1, .L_130e4
	mov	r0, #3
	strb	r0, [r1, #0]
	mov	r0, #48	@ 0x30
	mov	r1, #0
	bl	ScreenShakeRequestY
	mov	r0, #34	@ 0x22
	bl	m4aSongNumStart
	b	.L_13134
.L_130e0:
	.4byte	gWarioData
.L_130e4:
	.4byte	gUnk_3001930
.L_130e8:
	ldr	r1, .L_1310c
	mov	r0, #30
	strb	r0, [r1, #1]
	ldr	r1, .L_13110
	mov	r0, #3
	strb	r0, [r1, #0]
	mov	r0, #64	@ 0x40
	mov	r1, #1
	bl	ScreenShakeRequestY
	mov	r0, #36	@ 0x24
	bl	m4aSongNumStart
	mov	r0, #0
	bl	VoiceSetPlay
	b	.L_13134
	.align	2, 0
.L_1310c:
	.4byte	gWarioData
.L_13110:
	.4byte	gUnk_3001930
.L_13114:
	ldr	r1, .L_1311c
	mov	r0, #62	@ 0x3e
	b	.L_13132
	.align	2, 0
.L_1311c:
	.4byte	gWarioData
.L_13120:
	ldr	r1, .L_13180
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #4]
.L_13126:
	ldr	r1, .L_13184
	mov	r0, #0
	strb	r0, [r1, #0]
	strb	r0, [r1, #1]
.L_1312e:
	ldr	r1, .L_13180
	mov	r0, #2
.L_13132:
	strb	r0, [r1, #1]
.L_13134:
	ldr	r4, .L_13180
	ldrb	r0, [r4, #1]
	sub	r0, #29
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bls	.L_13148
	mov	r0, #12
	bl	m4aSongNumStart
.L_13148:
	ldrb	r0, [r4, #1]
	cmp	r0, #2
	bne	.L_13162
	ldr	r0, .L_13188
	ldrh	r1, [r0, #4]
	mov	r0, #0
	mov	r2, #1
	bl	func_8014090
	cmp	r0, #0
	beq	.L_13162
	mov	r0, #5
	strb	r0, [r4, #1]
.L_13162:
	ldr	r2, .L_13184
	ldrb	r1, [r2, #1]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_13178
	ldrb	r0, [r2, #0]
	cmp	r0, #8
	beq	.L_13178
	mov	r0, #4
	strb	r0, [r2, #0]
.L_13178:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_13180:
	.4byte	gWarioData
.L_13184:
	.4byte	gCurrentCarriedSprite
.L_13188:
	.4byte	sUnk_82DEB60


thumb_func_start func_801318C
func_801318C:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	ldr	r0, .L_131a8
	ldrb	r0, [r0, #1]
	sub	r0, #22
	cmp	r0, #37	@ 0x25
	bhi	.L_13284
	lsl	r0, r0, #2
	ldr	r1, .L_131ac
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_131a8:
	.4byte	gWarioDataCopy
.L_131ac:
	.4byte	.L_131b0
.L_131b0:
	.4byte	.L_13248
	.4byte	.L_1325c
	.4byte	.L_13248
	.4byte	.L_1325c
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13270
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13278
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13284
	.4byte	.L_13278
.L_13248:
	cmp	r4, #26
	bne	.L_13254
	mov	r0, #32
	bl	m4aSongNumStart
	b	.L_13284
.L_13254:
	mov	r0, #31
	bl	m4aSongNumStart
	b	.L_13284
.L_1325c:
	cmp	r4, #26
	bne	.L_13268
	mov	r0, #44	@ 0x2c
	bl	m4aSongNumStart
	b	.L_13284
.L_13268:
	mov	r0, #42	@ 0x2a
	bl	m4aSongNumStart
	b	.L_13284
.L_13270:
	mov	r0, #36	@ 0x24
	bl	m4aSongNumStart
	b	.L_13284
.L_13278:
	ldr	r0, .L_1329c
	bl	m4aSongNumStart
	mov	r0, #9
	bl	VoiceSetPlay
.L_13284:
	ldr	r0, .L_132a0
	strb	r4, [r0, #1]
	sub	r1, r4, #1
	add	r3, r0, #0
	cmp	r1, #76	@ 0x4c
	bls	.L_13292
	b	.L_13884
.L_13292:
	lsl	r0, r1, #2
	ldr	r1, .L_132a4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_1329c:
	.4byte	0x1BD
.L_132a0:
	.4byte	gWarioData
.L_132a4:
	.4byte	.L_132a8
.L_132a8:
	.4byte	.L_133dc
	.4byte	.L_133e8
	.4byte	.L_1388a
	.4byte	.L_136e4
	.4byte	.L_1344c
	.4byte	.L_1346c
	.4byte	.L_1388a
	.4byte	.L_13884
	.4byte	.L_133dc
	.4byte	.L_13490
	.4byte	.L_134cc
	.4byte	.L_134e0
	.4byte	.L_13884
	.4byte	.L_13884
	.4byte	.L_13884
	.4byte	.L_13514
	.4byte	.L_1354c
	.4byte	.L_13578
	.4byte	.L_135b4
	.4byte	.L_13884
	.4byte	.L_13648
	.4byte	.L_1365c
	.4byte	.L_13670
	.4byte	.L_13884
	.4byte	.L_13884
	.4byte	.L_1368c
	.4byte	.L_136d8
	.4byte	.L_136f4
	.4byte	.L_13884
	.4byte	.L_13884
	.4byte	.L_13718
	.4byte	.L_13740
	.4byte	.L_13750
	.4byte	.L_13428
	.4byte	.L_13760
	.4byte	.L_1377a
	.4byte	.L_13788
	.4byte	.L_13774
	.4byte	.L_133dc
	.4byte	.L_1388a
	.4byte	.L_13790
	.4byte	.L_137a8
	.4byte	.L_1388a
	.4byte	.L_1388a
	.4byte	.L_1388a
	.4byte	.L_13884
	.4byte	.L_137bc
	.4byte	.L_13884
	.4byte	.L_137c2
	.4byte	.L_13884
	.4byte	.L_13884
	.4byte	.L_1344c
	.4byte	.L_137f4
	.4byte	.L_13804
	.4byte	.L_13800
	.4byte	.L_13810
	.4byte	.L_13820
	.4byte	.L_13884
	.4byte	.L_13804
	.4byte	.L_1388a
	.4byte	.L_136e4
	.4byte	.L_1388a
	.4byte	.L_13884
	.4byte	.L_13884
	.4byte	.L_1382c
	.4byte	.L_13884
	.4byte	.L_13876
	.4byte	.L_13884
	.4byte	.L_13884
	.4byte	.L_13884
	.4byte	.L_13884
	.4byte	.L_13884
	.4byte	.L_13884
	.4byte	.L_13884
	.4byte	.L_13884
	.4byte	.L_13884
	.4byte	.L_1388a
.L_133dc:
	mov	r0, #1
	strb	r0, [r3, #3]
	mov	r0, #8
	bl	m4aSongNumStart
	b	.L_1388a
.L_133e8:
	ldr	r0, .L_13408
	ldrh	r1, [r0, #4]
	mov	r0, #0
	mov	r2, #1
	bl	func_8014090
	cmp	r0, #0
	beq	.L_13414
	ldr	r1, .L_1340c
	mov	r2, #0
	mov	r0, #5
	strb	r0, [r1, #1]
	ldr	r0, .L_13410
	strb	r2, [r0, #0]
	b	.L_1388a
	.align	2, 0
.L_13408:
	.4byte	sUnk_82DEB60
.L_1340c:
	.4byte	gWarioData
.L_13410:
	.4byte	gCurrentCarriedSprite
.L_13414:
	ldr	r1, .L_13424
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_1341e
	b	.L_1388a
.L_1341e:
	mov	r0, #4
	strb	r0, [r1, #0]
	b	.L_1388a
.L_13424:
	.4byte	gCurrentCarriedSprite
.L_13428:
	ldr	r0, .L_13444
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_13436
	b	.L_1388a
.L_13436:
	ldr	r2, .L_13448
	ldrb	r1, [r2, #1]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	strb	r0, [r2, #1]
	b	.L_1388a
	.align	2, 0
.L_13444:
	.4byte	gButtonsHeld
.L_13448:
	.4byte	gCurrentCarriedSprite
.L_1344c:
	ldr	r1, .L_13468
	mov	r0, #0
	strb	r0, [r1, #0]
	mov	r0, #52	@ 0x34
	ldrsh	r1, [r3, r0]
	mov	r0, #80	@ 0x50
	neg	r0, r0
	cmp	r1, r0
	blt	.L_13460
	b	.L_1388a
.L_13460:
	mov	r0, #7
	bl	m4aSongNumStart
	b	.L_1388a
.L_13468:
	.4byte	gCurrentCarriedSprite
.L_1346c:
	ldr	r0, .L_1347c
	ldrh	r1, [r0, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_13480
	mov	r0, #96	@ 0x60
	b	.L_13482
.L_1347c:
	.4byte	gWarioDataCopy
.L_13480:
	ldr	r0, .L_1348c
.L_13482:
	strh	r0, [r3, #22]
	mov	r0, #10
	bl	m4aSongNumStart
	b	.L_1388a
.L_1348c:
	.4byte	0xFFA0
.L_13490:
	ldrh	r1, [r3, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_134b0
	ldr	r0, .L_134ac
	ldrh	r1, [r0, #22]
	mov	r2, #22
	ldrsh	r0, [r0, r2]
	cmp	r0, #31
	bgt	.L_134c2
	mov	r0, #32
	b	.L_13888
	.align	2, 0
.L_134ac:
	.4byte	gWarioDataCopy
.L_134b0:
	ldr	r0, .L_134c8
	ldrh	r2, [r0, #22]
	mov	r1, #22
	ldrsh	r0, [r0, r1]
	mov	r1, #32
	neg	r1, r1
	cmp	r0, r1
	bgt	.L_134c2
	b	.L_136ce
.L_134c2:
	strh	r1, [r3, #22]
	b	.L_1388a
	.align	2, 0
.L_134c8:
	.4byte	gWarioDataCopy
.L_134cc:
	ldr	r0, .L_134d8
	ldrh	r0, [r0, #22]
	strh	r0, [r3, #22]
	ldr	r1, .L_134dc
	b	.L_137f6
	.align	2, 0
.L_134d8:
	.4byte	gWarioDataCopy
.L_134dc:
	.4byte	gWarioDustEffect1
.L_134e0:
	ldr	r0, .L_13508
	ldrh	r0, [r0, #28]
	mov	r1, #48	@ 0x30
	eor	r0, r1
	and	r0, r1
	mov	r1, #0
	strh	r0, [r3, #14]
	ldr	r0, .L_1350c
	strb	r1, [r0, #0]
	ldr	r1, .L_13510
	mov	r0, #5
	strb	r0, [r1, #0]
	mov	r0, #45	@ 0x2d
	bl	m4aSongNumStart
	mov	r0, #0
	bl	VoiceSetPlay
	b	.L_1388a
	.align	2, 0
.L_13508:
	.4byte	gWarioDataCopy
.L_1350c:
	.4byte	gCurrentCarriedSprite
.L_13510:
	.4byte	gWarioDustEffect1
.L_13514:
	ldr	r2, .L_13524
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_1352c
	ldr	r0, .L_13528
	b	.L_1352e
.L_13524:
	.4byte	gWarioDataCopy
.L_13528:
	.4byte	0xFFE0
.L_1352c:
	mov	r0, #32
.L_1352e:
	strh	r0, [r3, #22]
	ldrb	r2, [r2, #26]
	cmp	r2, #1
	bhi	.L_13544
	mov	r0, #96	@ 0x60
	strh	r0, [r3, #24]
	cmp	r2, #1
	bne	.L_13544
	ldrh	r0, [r3, #20]
	sub	r0, #2
	strh	r0, [r3, #20]
.L_13544:
	mov	r0, #46	@ 0x2e
	bl	m4aSongNumStart
	b	.L_1388a
.L_1354c:
	ldr	r1, .L_13568
	mov	r0, #4
	strh	r0, [r1, #0]
	mov	r0, #32
	strh	r0, [r3, #24]
	ldr	r2, .L_1356c
	ldr	r1, .L_13570
	ldrh	r0, [r1, #18]
	strh	r0, [r2, #0]
	ldr	r2, .L_13574
	ldrh	r0, [r1, #20]
	sub	r0, #128	@ 0x80
	b	.L_13590
	.align	2, 0
.L_13568:
	.4byte	gSubGameMode
.L_1356c:
	.4byte	gUnk_3001890
.L_13570:
	.4byte	gWarioDataCopy
.L_13574:
	.4byte	gUnk_3001892
.L_13578:
	ldr	r1, .L_135a0
	mov	r0, #4
	strh	r0, [r1, #0]
	ldr	r0, .L_135a4
	strh	r0, [r3, #24]
	ldr	r2, .L_135a8
	ldr	r1, .L_135ac
	ldrh	r0, [r1, #18]
	strh	r0, [r2, #0]
	ldr	r2, .L_135b0
	ldrh	r0, [r1, #20]
	add	r0, #1
.L_13590:
	strh	r0, [r2, #0]
	mov	r0, #1
	strb	r0, [r3, #2]
	mov	r0, #20
	bl	m4aSongNumStart
	b	.L_1388a
	.align	2, 0
.L_135a0:
	.4byte	gSubGameMode
.L_135a4:
	.4byte	0xFFE0
.L_135a8:
	.4byte	gUnk_3001890
.L_135ac:
	.4byte	gWarioDataCopy
.L_135b0:
	.4byte	gUnk_3001892
.L_135b4:
	ldr	r1, .L_135f4
	ldrb	r0, [r1, #2]
	cmp	r0, #0
	bne	.L_135d4
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_135d4
	sub	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_135f8
	ldrh	r0, [r1, #20]
	sub	r0, #96	@ 0x60
	ldrh	r1, [r1, #18]
	mov	r2, #48	@ 0x30
	bl	SpriteSpawnSecondary
.L_135d4:
	ldr	r4, .L_135f8
	mov	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_135fc
	ldrh	r1, [r0, #4]
	mov	r0, #0
	mov	r2, #1
	bl	func_8014090
	cmp	r0, #0
	beq	.L_13600
	mov	r0, #20
	strb	r0, [r4, #1]
	mov	r0, #64	@ 0x40
	b	.L_13602
	.align	2, 0
.L_135f4:
	.4byte	gHeartMeter
.L_135f8:
	.4byte	gWarioData
.L_135fc:
	.4byte	sUnk_82DEB60
.L_13600:
	mov	r0, #96	@ 0x60
.L_13602:
	strh	r0, [r4, #24]
	ldr	r0, .L_13618
	ldrh	r1, [r0, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_13624
	ldr	r1, .L_1361c
	ldr	r0, .L_13620
	b	.L_13628
	.align	2, 0
.L_13618:
	.4byte	gWarioDataCopy
.L_1361c:
	.4byte	gWarioData
.L_13620:
	.4byte	0xFFE0
.L_13624:
	ldr	r1, .L_13640
	mov	r0, #32
.L_13628:
	strh	r0, [r1, #22]
	ldr	r1, .L_13644
	mov	r0, #0
	strb	r0, [r1, #0]
	mov	r0, #19
	bl	m4aSongNumStart
	mov	r0, #4
	bl	VoiceSetPlay
	b	.L_1388a
	.align	2, 0
.L_13640:
	.4byte	gWarioData
.L_13644:
	.4byte	gCurrentCarriedSprite
.L_13648:
	ldr	r1, .L_13658
	ldrb	r0, [r1, #26]
	cmp	r0, #2
	beq	.L_13654
	mov	r0, #64	@ 0x40
	strh	r0, [r3, #24]
.L_13654:
	ldrh	r0, [r1, #22]
	b	.L_13888
.L_13658:
	.4byte	gWarioDataCopy
.L_1365c:
	ldr	r0, .L_1366c
	ldrh	r0, [r0, #22]
	strh	r0, [r3, #22]
	mov	r0, #30
	bl	m4aSongNumStart
	b	.L_1388a
	.align	2, 0
.L_1366c:
	.4byte	gWarioDataCopy
.L_13670:
	ldr	r0, .L_13684
	ldrh	r0, [r0, #22]
	strh	r0, [r3, #22]
	ldr	r1, .L_13688
	mov	r0, #3
	strb	r0, [r1, #0]
	mov	r0, #41	@ 0x29
	bl	m4aSongNumStart
	b	.L_1388a
.L_13684:
	.4byte	gWarioDataCopy
.L_13688:
	.4byte	gCurrentWarioEffect
.L_1368c:
	mov	r0, #8
	strb	r0, [r3, #31]
	ldr	r2, .L_136a0
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_136a8
	ldr	r0, .L_136a4
	b	.L_136aa
.L_136a0:
	.4byte	gWarioDataCopy
.L_136a4:
	.4byte	0xFFE0
.L_136a8:
	mov	r0, #32
.L_136aa:
	strh	r0, [r3, #22]
	ldrb	r1, [r2, #26]
	cmp	r1, #1
	bhi	.L_136d2
	ldrb	r2, [r2, #8]
	cmp	r2, #0
	beq	.L_136ca
	mov	r0, #80	@ 0x50
	strh	r0, [r3, #24]
	cmp	r1, #1
	beq	.L_136c2
	b	.L_1388a
.L_136c2:
	ldrh	r0, [r3, #20]
	sub	r0, #2
	strh	r0, [r3, #20]
	b	.L_1388a
.L_136ca:
	mov	r0, #48	@ 0x30
	strh	r0, [r3, #24]
.L_136ce:
	strh	r2, [r3, #22]
	b	.L_1388a
.L_136d2:
	mov	r0, #20
	strh	r0, [r3, #24]
	b	.L_1388a
.L_136d8:
	ldr	r1, .L_136ec
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_136e4
	mov	r0, #8
	strb	r0, [r1, #0]
.L_136e4:
	ldr	r0, .L_136f0
	ldrh	r0, [r0, #24]
	strh	r0, [r3, #24]
	b	.L_1388a
.L_136ec:
	.4byte	gCurrentCarriedSprite
.L_136f0:
	.4byte	gWarioDataCopy
.L_136f4:
	ldr	r1, .L_13710
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_13700
	mov	r0, #8
	strb	r0, [r1, #0]
.L_13700:
	ldr	r0, .L_13714
	ldrh	r0, [r0, #24]
	strh	r0, [r3, #24]
	mov	r0, #35	@ 0x23
	bl	m4aSongNumStart
	b	.L_1388a
	.align	2, 0
.L_13710:
	.4byte	gCurrentCarriedSprite
.L_13714:
	.4byte	gWarioDataCopy
.L_13718:
	ldr	r0, .L_13738
	ldrh	r0, [r0, #22]
	strh	r0, [r3, #22]
	mov	r0, #96	@ 0x60
	strh	r0, [r3, #24]
	ldr	r2, .L_1373c
	ldrb	r1, [r2, #1]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_13730
	b	.L_1388a
.L_13730:
	mov	r0, #4
	strb	r0, [r2, #0]
	b	.L_1388a
	.align	2, 0
.L_13738:
	.4byte	gWarioDataCopy
.L_1373c:
	.4byte	gCurrentCarriedSprite
.L_13740:
	ldr	r1, .L_1374c
	mov	r0, #1
	strb	r0, [r1, #0]
	strb	r0, [r1, #1]
	b	.L_1388a
	.align	2, 0
.L_1374c:
	.4byte	gCurrentCarriedSprite
.L_13750:
	ldr	r0, .L_1375c
	mov	r1, #1
	strb	r1, [r0, #0]
	mov	r1, #2
	strb	r1, [r0, #1]
	b	.L_1388a
.L_1375c:
	.4byte	gCurrentCarriedSprite
.L_13760:
	ldr	r1, .L_13770
	mov	r0, #7
	strb	r0, [r1, #0]
	mov	r0, #39	@ 0x27
	bl	m4aSongNumStart
	b	.L_1388a
	.align	2, 0
.L_13770:
	.4byte	gCurrentCarriedSprite
.L_13774:
	ldr	r1, .L_13784
	mov	r0, #12
	strb	r0, [r1, #0]
.L_1377a:
	mov	r0, #37	@ 0x25
	bl	m4aSongNumStart
	b	.L_1388a
	.align	2, 0
.L_13784:
	.4byte	gCurrentCarriedSprite
.L_13788:
	mov	r0, #38	@ 0x26
	bl	m4aSongNumStart
	b	.L_1388a
.L_13790:
	ldr	r0, .L_137a0
	ldrh	r1, [r0, #18]
	ldr	r0, .L_137a4
	and	r0, r1
	add	r0, #32
	strh	r0, [r3, #18]
	b	.L_1388a
	.align	2, 0
.L_137a0:
	.4byte	gWarioDataCopy
.L_137a4:
	.4byte	0xFFC0
.L_137a8:
	ldr	r1, .L_137b8
	mov	r0, #11
	strb	r0, [r1, #0]
	mov	r0, #6
	bl	m4aSongNumStart
	b	.L_1388a
	.align	2, 0
.L_137b8:
	.4byte	gWarioDustEffect1
.L_137bc:
	mov	r0, #96	@ 0x60
	strh	r0, [r3, #24]
	b	.L_1388a
.L_137c2:
	ldr	r1, .L_137e0
	mov	r0, #4
	strh	r0, [r1, #0]
	ldr	r1, .L_137e4
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r1, .L_137e8
	ldr	r2, .L_137ec
	ldrh	r0, [r2, #18]
	strh	r0, [r1, #0]
	ldr	r1, .L_137f0
	ldrh	r0, [r2, #20]
	strh	r0, [r1, #0]
	b	.L_1388a
	.align	2, 0
.L_137e0:
	.4byte	gSubGameMode
.L_137e4:
	.4byte	gCurrentCarriedSprite
.L_137e8:
	.4byte	gUnk_3001890
.L_137ec:
	.4byte	gWarioDataCopy
.L_137f0:
	.4byte	gUnk_3001892
.L_137f4:
	ldr	r1, .L_137fc
.L_137f6:
	mov	r0, #5
	strb	r0, [r1, #0]
	b	.L_1388a
.L_137fc:
	.4byte	gCurrentWarioEffect
.L_13800:
	mov	r0, #16
	strh	r0, [r3, #14]
.L_13804:
	ldr	r1, .L_1380c
	mov	r0, #6
	strb	r0, [r1, #0]
	b	.L_1388a
.L_1380c:
	.4byte	gCurrentWarioEffect
.L_13810:
	mov	r0, #16
	strh	r0, [r3, #14]
	ldr	r1, .L_1381c
	mov	r0, #7
	strb	r0, [r1, #0]
	b	.L_1388a
.L_1381c:
	.4byte	gCurrentWarioEffect
.L_13820:
	ldr	r1, .L_13828
	mov	r0, #8
	strb	r0, [r1, #0]
	b	.L_1388a
.L_13828:
	.4byte	gCurrentWarioEffect
.L_1382c:
	ldr	r2, .L_13844
	ldrh	r1, [r2, #18]
	ldr	r0, .L_13848
	cmp	r1, r0
	bhi	.L_1384c
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	bne	.L_13868
	b	.L_1385e
	.align	2, 0
.L_13844:
	.4byte	gWarioDataCopy
.L_13848:
	.4byte	0x4CF
.L_1384c:
	mov	r0, #158	@ 0x9e
	lsl	r0, r0, #3
	cmp	r1, r0
	bls	.L_1386e
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_13868
.L_1385e:
	mov	r0, #63	@ 0x3f
	strb	r0, [r3, #1]
	mov	r0, #1
	strb	r0, [r3, #3]
	b	.L_1388a
.L_13868:
	mov	r0, #64	@ 0x40
	strb	r0, [r3, #1]
	b	.L_1388a
.L_1386e:
	mov	r0, #2
	bl	VoiceSetPlay
	b	.L_1388a
.L_13876:
	ldr	r0, .L_13880
	bl	m4aSongNumStart
	b	.L_1388a
	.align	2, 0
.L_13880:
	.4byte	0x312
.L_13884:
	ldr	r0, .L_13890
	ldrh	r0, [r0, #22]
.L_13888:
	strh	r0, [r3, #22]
.L_1388a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_13890:
	.4byte	gWarioDataCopy


thumb_func_start func_8013894
func_8013894:
	push	{r4, r5, lr}
	ldr	r3, .L_138dc
	ldr	r2, .L_138e0
	ldr	r4, .L_138e4
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
	bl	func_800FE58
	mov	r3, #0
	ldrb	r0, [r4, #1]
	sub	r0, #4
	cmp	r0, #57	@ 0x39
	bls	.L_138d0
	b	.L_13a20
.L_138d0:
	lsl	r0, r0, #2
	ldr	r1, .L_138e8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_138dc:
	.4byte	gUnk_3001918
.L_138e0:
	.4byte	sUnk_82DD430
.L_138e4:
	.4byte	gWarioData
.L_138e8:
	.4byte	.L_138ec
.L_138ec:
	.4byte	.L_139d4
	.4byte	.L_13a20
	.4byte	.L_13a20
	.4byte	.L_13a20
	.4byte	.L_139d4
	.4byte	.L_13a20
	.4byte	.L_13a20
	.4byte	.L_13a20
	.4byte	.L_13a20
	.4byte	.L_13a20
	.4byte	.L_13a20
	.4byte	.L_139d4
	.4byte	.L_139d4
	.4byte	.L_13a14
	.4byte	.L_13a14
	.4byte	.L_139d4
	.4byte	.L_139d4
	.4byte	.L_139d4
	.4byte	.L_13a20
	.4byte	.L_13a20
	.4byte	.L_139d4
	.4byte	.L_139d4
.L_13944:
	sub	r1, #212	@ 0xd4
	lsr	r1, r0, #32
	sub	r1, #252	@ 0xfc
	lsr	r1, r0, #32
	sub	r1, #252	@ 0xfc
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r1, #252	@ 0xfc
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r1, #212	@ 0xd4
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r1, #212	@ 0xd4
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r1, #212	@ 0xd4
	lsr	r1, r0, #32
	sub	r1, #212	@ 0xd4
	lsr	r1, r0, #32
	sub	r1, #212	@ 0xd4
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r2, #32
	lsr	r1, r0, #32
	sub	r1, #212	@ 0xd4
	lsr	r1, r0, #32
.L_139d4:
	ldr	r0, .L_139e8
	ldrh	r0, [r0, #24]
	lsl	r1, r0, #16
	asr	r0, r1, #16
	cmp	r0, #128	@ 0x80
	bgt	.L_139ec
	asr	r0, r1, #19
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	b	.L_139ee
.L_139e8:
	.4byte	gWarioData
.L_139ec:
	mov	r3, #16
.L_139ee:
	ldr	r1, .L_139f8
	ldrh	r0, [r1, #24]
	sub	r0, #8
	strh	r0, [r1, #24]
	b	.L_13a20
.L_139f8:
	.4byte	gWarioData
	ldr	r2, .L_13a10
	ldrh	r1, [r2, #24]
	lsl	r0, r1, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	sub	r1, #16
	strh	r1, [r2, #24]
	b	.L_13a20
	.align	2, 0
.L_13a10:
	.4byte	gWarioData
.L_13a14:
	ldr	r0, .L_13a6c
	ldrh	r0, [r0, #24]
	lsl	r0, r0, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r3, r0, #16
.L_13a20:
	ldr	r4, .L_13a6c
	ldrh	r0, [r4, #20]
	sub	r0, r0, r3
	strh	r0, [r4, #20]
	mov	r0, #24
	ldrsh	r1, [r4, r0]
	mov	r0, #128	@ 0x80
	neg	r0, r0
	add	r5, r4, #0
	cmp	r1, r0
	bge	.L_13a3a
	ldr	r0, .L_13a70
	strh	r0, [r5, #24]
.L_13a3a:
	ldrb	r0, [r5, #26]
	cmp	r0, #0
	bne	.L_13a80
	bl	func_800FDBC
	lsl	r0, r0, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldrb	r0, [r5, #1]
	cmp	r0, #0
	beq	.L_13a56
	cmp	r0, #22
	bne	.L_13a8a
.L_13a56:
	ldrh	r1, [r4, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_13a74
	lsl	r0, r3, #16
	add	r5, r4, #0
	cmp	r0, #0
	bge	.L_13a8a
	mov	r3, #0
	b	.L_13a8a
.L_13a6c:
	.4byte	gWarioData
.L_13a70:
	.4byte	0xFF80
.L_13a74:
	lsl	r0, r3, #16
	add	r5, r4, #0
	cmp	r0, #0
	ble	.L_13a8a
	mov	r3, #0
	b	.L_13a8a
.L_13a80:
	ldrh	r0, [r5, #22]
	lsl	r0, r0, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r3, r0, #16
.L_13a8a:
	ldrh	r0, [r5, #18]
	add	r0, r0, r3
	strh	r0, [r5, #18]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8013A98
func_8013A98:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	ldr	r4, .L_13af4
	ldr	r2, .L_13af8
	ldr	r3, .L_13afc
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
	bgt	.L_13ade
	mov	r0, #0
	strb	r0, [r4, #12]
.L_13ade:
	mov	r4, #255	@ 0xff
	ldrb	r0, [r3, #1]
	sub	r0, #17
	cmp	r0, #33	@ 0x21
	bhi	.L_13b9e
	lsl	r0, r0, #2
	ldr	r1, .L_13b00
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_13af4:
	.4byte	gUnk_3001918
.L_13af8:
	.4byte	sUnk_82DD430
.L_13afc:
	.4byte	gWarioData
.L_13b00:
	.4byte	.L_13b04
.L_13b04:
	.4byte	.L_13c36
	.4byte	.L_13c36
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
	.4byte	.L_13b9e
.L_13b5c:
	sub	r3, #158	@ 0x9e
	lsr	r1, r0, #32
	sub	r3, #140	@ 0x8c
	lsr	r1, r0, #32
	sub	r4, #54	@ 0x36
	lsr	r1, r0, #32
	sub	r3, #158	@ 0x9e
	lsr	r1, r0, #32
	sub	r3, #146	@ 0x92
	lsr	r1, r0, #32
	sub	r3, #152	@ 0x98
	lsr	r1, r0, #32
	sub	r4, #54	@ 0x36
	lsr	r1, r0, #32
	sub	r3, #158	@ 0x9e
	lsr	r1, r0, #32
	sub	r3, #158	@ 0x9e
	lsr	r1, r0, #32
	sub	r3, #158	@ 0x9e
	lsr	r1, r0, #32
	sub	r4, #54	@ 0x36
	lsr	r1, r0, #32
	sub	r4, #54	@ 0x36
	lsr	r1, r0, #32
	bl	func_8014FAC
	b	.L_13c32
	bl	func_80150D0
	b	.L_13c32
	bl	func_8015194
	b	.L_13c32
.L_13b9e:
	ldr	r2, .L_13bb0
	ldrh	r1, [r2, #2]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_13bb4
	bl	func_8014C4C
	b	.L_13c32
.L_13bb0:
	.4byte	gUnk_3001918
.L_13bb4:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_13bc2
	bl	func_8014930
	b	.L_13c32
.L_13bc2:
	ldrh	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_13c28
	ldrb	r0, [r2, #17]
	cmp	r0, #2
	bne	.L_13bd4
	bl	func_8014930
	b	.L_13c32
.L_13bd4:
	bl	func_80143D8
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #255	@ 0xff
	bne	.L_13c36
	ldr	r2, .L_13bf4
	ldrb	r1, [r2, #1]
	sub	r0, r1, #6
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_13bf8
	bl	func_8014F00
	b	.L_13c32
.L_13bf4:
	.4byte	gWarioData
.L_13bf8:
	lsl	r0, r1, #24
	cmp	r0, #0
	bne	.L_13c36
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_13c16
	mov	r1, #22
	ldrsh	r0, [r2, r1]
	cmp	r0, #40	@ 0x28
	bgt	.L_13c36
	bl	func_8014F00
	b	.L_13c32
.L_13c16:
	mov	r0, #22
	ldrsh	r1, [r2, r0]
	mov	r0, #40	@ 0x28
	neg	r0, r0
	cmp	r1, r0
	blt	.L_13c36
	bl	func_8014F00
	b	.L_13c32
.L_13c28:
	ldrb	r0, [r2, #17]
	cmp	r0, #0
	bne	.L_13c36
	bl	func_8014758
.L_13c32:
	lsl	r0, r0, #24
	lsr	r4, r0, #24
.L_13c36:
	ldr	r1, .L_13c4c
	ldrb	r0, [r1, #1]
	sub	r0, #12
	add	r6, r1, #0
	cmp	r0, #16
	bhi	.L_13cf0
	lsl	r0, r0, #2
	ldr	r1, .L_13c50
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_13c4c:
	.4byte	gWarioData
.L_13c50:
	.4byte	.L_13c54
.L_13c54:
	.4byte	.L_13cb0
	.4byte	.L_13cc0
	.4byte	.L_13cc0
	.4byte	.L_13cc0
	.4byte	.L_13cf0
	.4byte	.L_13cf0
	.4byte	.L_13cf0
	.4byte	.L_13cf0
	.4byte	.L_13cf0
	.4byte	.L_13cf0
	.4byte	.L_13c98
	.4byte	.L_13c98
	.4byte	.L_13c98
	.4byte	.L_13c98
	.4byte	.L_13cf0
	.4byte	.L_13cc8
	.4byte	.L_13cc8
.L_13c98:
	cmp	r4, #252	@ 0xfc
	bne	.L_13cf0
	mov	r4, #26
	ldr	r0, .L_13cac
	ldrb	r0, [r0, #14]
	cmp	r0, #0
	bne	.L_13cf0
	mov	r0, #1
	strb	r0, [r6, #8]
	b	.L_13cf0
.L_13cac:
	.4byte	gUnk_3001918
.L_13cb0:
	ldr	r0, .L_13cbc
	ldrb	r0, [r0, #18]
	cmp	r0, #0
	beq	.L_13cf0
	mov	r4, #2
	b	.L_13cf0
.L_13cbc:
	.4byte	gUnk_3001918
.L_13cc0:
	cmp	r4, #252	@ 0xfc
	bne	.L_13cf0
	mov	r4, #16
	b	.L_13cf0
.L_13cc8:
	cmp	r4, #253	@ 0xfd
	bne	.L_13cf0
	ldr	r5, .L_13d20
	ldrb	r0, [r5, #8]
	ldrh	r1, [r6, #20]
	add	r1, #1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r2, sp
	bl	func_8014268
	cmp	r0, #0
	beq	.L_13cf0
	ldrb	r5, [r5, #16]
	cmp	r0, r5
	bgt	.L_13cf0
	ldrb	r0, [r6, #1]
	cmp	r0, #28
	bne	.L_13cf0
	mov	r4, #255	@ 0xff
.L_13cf0:
	ldr	r0, .L_13d20
	ldrh	r1, [r0, #2]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_13d3e
	ldr	r5, .L_13d24
	ldrh	r0, [r5, #20]
	ldrh	r1, [r5, #18]
	bl	GetBackgroundCollisionAtPosition
	add	r1, r0, #0
	mov	r0, #255	@ 0xff
	and	r1, r0
	cmp	r1, #1
	bne	.L_13d3e
	strb	r1, [r5, #0]
	ldrb	r0, [r5, #1]
	cmp	r0, #28
	bne	.L_13d28
	mov	r0, #7
	bl	func_8016614
	b	.L_13d5c
.L_13d20:
	.4byte	gUnk_3001918
.L_13d24:
	.4byte	gWarioData
.L_13d28:
	sub	r0, #19
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_13d36
	mov	r0, #96	@ 0x60
	strb	r0, [r5, #4]
.L_13d36:
	mov	r0, #0
	bl	func_8016614
	b	.L_13d5c
.L_13d3e:
	ldr	r0, .L_13d64
	ldrb	r0, [r0, #17]
	cmp	r0, #255	@ 0xff
	beq	.L_13d5c
	cmp	r4, #255	@ 0xff
	beq	.L_13d50
	add	r0, r4, #0
	bl	func_8012BAC
.L_13d50:
	cmp	r4, #254	@ 0xfe
	bne	.L_13d5c
	ldr	r1, .L_13d68
	ldrh	r0, [r1, #20]
	add	r0, #1
	strh	r0, [r1, #20]
.L_13d5c:
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_13d64:
	.4byte	gUnk_3001918
.L_13d68:
	.4byte	gWarioData


thumb_func_start func_8013D6C
func_8013D6C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r2
	add	r7, r3, #0
	ldr	r4, [sp, #24]
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	lsl	r1, r1, #16
	lsr	r6, r1, #16
	add	r0, r6, #0
	add	r1, r5, #0
	bl	func_806D4C0
	add	r1, r0, #0
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #17
	and	r0, r1
	cmp	r0, #0
	beq	.L_13d96
	mov	r0, #1
.L_13d96:
	strh	r0, [r4, #0]
	mov	r0, #255	@ 0xff
	and	r0, r1
	sub	r0, #2
	cmp	r0, #10
	bls	.L_13da4
	b	.L_13edc
.L_13da4:
	lsl	r0, r0, #2
	ldr	r1, .L_13db0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_13db0:
	.4byte	.L_13db4
.L_13db4:
	.4byte	.L_13e64
	.4byte	.L_13de0
	.4byte	.L_13eb0
	.4byte	.L_13e84
	.4byte	.L_13e0c
	.4byte	.L_13e34
	.4byte	.L_13edc
	.4byte	.L_13edc
	.4byte	.L_13edc
	.4byte	.L_13edc
	.4byte	.L_13ed8
.L_13de0:
	ldr	r3, .L_13e08
	add	r1, r6, #0
	and	r1, r3
	mov	r2, #63	@ 0x3f
	add	r0, r5, #0
	and	r0, r2
	sub	r0, #63	@ 0x3f
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r4, r1, #16
	add	r1, r5, #0
	and	r1, r3
	add	r0, r6, #0
	and	r0, r2
	sub	r0, #63	@ 0x3f
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	mov	r0, #17
	b	.L_13ee8
.L_13e08:
	.4byte	0xFFC0
.L_13e0c:
	ldr	r3, .L_13e30
	add	r1, r6, #0
	and	r1, r3
	mov	r2, #63	@ 0x3f
	add	r0, r5, #0
	and	r0, r2
	lsr	r0, r0, #1
	sub	r0, #63	@ 0x3f
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r4, r1, #16
	add	r1, r5, #0
	and	r1, r3
	add	r0, r6, #0
	and	r0, r2
	lsl	r0, r0, #1
	sub	r0, #126	@ 0x7e
	b	.L_13e56
.L_13e30:
	.4byte	0xFFC0
.L_13e34:
	ldr	r3, .L_13e60
	add	r1, r6, #0
	and	r1, r3
	mov	r2, #63	@ 0x3f
	add	r0, r5, #0
	and	r0, r2
	lsr	r0, r0, #1
	sub	r0, #31
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r4, r1, #16
	add	r1, r5, #0
	and	r1, r3
	add	r0, r6, #0
	and	r0, r2
	lsl	r0, r0, #1
	sub	r0, #62	@ 0x3e
.L_13e56:
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	mov	r0, #18
	b	.L_13ee8
.L_13e60:
	.4byte	0xFFC0
.L_13e64:
	ldr	r2, .L_13e80
	add	r4, r6, #0
	and	r4, r2
	mov	r1, #63	@ 0x3f
	add	r0, r5, #0
	and	r0, r1
	orr	r4, r0
	add	r3, r5, #0
	and	r3, r2
	add	r0, r6, #0
	and	r0, r1
	orr	r3, r0
	mov	r0, #33	@ 0x21
	b	.L_13ee8
.L_13e80:
	.4byte	0xFFC0
.L_13e84:
	ldr	r3, .L_13ea8
	add	r4, r6, #0
	and	r4, r3
	mov	r2, #63	@ 0x3f
	add	r0, r5, #0
	and	r0, r2
	lsr	r0, r0, #1
	add	r0, #31
	orr	r4, r0
	add	r1, r5, #0
	and	r1, r3
	add	r0, r6, #0
	and	r0, r2
	lsl	r0, r0, #1
	ldr	r2, .L_13eac
	add	r0, r0, r2
	b	.L_13eca
	.align	2, 0
.L_13ea8:
	.4byte	0xFFC0
.L_13eac:
	.4byte	0xFFC1
.L_13eb0:
	ldr	r3, .L_13ed4
	add	r4, r6, #0
	and	r4, r3
	mov	r2, #63	@ 0x3f
	add	r0, r5, #0
	and	r0, r2
	lsr	r0, r0, #1
	orr	r4, r0
	add	r1, r5, #0
	and	r1, r3
	add	r0, r6, #0
	and	r0, r2
	lsl	r0, r0, #1
.L_13eca:
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	mov	r0, #34	@ 0x22
	b	.L_13ee8
.L_13ed4:
	.4byte	0xFFC0
.L_13ed8:
	mov	r0, #16
	strh	r0, [r4, #0]
.L_13edc:
	ldr	r0, .L_13ef8
	add	r4, r6, #0
	and	r4, r0
	add	r3, r5, #0
	and	r3, r0
	mov	r0, #0
.L_13ee8:
	strh	r4, [r7, #0]
	mov	r1, r8
	strh	r3, [r1, #0]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L_13ef8:
	.4byte	0xFFC0


thumb_func_start func_8013EFC
func_8013EFC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	str	r1, [sp, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	r8, r0
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r2, [sp, #4]
	mov	r7, #0
	ldr	r4, .L_14080
	strb	r7, [r4, #14]
	ldr	r3, .L_14084
	ldr	r2, .L_14088
	ldrb	r0, [r4, #4]
	lsl	r0, r0, #1
	mov	r5, r8
	lsl	r1, r5, #1
	add	r1, r8
	lsl	r1, r1, #1
	add	r0, r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	ldrh	r5, [r3, #18]
	add	r0, r0, r5
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	add	r2, #4
	add	r1, r1, r2
	ldrh	r0, [r1, #0]
	ldrh	r3, [r3, #20]
	add	r0, r0, r3
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	add	r0, r5, #0
	add	r1, r6, #0
	bl	func_806D4C0
	add	r1, r0, #0
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #17
	and	r0, r1
	cmp	r0, #0
	beq	.L_13f82
	mov	r0, #255	@ 0xff
	and	r0, r1
	cmp	r0, #7
	bgt	.L_13f68
	cmp	r0, #2
	bge	.L_13f82
.L_13f68:
	ldrb	r0, [r4, #11]
	cmp	r0, #0
	beq	.L_13f80
	add	r0, r5, #0
	add	r1, r6, #0
	bl	func_806EC50
	cmp	r0, #0
	beq	.L_13f80
	ldrb	r0, [r4, #14]
	add	r0, #1
	strb	r0, [r4, #14]
.L_13f80:
	add	r7, #1
.L_13f82:
	ldr	r0, [sp, #4]
	lsl	r3, r0, #16
	asr	r1, r3, #16
	mov	ip, r1
	ldr	r1, .L_14088
	mov	r4, r8
	lsl	r2, r4, #1
	add	r0, r2, r4
	lsl	r0, r0, #1
	add	r1, #4
	add	r0, r0, r1
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	add	r0, #64	@ 0x40
	mov	sl, r2
	mov	r9, r3
	cmp	ip, r0
	ble	.L_13fea
	add	r0, r5, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	add	r0, r5, #0
	add	r1, r6, #0
	bl	func_806D4C0
	add	r1, r0, #0
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #17
	and	r0, r1
	cmp	r0, #0
	beq	.L_13fea
	mov	r0, #255	@ 0xff
	and	r0, r1
	cmp	r0, #7
	bgt	.L_13fce
	cmp	r0, #2
	bge	.L_13fea
.L_13fce:
	ldr	r4, .L_14080
	ldrb	r0, [r4, #11]
	cmp	r0, #0
	beq	.L_13fe8
	add	r0, r5, #0
	add	r1, r6, #0
	bl	func_806EC50
	cmp	r0, #0
	beq	.L_13fe8
	ldrb	r0, [r4, #14]
	add	r0, #2
	strb	r0, [r4, #14]
.L_13fe8:
	add	r7, #2
.L_13fea:
	ldr	r1, .L_14088
	mov	r0, sl
	add	r0, r8
	lsl	r0, r0, #1
	add	r1, #4
	add	r0, r0, r1
	mov	r2, r9
	asr	r1, r2, #16
	mov	r4, #0
	ldrsh	r0, [r0, r4]
	cmp	r1, r0
	ble	.L_1404a
	ldr	r0, .L_14084
	ldrh	r0, [r0, #20]
	ldr	r5, [sp, #4]
	add	r0, r0, r5
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	add	r0, r5, #0
	add	r1, r6, #0
	bl	func_806D4C0
	add	r1, r0, #0
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #17
	and	r0, r1
	cmp	r0, #0
	beq	.L_1404a
	mov	r0, #255	@ 0xff
	and	r0, r1
	cmp	r0, #7
	bgt	.L_1402e
	cmp	r0, #2
	bge	.L_1404a
.L_1402e:
	ldr	r4, .L_14080
	ldrb	r0, [r4, #11]
	cmp	r0, #0
	beq	.L_14048
	add	r0, r5, #0
	add	r1, r6, #0
	bl	func_806EC50
	cmp	r0, #0
	beq	.L_14048
	ldrb	r0, [r4, #14]
	add	r0, #4
	strb	r0, [r4, #14]
.L_14048:
	add	r7, #4
.L_1404a:
	cmp	r7, #0
	beq	.L_1406e
	ldr	r1, .L_1408c
	and	r1, r6
	ldr	r3, .L_14088
	ldr	r2, .L_14080
	mov	r0, sl
	add	r0, r8
	ldrb	r4, [r2, #4]
	add	r0, r0, r4
	lsl	r0, r0, #1
	add	r0, r0, r3
	ldrh	r0, [r0, #0]
	sub	r1, r1, r0
	ldrh	r2, [r2, #6]
	add	r1, r1, r2
	ldr	r5, [sp, #0]
	strh	r1, [r5, #0]
.L_1406e:
	add	r0, r7, #0
	add	sp, #8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L_14080:
	.4byte	gUnk_3001918
.L_14084:
	.4byte	gWarioData
.L_14088:
	.4byte	sUnk_82DEB60
.L_1408c:
	.4byte	0xFFC0


thumb_func_start func_8014090
func_8014090:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	str	r0, [sp, #0]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	str	r1, [sp, #4]
	lsl	r2, r2, #24
	ldr	r1, .L_14258
	mov	r0, #0
	strb	r0, [r1, #15]
	mov	sl, r0
	cmp	r2, #0
	bne	.L_14110
	ldr	r0, .L_1425c
	ldrh	r0, [r0, #0]
	ldr	r1, [sp, #4]
	add	r0, r1, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r9, r0
	ldr	r2, .L_14260
	mov	r8, r2
	ldr	r4, .L_14264
	ldr	r0, [sp, #0]
	lsl	r5, r0, #3
	add	r0, r5, r4
	ldrh	r0, [r0, #0]
	ldrh	r1, [r2, #18]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	mov	r0, r9
	add	r1, r7, #0
	bl	func_806D4C0
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #17
	and	r0, r6
	neg	r0, r0
	lsr	r0, r0, #31
	mov	sl, r0
	add	r4, #6
	add	r5, r5, r4
	ldrh	r0, [r5, #0]
	mov	r2, r8
	ldrh	r2, [r2, #18]
	add	r0, r0, r2
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	mov	r0, r9
	add	r1, r7, #0
	bl	func_806D4C0
	and	r0, r6
	cmp	r0, #0
	beq	.L_14110
	mov	r0, #8
	add	sl, r0
.L_14110:
	mov	r6, #0
	ldr	r1, .L_14260
	ldrh	r0, [r1, #20]
	ldr	r2, [sp, #4]
	add	r0, r2, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r9, r0
	mov	r0, #1
	mov	r2, sl
	and	r0, r2
	ldr	r2, [sp, #0]
	lsl	r5, r2, #3
	cmp	r0, #0
	bne	.L_1416e
	ldr	r0, .L_14264
	add	r0, r5, r0
	ldrh	r0, [r0, #0]
	ldrh	r1, [r1, #18]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	mov	r0, r9
	add	r1, r7, #0
	bl	func_806D4C0
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #17
	and	r1, r0
	cmp	r1, #0
	beq	.L_1416e
	ldr	r4, .L_14258
	ldrb	r0, [r4, #12]
	cmp	r0, #0
	beq	.L_1416c
	mov	r0, r9
	add	r1, r7, #0
	bl	func_806EDFC
	mov	r1, #15
	and	r1, r0
	cmp	r1, #0
	beq	.L_1416c
	ldrb	r0, [r4, #15]
	add	r0, #1
	strb	r0, [r4, #15]
.L_1416c:
	add	r6, #1
.L_1416e:
	ldr	r1, .L_14260
	ldr	r0, .L_14264
	add	r0, #2
	add	r0, r5, r0
	ldrh	r0, [r0, #0]
	ldrh	r1, [r1, #18]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	mov	r0, r9
	add	r1, r7, #0
	bl	func_806D4C0
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #17
	and	r1, r0
	cmp	r1, #0
	beq	.L_141b2
	ldr	r4, .L_14258
	ldrb	r0, [r4, #12]
	cmp	r0, #0
	beq	.L_141b0
	mov	r0, r9
	add	r1, r7, #0
	bl	func_806EDFC
	mov	r1, #15
	and	r1, r0
	cmp	r1, #0
	beq	.L_141b0
	ldrb	r0, [r4, #15]
	add	r0, #2
	strb	r0, [r4, #15]
.L_141b0:
	add	r6, #2
.L_141b2:
	ldr	r1, .L_14260
	ldr	r0, .L_14264
	add	r0, #4
	add	r0, r5, r0
	ldrh	r0, [r0, #0]
	ldrh	r1, [r1, #18]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	mov	r0, r9
	add	r1, r7, #0
	bl	func_806D4C0
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #17
	and	r1, r0
	cmp	r1, #0
	beq	.L_141f6
	ldr	r4, .L_14258
	ldrb	r0, [r4, #12]
	cmp	r0, #0
	beq	.L_141f4
	mov	r0, r9
	add	r1, r7, #0
	bl	func_806EDFC
	mov	r1, #15
	and	r1, r0
	cmp	r1, #0
	beq	.L_141f4
	ldrb	r0, [r4, #15]
	add	r0, #4
	strb	r0, [r4, #15]
.L_141f4:
	add	r6, #4
.L_141f6:
	mov	r0, #8
	mov	r1, sl
	and	r1, r0
	cmp	r1, #0
	bne	.L_14244
	ldr	r1, .L_14260
	ldr	r0, .L_14264
	add	r0, #6
	add	r0, r5, r0
	ldrh	r0, [r0, #0]
	ldrh	r1, [r1, #18]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	mov	r0, r9
	add	r1, r7, #0
	bl	func_806D4C0
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #17
	and	r1, r0
	cmp	r1, #0
	beq	.L_14244
	ldr	r4, .L_14258
	ldrb	r0, [r4, #12]
	cmp	r0, #0
	beq	.L_14242
	mov	r0, r9
	add	r1, r7, #0
	bl	func_806EDFC
	mov	r1, #15
	and	r1, r0
	cmp	r1, #0
	beq	.L_14242
	ldrb	r0, [r4, #15]
	add	r0, #8
	strb	r0, [r4, #15]
.L_14242:
	add	r6, #8
.L_14244:
	add	r0, r6, #0
	add	sp, #8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_14258:
	.4byte	gUnk_3001918
.L_1425c:
	.4byte	gPreviousYPosition
.L_14260:
	.4byte	gWarioData
.L_14264:
	.4byte	sUnk_82DEBA2


thumb_func_start func_8014268
func_8014268:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	str	r2, [sp, #0]
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r8, r1
	ldr	r4, .L_142d0
	mov	r0, #0
	strb	r0, [r4, #16]
	mov	r6, #0
	mov	sl, r6
	ldr	r2, .L_142d4
	ldr	r1, .L_142d8
	lsl	r0, r7, #1
	add	r0, r0, r7
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldrh	r2, [r2, #18]
	add	r0, r0, r2
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	mov	r0, r8
	add	r1, r5, #0
	bl	func_806D4C0
	add	r1, r0, #0
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #17
	and	r0, r1
	cmp	r0, #0
	beq	.L_142dc
	ldrb	r0, [r4, #13]
	cmp	r0, #0
	beq	.L_142cc
	mov	r0, r8
	add	r1, r5, #0
	bl	func_806ED74
	cmp	r0, #0
	beq	.L_142cc
	ldrb	r0, [r4, #16]
	add	r0, #1
	strb	r0, [r4, #16]
.L_142cc:
	add	r6, #1
	b	.L_142e8
.L_142d0:
	.4byte	gUnk_3001918
.L_142d4:
	.4byte	gWarioData
.L_142d8:
	.4byte	sUnk_82DEB60
.L_142dc:
	mov	r0, #255	@ 0xff
	and	r0, r1
	cmp	r0, #12
	bne	.L_142e8
	mov	r6, #1
	mov	sl, r6
.L_142e8:
	ldr	r2, .L_14334
	ldr	r1, .L_14338
	lsl	r4, r7, #1
	add	r0, r4, r7
	lsl	r0, r0, #1
	add	r1, #2
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldrh	r2, [r2, #18]
	add	r0, r0, r2
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	mov	r0, r8
	add	r1, r5, #0
	bl	func_806D4C0
	add	r1, r0, #0
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #17
	and	r0, r1
	mov	r9, r4
	cmp	r0, #0
	beq	.L_14340
	ldr	r4, .L_1433c
	ldrb	r0, [r4, #13]
	cmp	r0, #0
	beq	.L_14330
	mov	r0, r8
	add	r1, r5, #0
	bl	func_806ED74
	cmp	r0, #0
	beq	.L_14330
	ldrb	r0, [r4, #16]
	add	r0, #2
	strb	r0, [r4, #16]
.L_14330:
	add	r6, #2
	b	.L_14354
.L_14334:
	.4byte	gWarioData
.L_14338:
	.4byte	sUnk_82DEB60
.L_1433c:
	.4byte	gUnk_3001918
.L_14340:
	mov	r0, #255	@ 0xff
	and	r0, r1
	cmp	r0, #12
	bne	.L_14354
	add	r6, #2
	mov	r0, sl
	add	r0, #2
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	sl, r0
.L_14354:
	ldr	r0, .L_143a0
	mov	r2, r9
	add	r1, r2, r7
	lsl	r1, r1, #1
	add	r0, #2
	add	r1, r1, r0
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	cmp	r0, #31
	ble	.L_143c0
	ldr	r0, .L_143a4
	ldrh	r5, [r0, #18]
	mov	r0, r8
	add	r1, r5, #0
	bl	func_806D4C0
	add	r1, r0, #0
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #17
	and	r0, r1
	cmp	r0, #0
	beq	.L_143ac
	ldr	r4, .L_143a8
	ldrb	r0, [r4, #13]
	cmp	r0, #0
	beq	.L_1439a
	mov	r0, r8
	add	r1, r5, #0
	bl	func_806ED74
	cmp	r0, #0
	beq	.L_1439a
	ldrb	r0, [r4, #16]
	add	r0, #4
	strb	r0, [r4, #16]
.L_1439a:
	add	r6, #4
	b	.L_143c0
	.align	2, 0
.L_143a0:
	.4byte	sUnk_82DEB60
.L_143a4:
	.4byte	gWarioData
.L_143a8:
	.4byte	gUnk_3001918
.L_143ac:
	mov	r0, #255	@ 0xff
	and	r0, r1
	cmp	r0, #12
	bne	.L_143c0
	add	r6, #4
	mov	r0, sl
	add	r0, #4
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	sl, r0
.L_143c0:
	mov	r1, sl
	ldr	r0, [sp, #0]
	strh	r1, [r0, #0]
	add	r0, r6, #0
	add	sp, #4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_80143D8
func_80143D8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #28
	ldr	r4, .L_14430
	ldrh	r5, [r4, #0]
	ldrb	r0, [r4, #8]
	mov	sl, r0
	mov	r1, sl
	str	r1, [sp, #12]
	ldrb	r7, [r4, #4]
	ldrb	r2, [r4, #5]
	str	r2, [sp, #16]
	ldr	r6, .L_14434
	ldrh	r0, [r6, #28]
	cmp	r0, #0
	beq	.L_14400
	b	.L_145c0
.L_14400:
	mov	r2, #62	@ 0x3e
	neg	r2, r2
	mov	r0, sl
	add	r1, sp, #4
	bl	func_8013EFC
	add	r2, r0, #0
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_14438
	ldrb	r0, [r6, #1]
	cmp	r0, #0
	beq	.L_1441e
	cmp	r0, #2
	bne	.L_14438
.L_1441e:
	ldrh	r0, [r6, #14]
	and	r5, r0
	cmp	r5, #0
	beq	.L_14438
	cmp	r2, #1
	bne	.L_14438
	mov	r0, #5
	b	.L_1473e
	.align	2, 0
.L_14430:
	.4byte	gUnk_3001918
.L_14434:
	.4byte	gWarioData
.L_14438:
	cmp	r2, #0
	beq	.L_14474
	ldr	r0, .L_14458
	add	r1, sp, #4
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #18]
	ldr	r3, .L_1445c
	ldrb	r1, [r3, #11]
	cmp	r1, #0
	bne	.L_14460
	strh	r1, [r0, #22]
	ldrb	r0, [r3, #18]
	add	r0, #1
	strb	r0, [r3, #18]
	b	.L_1447a
	.align	2, 0
.L_14458:
	.4byte	gWarioData
.L_1445c:
	.4byte	gUnk_3001918
.L_14460:
	cmp	r1, #1
	bne	.L_14466
	b	.L_145fa
.L_14466:
	ldrb	r1, [r3, #14]
	cmp	r2, r1
	ble	.L_1446e
	b	.L_145fa
.L_1446e:
	ldrb	r3, [r3, #10]
	str	r3, [sp, #12]
	b	.L_1447a
.L_14474:
	ldr	r0, .L_144d8
	ldrb	r0, [r0, #10]
	str	r0, [sp, #12]
.L_1447a:
	ldr	r1, .L_144dc
	lsl	r6, r7, #1
	mov	r2, sl
	lsl	r2, r2, #1
	mov	r8, r2
	mov	r0, r8
	add	r0, sl
	lsl	r0, r0, #1
	add	r0, r6, r0
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldr	r1, .L_144e0
	ldrh	r1, [r1, #18]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	ldr	r2, .L_144e0
	ldrh	r2, [r2, #20]
	mov	r9, r2
	mov	r4, sp
	add	r4, #6
	add	r5, sp, #8
	str	r5, [sp, #0]
	add	r0, r7, #0
	mov	r1, r9
	add	r2, sp, #4
	add	r3, r4, #0
	bl	func_8013D6C
	add	r2, r0, #0
	mov	r0, r8
	str	r0, [sp, #24]
	cmp	r2, #0
	beq	.L_144e4
	mov	r1, sp
	ldrh	r0, [r1, #8]
	cmp	r0, #0
	beq	.L_144e4
	mov	r1, #0
	ldr	r0, .L_144e0
	strh	r2, [r0, #28]
	mov	r2, sp
	ldrh	r0, [r2, #6]
	ldr	r2, .L_144e0
	strh	r0, [r2, #20]
	strb	r1, [r2, #26]
	b	.L_1473c
.L_144d8:
	.4byte	gUnk_3001918
.L_144dc:
	.4byte	sUnk_82DEB60
.L_144e0:
	.4byte	gWarioData
.L_144e4:
	ldr	r4, .L_14560
	ldr	r0, .L_14564
	mov	r8, r0
	ldr	r1, [sp, #12]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #1
	str	r0, [sp, #20]
	add	r0, r6, r0
	add	r0, r8
	ldrh	r0, [r0, #0]
	ldrh	r2, [r4, #18]
	add	r0, r0, r2
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	mov	r0, r9
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r9, r0
	add	r6, sp, #8
	str	r6, [sp, #0]
	add	r0, r7, #0
	mov	r1, r9
	add	r2, sp, #4
	mov	r3, sp
	add	r3, #6
	bl	func_8013D6C
	ldrh	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_145b4
	ldr	r0, [sp, #16]
	lsl	r5, r0, #1
	ldr	r0, [sp, #24]
	add	r0, sl
	lsl	r0, r0, #1
	add	r0, r5, r0
	add	r0, r8
	ldrh	r0, [r0, #0]
	ldrh	r1, [r4, #18]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	str	r6, [sp, #0]
	add	r0, r7, #0
	mov	r1, r9
	add	r2, sp, #4
	mov	r3, sp
	add	r3, #6
	bl	func_8013D6C
	add	r2, r0, #0
	cmp	r2, #0
	beq	.L_14568
	mov	r1, #0
	strh	r2, [r4, #28]
	mov	r2, sp
	ldrh	r0, [r2, #6]
	strh	r0, [r4, #20]
	strb	r1, [r4, #26]
	b	.L_1473c
.L_14560:
	.4byte	gWarioData
.L_14564:
	.4byte	sUnk_82DEB60
.L_14568:
	ldr	r1, [sp, #20]
	add	r0, r5, r1
	add	r0, r8
	ldrh	r0, [r0, #0]
	ldrh	r2, [r4, #18]
	add	r0, r0, r2
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	str	r6, [sp, #0]
	add	r0, r7, #0
	mov	r1, r9
	add	r2, sp, #4
	mov	r3, sp
	add	r3, #6
	bl	func_8013D6C
	ldrh	r0, [r6, #0]
	cmp	r0, #0
	bne	.L_145b4
	ldrb	r0, [r4, #26]
	cmp	r0, #1
	bne	.L_14596
	b	.L_1473c
.L_14596:
	ldrh	r0, [r4, #18]
	add	r1, sp, #8
	str	r1, [sp, #0]
	mov	r1, r9
	add	r2, sp, #4
	mov	r3, sp
	add	r3, #6
	bl	func_8013D6C
	mov	r2, sp
	ldrh	r0, [r2, #8]
	cmp	r0, #0
	bne	.L_145b4
	mov	r0, #254	@ 0xfe
	b	.L_1473e
.L_145b4:
	ldr	r1, .L_145bc
	mov	r0, #0
	strb	r0, [r1, #26]
	b	.L_1473c
.L_145bc:
	.4byte	gWarioData
.L_145c0:
	add	r1, r0, #0
	and	r1, r5
	cmp	r1, #0
	beq	.L_14678
	mov	r2, #62	@ 0x3e
	neg	r2, r2
	mov	r0, sl
	add	r1, sp, #4
	bl	func_8013EFC
	add	r2, r0, #0
	cmp	r2, #0
	beq	.L_145fe
	add	r0, sp, #4
	ldrh	r0, [r0, #0]
	strh	r0, [r6, #18]
	ldrb	r0, [r4, #11]
	cmp	r0, #0
	bne	.L_145f0
	strh	r0, [r6, #22]
	ldrb	r0, [r4, #18]
	add	r0, #1
	strb	r0, [r4, #18]
	b	.L_145fe
.L_145f0:
	cmp	r0, #1
	beq	.L_145fa
	ldrb	r4, [r4, #14]
	cmp	r2, r4
	ble	.L_145fe
.L_145fa:
	mov	r0, #252	@ 0xfc
	b	.L_1473e
.L_145fe:
	ldr	r6, .L_14668
	ldr	r0, .L_1466c
	mov	r2, sl
	lsl	r1, r2, #1
	add	r1, sl
	add	r1, r1, r7
	lsl	r1, r1, #1
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	ldrh	r1, [r6, #18]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	ldrh	r2, [r6, #20]
	mov	r9, r2
	mov	r5, sp
	add	r5, #6
	add	r4, sp, #8
	str	r4, [sp, #0]
	add	r0, r7, #0
	mov	r1, r9
	add	r2, sp, #4
	add	r3, r5, #0
	bl	func_8013D6C
	add	r2, r0, #0
	strh	r2, [r6, #28]
	cmp	r2, #0
	bne	.L_14660
	ldrh	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_14640
	b	.L_1473c
.L_14640:
	mov	r0, r9
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r9, r0
	str	r4, [sp, #0]
	add	r0, r7, #0
	mov	r1, r9
	add	r2, sp, #4
	add	r3, r5, #0
	bl	func_8013D6C
	add	r2, r0, #0
	strh	r2, [r6, #28]
	cmp	r2, #0
	beq	.L_14670
.L_14660:
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #20]
	b	.L_1473c
	.align	2, 0
.L_14668:
	.4byte	gWarioData
.L_1466c:
	.4byte	sUnk_82DEB60
.L_14670:
	ldrh	r0, [r5, #0]
	add	r0, #63	@ 0x3f
	strh	r0, [r6, #20]
	b	.L_1473c
.L_14678:
	ldrb	r0, [r6, #26]
	cmp	r0, #1
	bne	.L_14682
	strh	r1, [r6, #28]
	b	.L_1473c
.L_14682:
	ldr	r0, [sp, #16]
	lsl	r1, r0, #1
	mov	r2, sl
	lsl	r0, r2, #1
	add	r0, sl
	lsl	r0, r0, #1
	mov	r8, r0
	add	r1, r8
	ldr	r0, .L_146c8
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	ldrh	r1, [r6, #18]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	ldrh	r2, [r6, #20]
	mov	r9, r2
	mov	r4, sp
	add	r4, #6
	add	r5, sp, #8
	str	r5, [sp, #0]
	add	r0, r7, #0
	mov	r1, r9
	add	r2, sp, #4
	add	r3, r4, #0
	bl	func_8013D6C
	add	r2, r0, #0
	cmp	r2, #0
	beq	.L_146cc
	mov	r1, sp
	ldrh	r0, [r1, #6]
	strh	r0, [r6, #20]
	b	.L_1473c
	.align	2, 0
.L_146c8:
	.4byte	sUnk_82DEB60
.L_146cc:
	ldrh	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_1473c
	mov	r0, r9
	add	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r9, r0
	str	r5, [sp, #0]
	add	r0, r7, #0
	mov	r1, r9
	add	r2, sp, #4
	mov	r3, sp
	add	r3, #6
	bl	func_8013D6C
	add	r2, r0, #0
	strh	r2, [r6, #28]
	cmp	r2, #0
	beq	.L_146fc
	mov	r2, sp
	ldrh	r0, [r2, #6]
	strh	r0, [r6, #20]
	b	.L_1473c
.L_146fc:
	ldrh	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_1473c
	ldrh	r1, [r6, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_14720
	add	r0, sp, #4
	ldr	r1, .L_1471c
	add	r1, r8
	ldrh	r0, [r0, #0]
	ldrh	r1, [r1, #0]
	sub	r0, r0, r1
	b	.L_14730
	.align	2, 0
.L_1471c:
	.4byte	sUnk_82DEB60
.L_14720:
	add	r0, sp, #4
	ldr	r1, .L_14750
	add	r1, #2
	add	r1, r8
	ldrh	r0, [r0, #0]
	ldrh	r1, [r1, #0]
	sub	r0, r0, r1
	add	r0, #63	@ 0x3f
.L_14730:
	strh	r0, [r6, #18]
	ldr	r1, .L_14754
	mov	r2, sp
	ldrh	r0, [r2, #6]
	sub	r0, #1
	strh	r0, [r1, #20]
.L_1473c:
	mov	r0, #255	@ 0xff
.L_1473e:
	add	sp, #28
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_14750:
	.4byte	sUnk_82DEB60
.L_14754:
	.4byte	gWarioData


thumb_func_start func_8014758
func_8014758:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #16
	ldr	r0, .L_147a8
	ldrb	r5, [r0, #8]
	ldrb	r4, [r0, #9]
	ldr	r1, .L_147ac
	lsl	r0, r5, #1
	add	r0, r0, r5
	lsl	r0, r0, #1
	add	r1, #4
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	add	r0, r4, #0
	mov	r2, #1
	bl	func_8014090
	add	r1, r0, #0
	cmp	r1, #1
	beq	.L_1478a
	cmp	r1, #3
	bne	.L_147bc
.L_1478a:
	ldr	r2, .L_147b0
	ldr	r1, .L_147b4
	lsl	r0, r4, #3
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	ldrh	r3, [r2, #18]
	add	r0, r1, r3
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldr	r0, .L_147b8
	and	r4, r0
	sub	r1, r4, r1
	add	r1, #64	@ 0x40
	b	.L_147e0
	.align	2, 0
.L_147a8:
	.4byte	gUnk_3001918
.L_147ac:
	.4byte	sUnk_82DEB60
.L_147b0:
	.4byte	gWarioData
.L_147b4:
	.4byte	sUnk_82DEBA2
.L_147b8:
	.4byte	0xFFC0
.L_147bc:
	cmp	r1, #8
	beq	.L_147c4
	cmp	r1, #12
	bne	.L_147e2
.L_147c4:
	ldr	r2, .L_14838
	ldr	r0, .L_1483c
	lsl	r1, r4, #3
	add	r0, #6
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	ldrh	r3, [r2, #18]
	add	r0, r1, r3
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldr	r0, .L_14840
	and	r4, r0
	sub	r1, r4, r1
	sub	r1, #1
.L_147e0:
	strh	r1, [r2, #18]
.L_147e2:
	ldr	r0, .L_14838
	mov	r9, r0
	ldr	r1, .L_14844
	mov	sl, r1
	lsl	r0, r5, #1
	add	r0, r0, r5
	lsl	r7, r0, #1
	add	r0, r7, r1
	ldrh	r0, [r0, #0]
	mov	r2, r9
	ldrh	r2, [r2, #18]
	add	r0, r0, r2
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	mov	r3, r9
	ldrh	r0, [r3, #20]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	str	r0, [sp, #12]
	mov	r6, sp
	add	r6, #6
	add	r5, sp, #8
	str	r5, [sp, #0]
	add	r0, r4, #0
	mov	r1, r8
	add	r2, sp, #4
	add	r3, r6, #0
	bl	func_8013D6C
	add	r1, r0, #0
	ldrh	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_14878
	cmp	r1, #0
	beq	.L_14848
	mov	r2, r9
	strh	r1, [r2, #28]
	ldrh	r0, [r6, #0]
	strh	r0, [r2, #20]
	b	.L_14908
	.align	2, 0
.L_14838:
	.4byte	gWarioData
.L_1483c:
	.4byte	sUnk_82DEBA2
.L_14840:
	.4byte	0xFFC0
.L_14844:
	.4byte	sUnk_82DEB60
.L_14848:
	ldrh	r7, [r6, #0]
	add	r0, r4, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r1, r8
	add	r1, #1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	str	r5, [sp, #0]
	add	r2, sp, #4
	add	r3, r6, #0
	bl	func_8013D6C
	add	r1, r0, #0
	mov	r3, r9
	strh	r1, [r3, #28]
	cmp	r1, #0
	beq	.L_14870
	strh	r7, [r3, #20]
	b	.L_14908
.L_14870:
	sub	r0, r7, #1
	mov	r1, r9
	strh	r0, [r1, #20]
	b	.L_14908
.L_14878:
	mov	r0, sl
	add	r0, #2
	add	r0, r7, r0
	ldrh	r7, [r0, #0]
	mov	r2, r9
	ldrh	r2, [r2, #18]
	add	r0, r7, r2
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	str	r5, [sp, #0]
	add	r0, r4, #0
	mov	r1, r8
	add	r2, sp, #4
	add	r3, r6, #0
	bl	func_8013D6C
	add	r1, r0, #0
	ldrh	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_148dc
	cmp	r1, #0
	beq	.L_148ac
	mov	r3, r9
	strh	r1, [r3, #28]
	ldrh	r0, [r6, #0]
	b	.L_14906
.L_148ac:
	ldrh	r7, [r6, #0]
	sub	r0, r4, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r1, r8
	add	r1, #1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	str	r5, [sp, #0]
	add	r2, sp, #4
	add	r3, r6, #0
	bl	func_8013D6C
	add	r1, r0, #0
	mov	r0, r9
	strh	r1, [r0, #28]
	cmp	r1, #0
	beq	.L_148d4
	strh	r7, [r0, #20]
	b	.L_14908
.L_148d4:
	sub	r0, r7, #1
	mov	r1, r9
	strh	r0, [r1, #20]
	b	.L_14908
.L_148dc:
	lsl	r0, r7, #16
	asr	r0, r0, #16
	cmp	r0, #31
	ble	.L_14910
	ldr	r2, .L_1490c
	ldrh	r4, [r2, #18]
	str	r5, [sp, #0]
	add	r0, r4, #0
	ldr	r1, [sp, #12]
	add	r2, sp, #4
	add	r3, r6, #0
	bl	func_8013D6C
	add	r1, r0, #0
	ldrh	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_14910
	ldr	r3, .L_1490c
	strh	r1, [r3, #28]
	ldrh	r0, [r6, #0]
	sub	r0, #1
.L_14906:
	strh	r0, [r3, #20]
.L_14908:
	mov	r0, #255	@ 0xff
	b	.L_1491a
.L_1490c:
	.4byte	gWarioData
.L_14910:
	ldr	r0, .L_1492c
	ldrb	r0, [r0, #26]
	cmp	r0, #1
	beq	.L_14908
	mov	r0, #254	@ 0xfe
.L_1491a:
	add	sp, #16
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_1492c:
	.4byte	gWarioData


thumb_func_start func_8014930
func_8014930:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #28
	ldr	r4, .L_1497c
	ldrb	r0, [r4, #8]
	mov	sl, r0
	ldrb	r5, [r4, #4]
	ldrb	r1, [r4, #5]
	str	r1, [sp, #20]
	ldrh	r2, [r4, #6]
	str	r2, [sp, #12]
	ldrh	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_149f4
	mov	r2, #22
	neg	r2, r2
	mov	r0, sl
	add	r1, sp, #4
	bl	func_8013EFC
	add	r2, r0, #0
	cmp	r2, #0
	beq	.L_149f4
	ldr	r6, .L_14980
	add	r0, sp, #4
	ldrh	r3, [r0, #0]
	strh	r3, [r6, #18]
	ldrb	r0, [r4, #11]
	cmp	r0, #0
	bne	.L_14984
	strh	r0, [r6, #22]
	ldrb	r0, [r4, #18]
	add	r0, #1
	strb	r0, [r4, #18]
	b	.L_149f4
.L_1497c:
	.4byte	gUnk_3001918
.L_14980:
	.4byte	gWarioData
.L_14984:
	cmp	r0, #1
	beq	.L_1498e
	ldrb	r4, [r4, #14]
	cmp	r2, r4
	ble	.L_149f4
.L_1498e:
	ldr	r1, .L_149e8
	mov	r4, sl
	lsl	r0, r4, #1
	add	r0, sl
	add	r0, r0, r5
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	add	r0, r3, r0
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	ldrh	r1, [r6, #20]
	ldr	r0, .L_149ec
	mov	r8, r0
	ldrh	r0, [r0, #0]
	add	r1, r1, r0
	asr	r1, r1, #1
	strh	r1, [r6, #20]
	add	r1, #1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r5, sp
	add	r5, #6
	add	r4, sp, #8
	str	r4, [sp, #0]
	add	r0, r7, #0
	add	r2, sp, #4
	add	r3, r5, #0
	bl	func_8013D6C
	ldrh	r4, [r4, #0]
	cmp	r4, #0
	bne	.L_149d2
	b	.L_14b64
.L_149d2:
	mov	r0, #16
	and	r0, r4
	cmp	r0, #0
	bne	.L_149dc
	b	.L_14b5a
.L_149dc:
	ldrh	r2, [r6, #20]
	ldr	r0, .L_149f0
	mov	r1, r8
	ldrh	r3, [r1, #0]
	b	.L_14b50
	.align	2, 0
.L_149e8:
	.4byte	sUnk_82DEB60
.L_149ec:
	.4byte	gPreviousYPosition
.L_149f0:
	.4byte	0xFFC0
.L_149f4:
	ldr	r3, .L_14a58
	mov	r9, r3
	ldrb	r0, [r3, #26]
	cmp	r0, #1
	bne	.L_14a00
	b	.L_14c38
.L_14a00:
	ldr	r1, .L_14a5c
	mov	r4, sl
	lsl	r6, r4, #1
	add	r0, r6, r4
	add	r0, r0, r5
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	mov	r1, sp
	strh	r0, [r1, #24]
	add	r3, r0, #0
	mov	r2, r9
	ldrh	r2, [r2, #18]
	add	r0, r3, r2
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	mov	r3, r9
	ldrh	r3, [r3, #20]
	mov	r8, r3
	str	r7, [sp, #16]
	mov	r5, sp
	add	r5, #6
	add	r4, sp, #8
	str	r4, [sp, #0]
	add	r0, r7, #0
	mov	r1, r8
	add	r2, sp, #4
	add	r3, r5, #0
	bl	func_8013D6C
	add	r2, r0, #0
	ldrh	r3, [r4, #0]
	add	r1, r6, #0
	cmp	r3, #0
	bne	.L_14a48
	b	.L_14b70
.L_14a48:
	cmp	r2, #0
	beq	.L_14a60
	mov	r4, r9
	strh	r2, [r4, #28]
	mov	r1, sp
	ldrh	r0, [r1, #6]
	b	.L_14af2
	.align	2, 0
.L_14a58:
	.4byte	gWarioData
.L_14a5c:
	.4byte	sUnk_82DEB60
.L_14a60:
	ldr	r5, .L_14a90
	ldrh	r0, [r5, #0]
	mov	r2, sp
	ldrh	r2, [r2, #6]
	cmp	r0, r2
	bcs	.L_14aa0
	add	r5, r0, #0
	mov	r8, r5
	add	r3, sp, #8
	str	r3, [sp, #0]
	add	r0, r7, #0
	mov	r1, r8
	add	r2, sp, #4
	sub	r3, #2
	bl	func_8013D6C
	add	r2, r0, #0
	mov	r4, r9
	strh	r2, [r4, #28]
	cmp	r2, #0
	beq	.L_14a94
	mov	r1, sp
	ldrh	r0, [r1, #6]
	b	.L_14af2
.L_14a90:
	.4byte	gPreviousYPosition
.L_14a94:
	mov	r2, sp
	ldrh	r0, [r2, #6]
	add	r0, #63	@ 0x3f
	mov	r3, r9
	strh	r0, [r3, #20]
	b	.L_14ae0
.L_14aa0:
	cmp	r3, #16
	beq	.L_14b70
	add	r0, sp, #4
	ldrh	r1, [r0, #0]
	mov	r4, sp
	ldrh	r4, [r4, #24]
	sub	r1, r1, r4
	ldr	r2, [sp, #12]
	lsl	r0, r2, #16
	asr	r0, r0, #16
	add	r0, r0, r1
	mov	r3, r9
	strh	r0, [r3, #18]
	ldrh	r7, [r3, #18]
	add	r4, sp, #8
	str	r4, [sp, #0]
	add	r0, r7, #0
	mov	r1, r8
	add	r2, sp, #4
	mov	r3, sp
	add	r3, #6
	bl	func_8013D6C
	add	r2, r0, #0
	mov	r0, r9
	strh	r2, [r0, #28]
	cmp	r2, #0
	beq	.L_14ae4
	mov	r1, sp
	ldrh	r0, [r1, #6]
	mov	r2, r9
	strh	r0, [r2, #20]
.L_14ae0:
	mov	r0, #253	@ 0xfd
	b	.L_14c3a
.L_14ae4:
	mov	r3, sp
	ldrh	r0, [r3, #8]
	cmp	r0, #0
	beq	.L_14af6
	ldrh	r0, [r3, #6]
	sub	r0, #1
	mov	r4, r9
.L_14af2:
	strh	r0, [r4, #20]
	b	.L_14ae0
.L_14af6:
	ldr	r4, .L_14b04
	ldrb	r0, [r4, #11]
	cmp	r0, #0
	bne	.L_14b08
	mov	r0, r9
	strh	r2, [r0, #22]
	b	.L_14c38
.L_14b04:
	.4byte	gUnk_3001918
.L_14b08:
	ldr	r1, [sp, #16]
	mov	r0, r8
	bl	func_806EC50
	add	r2, r0, #0
	cmp	r2, #0
	beq	.L_14b1e
	ldrb	r0, [r4, #11]
	cmp	r0, #1
	beq	.L_14b1e
	b	.L_14c38
.L_14b1e:
	mov	r1, r9
	ldrh	r0, [r1, #18]
	ldrh	r1, [r1, #20]
	add	r1, #1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r2, sp, #8
	str	r2, [sp, #0]
	add	r2, sp, #4
	mov	r3, sp
	add	r3, #6
	bl	func_8013D6C
	mov	r3, sp
	ldrh	r4, [r3, #8]
	cmp	r4, #0
	beq	.L_14b64
	mov	r0, #16
	and	r0, r4
	cmp	r0, #0
	beq	.L_14b5a
	mov	r4, r9
	ldrh	r2, [r4, #20]
	ldr	r0, .L_14b68
	ldrh	r3, [r5, #0]
.L_14b50:
	add	r1, r0, #0
	and	r1, r2
	and	r0, r3
	cmp	r1, r0
	beq	.L_14b64
.L_14b5a:
	ldr	r1, .L_14b6c
	mov	r2, sp
	ldrh	r0, [r2, #6]
	sub	r0, #2
	strh	r0, [r1, #20]
.L_14b64:
	mov	r0, #252	@ 0xfc
	b	.L_14c3a
.L_14b68:
	.4byte	0xFFC0
.L_14b6c:
	.4byte	gWarioData
.L_14b70:
	ldr	r6, .L_14bb8
	ldr	r3, [sp, #20]
	lsl	r0, r3, #1
	add	r1, sl
	lsl	r1, r1, #1
	mov	r9, r1
	add	r0, r9
	ldr	r4, .L_14bbc
	add	r0, r0, r4
	ldrh	r0, [r0, #0]
	ldrh	r1, [r6, #18]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	ldrh	r2, [r6, #20]
	mov	r8, r2
	mov	r4, sp
	add	r4, #6
	add	r5, sp, #8
	str	r5, [sp, #0]
	add	r0, r7, #0
	mov	r1, r8
	add	r2, sp, #4
	add	r3, r4, #0
	bl	func_8013D6C
	add	r2, r0, #0
	ldrh	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_14bf2
	cmp	r2, #0
	beq	.L_14bc0
	strh	r2, [r6, #28]
	ldrh	r0, [r4, #0]
	b	.L_14c2c
	.align	2, 0
.L_14bb8:
	.4byte	gWarioData
.L_14bbc:
	.4byte	sUnk_82DEB60
.L_14bc0:
	ldr	r1, .L_14be8
	ldrh	r0, [r1, #0]
	ldrh	r3, [r4, #0]
	cmp	r0, r3
	bcs	.L_14c38
	add	r1, r0, #0
	mov	r8, r1
	str	r5, [sp, #0]
	add	r0, r7, #0
	add	r2, sp, #4
	add	r3, r4, #0
	bl	func_8013D6C
	add	r2, r0, #0
	strh	r2, [r6, #28]
	cmp	r2, #0
	beq	.L_14bec
	ldrh	r0, [r4, #0]
	b	.L_14c2c
	.align	2, 0
.L_14be8:
	.4byte	gPreviousYPosition
.L_14bec:
	ldrh	r0, [r4, #0]
	add	r0, #63	@ 0x3f
	b	.L_14c2c
.L_14bf2:
	ldr	r0, .L_14c30
	add	r0, #2
	add	r0, r9
	mov	r4, #0
	ldrsh	r0, [r0, r4]
	cmp	r0, #31
	ble	.L_14c38
	ldrh	r7, [r6, #18]
	add	r0, sp, #8
	str	r0, [sp, #0]
	add	r0, r7, #0
	mov	r1, r8
	add	r2, sp, #4
	mov	r3, sp
	add	r3, #6
	bl	func_8013D6C
	add	r2, r0, #0
	mov	r1, sp
	ldrh	r0, [r1, #8]
	cmp	r0, #0
	beq	.L_14c38
	ldr	r0, .L_14c34
	ldrh	r3, [r1, #6]
	ldrh	r0, [r0, #0]
	cmp	r0, r3
	bcs	.L_14c38
	strh	r2, [r6, #28]
	sub	r0, r3, #1
.L_14c2c:
	strh	r0, [r6, #20]
	b	.L_14ae0
.L_14c30:
	.4byte	sUnk_82DEB60
.L_14c34:
	.4byte	gPreviousYPosition
.L_14c38:
	mov	r0, #255	@ 0xff
.L_14c3a:
	add	sp, #28
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8014C4C
func_8014C4C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #12
	ldr	r0, .L_14c88
	ldrb	r1, [r0, #8]
	mov	r9, r1
	ldrb	r7, [r0, #9]
	ldrb	r0, [r0, #4]
	mov	r8, r0
	ldr	r4, .L_14c8c
	ldrh	r1, [r4, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #5
	cmp	r1, r0
	bne	.L_14c9c
	ldr	r0, .L_14c90
	ldrh	r1, [r0, #4]
	mov	r0, #0
	mov	r2, #0
	bl	func_8014090
	cmp	r0, #0
	beq	.L_14c98
	ldr	r1, .L_14c94
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_14c9c
.L_14c88:
	.4byte	gUnk_3001918
.L_14c8c:
	.4byte	gWarioData
.L_14c90:
	.4byte	sUnk_82DEB60
.L_14c94:
	.4byte	gUnk_30031BB
.L_14c98:
	mov	r0, #19
	strb	r0, [r4, #1]
.L_14c9c:
	ldr	r0, .L_14cf0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	bne	.L_14d7e
	ldr	r6, .L_14cf4
	mov	r2, r9
	lsl	r0, r2, #1
	add	r0, r9
	lsl	r4, r0, #1
	add	r0, r6, #4
	add	r0, r4, r0
	ldrh	r5, [r0, #0]
	add	r0, r7, #0
	add	r1, r5, #0
	mov	r2, #0
	bl	func_8014090
	add	r2, r0, #0
	ldr	r3, .L_14cf8
	ldrb	r0, [r3, #15]
	cmp	r0, #0
	beq	.L_14d04
	ldr	r1, .L_14cfc
	ldrh	r0, [r1, #20]
	add	r0, r0, r5
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldr	r0, .L_14d00
	and	r4, r0
	sub	r0, r4, r5
	add	r0, #64	@ 0x40
	strh	r0, [r1, #20]
	ldrb	r0, [r3, #12]
	cmp	r0, #1
	bls	.L_14d78
	ldrb	r0, [r3, #15]
	cmp	r2, r0
	ble	.L_14d7e
	b	.L_14d78
	.align	2, 0
.L_14cf0:
	.4byte	gUnk_30031BB
.L_14cf4:
	.4byte	sUnk_82DEB60
.L_14cf8:
	.4byte	gUnk_3001918
.L_14cfc:
	.4byte	gWarioData
.L_14d00:
	.4byte	0xFFC0
.L_14d04:
	cmp	r2, #0
	beq	.L_14d7e
	ldrb	r0, [r3, #12]
	cmp	r0, #1
	bhi	.L_14d64
	cmp	r2, #1
	bne	.L_14d34
	ldr	r2, .L_14d2c
	add	r0, r4, r6
	ldrh	r1, [r0, #0]
	ldrh	r3, [r2, #18]
	add	r0, r1, r3
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldr	r0, .L_14d30
	and	r3, r0
	sub	r1, r3, r1
	add	r1, #64	@ 0x40
	strh	r1, [r2, #18]
	b	.L_14d7e
.L_14d2c:
	.4byte	gWarioData
.L_14d30:
	.4byte	0xFFC0
.L_14d34:
	cmp	r2, #8
	bne	.L_14d5c
	ldr	r2, .L_14d54
	add	r0, r6, #2
	add	r0, r4, r0
	ldrh	r1, [r0, #0]
	ldrh	r3, [r2, #18]
	add	r0, r1, r3
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldr	r0, .L_14d58
	and	r3, r0
	sub	r1, r3, r1
	sub	r1, #1
	strh	r1, [r2, #18]
	b	.L_14d7e
.L_14d54:
	.4byte	gWarioData
.L_14d58:
	.4byte	0xFFC0
.L_14d5c:
	mov	r0, #6
	and	r0, r2
	cmp	r0, #0
	beq	.L_14d7e
.L_14d64:
	ldr	r1, .L_14dbc
	ldrh	r0, [r1, #20]
	add	r0, r0, r5
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldr	r0, .L_14dc0
	and	r4, r0
	sub	r0, r4, r5
	add	r0, #64	@ 0x40
	strh	r0, [r1, #20]
.L_14d78:
	ldrb	r0, [r3, #19]
	add	r0, #1
	strb	r0, [r3, #19]
.L_14d7e:
	ldr	r4, .L_14dbc
	ldrh	r1, [r4, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #3
	cmp	r1, r0
	bne	.L_14de0
	ldr	r0, .L_14dc4
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_14de0
	ldr	r0, .L_14dc8
	ldrb	r0, [r0, #19]
	cmp	r0, #0
	beq	.L_14de0
	ldrh	r0, [r4, #20]
	sub	r0, #128	@ 0x80
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	GetBackgroundCollisionAtPosition
	asr	r0, r0, #16
	cmp	r0, #9
	bne	.L_14dcc
	ldrh	r1, [r4, #18]
	ldr	r0, .L_14dc0
	and	r0, r1
	add	r0, #64	@ 0x40
	b	.L_14dd6
.L_14dbc:
	.4byte	gWarioData
.L_14dc0:
	.4byte	0xFFC0
.L_14dc4:
	.4byte	gButtonsHeld
.L_14dc8:
	.4byte	gUnk_3001918
.L_14dcc:
	cmp	r0, #10
	bne	.L_14de0
	ldrh	r1, [r4, #18]
	ldr	r0, .L_14ddc
	and	r0, r1
.L_14dd6:
	strh	r0, [r4, #18]
	mov	r0, #17
	b	.L_14eee
.L_14ddc:
	.4byte	0xFFC0
.L_14de0:
	ldr	r0, .L_14e2c
	mov	sl, r0
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_14eb2
	ldr	r7, .L_14e30
	ldr	r1, .L_14e34
	mov	r2, r9
	lsl	r0, r2, #1
	add	r0, r9
	add	r0, r8
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	mov	r8, r0
	ldrh	r0, [r7, #18]
	add	r0, r8
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldrh	r4, [r7, #20]
	mov	r6, sp
	add	r6, #6
	add	r5, sp, #8
	str	r5, [sp, #0]
	add	r0, r3, #0
	add	r1, r4, #0
	add	r2, sp, #4
	add	r3, r6, #0
	bl	func_8013D6C
	add	r2, r0, #0
	ldrh	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_14e70
	cmp	r2, #0
	beq	.L_14e38
	strh	r2, [r7, #28]
	b	.L_14e68
.L_14e2c:
	.4byte	gUnk_3001918
.L_14e30:
	.4byte	gWarioData
.L_14e34:
	.4byte	sUnk_82DEB60
.L_14e38:
	add	r0, sp, #4
	ldrh	r0, [r0, #0]
	mov	r3, r8
	sub	r0, r0, r3
	mov	r1, sl
	ldrh	r1, [r1, #6]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	ldrh	r3, [r7, #18]
	str	r5, [sp, #0]
	add	r0, r3, #0
	add	r1, r4, #0
	add	r2, sp, #4
	add	r3, r6, #0
	bl	func_8013D6C
	add	r2, r0, #0
	cmp	r2, #0
	beq	.L_14e70
	strh	r2, [r7, #28]
	mov	r2, r8
	strh	r2, [r7, #18]
.L_14e68:
	ldrh	r0, [r6, #0]
	strh	r0, [r7, #20]
	mov	r0, #253	@ 0xfd
	b	.L_14eee
.L_14e70:
	mov	r0, r9
	add	r1, sp, #4
	mov	r2, #0
	bl	func_8013EFC
	add	r2, r0, #0
	cmp	r2, #0
	beq	.L_14eb2
	ldr	r3, .L_14e9c
	add	r0, sp, #4
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #18]
	ldr	r1, .L_14ea0
	ldrb	r0, [r1, #11]
	cmp	r0, #0
	bne	.L_14ea4
	strh	r0, [r3, #22]
	ldrb	r0, [r1, #18]
	add	r0, #1
	strb	r0, [r1, #18]
	b	.L_14eb2
	.align	2, 0
.L_14e9c:
	.4byte	gWarioData
.L_14ea0:
	.4byte	gUnk_3001918
.L_14ea4:
	cmp	r0, #1
	beq	.L_14eae
	ldrb	r1, [r1, #14]
	cmp	r2, r1
	ble	.L_14eb2
.L_14eae:
	mov	r0, #252	@ 0xfc
	b	.L_14eee
.L_14eb2:
	ldr	r1, .L_14ee0
	ldrb	r0, [r1, #19]
	cmp	r0, #0
	beq	.L_14eec
	ldrb	r0, [r1, #12]
	cmp	r0, #1
	bhi	.L_14eec
	ldr	r0, .L_14ee4
	ldrh	r2, [r0, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #4
	add	r3, r0, #0
	cmp	r2, r1
	bne	.L_14ee8
	ldrh	r1, [r3, #24]
	mov	r2, #24
	ldrsh	r0, [r3, r2]
	cmp	r0, #110	@ 0x6e
	ble	.L_14ee8
	mov	r0, #0
	strh	r0, [r3, #22]
	neg	r0, r1
	b	.L_14eea
.L_14ee0:
	.4byte	gUnk_3001918
.L_14ee4:
	.4byte	gWarioData
.L_14ee8:
	mov	r0, #0
.L_14eea:
	strh	r0, [r3, #24]
.L_14eec:
	mov	r0, #255	@ 0xff
.L_14eee:
	add	sp, #12
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8014F00
func_8014F00:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #12
	ldr	r5, .L_14f74
	ldrh	r0, [r5, #18]
	ldr	r6, .L_14f78
	ldr	r7, .L_14f7c
	ldrh	r2, [r7, #0]
	add	r1, r6, #0
	and	r1, r0
	add	r0, r6, #0
	and	r0, r2
	cmp	r1, r0
	bne	.L_14fa0
	ldrh	r0, [r5, #28]
	cmp	r0, #0
	bne	.L_14fa0
	ldrb	r0, [r5, #26]
	cmp	r0, #0
	bne	.L_14fa0
	ldrh	r2, [r5, #18]
	ldrh	r0, [r5, #20]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	mov	r3, sp
	add	r3, #6
	add	r4, sp, #8
	str	r4, [sp, #0]
	add	r0, r2, #0
	add	r2, sp, #4
	bl	func_8013D6C
	cmp	r0, #0
	bne	.L_14fa0
	ldrh	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_14fa0
	ldrh	r4, [r5, #18]
	mov	r1, #63	@ 0x3f
	add	r2, r1, #0
	and	r2, r4
	ldrh	r0, [r7, #0]
	and	r1, r0
	ldr	r0, .L_14f80
	ldrh	r3, [r0, #0]
	mov	r0, #16
	and	r0, r3
	cmp	r0, #0
	beq	.L_14f84
	cmp	r2, #29
	bls	.L_14fa0
	cmp	r1, #30
	bhi	.L_14fa0
	add	r0, r6, #0
	and	r0, r4
	add	r0, #30
	b	.L_14f9a
	.align	2, 0
.L_14f74:
	.4byte	gWarioData
.L_14f78:
	.4byte	0xFFC0
.L_14f7c:
	.4byte	gPreviousXPosition
.L_14f80:
	.4byte	gUnk_3001918
.L_14f84:
	mov	r0, #32
	and	r0, r3
	cmp	r0, #0
	beq	.L_14fa0
	cmp	r2, #33	@ 0x21
	bhi	.L_14fa0
	cmp	r1, #32
	bls	.L_14fa0
	add	r0, r6, #0
	and	r0, r4
	add	r0, #33	@ 0x21
.L_14f9a:
	strh	r0, [r5, #18]
	mov	r0, #254	@ 0xfe
	b	.L_14fa2
.L_14fa0:
	mov	r0, #255	@ 0xff
.L_14fa2:
	add	sp, #12
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8014FAC
func_8014FAC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #12
	ldr	r0, .L_1500c
	ldrb	r2, [r0, #8]
	mov	r8, r2
	ldr	r7, .L_15010
	ldrh	r1, [r7, #18]
	mov	ip, r1
	ldrh	r1, [r0, #2]
	mov	r0, #64	@ 0x40
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	cmp	r6, #0
	beq	.L_15044
	ldr	r1, .L_15014
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #1
	add	r1, #4
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	mov	r8, r0
	ldrh	r0, [r7, #20]
	add	r0, r8
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	mov	r6, sp
	add	r6, #6
	add	r4, sp, #8
	str	r4, [sp, #0]
	mov	r0, ip
	add	r1, r5, #0
	add	r2, sp, #4
	add	r3, r6, #0
	bl	func_8013D6C
	ldrh	r0, [r4, #0]
	cmp	r0, #1
	bne	.L_15018
	ldrh	r0, [r6, #0]
	mov	r2, r8
	sub	r0, r0, r2
	add	r0, #64	@ 0x40
	strh	r0, [r7, #20]
	b	.L_150c0
.L_1500c:
	.4byte	gUnk_3001918
.L_15010:
	.4byte	gWarioData
.L_15014:
	.4byte	sUnk_82DEB60
.L_15018:
	ldrh	r1, [r7, #18]
	add	r0, r5, #0
	bl	GetBackgroundCollisionAtPosition
	asr	r1, r0, #16
	sub	r0, r1, #2
	cmp	r0, #1
	bls	.L_150c0
	ldrh	r0, [r7, #20]
	ldrh	r1, [r7, #18]
	bl	GetBackgroundCollisionAtPosition
	asr	r1, r0, #16
	sub	r0, r1, #2
	cmp	r0, #1
	bls	.L_150c0
	ldr	r0, .L_15040
	ldrh	r1, [r0, #0]
	b	.L_15060
	.align	2, 0
.L_15040:
	.4byte	gPreviousYPosition
.L_15044:
	ldrh	r5, [r7, #20]
	mov	r3, sp
	add	r3, #6
	add	r4, sp, #8
	str	r4, [sp, #0]
	mov	r0, ip
	add	r1, r5, #0
	add	r2, sp, #4
	bl	func_8013D6C
	ldrh	r0, [r4, #0]
	cmp	r0, #1
	bne	.L_15070
	ldrh	r1, [r7, #20]
.L_15060:
	ldr	r0, .L_1506c
	and	r0, r1
	sub	r0, #1
	strh	r0, [r7, #20]
	mov	r0, #2
	b	.L_150c2
.L_1506c:
	.4byte	0xFFC0
.L_15070:
	strh	r6, [r4, #0]
	ldrh	r5, [r7, #20]
	ldrh	r1, [r7, #18]
	add	r0, r5, #0
	bl	GetBackgroundCollisionAtPosition
	asr	r1, r0, #16
	sub	r0, r1, #2
	cmp	r0, #1
	bls	.L_15088
	mov	r0, #1
	strh	r0, [r4, #0]
.L_15088:
	ldr	r1, .L_150bc
	mov	r2, r8
	lsl	r0, r2, #1
	add	r0, r8
	lsl	r0, r0, #1
	add	r1, #4
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldrh	r1, [r7, #20]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	ldrh	r1, [r7, #18]
	add	r0, r5, #0
	bl	GetBackgroundCollisionAtPosition
	asr	r1, r0, #16
	ldrh	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_150c0
	cmp	r1, #2
	beq	.L_150c0
	cmp	r1, #3
	beq	.L_150c0
	mov	r0, #254	@ 0xfe
	b	.L_150c2
.L_150bc:
	.4byte	sUnk_82DEB60
.L_150c0:
	mov	r0, #255	@ 0xff
.L_150c2:
	add	sp, #12
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_80150D0
func_80150D0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	ldr	r4, .L_15128
	ldrb	r6, [r4, #8]
	ldrb	r0, [r4, #9]
	str	r0, [sp, #4]
	ldr	r1, .L_1512c
	mov	sl, r1
	ldr	r1, .L_15130
	lsl	r0, r6, #1
	add	r0, r0, r6
	lsl	r0, r0, #1
	add	r1, #4
	add	r0, r0, r1
	mov	r8, r0
	ldrh	r0, [r0, #0]
	mov	r9, r0
	mov	r1, sl
	ldrh	r0, [r1, #20]
	add	r0, r9
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	ldrh	r1, [r1, #18]
	add	r0, r5, #0
	bl	GetBackgroundCollisionAtPosition
	asr	r7, r0, #16
	ldrh	r1, [r4, #2]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_1515c
	cmp	r7, #4
	beq	.L_15138
	ldr	r0, .L_15134
	and	r5, r0
	mov	r1, r9
	sub	r0, r5, r1
	b	.L_15150
	.align	2, 0
.L_15128:
	.4byte	gUnk_3001918
.L_1512c:
	.4byte	gWarioData
.L_15130:
	.4byte	sUnk_82DEB60
.L_15134:
	.4byte	0xFFC0
.L_15138:
	mov	r0, r8
	ldrh	r4, [r0, #0]
	ldr	r0, [sp, #4]
	add	r1, r4, #0
	mov	r2, #0
	bl	func_8014090
	cmp	r0, #0
	beq	.L_15180
	ldr	r0, .L_15158
	and	r5, r0
	sub	r0, r5, r4
.L_15150:
	add	r0, #64	@ 0x40
	mov	r1, sl
	strh	r0, [r1, #20]
	b	.L_15180
.L_15158:
	.4byte	0xFFC0
.L_1515c:
	mov	r1, sl
	ldrh	r0, [r1, #20]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	add	r0, r6, #0
	add	r1, r5, #0
	mov	r2, sp
	bl	func_8014268
	cmp	r0, #0
	beq	.L_15178
	mov	r0, #2
	b	.L_15182
.L_15178:
	cmp	r7, #4
	beq	.L_15180
	mov	r0, #254	@ 0xfe
	b	.L_15182
.L_15180:
	mov	r0, #255	@ 0xff
.L_15182:
	add	sp, #8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8015194
func_8015194:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	ldr	r0, .L_151b8
	ldrb	r4, [r0, #8]
	add	r6, r4, #0
	add	r0, r4, #0
	mov	r1, sp
	mov	r2, #0
	bl	func_8013EFC
	cmp	r0, #0
	beq	.L_151c0
	ldr	r0, .L_151bc
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #18]
	mov	r0, #255	@ 0xff
	b	.L_1520e
.L_151b8:
	.4byte	gUnk_3001918
.L_151bc:
	.4byte	gWarioData
.L_151c0:
	ldr	r5, .L_151dc
	ldrh	r1, [r5, #20]
	add	r1, #1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r2, sp
	add	r2, #2
	add	r0, r4, #0
	bl	func_8014268
	cmp	r0, #0
	beq	.L_151e0
	mov	r0, #2
	b	.L_1520e
.L_151dc:
	.4byte	gWarioData
.L_151e0:
	ldr	r1, .L_15208
	lsl	r0, r6, #1
	add	r0, r0, r6
	lsl	r0, r0, #1
	add	r1, #4
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldrh	r1, [r5, #20]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r5, #18]
	bl	GetBackgroundCollisionAtPosition
	asr	r0, r0, #16
	cmp	r0, #4
	bne	.L_1520c
	mov	r0, #255	@ 0xff
	b	.L_1520e
	.align	2, 0
.L_15208:
	.4byte	sUnk_82DEB60
.L_1520c:
	mov	r0, #254	@ 0xfe
.L_1520e:
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_8015216
func_8015216:
	.align	2, 0
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	ldr	r1, .L_15240
	ldrb	r0, [r1, #1]
	sub	r0, #19
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	add	r3, r1, #0
	cmp	r0, #1
	bls	.L_15248
	ldrb	r0, [r3, #4]
	cmp	r0, #0
	beq	.L_15248
	sub	r0, #1
	strb	r0, [r3, #4]
	ldr	r1, .L_15244
	mov	r0, #1
	b	.L_1524c
	.align	2, 0
.L_15240:
	.4byte	gWarioData
.L_15244:
	.4byte	gUnk_30019F0
.L_15248:
	ldr	r1, .L_15264
	mov	r0, #0
.L_1524c:
	strb	r0, [r1, #0]
	ldrb	r0, [r3, #1]
	sub	r0, #23
	cmp	r0, #50	@ 0x32
.L_15254:
	bls	.L_15258
	b	.L_1539c
.L_15258:
	lsl	r0, r0, #2
	ldr	r1, .L_15268
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_15264:
	.4byte	gUnk_30019F0
.L_15268:
	.4byte	.L_1526c
.L_1526c:
	.4byte	.L_15338
	.4byte	.L_1539c
	.4byte	.L_15338
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_15338
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
	.4byte	.L_1539c
.L_152d4:
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r4, [r3, r6]
	lsr	r1, r0, #32
	strh	r0, [r7, r4]
	lsr	r1, r0, #32
	strh	r0, [r7, r4]
	lsr	r1, r0, #32
.L_15338:
	ldr	r1, .L_15380
	mov	r7, #1
	strb	r7, [r1, #0]
	ldr	r0, .L_15384
	ldrb	r0, [r0, #1]
	cmp	r0, #28
	bne	.L_1534a
	mov	r0, #2
	strb	r0, [r1, #0]
.L_1534a:
	mov	r0, #16
	strb	r0, [r1, #1]
	ldr	r5, .L_15388
	ldrh	r2, [r5, #0]
	mov	r0, #31
	ldr	r3, .L_1538c
	and	r0, r2
	lsl	r0, r0, #1
	add	r4, r0, r3
	ldr	r1, .L_15390
	ldrh	r1, [r1, #0]
	strh	r1, [r4, #0]
	add	r3, #64	@ 0x40
	add	r0, r0, r3
	ldr	r1, .L_15394
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #0]
	add	r2, #1
	strh	r2, [r5, #0]
	lsl	r2, r2, #16
	asr	r2, r2, #16
	cmp	r2, #31
	ble	.L_153a0
	ldr	r0, .L_15398
	strb	r7, [r0, #0]
	b	.L_153a0
	.align	2, 0
.L_15380:
	.4byte	gUnk_3001938
.L_15384:
	.4byte	gWarioData
.L_15388:
	.4byte	gUnk_30031B8
.L_1538c:
	.4byte	gUnk_3003138
.L_15390:
	.4byte	gPreviousXPosition
.L_15394:
	add	r4, r6, r7
	lsl	r0, r0, #12
.L_15398:
	.4byte	gUnk_30031BA
.L_1539c:
	bl	func_800FF64
.L_153a0:
	ldr	r0, .L_153b8
	ldrb	r2, [r0, #1]
	add	r3, r0, #0
	cmp	r2, #51	@ 0x33
	bls	.L_153ac
	b	.L_155c8
.L_153ac:
	lsl	r0, r2, #2
	ldr	r1, .L_153bc
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_153b8:
	.4byte	gWarioData
.L_153bc:
	.4byte	.L_153c0
.L_153c0:
	.4byte	.L_15504
	.4byte	.L_15504
	.4byte	.L_15504
	.4byte	.L_15504
	.4byte	.L_15490
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_15504
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_15504
	.4byte	.L_155c8
	.4byte	.L_15504
	.4byte	.L_15504
	.4byte	.L_15504
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155a0
	.4byte	.L_155a0
	.4byte	.L_155a0
	.4byte	.L_155a0
	.4byte	.L_155a0
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
	.4byte	.L_155c8
.L_15480:
	strb	r0, [r1, r7]
	lsr	r1, r0, #32
	strb	r0, [r1, r7]
	lsr	r1, r0, #32
	strb	r0, [r1, r7]
	lsr	r1, r0, #32
	strb	r4, [r0, r4]
	lsr	r1, r0, #32
.L_15490:
	ldr	r1, .L_154a4
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_154b8
	mov	r1, #24
	ldrsh	r0, [r3, r1]
.L_1549c:
	cmp	r0, #0
	blt	.L_154ac
	ldr	r1, .L_154a8
	b	.L_1558c
.L_154a4:
	.4byte	gCurrentCarriedSprite
.L_154a8:
	bcc	.L_1549c
	lsr	r5, r5, #32
.L_154ac:
	ldr	r0, .L_154b4
	lsl	r1, r6, #2
	add	r0, #8
	b	.L_155d0
.L_154b4:
	.4byte	sUnk_82DD3F8
.L_154b8:
	ldrb	r1, [r1, #1]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_154e4
	mov	r1, #24
	ldrsh	r0, [r3, r1]
	cmp	r0, #0
.L_154c8:
	blt	.L_154d8
	ldr	r0, .L_154d4
	lsl	r1, r6, #2
	add	r0, #32
	b	.L_155d0
	.align	2, 0
.L_154d4:
	bcc	.L_154c8
	lsr	r5, r5, #32
.L_154d8:
	ldr	r0, .L_154e0
	lsl	r1, r6, #2
	add	r0, #40	@ 0x28
	b	.L_155d0
.L_154e0:
	.4byte	sUnk_82DD3F8
.L_154e4:
	mov	r1, #24
	ldrsh	r0, [r3, r1]
.L_154e8:
	cmp	r0, #0
	blt	.L_154f8
	ldr	r0, .L_154f4
	lsl	r1, r6, #2
	add	r0, #16
	b	.L_155d0
.L_154f4:
	bcc	.L_154e8
	lsr	r5, r5, #32
.L_154f8:
	ldr	r0, .L_15500
	lsl	r1, r6, #2
	add	r0, #24
	b	.L_155d0
.L_15500:
	.4byte	sUnk_82DD3F8
.L_15504:
	ldr	r1, .L_15520
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_15570
	cmp	r2, #0
	bne	.L_15524
	ldrb	r1, [r1, #1]
	mov	r0, #15
	and	r0, r1
	mov	r2, #1
	cmp	r0, #1
	bhi	.L_15566
	mov	r2, #0
	b	.L_15566
.L_15520:
	.4byte	gCurrentCarriedSprite
.L_15524:
	cmp	r2, #1
	bne	.L_1552c
	mov	r2, #2
	b	.L_15566
.L_1552c:
	cmp	r2, #2
	beq	.L_1553c
	cmp	r2, #3
	bne	.L_15538
	mov	r2, #4
	b	.L_15566
.L_15538:
	cmp	r2, #10
	bne	.L_15540
.L_1553c:
	mov	r2, #3
	b	.L_15566
.L_15540:
	cmp	r2, #27
	beq	.L_1554c
	cmp	r2, #29
	beq	.L_15554
	cmp	r2, #28
	bne	.L_15550
.L_1554c:
	mov	r2, #5
	b	.L_15566
.L_15550:
	cmp	r2, #30
	bne	.L_15558
.L_15554:
	mov	r2, #6
	b	.L_15566
.L_15558:
	cmp	r2, #31
	bne	.L_15560
	mov	r2, #7
	b	.L_15566
.L_15560:
	cmp	r2, #51	@ 0x33
	bne	.L_15566
	mov	r2, #8
.L_15566:
	ldr	r0, .L_1556c
.L_15568:
	b	.L_155ca
	.align	2, 0
.L_1556c:
	.4byte	sUnk_82DD388
.L_15570:
	ldr	r0, .L_15594
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_155c8
	cmp	r2, #0
	bne	.L_155c8
	ldr	r0, .L_15598
	ldrh	r1, [r0, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_155c8
	ldr	r1, .L_1559c
.L_1558c:
	lsl	r0, r6, #2
	add	r0, r0, r1
	ldr	r2, [r0, #0]
	b	.L_155d4
.L_15594:
	.4byte	gWarioPauseTimer
.L_15598:
	.4byte	gButtonsHeld
.L_1559c:
	.4byte	sUnk_82DD428
.L_155a0:
	ldr	r0, .L_155c0
	ldrb	r1, [r0, #1]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_155c8
	add	r0, r2, #0
	sub	r0, #34	@ 0x22
	lsl	r0, r0, #24
	ldr	r2, .L_155c4
	lsl	r1, r6, #2
	lsr	r0, r0, #21
	add	r1, r1, r0
	add	r1, r1, r2
	b	.L_155d2
	.align	2, 0
.L_155c0:
	.4byte	gCurrentCarriedSprite
.L_155c4:
	.4byte	sUnk_82DD3D0
.L_155c8:
	ldr	r0, .L_15624
.L_155ca:
	lsl	r1, r6, #2
	lsl	r2, r2, #3
	add	r1, r1, r2
.L_155d0:
	add	r1, r1, r0
.L_155d2:
	ldr	r2, [r1, #0]
.L_155d4:
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r2, r2, r0
	ldr	r1, [r2, #0]
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	strh	r0, [r3, #40]	@ 0x28
	add	r1, #1
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	strh	r0, [r3, #48]	@ 0x30
	add	r1, #1
.L_155f0:
	str	r1, [r3, #36]	@ 0x24
	ldrh	r0, [r3, #40]	@ 0x28
	add	r1, r1, r0
	str	r1, [r3, #44]	@ 0x2c
	ldr	r0, [r2, #4]
	str	r0, [r3, #32]
	ldrb	r0, [r3, #4]
	cmp	r0, #0
	beq	.L_15638
	ldr	r0, .L_15628
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_15638
	ldr	r0, .L_1562c
	ldrb	r1, [r0, #0]
	mov	r0, #7
	and	r0, r1
	cmp	r0, #3
	bhi	.L_15638
	ldr	r1, .L_15630
	mov	r0, #32
	strh	r0, [r1, #0]
	ldr	r1, .L_15634
	add	r0, r1, #0
	mov	r1, #0
	b	.L_1588a
.L_15624:
	.4byte	sUnk_82DD110
.L_15628:
	.4byte	gUnk_30019F0
.L_1562c:
	.4byte	gMainTimer
.L_15630:
	.4byte	gWarioPaletteSize
.L_15634:
	.4byte	sUnk_82DE3A0
.L_15638:
	ldrb	r0, [r3, #1]
	sub	r0, #22
	cmp	r0, #54	@ 0x36
	bls	.L_15642
	b	.L_158a8
.L_15642:
	lsl	r0, r0, #2
	ldr	r1, .L_1564c
	add	r0, r0, r1
.L_15648:
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_1564c:
	.4byte	.L_15650
.L_15650:
	.4byte	.L_1572c
	.4byte	.L_15748
	.4byte	.L_1572c
	.4byte	.L_15748
	.4byte	.L_1572c
	.4byte	.L_15796
	.4byte	.L_15796
	.4byte	.L_15796
	.4byte	.L_15796
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_157d4
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_15824
	.4byte	.L_15824
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_15800
	.4byte	.L_15800
	.4byte	.L_15824
	.4byte	.L_15824
	.4byte	.L_158a8
	.4byte	.L_15800
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_158a8
	.4byte	.L_15848
	.4byte	.L_15848
	.4byte	.L_15848
.L_15708:
	ldr	r0, [r1, r1]
	lsr	r1, r0, #32
	ldr	r0, [r5, r2]
	lsr	r1, r0, #32
	ldr	r0, [r5, r2]
	lsr	r1, r0, #32
	ldr	r0, [r5, r2]
	lsr	r1, r0, #32
	ldr	r0, [r5, r2]
	lsr	r1, r0, #32
	ldr	r0, [r5, r2]
	lsr	r1, r0, #32
	ldr	r0, [r5, r2]
	lsr	r1, r0, #32
	ldr	r0, [r5, r2]
	lsr	r1, r0, #32
	ldr	r4, [r4, r1]
	lsr	r1, r0, #32
.L_1572c:
	ldr	r1, .L_15740
	mov	r0, #96	@ 0x60
	strh	r0, [r1, #0]
	ldr	r1, .L_15744
	add	r0, r1, #0
	mov	r1, #0
	mov	r2, #48	@ 0x30
	bl	func_800FD90
	b	.L_158ba
.L_15740:
	.4byte	gWarioPaletteSize
.L_15744:
	.4byte	sUnk_82DDDE0
.L_15748:
	ldr	r1, .L_15780
	mov	r0, #96	@ 0x60
	strh	r0, [r1, #0]
	ldr	r1, .L_15784
	add	r0, r1, #0
	mov	r1, #0
.L_15754:
	mov	r2, #16
	bl	func_800FD90
	ldr	r4, .L_15788
	ldrh	r0, [r4, #12]
	lsr	r0, r0, #1
.L_15760:
	lsl	r0, r0, #20
	lsr	r0, r0, #15
	ldr	r1, .L_1578c
	add	r1, r0, r1
	add	r0, r1, #0
	mov	r1, #32
	mov	r2, #16
	bl	func_800FD90
	ldrh	r0, [r4, #12]
	cmp	r0, #58	@ 0x3a
	bhi	.L_15790
	add	r0, #1
	strh	r0, [r4, #12]
	b	.L_158ba
	.align	2, 0
.L_15780:
	.4byte	gWarioPaletteSize
.L_15784:
	svc	192	@ 0xc0
	lsr	r5, r5, #32
.L_15788:
	.4byte	gWarioData
.L_1578c:
	.4byte	sUnk_82DDFE0
.L_15790:
	mov	r0, #0
	strh	r0, [r4, #12]
	b	.L_158ba
.L_15796:
	ldr	r1, .L_157c4
	mov	r0, #96	@ 0x60
	strh	r0, [r1, #0]
	ldr	r1, .L_157c8
	ldrb	r0, [r3, #31]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r0, r1, #0
	mov	r1, #0
	mov	r2, #16
	bl	func_800FD90
	ldr	r1, .L_157cc
	add	r0, r1, #0
	mov	r1, #16
	mov	r2, #16
	bl	func_800FD90
	ldr	r1, .L_157d0
	add	r0, r1, #0
	mov	r1, #32
	b	.L_1588a
.L_157c4:
	.4byte	gWarioPaletteSize
.L_157c8:
	.4byte	sUnk_82DE4C0
.L_157cc:
	.4byte	sUnk_82DE4A0
.L_157d0:
	.4byte	sUnk_82DDDC0
.L_157d4:
	ldr	r0, .L_157f8
	mov	r1, #32
	strh	r1, [r0, #0]
	add	r1, r3, #0
.L_157dc:
	ldrb	r0, [r1, #30]
	cmp	r0, #5
	bls	.L_157e6
	mov	r0, #0
	strb	r0, [r1, #30]
.L_157e6:
	ldrb	r0, [r3, #30]
	lsr	r0, r0, #1
	lsl	r0, r0, #5
	ldr	r1, .L_157fc
	add	r1, r0, r1
	add	r0, r1, #0
	mov	r1, #0
	b	.L_1588a
	.align	2, 0
.L_157f8:
	.4byte	gWarioPaletteSize
.L_157fc:
	.4byte	sUnk_82DE4F8
.L_15800:
	ldr	r1, .L_15818
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #0]
	ldr	r1, .L_1581c
.L_15808:
	add	r0, r1, #0
	mov	r1, #0
	mov	r2, #16
	bl	func_800FD90
	ldr	r1, .L_15820
	b	.L_15886
	.align	2, 0
.L_15818:
	.4byte	gWarioPaletteSize
.L_1581c:
	.4byte	sUnk_82DDDA0
.L_15820:
	.4byte	sUnk_82DE558
.L_15824:
	ldr	r1, .L_1583c
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #0]
	ldr	r1, .L_15840
	add	r0, r1, #0
	mov	r1, #0
	mov	r2, #16
	bl	func_800FD90
	ldr	r1, .L_15844
	b	.L_15886
	.align	2, 0
.L_1583c:
	.4byte	gWarioPaletteSize
.L_15840:
	.4byte	sUnk_82DDDA0
.L_15844:
	.4byte	sUnk_82DE578
.L_15848:
	ldr	r1, .L_1585c
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #0]
	ldr	r1, .L_15860
	add	r0, r1, #0
	mov	r1, #0
	mov	r2, #32
	bl	func_800FD90
	b	.L_158ba
.L_1585c:
	.4byte	gWarioPaletteSize
.L_15860:
	.4byte	sUnk_82DE598
	ldr	r1, .L_15894
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #0]
	ldr	r1, .L_15898
	add	r0, r1, #0
	mov	r1, #0
	mov	r2, #16
	bl	func_800FD90
	ldr	r0, .L_1589c
	ldrb	r1, [r0, #0]
	mov	r0, #4
	and	r0, r1
	ldr	r1, .L_158a0
	cmp	r0, #0
	beq	.L_15886
	ldr	r1, .L_158a4
.L_15886:
	add	r0, r1, #0
	mov	r1, #16
.L_1588a:
	mov	r2, #16
	bl	func_800FD90
	b	.L_158ba
	.align	2, 0
.L_15894:
	.4byte	gWarioPaletteSize
.L_15898:
	.4byte	sUnk_82DDDA0
.L_1589c:
	.4byte	gMainTimer
.L_158a0:
	.4byte	sUnk_82DE4D8
.L_158a4:
	.4byte	sUnk_82DE3C0
.L_158a8:
	ldr	r1, .L_158c0
	mov	r0, #32
	strh	r0, [r1, #0]
	ldr	r1, .L_158c4
	add	r0, r1, #0
	mov	r1, #0
	mov	r2, #16
	bl	func_800FD90
.L_158ba:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_158c0:
	.4byte	gWarioPaletteSize
.L_158c4:
	.4byte	sUnk_82DDDA0


thumb_func_start func_80158C8
func_80158C8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r0, .L_1595c
	ldrb	r7, [r0, #0]
	cmp	r7, #0
	beq	.L_158da
	b	.L_15b30
.L_158da:
	ldr	r0, .L_15960
	mov	r9, r0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #4
	ble	.L_15946
	ldr	r4, .L_15964
	ldr	r1, [r4, #0]
	mov	r8, r1
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	mov	r0, r8
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r6, [r4, #12]
	add	r0, r6, #0
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r4, .L_15968
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #0
	bl	m4aMPlayPitchControl
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #0
	bl	m4aMPlayPitchControl
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #0
	bl	m4aMPlayModDepthSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #0
	bl	m4aMPlayModDepthSet
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayLFOSpeedSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayLFOSpeedSet
	mov	r0, r9
	strb	r7, [r0, #0]
.L_15946:
	ldr	r0, .L_1596c
	ldrb	r0, [r0, #1]
	sub	r0, #5
	cmp	r0, #47	@ 0x2f
	bls	.L_15952
	b	.L_15adc
.L_15952:
	lsl	r0, r0, #2
	ldr	r1, .L_15970
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_1595c:
	.4byte	gSwitchPressed
.L_15960:
	.4byte	gUnk_30031BC
.L_15964:
	.4byte	gMPlayTable
.L_15968:
	.4byte	0xFFFF
.L_1596c:
	.4byte	gWarioData
.L_15970:
	.4byte	.L_15974
.L_15974:
	.4byte	.L_15a34
	.4byte	.L_15adc
	.4byte	.L_15a34
	.4byte	.L_15a34
	.4byte	.L_15a34
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15a60
	.4byte	.L_15a60
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15a90
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15adc
	.4byte	.L_15a34
.L_15a34:
	ldr	r5, .L_15a58
	mov	r0, #0
	ldrsb	r0, [r5, r0]
	cmp	r0, #1
	beq	.L_15b30
	ldr	r4, .L_15a5c
	ldr	r0, [r4, #0]
	mov	r1, #230	@ 0xe6
	bl	m4aMPlayTempoControl
	ldr	r0, [r4, #12]
	mov	r1, #230	@ 0xe6
	bl	m4aMPlayTempoControl
	mov	r0, #1
	strb	r0, [r5, #0]
	b	.L_15b30
	.align	2, 0
.L_15a58:
	.4byte	gUnk_30031BC
.L_15a5c:
	.4byte	gMPlayTable
.L_15a60:
	ldr	r6, .L_15a88
	mov	r0, #0
	ldrsb	r0, [r6, r0]
	cmp	r0, #2
	beq	.L_15b30
	ldr	r4, .L_15a8c
	ldr	r0, [r4, #0]
	mov	r5, #200	@ 0xc8
	lsl	r5, r5, #1
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r0, [r4, #12]
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	mov	r0, #2
	strb	r0, [r6, #0]
	b	.L_15b30
	.align	2, 0
.L_15a88:
	.4byte	gUnk_30031BC
.L_15a8c:
	.4byte	gMPlayTable
.L_15a90:
	ldr	r7, .L_15ad0
	mov	r0, #0
	ldrsb	r0, [r7, r0]
	cmp	r0, #3
	beq	.L_15b30
	ldr	r4, .L_15ad4
	ldr	r6, [r4, #0]
	ldr	r5, .L_15ad8
	add	r0, r6, #0
	add	r1, r5, #0
	mov	r2, #50	@ 0x32
	bl	m4aMPlayModDepthSet
	ldr	r4, [r4, #12]
	add	r0, r4, #0
	add	r1, r5, #0
	mov	r2, #50	@ 0x32
	bl	m4aMPlayModDepthSet
	add	r0, r6, #0
	mov	r1, #50	@ 0x32
	mov	r2, #100	@ 0x64
	bl	m4aMPlayLFOSpeedSet
	add	r0, r4, #0
	mov	r1, #50	@ 0x32
	mov	r2, #100	@ 0x64
	bl	m4aMPlayLFOSpeedSet
	mov	r0, #3
	b	.L_15b2e
	.align	2, 0
.L_15ad0:
	.4byte	gUnk_30031BC
.L_15ad4:
	.4byte	gMPlayTable
.L_15ad8:
	.4byte	0xFFFF
.L_15adc:
	ldr	r7, .L_15b3c
	mov	r0, #0
	ldrsb	r0, [r7, r0]
	cmp	r0, #0
	beq	.L_15b30
	ldr	r4, .L_15b40
	ldr	r1, [r4, #0]
	mov	r8, r1
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	mov	r0, r8
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r6, [r4, #12]
	add	r0, r6, #0
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r4, .L_15b44
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #0
	bl	m4aMPlayModDepthSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #0
	bl	m4aMPlayModDepthSet
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayLFOSpeedSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayLFOSpeedSet
	mov	r0, #0
.L_15b2e:
	strb	r0, [r7, #0]
.L_15b30:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_15b3c:
	.4byte	gUnk_30031BC
.L_15b40:
	.4byte	gMPlayTable
.L_15b44:
	.4byte	0xFFFF


thumb_func_start func_8015B48
func_8015B48:
	push	{r4, lr}
	ldr	r3, .L_15b8c
	ldr	r4, .L_15b90
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #0]
	ldr	r2, .L_15b94
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
	bne	.L_15b98
	strb	r0, [r4, #26]
	b	.L_15ba0
.L_15b8c:
	.4byte	sUnk_82DD430
.L_15b90:
	.4byte	gWarioData
.L_15b94:
	.4byte	sUnk_82DEB18
.L_15b98:
	ldrb	r0, [r4, #26]
	cmp	r0, #1
	beq	.L_15ba0
	strb	r1, [r4, #26]
.L_15ba0:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start WarioCheckReaction
WarioCheckReaction:
	push	{lr}
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	add	r1, r0, #0
	cmp	r0, #9
	beq	.L_15bd4
	cmp	r0, #9
	bgt	.L_15bbe
	cmp	r0, #8
	beq	.L_15bc8
	b	.L_15bf4
.L_15bbe:
	cmp	r1, #10
	beq	.L_15be0
	cmp	r1, #11
	beq	.L_15bd4
	b	.L_15bf4
.L_15bc8:
	ldr	r0, .L_15bd0
	ldrh	r1, [r0, #52]	@ 0x34
	b	.L_15be4
	.align	2, 0
.L_15bd0:
	.4byte	sUnk_82DEB60
.L_15bd4:
	ldr	r0, .L_15bdc
	ldrh	r1, [r0, #16]
	b	.L_15be4
	.align	2, 0
.L_15bdc:
	.4byte	sUnk_82DEB60
.L_15be0:
	ldr	r0, .L_15bf0
	ldrh	r1, [r0, #58]	@ 0x3a
.L_15be4:
	mov	r0, #0
	mov	r2, #1
	bl	func_8014090
	b	.L_15c00
	.align	2, 0
.L_15bf0:
	.4byte	sUnk_82DEB60
.L_15bf4:
	ldr	r0, .L_15c04
	ldrh	r1, [r0, #10]
	mov	r0, #0
	mov	r2, #1
	bl	func_8014090
.L_15c00:
	pop	{r1}
	bx	r1
.L_15c04:
	.4byte	sUnk_82DEB60


thumb_func_start func_8015C08
func_8015C08:
	push	{lr}
	ldr	r1, .L_15c40
	ldrh	r0, [r1, #20]
	sub	r0, #16
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r1, #18]
	bl	GetBackgroundCollisionAtPosition
	asr	r0, r0, #16
	mov	r1, #255	@ 0xff
	and	r0, r1
	add	r1, r0, #0
	sub	r1, #12
	cmp	r1, #7
	bhi	.L_15c54
	ldr	r2, .L_15c44
	ldr	r0, .L_15c48
	lsl	r1, r1, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r2, .L_15c4c
	ldr	r0, .L_15c50
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	strh	r0, [r2, #0]
	b	.L_15c5e
.L_15c40:
	.4byte	gWarioData
.L_15c44:
	.4byte	gUnk_30031CA
.L_15c48:
	.4byte	sUnk_82DEC0A
.L_15c4c:
	.4byte	gUnk_30031CC
.L_15c50:
	.4byte	sUnk_82DEC1A
.L_15c54:
	ldr	r0, .L_15c64
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_15c68
	strh	r1, [r0, #0]
.L_15c5e:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_15c64:
	.4byte	gUnk_30031CA
.L_15c68:
	.4byte	gUnk_30031CC


thumb_func_start func_8015C6C
func_8015C6C:
	push	{lr}
	bl	func_8015C08
	ldr	r0, .L_15c90
	ldrh	r1, [r0, #16]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_15c98
	ldr	r0, .L_15c94
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r0, #96	@ 0x60
	neg	r0, r0
	cmp	r1, r0
	bne	.L_15cb4
	mov	r0, #10
	b	.L_15cf2
.L_15c90:
	.4byte	gWarioData
.L_15c94:
	.4byte	gUnk_30031CC
.L_15c98:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_15cb4
	ldr	r0, .L_15cb0
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #96	@ 0x60
	bne	.L_15cb4
	mov	r0, #10
	b	.L_15cf2
	.align	2, 0
.L_15cb0:
	.4byte	gUnk_30031CC
.L_15cb4:
	ldr	r0, .L_15cd4
	ldrh	r1, [r0, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_15cdc
	ldr	r0, .L_15cd8
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r0, #96	@ 0x60
	neg	r0, r0
	cmp	r1, r0
	bne	.L_15cf0
	mov	r0, #9
	b	.L_15cf2
	.align	2, 0
.L_15cd4:
	.4byte	gWarioData
.L_15cd8:
	.4byte	gUnk_30031CA
.L_15cdc:
	ldr	r0, .L_15cec
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #96	@ 0x60
	bne	.L_15cf0
	mov	r0, #9
	b	.L_15cf2
	.align	2, 0
.L_15cec:
	.4byte	gUnk_30031CA
.L_15cf0:
	mov	r0, #255	@ 0xff
.L_15cf2:
	pop	{r1}
	bx	r1
	.align	2, 0
