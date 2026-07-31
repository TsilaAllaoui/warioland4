.align 2, 0
.global DrawSoundRoomSprites
.thumb
.type DrawSoundRoomSprites, %function
DrawSoundRoomSprites:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #24
	mov	r7, #0
	ldr	r0, .L_87fc0
	ldrb	r0, [r0, #0]
	mov	r8, r0
	lsl	r1, r0, #3
	ldr	r0, .L_87fc4
	add	r5, r1, r0
	ldr	r0, .L_87fc8
	ldrb	r1, [r0, #0]
	cmp	r1, #4
	beq	.L_87e7e
	cmp	r1, #2
	beq	.L_87e7e
	ldr	r2, .L_87fcc
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r3, .L_87fd0
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_87e06
	strh	r7, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_87e06
	strh	r7, [r2, #2]
.L_87e06:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r0, r8
	cmp	r0, #128	@ 0x80
	ble	.L_87e1c
	b	.L_88582
.L_87e1c:
	cmp	r7, r8
	bge	.L_87e7e
	ldr	r1, .L_87fc4
	add	r6, r2, #0
	ldr	r2, .L_87fd4
	mov	sl, r2
	ldr	r3, .L_87fd8
	mov	ip, r3
	mov	r0, #13
	neg	r0, r0
	mov	r9, r0
	lsl	r0, r7, #3
	add	r3, r0, r1
	mov	r1, r8
	sub	r7, r1, r7
.L_87e3a:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrb	r0, [r6, #10]
	add	r0, r0, r2
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, #8
	ldrsh	r1, [r6, r0]
	add	r1, r2, r1
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_87e3a
	mov	r7, r8
.L_87e7e:
	ldr	r0, .L_87fdc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_87efc
	ldr	r1, .L_87fe0
	ldr	r0, .L_87fe4
	ldrh	r0, [r0, #2]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r3, r8
	cmp	r3, #128	@ 0x80
	ble	.L_87ea0
	b	.L_88582
.L_87ea0:
	cmp	r7, r8
	bge	.L_87efc
	ldr	r1, .L_87fc4
	ldr	r0, .L_87fd4
	mov	r9, r0
	ldr	r2, .L_87fd8
	mov	sl, r2
	mov	r6, #13
	neg	r6, r6
	lsl	r0, r7, #3
	add	r3, r0, r1
	mov	r0, r8
	sub	r7, r0, r7
.L_87eba:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #8
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #56	@ 0x38
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r6, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_87eba
	mov	r7, r8
.L_87efc:
	mov	r3, #0
	str	r3, [sp, #8]
	mov	r4, sp
	add	r4, #2
	str	r4, [sp, #12]
	mov	r0, sp
	add	r0, #4
	str	r0, [sp, #16]
	mov	r1, sp
	add	r1, #6
	str	r1, [sp, #20]
.L_87f12:
	mov	r3, #0
	ldr	r2, [sp, #8]
	add	r2, #1
	mov	sl, r2
.L_87f1a:
	ldr	r0, [sp, #8]
	ldr	r4, .L_87fe8
	ldrb	r4, [r4, #0]
	cmp	r0, r4
	bne	.L_87ffc
	ldr	r0, .L_87fec
	ldrb	r0, [r0, #0]
	cmp	r3, r0
	bne	.L_87ffc
	ldr	r1, .L_87fc8
	ldrb	r0, [r1, #0]
	cmp	r0, #2
	bls	.L_87ffc
	lsl	r1, r3, #2
	ldr	r2, [sp, #8]
	lsl	r0, r2, #4
	add	r2, r1, r0
	ldr	r4, .L_87ff0
	add	r0, r2, r4
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	add	r3, #1
	mov	r9, r3
	cmp	r7, r8
	blt	.L_87f52
	b	.L_88088
.L_87f52:
	ldr	r1, .L_87ff4
	add	r0, r2, r1
	ldr	r0, [r0, #0]
	mov	ip, r0
	ldr	r1, .L_87fc4
	ldr	r0, .L_87ff8
	add	r0, r2, r0
	ldr	r6, [r0, #0]
	lsl	r0, r7, #3
	add	r3, r0, r1
.L_87f66:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, ip
	add	r0, r1, r2
	sub	r0, #8
	strb	r0, [r3, #0]
	ldrb	r1, [r3, #1]
	mov	r0, #3
	orr	r1, r0
	strb	r1, [r3, #1]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, r6
	sub	r1, #8
	ldr	r2, .L_87fd4
	and	r1, r2
	ldrh	r2, [r3, #2]
	ldr	r0, .L_87fd8
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	add	r7, #1
	cmp	r7, r8
	blt	.L_87f66
	b	.L_88088
	.align	2, 0
.L_87fc0:
	.4byte	gOamSlotsUsed
.L_87fc4:
	.4byte	gOamBuffer
.L_87fc8:
	.4byte	gSoundRoomMenuState
.L_87fcc:
	.4byte	gStageEntryMainSpriteState
.L_87fd0:
	.4byte	sUnk_8642898
.L_87fd4:
	.4byte	0x1FF
.L_87fd8:
	.4byte	0xFFFFFE00
.L_87fdc:
	.4byte	gSoundRoomBonusTrackUnlocked
.L_87fe0:
	.4byte	sUnk_8642860
.L_87fe4:
	.4byte	gSoundRoomPreviewAnimState
.L_87fe8:
	.4byte	gSoundRoomSelectedPassage
.L_87fec:
	.4byte	gSoundRoomSelectedStage
.L_87ff0:
	.4byte	sUnk_863C7D4
.L_87ff4:
	.4byte	sUnk_863C6D4
.L_87ff8:
	.4byte	sUnk_863C694
.L_87ffc:
	ldr	r2, .L_880b8
	lsl	r1, r3, #2
	mov	r4, sl
	lsl	r0, r4, #1
	add	r0, sl
	lsl	r0, r0, #3
	add	r0, r1, r0
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #27
	add	r3, #1
	mov	r9, r3
	cmp	r0, #0
	bge	.L_88088
	ldr	r2, [sp, #8]
	lsl	r0, r2, #4
	add	r1, r1, r0
	ldr	r3, .L_880bc
	add	r0, r1, r3
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	cmp	r7, r8
	bge	.L_88088
	ldr	r2, .L_880c0
	add	r0, r1, r2
	ldr	r0, [r0, #0]
	mov	ip, r0
	lsl	r0, r7, #3
	ldr	r2, .L_880c4
	add	r3, r0, r2
	ldr	r0, .L_880c8
	add	r0, r1, r0
	ldr	r6, [r0, #0]
	mov	r0, r8
	sub	r7, r0, r7
.L_88046:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, ip
	add	r0, r1, r2
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, r6
	ldr	r2, .L_880cc
	and	r1, r2
	ldrh	r2, [r3, #2]
	ldr	r0, .L_880d0
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_88046
	mov	r7, r8
.L_88088:
	mov	r3, r9
	cmp	r3, #3
	bgt	.L_88090
	b	.L_87f1a
.L_88090:
	mov	r3, sl
	str	r3, [sp, #8]
	cmp	r3, #3
	bgt	.L_8809a
	b	.L_87f12
.L_8809a:
	ldr	r4, .L_880d4
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bls	.L_880e4
	ldr	r2, .L_880d8
	ldr	r0, .L_880dc
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	ldr	r3, .L_880e0
	ldrb	r1, [r3, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	add	r0, r0, r2
	ldr	r4, [r0, #0]
	b	.L_88116
.L_880b8:
	.4byte	gCurrentCollection
.L_880bc:
	.4byte	sUnk_863C7D4
.L_880c0:
	.4byte	sUnk_863C6D4
.L_880c4:
	.4byte	gOamBuffer
.L_880c8:
	.4byte	sUnk_863C694
.L_880cc:
	.4byte	0x1FF
.L_880d0:
	.4byte	0xFFFFFE00
.L_880d4:
	.4byte	gSoundRoomMenuState
.L_880d8:
	.4byte	sUnk_863C814
.L_880dc:
	.4byte	gSoundRoomSelectedStage
.L_880e0:
	.4byte	gSoundRoomSelectedPassage
.L_880e4:
	ldr	r0, .L_88104
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_88114
	ldr	r0, .L_88108
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	ldr	r4, .L_8810c
	cmp	r0, #1
	bne	.L_88116
	cmp	r1, #99	@ 0x63
	bhi	.L_88116
	ldr	r4, .L_88110
	b	.L_88116
	.align	2, 0
.L_88104:
	.4byte	gSoundRoomMusicEnabled
.L_88108:
	.4byte	gMPlayMemAccArea
.L_8810c:
	.4byte	sUnk_8642638
.L_88110:
	.4byte	sUnk_864262A
.L_88114:
	ldr	r4, .L_881b0
.L_88116:
	ldr	r1, .L_881b4
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_88180
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	cmp	r7, r8
	bge	.L_88180
	ldr	r1, .L_881b8
	ldr	r2, .L_881bc
	mov	r9, r2
	ldr	r3, .L_881c0
	mov	sl, r3
	mov	r6, #13
	neg	r6, r6
	lsl	r0, r7, #3
	add	r3, r0, r1
	mov	r0, r8
	sub	r7, r0, r7
.L_8813e:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #88	@ 0x58
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #160	@ 0xa0
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r6, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8813e
	mov	r7, r8
.L_88180:
	ldr	r3, .L_881b4
	ldrb	r0, [r3, #0]
	cmp	r0, #2
	bne	.L_8825c
	ldr	r0, .L_881c4
	ldrh	r0, [r0, #0]
	mov	r1, #7
	bl	__umodsi3
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	cmp	r6, #0
	bne	.L_881d0
	bl	MinigameRandom
	mov	r1, #10
	bl	__modsi3
	cmp	r0, #4
	bgt	.L_881cc
	ldr	r1, .L_881c8
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_881d0
.L_881b0:
	.4byte	sUnk_864261C
.L_881b4:
	.4byte	gSoundRoomMenuState
.L_881b8:
	.4byte	gOamBuffer
.L_881bc:
	.4byte	0x1FF
.L_881c0:
	.4byte	0xFFFFFE00
.L_881c4:
	.4byte	gStageEntrySequenceTimer
.L_881c8:
	.4byte	gSoundRoomPreviewRequest
.L_881cc:
	ldr	r0, .L_88244
	strb	r6, [r0, #0]
.L_881d0:
	ldr	r0, .L_88244
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_881da
	ldr	r4, .L_88248
.L_881da:
	cmp	r0, #1
	bne	.L_881e0
	ldr	r4, .L_8824c
.L_881e0:
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	cmp	r7, r8
	blt	.L_881ec
	b	.L_884c6
.L_881ec:
	ldr	r1, .L_88250
	ldr	r0, .L_88254
	mov	r9, r0
	ldr	r2, .L_88258
	mov	sl, r2
	mov	r6, #13
	neg	r6, r6
	lsl	r0, r7, #3
	add	r3, r0, r1
	mov	r0, r8
	sub	r7, r0, r7
.L_88202:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #16
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #160	@ 0xa0
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r6, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_88202
	b	.L_884c6
.L_88244:
	.4byte	gSoundRoomPreviewRequest
.L_88248:
	.4byte	sUnk_86427A0
.L_8824c:
	.4byte	sUnk_86427BA
.L_88250:
	.4byte	gOamBuffer
.L_88254:
	.4byte	0x1FF
.L_88258:
	.4byte	0xFFFFFE00
.L_8825c:
	cmp	r0, #4
	beq	.L_88262
	b	.L_8842c
.L_88262:
	ldr	r0, .L_882a0
	ldrh	r6, [r0, #0]
	mov	r1, #150	@ 0x96
	lsl	r1, r1, #3
	add	r0, r6, #0
	bl	__umodsi3
	lsl	r0, r0, #16
	ldr	r1, .L_882a4
	cmp	r0, r1
	bhi	.L_8833c
	add	r0, r6, #0
	mov	r1, #7
	bl	__umodsi3
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	cmp	r6, #0
	bne	.L_882b0
	bl	MinigameRandom
	mov	r1, #10
	bl	__modsi3
	cmp	r0, #4
	bgt	.L_882ac
	ldr	r1, .L_882a8
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_882b0
	.align	2, 0
.L_882a0:
	.4byte	gStageEntrySequenceTimer
.L_882a4:
	.4byte	0x12B0000
.L_882a8:
	.4byte	gSoundRoomPreviewRequest
.L_882ac:
	ldr	r0, .L_88324
	strb	r6, [r0, #0]
.L_882b0:
	ldr	r0, .L_88324
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_882ba
	ldr	r4, .L_88328
.L_882ba:
	cmp	r0, #1
	bne	.L_882c0
	ldr	r4, .L_8832c
.L_882c0:
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	cmp	r7, r8
	blt	.L_882cc
	b	.L_884c6
.L_882cc:
	ldr	r1, .L_88330
	ldr	r3, .L_88334
	mov	r9, r3
	ldr	r0, .L_88338
	mov	sl, r0
	mov	r6, #13
	neg	r6, r6
	lsl	r0, r7, #3
	add	r3, r0, r1
	mov	r1, r8
	sub	r7, r1, r7
.L_882e2:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #16
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #160	@ 0xa0
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r6, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_882e2
	b	.L_884c6
.L_88324:
	.4byte	gSoundRoomPreviewRequest
.L_88328:
	.4byte	sUnk_86427A0
.L_8832c:
	.4byte	sUnk_86427BA
.L_88330:
	.4byte	gOamBuffer
.L_88334:
	.4byte	0x1FF
.L_88338:
	.4byte	0xFFFFFE00
.L_8833c:
	mov	r1, #150	@ 0x96
	lsl	r1, r1, #2
	add	r0, r6, #0
	bl	__umodsi3
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r3, #0
	beq	.L_88358
	mov	r0, #150	@ 0x96
	lsl	r0, r0, #1
	ldr	r2, .L_88370
	cmp	r3, r0
	bne	.L_88364
.L_88358:
	ldr	r0, .L_88370
	mov	r2, #0
	mov	r1, #1
	strh	r1, [r0, #0]
	strh	r2, [r0, #2]
	add	r2, r0, #0
.L_88364:
	ldr	r0, .L_88374
	cmp	r3, r0
	bgt	.L_8837c
	ldr	r0, .L_88378
	ldr	r3, [r0, #0]
	b	.L_88380
.L_88370:
	.4byte	gSoundRoomTrackAnimState
.L_88374:
	.4byte	0x12B
.L_88378:
	.4byte	sUnk_863C854
.L_8837c:
	ldr	r0, .L_8841c
	ldr	r3, [r0, #4]
.L_88380:
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldrh	r1, [r2, #2]
	lsl	r1, r1, #3
	add	r1, r1, r3
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_883ae
	mov	r0, #0
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_883ae
	strh	r0, [r2, #2]
.L_883ae:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	cmp	r7, r8
	blt	.L_883c2
	b	.L_884c6
.L_883c2:
	ldr	r1, .L_88420
	ldr	r3, .L_88424
	mov	r9, r3
	ldr	r0, .L_88428
	mov	sl, r0
	mov	r6, #13
	neg	r6, r6
	lsl	r0, r7, #3
	add	r3, r0, r1
	mov	r1, r8
	sub	r7, r1, r7
.L_883d8:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #16
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #160	@ 0xa0
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r6, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_883d8
	b	.L_884c6
	.align	2, 0
.L_8841c:
	.4byte	sUnk_863C854
.L_88420:
	.4byte	gOamBuffer
.L_88424:
	.4byte	0x1FF
.L_88428:
	.4byte	0xFFFFFE00
.L_8842c:
	ldr	r3, .L_88594
	ldr	r2, .L_88598
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
	bcs	.L_8845e
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
	bne	.L_8845e
	strh	r0, [r2, #2]
.L_8845e:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	cmp	r7, r8
	bge	.L_884c6
	ldr	r1, .L_8859c
	ldr	r3, .L_885a0
	mov	r9, r3
	ldr	r0, .L_885a4
	mov	sl, r0
	mov	r6, #13
	neg	r6, r6
	lsl	r0, r7, #3
	add	r3, r0, r1
	mov	r1, r8
	sub	r7, r1, r7
.L_88486:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #16
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #160	@ 0xa0
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r6, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_88486
.L_884c6:
	ldr	r3, .L_885a8
	ldrh	r0, [r3, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r4, .L_885ac
	add	r0, r0, r4
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r5, #192	@ 0xc0
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldr	r2, .L_885a8
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #1
	ldr	r3, .L_885ac
	add	r0, r0, r3
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #12]
	strh	r0, [r2, #0]
	ldr	r3, .L_885a8
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #1
	ldr	r4, .L_885ac
	add	r0, r0, r4
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #16]
	strh	r0, [r1, #0]
	ldr	r2, .L_885a8
	ldrh	r0, [r2, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r3, .L_885ac
	add	r0, r0, r3
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r2, [sp, #20]
	strh	r0, [r2, #0]
	ldr	r2, .L_8859c
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #6]
	ldr	r3, [sp, #12]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #14]
	ldr	r4, [sp, #16]
	ldrh	r1, [r4, #0]
	strh	r1, [r2, #22]
	strh	r0, [r2, #30]
	ldr	r0, .L_885b0
	mov	r1, r8
	strb	r1, [r0, #0]
.L_88582:
	add	sp, #24
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_88594:
	.4byte	sUnk_8642820
.L_88598:
	.4byte	gSoundRoomTrackAnimState
.L_8859c:
	.4byte	gOamBuffer
.L_885a0:
	.4byte	0x1FF
.L_885a4:
	.4byte	0xFFFFFE00
.L_885a8:
	.4byte	gSoundRoomTileWaveOffset
.L_885ac:
	.4byte	sSinCosTable
.L_885b0:
	.4byte	gOamSlotsUsed
