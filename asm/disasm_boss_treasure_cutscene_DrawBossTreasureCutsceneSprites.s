.align 2, 0
.global DrawBossTreasureCutsceneSprites
.thumb
.type DrawBossTreasureCutsceneSprites, %function
DrawBossTreasureCutsceneSprites:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #100	@ 0x64
	mov	r0, #0
	mov	r9, r0
	ldr	r0, .L_8304c
	ldrb	r0, [r0, #0]
	mov	r8, r0
	lsl	r1, r0, #3
	ldr	r0, .L_83050
	add	r7, r1, r0
	mov	r1, #0
	str	r1, [sp, #12]
	ldr	r2, .L_83054
	ldrb	r2, [r2, #0]
	cmp	r1, r2
	ble	.L_82f8a
	b	.L_8311e
.L_82f8a:
	mov	r3, #0
	str	r3, [sp, #88]	@ 0x58
.L_82f8e:
	mov	r5, #0
	str	r5, [sp, #8]
	ldr	r0, [sp, #88]	@ 0x58
	ldr	r1, .L_83058
	add	r5, r0, r1
	mov	r2, #0
	str	r2, [sp, #84]	@ 0x54
.L_82f9c:
	ldrb	r0, [r5, #12]
	cmp	r0, #0
	bne	.L_82fa4
	b	.L_830f0
.L_82fa4:
	ldrh	r1, [r5, #8]
	add	r1, #1
	mov	r4, #0
	mov	r3, #0
	strh	r1, [r5, #8]
	ldr	r2, .L_8305c
	ldrh	r0, [r5, #10]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_82fe8
	strh	r3, [r5, #8]
	ldrh	r0, [r5, #10]
	add	r0, #1
	strh	r0, [r5, #10]
	ldrh	r1, [r5, #10]
	lsl	r0, r1, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_82fe8
	sub	r0, r1, #1
	strh	r0, [r5, #10]
	ldr	r1, .L_83060
	ldr	r3, [sp, #12]
	lsl	r0, r3, #3
	add	r0, r0, r1
	ldrb	r0, [r0, #6]
	cmp	r0, #0
	bne	.L_82fe8
	strb	r4, [r5, #12]
.L_82fe8:
	ldrh	r0, [r5, #10]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r0, r8
	cmp	r0, #128	@ 0x80
	ble	.L_82ffe
	b	.L_8371c
.L_82ffe:
	cmp	r9, r8
	bge	.L_830f0
	ldr	r1, [sp, #84]	@ 0x54
	ldr	r2, [sp, #88]	@ 0x58
	add	r1, r1, r2
	mov	ip, r1
	ldr	r6, .L_83058
	add	r6, ip
	ldr	r1, .L_83050
	mov	r3, r9
	lsl	r0, r3, #3
	add	r3, r0, r1
	ldr	r0, .L_83064
	mov	sl, r0
	mov	r1, r8
	mov	r2, r9
	sub	r1, r1, r2
	mov	r9, r1
.L_83022:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldrb	r0, [r6, #4]
	cmp	r0, #1
	bhi	.L_83068
	ldrh	r0, [r6, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r2
	strb	r0, [r3, #0]
	ldrb	r1, [r3, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r3, #1]
	b	.L_8307c
	.align	2, 0
.L_8304c:
	.4byte	gOamSlotsUsed
.L_83050:
	.4byte	gOamBuffer
.L_83054:
	.4byte	gBossTreasureLastItemIndex
.L_83058:
	.4byte	gBossTreasureParticles
.L_8305c:
	.4byte	sBossTreasureParticleAnimation
.L_83060:
	.4byte	gBossTreasureItems
.L_83064:
	.4byte	0x1FF
.L_83068:
	ldrh	r0, [r6, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r2
	sub	r0, #8
	strb	r0, [r3, #0]
	ldrb	r1, [r3, #1]
	mov	r0, #3
	orr	r1, r0
	strb	r1, [r3, #1]
.L_8307c:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldr	r1, .L_8309c
	add	r1, ip
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	bhi	.L_830a0
	ldrh	r0, [r1, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r2, r0
	mov	r1, sl
	and	r0, r1
	b	.L_830ae
.L_8309c:
	.4byte	gBossTreasureParticles
.L_830a0:
	ldrh	r0, [r1, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r2, r0
	sub	r0, #8
	mov	r2, sl
	and	r0, r2
.L_830ae:
	ldrh	r2, [r3, #2]
	ldr	r1, .L_8324c
	and	r1, r2
	orr	r1, r0
	strh	r1, [r3, #2]
	ldrb	r1, [r6, #4]
	add	r1, #4
	mov	r0, #7
	and	r1, r0
	lsl	r1, r1, #1
	ldrb	r2, [r3, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r2
	orr	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	mov	r0, #1
	neg	r0, r0
	add	r9, r0
	mov	r1, r9
	cmp	r1, #0
	bne	.L_83022
	mov	r9, r8
.L_830f0:
	add	r5, #16
	ldr	r2, [sp, #84]	@ 0x54
	add	r2, #16
	str	r2, [sp, #84]	@ 0x54
	ldr	r3, [sp, #8]
	add	r3, #1
	str	r3, [sp, #8]
	cmp	r3, #19
	bgt	.L_83104
	b	.L_82f9c
.L_83104:
	ldr	r5, [sp, #88]	@ 0x58
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #1
	add	r5, r5, r0
	str	r5, [sp, #88]	@ 0x58
	ldr	r1, [sp, #12]
	add	r1, #1
	str	r1, [sp, #12]
	ldr	r2, .L_83250
	ldrb	r2, [r2, #0]
	cmp	r1, r2
	bgt	.L_8311e
	b	.L_82f8e
.L_8311e:
	mov	r3, #0
	str	r3, [sp, #12]
	mov	r5, sp
	add	r5, #2
	str	r5, [sp, #52]	@ 0x34
	mov	r0, sp
	add	r0, #4
	str	r0, [sp, #56]	@ 0x38
	mov	r1, sp
	add	r1, #6
	str	r1, [sp, #60]	@ 0x3c
	ldr	r0, .L_83254
	add	r0, #128	@ 0x80
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	str	r2, [sp, #16]
	mov	r5, #192	@ 0xc0
	lsl	r5, r5, #15
	str	r5, [sp, #80]	@ 0x50
	ldr	r0, .L_83258
	add	r1, r0, #0
	add	r1, #128	@ 0x80
	str	r1, [sp, #92]	@ 0x5c
	add	r0, #136	@ 0x88
	mov	sl, r0
.L_83150:
	ldr	r6, [sp, #12]
	add	r6, #1
	ldr	r2, [sp, #80]	@ 0x50
	asr	r5, r2, #16
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	ldr	r0, [sp, #16]
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldr	r3, .L_83254
	mov	r0, #0
	ldrsh	r4, [r3, r0]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #2]
	ldr	r2, .L_83254
	ldrh	r4, [r2, #0]
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
	mov	r3, sp
	strh	r0, [r3, #4]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	ldr	r0, [sp, #16]
	bl	FixedMul
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r5, [sp, #60]	@ 0x3c
	strh	r0, [r5, #0]
	mov	r1, sp
	ldrh	r1, [r1, #0]
	ldr	r2, [sp, #92]	@ 0x5c
	strh	r1, [r2, #6]
	mov	r3, sp
	ldrh	r1, [r3, #2]
	mov	r5, sl
	strh	r1, [r5, #6]
	ldrh	r1, [r3, #4]
	strh	r1, [r5, #14]
	strh	r0, [r5, #22]
	mov	r0, #32
	add	sl, r0
	ldr	r1, [sp, #80]	@ 0x50
	mov	r2, #192	@ 0xc0
	lsl	r2, r2, #15
	add	r1, r1, r2
	str	r1, [sp, #80]	@ 0x50
	ldr	r3, [sp, #92]	@ 0x5c
	add	r3, #32
	str	r3, [sp, #92]	@ 0x5c
	str	r6, [sp, #12]
	cmp	r6, #3
	ble	.L_83150
	ldr	r0, .L_8325c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_831fe
	b	.L_833cc
.L_831fe:
	mov	r5, #0
	str	r5, [sp, #12]
	ldr	r0, .L_83250
	ldrb	r0, [r0, #0]
	cmp	r5, r0
	ble	.L_8320c
	b	.L_835c0
.L_8320c:
	ldr	r2, .L_83260
	ldr	r0, .L_83254
	str	r0, [sp, #20]
	ldr	r1, [sp, #52]	@ 0x34
	str	r1, [sp, #24]
	add	r2, #4
	str	r2, [sp, #72]	@ 0x48
	mov	r2, #0
	str	r2, [sp, #76]	@ 0x4c
	ldr	r3, [sp, #56]	@ 0x38
	str	r3, [sp, #28]
	ldr	r5, .L_83258
	mov	sl, r5
.L_83226:
	ldr	r0, .L_83260
	ldr	r1, [sp, #76]	@ 0x4c
	add	r0, r1, r0
	ldrb	r0, [r0, #6]
	cmp	r0, #0
	bne	.L_83234
	b	.L_83390
.L_83234:
	ldr	r2, [sp, #12]
	cmp	r2, #0
	bne	.L_8326c
	ldr	r1, .L_83264
	ldr	r0, .L_83268
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	b	.L_8326e
	.align	2, 0
.L_8324c:
	.4byte	0xFFFFFE00
.L_83250:
	.4byte	gBossTreasureLastItemIndex
.L_83254:
	.4byte	sSinCosTable
.L_83258:
	.4byte	gOamBuffer
.L_8325c:
	.4byte	gStageEntrySequenceStep
.L_83260:
	.4byte	gBossTreasureItems
.L_83264:
	.4byte	sBossTreasureItemOamFramesByPassage
.L_83268:
	.4byte	gCurrentPassageTemp
.L_8326c:
	ldr	r4, .L_833b4
.L_8326e:
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r3, r8
	cmp	r3, #128	@ 0x80
	ble	.L_8327c
	b	.L_8371c
.L_8327c:
	cmp	r9, r8
	bge	.L_832fa
	ldr	r0, .L_833b8
	ldr	r1, [sp, #76]	@ 0x4c
	add	r5, r1, r0
	ldr	r2, .L_833bc
	ldr	r3, .L_833c0
	mov	ip, r3
	mov	r1, #7
	ldr	r0, [sp, #12]
	and	r0, r1
	lsl	r6, r0, #1
	mov	r1, r9
	lsl	r0, r1, #3
	add	r3, r0, r2
.L_8329a:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldrb	r0, [r5, #2]
	add	r0, r0, r2
	sub	r0, #16
	strb	r0, [r3, #0]
	ldrb	r0, [r3, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r0, #0
	ldrsh	r1, [r5, r0]
	add	r1, r2, r1
	sub	r1, #16
	mov	r2, ip
	and	r1, r2
	ldrh	r2, [r3, #2]
	ldr	r0, .L_833c4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r0, [r3, #3]
	mov	r2, #15
	neg	r2, r2
	add	r1, r2, #0
	and	r0, r1
	orr	r0, r6
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r0, [r3, #5]
	add	r2, #2
	add	r1, r2, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	mov	r0, #1
	add	r9, r0
	cmp	r9, r8
	blt	.L_8329a
.L_832fa:
	ldr	r0, [sp, #20]
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r5, [r0, r1]
	ldr	r2, [sp, #72]	@ 0x48
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldr	r0, [sp, #20]
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	ldr	r2, [sp, #72]	@ 0x48
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #24]
	strh	r0, [r1, #0]
	ldr	r2, [sp, #20]
	ldrh	r4, [r2, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	ldr	r3, [sp, #72]	@ 0x48
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #28]
	strh	r0, [r2, #0]
	ldr	r3, [sp, #72]	@ 0x48
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	ldr	r2, [sp, #60]	@ 0x3c
	strh	r0, [r2, #0]
	mov	r1, sp
	ldrh	r1, [r1, #0]
	mov	r3, sl
	strh	r1, [r3, #6]
	ldr	r5, [sp, #24]
	ldrh	r1, [r5, #0]
	strh	r1, [r3, #14]
	ldr	r2, [sp, #28]
	ldrh	r1, [r2, #0]
	strh	r1, [r3, #22]
	strh	r0, [r3, #30]
.L_83390:
	ldr	r3, [sp, #72]	@ 0x48
	add	r3, #8
	str	r3, [sp, #72]	@ 0x48
	ldr	r5, [sp, #76]	@ 0x4c
	add	r5, #8
	str	r5, [sp, #76]	@ 0x4c
	mov	r0, #32
	add	sl, r0
	ldr	r1, [sp, #12]
	add	r1, #1
	str	r1, [sp, #12]
	ldr	r0, .L_833c8
	ldrb	r0, [r0, #0]
	cmp	r1, r0
	bgt	.L_833b0
	b	.L_83226
.L_833b0:
	b	.L_835c0
	.align	2, 0
.L_833b4:
	.4byte	sBossTreasureItemOamFrame
.L_833b8:
	.4byte	gBossTreasureItems
.L_833bc:
	.4byte	gOamBuffer
.L_833c0:
	.4byte	0x1FF
.L_833c4:
	.4byte	0xFFFFFE00
.L_833c8:
	.4byte	gBossTreasureLastItemIndex
.L_833cc:
	ldr	r0, .L_8341c
	ldrb	r0, [r0, #0]
	str	r0, [sp, #12]
	cmp	r0, #0
	bge	.L_833d8
	b	.L_835c0
.L_833d8:
	ldr	r2, .L_83420
	ldr	r3, .L_83424
	str	r3, [sp, #40]	@ 0x28
	ldr	r5, [sp, #52]	@ 0x34
	str	r5, [sp, #44]	@ 0x2c
	lsl	r0, r0, #3
	add	r1, r0, #4
	add	r1, r1, r2
	mov	sl, r1
	str	r0, [sp, #68]	@ 0x44
	ldr	r0, [sp, #56]	@ 0x38
	str	r0, [sp, #48]	@ 0x30
	ldr	r1, [sp, #12]
	lsl	r0, r1, #5
	ldr	r2, .L_83428
	add	r6, r0, r2
.L_833f8:
	ldr	r0, .L_83420
	ldr	r3, [sp, #68]	@ 0x44
	add	r0, r3, r0
	ldrb	r0, [r0, #6]
	cmp	r0, #0
	bne	.L_83406
	b	.L_835a6
.L_83406:
	ldr	r5, [sp, #12]
	cmp	r5, #0
	bne	.L_83434
	ldr	r1, .L_8342c
	ldr	r0, .L_83430
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	b	.L_83436
.L_8341c:
	.4byte	gBossTreasureLastItemIndex
.L_83420:
	.4byte	gBossTreasureItems
.L_83424:
	.4byte	sSinCosTable
.L_83428:
	.4byte	gOamBuffer
.L_8342c:
	.4byte	sBossTreasureItemOamFramesByPassage
.L_83430:
	.4byte	gCurrentPassageTemp
.L_83434:
	ldr	r4, .L_8348c
.L_83436:
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r0, r8
	cmp	r0, #128	@ 0x80
	ble	.L_83444
	b	.L_8371c
.L_83444:
	cmp	r9, r8
	bge	.L_83512
	ldr	r1, [sp, #68]	@ 0x44
	str	r1, [sp, #32]
	ldr	r2, .L_83490
	add	r2, r1, r2
	str	r2, [sp, #96]	@ 0x60
	ldr	r3, .L_83494
	mov	ip, r3
	mov	r5, r9
	lsl	r0, r5, #3
	ldr	r1, .L_83498
	add	r3, r0, r1
	mov	r1, #7
	ldr	r0, [sp, #12]
	and	r0, r1
	lsl	r0, r0, #1
	str	r0, [sp, #36]	@ 0x24
.L_83468:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldr	r5, [sp, #96]	@ 0x60
	ldrh	r0, [r5, #4]
	cmp	r0, #255	@ 0xff
	bhi	.L_8349c
	ldrb	r0, [r5, #2]
	add	r0, r0, r2
	strb	r0, [r3, #0]
	ldrb	r0, [r3, #1]
	mov	r2, #4
	neg	r2, r2
	add	r1, r2, #0
	and	r0, r1
	mov	r1, #1
	b	.L_834aa
.L_8348c:
	.4byte	sBossTreasureItemOamFrame
.L_83490:
	.4byte	gBossTreasureItems
.L_83494:
	.4byte	0x1FF
.L_83498:
	.4byte	gOamBuffer
.L_8349c:
	ldr	r5, [sp, #96]	@ 0x60
	ldrb	r0, [r5, #2]
	add	r0, r0, r2
	sub	r0, #16
	strb	r0, [r3, #0]
	ldrb	r0, [r3, #1]
	mov	r1, #3
.L_834aa:
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldr	r0, [sp, #32]
	ldr	r5, .L_834cc
	add	r1, r0, r5
	ldrh	r0, [r1, #4]
	cmp	r0, #255	@ 0xff
	bhi	.L_834d0
	mov	r0, #0
	ldrsh	r1, [r1, r0]
	add	r0, r2, r1
	b	.L_834d8
	.align	2, 0
.L_834cc:
	.4byte	gBossTreasureItems
.L_834d0:
	mov	r5, #0
	ldrsh	r1, [r1, r5]
	add	r0, r2, r1
	sub	r0, #16
.L_834d8:
	mov	r1, ip
	and	r0, r1
	ldrh	r2, [r3, #2]
	ldr	r1, .L_8372c
	and	r1, r2
	orr	r1, r0
	strh	r1, [r3, #2]
	ldrb	r0, [r3, #3]
	mov	r2, #15
	neg	r2, r2
	add	r1, r2, #0
	and	r0, r1
	ldr	r5, [sp, #36]	@ 0x24
	orr	r0, r5
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r0, [r3, #5]
	add	r2, #2
	add	r1, r2, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	mov	r5, #1
	add	r9, r5
	cmp	r9, r8
	blt	.L_83468
.L_83512:
	ldr	r0, [sp, #40]	@ 0x28
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r5, [r0, r1]
	mov	r2, sl
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldr	r0, [sp, #40]	@ 0x28
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, sl
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #44]	@ 0x2c
	strh	r0, [r1, #0]
	ldr	r2, [sp, #40]	@ 0x28
	ldrh	r4, [r2, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r3, sl
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #48]	@ 0x30
	strh	r0, [r2, #0]
	mov	r3, sl
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	ldr	r2, [sp, #60]	@ 0x3c
	strh	r0, [r2, #0]
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r6, #6]
	ldr	r3, [sp, #44]	@ 0x2c
	ldrh	r1, [r3, #0]
	strh	r1, [r6, #14]
	ldr	r5, [sp, #48]	@ 0x30
	ldrh	r1, [r5, #0]
	strh	r1, [r6, #22]
	strh	r0, [r6, #30]
.L_835a6:
	mov	r0, #8
	neg	r0, r0
	add	sl, r0
	ldr	r1, [sp, #68]	@ 0x44
	sub	r1, #8
	str	r1, [sp, #68]	@ 0x44
	sub	r6, #32
	ldr	r2, [sp, #12]
	sub	r2, #1
	str	r2, [sp, #12]
	cmp	r2, #0
	blt	.L_835c0
	b	.L_833f8
.L_835c0:
	mov	r3, #0
	str	r3, [sp, #12]
	mov	r5, #0
	str	r5, [sp, #64]	@ 0x40
	ldr	r0, .L_83730
	mov	sl, r0
.L_835cc:
	mov	r1, sl
	ldrb	r0, [r1, #2]
	cmp	r0, #0
	beq	.L_83656
	ldr	r0, .L_83734
	ldr	r2, [sp, #64]	@ 0x40
	add	r0, r2, r0
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r3, r8
	cmp	r3, #128	@ 0x80
	ble	.L_835ea
	b	.L_8371c
.L_835ea:
	cmp	r9, r8
	bge	.L_83656
	mov	r5, sl
	mov	r6, #13
	neg	r6, r6
	mov	r1, r9
	lsl	r0, r1, #3
	ldr	r2, .L_83738
	add	r3, r0, r2
	ldr	r0, .L_8373c
	mov	ip, r0
	mov	r2, r8
	sub	r2, r2, r1
	mov	r9, r2
.L_83606:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldrb	r0, [r5, #1]
	add	r0, r0, r2
	strb	r0, [r3, #0]
	ldrb	r1, [r3, #1]
	add	r0, r6, #0
	and	r0, r1
	strb	r0, [r3, #1]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldrb	r1, [r5, #0]
	add	r1, r2, r1
	mov	r0, ip
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_8372c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r6, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	mov	r1, #1
	neg	r1, r1
	add	r9, r1
	mov	r2, r9
	cmp	r2, #0
	bne	.L_83606
	mov	r9, r8
.L_83656:
	mov	r3, #4
	add	sl, r3
	ldr	r5, [sp, #64]	@ 0x40
	add	r5, #4
	str	r5, [sp, #64]	@ 0x40
	ldr	r0, [sp, #12]
	add	r0, #1
	str	r0, [sp, #12]
	cmp	r0, #10
	ble	.L_835cc
	mov	r1, #4
	str	r1, [sp, #12]
	ldr	r0, .L_83740
	add	r0, #16
	mov	sl, r0
.L_83674:
	mov	r2, sl
	ldrb	r0, [r2, #2]
	cmp	r0, #0
	beq	.L_83706
	ldr	r0, .L_83744
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #2
	ldr	r3, .L_83748
	add	r0, r0, r3
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r5, r8
	cmp	r5, #128	@ 0x80
	bgt	.L_8371c
	cmp	r9, r8
	bge	.L_83706
	mov	r5, sl
	mov	r6, #13
	neg	r6, r6
	mov	r1, r9
	lsl	r0, r1, #3
	ldr	r2, .L_83738
	add	r3, r0, r2
	ldr	r0, .L_8373c
	mov	ip, r0
	mov	r2, r8
	sub	r2, r2, r1
	mov	r9, r2
.L_836b2:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldrb	r0, [r5, #1]
	add	r0, r0, r2
	strb	r0, [r3, #0]
	ldrb	r1, [r3, #1]
	add	r0, r6, #0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldrb	r1, [r5, #0]
	add	r1, r2, r1
	mov	r0, ip
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_8372c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r6, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	mov	r1, #1
	neg	r1, r1
	add	r9, r1
	mov	r2, r9
	cmp	r2, #0
	bne	.L_836b2
	mov	r9, r8
.L_83706:
	mov	r3, #4
	neg	r3, r3
	add	sl, r3
	ldr	r5, [sp, #12]
	sub	r5, #1
	str	r5, [sp, #12]
	cmp	r5, #0
	bge	.L_83674
	ldr	r0, .L_8374c
	mov	r1, r8
	strb	r1, [r0, #0]
.L_8371c:
	add	sp, #100	@ 0x64
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_8372c:
	.4byte	0xFFFFFE00
.L_83730:
	.4byte	gBossTreasureUnlockSparkles
.L_83734:
	.4byte	sBossTreasureSparkleOamFrames
.L_83738:
	.4byte	gOamBuffer
.L_8373c:
	.4byte	0x1FF
.L_83740:
	.4byte	gBossTreasureUnlockIcons
.L_83744:
	.4byte	gCurrentPassageTemp
.L_83748:
	.4byte	sBossTreasureUnlockIconOamFrames
.L_8374c:
	.4byte	gOamSlotsUsed
