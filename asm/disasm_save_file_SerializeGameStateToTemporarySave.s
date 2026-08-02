.include "macros.s.inc"

thumb_func_start SerializeGameStateToTemporarySave
SerializeGameStateToTemporarySave:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r4, .L_7331c
	ldr	r0, .L_73320
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r0, .L_73324
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r0, .L_73328
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r0, .L_7332c
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r0, .L_73330
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r0, .L_73334
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, r4, #0
	ldr	r5, .L_73338
	ldr	r6, .L_7333c
	ldr	r7, .L_73340
	ldr	r0, .L_73344
	mov	ip, r0
	ldr	r1, .L_73348
	mov	r8, r1
	mov	r1, #0
	mov	r3, #3
.L_73000:
	strb	r1, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r3
	cmp	r0, #0
	bne	.L_73000
	ldrh	r0, [r5, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	ldrh	r0, [r6, #2]
	strh	r0, [r4, #0]
	add	r4, #2
	add	r2, r4, #0
	mov	r0, #3
	and	r0, r4
	cmp	r0, #0
	beq	.L_73036
	mov	r1, #0
	mov	r3, #3
.L_73028:
	strb	r1, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r3
	cmp	r0, #0
	bne	.L_73028
.L_73036:
	ldrh	r0, [r7, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	mov	r2, ip
	ldrh	r0, [r2, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	add	r2, r4, #0
	mov	r0, #3
	and	r0, r4
	cmp	r0, #0
	beq	.L_73060
	mov	r1, #0
	mov	r3, #3
.L_73052:
	strb	r1, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r3
	cmp	r0, #0
	bne	.L_73052
.L_73060:
	add	r0, r4, #0
	mov	r1, r8
	mov	r2, #60	@ 0x3c
	bl	memcpy
	add	r4, #60	@ 0x3c
	ldr	r0, .L_7334c
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	stmia	r4!, {r0, r1}
	ldr	r0, .L_73350
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	stmia	r4!, {r0, r1}
	ldr	r0, .L_73354
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	stmia	r4!, {r0, r1}
	ldr	r0, .L_73358
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	stmia	r4!, {r0, r1}
	ldr	r0, .L_7335c
	ldr	r0, [r0, #0]
	stmia	r4!, {r0}
	ldr	r0, .L_73360
	ldr	r0, [r0, #0]
	stmia	r4!, {r0}
	add	r1, r4, #0
	ldr	r0, .L_73364
	ldmia	r0!, {r3, r5, r6}
	stmia	r1!, {r3, r5, r6}
	add	r4, #12
	add	r1, r4, #0
	ldr	r0, .L_73368
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	add	r4, #12
	ldr	r2, .L_7336c
	mov	r5, #253	@ 0xfd
	lsl	r5, r5, #2
	add	r3, r2, r5
.L_730b4:
	add	r1, r4, #0
	add	r0, r2, #0
	ldmia	r0!, {r5, r6, r7}
	stmia	r1!, {r5, r6, r7}
	ldmia	r0!, {r5, r6, r7}
	stmia	r1!, {r5, r6, r7}
	ldmia	r0!, {r5, r6, r7}
	stmia	r1!, {r5, r6, r7}
	ldmia	r0!, {r6, r7}
	stmia	r1!, {r6, r7}
	add	r4, #44	@ 0x2c
	add	r2, #44	@ 0x2c
	cmp	r2, r3
	ble	.L_730b4
	ldr	r0, .L_73370
	mov	r9, r0
	ldr	r1, .L_73374
	mov	r8, r1
	ldr	r2, .L_73378
	mov	ip, r2
	ldr	r3, .L_7337c
	mov	sl, r3
	ldr	r3, .L_73380
	mov	r2, #7
.L_730e4:
	add	r1, r4, #0
	add	r0, r3, #0
	ldmia	r0!, {r5, r6, r7}
	stmia	r1!, {r5, r6, r7}
	add	r4, #12
	add	r3, #12
	sub	r2, #1
	cmp	r2, #0
	bge	.L_730e4
	mov	r1, r9
	ldrb	r0, [r1, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r2, .L_73384
	ldrb	r0, [r2, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r3, .L_73388
	ldrb	r0, [r3, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r5, .L_7338c
	ldrb	r0, [r5, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, r4, #0
	mov	r0, #3
	and	r0, r4
	cmp	r0, #0
	beq	.L_73132
	mov	r3, #0
	mov	r1, #3
.L_73124:
	strb	r3, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_73124
.L_73132:
	mov	r6, r8
	ldrb	r0, [r6, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	mov	r7, ip
	ldrb	r0, [r7, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	mov	r1, sl
	ldrb	r0, [r1, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r2, .L_73390
	ldrb	r0, [r2, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, r4, #0
	mov	r0, #3
	and	r0, r4
	cmp	r0, #0
	beq	.L_7316e
	mov	r3, #0
	mov	r1, #3
.L_73160:
	strb	r3, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_73160
.L_7316e:
	ldr	r3, .L_73394
	ldrb	r0, [r3, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r5, .L_73398
	ldrb	r0, [r5, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	mov	r6, r9
	ldrb	r0, [r6, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	ldr	r7, .L_7339c
	ldrb	r0, [r7, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, r4, #0
	mov	r0, #3
	and	r0, r4
	cmp	r0, #0
	beq	.L_731aa
	mov	r3, #0
	mov	r1, #3
.L_7319c:
	strb	r3, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_7319c
.L_731aa:
	ldr	r1, .L_733a0
	ldr	r0, [r1, #0]
	stmia	r4!, {r0}
	ldr	r2, .L_733a4
	ldr	r0, [r2, #0]
	stmia	r4!, {r0}
	ldr	r3, .L_733a8
	ldr	r0, [r3, #0]
	stmia	r4!, {r0}
	mov	r2, #0
	ldr	r1, .L_733ac
.L_731c0:
	add	r0, r2, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, #1
	cmp	r2, #31
	ble	.L_731c0
	mov	r0, #3
	and	r0, r2
	cmp	r0, #0
	beq	.L_731e8
	mov	r3, #0
	mov	r1, #3
.L_731da:
	strb	r3, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_731da
.L_731e8:
	mov	r2, #0
	ldr	r1, .L_733b0
.L_731ec:
	add	r0, r2, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, #1
	cmp	r2, #31
	ble	.L_731ec
	mov	r0, #3
	and	r0, r2
	cmp	r0, #0
	beq	.L_73214
	mov	r3, #0
	mov	r1, #3
.L_73206:
	strb	r3, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_73206
.L_73214:
	mov	r1, #0
	ldr	r5, .L_733b4
.L_73218:
	lsl	r0, r1, #6
	add	r3, r1, #1
	add	r1, r0, r5
	mov	r2, #63	@ 0x3f
.L_73220:
	ldrb	r0, [r1, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r1, #1
	sub	r2, #1
	cmp	r2, #0
	bge	.L_73220
	add	r1, r3, #0
	cmp	r1, #15
	ble	.L_73218
	mov	r2, #0
	ldr	r1, .L_733b8
.L_73238:
	add	r0, r2, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, #1
	cmp	r2, #4
	ble	.L_73238
	mov	r0, #3
	and	r0, r2
	cmp	r0, #0
	beq	.L_73260
	mov	r3, #0
	mov	r1, #3
.L_73252:
	strb	r3, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_73252
.L_73260:
	mov	r2, #0
	ldr	r1, .L_733bc
.L_73264:
	add	r0, r2, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, #1
	cmp	r2, #2
	ble	.L_73264
	mov	r0, #3
	and	r0, r2
	cmp	r0, #0
	beq	.L_7328c
	mov	r3, #0
	mov	r1, #3
.L_7327e:
	strb	r3, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_7327e
.L_7328c:
	mov	r2, #0
	ldr	r1, .L_733c0
.L_73290:
	add	r0, r2, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #0]
	add	r4, #1
	add	r2, #1
	cmp	r2, #4
	ble	.L_73290
	mov	r0, #3
	and	r0, r2
	cmp	r0, #0
	beq	.L_732b8
	mov	r3, #0
	mov	r1, #3
.L_732aa:
	strb	r3, [r4, #0]
	add	r4, #1
	add	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_732aa
.L_732b8:
	mov	r1, #0
	ldr	r5, .L_733c4
.L_732bc:
	add	r3, r1, #1
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r1, r0, r5
	mov	r2, #3
.L_732c8:
	ldmia	r1!, {r0}
	stmia	r4!, {r0}
	sub	r2, #1
	cmp	r2, #0
	bge	.L_732c8
	add	r1, r3, #0
	cmp	r1, #4
	ble	.L_732bc
	ldr	r5, .L_733c8
	ldr	r0, [r5, #0]
	stmia	r4!, {r0}
	ldr	r6, .L_733cc
	ldr	r0, [r6, #0]
	ldr	r1, [r6, #4]
	stmia	r4!, {r0, r1}
	ldr	r7, .L_733d0
	ldrh	r0, [r7, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	ldr	r1, .L_733d4
	ldrh	r0, [r1, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	ldr	r2, .L_733d8
	ldrh	r0, [r2, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	ldr	r3, .L_733dc
	ldrh	r0, [r3, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	ldr	r5, .L_733e0
	ldrh	r0, [r5, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	ldr	r6, .L_733e4
	ldrh	r0, [r6, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	ldr	r7, .L_733e8
	b	.L_733ec
	.align	2, 0
.L_7331c:
	.4byte	0x02039018
.L_73320:
	.4byte	gStageRoomTableIndex
.L_73324:
	.4byte	gCurrentPassage
.L_73328:
	.4byte	gCurrentStageNumber
.L_7332c:
	.4byte	gUnk_3000025
.L_73330:
	.4byte	gRoomTransitionTileDataCount
.L_73334:
	.4byte	gTimerState
.L_73338:
	.4byte	gClearedRoomTileCount
.L_7333c:
	.4byte	gGameMusicState
.L_73340:
	.4byte	gUnk_300003A
.L_73344:
	.4byte	gGoldenBossTransitionBg0Y
.L_73348:
	.4byte	gWarioData
.L_7334c:
	.4byte	gWarioDashAfterimage
.L_73350:
	.4byte	gCurrentCarriedSprite
.L_73354:
	.4byte	gWarioMotionAfterimage
.L_73358:
	.4byte	gCurrentWarioEffect
.L_7335c:
	.4byte	gHeartMeter
.L_73360:
	.4byte	gHeartGauge
.L_73364:
	.4byte	gWarioDustEffect1
.L_73368:
	.4byte	gWarioDustEffect2
.L_7336c:
	.4byte	gSpriteData
.L_73370:
	.4byte	gSwitchPressed
.L_73374:
	.4byte	gCollectedNEJewelPiece
.L_73378:
	.4byte	gCollectedSEJewelPiece
.L_7337c:
	.4byte	gCollectedSWJewelPiece
.L_73380:
	.4byte	gSecondarySpriteData
.L_73384:
	.4byte	gUnk_3000C04
.L_73388:
	.4byte	gUnk_3000C05
.L_7338c:
	.4byte	gEnemyScoreDropCounter
.L_73390:
	.4byte	gCollectedNWJewelPiece
.L_73394:
	.4byte	gCollectedCD
.L_73398:
	.4byte	gCollectedKeyzer
.L_7339c:
	.4byte	gUnk_3000C0E
.L_733a0:
	.4byte	gTotalScore
.L_733a4:
	.4byte	gStageScore
.L_733a8:
	.4byte	gStageFrameCounter
.L_733ac:
	.4byte	gRoomSpriteIds
.L_733b0:
	.4byte	gRoomSpriteGraphicsSlots
.L_733b4:
	.4byte	gPersistentSpriteData
.L_733b8:
	.4byte	gSwitchStates
.L_733bc:
	.4byte	gStageTimerDigits
.L_733c0:
	.4byte	gScoreDigits
.L_733c4:
	.4byte	gCurrentCollection
.L_733c8:
	.4byte	gUnk_30000D8
.L_733cc:
	.4byte	gCameraPositionState
.L_733d0:
	.4byte	gBg0XPosition
.L_733d4:
	.4byte	gBg0YPosition
.L_733d8:
	.4byte	gBg1XPosition
.L_733dc:
	.4byte	gBg1YPosition
.L_733e0:
	.4byte	gBg2XPosition
.L_733e4:
	.4byte	gBg2YPosition
.L_733e8:
	.4byte	gBg3XPosition
.L_733ec:
	ldrh	r0, [r7, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	ldr	r1, .L_73410
	ldrh	r0, [r1, #0]
	strh	r0, [r4, #0]
	add	r4, #2
	add	r0, r4, #0
	ldr	r1, .L_73414
	bl	CopySaveFileBlock8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_73410:
	.4byte	gBg3YPosition
.L_73414:
	.4byte	sSaveFooterSignature
