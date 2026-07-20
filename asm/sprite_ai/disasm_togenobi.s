.include "macros.s.inc"


thumb_func_start func_805A178
func_805A178:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r6, .L_5a280
	ldrh	r1, [r6, #0]
	ldr	r2, .L_5a284
	add	r0, r2, #0
	mov	r5, #0
	mov	r4, #0
	orr	r0, r1
	strh	r0, [r6, #0]
	mov	r0, #82	@ 0x52
	strb	r0, [r6, #30]
	add	r0, r6, #0
	add	r0, #32
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r3, #32
	strb	r3, [r0, #0]
	add	r0, #1
	mov	r1, #28
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r3, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_5a288
	str	r0, [r6, #4]
	strb	r5, [r6, #22]
	strh	r4, [r6, #20]
	strb	r2, [r6, #28]
	add	r0, r6, #0
	add	r0, #39	@ 0x27
	strb	r5, [r0, #0]
	ldrb	r1, [r6, #24]
	ldrb	r2, [r6, #25]
	ldrh	r3, [r6, #8]
	ldrh	r0, [r6, #10]
	add	r0, #192	@ 0xc0
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #212	@ 0xd4
	bl	SpawnPrimarySpriteWithStatus
	ldrb	r1, [r6, #24]
	ldrb	r2, [r6, #25]
	ldrh	r3, [r6, #8]
	ldrh	r0, [r6, #10]
	add	r0, #192	@ 0xc0
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #213	@ 0xd5
	bl	SpawnPrimarySpriteWithStatus
	ldrb	r1, [r6, #24]
	ldrb	r2, [r6, #25]
	ldrh	r3, [r6, #8]
	sub	r3, #192	@ 0xc0
	ldrh	r0, [r6, #10]
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #212	@ 0xd4
	bl	SpawnPrimarySpriteWithStatus
	ldrb	r1, [r6, #24]
	ldrb	r2, [r6, #25]
	ldrh	r3, [r6, #8]
	sub	r3, #192	@ 0xc0
	ldrh	r0, [r6, #10]
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #213	@ 0xd5
	bl	SpawnPrimarySpriteWithStatus
	ldrb	r1, [r6, #24]
	ldrb	r2, [r6, #25]
	ldrh	r3, [r6, #8]
	ldrh	r0, [r6, #10]
	sub	r0, #192	@ 0xc0
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #212	@ 0xd4
	bl	SpawnPrimarySpriteWithStatus
	ldrb	r1, [r6, #24]
	ldrb	r2, [r6, #25]
	ldrh	r3, [r6, #8]
	ldrh	r0, [r6, #10]
	sub	r0, #192	@ 0xc0
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #213	@ 0xd5
	bl	SpawnPrimarySpriteWithStatus
	ldrb	r1, [r6, #24]
	ldrb	r2, [r6, #25]
	ldrh	r3, [r6, #8]
	add	r3, #192	@ 0xc0
	ldrh	r0, [r6, #10]
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #212	@ 0xd4
	bl	SpawnPrimarySpriteWithStatus
	ldrb	r1, [r6, #24]
	ldrb	r2, [r6, #25]
	ldrh	r3, [r6, #8]
	add	r3, #192	@ 0xc0
	ldrh	r0, [r6, #10]
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #213	@ 0xd5
	bl	SpawnPrimarySpriteWithStatus
	ldrb	r1, [r6, #24]
	ldrb	r2, [r6, #25]
	ldrh	r3, [r6, #8]
	ldrh	r0, [r6, #10]
	str	r0, [sp, #0]
	str	r4, [sp, #4]
	mov	r0, #214	@ 0xd6
	bl	SpawnPrimarySpriteWithStatus
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5a280:
	.4byte	gCurrentSprite
.L_5a284:
	.4byte	0x8480
.L_5a288:
	.4byte	sUnk_83DE320


thumb_func_start func_805A28C
func_805A28C:
	push	{r4, r5, lr}
	ldr	r4, .L_5a304
	ldrh	r1, [r4, #0]
	ldr	r2, .L_5a308
	add	r0, r2, #0
	mov	r5, #0
	mov	r2, #0
	orr	r0, r1
	ldr	r1, .L_5a30c
	and	r0, r1
	strh	r0, [r4, #0]
	strb	r5, [r4, #30]
	add	r1, r4, #0
	add	r1, #32
	mov	r0, #32
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
	strb	r5, [r4, #22]
	strh	r2, [r4, #20]
	mov	r0, #16
	strb	r0, [r4, #28]
	mov	r0, #116	@ 0x74
	bl	SpriteUtilFindParentSlotWork3
	ldr	r2, .L_5a310
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r2, [r0, #8]
	ldrh	r3, [r0, #10]
	ldrh	r1, [r4, #8]
	cmp	r1, r2
	bne	.L_5a326
	ldr	r0, .L_5a314
	str	r0, [r4, #4]
	ldrh	r0, [r4, #10]
	cmp	r0, r3
	bls	.L_5a318
	add	r0, r4, #0
	add	r0, #40	@ 0x28
	strb	r5, [r0, #0]
	sub	r0, #1
	strb	r5, [r0, #0]
	b	.L_5a34e
.L_5a304:
	.4byte	gCurrentSprite
.L_5a308:
	.4byte	0x8488
.L_5a30c:
	.4byte	0xFFFB
.L_5a310:
	.4byte	gSpriteData
.L_5a314:
	.4byte	sUnk_83DE2A8
.L_5a318:
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	mov	r0, #2
	strb	r0, [r1, #0]
	sub	r1, #1
	mov	r0, #128	@ 0x80
	b	.L_5a34c
.L_5a326:
	ldr	r0, .L_5a33c
	str	r0, [r4, #4]
	cmp	r1, r2
	bls	.L_5a340
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	mov	r0, #3
	strb	r0, [r1, #0]
	sub	r1, #1
	mov	r0, #64	@ 0x40
	b	.L_5a34c
.L_5a33c:
	.4byte	sUnk_83DE240
.L_5a340:
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	mov	r0, #1
	strb	r0, [r1, #0]
	sub	r1, #1
	mov	r0, #192	@ 0xc0
.L_5a34c:
	strb	r0, [r1, #0]
.L_5a34e:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_805A354
func_805A354:
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L_5a3b4
	ldr	r2, .L_5a3b8
	add	r4, r3, #0
	add	r4, #42	@ 0x2a
	ldrb	r0, [r4, #0]
	mov	r5, #44	@ 0x2c
	add	r1, r0, #0
	mul	r1, r5
	add	r1, r1, r2
	add	r1, #39	@ 0x27
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	mov	r1, #39	@ 0x27
	add	r1, r1, r3
	mov	ip, r1
	strb	r0, [r1, #0]
	mov	r6, #192	@ 0xc0
	ldr	r1, .L_5a3bc
	mov	r7, ip
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	mov	r7, #0
	ldrsh	r0, [r0, r7]
	mov	ip, r3
	add	r7, r2, #0
	add	r2, r1, #0
	cmp	r0, #0
	bge	.L_5a3c0
	neg	r0, r0
	mul	r0, r6
	cmp	r0, #0
	bge	.L_5a3a2
	add	r0, #255	@ 0xff
.L_5a3a2:
	lsl	r0, r0, #8
	lsr	r1, r0, #16
	ldrb	r0, [r4, #0]
	mul	r0, r5
	add	r0, r0, r7
	ldrh	r0, [r0, #8]
	sub	r0, r0, r1
	b	.L_5a3d6
	.align	2, 0
.L_5a3b4:
	.4byte	gCurrentSprite
.L_5a3b8:
	.4byte	gSpriteData
.L_5a3bc:
	.4byte	sSinCosTable
.L_5a3c0:
	mul	r0, r6
	cmp	r0, #0
	bge	.L_5a3c8
	add	r0, #255	@ 0xff
.L_5a3c8:
	lsl	r0, r0, #8
	ldrb	r1, [r4, #0]
	mul	r1, r5
	add	r1, r1, r7
	lsr	r0, r0, #16
	ldrh	r1, [r1, #8]
	add	r0, r0, r1
.L_5a3d6:
	mov	r1, ip
	strh	r0, [r1, #8]
	mov	r3, ip
	add	r0, r3, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r2
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	bge	.L_5a412
	neg	r0, r0
	mul	r0, r6
	cmp	r0, #0
	bge	.L_5a3fa
	add	r0, #255	@ 0xff
.L_5a3fa:
	lsl	r0, r0, #8
	lsr	r2, r0, #16
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r7
	ldrh	r0, [r0, #10]
	sub	r0, r0, r2
	strh	r0, [r3, #10]
	b	.L_5a432
.L_5a412:
	mul	r0, r6
	cmp	r0, #0
	bge	.L_5a41a
	add	r0, #255	@ 0xff
.L_5a41a:
	lsl	r1, r0, #8
	mov	r0, ip
	add	r0, #42	@ 0x2a
	ldrb	r2, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r7
	lsr	r1, r1, #16
	ldrh	r0, [r0, #10]
	add	r1, r1, r0
	mov	r7, ip
	strh	r1, [r7, #10]
.L_5a432:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_805A438
func_805A438:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	ldr	r0, .L_5a494
	ldrb	r6, [r0, #24]
	ldrh	r5, [r0, #8]
	ldrh	r4, [r0, #10]
	mov	r3, #0
	mov	r8, r0
	ldr	r0, .L_5a498
	mov	ip, r0
.L_5a452:
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	mov	r1, ip
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_5a47c
	ldrh	r0, [r2, #8]
	cmp	r0, r5
	bne	.L_5a47c
	ldrh	r0, [r2, #10]
	cmp	r0, r4
	bne	.L_5a47c
	ldrb	r0, [r2, #23]
	cmp	r0, r7
	bne	.L_5a47c
	ldrb	r0, [r2, #24]
	cmp	r0, r6
	beq	.L_5a482
.L_5a47c:
	add	r3, #1
	cmp	r3, #23
	ble	.L_5a452
.L_5a482:
	mov	r0, r8
	add	r0, #41	@ 0x29
	strb	r3, [r0, #0]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5a494:
	.4byte	gCurrentSprite
.L_5a498:
	.4byte	gSpriteData


thumb_func_start func_805A49C
func_805A49C:
	push	{r4, r5, r6, lr}
	ldr	r5, .L_5a520
	ldrh	r1, [r5, #0]
	ldr	r2, .L_5a524
	add	r0, r2, #0
	mov	r6, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_5a528
	and	r0, r1
	strh	r0, [r5, #0]
	mov	r0, #81	@ 0x51
	strb	r0, [r5, #30]
	add	r0, r5, #0
	add	r0, #32
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r3, #32
	strb	r3, [r0, #0]
	add	r0, #1
	mov	r1, #28
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r3, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_5a52c
	str	r0, [r5, #4]
	strb	r6, [r5, #22]
	strh	r4, [r5, #20]
	strb	r2, [r5, #28]
	add	r4, r5, #0
	add	r4, #39	@ 0x27
	strb	r6, [r4, #0]
	mov	r0, #212	@ 0xd4
	bl	func_805A438
	mov	r0, #116	@ 0x74
	bl	SpriteUtilFindParentSlotWork3
	ldr	r2, .L_5a530
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r1, [r0, #8]
	ldrh	r2, [r0, #10]
	ldrh	r0, [r5, #8]
	cmp	r0, r1
	bne	.L_5a540
	ldrh	r0, [r5, #10]
	cmp	r0, r2
	bls	.L_5a534
	add	r0, r5, #0
	add	r0, #40	@ 0x28
	strb	r6, [r0, #0]
	strb	r6, [r4, #0]
	b	.L_5a55c
	.align	2, 0
.L_5a520:
	.4byte	gCurrentSprite
.L_5a524:
	.4byte	0x8480
.L_5a528:
	.4byte	0xFFFB
.L_5a52c:
	.4byte	sUnk_83DE310
.L_5a530:
	.4byte	gSpriteData
.L_5a534:
	add	r0, r5, #0
	add	r0, #40	@ 0x28
	mov	r1, #2
	strb	r1, [r0, #0]
	mov	r0, #128	@ 0x80
	b	.L_5a55a
.L_5a540:
	cmp	r0, r1
	bls	.L_5a550
	add	r0, r5, #0
	add	r0, #40	@ 0x28
	mov	r1, #3
	strb	r1, [r0, #0]
	mov	r0, #192	@ 0xc0
	b	.L_5a55a
.L_5a550:
	add	r0, r5, #0
	add	r0, #40	@ 0x28
	mov	r1, #1
	strb	r1, [r0, #0]
	mov	r0, #64	@ 0x40
.L_5a55a:
	strb	r0, [r4, #0]
.L_5a55c:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805A564
func_805A564:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_5a5ac
	mov	ip, r0
	ldr	r2, .L_5a5b0
	add	r0, #42	@ 0x2a
	ldrb	r0, [r0, #0]
	mov	r3, #44	@ 0x2c
	add	r1, r0, #0
	mul	r1, r3
	add	r1, r1, r2
	add	r1, #39	@ 0x27
	mov	r0, ip
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	mov	r1, ip
	add	r1, #39	@ 0x27
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	mul	r0, r3
	add	r0, r0, r2
	ldrh	r0, [r0, #20]
	sub	r0, #1
	add	r5, r2, #0
	cmp	r0, #9
	bhi	.L_5a5fc
	lsl	r0, r0, #2
	ldr	r1, .L_5a5b4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_5a5ac:
	.4byte	gCurrentSprite
.L_5a5b0:
	.4byte	gSpriteData
.L_5a5b4:
	.4byte	.L_5a5b8
.L_5a5b8:
	.4byte	.L_5a5e0
	.4byte	.L_5a5e4
	.4byte	.L_5a5ea
	.4byte	.L_5a5f0
	.4byte	.L_5a5f6
	.4byte	.L_5a5f6
	.4byte	.L_5a5f0
	.4byte	.L_5a5ea
	.4byte	.L_5a5e4
	.4byte	.L_5a5e0
.L_5a5e0:
	mov	r2, #224	@ 0xe0
	b	.L_5a5fe
.L_5a5e4:
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	b	.L_5a5fe
.L_5a5ea:
	mov	r2, #144	@ 0x90
	lsl	r2, r2, #1
	b	.L_5a5fe
.L_5a5f0:
	mov	r2, #160	@ 0xa0
	lsl	r2, r2, #1
	b	.L_5a5fe
.L_5a5f6:
	mov	r2, #176	@ 0xb0
	lsl	r2, r2, #1
	b	.L_5a5fe
.L_5a5fc:
	mov	r2, #192	@ 0xc0
.L_5a5fe:
	ldr	r1, .L_5a63c
	mov	r0, ip
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	mov	r3, #0
	ldrsh	r0, [r0, r3]
	add	r6, r1, #0
	cmp	r0, #0
	bge	.L_5a640
	neg	r0, r0
	mul	r0, r2
	lsl	r4, r2, #16
	cmp	r0, #0
	bge	.L_5a620
	add	r0, #255	@ 0xff
.L_5a620:
	lsl	r0, r0, #8
	lsr	r2, r0, #16
	mov	r0, ip
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r5
	ldrh	r0, [r0, #8]
	sub	r0, r0, r2
	mov	r1, ip
	strh	r0, [r1, #8]
	b	.L_5a662
	.align	2, 0
.L_5a63c:
	.4byte	sSinCosTable
.L_5a640:
	mul	r0, r2
	lsl	r4, r2, #16
	cmp	r0, #0
	bge	.L_5a64a
	add	r0, #255	@ 0xff
.L_5a64a:
	lsl	r1, r0, #8
	mov	r0, ip
	add	r0, #42	@ 0x2a
	ldrb	r2, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r5
	lsr	r1, r1, #16
	ldrh	r0, [r0, #8]
	add	r1, r1, r0
	mov	r2, ip
	strh	r1, [r2, #8]
.L_5a662:
	mov	r3, ip
	add	r0, r3, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	cmp	r1, #0
	bge	.L_5a69c
	neg	r1, r1
	asr	r0, r4, #16
	mul	r0, r1
	cmp	r0, #0
	bge	.L_5a684
	add	r0, #255	@ 0xff
.L_5a684:
	lsl	r0, r0, #8
	lsr	r2, r0, #16
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r5
	ldrh	r0, [r0, #10]
	sub	r0, r0, r2
	strh	r0, [r3, #10]
	b	.L_5a6be
.L_5a69c:
	asr	r0, r4, #16
	mul	r0, r1
	cmp	r0, #0
	bge	.L_5a6a6
	add	r0, #255	@ 0xff
.L_5a6a6:
	lsl	r1, r0, #8
	mov	r0, ip
	add	r0, #42	@ 0x2a
	ldrb	r2, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r5
	lsr	r1, r1, #16
	ldrh	r0, [r0, #10]
	add	r1, r1, r0
	mov	r3, ip
	strh	r1, [r3, #10]
.L_5a6be:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_805A6C4
func_805A6C4:
	ldr	r0, .L_5a714
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_5a718
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_5a71c
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #30]
	add	r1, #32
	mov	r0, #40	@ 0x28
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
	mov	r0, ip
	strb	r2, [r0, #22]
	strh	r3, [r0, #20]
	ldr	r0, .L_5a720
	mov	r1, ip
	str	r0, [r1, #4]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_5a714:
	.4byte	gCurrentSprite
.L_5a718:
	.4byte	0x8408
.L_5a71c:
	.4byte	0xFFFB
.L_5a720:
	.4byte	sUnk_83DE218


thumb_func_start SpriteTogenobi
SpriteTogenobi:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, .L_5a738
	ldrb	r0, [r3, #28]
	cmp	r0, #0
	bne	.L_5a73c
	bl	func_805A178
	b	.L_5a762
.L_5a738:
	.4byte	gCurrentSprite
.L_5a73c:
	ldr	r2, .L_5a7e8
	ldrb	r1, [r2, #0]
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	bne	.L_5a752
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
.L_5a752:
	ldrb	r1, [r2, #0]
	mov	r0, #63	@ 0x3f
	and	r0, r1
	cmp	r0, #0
	bne	.L_5a762
	mov	r0, #117	@ 0x75
	bl	m4aSongNumStart
.L_5a762:
	ldr	r0, .L_5a7ec
	mov	r8, r0
	ldr	r6, .L_5a7f0
	add	r7, r6, #0
	add	r7, #39	@ 0x27
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #12]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #14]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #16]
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #18]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_5a7e8:
	.4byte	gMainTimer
.L_5a7ec:
	.4byte	sSinCosTable
.L_5a7f0:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownD4
SpriteUnknownD4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_5a80c
	mov	r1, #1
	strb	r1, [r0, #31]
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_5a810
	bl	func_805A28C
	b	.L_5a814
.L_5a80c:
	.4byte	gCurrentSprite
.L_5a810:
	bl	func_805A354
.L_5a814:
	ldr	r0, .L_5a89c
	mov	r8, r0
	ldr	r6, .L_5a8a0
	add	r7, r6, #0
	add	r7, #39	@ 0x27
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #12]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #14]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #16]
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #18]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5a89c:
	.4byte	sSinCosTable
.L_5a8a0:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownD5
SpriteUnknownD5:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_5a8b8
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_5a8bc
	bl	func_805A49C
	b	.L_5a8c0
.L_5a8b8:
	.4byte	gCurrentSprite
.L_5a8bc:
	bl	func_805A564
.L_5a8c0:
	ldr	r0, .L_5a948
	mov	r8, r0
	ldr	r6, .L_5a94c
	add	r7, r6, #0
	add	r7, #39	@ 0x27
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #12]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #14]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #16]
	ldrb	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #18]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5a948:
	.4byte	sSinCosTable
.L_5a94c:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownD6
SpriteUnknownD6:
	push	{lr}
	ldr	r0, .L_5a968
	mov	r1, #1
	strb	r1, [r0, #31]
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_5a962
	bl	func_805A6C4
.L_5a962:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5a968:
	.4byte	gCurrentSprite
