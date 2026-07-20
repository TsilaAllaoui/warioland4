.include "macros.s.inc"


thumb_func_start func_8047EE8
func_8047EE8:
	push	{r4, r5, lr}
	ldr	r2, .L_47f0c
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #2
	add	r5, r2, r0
	mov	r4, #1
	mov	r3, #0
.L_47ef6:
	ldrb	r0, [r2, #23]
	cmp	r0, #227	@ 0xe3
	bne	.L_47f10
	ldrh	r1, [r2, #0]
	add	r0, r4, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_47f10
	strh	r3, [r2, #0]
	b	.L_47f16
	.align	2, 0
.L_47f0c:
	.4byte	gSpriteData
.L_47f10:
	add	r2, #44	@ 0x2c
	cmp	r2, r5
	ble	.L_47ef6
.L_47f16:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8047F1C
func_8047F1C:
	push	{r4, r5, r6, lr}
	add	r2, r0, #0
	ldr	r0, .L_47f40
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_47f2a
	ldr	r2, .L_47f44
.L_47f2a:
	mov	r6, #0
	ldr	r1, .L_47f48
	add	r5, r1, #0
	add	r5, #40	@ 0x28
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_47f4c
	sub	r0, #1
	strb	r0, [r5, #0]
	mov	r0, #0
	b	.L_47f9a
.L_47f40:
	.4byte	gCuckooCondorHasCapturedWario
.L_47f44:
	.4byte	sUnk_83CF920
.L_47f48:
	.4byte	gCurrentSprite
.L_47f4c:
	add	r4, r1, #0
	add	r4, #39	@ 0x27
	ldrb	r0, [r4, #0]
	add	r1, r0, #1
	strb	r1, [r4, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	lsl	r0, r1, #2
	add	r0, r0, r2
	ldrb	r3, [r0, #0]
	cmp	r3, #255	@ 0xff
	bne	.L_47f6e
	mov	r1, #0
	mov	r0, #1
	strb	r0, [r4, #0]
	ldrb	r3, [r2, #0]
	mov	r6, #1
.L_47f6e:
	lsl	r0, r1, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #1]
	strb	r0, [r5, #0]
	ldr	r1, .L_47fa0
	ldr	r2, .L_47fa4
	lsl	r0, r3, #2
	add	r0, r0, r2
	ldr	r2, [r0, #0]
	str	r2, [r1, #0]
	ldr	r0, .L_47fa8
	str	r0, [r1, #4]
	ldr	r3, .L_47fac
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	add	r2, #224	@ 0xe0
	str	r2, [r1, #0]
	ldr	r0, .L_47fb0
	str	r0, [r1, #4]
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	add	r0, r6, #0
.L_47f9a:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L_47fa0:
	.4byte	0x40000D4
.L_47fa4:
	.4byte	sUnk_878F0E4
.L_47fa8:
	.4byte	0x6015820
.L_47fac:
	.4byte	0x80000070
.L_47fb0:
	.4byte	0x6015C20


thumb_func_start func_8047FB4
func_8047FB4:
	push	{r4, r5, lr}
	add	r2, r0, #0
	ldr	r5, .L_47fc8
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_47fcc
	sub	r0, #1
	strb	r0, [r5, #0]
	b	.L_48008
	.align	2, 0
.L_47fc8:
	.4byte	gUnk_3000A5F
.L_47fcc:
	ldr	r4, .L_48010
	ldrb	r0, [r4, #0]
	add	r1, r0, #1
	strb	r1, [r4, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	lsl	r0, r1, #2
	add	r0, r0, r2
	ldrb	r3, [r0, #0]
	cmp	r3, #255	@ 0xff
	bne	.L_47fea
	mov	r1, #0
	mov	r0, #1
	strb	r0, [r4, #0]
	ldrb	r3, [r2, #0]
.L_47fea:
	lsl	r0, r1, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #1]
	strb	r0, [r5, #0]
	ldr	r1, .L_48014
	ldr	r2, .L_48018
	lsl	r0, r3, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_4801c
	str	r0, [r1, #4]
	ldr	r0, .L_48020
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_48008:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_48010:
	.4byte	gBossInitialHealth
.L_48014:
	.4byte	0x40000D4
.L_48018:
	.4byte	sUnk_878F0F8
.L_4801c:
	.4byte	0x6014000
.L_48020:
	.4byte	0x80000200


thumb_func_start func_8048024
func_8048024:
	push	{r4, lr}
	ldr	r0, .L_48080
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #65	@ 0x41
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r1, #35	@ 0x23
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_48084
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	strb	r2, [r1, #28]
	mov	r0, #81	@ 0x51
	bl	SpriteUtilFindSpriteSlotWork3
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_48080:
	.4byte	gCurrentSprite
.L_48084:
	.4byte	sUnk_83CF478


thumb_func_start func_8048088
func_8048088:
	ldr	r3, .L_480ac
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	ldr	r2, .L_480b0
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_480b4
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r1
	b	.L_480ba
	.align	2, 0
.L_480ac:
	.4byte	gCurrentSprite
.L_480b0:
	.4byte	gSpriteData
.L_480b4:
	ldrh	r1, [r3, #0]
	ldr	r0, .L_480d8
	and	r0, r1
.L_480ba:
	strh	r0, [r3, #0]
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_480dc
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #10]
	add	r0, #16
	b	.L_480ec
.L_480d8:
	.4byte	0xFFBF
.L_480dc:
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #10]
	sub	r0, #16
.L_480ec:
	strh	r0, [r3, #10]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #8]
	sub	r0, #216	@ 0xd8
	strh	r0, [r3, #8]
	bx	lr
	.align	2, 0


thumb_func_start func_8048104
func_8048104:
	ldr	r2, .L_48120
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_48124
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #80	@ 0x50
	b	.L_48130
	.align	2, 0
.L_48120:
	.4byte	gCurrentSprite
.L_48124:
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #48	@ 0x30
.L_48130:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_8048134
func_8048134:
	push	{r4, lr}
	sub	sp, #4
	ldr	r0, .L_48218
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_4821c
	strb	r1, [r0, #0]
	ldr	r0, .L_48220
	strb	r1, [r0, #0]
	ldr	r0, .L_48224
	strb	r1, [r0, #0]
	ldr	r2, .L_48228
	mov	r0, #12
	strb	r0, [r2, #0]
	ldr	r0, .L_4822c
	strb	r1, [r0, #0]
	ldr	r0, .L_48230
	strb	r1, [r0, #0]
	ldr	r0, .L_48234
	strb	r1, [r0, #0]
	ldr	r0, .L_48238
	strb	r1, [r0, #0]
	ldr	r4, .L_4823c
	ldrb	r0, [r4, #26]
	mov	r1, #128	@ 0x80
	orr	r0, r1
	mov	r3, #0
	strb	r0, [r4, #26]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_48240
	and	r0, r1
	mov	r2, #0
	mov	r1, #8
	orr	r0, r1
	strh	r0, [r4, #0]
	add	r1, r4, #0
	add	r1, #32
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #128	@ 0x80
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #124	@ 0x7c
	strb	r0, [r1, #0]
	mov	r0, #64	@ 0x40
	strb	r0, [r4, #30]
	mov	r0, #12
	strb	r0, [r4, #29]
	mov	r0, #1
	strb	r0, [r4, #28]
	ldr	r0, .L_48244
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	sub	r0, #3
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	ldr	r0, .L_48248
	bl	func_8047F1C
	bl	SpriteUtilTurnTowardWario
	bl	func_8048104
	bl	UpdateBossHealthGauge
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	mov	r0, #131	@ 0x83
	mov	r1, #8
	mov	r2, #4
	bl	LoadBossSpriteGraphics
	ldrh	r3, [r4, #8]
	mov	r0, #176	@ 0xb0
	lsl	r0, r0, #1
	add	r3, r3, r0
	ldrh	r0, [r4, #10]
	add	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #224	@ 0xe0
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r4, #8]
	sub	r3, #216	@ 0xd8
	ldrh	r0, [r4, #10]
	sub	r0, #16
	str	r0, [sp, #0]
	mov	r0, #251	@ 0xfb
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	ldrh	r0, [r4, #8]
	add	r0, #64	@ 0x40
	strh	r0, [r4, #8]
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_48218:
	.4byte	gBossTookDamage
.L_4821c:
	.4byte	gCuckooCondorPendulumLength
.L_48220:
	.4byte	gCuckooCondorMoveRight
.L_48224:
	.4byte	gCuckooCondorHasCapturedWario
.L_48228:
	.4byte	gBossHurtState
.L_4822c:
	.4byte	gBossHurtTimer
.L_48230:
	.4byte	gBossInitialHealth
.L_48234:
	.4byte	gUnk_3000A5F
.L_48238:
	.4byte	gUnk_3000A60
.L_4823c:
	.4byte	gCurrentSprite
.L_48240:
	.4byte	0xFFFB
.L_48244:
	.4byte	sUnk_83CE468
.L_48248:
	.4byte	sUnk_83CF8FC


thumb_func_start func_804824C
func_804824C:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_482b8
	bl	func_8047F1C
	ldr	r3, .L_482bc
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_482c0
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_482c4
	cmp	r1, r0
	bne	.L_48274
	ldrh	r4, [r5, #0]
	mov	r2, #0
.L_48274:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
	strh	r0, [r3, #8]
	add	r2, r3, #0
	add	r2, #41	@ 0x29
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_4829a
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_482b2
	ldr	r1, .L_482c8
	mov	r0, #7
	strb	r0, [r1, #0]
.L_4829a:
	ldr	r0, .L_482c8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_482b2
	ldr	r0, .L_482cc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_482b2
	mov	r0, #2
	strb	r0, [r3, #28]
	mov	r0, #20
	strb	r0, [r2, #0]
.L_482b2:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_482b8:
	.4byte	sUnk_83CF8FC
.L_482bc:
	.4byte	gCurrentSprite
.L_482c0:
	.4byte	sUnk_83CF980
.L_482c4:
	.4byte	0x7FFF
.L_482c8:
	.4byte	gColorFadingState
.L_482cc:
	.4byte	gCurrentShopItem


thumb_func_start func_80482D0
func_80482D0:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_48334
	bl	func_8047F1C
	ldr	r2, .L_48338
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_4833c
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_48340
	cmp	r1, r0
	bne	.L_482f8
	ldrh	r4, [r5, #0]
	mov	r3, #0
.L_482f8:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #0
	bne	.L_4832e
	mov	r0, #3
	strb	r0, [r2, #28]
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
	ldr	r0, .L_48344
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #212	@ 0xd4
	bl	m4aSongNumStart
.L_4832e:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_48334:
	.4byte	sUnk_83CF8FC
.L_48338:
	.4byte	gCurrentSprite
.L_4833c:
	.4byte	sUnk_83CF980
.L_48340:
	.4byte	0x7FFF
.L_48344:
	.4byte	sUnk_83CF164


thumb_func_start func_8048348
func_8048348:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_483a8
	bl	func_8047F1C
	ldr	r2, .L_483ac
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_483b0
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_483b4
	cmp	r1, r0
	bne	.L_48370
	ldrh	r4, [r5, #0]
	mov	r3, #0
.L_48370:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_483a0
	mov	r0, #4
	strb	r0, [r2, #28]
	ldr	r0, .L_483b8
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #60	@ 0x3c
	strb	r0, [r3, #0]
.L_483a0:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_483a8:
	.4byte	sUnk_83CF8FC
.L_483ac:
	.4byte	gCurrentSprite
.L_483b0:
	.4byte	sUnk_83CF980
.L_483b4:
	.4byte	0x7FFF
.L_483b8:
	.4byte	sUnk_83CD334


thumb_func_start func_80483BC
func_80483BC:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_48410
	bl	func_8047F1C
	ldr	r3, .L_48414
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_48418
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_4841c
	cmp	r1, r0
	bne	.L_483e4
	ldrh	r4, [r5, #0]
	mov	r2, #0
.L_483e4:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
	strh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_48408
	mov	r0, #5
	strb	r0, [r3, #28]
	bl	SpriteUtilStartBossTimer
.L_48408:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_48410:
	.4byte	sUnk_83CF8FC
.L_48414:
	.4byte	gCurrentSprite
.L_48418:
	.4byte	sUnk_83CF980
.L_4841c:
	.4byte	0x7FFF


thumb_func_start func_8048420
func_8048420:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_48480
	bl	func_8047F1C
	ldr	r4, .L_48484
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_48488
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_4848c
	cmp	r1, r0
	bne	.L_48448
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_48448:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	ldr	r0, .L_48490
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4847a
	ldr	r0, .L_48494
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_4847a
	bl	SpriteUtilUnsetAllSpritesHighPriority
	ldr	r1, .L_48498
	mov	r0, #2
	strb	r0, [r1, #2]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	mov	r0, #16
	strb	r0, [r4, #28]
.L_4847a:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_48480:
	.4byte	sUnk_83CF8FC
.L_48484:
	.4byte	gCurrentSprite
.L_48488:
	.4byte	sUnk_83CF980
.L_4848c:
	.4byte	0x7FFF
.L_48490:
	.4byte	gWarioPauseTimer
.L_48494:
	.4byte	gTimerState
.L_48498:
	.4byte	gSwitchStates


thumb_func_start func_804849C
func_804849C:
	push	{lr}
	ldr	r1, .L_484b8
	add	r2, r1, #0
	add	r2, #42	@ 0x2a
	mov	r0, #0
	strb	r0, [r2, #0]
	ldrb	r0, [r1, #29]
	add	r2, r1, #0
	cmp	r0, #3
	bhi	.L_484bc
	add	r1, #41	@ 0x29
	mov	r0, #60	@ 0x3c
	b	.L_484c2
	.align	2, 0
.L_484b8:
	.4byte	gCurrentSprite
.L_484bc:
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #120	@ 0x78
.L_484c2:
	strb	r0, [r1, #0]
	mov	r0, #16
	strb	r0, [r2, #28]
	ldrb	r0, [r2, #29]
	cmp	r0, #1
	bhi	.L_484ec
	ldr	r0, .L_484dc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_484e4
	ldr	r0, .L_484e0
	b	.L_48502
	.align	2, 0
.L_484dc:
	.4byte	gUnk_3000A60
.L_484e0:
	.4byte	sUnk_83CE4A8
.L_484e4:
	ldr	r0, .L_484e8
	b	.L_48502
.L_484e8:
	.4byte	sUnk_83CD374
.L_484ec:
	ldr	r0, .L_484f8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_48500
	ldr	r0, .L_484fc
	b	.L_48502
.L_484f8:
	.4byte	gUnk_3000A60
.L_484fc:
	.4byte	sUnk_83CE468
.L_48500:
	ldr	r0, .L_48520
.L_48502:
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_48524
	bl	func_8047F1C
	pop	{r0}
	bx	r0
.L_48520:
	.4byte	sUnk_83CD334
.L_48524:
	.4byte	sUnk_83CF8FC


thumb_func_start func_8048528
func_8048528:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #16
	ldr	r0, .L_485f0
	mov	r8, r0
	ldrh	r1, [r0, #18]
	str	r1, [sp, #12]
	str	r1, [sp, #8]
	ldr	r4, .L_485f4
	ldrh	r6, [r4, #10]
	mov	r9, r6
	ldr	r0, .L_485f8
	bl	func_8047F1C
	mov	r7, #42	@ 0x2a
	add	r7, r7, r4
	mov	ip, r7
	ldrb	r2, [r7, #0]
	ldr	r5, .L_485fc
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_48600
	cmp	r1, r0
	bne	.L_48568
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_48568:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	mov	r7, #0
	mov	sl, r7
	strh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_48586
	sub	r0, #1
	strb	r0, [r1, #0]
.L_48586:
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_48592
	b	.L_4868c
.L_48592:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	add	r1, #100	@ 0x64
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_48604
	ldrb	r0, [r5, #0]
	cmp	r0, #17
	bne	.L_48610
	ldr	r1, .L_48608
	mov	r0, #1
	strb	r0, [r1, #0]
	mov	r5, #1
	strb	r5, [r4, #31]
	mov	r0, #251	@ 0xfb
	bl	SpriteUtilFindSpriteSlotOrU8Max
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #255	@ 0xff
	beq	.L_485ca
	ldr	r1, .L_4860c
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	strb	r5, [r0, #31]
.L_485ca:
	ldrh	r0, [r4, #10]
	add	r0, #4
	strh	r0, [r4, #10]
	ldrh	r1, [r4, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_485dc
	b	.L_48780
.L_485dc:
	mov	r0, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r4, #0]
	bl	func_8048104
	ldrh	r0, [r4, #10]
	sub	r0, #32
	strh	r0, [r4, #10]
	b	.L_48780
	.align	2, 0
.L_485f0:
	.4byte	gWarioData
.L_485f4:
	.4byte	gCurrentSprite
.L_485f8:
	.4byte	sUnk_83CF8FC
.L_485fc:
	.4byte	sUnk_83CF980
.L_48600:
	.4byte	0x7FFF
.L_48604:
	.4byte	gSpriteCollisionTileType
.L_48608:
	.4byte	gCuckooCondorPendulumLength
.L_4860c:
	.4byte	gSpriteData
.L_48610:
	ldr	r0, .L_48648
	mov	r1, sl
	strb	r1, [r0, #0]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_4864c
	and	r0, r1
	strh	r0, [r4, #0]
	ldr	r7, [sp, #12]
	cmp	r7, r6
	bls	.L_48680
	mov	r1, r8
	ldrb	r0, [r1, #0]
	cmp	r0, #8
	beq	.L_48680
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	sub	r1, #160	@ 0xa0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r5, #0]
	cmp	r0, #17
	bne	.L_48650
	ldrh	r0, [r4, #10]
	add	r0, #2
	b	.L_48654
	.align	2, 0
.L_48648:
	.4byte	gCuckooCondorPendulumLength
.L_4864c:
	.4byte	0xFFFB
.L_48650:
	ldrh	r0, [r4, #10]
	add	r0, #1
.L_48654:
	strh	r0, [r4, #10]
	ldr	r4, .L_4867c
	ldrb	r0, [r4, #29]
	cmp	r0, #1
	bls	.L_48660
	b	.L_48780
.L_48660:
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #25
	beq	.L_4866c
	b	.L_48780
.L_4866c:
	bl	func_8047EE8
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #64	@ 0x40
	b	.L_48758
	.align	2, 0
.L_4867c:
	.4byte	gCurrentSprite
.L_48680:
	ldr	r0, .L_48688
	ldrh	r1, [r0, #10]
	add	r1, #4
	b	.L_48772
.L_48688:
	.4byte	gCurrentSprite
.L_4868c:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	sub	r1, #100	@ 0x64
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_486e8
	ldrb	r0, [r5, #0]
	cmp	r0, #17
	bne	.L_486f4
	ldr	r1, .L_486ec
	mov	r0, #1
	strb	r0, [r1, #0]
	mov	r5, #1
	strb	r5, [r4, #31]
	mov	r0, #251	@ 0xfb
	bl	SpriteUtilFindSpriteSlotOrU8Max
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #255	@ 0xff
	beq	.L_486c4
	ldr	r1, .L_486f0
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	strb	r5, [r0, #31]
.L_486c4:
	ldrh	r0, [r4, #10]
	sub	r0, #4
	strh	r0, [r4, #10]
	ldrh	r1, [r4, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	bne	.L_48780
	mov	r0, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r4, #0]
	bl	func_8048104
	ldrh	r0, [r4, #10]
	add	r0, #32
	strh	r0, [r4, #10]
	b	.L_48780
	.align	2, 0
.L_486e8:
	.4byte	gSpriteCollisionTileType
.L_486ec:
	.4byte	gCuckooCondorPendulumLength
.L_486f0:
	.4byte	gSpriteData
.L_486f4:
	ldr	r0, .L_4872c
	mov	r7, sl
	strb	r7, [r0, #0]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_48730
	and	r0, r1
	strh	r0, [r4, #0]
	ldr	r0, [sp, #8]
	cmp	r0, r9
	bcs	.L_4876c
	mov	r1, r8
	ldrb	r0, [r1, #0]
	cmp	r0, #8
	beq	.L_4876c
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	add	r1, #160	@ 0xa0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r5, #0]
	cmp	r0, #17
	bne	.L_48734
	ldrh	r0, [r4, #10]
	sub	r0, #2
	b	.L_48738
	.align	2, 0
.L_4872c:
	.4byte	gCuckooCondorPendulumLength
.L_48730:
	.4byte	0xFFFB
.L_48734:
	ldrh	r0, [r4, #10]
	sub	r0, #1
.L_48738:
	strh	r0, [r4, #10]
	ldr	r4, .L_48768
	ldrb	r0, [r4, #29]
	cmp	r0, #1
	bhi	.L_48780
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #25
	bne	.L_48780
	bl	func_8047EE8
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #0
.L_48758:
	str	r0, [sp, #4]
	mov	r0, #227	@ 0xe3
	mov	r1, #1
	mov	r2, #0
	bl	SpawnPrimarySpriteWithStatus
	b	.L_48780
	.align	2, 0
.L_48768:
	.4byte	gCurrentSprite
.L_4876c:
	ldr	r0, .L_4877c
	ldrh	r1, [r0, #10]
	sub	r1, #4
.L_48772:
	strh	r1, [r0, #10]
	ldrb	r1, [r0, #22]
	add	r1, #1
	strb	r1, [r0, #22]
	b	.L_487ca
.L_4877c:
	.4byte	gCurrentSprite
.L_48780:
	ldr	r4, .L_487a8
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_487ca
	ldr	r0, .L_487ac
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_487ca
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_487b0
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	sub	r1, #160	@ 0xa0
	b	.L_487b6
	.align	2, 0
.L_487a8:
	.4byte	gCurrentSprite
.L_487ac:
	.4byte	gCuckooCondorPendulumLength
.L_487b0:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	add	r1, #160	@ 0xa0
.L_487b6:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_487dc
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_487ca
	mov	r0, #17
	strb	r0, [r4, #28]
.L_487ca:
	add	sp, #16
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_487dc:
	.4byte	gSpriteCollisionTileType


thumb_func_start func_80487E0
func_80487E0:
	push	{lr}
	ldr	r2, .L_48804
	add	r1, r2, #0
	add	r1, #42	@ 0x2a
	mov	r0, #0
	strb	r0, [r1, #0]
	mov	r1, #18
	strb	r1, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, #175	@ 0xaf
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_48804:
	.4byte	gCurrentSprite


thumb_func_start func_8048808
func_8048808:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r0, .L_4883c
	bl	func_8047F1C
	ldr	r3, .L_48840
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_48844
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_48848
	cmp	r1, r0
	bne	.L_4884c
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_48856
.L_4883c:
	.4byte	sUnk_83CF920
.L_48840:
	.4byte	gCurrentSprite
.L_48844:
	.4byte	sUnk_83CF9EA
.L_48848:
	.4byte	0x7FFF
.L_4884c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_48856:
	strh	r0, [r3, #8]
	ldr	r4, .L_488d0
	ldrh	r0, [r4, #8]
	add	r0, #128	@ 0x80
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_488d4
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_48926
	mov	r0, #20
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	ldrh	r1, [r4, #0]
	mov	r6, #64	@ 0x40
	add	r0, r6, #0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L_488dc
	ldrh	r0, [r4, #8]
	add	r0, #128	@ 0x80
	ldrh	r1, [r4, #10]
	sub	r1, #60	@ 0x3c
	mov	r2, #7
	bl	SpriteSpawnSecondary
	ldrh	r0, [r4, #8]
	add	r0, #128	@ 0x80
	ldrh	r1, [r4, #10]
	sub	r1, #4
	mov	r2, #7
	bl	SpriteSpawnSecondary
	ldrh	r0, [r4, #8]
	add	r0, #128	@ 0x80
	ldrh	r1, [r4, #10]
	sub	r1, #116	@ 0x74
	mov	r2, #7
	bl	SpriteSpawnSecondary
	ldr	r0, .L_488d8
	ldrb	r1, [r0, #0]
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	sub	r0, #128	@ 0x80
	str	r0, [sp, #0]
	str	r6, [sp, #4]
	mov	r0, #225	@ 0xe1
	mov	r2, #0
	bl	SpawnPrimarySpriteWithStatus
	b	.L_4891e
.L_488d0:
	.4byte	gCurrentSprite
.L_488d4:
	.4byte	gUnk_30000A0
.L_488d8:
	.4byte	gBossTookDamage
.L_488dc:
	ldrh	r0, [r4, #8]
	add	r0, #128	@ 0x80
	ldrh	r1, [r4, #10]
	add	r1, #4
	mov	r2, #7
	bl	SpriteSpawnSecondary
	ldrh	r0, [r4, #8]
	add	r0, #128	@ 0x80
	ldrh	r1, [r4, #10]
	add	r1, #60	@ 0x3c
	mov	r2, #7
	bl	SpriteSpawnSecondary
	ldrh	r0, [r4, #8]
	add	r0, #128	@ 0x80
	ldrh	r1, [r4, #10]
	add	r1, #116	@ 0x74
	mov	r2, #7
	bl	SpriteSpawnSecondary
	ldr	r0, .L_48930
	ldrb	r1, [r0, #0]
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	add	r0, #128	@ 0x80
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #225	@ 0xe1
	mov	r2, #0
	bl	SpawnPrimarySpriteWithStatus
.L_4891e:
	ldr	r1, .L_48930
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
.L_48926:
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_48930:
	.4byte	gBossTookDamage


thumb_func_start func_8048934
func_8048934:
	push	{lr}
	ldr	r0, .L_4895c
	bl	func_8047F1C
	ldr	r3, .L_48960
	ldrh	r2, [r3, #8]
	lsr	r1, r2, #2
	ldr	r0, .L_48964
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r1, #80	@ 0x50
	bls	.L_48968
	add	r0, r2, #0
	sub	r0, #8
	strh	r0, [r3, #8]
	b	.L_4897c
	.align	2, 0
.L_4895c:
	.4byte	sUnk_83CF920
.L_48960:
	.4byte	gCurrentSprite
.L_48964:
	.4byte	gBg1YPosition
.L_48968:
	add	r1, r3, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4897c
	mov	r0, #15
	strb	r0, [r3, #28]
.L_4897c:
	pop	{r0}
	bx	r0


thumb_func_start func_8048980
func_8048980:
	push	{lr}
	ldr	r1, .L_489e4
	ldrb	r0, [r1, #29]
	cmp	r0, #0
	beq	.L_489a8
	sub	r0, #1
	strb	r0, [r1, #29]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_489a4
	ldr	r1, .L_489e8
	mov	r0, #3
	strb	r0, [r1, #2]
	ldr	r1, .L_489ec
	mov	r0, #11
	strb	r0, [r1, #0]
	bl	SpriteUtilSetWarioBossVictoryPose
.L_489a4:
	bl	UpdateBossHealthGauge
.L_489a8:
	ldr	r1, .L_489f0
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_489e4
	mov	r2, #0
	mov	r1, #50	@ 0x32
	strb	r1, [r0, #28]
	ldr	r1, .L_489f4
	str	r1, [r0, #4]
	strb	r2, [r0, #22]
	strh	r2, [r0, #20]
	add	r0, #41	@ 0x29
	mov	r1, #64	@ 0x40
	strb	r1, [r0, #0]
	ldr	r1, .L_489f8
	ldrh	r0, [r1, #20]
	ldrh	r1, [r1, #18]
	mov	r2, #5
	bl	SpriteSpawnSecondary
	bl	SpriteUtilTurnTowardWario
	bl	func_8048104
	mov	r0, #14
	bl	VoiceSetPlay
	pop	{r0}
	bx	r0
	.align	2, 0
.L_489e4:
	.4byte	gCurrentSprite
.L_489e8:
	.4byte	gSwitchStates
.L_489ec:
	.4byte	gTimerState
.L_489f0:
	.4byte	gCuckooCondorMoveRight
.L_489f4:
	.4byte	sUnk_83CE490
.L_489f8:
	.4byte	gWarioData


thumb_func_start func_80489FC
func_80489FC:
	push	{r4, r5, lr}
	ldr	r4, .L_48a54
	ldrh	r2, [r4, #8]
	lsr	r0, r2, #2
	ldr	r1, .L_48a58
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #80	@ 0x50
	bls	.L_48a18
	sub	r0, r2, #2
	strh	r0, [r4, #8]
.L_48a18:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_48ab8
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	cmp	r5, #31
	bls	.L_48ac6
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_48a60
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	sub	r1, #96	@ 0x60
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_48a5c
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_48a7c
	ldrh	r0, [r4, #10]
	sub	r0, #4
	b	.L_48a7a
.L_48a54:
	.4byte	gCurrentSprite
.L_48a58:
	.4byte	gBg1YPosition
.L_48a5c:
	.4byte	gSpriteCollisionTileType
.L_48a60:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	add	r1, #96	@ 0x60
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_48aa4
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_48a7c
	ldrh	r0, [r4, #10]
	add	r0, #4
.L_48a7a:
	strh	r0, [r4, #10]
.L_48a7c:
	mov	r0, #7
	and	r0, r5
	cmp	r0, #0
	bne	.L_48ac6
	mov	r0, #8
	and	r0, r5
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_48aac
	ldr	r1, .L_48aa8
	mov	r0, #4
	strb	r0, [r1, #27]
	cmp	r5, #56	@ 0x38
	bne	.L_48ac6
	mov	r0, #0
	bl	VoiceSetPlay
	b	.L_48ac6
	.align	2, 0
.L_48aa4:
	.4byte	gSpriteCollisionTileType
.L_48aa8:
	.4byte	gCurrentSprite
.L_48aac:
	ldr	r0, .L_48ab4
	strb	r1, [r0, #27]
	b	.L_48ac6
	.align	2, 0
.L_48ab4:
	.4byte	gCurrentSprite
.L_48ab8:
	ldrb	r0, [r4, #29]
	cmp	r0, #0
	bne	.L_48ac2
	mov	r0, #120	@ 0x78
	b	.L_48ac4
.L_48ac2:
	mov	r0, #110	@ 0x6e
.L_48ac4:
	strb	r0, [r4, #28]
.L_48ac6:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8048ACC
func_8048ACC:
	push	{r4, r5, lr}
	ldr	r4, .L_48b24
	ldrb	r0, [r4, #29]
	cmp	r0, #0
	beq	.L_48ade
	sub	r0, #1
	strb	r0, [r4, #29]
	bl	UpdateBossHealthGauge
.L_48ade:
	ldr	r0, .L_48b28
	mov	r2, #1
	strb	r2, [r0, #0]
	mov	r5, #0
	mov	r0, #109	@ 0x6d
	strb	r0, [r4, #28]
	ldr	r0, .L_48b2c
	str	r0, [r4, #4]
	strb	r5, [r4, #22]
	strh	r5, [r4, #20]
	ldrb	r1, [r4, #29]
	ldr	r0, .L_48b30
	ldrb	r0, [r0, #0]
	lsr	r0, r0, #1
	add	r0, #1
	cmp	r1, r0
	bge	.L_48b3c
	ldr	r0, .L_48b34
	strb	r2, [r0, #0]
	mov	r0, #251	@ 0xfb
	bl	SpriteUtilFindSpriteSlotOrU8Max
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #255	@ 0xff
	beq	.L_48b1c
	ldr	r1, .L_48b38
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r1
	strh	r5, [r0, #0]
.L_48b1c:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #192	@ 0xc0
	b	.L_48b42
.L_48b24:
	.4byte	gCurrentSprite
.L_48b28:
	.4byte	gCuckooCondorMoveRight
.L_48b2c:
	.4byte	sUnk_83CD35C
.L_48b30:
	.4byte	gBossHurtState
.L_48b34:
	.4byte	gUnk_3000A60
.L_48b38:
	.4byte	gSpriteData
.L_48b3c:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #64	@ 0x40
.L_48b42:
	strb	r0, [r1, #0]
	bl	SpriteUtilTurnTowardWario
	bl	func_8048104
	mov	r0, #14
	bl	VoiceSetPlay
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8048B58
func_8048B58:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	ldr	r4, .L_48bc4
	ldrh	r2, [r4, #8]
	lsr	r0, r2, #2
	ldr	r1, .L_48bc8
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r6, r4, #0
	cmp	r0, #80	@ 0x50
	bls	.L_48b78
	sub	r0, r2, #2
	strh	r0, [r4, #8]
.L_48b78:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_48b84
	b	.L_48cb0
.L_48b84:
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	ldr	r0, .L_48bcc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_48c24
	lsl	r0, r5, #24
	cmp	r0, #0
	blt	.L_48c28
	cmp	r5, #88	@ 0x58
	bne	.L_48bd0
	ldrh	r0, [r4, #8]
	sub	r0, #216	@ 0xd8
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r3, [r4, #8]
	sub	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	mov	r0, #213	@ 0xd5
	bl	m4aSongNumStart
	b	.L_48cb4
.L_48bc4:
	.4byte	gCurrentSprite
.L_48bc8:
	.4byte	gBg1YPosition
.L_48bcc:
	.4byte	gUnk_3000A60
.L_48bd0:
	cmp	r5, #80	@ 0x50
	bne	.L_48bde
	ldrh	r0, [r4, #8]
	sub	r0, #144	@ 0x90
	ldrh	r1, [r4, #10]
	sub	r1, #32
	b	.L_48bea
.L_48bde:
	cmp	r5, #72	@ 0x48
	bne	.L_48bf2
	ldrh	r0, [r4, #8]
	sub	r0, #144	@ 0x90
	ldrh	r1, [r4, #10]
	add	r1, #32
.L_48bea:
	mov	r2, #6
	bl	SpriteSpawnSecondary
	b	.L_48cb4
.L_48bf2:
	cmp	r5, #64	@ 0x40
	bne	.L_48cb4
	ldr	r1, .L_48c10
	ldr	r0, .L_48c14
	str	r0, [r1, #0]
	ldr	r0, .L_48c18
	str	r0, [r1, #4]
	ldr	r0, .L_48c1c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #63	@ 0x3f
	strb	r0, [r4, #30]
	ldr	r0, .L_48c20
	str	r0, [r4, #4]
	b	.L_48cb4
.L_48c10:
	.4byte	0x40000D4
.L_48c14:
	.4byte	sUnk_83CBE54
.L_48c18:
	.4byte	0x6015420
.L_48c1c:
	.4byte	0x80000070
.L_48c20:
	.4byte	sUnk_83CE490
.L_48c24:
	cmp	r5, #31
	bls	.L_48cb4
.L_48c28:
	add	r4, r6, #0
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_48c58
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	sub	r1, #96	@ 0x60
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_48c54
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_48c74
	ldrh	r0, [r4, #10]
	sub	r0, #4
	strh	r0, [r4, #10]
	b	.L_48c74
	.align	2, 0
.L_48c54:
	.4byte	gSpriteCollisionTileType
.L_48c58:
	ldrh	r0, [r6, #8]
	ldrh	r1, [r6, #10]
	add	r1, #96	@ 0x60
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_48c9c
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_48c74
	ldrh	r0, [r6, #10]
	add	r0, #4
	strh	r0, [r6, #10]
.L_48c74:
	mov	r0, #7
	and	r0, r5
	cmp	r0, #0
	bne	.L_48cb4
	mov	r0, #8
	and	r0, r5
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_48ca4
	ldr	r1, .L_48ca0
	mov	r0, #4
	strb	r0, [r1, #27]
	cmp	r5, #56	@ 0x38
	bne	.L_48cb4
	mov	r0, #0
	bl	VoiceSetPlay
	b	.L_48cb4
	.align	2, 0
.L_48c9c:
	.4byte	gSpriteCollisionTileType
.L_48ca0:
	.4byte	gCurrentSprite
.L_48ca4:
	ldr	r0, .L_48cac
	strb	r1, [r0, #27]
	b	.L_48cb4
	.align	2, 0
.L_48cac:
	.4byte	gCurrentSprite
.L_48cb0:
	mov	r0, #110	@ 0x6e
	strb	r0, [r4, #28]
.L_48cb4:
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8048CBC
func_8048CBC:
	push	{lr}
	ldr	r1, .L_48cd4
	mov	r0, #111	@ 0x6f
	strb	r0, [r1, #28]
	ldr	r0, .L_48cd8
	ldrb	r0, [r0, #0]
	add	r2, r1, #0
	cmp	r0, #0
	beq	.L_48ce0
	ldr	r0, .L_48cdc
	b	.L_48ce2
	.align	2, 0
.L_48cd4:
	.4byte	gCurrentSprite
.L_48cd8:
	.4byte	gUnk_3000A60
.L_48cdc:
	.4byte	sUnk_83CE4D0
.L_48ce0:
	ldr	r0, .L_48d08
.L_48ce2:
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r0, #178	@ 0xb2
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_48d08:
	.4byte	sUnk_83CD3EC


thumb_func_start func_8048D0C
func_8048D0C:
	push	{lr}
	ldr	r0, .L_48d30
	bl	func_8047F1C
	ldr	r2, .L_48d34
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_48d2a
	mov	r0, #112	@ 0x70
	strb	r0, [r2, #28]
.L_48d2a:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_48d30:
	.4byte	sUnk_83CF968
.L_48d34:
	.4byte	gCurrentSprite


thumb_func_start func_8048D38
func_8048D38:
	push	{lr}
	ldr	r1, .L_48d4c
	mov	r0, #113	@ 0x71
	strb	r0, [r1, #28]
	ldr	r0, .L_48d50
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_48d58
	ldr	r0, .L_48d54
	b	.L_48d5a
.L_48d4c:
	.4byte	gCurrentSprite
.L_48d50:
	.4byte	gUnk_3000A60
.L_48d54:
	.4byte	sUnk_83CE4A8
.L_48d58:
	ldr	r0, .L_48d74
.L_48d5a:
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r1, #41	@ 0x29
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	bl	SpriteUtilTurnTowardWario
	bl	func_8048104
	pop	{r0}
	bx	r0
.L_48d74:
	.4byte	sUnk_83CD374


thumb_func_start func_8048D78
func_8048D78:
	push	{r4, r5, lr}
	sub	sp, #8
	ldr	r0, .L_48db8
	bl	func_8047F1C
	ldr	r5, .L_48dbc
	add	r3, r5, #0
	add	r3, #41	@ 0x29
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_48e00
	ldrh	r0, [r5, #0]
	mov	r2, #64	@ 0x40
	add	r1, r2, #0
	and	r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	neg	r1, r1
	asr	r4, r1, #31
	and	r4, r2
	ldrb	r0, [r3, #0]
	cmp	r0, #40	@ 0x28
	beq	.L_48dd6
	cmp	r0, #40	@ 0x28
	bgt	.L_48dc0
	cmp	r0, #20
	beq	.L_48de8
	b	.L_48e08
.L_48db8:
	.4byte	sUnk_83CF968
.L_48dbc:
	.4byte	gCurrentSprite
.L_48dc0:
	cmp	r0, #60	@ 0x3c
	bne	.L_48e08
	bl	func_8047EE8
	ldrh	r3, [r5, #8]
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #227	@ 0xe3
	mov	r1, #0
	b	.L_48df8
.L_48dd6:
	bl	func_8047EE8
	ldrh	r3, [r5, #8]
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #227	@ 0xe3
	mov	r1, #3
	b	.L_48df8
.L_48de8:
	bl	func_8047EE8
	ldrh	r3, [r5, #8]
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #227	@ 0xe3
	mov	r1, #4
.L_48df8:
	mov	r2, #0
	bl	SpawnPrimarySpriteWithStatus
	b	.L_48e08
.L_48e00:
	mov	r0, #15
	strb	r0, [r5, #28]
	ldr	r0, .L_48e10
	strb	r1, [r0, #0]
.L_48e08:
	add	sp, #8
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_48e10:
	.4byte	gCuckooCondorMoveRight


thumb_func_start func_8048E14
func_8048E14:
	push	{lr}
	ldr	r2, .L_48e3c
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r1, #0
	mov	r0, #45	@ 0x2d
	strb	r0, [r3, #0]
	mov	r0, #32
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #178	@ 0xb2
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_48e3c:
	.4byte	gCurrentSprite


thumb_func_start func_8048E40
func_8048E40:
	push	{r4, lr}
	ldr	r0, .L_48e90
	bl	func_8047F1C
	ldr	r4, .L_48e94
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_48ea0
	sub	r0, #1
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	add	r1, #64	@ 0x40
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_48e98
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_48e74
	ldrh	r0, [r4, #10]
	add	r0, #4
	strh	r0, [r4, #10]
.L_48e74:
	ldrh	r2, [r4, #8]
	lsr	r0, r2, #2
	ldr	r1, .L_48e9c
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #64	@ 0x40
	bls	.L_48ec4
	sub	r0, r2, #1
	strh	r0, [r4, #8]
	b	.L_48ec4
	.align	2, 0
.L_48e90:
	.4byte	sUnk_83CF930
.L_48e94:
	.4byte	gCurrentSprite
.L_48e98:
	.4byte	gSpriteCollisionTileType
.L_48e9c:
	.4byte	gBg1YPosition
.L_48ea0:
	ldrh	r2, [r4, #8]
	lsr	r0, r2, #2
	ldr	r1, .L_48ebc
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #64	@ 0x40
	bls	.L_48ec0
	sub	r0, r2, #4
	strh	r0, [r4, #8]
	b	.L_48ec4
	.align	2, 0
.L_48ebc:
	.4byte	gBg1YPosition
.L_48ec0:
	mov	r0, #21
	strb	r0, [r4, #28]
.L_48ec4:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8048ECC
func_8048ECC:
	push	{lr}
	ldr	r2, .L_48ef4
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r1, #0
	mov	r0, #45	@ 0x2d
	strb	r0, [r3, #0]
	mov	r0, #34	@ 0x22
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #178	@ 0xb2
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_48ef4:
	.4byte	gCurrentSprite


thumb_func_start func_8048EF8
func_8048EF8:
	push	{r4, lr}
	ldr	r0, .L_48f48
	bl	func_8047F1C
	ldr	r4, .L_48f4c
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_48f58
	sub	r0, #1
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	sub	r1, #64	@ 0x40
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_48f50
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_48f2c
	ldrh	r0, [r4, #10]
	sub	r0, #4
	strh	r0, [r4, #10]
.L_48f2c:
	ldrh	r2, [r4, #8]
	lsr	r0, r2, #2
	ldr	r1, .L_48f54
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #64	@ 0x40
	bls	.L_48f7c
	sub	r0, r2, #1
	strh	r0, [r4, #8]
	b	.L_48f7c
	.align	2, 0
.L_48f48:
	.4byte	sUnk_83CF930
.L_48f4c:
	.4byte	gCurrentSprite
.L_48f50:
	.4byte	gSpriteCollisionTileType
.L_48f54:
	.4byte	gBg1YPosition
.L_48f58:
	ldrh	r2, [r4, #8]
	lsr	r0, r2, #2
	ldr	r1, .L_48f74
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #64	@ 0x40
	bls	.L_48f78
	sub	r0, r2, #4
	strh	r0, [r4, #8]
	b	.L_48f7c
	.align	2, 0
.L_48f74:
	.4byte	gBg1YPosition
.L_48f78:
	mov	r0, #21
	strb	r0, [r4, #28]
.L_48f7c:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8048F84
func_8048F84:
	ldr	r1, .L_48f98
	mov	r0, #22
	strb	r0, [r1, #28]
	ldr	r0, .L_48f9c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_48fa4
	ldr	r0, .L_48fa0
	b	.L_48fa6
	.align	2, 0
.L_48f98:
	.4byte	gCurrentSprite
.L_48f9c:
	.4byte	gUnk_3000A60
.L_48fa0:
	.4byte	sUnk_83CE4A8
.L_48fa4:
	ldr	r0, .L_48fb8
.L_48fa6:
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r1, #41	@ 0x29
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_48fb8:
	.4byte	sUnk_83CD374


thumb_func_start func_8048FBC
func_8048FBC:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r0, .L_48ffc
	bl	func_8047F1C
	ldr	r4, .L_49000
	add	r2, r4, #0
	add	r2, #41	@ 0x29
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_4901c
	lsr	r0, r0, #24
	cmp	r0, #40	@ 0x28
	bne	.L_49020
	ldrh	r1, [r4, #0]
	mov	r6, #64	@ 0x40
	add	r0, r6, #0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L_49004
	bl	func_8047EE8
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	str	r6, [sp, #4]
	b	.L_49010
.L_48ffc:
	.4byte	sUnk_83CF930
.L_49000:
	.4byte	gCurrentSprite
.L_49004:
	bl	func_8047EE8
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	str	r5, [sp, #4]
.L_49010:
	mov	r0, #227	@ 0xe3
	mov	r1, #0
	mov	r2, #0
	bl	SpawnPrimarySpriteWithStatus
	b	.L_49020
.L_4901c:
	mov	r0, #15
	strb	r0, [r4, #28]
.L_49020:
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8049028
func_8049028:
	push	{lr}
	ldr	r0, .L_4904c
	mov	r2, #0
	mov	r1, #121	@ 0x79
	strb	r1, [r0, #28]
	ldr	r1, .L_49050
	str	r1, [r0, #4]
	strb	r2, [r0, #22]
	strh	r2, [r0, #20]
	add	r0, #41	@ 0x29
	mov	r1, #120	@ 0x78
	strb	r1, [r0, #0]
	mov	r0, #173	@ 0xad
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4904c:
	.4byte	gCurrentSprite
.L_49050:
	.4byte	sUnk_83CE4F8


thumb_func_start func_8049054
func_8049054:
	push	{r4, lr}
	sub	sp, #4
	ldr	r1, .L_49078
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	ldrb	r0, [r2, #0]
	add	r4, r1, #0
	cmp	r0, #110	@ 0x6e
	bls	.L_4906e
	b	.L_493b0
.L_4906e:
	lsl	r0, r0, #2
	ldr	r1, .L_4907c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_49078:
	.4byte	gCurrentSprite
.L_4907c:
	.4byte	.L_49080
.L_49080:
	.4byte	.L_4939c
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_49346
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_49360
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_4933c
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_49338
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_4932e
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_49320
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_49312
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_49304
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_492f6
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_492e8
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_492da
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_492ce
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_492c2
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_492b8
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_492aa
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_4929c
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_4928e
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_49280
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_49272
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_49264
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_49256
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_49248
	.4byte	.L_493b0
	.4byte	.L_493b0
	.4byte	.L_4923c
.L_4923c:
	ldrh	r3, [r4, #8]
	sub	r3, #192	@ 0xc0
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_49248:
	ldrh	r3, [r4, #8]
	sub	r3, #192	@ 0xc0
	ldrh	r0, [r4, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_49256:
	ldrh	r3, [r4, #8]
	sub	r3, #192	@ 0xc0
	ldrh	r0, [r4, #10]
	add	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_49264:
	ldrh	r3, [r4, #8]
	sub	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	sub	r0, #32
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_49272:
	ldrh	r3, [r4, #8]
	sub	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	sub	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_49280:
	ldrh	r3, [r4, #8]
	sub	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	add	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_4928e:
	ldrh	r3, [r4, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	add	r0, #32
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_4929c:
	ldrh	r3, [r4, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_492aa:
	ldrh	r3, [r4, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	add	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_492b8:
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_492c2:
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_492ce:
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, #96	@ 0x60
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_492da:
	ldrh	r3, [r4, #8]
	add	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	sub	r0, #32
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_492e8:
	ldrh	r3, [r4, #8]
	add	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	sub	r0, #96	@ 0x60
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_492f6:
	ldrh	r3, [r4, #8]
	add	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	add	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_49304:
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	sub	r0, #32
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_49312:
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	sub	r0, #96	@ 0x60
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_49320:
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	add	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #11
	b	.L_49392
.L_4932e:
	ldrh	r3, [r4, #8]
	add	r3, #96	@ 0x60
	ldrh	r0, [r4, #10]
	add	r0, #96	@ 0x60
	b	.L_4938e
.L_49338:
	ldrh	r3, [r4, #8]
	b	.L_4938c
.L_4933c:
	ldrh	r3, [r4, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	sub	r0, #64	@ 0x40
	b	.L_4938e
.L_49346:
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	add	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r4, #8]
	add	r3, #32
	b	.L_4938c
.L_49360:
	ldrh	r3, [r4, #8]
	add	r3, #32
	ldrh	r0, [r4, #10]
	sub	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r4, #8]
	add	r3, #32
	ldrh	r0, [r4, #10]
	add	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
.L_4938c:
	ldrh	r0, [r4, #10]
.L_4938e:
	str	r0, [sp, #0]
	mov	r0, #10
.L_49392:
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	b	.L_493b0
.L_4939c:
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #207	@ 0xcf
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	mov	r0, #0
	strh	r0, [r4, #0]
.L_493b0:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_80493B8
func_80493B8:
	push	{lr}
	ldr	r0, .L_493d0
	ldrb	r0, [r0, #0]
	sub	r0, #2
	cmp	r0, #6
	bhi	.L_49410
	lsl	r0, r0, #2
	ldr	r1, .L_493d4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_493d0:
	.4byte	gCurrentShopItem
.L_493d4:
	.4byte	.L_493d8
.L_493d8:
	.4byte	.L_493f4
	.4byte	.L_493f8
	.4byte	.L_493fc
	.4byte	.L_49400
	.4byte	.L_49404
	.4byte	.L_49408
	.4byte	.L_4940c
.L_493f4:
	mov	r0, #11
	b	.L_49412
.L_493f8:
	mov	r0, #9
	b	.L_49412
.L_493fc:
	mov	r0, #8
	b	.L_49412
.L_49400:
	mov	r0, #2
	b	.L_49412
.L_49404:
	mov	r0, #5
	b	.L_49412
.L_49408:
	mov	r0, #3
	b	.L_49412
.L_4940c:
	mov	r0, #4
	b	.L_49412
.L_49410:
	mov	r0, #10
.L_49412:
	ldr	r2, .L_4944c
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r1, #0
	strb	r0, [r3, #0]
	ldr	r0, .L_49450
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	ldr	r1, .L_49454
	mov	r0, #32
	strb	r0, [r1, #0]
	mov	r0, #123	@ 0x7b
	strb	r0, [r2, #28]
	ldrb	r0, [r2, #29]
	cmp	r0, #0
	beq	.L_49442
	sub	r0, #1
	strb	r0, [r2, #29]
	bl	UpdateBossHealthGauge
	mov	r0, #122	@ 0x7a
	bl	m4aSongNumStart
.L_49442:
	mov	r0, #14
	bl	VoiceSetPlay
	pop	{r0}
	bx	r0
.L_4944c:
	.4byte	gCurrentSprite
.L_49450:
	.4byte	sUnk_83CE490
.L_49454:
	.4byte	gBossHurtTimer


thumb_func_start func_8049458
func_8049458:
	push	{r4, r5, lr}
	ldr	r5, .L_49488
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_4949c
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_49542
	mov	r0, #8
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_49490
	ldr	r1, .L_4948c
	mov	r0, #4
	strb	r0, [r1, #27]
	b	.L_49542
	.align	2, 0
.L_49488:
	.4byte	gBossHurtTimer
.L_4948c:
	.4byte	gCurrentSprite
.L_49490:
	ldr	r0, .L_49498
	strb	r1, [r0, #27]
	b	.L_49542
	.align	2, 0
.L_49498:
	.4byte	gCurrentSprite
.L_4949c:
	ldr	r1, .L_494c4
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r4, [r1, #29]
	add	r2, r4, #0
	add	r3, r1, #0
	ldrb	r0, [r0, #0]
	cmp	r2, r0
	bne	.L_4952c
	ldr	r0, .L_494c8
	ldrb	r0, [r0, #0]
	sub	r0, #3
	cmp	r0, #5
	bhi	.L_494f0
	lsl	r0, r0, #2
	ldr	r1, .L_494cc
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_494c4:
	.4byte	gCurrentSprite
.L_494c8:
	.4byte	gCurrentShopItem
.L_494cc:
	.4byte	.L_494d0
.L_494d0:
	.4byte	.L_494e8
	.4byte	.L_494e8
	.4byte	.L_494ec
	.4byte	.L_494e8
	.4byte	.L_494ec
	.4byte	.L_494e8
.L_494e8:
	mov	r0, #240	@ 0xf0
	b	.L_494f2
.L_494ec:
	mov	r0, #120	@ 0x78
	b	.L_494f2
.L_494f0:
	mov	r0, #180	@ 0xb4
.L_494f2:
	add	r1, r3, #0
	add	r1, #41	@ 0x29
	mov	r2, #0
	strb	r0, [r1, #0]
	ldr	r1, .L_49520
	ldrb	r0, [r3, #29]
	strb	r0, [r1, #0]
	mov	r0, #2
	strb	r0, [r3, #28]
	ldr	r0, .L_49524
	str	r0, [r3, #4]
	strb	r2, [r3, #22]
	mov	r1, #0
	strh	r2, [r3, #20]
	add	r0, r3, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_49528
	bl	func_8047F1C
	b	.L_49542
.L_49520:
	.4byte	gBossHurtState
.L_49524:
	.4byte	sUnk_83CE468
.L_49528:
	.4byte	sUnk_83CF8FC
.L_4952c:
	mov	r0, #32
	strb	r0, [r5, #0]
	cmp	r2, #0
	beq	.L_49542
	sub	r0, r4, #1
	strb	r0, [r1, #29]
	bl	UpdateBossHealthGauge
	mov	r0, #122	@ 0x7a
	bl	m4aSongNumStart
.L_49542:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8049548
func_8049548:
	ldr	r0, .L_495a0
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #83	@ 0x53
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r1, #16
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r1, ip
	add	r1, #34	@ 0x22
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #20
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r1, ip
	add	r1, #37	@ 0x25
	mov	r0, #56	@ 0x38
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #0]
	ldr	r0, .L_495a4
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #1
	strb	r0, [r1, #28]
	bx	lr
.L_495a0:
	.4byte	gCurrentSprite
.L_495a4:
	.4byte	sUnk_83CF594


thumb_func_start func_80495A8
func_80495A8:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r4, .L_495ec
	mov	r0, #1
	strb	r0, [r4, #31]
	ldr	r0, .L_495f0
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_495e4
	ldr	r0, .L_495f4
	ldrb	r5, [r0, #0]
	cmp	r5, #1
	bne	.L_495e4
	ldrh	r1, [r4, #0]
	ldr	r0, .L_495f8
	and	r0, r1
	strh	r0, [r4, #0]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	mov	r0, #16
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	strb	r5, [r0, #0]
.L_495e4:
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_495ec:
	.4byte	gCurrentSprite
.L_495f0:
	.4byte	gWarioPauseTimer
.L_495f4:
	.4byte	gTimerState
.L_495f8:
	.4byte	0xFFFB


thumb_func_start func_80495FC
func_80495FC:
	ldr	r1, .L_4961c
	ldr	r0, .L_49620
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r2, #0]
	mov	r0, #83	@ 0x53
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_4961c:
	.4byte	gCurrentSprite
.L_49620:
	.4byte	sUnk_83CF5EC


thumb_func_start func_8049624
func_8049624:
	ldr	r1, .L_49644
	ldr	r0, .L_49648
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	mov	r0, #1
	strb	r0, [r2, #0]
	mov	r0, #83	@ 0x53
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_49644:
	.4byte	gCurrentSprite
.L_49648:
	.4byte	sUnk_83CF594


thumb_func_start func_804964C
func_804964C:
	push	{r4, lr}
	ldr	r4, .L_4967c
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_49684
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	add	r1, #80	@ 0x50
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_49680
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_4969a
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrh	r0, [r4, #10]
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_496ae
.L_4967c:
	.4byte	gCurrentSprite
.L_49680:
	.4byte	gSpriteCollisionTileType
.L_49684:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	sub	r1, #80	@ 0x50
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_496a0
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_496a4
.L_4969a:
	strb	r0, [r4, #28]
	b	.L_496b0
	.align	2, 0
.L_496a0:
	.4byte	gSpriteCollisionTileType
.L_496a4:
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #10]
	sub	r0, r0, r1
.L_496ae:
	strh	r0, [r4, #10]
.L_496b0:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80496B8
func_80496B8:
	ldr	r1, .L_496d8
	ldr	r0, .L_496dc
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #18
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #9
	strb	r0, [r2, #0]
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_496d8:
	.4byte	gCurrentSprite
.L_496dc:
	.4byte	sUnk_83CF5BC


thumb_func_start func_80496E0
func_80496E0:
	ldr	r2, .L_49708
	mov	r0, #1
	strb	r0, [r2, #31]
	mov	r0, #39	@ 0x27
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r0, [r0, #0]
	sub	r0, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #0
	bne	.L_49734
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	beq	.L_4970c
	cmp	r0, #20
	beq	.L_49730
	b	.L_49734
.L_49708:
	.4byte	gCurrentSprite
.L_4970c:
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_4972c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #7
	mov	r1, ip
	strb	r0, [r1, #0]
	b	.L_49734
	.align	2, 0
.L_4972c:
	.4byte	sUnk_83CF5D4
.L_49730:
	mov	r0, #15
	strb	r0, [r2, #28]
.L_49734:
	bx	lr
	.align	2, 0


thumb_func_start func_8049738
func_8049738:
	ldr	r0, .L_49750
	ldr	r1, .L_49754
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #40	@ 0x28
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #30
	strb	r1, [r0, #0]
	bx	lr
.L_49750:
	.4byte	gCurrentSprite
.L_49754:
	.4byte	sUnk_83CF594


thumb_func_start func_8049758
func_8049758:
	ldr	r2, .L_49770
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4976e
	mov	r0, #17
	strb	r0, [r2, #28]
.L_4976e:
	bx	lr
.L_49770:
	.4byte	gCurrentSprite


thumb_func_start func_8049774
func_8049774:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #4
	ldr	r4, .L_49840
	ldrh	r1, [r4, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_49844
	and	r0, r1
	strh	r0, [r4, #0]
	mov	r7, #0
	mov	r0, #62	@ 0x3e
	strb	r0, [r4, #30]
	add	r1, r4, #0
	add	r1, #32
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #16
	strb	r1, [r0, #0]
	mov	r5, #35	@ 0x23
	mov	r0, #4
	strb	r0, [r5, r4]
	add	r0, r4, #0
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	mov	r0, #37	@ 0x25
	add	r0, r0, r4
	mov	ip, r0
	mov	r0, #32
	mov	r5, ip
	strb	r0, [r5, #0]
	mov	r0, #38	@ 0x26
	add	r0, r0, r4
	mov	ip, r0
	mov	r0, #48	@ 0x30
	mov	r5, ip
	strb	r0, [r5, #0]
	ldr	r0, .L_49848
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	strb	r1, [r4, #28]
	mov	r6, #1
	mov	r5, #1
	strb	r5, [r4, #26]
	add	r0, r4, #0
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #42	@ 0x2a
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #226	@ 0xe2
	mov	r2, #0
	bl	SpriteSpawnAsChild
	mov	r0, #81	@ 0x51
	bl	SpriteUtilFindSpriteSlot
	ldr	r2, .L_4984c
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r2, r0, r2
	ldrb	r0, [r2, #29]
	cmp	r0, #5
	bhi	.L_4981c
	ldrb	r0, [r4, #29]
	mov	r1, #16
	orr	r0, r1
	strb	r0, [r4, #29]
.L_4981c:
	ldrb	r0, [r2, #29]
	cmp	r0, #9
	bhi	.L_49836
	cmp	r0, #7
	bls	.L_49830
	ldrb	r1, [r4, #24]
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_49836
.L_49830:
	ldrb	r0, [r4, #29]
	orr	r0, r6
	strb	r0, [r4, #29]
.L_49836:
	add	sp, #4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_49840:
	.4byte	gCurrentSprite
.L_49844:
	.4byte	0xFFFB
.L_49848:
	.4byte	sUnk_83CF370
.L_4984c:
	.4byte	gSpriteData


thumb_func_start func_8049850
func_8049850:
	push	{r4, r5, r6, lr}
	ldr	r1, .L_4987c
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_49926
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	beq	.L_49918
	ldrh	r0, [r1, #20]
	sub	r0, #1
	cmp	r0, #6
	bhi	.L_49910
	lsl	r0, r0, #2
	ldr	r1, .L_49880
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_4987c:
	.4byte	gCurrentSprite
.L_49880:
	.4byte	.L_49884
.L_49884:
	.4byte	.L_498a0
	.4byte	.L_498b0
	.4byte	.L_498c0
	.4byte	.L_498d0
	.4byte	.L_498e0
	.4byte	.L_498f0
	.4byte	.L_49900
.L_498a0:
	ldr	r0, .L_498ac
	add	r0, #35	@ 0x23
	mov	r1, #40	@ 0x28
	strb	r1, [r0, #0]
	b	.L_49926
	.align	2, 0
.L_498ac:
	.4byte	gCurrentSprite
.L_498b0:
	ldr	r0, .L_498bc
	add	r0, #35	@ 0x23
	mov	r1, #72	@ 0x48
	strb	r1, [r0, #0]
	b	.L_49926
	.align	2, 0
.L_498bc:
	.4byte	gCurrentSprite
.L_498c0:
	ldr	r0, .L_498cc
	add	r0, #35	@ 0x23
	mov	r1, #104	@ 0x68
	strb	r1, [r0, #0]
	b	.L_49926
	.align	2, 0
.L_498cc:
	.4byte	gCurrentSprite
.L_498d0:
	ldr	r0, .L_498dc
	add	r0, #35	@ 0x23
	mov	r1, #136	@ 0x88
	strb	r1, [r0, #0]
	b	.L_49926
	.align	2, 0
.L_498dc:
	.4byte	gCurrentSprite
.L_498e0:
	ldr	r0, .L_498ec
	add	r0, #35	@ 0x23
	mov	r1, #168	@ 0xa8
	strb	r1, [r0, #0]
	b	.L_49926
	.align	2, 0
.L_498ec:
	.4byte	gCurrentSprite
.L_498f0:
	ldr	r0, .L_498fc
	add	r0, #35	@ 0x23
	mov	r1, #200	@ 0xc8
	strb	r1, [r0, #0]
	b	.L_49926
	.align	2, 0
.L_498fc:
	.4byte	gCurrentSprite
.L_49900:
	ldr	r0, .L_4990c
	add	r0, #35	@ 0x23
	mov	r1, #232	@ 0xe8
	strb	r1, [r0, #0]
	b	.L_49926
	.align	2, 0
.L_4990c:
	.4byte	gCurrentSprite
.L_49910:
	add	r1, #35	@ 0x23
	mov	r0, #16
	strb	r0, [r1, #0]
	b	.L_49926
.L_49918:
	ldr	r0, .L_49964
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r2, [r1, #20]
	mov	r0, #177	@ 0xb1
	bl	m4aSongNumStart
.L_49926:
	ldr	r2, .L_49968
	ldrh	r1, [r2, #0]
	mov	r0, #2
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #0
	bne	.L_49938
	strh	r0, [r2, #0]
.L_49938:
	ldrh	r3, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r3
	cmp	r0, #0
	beq	.L_499a0
	ldrb	r1, [r2, #29]
	mov	r0, #240	@ 0xf0
	and	r0, r1
	cmp	r0, #0
	beq	.L_49970
	ldrh	r0, [r2, #10]
	add	r0, #6
	strh	r0, [r2, #10]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r3
	cmp	r0, #0
	beq	.L_49988
	ldr	r1, .L_4996c
	ldrh	r0, [r1, #18]
	add	r0, #6
	b	.L_49986
.L_49964:
	.4byte	sUnk_83CF3F0
.L_49968:
	.4byte	gCurrentSprite
.L_4996c:
	.4byte	gWarioData
.L_49970:
	ldrh	r0, [r2, #10]
	add	r0, #4
	strh	r0, [r2, #10]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r3
	cmp	r0, #0
	beq	.L_49988
	ldr	r1, .L_49998
	ldrh	r0, [r1, #18]
	add	r0, #4
.L_49986:
	strh	r0, [r1, #18]
.L_49988:
	ldr	r4, .L_4999c
	ldrh	r0, [r4, #8]
	sub	r0, #128	@ 0x80
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #128	@ 0x80
	b	.L_499ee
.L_49998:
	.4byte	gWarioData
.L_4999c:
	.4byte	gCurrentSprite
.L_499a0:
	ldrb	r1, [r2, #29]
	mov	r0, #240	@ 0xf0
	and	r0, r1
	cmp	r0, #0
	beq	.L_499c8
	ldrh	r0, [r2, #10]
	sub	r0, #6
	strh	r0, [r2, #10]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r3
	cmp	r0, #0
	beq	.L_499e0
	ldr	r1, .L_499c4
	ldrh	r0, [r1, #18]
	sub	r0, #6
	b	.L_499de
	.align	2, 0
.L_499c4:
	.4byte	gWarioData
.L_499c8:
	ldrh	r0, [r2, #10]
	sub	r0, #4
	strh	r0, [r2, #10]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r3
	cmp	r0, #0
	beq	.L_499e0
	ldr	r1, .L_49a34
	ldrh	r0, [r1, #18]
	sub	r0, #4
.L_499de:
	strh	r0, [r1, #18]
.L_499e0:
	ldr	r4, .L_49a38
	ldrh	r0, [r4, #8]
	sub	r0, #128	@ 0x80
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #128	@ 0x80
.L_499ee:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_49a3c
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_49a0a
	mov	r0, #1
	strb	r0, [r4, #31]
	ldrh	r0, [r4, #0]
	mov	r1, #4
	eor	r0, r1
	strh	r0, [r4, #0]
.L_49a0a:
	ldr	r3, .L_49a38
	add	r0, r3, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_49a6e
	ldrb	r1, [r3, #29]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_49a6e
	mov	r0, #240	@ 0xf0
	and	r0, r1
	cmp	r0, #0
	beq	.L_49a44
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_49a40
	b	.L_49a4e
.L_49a34:
	.4byte	gWarioData
.L_49a38:
	.4byte	gCurrentSprite
.L_49a3c:
	.4byte	gSpriteCollisionTileType
.L_49a40:
	.4byte	sUnk_83CFA7C
.L_49a44:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r3
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_49a74
.L_49a4e:
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_49a78
	cmp	r1, r0
	bne	.L_49a62
	ldrh	r4, [r5, #0]
	mov	r2, #0
.L_49a62:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
	strh	r0, [r3, #8]
.L_49a6e:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_49a74:
	.4byte	sUnk_83CFA0A
.L_49a78:
	.4byte	0x7FFF


thumb_func_start func_8049A7C
func_8049A7C:
	ldr	r0, .L_49ad0
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_49ad4
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #30]
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_49ad8
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #1
	strb	r0, [r1, #26]
	bx	lr
	.align	2, 0
.L_49ad0:
	.4byte	gCurrentSprite
.L_49ad4:
	.4byte	0xFFFB
.L_49ad8:
	.4byte	sUnk_83CF400


thumb_func_start func_8049ADC
func_8049ADC:
	push	{lr}
	mov	r0, #225	@ 0xe1
	bl	SpriteUtilFindParentSlotOrU8Max
	add	r2, r0, #0
	cmp	r2, #255	@ 0xff
	beq	.L_49afc
	ldr	r1, .L_49b04
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_49b0c
.L_49afc:
	ldr	r1, .L_49b08
	mov	r0, #0
	strh	r0, [r1, #0]
	b	.L_49b12
.L_49b04:
	.4byte	gSpriteData
.L_49b08:
	.4byte	gCurrentSprite
.L_49b0c:
	ldr	r1, .L_49b18
	ldrh	r0, [r2, #10]
	strh	r0, [r1, #10]
.L_49b12:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_49b18:
	.4byte	gCurrentSprite


thumb_func_start func_8049B1C
func_8049B1C:
	push	{r4, r5, lr}
	sub	sp, #8
	ldr	r4, .L_49ba8
	ldrh	r1, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_49bac
	and	r0, r1
	strh	r0, [r4, #0]
	strb	r2, [r4, #30]
	add	r1, r4, #0
	add	r1, #32
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_49bb0
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	mov	r0, #16
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #0]
	mov	r0, #1
	strb	r0, [r4, #26]
	mov	r0, #228	@ 0xe4
	bl	SpriteUtilCountSpriteType
	cmp	r0, #5
	bgt	.L_49bc6
	mov	r0, #180	@ 0xb4
	bl	m4aSongNumStart
	ldrh	r1, [r4, #0]
	mov	r5, #64	@ 0x40
	add	r0, r5, #0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, #0
	beq	.L_49bb4
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #228	@ 0xe4
	mov	r2, #0
	bl	SpawnPrimarySpriteWithStatus
	b	.L_49bc6
.L_49ba8:
	.4byte	gCurrentSprite
.L_49bac:
	.4byte	0xFFFB
.L_49bb0:
	.4byte	sUnk_83CD39C
.L_49bb4:
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	str	r2, [sp, #4]
	mov	r0, #228	@ 0xe4
	mov	r2, #0
	bl	SpawnPrimarySpriteWithStatus
.L_49bc6:
	add	sp, #8
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8049BD0
func_8049BD0:
	ldr	r2, .L_49be8
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_49be6
	strh	r0, [r2, #0]
.L_49be6:
	bx	lr
.L_49be8:
	.4byte	gCurrentSprite


thumb_func_start func_8049BEC
func_8049BEC:
	push	{r4, lr}
	ldr	r0, .L_49c54
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_49c58
	and	r0, r1
	mov	r4, ip
	strh	r0, [r4, #0]
	mov	r0, #40	@ 0x28
	strb	r0, [r4, #30]
	mov	r0, ip
	add	r0, #32
	mov	r1, #16
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_49c5c
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	strb	r1, [r4, #28]
	mov	r0, #1
	strb	r0, [r4, #26]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	ldr	r0, .L_49c60
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_49c4c
	mov	r0, #2
	strb	r0, [r4, #27]
.L_49c4c:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_49c54:
	.4byte	gCurrentSprite
.L_49c58:
	.4byte	0xFFFB
.L_49c5c:
	.4byte	sUnk_83CF478
.L_49c60:
	.4byte	gUnk_3000A60


thumb_func_start func_8049C64
func_8049C64:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_49c7c
	ldrb	r0, [r0, #0]
	cmp	r0, #11
	bne	.L_49c84
	ldr	r0, .L_49c80
	mov	r1, #108	@ 0x6c
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	b	.L_49d8c
	.align	2, 0
.L_49c7c:
	.4byte	gTimerState
.L_49c80:
	.4byte	gCurrentSprite
.L_49c84:
	ldr	r0, .L_49c98
	ldrb	r2, [r0, #24]
	add	r4, r0, #0
	cmp	r2, #2
	beq	.L_49cc2
	cmp	r2, #2
	bgt	.L_49c9c
	cmp	r2, #1
	beq	.L_49ca6
	b	.L_49d10
.L_49c98:
	.4byte	gCurrentSprite
.L_49c9c:
	cmp	r2, #3
	beq	.L_49cde
	cmp	r2, #4
	beq	.L_49cfa
	b	.L_49d10
.L_49ca6:
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_49cb6
	ldrh	r0, [r4, #10]
	add	r0, #4
	b	.L_49cba
.L_49cb6:
	ldrh	r0, [r4, #10]
	sub	r0, #4
.L_49cba:
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	add	r0, #2
	b	.L_49d2a
.L_49cc2:
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_49cd2
	ldrh	r0, [r4, #10]
	add	r0, #2
	b	.L_49cd6
.L_49cd2:
	ldrh	r0, [r4, #10]
	sub	r0, #2
.L_49cd6:
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	add	r0, #3
	b	.L_49d2a
.L_49cde:
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_49cee
	ldrh	r0, [r4, #10]
	add	r0, #4
	b	.L_49cf2
.L_49cee:
	ldrh	r0, [r4, #10]
	sub	r0, #4
.L_49cf2:
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #1
	b	.L_49d2a
.L_49cfa:
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_49d0a
	ldrh	r0, [r4, #10]
	add	r0, #3
	b	.L_49d24
.L_49d0a:
	ldrh	r0, [r4, #10]
	sub	r0, #3
	b	.L_49d24
.L_49d10:
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_49d20
	ldrh	r0, [r4, #10]
	add	r0, #2
	b	.L_49d24
.L_49d20:
	ldrh	r0, [r4, #10]
	sub	r0, #2
.L_49d24:
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	add	r0, #1
.L_49d2a:
	strh	r0, [r4, #8]
	add	r5, r4, #0
	mov	r0, #42	@ 0x2a
	add	r0, r0, r5
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r6, .L_49d70
	lsl	r0, r2, #1
	add	r0, r0, r6
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_49d74
	cmp	r1, r0
	bne	.L_49d4c
	ldrh	r3, [r6, #0]
	mov	r2, #0
.L_49d4c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r5, #8]
	add	r0, r0, r3
	strh	r0, [r5, #8]
	ldrh	r0, [r5, #8]
	ldrh	r1, [r5, #10]
	bl	func_8023BFC
	ldr	r0, .L_49d78
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_49d7c
	mov	r0, #108	@ 0x6c
	strb	r0, [r5, #28]
	b	.L_49d8c
	.align	2, 0
.L_49d70:
	.4byte	sUnk_83CFACE
.L_49d74:
	.4byte	0x7FFF
.L_49d78:
	.4byte	gUnk_30000A0
.L_49d7c:
	ldrh	r1, [r4, #0]
	mov	r0, #2
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #0
	bne	.L_49d8c
	strh	r0, [r4, #0]
.L_49d8c:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8049D94
func_8049D94:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r5, .L_49e20
	ldrh	r1, [r5, #0]
	mov	r0, #128	@ 0x80
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	ldr	r0, .L_49e24
	str	r0, [r5, #4]
	strb	r2, [r5, #22]
	strh	r3, [r5, #20]
	mov	r0, #109	@ 0x6d
	strb	r0, [r5, #28]
	add	r1, r5, #0
	add	r1, #39	@ 0x27
	mov	r0, #32
	strb	r0, [r1, #0]
	mov	r0, #1
	strb	r0, [r5, #31]
	ldr	r4, .L_49e28
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r8, r1
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r5, #12]
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #14]
	neg	r4, r4
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #16]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r5, #18]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_49e20:
	.4byte	gCurrentSprite
.L_49e24:
	.4byte	sUnk_83CF4B8
.L_49e28:
	.4byte	sSinCosTable


thumb_func_start func_8049E2C
func_8049E2C:
	push	{r4, r5, r6, r7, lr}
	ldr	r7, .L_49e4c
	mov	r0, #1
	strb	r0, [r7, #31]
	add	r1, r7, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_49e50
	strh	r0, [r7, #0]
	b	.L_49ea4
	.align	2, 0
.L_49e4c:
	.4byte	gCurrentSprite
.L_49e50:
	ldrb	r5, [r1, #0]
	lsl	r5, r5, #3
	ldr	r4, .L_49eac
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r6, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r7, #12]
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #14]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #16]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r7, #18]
.L_49ea4:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_49eac:
	.4byte	sSinCosTable


thumb_func_start func_8049EB0
func_8049EB0:
	push	{lr}
	ldr	r0, .L_49ecc
	ldrb	r3, [r0, #0]
	cmp	r3, #0
	beq	.L_49ed4
	ldr	r1, .L_49ed0
	mov	r0, #0
	strh	r0, [r1, #0]
	ldrh	r0, [r1, #8]
	ldrh	r1, [r1, #10]
	mov	r2, #64	@ 0x40
	bl	SpriteSpawnSecondary
	b	.L_49eee
.L_49ecc:
	.4byte	gUnk_3000A60
.L_49ed0:
	.4byte	gCurrentSprite
.L_49ed4:
	ldr	r1, .L_49ef4
	ldr	r0, .L_49ef8
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	mov	r2, #0
	strh	r3, [r1, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	mov	r0, #42	@ 0x2a
	strb	r0, [r3, #0]
	strb	r2, [r1, #27]
.L_49eee:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_49ef4:
	.4byte	gCurrentSprite
.L_49ef8:
	.4byte	sUnk_83CF8BC


thumb_func_start func_8049EFC
func_8049EFC:
	ldr	r2, .L_49f18
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_49f16
	strh	r0, [r2, #0]
.L_49f16:
	bx	lr
.L_49f18:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownFB
SpriteUnknownFB:
	push	{lr}
	ldr	r0, .L_49f2c
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	beq	.L_49f30
	cmp	r0, #16
	beq	.L_49f34
	b	.L_49f38
.L_49f2c:
	.4byte	gCurrentSprite
.L_49f30:
	bl	func_8048024
.L_49f34:
	bl	func_8048088
.L_49f38:
	pop	{r0}
	bx	r0


thumb_func_start SpriteCatbat
SpriteCatbat:
	push	{lr}
	ldr	r0, .L_49f80
	ldrb	r0, [r0, #0]
	ldr	r3, .L_49f84
	cmp	r0, #0
	beq	.L_49f54
	mov	r0, #1
	strb	r0, [r3, #31]
	ldrh	r0, [r3, #0]
	mov	r1, #4
	eor	r0, r1
	strh	r0, [r3, #0]
.L_49f54:
	ldr	r0, .L_49f88
	ldrb	r1, [r0, #0]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_49f96
	cmp	r1, #20
	beq	.L_49f66
	cmp	r1, #1
	bne	.L_49f72
.L_49f66:
	add	r0, r3, #0
	add	r0, #39	@ 0x27
	mov	r1, #0
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
.L_49f72:
	ldr	r0, .L_49f8c
	ldrb	r0, [r0, #0]
	cmp	r0, #8
	bne	.L_49f90
	mov	r0, #19
	b	.L_49f94
	.align	2, 0
.L_49f80:
	.4byte	gCuckooCondorPendulumLength
.L_49f84:
	.4byte	gCurrentSprite
.L_49f88:
	.4byte	gCuckooCondorHasCapturedWario
.L_49f8c:
	.4byte	gWarioData
.L_49f90:
	ldrb	r0, [r2, #0]
	sub	r0, #1
.L_49f94:
	strb	r0, [r2, #0]
.L_49f96:
	ldrb	r0, [r3, #28]
	cmp	r0, #123	@ 0x7b
	bls	.L_49f9e
	b	.L_4a234
.L_49f9e:
	lsl	r0, r0, #2
	ldr	r1, .L_49fa8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_49fa8:
	.4byte	.L_49fac
.L_49fac:
	.4byte	.L_4a19c
	.4byte	.L_4a1a2
	.4byte	.L_4a1a8
	.4byte	.L_4a1ae
	.4byte	.L_4a1b4
	.4byte	.L_4a1ba
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a1c0
	.4byte	.L_4a1c6
	.4byte	.L_4a1cc
	.4byte	.L_4a1d0
	.4byte	.L_4a234
	.4byte	.L_4a1d6
	.4byte	.L_4a1dc
	.4byte	.L_4a1e0
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a1e6
	.4byte	.L_4a1ea
	.4byte	.L_4a1f0
	.4byte	.L_4a1f4
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a1fa
	.4byte	.L_4a1fe
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a204
	.4byte	.L_4a208
	.4byte	.L_4a218
	.4byte	.L_4a21c
	.4byte	.L_4a222
	.4byte	.L_4a226
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a234
	.4byte	.L_4a20e
	.4byte	.L_4a212
	.4byte	.L_4a22c
	.4byte	.L_4a230
.L_4a19c:
	bl	func_8048134
	b	.L_4a234
.L_4a1a2:
	bl	func_804824C
	b	.L_4a234
.L_4a1a8:
	bl	func_80482D0
	b	.L_4a234
.L_4a1ae:
	bl	func_8048348
	b	.L_4a234
.L_4a1b4:
	bl	func_80483BC
	b	.L_4a234
.L_4a1ba:
	bl	func_8048420
	b	.L_4a234
.L_4a1c0:
	bl	func_804849C
	b	.L_4a234
.L_4a1c6:
	bl	func_8048528
	b	.L_4a234
.L_4a1cc:
	bl	func_80487E0
.L_4a1d0:
	bl	func_8048808
	b	.L_4a234
.L_4a1d6:
	bl	func_8048934
	b	.L_4a234
.L_4a1dc:
	bl	func_8048F84
.L_4a1e0:
	bl	func_8048FBC
	b	.L_4a234
.L_4a1e6:
	bl	func_8048E14
.L_4a1ea:
	bl	func_8048E40
	b	.L_4a234
.L_4a1f0:
	bl	func_8048ECC
.L_4a1f4:
	bl	func_8048EF8
	b	.L_4a234
.L_4a1fa:
	bl	func_8048980
.L_4a1fe:
	bl	func_80489FC
	b	.L_4a234
.L_4a204:
	bl	func_8048ACC
.L_4a208:
	bl	func_8048B58
	b	.L_4a234
.L_4a20e:
	bl	func_8049028
.L_4a212:
	bl	func_8049054
	b	.L_4a234
.L_4a218:
	bl	func_8048CBC
.L_4a21c:
	bl	func_8048D0C
	b	.L_4a234
.L_4a222:
	bl	func_8048D38
.L_4a226:
	bl	func_8048D78
	b	.L_4a234
.L_4a22c:
	bl	func_80493B8
.L_4a230:
	bl	func_8049458
.L_4a234:
	ldr	r0, .L_4a240
	bl	func_8047FB4
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4a240:
	.4byte	sUnk_83CF970


thumb_func_start SpriteUnknownE0
SpriteUnknownE0:
	push	{lr}
	ldr	r0, .L_4a254
	ldrb	r0, [r0, #0]
	cmp	r0, #11
	bne	.L_4a258
	bl	SpriteUtilDie
	b	.L_4a350
.L_4a254:
	.4byte	gTimerState
.L_4a258:
	ldr	r0, .L_4a26c
	ldrb	r0, [r0, #28]
	cmp	r0, #41	@ 0x29
	bhi	.L_4a34c
	lsl	r0, r0, #2
	ldr	r1, .L_4a270
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_4a26c:
	.4byte	gCurrentSprite
.L_4a270:
	.4byte	.L_4a274
.L_4a274:
	.4byte	.L_4a31c
	.4byte	.L_4a322
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a328
	.4byte	.L_4a32c
	.4byte	.L_4a332
	.4byte	.L_4a336
	.4byte	.L_4a34c
	.4byte	.L_4a336
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a34c
	.4byte	.L_4a33c
	.4byte	.L_4a34c
	.4byte	.L_4a33c
	.4byte	.L_4a34c
	.4byte	.L_4a342
	.4byte	.L_4a346
	.4byte	.L_4a342
.L_4a31c:
	bl	func_8049548
	b	.L_4a350
.L_4a322:
	bl	func_80495A8
	b	.L_4a350
.L_4a328:
	bl	func_8049624
.L_4a32c:
	bl	func_804964C
	b	.L_4a350
.L_4a332:
	bl	func_80496B8
.L_4a336:
	bl	func_80496E0
	b	.L_4a350
.L_4a33c:
	bl	func_80495FC
	b	.L_4a350
.L_4a342:
	bl	func_8049738
.L_4a346:
	bl	func_8049758
	b	.L_4a350
.L_4a34c:
	bl	SpriteUtilDie
.L_4a350:
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknownE1
SpriteUnknownE1:
	push	{lr}
	ldr	r0, .L_4a370
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_4a362
	bl	func_8049774
.L_4a362:
	bl	func_8049850
	bl	func_8026838
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4a370:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownE2
SpriteUnknownE2:
	push	{lr}
	ldr	r0, .L_4a390
	mov	r1, #1
	strb	r1, [r0, #31]
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_4a386
	bl	func_8049A7C
.L_4a386:
	bl	func_8049ADC
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4a390:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownE3
SpriteUnknownE3:
	push	{lr}
	ldr	r0, .L_4a3b0
	mov	r1, #1
	strb	r1, [r0, #31]
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_4a3a6
	bl	func_8049B1C
.L_4a3a6:
	bl	func_8049BD0
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4a3b0:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownE4
SpriteUnknownE4:
	push	{lr}
	ldr	r0, .L_4a3cc
	ldrb	r0, [r0, #28]
	cmp	r0, #49	@ 0x31
	beq	.L_4a3e4
	cmp	r0, #49	@ 0x31
	bgt	.L_4a3d0
	cmp	r0, #0
	beq	.L_4a3da
	cmp	r0, #16
	beq	.L_4a3de
	b	.L_4a3f4
.L_4a3cc:
	.4byte	gCurrentSprite
.L_4a3d0:
	cmp	r0, #50	@ 0x32
	beq	.L_4a3e8
	cmp	r0, #109	@ 0x6d
	beq	.L_4a3ee
	b	.L_4a3f4
.L_4a3da:
	bl	func_8049BEC
.L_4a3de:
	bl	func_8049C64
	b	.L_4a3f8
.L_4a3e4:
	bl	func_8049EB0
.L_4a3e8:
	bl	func_8049EFC
	b	.L_4a3f8
.L_4a3ee:
	bl	func_8049E2C
	b	.L_4a3f8
.L_4a3f4:
	bl	func_8049D94
.L_4a3f8:
	pop	{r0}
	bx	r0
