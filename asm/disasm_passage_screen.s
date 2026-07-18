.include "macros.s.inc"


thumb_func_start func_80845F0
func_80845F0:
	push	{lr}
	ldr	r0, .L_8460c
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_84610
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bhi	.L_846ea
	lsl	r0, r0, #2
	ldr	r1, .L_84614
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_8460c:
	.4byte	gUnk_3004A30
.L_84610:
	.4byte	gUnk_3004700
.L_84614:
	.4byte	.L_84618
.L_84618:
	.4byte	.L_84630
	.4byte	.L_84690
	.4byte	.L_846b0
	.4byte	.L_846b6
	.4byte	.L_846d0
	.4byte	.L_846dc
.L_84630:
	ldr	r0, .L_84654
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_84664
	bl	func_8084E10
	cmp	r0, #0
	beq	.L_8466e
	ldr	r2, .L_84658
	ldr	r1, .L_8465c
	ldr	r0, .L_84660
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	mov	r0, #1
	b	.L_846ec
.L_84654:
	.4byte	gUnk_3003C45
.L_84658:
	.4byte	gUnk_3003C40
.L_8465c:
	.4byte	sUnk_863C5D4
.L_84660:
	.4byte	gUnk_3003C44
.L_84664:
	bl	func_8084D5C
	ldr	r1, .L_84680
	mov	r0, #0
	strb	r0, [r1, #0]
.L_8466e:
	ldr	r2, .L_84684
	ldr	r1, .L_84688
	ldr	r0, .L_8468c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	b	.L_846ea
.L_84680:
	.4byte	gUnk_3003C54
.L_84684:
	.4byte	gUnk_3003C40
.L_84688:
	.4byte	sUnk_863C5D4
.L_8468c:
	.4byte	gUnk_3003C44
.L_84690:
	bl	func_8084DEC
	bl	func_80852B4
	cmp	r0, #0
	beq	.L_846ea
	ldr	r0, .L_846a8
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_846ac
	strb	r1, [r0, #0]
	b	.L_846ea
.L_846a8:
	.4byte	gUnk_3003C55
.L_846ac:
	.4byte	gUnk_3004700
.L_846b0:
	bl	func_80853B0
	b	.L_846e0
.L_846b6:
	bl	func_8084DEC
	bl	func_808549C
	cmp	r0, #0
	beq	.L_846ea
	ldr	r1, .L_846cc
	mov	r0, #0
	strb	r0, [r1, #0]
	mov	r0, #1
	b	.L_846ec
.L_846cc:
	.4byte	gUnk_3003C55
.L_846d0:
	bl	func_8085D08
	cmp	r0, #0
	beq	.L_846ea
	mov	r0, #1
	b	.L_846ec
.L_846dc:
	bl	func_8085CA0
.L_846e0:
	cmp	r0, #0
	beq	.L_846ea
	ldr	r1, .L_846f0
	mov	r0, #0
	strb	r0, [r1, #0]
.L_846ea:
	mov	r0, #0
.L_846ec:
	pop	{r1}
	bx	r1
.L_846f0:
	.4byte	gUnk_3004700


thumb_func_start func_80846F4
func_80846F4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	InitializeVideoMemory
	ldr	r3, .L_84734
	mov	r4, #0
	strh	r4, [r3, #0]
	ldr	r2, .L_84738
	ldrh	r1, [r2, #0]
	ldr	r0, .L_8473c
	and	r0, r1
	strh	r0, [r2, #0]
	ldr	r2, .L_84740
	ldrh	r1, [r2, #0]
	ldr	r0, .L_84744
	and	r0, r1
	strh	r0, [r2, #0]
	mov	r1, #1
	strh	r1, [r3, #0]
	ldr	r0, .L_84748
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_8472c
	cmp	r0, #5
	bne	.L_84750
.L_8472c:
	ldr	r0, .L_8474c
	strb	r1, [r0, #0]
	b	.L_84754
	.align	2, 0
.L_84734:
	.4byte	0x4000208
.L_84738:
	.4byte	0x4000004
.L_8473c:
	.4byte	0xFFEF
.L_84740:
	.4byte	0x4000200
.L_84744:
	.4byte	0xFFFD
.L_84748:
	.4byte	gCurrentPassage
.L_8474c:
	.4byte	gUnk_3003C4A
.L_84750:
	ldr	r0, .L_84930
	strb	r4, [r0, #0]
.L_84754:
	ldr	r1, .L_84934
	ldr	r0, .L_84938
	str	r0, [r1, #0]
	ldr	r0, .L_8493c
	str	r0, [r1, #4]
	ldr	r0, .L_84940
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	ldr	r4, .L_84944
	ldr	r3, .L_84948
	mov	ip, r3
	ldr	r3, .L_8494c
	mov	r9, r3
	ldr	r6, .L_84950
	ldr	r7, .L_84954
	ldr	r5, .L_84958
	ldr	r3, .L_8495c
	mov	sl, r3
	ldr	r3, .L_84960
	mov	r8, r3
	cmp	r0, #0
	bge	.L_8478e
.L_84786:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_84786
.L_8478e:
	ldr	r1, .L_84934
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #5
	ldr	r2, .L_84964
	add	r0, r0, r2
	str	r0, [r1, #0]
	ldr	r0, .L_84968
	str	r0, [r1, #4]
	ldr	r0, .L_8496c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_847b6
.L_847ae:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_847ae
.L_847b6:
	ldr	r1, .L_84934
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, ip
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_84940
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_847e0
.L_847d8:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_847d8
.L_847e0:
	ldr	r3, .L_84930
	ldrb	r0, [r3, #0]
	cmp	r0, #0
	bne	.L_84800
	ldr	r2, .L_84934
	ldrb	r0, [r4, #0]
	sub	r0, #1
	lsl	r0, r0, #5
	ldr	r1, .L_84970
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_84974
	str	r0, [r2, #4]
	ldr	r0, .L_8496c
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_84800:
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_84934
	mov	r0, r9
	str	r0, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_84978
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8482c
.L_84824:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_84824
.L_8482c:
	ldr	r1, .L_84934
	ldr	r2, .L_8497c
	str	r2, [r1, #0]
	ldr	r0, .L_84980
	str	r0, [r1, #4]
	ldr	r0, .L_84984
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8484e
.L_84846:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_84846
.L_8484e:
	ldr	r1, .L_84934
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #4
	add	r0, r0, r6
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_84988
	str	r0, [r1, #4]
	ldr	r0, .L_84984
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_84876
.L_8486e:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8486e
.L_84876:
	ldr	r2, .L_84934
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #4
	add	r1, r6, #4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r0, .L_8498c
	str	r0, [r2, #4]
	ldr	r0, .L_84984
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_848a0
.L_84898:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_84898
.L_848a0:
	ldr	r2, .L_84934
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #4
	add	r1, r6, #0
	add	r1, #8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r0, .L_84990
	str	r0, [r2, #4]
	ldr	r0, .L_84984
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_848cc
.L_848c4:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_848c4
.L_848cc:
	ldr	r2, .L_84934
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #4
	add	r1, r6, #0
	add	r1, #12
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r0, .L_84994
	str	r0, [r2, #4]
	ldr	r0, .L_84984
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r1, .L_84998
	mov	r3, #192	@ 0xc0
	lsl	r3, r3, #5
	add	r0, r3, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_8499c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r3, .L_849a0
	add	r0, r3, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_849a4
	add	r0, r2, #0
	strh	r0, [r1, #0]
	mov	r0, #0
	strb	r0, [r7, #0]
	mov	r3, #1
	strb	r3, [r5, #0]
	ldr	r1, .L_84930
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_849a8
	ldr	r2, .L_8495c
	ldrb	r1, [r4, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #26
	cmp	r0, #0
	blt	.L_849e6
	strb	r3, [r7, #0]
	b	.L_849e6
.L_84930:
	.4byte	gUnk_3003C4A
.L_84934:
	.4byte	0x40000D4
.L_84938:
	.4byte	sUnk_86A11C8
.L_8493c:
	.4byte	0x5000200
.L_84940:
	.4byte	0x80000100
.L_84944:
	.4byte	gCurrentPassage
.L_84948:
	.4byte	sUnk_863C494
.L_8494c:
	.4byte	sUnk_869CE48
.L_84950:
	.4byte	sUnk_863C434
.L_84954:
	.4byte	gUnk_3003C99
.L_84958:
	.4byte	gUnk_3004728
.L_8495c:
	.4byte	gCurrentCollection
.L_84960:
	.4byte	gUnk_3003C0C
.L_84964:
	.4byte	sUnk_86A23C8
.L_84968:
	.4byte	0x5000240
.L_8496c:
	.4byte	0x80000010
.L_84970:
	.4byte	sUnk_86A25C8
.L_84974:
	.4byte	0x5000260
.L_84978:
	.4byte	0x80003C00
.L_8497c:
	.4byte	sUnk_86A13C8
.L_84980:
	.4byte	0x6010000
.L_84984:
	.4byte	0x80000800
.L_84988:
	.4byte	0x600C000
.L_8498c:
	.4byte	0x600D000
.L_84990:
	b	.L_84994
	lsl	r0, r0, #24
.L_84994:
	.2byte	0xf000
	.2byte	0x0600
.L_84998:
	.4byte	0x4000008
.L_8499c:
	.4byte	0x1A01
.L_849a0:
	.4byte	0x5C02
.L_849a4:
	.4byte	0x1E03
.L_849a8:
	mov	r3, #0
	ldrb	r0, [r4, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #3
	add	r1, sl
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #26
	cmp	r0, #0
	blt	.L_849c0
	mov	r0, #1
	b	.L_849e2
.L_849c0:
	mov	r0, #4
	strb	r0, [r5, #0]
	add	r3, #1
	cmp	r3, #3
	bgt	.L_849e6
	lsl	r2, r3, #2
	ldrb	r1, [r4, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r2, r2, r0
	add	r2, sl
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #26
	cmp	r0, #0
	blt	.L_849c0
	add	r0, r3, #1
.L_849e2:
	strb	r0, [r7, #0]
	strb	r3, [r5, #0]
.L_849e6:
	ldr	r2, .L_84aac
	ldrb	r1, [r2, #0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	ldrb	r7, [r7, #0]
	add	r0, r0, r7
	lsl	r0, r0, #2
	ldr	r3, .L_84ab0
	add	r0, r0, r3
	ldr	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r0, r2, #0
	sub	r0, r0, r1
	mov	r3, #0
	mov	r4, #0
	ldr	r1, .L_84ab4
	strh	r0, [r1, #0]
	mov	r2, r8
	strh	r4, [r2, #0]
	strh	r4, [r2, #2]
	ldr	r0, .L_84ab8
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_84aac
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	ldr	r2, .L_84abc
	add	r1, r1, r2
	ldr	r0, [r1, #0]
	lsl	r0, r0, #5
	mov	r1, r8
	strh	r0, [r1, #8]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #4
	strh	r0, [r1, #10]
	ldr	r2, .L_84ac0
	strb	r3, [r2, #0]
	ldr	r1, .L_84ac4
	ldr	r0, [r1, #0]
	ldr	r2, .L_84ac8
	str	r0, [r2, #0]
	ldr	r0, .L_84acc
	strh	r4, [r0, #0]
	ldr	r1, .L_84ad0
	strb	r3, [r1, #0]
	ldr	r2, .L_84ad4
	strb	r3, [r2, #0]
	ldr	r0, .L_84ad8
	strb	r3, [r0, #0]
	ldr	r1, .L_84adc
	strb	r3, [r1, #0]
	ldr	r2, .L_84ae0
	strh	r4, [r2, #0]
	ldr	r3, .L_84ae4
	ldr	r0, [r3, #0]
	mov	r2, #166	@ 0xa6
	lsl	r2, r2, #6
	ldr	r1, .L_84ae8
	bl	func_807A824
	ldr	r0, .L_84aec
	ldrh	r0, [r0, #0]
	ldr	r2, .L_84af0
	ldr	r1, .L_84ae8
	bl	DrawMinigameNumber
	mov	r3, #0
	ldr	r6, .L_84af4
	mov	r5, #0
	ldr	r4, .L_84af8
.L_84a7a:
	lsl	r2, r3, #2
	ldr	r0, .L_84afc
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r2, r2, r0
	add	r2, r2, r6
	ldrb	r2, [r2, #0]
	lsl	r0, r2, #31
	cmp	r0, #0
	beq	.L_84b00
	lsl	r0, r2, #30
	cmp	r0, #0
	bge	.L_84b00
	lsl	r0, r2, #29
	cmp	r0, #0
	bge	.L_84b00
	lsl	r0, r2, #28
	cmp	r0, #0
	bge	.L_84b00
	mov	r0, #1
	strb	r0, [r4, #4]
	b	.L_84b02
	.align	2, 0
.L_84aac:
	.4byte	gUnk_3003C4A
.L_84ab0:
	.4byte	sUnk_863C55C
.L_84ab4:
	.4byte	gUnk_3003C20
.L_84ab8:
	.4byte	gCurrentStageNumber
.L_84abc:
	.4byte	sUnk_863C52C
.L_84ac0:
	.4byte	gUnk_3003C44
.L_84ac4:
	.4byte	sUnk_863C5D4
.L_84ac8:
	.4byte	gUnk_3003C40
.L_84acc:
	.4byte	gUnk_3003C3A
.L_84ad0:
	.4byte	gUnk_3003C39
.L_84ad4:
	.4byte	gUnk_3003C54
.L_84ad8:
	.4byte	gUnk_3003C55
.L_84adc:
	.4byte	gUnk_3003C08
.L_84ae0:
	.4byte	gUnk_3004A30
.L_84ae4:
	.4byte	gTotalScore
.L_84ae8:
	.4byte	sUnk_869F648
.L_84aec:
	.4byte	gMedalCount
.L_84af0:
	.4byte	0x20E0
.L_84af4:
	.4byte	gCurrentCollection
.L_84af8:
	.4byte	gUnk_3004708
.L_84afc:
	.4byte	gCurrentPassage
.L_84b00:
	strb	r5, [r4, #4]
.L_84b02:
	strh	r5, [r4, #2]
	strh	r5, [r4, #0]
	add	r4, #8
	add	r3, #1
	cmp	r3, #3
	ble	.L_84a7a
	mov	r4, #0
	bl	func_808502C
	bl	func_8085178
	bl	InitMinigameScoreDisplay
	ldr	r0, .L_84b98
	strh	r4, [r0, #0]
	sub	r0, #2
	strh	r4, [r0, #0]
	add	r0, #6
	strh	r4, [r0, #0]
	sub	r0, #2
	strh	r4, [r0, #0]
	add	r0, #6
	strh	r4, [r0, #0]
	ldr	r1, .L_84b9c
	ldr	r0, .L_84ba0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	ldr	r0, .L_84ba4
	strh	r4, [r0, #0]
	sub	r0, #2
	strh	r4, [r0, #0]
	add	r0, #56	@ 0x38
	strh	r4, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #19
	mov	r1, #248	@ 0xf8
	lsl	r1, r1, #5
	add	r0, r1, #0
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #6
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r0, .L_84ba8
	strh	r4, [r0, #0]
	ldr	r1, .L_84bac
	mov	r0, #63	@ 0x3f
	strh	r0, [r1, #0]
	ldr	r0, .L_84bb0
	mov	r1, #120	@ 0x78
	strh	r1, [r0, #0]
	ldr	r0, .L_84bb4
	strh	r1, [r0, #0]
	ldr	r0, .L_84bb8
	mov	r1, #80	@ 0x50
	strh	r1, [r0, #0]
	ldr	r0, .L_84bbc
	strh	r1, [r0, #0]
	ldr	r1, .L_84bc0
	ldr	r2, .L_84bc4
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r3, .L_84bc8
	add	r0, r3, #0
	strh	r0, [r1, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_84b98:
	.4byte	0x4000012
.L_84b9c:
	.4byte	0x4000018
.L_84ba0:
	.4byte	gUnk_3003C20
.L_84ba4:
	.4byte	0x400001E
.L_84ba8:
	.4byte	0x4000048
.L_84bac:
	.4byte	0x400004A
.L_84bb0:
	.4byte	gUnk_3003C4C
.L_84bb4:
	.4byte	gUnk_3003C4E
.L_84bb8:
	.4byte	gUnk_3003C50
.L_84bbc:
	.4byte	gUnk_3003C52
.L_84bc0:
	.4byte	0x4000050
.L_84bc4:
	.4byte	0x1844
.L_84bc8:
	.4byte	0xA06


thumb_func_start func_8084BCC
func_8084BCC:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_84c0c
	mov	r4, #0
	strb	r4, [r0, #0]
	ldr	r0, .L_84c10
	strb	r4, [r0, #0]
	bl	func_80741F0
	ldr	r5, .L_84c14
	mov	r6, #1
	strb	r6, [r5, #0]
	bl	func_80846F4
	strb	r4, [r5, #0]
	ldr	r2, .L_84c18
	ldr	r1, .L_84c1c
	ldr	r0, .L_84c20
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #5
	strh	r0, [r2, #8]
	mov	r0, #136	@ 0x88
	lsl	r0, r0, #4
	strh	r0, [r2, #10]
	ldr	r0, .L_84c24
	strb	r6, [r0, #0]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_84c0c:
	.4byte	gCurrentStageNumber
.L_84c10:
	.4byte	gUnk_3003C98
.L_84c14:
	.4byte	gUnk_3003C45
.L_84c18:
	.4byte	gUnk_3003C0C
.L_84c1c:
	.4byte	sUnk_863C41C
.L_84c20:
	.4byte	gUnk_3003C4A
.L_84c24:
	.4byte	gUnk_3004700


thumb_func_start func_8084C28
func_8084C28:
	push	{r4, lr}
	ldr	r1, .L_84c88
	ldr	r0, .L_84c8c
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	ldr	r1, .L_84c90
	mov	r0, #0
	strb	r0, [r1, #0]
	bl	func_80846F4
	ldr	r4, .L_84c94
	ldr	r3, .L_84c98
	ldr	r2, .L_84c9c
	ldr	r0, .L_84ca0
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	ldrb	r2, [r2, #0]
	add	r0, r0, r2
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldr	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r0, r2, #0
	sub	r0, r0, r1
	mov	r2, #0
	strh	r0, [r4, #0]
	ldr	r1, .L_84ca4
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	ldr	r0, .L_84ca8
	strh	r2, [r0, #0]
	ldr	r1, .L_84cac
	mov	r0, #240	@ 0xf0
	strh	r0, [r1, #0]
	ldr	r0, .L_84cb0
	strh	r2, [r0, #0]
	ldr	r1, .L_84cb4
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
	ldr	r1, .L_84cb8
	mov	r0, #2
	strb	r0, [r1, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_84c88:
	.4byte	gUnk_3003C98
.L_84c8c:
	.4byte	gCurrentStageNumber
.L_84c90:
	.4byte	gUnk_3003C45
.L_84c94:
	.4byte	gUnk_3003C20
.L_84c98:
	.4byte	sUnk_863C55C
.L_84c9c:
	.4byte	gUnk_3004728
.L_84ca0:
	.4byte	gUnk_3003C4A
.L_84ca4:
	.4byte	gUnk_3004729
.L_84ca8:
	.4byte	gUnk_3003C4C
.L_84cac:
	.4byte	gUnk_3003C4E
.L_84cb0:
	.4byte	gUnk_3003C50
.L_84cb4:
	.4byte	gUnk_3003C52
.L_84cb8:
	.4byte	gUnk_3004700


thumb_func_start func_8084CBC
func_8084CBC:
	push	{r4, lr}
	ldr	r1, .L_84ce0
	ldr	r0, .L_84ce4
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	ldr	r0, .L_84ce8
	bl	m4aSongNumStart
	ldr	r0, .L_84cec
	mov	r4, #0
	strb	r4, [r0, #0]
	bl	func_80846F4
	ldr	r0, .L_84cf0
	strb	r4, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_84ce0:
	.4byte	gUnk_3003C98
.L_84ce4:
	.4byte	gCurrentStageNumber
.L_84ce8:
	.4byte	0x27F
.L_84cec:
	.4byte	gUnk_3003C45
.L_84cf0:
	.4byte	gUnk_3004700


thumb_func_start func_8084CF4
func_8084CF4:
	push	{r4, lr}
	ldr	r1, .L_84d38
	ldr	r4, .L_84d3c
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	ldr	r1, .L_84d40
	mov	r0, #0
	strb	r0, [r1, #0]
	bl	func_80846F4
	ldrb	r0, [r4, #0]
	cmp	r0, #5
	bne	.L_84d14
	ldr	r0, .L_84d44
	bl	m4aSongNumStart
.L_84d14:
	ldr	r0, .L_84d48
	mov	r2, #0
	strh	r2, [r0, #0]
	ldr	r1, .L_84d4c
	mov	r0, #240	@ 0xf0
	strh	r0, [r1, #0]
	ldr	r0, .L_84d50
	strh	r2, [r0, #0]
	ldr	r1, .L_84d54
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
	ldr	r1, .L_84d58
	mov	r0, #5
	strb	r0, [r1, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_84d38:
	.4byte	gUnk_3003C98
.L_84d3c:
	.4byte	gCurrentStageNumber
.L_84d40:
	.4byte	gUnk_3003C45
.L_84d44:
	.4byte	0x27F
.L_84d48:
	.4byte	gUnk_3003C4C
.L_84d4c:
	.4byte	gUnk_3003C4E
.L_84d50:
	.4byte	gUnk_3003C50
.L_84d54:
	.4byte	gUnk_3003C52
.L_84d58:
	.4byte	gUnk_3004700


thumb_func_start func_8084D5C
func_8084D5C:
	push	{r4, r5, lr}
	ldr	r3, .L_84da0
	ldr	r0, .L_84da4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	ldr	r1, .L_84da8
	ldrb	r2, [r1, #0]
	lsl	r1, r2, #1
	add	r1, r1, r2
	lsl	r1, r1, #3
	add	r0, r0, r1
	add	r0, r0, r3
	ldr	r5, [r0, #0]
	ldr	r0, .L_84dac
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	add	r0, r0, r3
	ldr	r4, [r0, #0]
	bl	func_8084DEC
	cmp	r5, r4
	ble	.L_84db4
	ldr	r2, .L_84db0
	ldrh	r0, [r2, #8]
	add	r0, #60	@ 0x3c
	mov	r4, #0
	strh	r0, [r2, #8]
	lsl	r1, r5, #5
	mov	r3, #8
	ldrsh	r0, [r2, r3]
	cmp	r1, r0
	bgt	.L_84dda
	b	.L_84dc8
.L_84da0:
	.4byte	sUnk_863C52C
.L_84da4:
	.4byte	gCurrentStageNumber
.L_84da8:
	.4byte	gUnk_3003C4A
.L_84dac:
	.4byte	gUnk_3003C98
.L_84db0:
	.4byte	gUnk_3003C0C
.L_84db4:
	ldr	r2, .L_84de0
	ldrh	r0, [r2, #8]
	sub	r0, #60	@ 0x3c
	mov	r4, #0
	strh	r0, [r2, #8]
	lsl	r1, r5, #5
	mov	r3, #8
	ldrsh	r0, [r2, r3]
	cmp	r1, r0
	blt	.L_84dda
.L_84dc8:
	strh	r1, [r2, #8]
	ldr	r0, .L_84de4
	strb	r4, [r0, #0]
	bl	func_808502C
	bl	func_8085178
	ldr	r0, .L_84de8
	strb	r4, [r0, #0]
.L_84dda:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_84de0:
	.4byte	gUnk_3003C0C
.L_84de4:
	.4byte	gUnk_3003C45
.L_84de8:
	.4byte	gUnk_3003C55


thumb_func_start func_8084DEC
func_8084DEC:
	push	{lr}
	ldr	r1, .L_84e0c
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldrb	r0, [r1, #0]
	mov	r1, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_84e06
	mov	r0, #1
	bl	m4aSongNumStart
.L_84e06:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_84e0c:
	.4byte	gUnk_3003C55


thumb_func_start func_8084E10
func_8084E10:
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L_84e38
	ldrb	r7, [r2, #0]
	mov	r6, #4
	ldr	r1, .L_84e3c
	ldrh	r3, [r1, #0]
	mov	r5, #1
	mov	r0, #1
	and	r0, r3
	add	r4, r2, #0
	mov	ip, r1
	cmp	r0, #0
	beq	.L_84e88
	ldr	r0, .L_84e40
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bne	.L_84e44
	bl	func_8085008
	b	.L_84fbe
.L_84e38:
	.4byte	gUnk_3003C44
.L_84e3c:
	.4byte	gButtonsPressed
.L_84e40:
	.4byte	gCurrentStageNumber
.L_84e44:
	cmp	r0, #5
	bne	.L_84e54
	ldr	r0, .L_84e50
	bl	m4aSongNumStart
	b	.L_84e64
.L_84e50:
	.4byte	0x127
.L_84e54:
	mov	r0, #147	@ 0x93
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	mov	r0, #229	@ 0xe5
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_84e64:
	ldr	r1, .L_84e7c
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r0, .L_84e80
	ldr	r0, [r0, #24]
	mov	r1, #6
	bl	m4aMPlayFadeOut
	ldr	r1, .L_84e84
	mov	r0, #0
	strb	r0, [r1, #0]
	b	.L_84fbe
.L_84e7c:
	.4byte	gUnk_3004700
.L_84e80:
	.4byte	gMPlayTable
.L_84e84:
	.4byte	gUnk_3003C08
.L_84e88:
	mov	r0, #2
	and	r0, r3
	cmp	r0, #0
	beq	.L_84ea6
	strb	r5, [r4, #0]
	bl	func_8084FCC
	ldrb	r0, [r4, #0]
	cmp	r0, r7
	bne	.L_84e9e
	b	.L_84fbe
.L_84e9e:
	mov	r0, #8
	bl	m4aSongNumStart
	b	.L_84fbe
.L_84ea6:
	ldr	r0, .L_84ecc
	ldrh	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, #0
	beq	.L_84ed4
	ldr	r1, .L_84ed0
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #10
	bls	.L_84f00
	mov	r6, #0
	strb	r5, [r4, #0]
	b	.L_84f00
.L_84ecc:
	.4byte	gButtonsHeld
.L_84ed0:
	.4byte	gUnk_3003C54
.L_84ed4:
	mov	r0, #16
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	cmp	r1, #0
	beq	.L_84efc
	ldr	r1, .L_84ef8
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #10
	bls	.L_84f00
	mov	r6, #1
	strb	r2, [r4, #0]
	b	.L_84f00
	.align	2, 0
.L_84ef8:
	.4byte	gUnk_3003C54
.L_84efc:
	ldr	r0, .L_84f18
	strb	r1, [r0, #0]
.L_84f00:
	mov	r0, ip
	ldrh	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, #0
	beq	.L_84f1c
	mov	r6, #0
	mov	r0, #1
	strb	r0, [r4, #0]
	b	.L_84f28
.L_84f18:
	.4byte	gUnk_3003C54
.L_84f1c:
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_84f28
	mov	r6, #1
	strb	r2, [r4, #0]
.L_84f28:
	ldrb	r0, [r4, #0]
	cmp	r0, r7
	beq	.L_84f34
	mov	r0, #8
	bl	m4aSongNumStart
.L_84f34:
	ldr	r5, .L_84f70
	ldrb	r2, [r5, #0]
	add	r1, r2, #1
	ldr	r0, .L_84f74
	ldrb	r0, [r0, #0]
	cmp	r1, r0
	bne	.L_84f46
	cmp	r6, #1
	beq	.L_84fb4
.L_84f46:
	cmp	r6, #4
	beq	.L_84fb4
	ldr	r3, .L_84f78
	lsl	r1, r6, #2
	lsl	r0, r2, #3
	add	r1, r1, r0
	ldr	r0, .L_84f7c
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #4
	add	r1, r1, r0
	add	r1, r1, r3
	ldr	r4, [r1, #0]
	cmp	r4, #7
	bne	.L_84f80
	mov	r0, #4
	strb	r0, [r5, #0]
	bl	func_8085008
	b	.L_84fbe
.L_84f70:
	.4byte	gCurrentStageNumber
.L_84f74:
	.4byte	gUnk_3003C99
.L_84f78:
	.4byte	sUnk_863C4CC
.L_84f7c:
	.4byte	gUnk_3003C4A
.L_84f80:
	cmp	r4, #8
	bne	.L_84f8e
	mov	r0, #0
	strb	r0, [r5, #0]
	bl	func_8084FCC
	b	.L_84fbe
.L_84f8e:
	ldr	r1, .L_84fac
	mov	r0, #1
	strb	r0, [r1, #0]
	bl	func_808502C
	bl	func_8085178
	ldr	r1, .L_84fb0
	ldrb	r0, [r5, #0]
	strb	r0, [r1, #0]
	strb	r4, [r5, #0]
	bl	func_80741F0
	b	.L_84fbe
	.align	2, 0
.L_84fac:
	.4byte	gUnk_3003C45
.L_84fb0:
	.4byte	gUnk_3003C98
.L_84fb4:
	ldr	r1, .L_84fc8
	mov	r2, #250	@ 0xfa
	lsl	r2, r2, #2
	add	r0, r2, #0
	strh	r0, [r1, #0]
.L_84fbe:
	mov	r0, #0
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_84fc8:
	.4byte	gUnk_3004A30


thumb_func_start func_8084FCC
func_8084FCC:
	push	{r4, lr}
	ldr	r0, .L_84ff8
	bl	m4aSongNumStart
	ldr	r0, .L_84ffc
	mov	r2, #1
	strb	r2, [r0, #0]
	ldr	r1, .L_85000
	mov	r0, #3
	strb	r0, [r1, #0]
	ldr	r4, .L_85004
	strb	r2, [r4, #0]
	bl	func_808502C
	bl	func_8085178
	mov	r0, #0
	strb	r0, [r4, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_84ff8:
	.4byte	0x129
.L_84ffc:
	.4byte	gUnk_3003C08
.L_85000:
	.4byte	gUnk_3004700
.L_85004:
	.4byte	gUnk_3003C45


thumb_func_start func_8085008
func_8085008:
	push	{lr}
	mov	r0, #147	@ 0x93
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r1, .L_85024
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r1, .L_85028
	mov	r0, #4
	strb	r0, [r1, #0]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_85024:
	.4byte	gUnk_3003C08
.L_85028:
	.4byte	gUnk_3004700


thumb_func_start func_808502C
func_808502C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_85044
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_85048
	mov	r0, #5
	mov	ip, r0
	mov	r6, #2
	b	.L_85090
	.align	2, 0
.L_85044:
	.4byte	gUnk_3003C45
.L_85048:
	ldr	r1, .L_85058
	ldrb	r0, [r1, #0]
	cmp	r0, #5
	bne	.L_8505c
	mov	r3, #5
	mov	ip, r3
	mov	r6, #1
	b	.L_850b8
.L_85058:
	.4byte	gCurrentStageNumber
.L_8505c:
	cmp	r0, #4
	bne	.L_85096
	ldr	r2, .L_85084
	ldrb	r4, [r1, #0]
	lsl	r1, r4, #2
	ldr	r0, .L_85088
	ldrb	r3, [r0, #0]
	lsl	r0, r3, #1
	add	r0, r0, r3
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r2
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #26
	cmp	r0, #0
	bge	.L_8508c
	mov	ip, r3
	mov	r6, #5
	b	.L_85090
	.align	2, 0
.L_85084:
	.4byte	gCurrentCollection
.L_85088:
	.4byte	gCurrentPassage
.L_8508c:
	mov	ip, r3
	add	r6, r4, #0
.L_85090:
	mov	r1, #0
	mov	r8, r1
	b	.L_850bc
.L_85096:
	ldr	r0, .L_85114
	ldrb	r0, [r0, #0]
	mov	ip, r0
	ldrb	r6, [r1, #0]
	ldr	r2, .L_85118
	lsl	r1, r6, #2
	lsl	r0, r0, #1
	add	r0, ip
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r2
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #26
	mov	r3, #1
	mov	r8, r3
	cmp	r0, #0
	bge	.L_850bc
.L_850b8:
	mov	r0, #0
	mov	r8, r0
.L_850bc:
	mov	r5, #0
	lsl	r0, r6, #2
	mov	r1, ip
	lsl	r7, r1, #2
	ldr	r4, .L_8511c
	add	r2, r7, r1
	lsl	r2, r2, #10
	add	r0, r0, r6
	lsl	r0, r0, #5
	ldr	r1, .L_85120
	add	r0, r0, r1
	add	r2, r2, r0
.L_850d4:
	lsl	r1, r5, #10
	add	r0, r2, r1
	str	r0, [r4, #0]
	ldr	r3, .L_85124
	add	r1, r1, r3
	str	r1, [r4, #4]
	ldr	r0, .L_85128
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, [r4, #8]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #24
	add	r1, r5, #1
	cmp	r0, #0
	bge	.L_850fa
.L_850f2:
	ldr	r0, [r4, #8]
	and	r0, r3
	cmp	r0, #0
	bne	.L_850f2
.L_850fa:
	add	r5, r1, #0
	cmp	r5, #4
	ble	.L_850d4
	mov	r0, r8
	cmp	r0, #0
	beq	.L_85130
	ldr	r3, .L_8511c
	lsl	r2, r6, #5
	mov	r1, ip
	add	r0, r7, r1
	lsl	r0, r0, #5
	ldr	r1, .L_8512c
	b	.L_85146
.L_85114:
	.4byte	gCurrentPassage
.L_85118:
	.4byte	gCurrentCollection
.L_8511c:
	.4byte	0x40000D4
.L_85120:
	.4byte	sUnk_864C8C4
.L_85124:
	.4byte	0x6005C00
.L_85128:
	.4byte	0x80000050
.L_8512c:
	.4byte	sUnk_86A0E08
.L_85130:
	ldr	r0, .L_85164
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bne	.L_8513a
	mov	r6, #4
.L_8513a:
	ldr	r3, .L_85168
	lsl	r2, r6, #5
	mov	r1, ip
	add	r0, r7, r1
	lsl	r0, r0, #5
	ldr	r1, .L_8516c
.L_85146:
	add	r0, r0, r1
	add	r2, r2, r0
	str	r2, [r3, #0]
	ldr	r0, .L_85170
	str	r0, [r3, #4]
	ldr	r0, .L_85174
	str	r0, [r3, #8]
	ldr	r0, [r3, #8]
	bl	func_80701F4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_85164:
	.4byte	gCurrentStageNumber
.L_85168:
	.4byte	0x40000D4
.L_8516c:
	.4byte	sUnk_86A0A48
.L_85170:
	.4byte	0x5000140
.L_85174:
	.4byte	0x80000010


thumb_func_start func_8085178
func_8085178:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_851c0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_85190
	ldr	r0, .L_851c4
	ldrb	r1, [r0, #0]
	add	r7, r0, #0
	cmp	r1, #3
	bls	.L_851d8
.L_85190:
	mov	r2, #0
	ldr	r3, .L_851c8
	ldr	r5, .L_851cc
	ldr	r4, .L_851d0
.L_85198:
	str	r5, [r3, #0]
	lsl	r0, r2, #5
	add	r0, r0, r4
	str	r0, [r3, #4]
	ldr	r0, .L_851d4
	str	r0, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r0, [r3, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	add	r2, #1
	cmp	r0, #0
	bge	.L_851ba
.L_851b2:
	ldr	r0, [r3, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_851b2
.L_851ba:
	cmp	r2, #14
	ble	.L_85198
	b	.L_85294
.L_851c0:
	.4byte	gUnk_3003C45
.L_851c4:
	.4byte	gCurrentStageNumber
.L_851c8:
	.4byte	0x40000D4
.L_851cc:
	.4byte	sUnk_869CE48
.L_851d0:
	.4byte	0x6002580
.L_851d4:
	.4byte	0x80000010
.L_851d8:
	ldr	r1, .L_8523c
	ldr	r2, .L_85240
	str	r2, [r1, #0]
	ldr	r0, .L_85244
	str	r0, [r1, #4]
	ldr	r0, .L_85248
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #24
	ldr	r6, .L_8524c
	ldr	r5, .L_85250
	mov	r4, #132	@ 0x84
	lsl	r4, r4, #4
	add	r4, r4, r2
	mov	r8, r4
	cmp	r0, #0
	bge	.L_85208
	add	r2, r3, #0
.L_85200:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_85200
.L_85208:
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #2
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	add	r0, r0, r6
	ldr	r0, [r0, #0]
	mov	r4, r8
	ldr	r2, .L_85254
	add	r1, r4, #0
	bl	func_807AA4C
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #2
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	add	r0, r0, r6
	ldr	r1, [r0, #0]
	ldr	r0, .L_85258
	cmp	r1, r0
	ble	.L_85260
	ldr	r1, .L_8523c
	ldr	r2, .L_8525c
	add	r0, r4, r2
	b	.L_85288
.L_8523c:
	.4byte	0x40000D4
.L_85240:
	.4byte	sUnk_869F448
.L_85244:
	.4byte	0x6002600
.L_85248:
	.4byte	0x800000B0
.L_8524c:
	.4byte	gHighScoreTable
.L_85250:
	.4byte	gCurrentPassage
.L_85254:
	.4byte	0x26A0
.L_85258:
	.4byte	0x3E7
.L_8525c:
	.4byte	0xFFFFF3A0
.L_85260:
	ldr	r0, .L_85270
	cmp	r1, r0
	ble	.L_8527c
	ldr	r1, .L_85274
	ldr	r2, .L_85278
	add	r0, r4, r2
	b	.L_85288
	.align	2, 0
.L_85270:
	.4byte	0x31F
.L_85274:
	.4byte	0x40000D4
.L_85278:
	.4byte	0xFFFFF420
.L_8527c:
	ldr	r0, .L_852a0
	cmp	r1, r0
	ble	.L_85294
	ldr	r1, .L_852a4
	ldr	r0, .L_852a8
	add	r0, r8
.L_85288:
	str	r0, [r1, #0]
	ldr	r0, .L_852ac
	str	r0, [r1, #4]
	ldr	r0, .L_852b0
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_85294:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_852a0:
	.4byte	0x257
.L_852a4:
	.4byte	0x40000D4
.L_852a8:
	.4byte	0xFFFFF4A0
.L_852ac:
	.4byte	0x6002580
.L_852b0:
	.4byte	0x80000040


thumb_func_start func_80852B4
func_80852B4:
	push	{r4, r5, r6, r7, lr}
	ldr	r7, .L_852c8
	ldrb	r0, [r7, #0]
	cmp	r0, #1
	beq	.L_85300
	cmp	r0, #1
	bgt	.L_852cc
	cmp	r0, #0
	beq	.L_852d2
	b	.L_853a8
.L_852c8:
	.4byte	gUnk_3003C39
.L_852cc:
	cmp	r0, #2
	beq	.L_8535c
	b	.L_853a8
.L_852d2:
	ldr	r3, .L_852f4
	ldrh	r0, [r3, #8]
	add	r0, #60	@ 0x3c
	strh	r0, [r3, #8]
	mov	r0, #8
	ldrsh	r2, [r3, r0]
	ldr	r1, .L_852f8
	ldr	r0, .L_852fc
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #5
	cmp	r2, r0
	ble	.L_853a8
	strh	r0, [r3, #8]
	b	.L_85344
.L_852f4:
	.4byte	gUnk_3003C0C
.L_852f8:
	.4byte	sUnk_863C424
.L_852fc:
	.4byte	gUnk_3003C4A
.L_85300:
	ldr	r6, .L_8534c
	ldrh	r0, [r6, #8]
	add	r0, #60	@ 0x3c
	strh	r0, [r6, #8]
	ldr	r5, .L_85350
	ldr	r4, .L_85354
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r2, r0, r5
	ldr	r1, .L_85358
	add	r0, r0, r1
	ldr	r1, [r2, #0]
	ldr	r0, [r0, #0]
	sub	r1, r1, r0
	mov	r0, #180	@ 0xb4
	lsl	r0, r0, #2
	bl	__divsi3
	ldrh	r1, [r6, #10]
	add	r1, r1, r0
	strh	r1, [r6, #10]
	mov	r0, #8
	ldrsh	r1, [r6, r0]
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r5
	ldr	r0, [r0, #0]
	lsl	r0, r0, #5
	cmp	r1, r0
	ble	.L_853a8
	strh	r0, [r6, #8]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #4
	strh	r0, [r6, #10]
.L_85344:
	ldrb	r0, [r7, #0]
	add	r0, #1
	strb	r0, [r7, #0]
	b	.L_853a8
.L_8534c:
	.4byte	gUnk_3003C0C
.L_85350:
	.4byte	sUnk_863C42C
.L_85354:
	.4byte	gUnk_3003C4A
.L_85358:
	.4byte	sUnk_863C424
.L_8535c:
	ldr	r5, .L_85398
	ldrh	r0, [r5, #8]
	add	r0, #60	@ 0x3c
	strh	r0, [r5, #8]
	mov	r0, #8
	ldrsh	r4, [r5, r0]
	ldr	r3, .L_8539c
	ldr	r0, .L_853a0
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_853a4
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldr	r0, [r1, #0]
	lsl	r0, r0, #5
	cmp	r4, r0
	ble	.L_853a8
	strh	r0, [r5, #8]
	mov	r0, #0
	strb	r0, [r7, #0]
	bl	func_808502C
	bl	func_8085178
	mov	r0, #1
	b	.L_853aa
.L_85398:
	.4byte	gUnk_3003C0C
.L_8539c:
	.4byte	sUnk_863C52C
.L_853a0:
	.4byte	gCurrentStageNumber
.L_853a4:
	.4byte	gUnk_3003C4A
.L_853a8:
	mov	r0, #0
.L_853aa:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_80853B0
func_80853B0:
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L_853c4
	ldrb	r0, [r6, #0]
	cmp	r0, #1
	beq	.L_853dc
	cmp	r0, #1
	bgt	.L_853c8
	cmp	r0, #0
	beq	.L_853d2
	b	.L_85494
.L_853c4:
	.4byte	gUnk_3003C39
.L_853c8:
	cmp	r0, #2
	beq	.L_853f4
	cmp	r0, #3
	beq	.L_8547c
	b	.L_85494
.L_853d2:
	bl	func_8085CA0
	cmp	r0, #0
	beq	.L_85494
	b	.L_85454
.L_853dc:
	ldr	r1, .L_853f0
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #63	@ 0x3f
	bhi	.L_85494
	b	.L_85454
	.align	2, 0
.L_853f0:
	.4byte	gUnk_3004729
.L_853f4:
	ldr	r5, .L_8545c
	ldrh	r0, [r5, #0]
	sub	r0, #2
	strh	r0, [r5, #0]
	mov	r0, #0
	ldrsh	r4, [r5, r0]
	ldr	r3, .L_85460
	ldr	r2, .L_85464
	ldr	r7, .L_85468
	ldrb	r1, [r7, #0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	ldrb	r2, [r2, #0]
	add	r0, r0, r2
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldr	r1, [r0, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	sub	r0, r0, r1
	cmp	r4, r0
	bge	.L_85494
	strh	r0, [r5, #0]
	ldr	r1, .L_8546c
	mov	r0, #1
	strb	r0, [r1, #0]
	bl	func_808502C
	bl	func_8085178
	ldr	r1, .L_85470
	ldr	r4, .L_85474
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	ldr	r3, .L_85478
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #3
	ldrb	r2, [r7, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #4
	add	r1, r1, r0
	add	r3, #4
	add	r1, r1, r3
	ldr	r0, [r1, #0]
	strb	r0, [r4, #0]
	bl	func_80741F0
.L_85454:
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
	b	.L_85494
.L_8545c:
	.4byte	gUnk_3003C20
.L_85460:
	.4byte	sUnk_863C55C
.L_85464:
	.4byte	gUnk_3003C99
.L_85468:
	.4byte	gUnk_3003C4A
.L_8546c:
	.4byte	gUnk_3003C45
.L_85470:
	.4byte	gUnk_3003C98
.L_85474:
	.4byte	gCurrentStageNumber
.L_85478:
	.4byte	sUnk_863C4CC
.L_8547c:
	bl	func_8084D5C
	ldr	r0, .L_85490
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_85494
	strb	r0, [r6, #0]
	mov	r0, #1
	b	.L_85496
	.align	2, 0
.L_85490:
	.4byte	gUnk_3003C45
.L_85494:
	mov	r0, #0
.L_85496:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_808549C
func_808549C:
	push	{r4, r5, r6, r7, lr}
	ldr	r7, .L_854b0
	ldrb	r0, [r7, #0]
	cmp	r0, #1
	beq	.L_854e8
	cmp	r0, #1
	bgt	.L_854b4
	cmp	r0, #0
	beq	.L_854ba
	b	.L_85578
.L_854b0:
	.4byte	gUnk_3003C39
.L_854b4:
	cmp	r0, #2
	beq	.L_85544
	b	.L_85578
.L_854ba:
	ldr	r3, .L_854dc
	ldrh	r0, [r3, #8]
	sub	r0, #80	@ 0x50
	strh	r0, [r3, #8]
	mov	r0, #8
	ldrsh	r2, [r3, r0]
	ldr	r1, .L_854e0
	ldr	r0, .L_854e4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #5
	cmp	r2, r0
	bge	.L_85578
	strh	r0, [r3, #8]
	b	.L_8552c
.L_854dc:
	.4byte	gUnk_3003C0C
.L_854e0:
	.4byte	sUnk_863C42C
.L_854e4:
	.4byte	gUnk_3003C4A
.L_854e8:
	ldr	r6, .L_85534
	ldrh	r0, [r6, #8]
	sub	r0, #80	@ 0x50
	strh	r0, [r6, #8]
	ldr	r1, .L_85538
	ldr	r5, .L_8553c
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #2
	add	r1, r0, r1
	ldr	r4, .L_85540
	add	r0, r0, r4
	ldr	r1, [r1, #0]
	ldr	r0, [r0, #0]
	sub	r1, r1, r0
	mov	r0, #240	@ 0xf0
	lsl	r0, r0, #2
	bl	__divsi3
	ldrh	r1, [r6, #10]
	sub	r1, r1, r0
	strh	r1, [r6, #10]
	mov	r0, #8
	ldrsh	r1, [r6, r0]
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldr	r0, [r0, #0]
	lsl	r0, r0, #5
	cmp	r1, r0
	bge	.L_85578
	strh	r0, [r6, #8]
	mov	r0, #136	@ 0x88
	lsl	r0, r0, #4
	strh	r0, [r6, #10]
.L_8552c:
	ldrb	r0, [r7, #0]
	add	r0, #1
	strb	r0, [r7, #0]
	b	.L_85578
.L_85534:
	.4byte	gUnk_3003C0C
.L_85538:
	.4byte	sUnk_863C42C
.L_8553c:
	.4byte	gUnk_3003C4A
.L_85540:
	.4byte	sUnk_863C424
.L_85544:
	ldr	r3, .L_8556c
	ldrh	r0, [r3, #8]
	sub	r0, #80	@ 0x50
	strh	r0, [r3, #8]
	mov	r0, #8
	ldrsh	r2, [r3, r0]
	ldr	r1, .L_85570
	ldr	r0, .L_85574
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #5
	cmp	r2, r0
	bge	.L_85578
	strh	r0, [r3, #8]
	mov	r0, #0
	strb	r0, [r7, #0]
	mov	r0, #1
	b	.L_8557a
.L_8556c:
	.4byte	gUnk_3003C0C
.L_85570:
	.4byte	sUnk_863C41C
.L_85574:
	.4byte	gUnk_3003C4A
.L_85578:
	mov	r0, #0
.L_8557a:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_8085580
func_8085580:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #16
	mov	r7, #0
	ldr	r2, .L_85700
	ldrb	r6, [r2, #0]
	lsl	r0, r6, #3
	ldr	r3, .L_85704
	add	r5, r0, r3
	ldr	r0, .L_85708
	ldrb	r1, [r0, #0]
	mov	r4, #4
	str	r4, [sp, #4]
	cmp	r1, #0
	beq	.L_855a8
	mov	r0, #1
	str	r0, [sp, #4]
.L_855a8:
	mov	r1, #0
	str	r1, [sp, #0]
	ldr	r2, [sp, #4]
	cmp	r7, r2
	blt	.L_855b4
	b	.L_8597c
.L_855b4:
	mov	r8, r1
	mov	r4, #0
	str	r4, [sp, #8]
.L_855ba:
	ldr	r0, .L_8570c
	ldr	r1, [sp, #8]
	add	r2, r1, r0
	ldrb	r0, [r2, #4]
	cmp	r0, #0
	bne	.L_855c8
	b	.L_8572c
.L_855c8:
	ldr	r0, .L_85710
	add	r0, r8
	ldr	r3, [r0, #0]
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_855fc
	mov	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_855fc
	strh	r0, [r2, #2]
.L_855fc:
	ldr	r2, [sp, #8]
	ldr	r4, .L_8570c
	add	r0, r2, r4
	ldrh	r0, [r0, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_85616
	b	.L_85c5c
.L_85616:
	cmp	r7, r6
	bge	.L_8567c
	mov	ip, r8
	ldr	r0, .L_85714
	mov	sl, r0
	mov	r1, #13
	neg	r1, r1
	mov	r9, r1
	lsl	r0, r7, #3
	ldr	r2, .L_85704
	add	r4, r0, r2
	sub	r7, r6, r7
.L_8562e:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldr	r1, .L_85708
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	add	r0, ip
	ldr	r1, .L_85718
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r2, .L_8571c
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8562e
	add	r7, r6, #0
.L_8567c:
	ldr	r0, .L_85720
	add	r0, r8
	ldr	r3, [r0, #0]
	ldr	r3, [r3, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_85690
	b	.L_85c5c
.L_85690:
	cmp	r7, r6
	blt	.L_85696
	b	.L_85964
.L_85696:
	ldr	r4, .L_85708
	mov	ip, r4
	ldr	r0, .L_85724
	mov	sl, r0
	lsl	r0, r7, #3
	ldr	r1, .L_85704
	add	r4, r0, r1
	mov	r2, #13
	neg	r2, r2
	mov	r9, r2
	sub	r7, r6, r7
.L_856ac:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, ip
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	ldr	r1, .L_85728
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, ip
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	add	r0, sl
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r2, .L_8571c
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_85714
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_856ac
	b	.L_85962
.L_85700:
	.4byte	gOamSlotsUsed
.L_85704:
	.4byte	gOamBuffer
.L_85708:
	.4byte	gUnk_3003C4A
.L_8570c:
	.4byte	gUnk_3004708
.L_85710:
	.4byte	sUnk_863C4AC
.L_85714:
	.4byte	0xFFFFFE00
.L_85718:
	.4byte	sUnk_863C584
.L_8571c:
	.4byte	0x1FF
.L_85720:
	.4byte	sUnk_863C4BC
.L_85724:
	.4byte	sUnk_863C5A4
.L_85728:
	.4byte	sUnk_863C5AC
.L_8572c:
	ldr	r2, .L_85ab8
	ldrb	r1, [r2, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r0, r8
	ldr	r3, .L_85abc
	add	r0, r0, r3
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #31
	cmp	r0, #0
	beq	.L_857ba
	ldr	r0, .L_85ac0
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_85754
	b	.L_85c5c
.L_85754:
	cmp	r7, r6
	bge	.L_857ba
	mov	ip, r8
	ldr	r4, .L_85ac4
	mov	sl, r4
	mov	r0, #13
	neg	r0, r0
	mov	r9, r0
	lsl	r0, r7, #3
	ldr	r1, .L_85ac8
	add	r4, r0, r1
	sub	r7, r6, r7
.L_8576c:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldr	r1, .L_85acc
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	add	r0, ip
	ldr	r1, .L_85ad0
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r2, .L_85ad4
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8576c
	add	r7, r6, #0
.L_857ba:
	ldr	r3, .L_85ab8
	ldrb	r0, [r3, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #3
	add	r1, r8
	ldr	r4, .L_85abc
	add	r1, r1, r4
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #30
	cmp	r0, #0
	bge	.L_85848
	ldr	r0, .L_85ad8
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_857e2
	b	.L_85c5c
.L_857e2:
	cmp	r7, r6
	bge	.L_85848
	mov	ip, r8
	ldr	r0, .L_85ac4
	mov	sl, r0
	mov	r1, #13
	neg	r1, r1
	mov	r9, r1
	lsl	r0, r7, #3
	ldr	r2, .L_85ac8
	add	r4, r0, r2
	sub	r7, r6, r7
.L_857fa:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldr	r1, .L_85acc
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	add	r0, ip
	ldr	r1, .L_85ad0
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r2, .L_85ad4
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_857fa
	add	r7, r6, #0
.L_85848:
	ldr	r3, .L_85ab8
	ldrb	r0, [r3, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #3
	add	r1, r8
	ldr	r4, .L_85abc
	add	r1, r1, r4
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #29
	cmp	r0, #0
	bge	.L_858d6
	ldr	r0, .L_85adc
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_85870
	b	.L_85c5c
.L_85870:
	cmp	r7, r6
	bge	.L_858d6
	mov	ip, r8
	ldr	r0, .L_85ac4
	mov	sl, r0
	mov	r1, #13
	neg	r1, r1
	mov	r9, r1
	lsl	r0, r7, #3
	ldr	r2, .L_85ac8
	add	r4, r0, r2
	sub	r7, r6, r7
.L_85888:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldr	r1, .L_85acc
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	add	r0, ip
	ldr	r1, .L_85ad0
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r2, .L_85ad4
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_85888
	add	r7, r6, #0
.L_858d6:
	ldr	r3, .L_85ab8
	ldrb	r0, [r3, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #3
	add	r1, r8
	ldr	r4, .L_85abc
	add	r1, r1, r4
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #28
	cmp	r0, #0
	bge	.L_85964
	ldr	r0, .L_85ae0
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_858fe
	b	.L_85c5c
.L_858fe:
	cmp	r7, r6
	bge	.L_85964
	mov	ip, r8
	ldr	r0, .L_85ac4
	mov	sl, r0
	mov	r1, #13
	neg	r1, r1
	mov	r9, r1
	lsl	r0, r7, #3
	ldr	r2, .L_85ac8
	add	r4, r0, r2
	sub	r7, r6, r7
.L_85916:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldr	r1, .L_85acc
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	add	r0, ip
	ldr	r1, .L_85ad0
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r2, .L_85ad4
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_85916
.L_85962:
	add	r7, r6, #0
.L_85964:
	mov	r3, #4
	add	r8, r3
	ldr	r4, [sp, #8]
	add	r4, #8
	str	r4, [sp, #8]
	ldr	r0, [sp, #0]
	add	r0, #1
	str	r0, [sp, #0]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bge	.L_8597c
	b	.L_855ba
.L_8597c:
	ldr	r2, .L_85acc
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_85a26
	mov	r3, #0
	str	r3, [sp, #0]
	mov	r8, r3
.L_8598a:
	ldr	r4, .L_85ab8
	ldrb	r0, [r4, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #3
	add	r1, r8
	ldr	r0, .L_85abc
	add	r1, r1, r0
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #27
	cmp	r0, #0
	bge	.L_85a18
	ldr	r0, .L_85ae4
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_859b2
	b	.L_85c5c
.L_859b2:
	cmp	r7, r6
	bge	.L_85a18
	mov	ip, r8
	mov	r1, #13
	neg	r1, r1
	mov	sl, r1
	lsl	r0, r7, #3
	ldr	r2, .L_85ac8
	add	r4, r0, r2
	ldr	r0, .L_85ad4
	mov	r9, r0
	sub	r7, r6, r7
.L_859ca:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #20
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldr	r1, .L_85acc
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	add	r0, ip
	ldr	r1, .L_85ad0
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_85ac4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, sl
	and	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_859ca
	add	r7, r6, #0
.L_85a18:
	mov	r3, #4
	add	r8, r3
	ldr	r4, [sp, #0]
	add	r4, #1
	str	r4, [sp, #0]
	cmp	r4, #3
	ble	.L_8598a
.L_85a26:
	ldr	r0, .L_85ae8
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	beq	.L_85b12
	mov	r0, #0
	str	r0, [sp, #0]
	ldr	r2, .L_85ae8
	ldrb	r1, [r2, #0]
	mov	r0, #5
	sub	r0, r0, r1
	ldr	r3, [sp, #0]
	cmp	r3, r0
	bge	.L_85b12
.L_85a40:
	ldr	r0, .L_85aec
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_85a50
	b	.L_85c5c
.L_85a50:
	ldr	r4, [sp, #0]
	add	r4, #1
	mov	r8, r4
	cmp	r7, r6
	bge	.L_85b02
	ldr	r0, [sp, #0]
	lsl	r0, r0, #2
	mov	ip, r0
	ldr	r1, .L_85ac4
	mov	sl, r1
	lsl	r0, r7, #3
	ldr	r2, .L_85ac8
	add	r4, r0, r2
	ldr	r0, .L_85ad4
	mov	r9, r0
	sub	r7, r6, r7
.L_85a70:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #80	@ 0x50
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldr	r1, .L_85acc
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	add	r0, ip
	ldr	r1, .L_85af0
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	b	.L_85af4
.L_85ab8:
	.4byte	gCurrentPassage
.L_85abc:
	.4byte	gCurrentCollection
.L_85ac0:
	.4byte	sUnk_864131C
.L_85ac4:
	.4byte	0xFFFFFE00
.L_85ac8:
	.4byte	gOamBuffer
.L_85acc:
	.4byte	gUnk_3003C4A
.L_85ad0:
	.4byte	sUnk_863C584
.L_85ad4:
	.4byte	0x1FF
.L_85ad8:
	.4byte	sUnk_864133C
.L_85adc:
	.4byte	sUnk_864132C
.L_85ae0:
	.4byte	sUnk_864130C
.L_85ae4:
	.4byte	sUnk_86413BC
.L_85ae8:
	.4byte	gUnk_3003C99
.L_85aec:
	.4byte	sUnk_86413CC
.L_85af0:
	.4byte	sUnk_863C5B4
.L_85af4:
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_85a70
	add	r7, r6, #0
.L_85b02:
	mov	r3, r8
	str	r3, [sp, #0]
	ldr	r4, .L_85c6c
	ldrb	r1, [r4, #0]
	mov	r0, #5
	sub	r0, r0, r1
	cmp	r3, r0
	blt	.L_85a40
.L_85b12:
	ldr	r0, .L_85c70
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bne	.L_85bac
	ldr	r0, .L_85c74
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_85b2a
	b	.L_85c5c
.L_85b2a:
	cmp	r7, r6
	bge	.L_85bac
	ldr	r1, .L_85c78
	mov	r0, #13
	neg	r0, r0
	mov	ip, r0
	ldr	r2, .L_85c7c
	mov	sl, r2
	ldr	r4, .L_85c80
	mov	r9, r4
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r0, .L_85c84
	mov	r8, r0
	sub	r7, r6, r7
.L_85b48:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, sl
	ldrb	r0, [r1, #0]
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, r9
	ldrb	r0, [r1, #0]
	mov	r1, #4
	sub	r1, r1, r0
	lsl	r1, r1, #2
	str	r1, [sp, #12]
	ldr	r1, .L_85c88
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	ldr	r1, [sp, #12]
	add	r0, r1, r0
	ldr	r1, .L_85c8c
	add	r0, r0, r1
	str	r0, [sp, #12]
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	mov	r2, r8
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_85c90
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, ip
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_85b48
	add	r7, r6, #0
.L_85bac:
	ldr	r2, .L_85c94
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	ldr	r3, .L_85c98
	ldr	r4, [r3, #0]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r8, r3
	cmp	r0, r1
	bcs	.L_85be2
	mov	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r3, [r0, #4]
	cmp	r3, #0
	bne	.L_85be2
	strh	r3, [r2, #2]
.L_85be2:
	ldrh	r0, [r2, #2]
	mov	r3, r8
	ldr	r1, [r3, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	bgt	.L_85c5c
	cmp	r7, r6
	bge	.L_85c58
	ldr	r1, .L_85c78
	mov	r8, r2
	ldr	r4, .L_85c90
	mov	sl, r4
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r0, .L_85c84
	mov	r9, r0
	sub	r7, r6, r7
.L_85c0e:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, r8
	ldrh	r0, [r1, #10]
	lsl	r0, r0, #16
	asr	r0, r0, #21
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r1, [r1, #8]
	lsl	r1, r1, #16
	asr	r1, r1, #21
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_85c0e
.L_85c58:
	ldr	r3, .L_85c9c
	strb	r6, [r3, #0]
.L_85c5c:
	add	sp, #16
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_85c6c:
	.4byte	gUnk_3003C99
.L_85c70:
	.4byte	gUnk_3004700
.L_85c74:
	.4byte	sUnk_86413CC
.L_85c78:
	.4byte	gOamBuffer
.L_85c7c:
	.4byte	gUnk_3004729
.L_85c80:
	.4byte	gUnk_3004728
.L_85c84:
	.4byte	0x1FF
.L_85c88:
	.4byte	gUnk_3003C4A
.L_85c8c:
	.4byte	sUnk_863C5B4
.L_85c90:
	.4byte	0xFFFFFE00
.L_85c94:
	.4byte	gUnk_3003C0C
.L_85c98:
	.4byte	gUnk_3003C40
.L_85c9c:
	.4byte	gOamSlotsUsed


thumb_func_start func_8085CA0
func_8085CA0:
	push	{r4, lr}
	ldr	r4, .L_85ce8
	ldrh	r1, [r4, #0]
	add	r1, #10
	strh	r1, [r4, #0]
	ldr	r3, .L_85cec
	ldrh	r0, [r3, #0]
	sub	r0, #10
	strh	r0, [r3, #0]
	lsl	r1, r1, #16
	asr	r1, r1, #16
	ldr	r2, .L_85cf0
	cmp	r1, #40	@ 0x28
	ble	.L_85cca
	ldr	r0, .L_85cf4
	ldrh	r1, [r0, #0]
	add	r1, #10
	strh	r1, [r0, #0]
	ldrh	r0, [r2, #0]
	sub	r0, #10
	strh	r0, [r2, #0]
.L_85cca:
	mov	r1, #0
	ldrsh	r0, [r2, r1]
	cmp	r0, #79	@ 0x4f
	bgt	.L_85cda
	ldr	r1, .L_85cf4
	mov	r0, #80	@ 0x50
	strh	r0, [r1, #0]
	strh	r0, [r2, #0]
.L_85cda:
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	cmp	r0, #119	@ 0x77
	ble	.L_85cf8
	mov	r0, #0
	b	.L_85d00
	.align	2, 0
.L_85ce8:
	.4byte	gUnk_3003C4C
.L_85cec:
	.4byte	gUnk_3003C4E
.L_85cf0:
	.4byte	gUnk_3003C52
.L_85cf4:
	.4byte	gUnk_3003C50
.L_85cf8:
	mov	r0, #120	@ 0x78
	strh	r0, [r4, #0]
	strh	r0, [r3, #0]
	mov	r0, #1
.L_85d00:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_8085D08
func_8085D08:
	push	{r4, r5, lr}
	ldr	r5, .L_85d48
	ldrh	r0, [r5, #0]
	sub	r0, #10
	strh	r0, [r5, #0]
	ldr	r4, .L_85d4c
	ldrh	r0, [r4, #0]
	add	r3, r0, #0
	add	r3, #10
	strh	r3, [r4, #0]
	ldr	r2, .L_85d50
	ldrh	r0, [r2, #0]
	sub	r0, #10
	strh	r0, [r2, #0]
	ldr	r1, .L_85d54
	ldrh	r0, [r1, #0]
	add	r0, #10
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #160	@ 0xa0
	ble	.L_85d3c
	mov	r0, #0
	strh	r0, [r2, #0]
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
.L_85d3c:
	lsl	r0, r3, #16
	asr	r0, r0, #16
	cmp	r0, #240	@ 0xf0
	bgt	.L_85d58
	mov	r0, #0
	b	.L_85d62
.L_85d48:
	.4byte	gUnk_3003C4C
.L_85d4c:
	.4byte	gUnk_3003C4E
.L_85d50:
	.4byte	gUnk_3003C50
.L_85d54:
	.4byte	gUnk_3003C52
.L_85d58:
	mov	r0, #0
	strh	r0, [r5, #0]
	mov	r0, #240	@ 0xf0
	strh	r0, [r4, #0]
	mov	r0, #1
.L_85d62:
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_8085D68
func_8085D68:
	push	{lr}
	ldr	r2, .L_85d98
	ldr	r0, .L_85d9c
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #8
	ldr	r1, .L_85da0
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	add	r2, #4
	ldr	r0, .L_85da4
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #8
	ldr	r1, .L_85da8
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r0, .L_85dac
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_85db0
	cmp	r0, #1
	beq	.L_85de0
	b	.L_85e02
.L_85d98:
	.4byte	0x4000040
.L_85d9c:
	.4byte	gUnk_3003C4C
.L_85da0:
	.4byte	gUnk_3003C4E
.L_85da4:
	.4byte	gUnk_3003C50
.L_85da8:
	.4byte	gUnk_3003C52
.L_85dac:
	.4byte	gLanguage
.L_85db0:
	ldr	r3, .L_85dd4
	ldr	r0, .L_85dd8
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_85ddc
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldr	r0, [r1, #0]
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #7
	mov	r2, #26
	bl	Shop_DrawText
	b	.L_85e02
.L_85dd4:
	.4byte	sUnk_863A3AC
.L_85dd8:
	.4byte	gCurrentStageNumber
.L_85ddc:
	.4byte	gCurrentPassage
.L_85de0:
	ldr	r3, .L_85e10
	ldr	r0, .L_85e14
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_85e18
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldr	r0, [r1, #0]
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #7
	mov	r2, #26
	bl	Shop_DrawText
.L_85e02:
	ldr	r0, .L_85e1c
	ldr	r1, .L_85e20
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #0]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_85e10:
	.4byte	sUnk_863A31C
.L_85e14:
	.4byte	gCurrentStageNumber
.L_85e18:
	.4byte	gCurrentPassage
.L_85e1c:
	.4byte	0x4000018
.L_85e20:
	.4byte	gUnk_3003C20
