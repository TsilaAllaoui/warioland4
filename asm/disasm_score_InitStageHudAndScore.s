.align 2, 0
.global InitStageHudAndScore
.thumb
.type InitStageHudAndScore, %function
InitStageHudAndScore:
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
	.4byte	gBossTreasureType
.L_75f80:
	.4byte	gCurrentPassage
.L_75f84:
	.4byte	gUnk_3000C2B
.L_75f88:
	.4byte	gCurrentStageNumber
.L_75f8c:
	.4byte	gStageEntryPauseMenuDisabled
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
	bl	LoadStageCollectiblesFromSave
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
	bl	UploadStageScoreDigitTiles
	bl	UploadStageTimerDigitTiles
	bl	UploadStageTimerColonTiles
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
	.4byte	gStageFrameCounter
.L_760b8:
	.4byte	gEnemyScoreDropCounter
.L_760bc:
	.4byte	gSwitchPressed
.L_760c0:
	.4byte	gGoldenTreasureCount
.L_760c4:
	.4byte	gBossState
.L_760c8:
	.4byte	gCuckooCondorPendulumLength
.L_760cc:
	.4byte	gCuckooCondorMoveRight
.L_760d0:
	.4byte	gCuckooCondorHasCapturedWario
.L_760d4:
	.4byte	gInitialHealth
.L_760d8:
	.4byte	gBossSequenceState
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
	.4byte	gStageScoreDigitsDirty
.L_7610c:
	.4byte	gStageTimerDigitsState
.L_76110:
	.4byte	gStageTimerColonState
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
