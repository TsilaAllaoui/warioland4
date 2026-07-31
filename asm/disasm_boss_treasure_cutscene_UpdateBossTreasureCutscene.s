.align 2, 0
.global UpdateBossTreasureCutscene
.thumb
.type UpdateBossTreasureCutscene, %function
UpdateBossTreasureCutscene:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	bl	UpdateBossTreasurePaletteFlash
	bl	UpdateBossTreasurePaletteSparkle
	ldr	r0, .L_8204c
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bls	.L_82042
	b	.L_8240a
.L_82042:
	lsl	r0, r0, #2
	ldr	r1, .L_82050
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_8204c:
	.4byte	gStageEntrySequenceStep
.L_82050:
	.4byte	.L_82054
.L_82054:
	.4byte	.L_82068
	.4byte	.L_820d4
	.4byte	.L_82138
	.4byte	.L_82248
	.4byte	.L_82364
.L_82068:
	mov	r4, #0
	ldr	r0, .L_820c8
	ldrb	r1, [r0, #0]
	cmp	r4, r1
	bgt	.L_820a8
	ldr	r7, .L_820cc
	add	r6, r0, #0
	mov	r5, #65	@ 0x41
	ldr	r2, .L_820d0
	mov	r0, #1
	mov	r8, r0
.L_8207e:
	lsl	r1, r4, #3
	ldrh	r0, [r7, #0]
	cmp	r0, r1
	bne	.L_8208a
	mov	r1, r8
	strb	r1, [r2, #6]
.L_8208a:
	ldrh	r0, [r7, #0]
	cmp	r0, r5
	bne	.L_8209c
	mov	r3, #0
	strb	r3, [r2, #6]
	ldrb	r0, [r6, #0]
	cmp	r4, r0
	bne	.L_8209c
	b	.L_82388
.L_8209c:
	add	r5, #8
	add	r2, #8
	add	r4, #1
	ldrb	r1, [r6, #0]
	cmp	r4, r1
	ble	.L_8207e
.L_820a8:
	bl	UpdateBossTreasureFirstPhaseTreasureItems
	bl	UpdateBossTreasureParticles
	ldr	r4, .L_820cc
	ldrh	r0, [r4, #0]
	mov	r1, #3
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_820c2
	b	.L_82210
.L_820c2:
	bl	SpawnBossTreasureParticles
	b	.L_82210
.L_820c8:
	.4byte	gBossTreasureLastItemIndex
.L_820cc:
	.4byte	gStageEntrySequenceTimer
.L_820d0:
	.4byte	gBossTreasureItems
.L_820d4:
	bl	UpdateBossTreasureParticles
	ldr	r3, .L_82124
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldrh	r2, [r3, #0]
	mov	r0, #1
	and	r2, r0
	cmp	r2, #0
	beq	.L_820ec
	b	.L_8240a
.L_820ec:
	ldr	r0, .L_82128
	ldrh	r1, [r0, #0]
	add	r1, #1
	strh	r1, [r0, #0]
	ldr	r0, .L_8212c
	strh	r1, [r0, #0]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r1, #15
	beq	.L_82102
	b	.L_8240a
.L_82102:
	strh	r2, [r3, #0]
	ldr	r1, .L_82130
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	ldr	r2, .L_82134
	add	r0, r2, #0
	strh	r0, [r1, #0]
	bl	ClearBossTreasureParticles
	mov	r0, #215	@ 0xd7
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_8240a
.L_82124:
	.4byte	gStageEntrySequenceTimer
.L_82128:
	.4byte	gBldy
.L_8212c:
	.4byte	0x4000054
.L_82130:
	.4byte	gStageEntrySequenceStep
.L_82134:
	.4byte	0x1404
.L_82138:
	ldr	r0, .L_82218
	ldrh	r0, [r0, #0]
	mov	r1, #3
	and	r0, r1
	cmp	r0, #0
	bne	.L_82154
	ldr	r0, .L_8221c
	ldrh	r1, [r0, #0]
	cmp	r1, #0
	beq	.L_82154
	sub	r1, #1
	strh	r1, [r0, #0]
	ldr	r0, .L_82220
	strh	r1, [r0, #0]
.L_82154:
	mov	r4, #0
	ldr	r0, .L_82224
	ldrb	r1, [r0, #0]
	cmp	r4, r1
	bgt	.L_821b8
	ldr	r2, .L_82218
	mov	sl, r2
	ldr	r5, .L_82228
	mov	r7, #14
	mov	r1, #1
	mov	r9, r1
	add	r3, r0, #0
.L_8216c:
	lsl	r2, r4, #4
	mov	r1, sl
	ldrh	r0, [r1, #0]
	cmp	r0, r7
	bne	.L_8217a
	mov	r0, r9
	strb	r0, [r5, #6]
.L_8217a:
	mov	r0, sl
	ldrh	r1, [r0, #0]
	add	r0, r2, #0
	add	r0, #174	@ 0xae
	cmp	r1, r0
	bne	.L_821ac
	mov	r6, #0
	strb	r6, [r5, #6]
	ldr	r0, .L_8222c
	mov	r1, r9
	strb	r1, [r0, #0]
	ldr	r0, .L_82230
	mov	r2, #0
	mov	r8, r2
	strh	r6, [r0, #0]
	mov	r0, #214	@ 0xd6
	lsl	r0, r0, #1
	str	r3, [sp, #0]
	bl	m4aSongNumStart
	ldr	r3, [sp, #0]
	ldrb	r0, [r3, #0]
	cmp	r4, r0
	bne	.L_821ac
	b	.L_82398
.L_821ac:
	add	r5, #8
	add	r7, #16
	add	r4, #1
	ldrb	r1, [r3, #0]
	cmp	r4, r1
	ble	.L_8216c
.L_821b8:
	bl	UpdateBossTreasureSecondPhaseTreasureItems
	bl	UpdateBossTreasureParticles
	ldr	r4, .L_82218
	ldrh	r0, [r4, #0]
	mov	r1, #3
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	bne	.L_821d4
	bl	SpawnBossTreasureParticles
.L_821d4:
	ldrh	r0, [r4, #0]
	cmp	r0, #158	@ 0x9e
	bhi	.L_82210
	ldr	r2, .L_82234
	ldr	r1, .L_82238
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	ldrh	r1, [r2, #0]
	add	r0, r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_8223c
	ldrh	r0, [r4, #0]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	ldrh	r1, [r2, #2]
	add	r0, r0, r1
	strh	r0, [r2, #2]
	ldr	r2, .L_82240
	ldr	r1, .L_82244
	ldrh	r0, [r4, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	bl	UpdateBossTreasureAffineState
.L_82210:
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	b	.L_8240a
.L_82218:
	.4byte	gStageEntrySequenceTimer
.L_8221c:
	.4byte	gBldy
.L_82220:
	.4byte	0x4000054
.L_82224:
	.4byte	gBossTreasureLastItemIndex
.L_82228:
	.4byte	gBossTreasureItems
.L_8222c:
	.4byte	gBossTreasurePaletteFlashActive
.L_82230:
	.4byte	gBossTreasurePaletteFlashTimer
.L_82234:
	.4byte	gStageEntryHorizontalScroll
.L_82238:
	.4byte	sBossTreasureAffineXOffsets
.L_8223c:
	.4byte	sBossTreasureAffineYOffsets
.L_82240:
	.4byte	gBossTreasureAffineScale
.L_82244:
	.4byte	sBossTreasureAffineScales
.L_82248:
	mov	r4, #0
	ldr	r6, .L_8227c
	ldr	r7, .L_82280
	ldr	r2, .L_82284
	mov	r8, r2
	ldrh	r3, [r6, #0]
	ldr	r2, .L_82288
	ldr	r5, .L_8228c
.L_82258:
	add	r0, r4, r7
	ldrb	r0, [r0, #0]
	cmp	r3, r0
	bne	.L_82294
	ldr	r1, .L_82290
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #11
	bgt	.L_82274
	mov	r0, #12
	strb	r0, [r1, #0]
.L_82274:
	ldrb	r0, [r2, #0]
	add	r0, #1
	b	.L_822b6
	.align	2, 0
.L_8227c:
	.4byte	gStageEntrySequenceTimer
.L_82280:
	.4byte	sBossTreasureBlendInTimes
.L_82284:
	.4byte	sBossTreasureSparkleStartTimes
.L_82288:
	.4byte	gStageTransitionBlendEvb
.L_8228c:
	.4byte	0x4000052
.L_82290:
	.4byte	gStageTransitionBlendEva
.L_82294:
	ldr	r0, .L_822e4
	add	r0, r4, r0
	ldrb	r0, [r0, #0]
	cmp	r3, r0
	bne	.L_822c8
	ldr	r1, .L_822e8
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #16
	ble	.L_822b2
	mov	r0, #16
	strb	r0, [r1, #0]
.L_822b2:
	ldrb	r0, [r2, #0]
	sub	r0, #1
.L_822b6:
	strb	r0, [r2, #0]
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #24
	asr	r1, r1, #24
	lsl	r1, r1, #8
	mov	r0, #0
	ldrsb	r0, [r2, r0]
	orr	r0, r1
	strh	r0, [r5, #0]
.L_822c8:
	add	r4, #1
	cmp	r4, #9
	ble	.L_82258
	mov	r4, #0
	ldr	r5, .L_822ec
	ldr	r3, .L_822f0
.L_822d4:
	mov	r1, r8
	add	r0, r4, r1
	ldrb	r2, [r0, #0]
	ldrh	r0, [r5, #0]
	cmp	r0, r2
	bne	.L_822f4
	mov	r0, #1
	b	.L_82304
.L_822e4:
	.4byte	sBossTreasureBlendOutTimes
.L_822e8:
	.4byte	gStageTransitionBlendEva
.L_822ec:
	.4byte	gStageEntrySequenceTimer
.L_822f0:
	.4byte	gBossTreasureUnlockSparkles
.L_822f4:
	ldrh	r0, [r6, #0]
	ldr	r1, .L_82354
	add	r1, r4, r1
	ldrb	r1, [r1, #0]
	add	r1, r2, r1
	cmp	r0, r1
	bne	.L_82306
	mov	r0, #0
.L_82304:
	strb	r0, [r3, #2]
.L_82306:
	add	r3, #4
	add	r4, #1
	cmp	r4, #10
	ble	.L_822d4
	bl	UpdateBossTreasureUnlockSparkles
	mov	r4, #0
	ldr	r6, .L_82358
	ldr	r3, .L_8235c
	mov	r2, #34	@ 0x22
.L_8231a:
	ldrh	r0, [r6, #0]
	cmp	r0, r2
	bne	.L_82324
	mov	r0, #1
	strb	r0, [r3, #2]
.L_82324:
	ldrh	r0, [r6, #0]
	ldr	r1, .L_82360
	add	r1, r4, r1
	ldrb	r1, [r1, #0]
	add	r1, r1, r2
	cmp	r0, r1
	bne	.L_8233a
	mov	r5, #0
	strb	r5, [r3, #2]
	cmp	r4, #4
	beq	.L_823f4
.L_8233a:
	add	r3, #4
	sub	r2, #5
	add	r4, #1
	cmp	r4, #4
	ble	.L_8231a
	bl	UpdateBossTreasureUnlockIcons
	ldr	r1, .L_82358
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	b	.L_8240a
	.align	2, 0
.L_82354:
	.4byte	sBossTreasureSparkleDurations
.L_82358:
	.4byte	gStageEntrySequenceTimer
.L_8235c:
	.4byte	gBossTreasureUnlockIcons
.L_82360:
	.4byte	sBossTreasureUnlockIconDurations
.L_82364:
	ldr	r2, .L_82380
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #10
	bls	.L_8240a
	mov	r1, #0
	strh	r1, [r2, #0]
	ldr	r0, .L_82384
	strb	r1, [r0, #0]
	mov	r0, #1
	b	.L_8240c
.L_82380:
	.4byte	gStageEntrySequenceTimer
.L_82384:
	.4byte	gStageEntrySequenceStep
.L_82388:
	ldr	r1, .L_82394
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	strh	r3, [r7, #0]
	b	.L_8240a
.L_82394:
	.4byte	gStageEntrySequenceStep
.L_82398:
	ldr	r1, .L_823d8
	mov	r2, #130	@ 0x82
	lsl	r2, r2, #3
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_823dc
	mov	r0, #16
	strb	r0, [r1, #0]
	ldr	r0, .L_823e0
	mov	r1, r8
	strb	r1, [r0, #0]
	ldr	r2, .L_823e4
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #5
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r0, .L_823e8
	mov	r2, r8
	strb	r2, [r0, #0]
	mov	r0, sl
	strh	r6, [r0, #0]
	ldr	r1, .L_823ec
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_823f0
	bl	m4aSongNumStart
	b	.L_8240a
.L_823d8:
	.4byte	0x4000050
.L_823dc:
	.4byte	gStageTransitionBlendEva
.L_823e0:
	.4byte	gStageTransitionBlendEvb
.L_823e4:
	.4byte	0x4000052
.L_823e8:
	.4byte	gBossTreasureActivePassage
.L_823ec:
	.4byte	gStageEntrySequenceStep
.L_823f0:
	.4byte	0x1AF
.L_823f4:
	bl	InitMinigameScoreDisplay
	ldr	r0, .L_8241c
	strh	r5, [r0, #0]
	ldr	r0, .L_82420
	strh	r5, [r0, #0]
	strh	r5, [r6, #0]
	ldr	r1, .L_82424
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
.L_8240a:
	mov	r0, #0
.L_8240c:
	add	sp, #4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L_8241c:
	.4byte	gBldy
.L_82420:
	.4byte	0x4000054
.L_82424:
	.4byte	gStageEntrySequenceStep
