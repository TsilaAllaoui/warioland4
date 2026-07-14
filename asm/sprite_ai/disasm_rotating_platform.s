.include "macros.s.inc"


thumb_func_start func_8028148
func_8028148:
	ldr	r1, .L_28164
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	sub	r0, #1
	add	r2, r1, #0
	cmp	r0, #33	@ 0x21
	bhi	.L_2822a
	lsl	r0, r0, #2
	ldr	r1, .L_28168
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_28164:
	.4byte	gCurrentSprite
.L_28168:
	.4byte	.L_2816c
.L_2816c:
	.4byte	.L_281f4
	.4byte	.L_281fa
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_28200
	.4byte	.L_28218
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2822a
	.4byte	.L_2820c
	.4byte	.L_2821e
.L_281f4:
	ldrh	r0, [r2, #10]
	add	r0, #8
	b	.L_28228
.L_281fa:
	ldrh	r0, [r2, #10]
	sub	r0, #8
	b	.L_28228
.L_28200:
	ldrh	r0, [r2, #8]
	add	r0, #4
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #10]
	add	r0, #4
	b	.L_28228
.L_2820c:
	ldrh	r0, [r2, #8]
	sub	r0, #4
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #10]
	add	r0, #4
	b	.L_28228
.L_28218:
	ldrh	r0, [r2, #8]
	add	r0, #4
	b	.L_28222
.L_2821e:
	ldrh	r0, [r2, #8]
	sub	r0, #4
.L_28222:
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #10]
	sub	r0, #4
.L_28228:
	strh	r0, [r2, #10]
.L_2822a:
	bx	lr


thumb_func_start func_802822C
func_802822C:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_28280
	ldrb	r5, [r0, #24]
	mov	r4, #0
	add	r3, r0, #0
	ldr	r7, .L_28284
	mov	r6, #1
	add	r2, r7, #0
.L_2823c:
	ldrb	r0, [r2, #23]
	cmp	r0, #20
	bne	.L_28252
	ldrb	r0, [r2, #24]
	cmp	r0, r5
	bne	.L_28252
	ldrh	r1, [r2, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_28262
.L_28252:
	add	r2, #44	@ 0x2c
	add	r4, #1
	cmp	r4, #23
	ble	.L_2823c
	mov	r0, #0
	cmp	r0, #0
	bne	.L_28262
	b	.L_283f6
.L_28262:
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r7
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #33	@ 0x21
	bls	.L_28274
	b	.L_283f6
.L_28274:
	lsl	r0, r0, #2
	ldr	r1, .L_28288
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_28280:
	.4byte	gCurrentSprite
.L_28284:
	.4byte	gSpriteData
.L_28288:
	.4byte	.L_2828c
.L_2828c:
	.4byte	.L_28314
	.4byte	.L_28334
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_28354
	.4byte	.L_283ac
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_283f6
	.4byte	.L_28380
	.4byte	.L_283d0
.L_28314:
	ldrh	r0, [r3, #10]
	add	r0, #8
	strh	r0, [r3, #10]
	ldrh	r1, [r3, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_283f6
	ldr	r1, .L_28330
	ldrh	r0, [r1, #18]
	add	r0, #8
	strh	r0, [r1, #18]
	b	.L_283f6
.L_28330:
	.4byte	gWarioData
.L_28334:
	ldrh	r0, [r3, #10]
	sub	r0, #8
	strh	r0, [r3, #10]
	ldrh	r1, [r3, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_283f6
	ldr	r1, .L_28350
	ldrh	r0, [r1, #18]
	sub	r0, #8
	strh	r0, [r1, #18]
	b	.L_283f6
.L_28350:
	.4byte	gWarioData
.L_28354:
	ldrh	r0, [r3, #8]
	add	r0, #4
	strh	r0, [r3, #8]
	ldrh	r0, [r3, #10]
	add	r0, #4
	strh	r0, [r3, #10]
	ldrh	r1, [r3, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_283f6
	ldr	r0, .L_2837c
	ldrh	r1, [r0, #20]
	add	r1, #4
	strh	r1, [r0, #20]
	ldrh	r1, [r0, #18]
	add	r1, #4
	b	.L_283f4
	.align	2, 0
.L_2837c:
	.4byte	gWarioData
.L_28380:
	ldrh	r0, [r3, #8]
	sub	r0, #4
	strh	r0, [r3, #8]
	ldrh	r0, [r3, #10]
	add	r0, #4
	strh	r0, [r3, #10]
	ldrh	r1, [r3, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_283f6
	ldr	r0, .L_283a8
	ldrh	r1, [r0, #20]
	sub	r1, #4
	strh	r1, [r0, #20]
	ldrh	r1, [r0, #18]
	add	r1, #4
	b	.L_283f4
	.align	2, 0
.L_283a8:
	.4byte	gWarioData
.L_283ac:
	ldrh	r0, [r3, #8]
	add	r0, #4
	strh	r0, [r3, #8]
	ldrh	r0, [r3, #10]
	sub	r0, #4
	strh	r0, [r3, #10]
	ldrh	r1, [r3, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_283f6
	ldr	r0, .L_283cc
	ldrh	r1, [r0, #20]
	add	r1, #4
	b	.L_283ee
.L_283cc:
	.4byte	gWarioData
.L_283d0:
	ldrh	r0, [r3, #8]
	sub	r0, #4
	strh	r0, [r3, #8]
	ldrh	r0, [r3, #10]
	sub	r0, #4
	strh	r0, [r3, #10]
	ldrh	r1, [r3, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_283f6
	ldr	r0, .L_283fc
	ldrh	r1, [r0, #20]
	sub	r1, #4
.L_283ee:
	strh	r1, [r0, #20]
	ldrh	r1, [r0, #18]
	sub	r1, #4
.L_283f4:
	strh	r1, [r0, #18]
.L_283f6:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_283fc:
	.4byte	gWarioData


thumb_func_start func_8028400
func_8028400:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_284b4
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r4, #30]
	add	r0, r4, #0
	add	r0, #32
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r3, r4, #0
	add	r3, #35	@ 0x23
	mov	r0, #64	@ 0x40
	strb	r0, [r3, #0]
	add	r0, r4, #0
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r3, #2
	mov	r0, #36	@ 0x24
	strb	r0, [r3, #0]
	add	r0, r4, #0
	add	r0, #38	@ 0x26
	strb	r1, [r0, #0]
	ldr	r0, .L_284b8
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	mov	r1, #0
	strh	r2, [r4, #20]
	mov	r0, #16
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldrh	r0, [r4, #0]
	mov	r2, #145	@ 0x91
	lsl	r2, r2, #3
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	strh	r0, [r4, #8]
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #148	@ 0x94
	bl	SpriteSpawnAsChild
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #150	@ 0x96
	bl	SpriteSpawnAsChild
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #151	@ 0x97
	bl	SpriteSpawnAsChild
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #149	@ 0x95
	bl	SpriteSpawnAsChild
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
.L_284b4:
	.4byte	gCurrentSprite
.L_284b8:
	.4byte	sUnk_83B4534


thumb_func_start func_80284BC
func_80284BC:
	push	{r4, lr}
	ldr	r4, .L_284dc
	ldrh	r0, [r4, #8]
	lsr	r0, r0, #6
	ldrh	r1, [r4, #10]
	lsr	r1, r1, #6
	bl	GetBg2CollisionTypeAtTile
	sub	r0, #1
	cmp	r0, #5
	bhi	.L_28544
	lsl	r0, r0, #2
	ldr	r1, .L_284e0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_284dc:
	.4byte	gCurrentSprite
.L_284e0:
	.4byte	.L_284e4
.L_284e4:
	.4byte	.L_284fc
	.4byte	.L_2850c
	.4byte	.L_2851c
	.4byte	.L_2852c
	.4byte	.L_2850c
	.4byte	.L_2850c
.L_284fc:
	ldr	r2, .L_28508
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	mov	r1, #0
	b	.L_28534
	.align	2, 0
.L_28508:
	.4byte	gCurrentSprite
.L_2850c:
	ldr	r2, .L_28518
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	mov	r1, #1
	b	.L_28534
	.align	2, 0
.L_28518:
	.4byte	gCurrentSprite
.L_2851c:
	ldr	r2, .L_28528
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	mov	r1, #33	@ 0x21
	b	.L_28534
	.align	2, 0
.L_28528:
	.4byte	gCurrentSprite
.L_2852c:
	ldr	r2, .L_28540
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	mov	r1, #17
.L_28534:
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #18
	strb	r0, [r2, #28]
	b	.L_28570
.L_28540:
	.4byte	gCurrentSprite
.L_28544:
	mov	r0, #18
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	cmp	r1, #2
	bne	.L_2855a
	mov	r1, #1
	strb	r1, [r0, #0]
	add	r0, #1
	b	.L_2856e
.L_2855a:
	cmp	r1, #34	@ 0x22
	bne	.L_28562
	mov	r1, #17
	b	.L_28568
.L_28562:
	cmp	r1, #18
	bne	.L_2856a
	mov	r1, #33	@ 0x21
.L_28568:
	strb	r1, [r0, #0]
.L_2856a:
	add	r0, r4, #0
	add	r0, #41	@ 0x29
.L_2856e:
	strb	r1, [r0, #0]
.L_28570:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8028578
func_8028578:
	ldr	r2, .L_28590
	add	r1, r2, #0
	add	r1, #42	@ 0x2a
	ldrb	r0, [r1, #0]
	cmp	r0, #31
	bhi	.L_28594
	add	r0, #1
	strb	r0, [r1, #0]
	sub	r1, #3
	ldrb	r0, [r1, #0]
	add	r0, #2
	b	.L_2859e
.L_28590:
	.4byte	gCurrentSprite
.L_28594:
	mov	r0, #0
	mov	r1, #16
	strb	r1, [r2, #28]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
.L_2859e:
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0


thumb_func_start func_80285A4
func_80285A4:
	push	{r4, lr}
	ldr	r4, .L_285c4
	ldrh	r0, [r4, #8]
	lsr	r0, r0, #6
	ldrh	r1, [r4, #10]
	lsr	r1, r1, #6
	bl	GetBg2CollisionTypeAtTile
	sub	r0, #1
	cmp	r0, #5
	bhi	.L_2862c
	lsl	r0, r0, #2
	ldr	r1, .L_285c8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_285c4:
	.4byte	gCurrentSprite
.L_285c8:
	.4byte	.L_285cc
.L_285cc:
	.4byte	.L_285f4
	.4byte	.L_285e4
	.4byte	.L_285f4
	.4byte	.L_285f4
	.4byte	.L_28604
	.4byte	.L_28614
.L_285e4:
	ldr	r2, .L_285f0
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	mov	r1, #0
	b	.L_2861c
	.align	2, 0
.L_285f0:
	.4byte	gCurrentSprite
.L_285f4:
	ldr	r2, .L_28600
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	mov	r1, #2
	b	.L_2861c
	.align	2, 0
.L_28600:
	.4byte	gCurrentSprite
.L_28604:
	ldr	r2, .L_28610
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	mov	r1, #34	@ 0x22
	b	.L_2861c
	.align	2, 0
.L_28610:
	.4byte	gCurrentSprite
.L_28614:
	ldr	r2, .L_28628
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	mov	r1, #18
.L_2861c:
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #20
	strb	r0, [r2, #28]
	b	.L_28658
.L_28628:
	.4byte	gCurrentSprite
.L_2862c:
	mov	r0, #20
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	cmp	r1, #1
	bne	.L_28642
	mov	r1, #2
	strb	r1, [r0, #0]
	add	r0, #1
	b	.L_28656
.L_28642:
	cmp	r1, #33	@ 0x21
	bne	.L_2864a
	mov	r1, #18
	b	.L_28650
.L_2864a:
	cmp	r1, #17
	bne	.L_28652
	mov	r1, #34	@ 0x22
.L_28650:
	strb	r1, [r0, #0]
.L_28652:
	add	r0, r4, #0
	add	r0, #41	@ 0x29
.L_28656:
	strb	r1, [r0, #0]
.L_28658:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8028660
func_8028660:
	ldr	r2, .L_28678
	add	r1, r2, #0
	add	r1, #42	@ 0x2a
	ldrb	r0, [r1, #0]
	cmp	r0, #31
	bhi	.L_2867c
	add	r0, #1
	strb	r0, [r1, #0]
	sub	r1, #3
	ldrb	r0, [r1, #0]
	sub	r0, #2
	b	.L_28686
.L_28678:
	.4byte	gCurrentSprite
.L_2867c:
	mov	r0, #0
	mov	r1, #16
	strb	r1, [r2, #28]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
.L_28686:
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0


thumb_func_start func_802868C
func_802868C:
	push	{r4, lr}
	ldr	r4, .L_286b0
	ldrh	r0, [r4, #8]
	lsr	r0, r0, #6
	ldrh	r2, [r4, #10]
	add	r1, r2, #0
	sub	r1, #128	@ 0x80
	cmp	r1, #0
	bge	.L_286a0
	add	r1, #63	@ 0x3f
.L_286a0:
	asr	r1, r1, #6
	bl	GetBg2CollisionTypeAtTile
	cmp	r0, #1
	bne	.L_286b4
	mov	r0, #29
	b	.L_286b6
	.align	2, 0
.L_286b0:
	.4byte	gCurrentSprite
.L_286b4:
	mov	r0, #28
.L_286b6:
	strb	r0, [r4, #30]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80286C0
func_80286C0:
	push	{r4, lr}
	ldr	r4, .L_286dc
	ldrh	r0, [r4, #8]
	lsr	r0, r0, #6
	ldrh	r2, [r4, #10]
	add	r1, r2, #0
	add	r1, #128	@ 0x80
	asr	r1, r1, #6
	bl	GetBg2CollisionTypeAtTile
	cmp	r0, #2
	bne	.L_286e0
	mov	r0, #29
	b	.L_286e2
.L_286dc:
	.4byte	gCurrentSprite
.L_286e0:
	mov	r0, #28
.L_286e2:
	strb	r0, [r4, #30]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80286EC
func_80286EC:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r1, .L_2870c
	mov	r0, #42	@ 0x2a
	add	r0, r0, r1
	mov	ip, r0
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r4
	ldrh	r0, [r0, #0]
	add	r3, r0, #0
	ldr	r0, .L_28710
	cmp	r3, r0
	bne	.L_28714
	mov	r0, #0
	b	.L_2874e
.L_2870c:
	.4byte	gCurrentSprite
.L_28710:
	.4byte	0x7FFF
.L_28714:
	add	r0, r2, #1
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	lsl	r0, r2, #1
	add	r0, r0, r4
	ldrh	r4, [r0, #0]
	add	r0, r2, #1
	mov	r2, ip
	strb	r0, [r2, #0]
	ldrh	r0, [r1, #8]
	add	r0, r0, r3
	strh	r0, [r1, #8]
	ldrh	r0, [r1, #10]
	add	r0, r0, r4
	strh	r0, [r1, #10]
	ldrh	r1, [r1, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_2874c
	ldr	r0, .L_28754
	ldrh	r1, [r0, #20]
	add	r1, r1, r3
	strh	r1, [r0, #20]
	ldrh	r1, [r0, #18]
	add	r1, r1, r4
	strh	r1, [r0, #18]
.L_2874c:
	mov	r0, #1
.L_2874e:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_28754:
	.4byte	gWarioData


thumb_func_start func_8028758
func_8028758:
	push	{r4, lr}
	ldr	r0, .L_287c0
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #132	@ 0x84
	lsl	r2, r2, #8
	add	r0, r2, #0
	mov	r2, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_287c4
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #32
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #7
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #34	@ 0x22
	mov	r3, #16
	strb	r3, [r0, #0]
	add	r0, #1
	mov	r1, #28
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
	mov	r0, ip
	strb	r2, [r0, #22]
	strh	r4, [r0, #20]
	ldr	r0, .L_287c8
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #28]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	sub	r0, #2
	strb	r2, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_287c0:
	.4byte	gCurrentSprite
.L_287c4:
	.4byte	0xFFFB
.L_287c8:
	.4byte	sUnk_83B4544


thumb_func_start func_80287CC
func_80287CC:
	ldr	r1, .L_287e0
	mov	r2, #0
	mov	r0, #29
	strb	r0, [r1, #30]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #50	@ 0x32
	strb	r0, [r1, #28]
	bx	lr
.L_287e0:
	.4byte	gCurrentSprite


thumb_func_start func_80287E4
func_80287E4:
	push	{lr}
	ldr	r0, .L_28800
	bl	func_80286EC
	cmp	r0, #0
	bne	.L_287fa
	ldr	r0, .L_28804
	mov	r1, #16
	strb	r1, [r0, #28]
	mov	r1, #149	@ 0x95
	strb	r1, [r0, #23]
.L_287fa:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_28800:
	.4byte	sUnk_83B32EC
.L_28804:
	.4byte	gCurrentSprite


thumb_func_start func_8028808
func_8028808:
	push	{lr}
	ldr	r0, .L_28824
	bl	func_80286EC
	cmp	r0, #0
	bne	.L_2881e
	ldr	r0, .L_28828
	mov	r1, #16
	strb	r1, [r0, #28]
	mov	r1, #149	@ 0x95
	strb	r1, [r0, #23]
.L_2881e:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_28824:
	.4byte	sUnk_83B34F4
.L_28828:
	.4byte	gCurrentSprite


thumb_func_start func_802882C
func_802882C:
	push	{lr}
	ldr	r0, .L_28848
	bl	func_80286EC
	cmp	r0, #0
	bne	.L_28842
	ldr	r0, .L_2884c
	mov	r1, #16
	strb	r1, [r0, #28]
	mov	r1, #151	@ 0x97
	strb	r1, [r0, #23]
.L_28842:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_28848:
	.4byte	sUnk_83B33F0
.L_2884c:
	.4byte	gCurrentSprite


thumb_func_start func_8028850
func_8028850:
	push	{lr}
	ldr	r0, .L_2886c
	bl	func_80286EC
	cmp	r0, #0
	bne	.L_28866
	ldr	r0, .L_28870
	mov	r1, #16
	strb	r1, [r0, #28]
	mov	r1, #151	@ 0x97
	strb	r1, [r0, #23]
.L_28866:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2886c:
	.4byte	sUnk_83B31E8
.L_28870:
	.4byte	gCurrentSprite


thumb_func_start func_8028874
func_8028874:
	push	{lr}
	ldr	r0, .L_28894
	bl	func_80286EC
	cmp	r0, #0
	bne	.L_2888e
	ldr	r0, .L_28898
	mov	r1, #16
	strb	r1, [r0, #28]
	mov	r1, #148	@ 0x94
	strb	r1, [r0, #23]
	bl	func_802868C
.L_2888e:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_28894:
	.4byte	sUnk_83B326A
.L_28898:
	.4byte	gCurrentSprite


thumb_func_start func_802889C
func_802889C:
	push	{lr}
	ldr	r0, .L_288bc
	bl	func_80286EC
	cmp	r0, #0
	bne	.L_288b6
	ldr	r0, .L_288c0
	mov	r1, #16
	strb	r1, [r0, #28]
	mov	r1, #150	@ 0x96
	strb	r1, [r0, #23]
	bl	func_80286C0
.L_288b6:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_288bc:
	.4byte	sUnk_83B3472
.L_288c0:
	.4byte	gCurrentSprite


thumb_func_start func_80288C4
func_80288C4:
	push	{lr}
	ldr	r0, .L_288e4
	bl	func_80286EC
	cmp	r0, #0
	bne	.L_288de
	ldr	r0, .L_288e8
	mov	r1, #16
	strb	r1, [r0, #28]
	mov	r1, #150	@ 0x96
	strb	r1, [r0, #23]
	bl	func_80286C0
.L_288de:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_288e4:
	.4byte	sUnk_83B336E
.L_288e8:
	.4byte	gCurrentSprite


thumb_func_start func_80288EC
func_80288EC:
	push	{lr}
	ldr	r0, .L_2890c
	bl	func_80286EC
	cmp	r0, #0
	bne	.L_28906
	ldr	r0, .L_28910
	mov	r1, #16
	strb	r1, [r0, #28]
	mov	r1, #148	@ 0x94
	strb	r1, [r0, #23]
	bl	func_802868C
.L_28906:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2890c:
	.4byte	sUnk_83B3576
.L_28910:
	.4byte	gCurrentSprite


thumb_func_start func_8028914
func_8028914:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_2895c
	ldrb	r4, [r0, #24]
	mov	r2, #0
	ldr	r5, .L_28960
	add	r3, r0, #0
	mov	r6, #0
.L_28922:
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r1, r0, r5
	ldrb	r0, [r1, #23]
	cmp	r0, #150	@ 0x96
	bne	.L_28964
	ldrb	r0, [r1, #28]
	sub	r0, #49	@ 0x31
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_28964
	ldrb	r0, [r1, #24]
	cmp	r0, r4
	bne	.L_28964
	ldrh	r1, [r1, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_28964
	mov	r0, #29
	strb	r0, [r3, #30]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r6, [r0, #0]
	mov	r0, #18
	strb	r0, [r3, #28]
	b	.L_2896a
	.align	2, 0
.L_2895c:
	.4byte	gCurrentSprite
.L_28960:
	.4byte	gSpriteData
.L_28964:
	add	r2, #1
	cmp	r2, #23
	ble	.L_28922
.L_2896a:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8028970
func_8028970:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_289b8
	ldrb	r4, [r0, #24]
	mov	r2, #0
	ldr	r5, .L_289bc
	add	r3, r0, #0
	mov	r6, #0
.L_2897e:
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r1, r0, r5
	ldrb	r0, [r1, #23]
	cmp	r0, #148	@ 0x94
	bne	.L_289c0
	ldrb	r0, [r1, #28]
	sub	r0, #49	@ 0x31
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_289c0
	ldrb	r0, [r1, #24]
	cmp	r0, r4
	bne	.L_289c0
	ldrh	r1, [r1, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_289c0
	mov	r0, #29
	strb	r0, [r3, #30]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r6, [r0, #0]
	mov	r0, #18
	strb	r0, [r3, #28]
	b	.L_289c6
	.align	2, 0
.L_289b8:
	.4byte	gCurrentSprite
.L_289bc:
	.4byte	gSpriteData
.L_289c0:
	add	r2, #1
	cmp	r2, #23
	ble	.L_2897e
.L_289c6:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_80289CC
func_80289CC:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_28a14
	ldrb	r6, [r0, #24]
	mov	r3, #0
	ldr	r7, .L_28a18
	add	r4, r0, #0
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	mov	r5, #0
.L_289e0:
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r2, r0, r7
	ldrb	r0, [r2, #28]
	sub	r0, #49	@ 0x31
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_28a2a
	ldrb	r0, [r2, #24]
	cmp	r0, r6
	bne	.L_28a2a
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_28a2a
	ldrb	r0, [r2, #23]
	cmp	r0, #148	@ 0x94
	bne	.L_28a1c
	mov	r0, ip
	strb	r5, [r0, #0]
	mov	r0, #18
	strb	r0, [r4, #28]
	b	.L_28a30
	.align	2, 0
.L_28a14:
	.4byte	gCurrentSprite
.L_28a18:
	.4byte	gSpriteData
.L_28a1c:
	cmp	r0, #150	@ 0x96
	bne	.L_28a30
	mov	r0, ip
	strb	r5, [r0, #0]
	mov	r0, #20
	strb	r0, [r4, #28]
	b	.L_28a30
.L_28a2a:
	add	r3, #1
	cmp	r3, #23
	ble	.L_289e0
.L_28a30:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8028A38
func_8028A38:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_28a7c
	ldrb	r6, [r0, #24]
	mov	r3, #0
	ldr	r7, .L_28a80
	add	r4, r0, #0
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	mov	r5, #0
.L_28a4c:
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r2, r0, r7
	ldrb	r0, [r2, #28]
	sub	r0, #49	@ 0x31
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_28a98
	ldrb	r0, [r2, #24]
	cmp	r0, r6
	bne	.L_28a98
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_28a98
	ldrb	r0, [r2, #23]
	cmp	r0, #148	@ 0x94
	bne	.L_28a84
	mov	r0, ip
	strb	r5, [r0, #0]
	mov	r0, #17
	b	.L_28a8e
.L_28a7c:
	.4byte	gCurrentSprite
.L_28a80:
	.4byte	gSpriteData
.L_28a84:
	cmp	r0, #150	@ 0x96
	bne	.L_28a9e
	mov	r0, ip
	strb	r5, [r0, #0]
	mov	r0, #19
.L_28a8e:
	strb	r0, [r4, #28]
	mov	r0, #247	@ 0xf7
	bl	m4aSongNumStart
	b	.L_28a9e
.L_28a98:
	add	r3, #1
	cmp	r3, #23
	ble	.L_28a4c
.L_28a9e:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start SpriteRotatingPlatform
SpriteRotatingPlatform:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r4, .L_28ac4
	mov	r0, #1
	strb	r0, [r4, #31]
	bl	func_8028148
	ldrb	r0, [r4, #28]
	cmp	r0, #20
	bhi	.L_28b3a
	lsl	r0, r0, #2
	ldr	r1, .L_28ac8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_28ac4:
	.4byte	gCurrentSprite
.L_28ac8:
	.4byte	.L_28acc
.L_28acc:
	.4byte	.L_28b20
	.4byte	.L_28b3a
	.4byte	.L_28b3a
	.4byte	.L_28b3a
	.4byte	.L_28b3a
	.4byte	.L_28b3a
	.4byte	.L_28b3a
	.4byte	.L_28b3a
	.4byte	.L_28b3a
	.4byte	.L_28b3a
	.4byte	.L_28b3a
	.4byte	.L_28b3a
	.4byte	.L_28b3a
	.4byte	.L_28b3a
	.4byte	.L_28b3a
	.4byte	.L_28b3a
	.4byte	.L_28b3a
	.4byte	.L_28b26
	.4byte	.L_28b2a
	.4byte	.L_28b30
	.4byte	.L_28b34
.L_28b20:
	bl	func_8028400
	b	.L_28b3e
.L_28b26:
	bl	func_80284BC
.L_28b2a:
	bl	func_8028578
	b	.L_28b3e
.L_28b30:
	bl	func_80285A4
.L_28b34:
	bl	func_8028660
	b	.L_28b3e
.L_28b3a:
	bl	func_8028A38
.L_28b3e:
	ldr	r0, .L_28bc4
	mov	r8, r0
	ldr	r6, .L_28bc8
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
.L_28bc4:
	.4byte	sSinCosTable
.L_28bc8:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknown94
SpriteUnknown94:
	push	{lr}
	mov	r0, #20
	bl	SpriteUtilDespawnChildWithParent
	cmp	r0, #0
	bne	.L_28c22
	bl	func_802822C
	ldr	r0, .L_28bf0
	ldrb	r0, [r0, #28]
	cmp	r0, #18
	beq	.L_28c14
	cmp	r0, #18
	bgt	.L_28bf4
	cmp	r0, #0
	beq	.L_28bfe
	b	.L_28c1a
	.align	2, 0
.L_28bf0:
	.4byte	gCurrentSprite
.L_28bf4:
	cmp	r0, #49	@ 0x31
	beq	.L_28c08
	cmp	r0, #50	@ 0x32
	beq	.L_28c0e
	b	.L_28c1a
.L_28bfe:
	bl	func_8028758
	bl	func_802868C
	b	.L_28c1e
.L_28c08:
	bl	func_80287CC
	b	.L_28c1e
.L_28c0e:
	bl	func_80287E4
	b	.L_28c1e
.L_28c14:
	bl	func_802882C
	b	.L_28c1e
.L_28c1a:
	bl	func_8028914
.L_28c1e:
	bl	func_8026838
.L_28c22:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknown96
SpriteUnknown96:
	push	{lr}
	mov	r0, #20
	bl	SpriteUtilDespawnChildWithParent
	cmp	r0, #0
	bne	.L_28c7e
	bl	func_802822C
	ldr	r0, .L_28c4c
	ldrb	r0, [r0, #28]
	cmp	r0, #18
	beq	.L_28c70
	cmp	r0, #18
	bgt	.L_28c50
	cmp	r0, #0
	beq	.L_28c5a
	b	.L_28c76
	.align	2, 0
.L_28c4c:
	.4byte	gCurrentSprite
.L_28c50:
	cmp	r0, #49	@ 0x31
	beq	.L_28c64
	cmp	r0, #50	@ 0x32
	beq	.L_28c6a
	b	.L_28c76
.L_28c5a:
	bl	func_8028758
	bl	func_80286C0
	b	.L_28c7a
.L_28c64:
	bl	func_80287CC
	b	.L_28c7a
.L_28c6a:
	bl	func_8028808
	b	.L_28c7a
.L_28c70:
	bl	func_8028850
	b	.L_28c7a
.L_28c76:
	bl	func_8028970
.L_28c7a:
	bl	func_8026838
.L_28c7e:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknown97
SpriteUnknown97:
	push	{r4, lr}
	mov	r0, #20
	bl	SpriteUtilDespawnChildWithParent
	cmp	r0, #0
	bne	.L_28cd0
	bl	func_802822C
	ldr	r4, .L_28ca8
	ldrb	r0, [r4, #28]
	cmp	r0, #18
	beq	.L_28cbc
	cmp	r0, #18
	bgt	.L_28cac
	cmp	r0, #0
	beq	.L_28cb2
	b	.L_28cc8
	.align	2, 0
.L_28ca8:
	.4byte	gCurrentSprite
.L_28cac:
	cmp	r0, #20
	beq	.L_28cc2
	b	.L_28cc8
.L_28cb2:
	bl	func_8028758
	mov	r0, #29
	strb	r0, [r4, #30]
	b	.L_28ccc
.L_28cbc:
	bl	func_8028874
	b	.L_28ccc
.L_28cc2:
	bl	func_802889C
	b	.L_28ccc
.L_28cc8:
	bl	func_80289CC
.L_28ccc:
	bl	func_8026838
.L_28cd0:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknown95
SpriteUnknown95:
	push	{r4, lr}
	mov	r0, #20
	bl	SpriteUtilDespawnChildWithParent
	cmp	r0, #0
	bne	.L_28d24
	bl	func_802822C
	ldr	r4, .L_28cfc
	ldrb	r0, [r4, #28]
	cmp	r0, #18
	beq	.L_28d10
	cmp	r0, #18
	bgt	.L_28d00
	cmp	r0, #0
	beq	.L_28d06
	b	.L_28d1c
	.align	2, 0
.L_28cfc:
	.4byte	gCurrentSprite
.L_28d00:
	cmp	r0, #20
	beq	.L_28d16
	b	.L_28d1c
.L_28d06:
	bl	func_8028758
	mov	r0, #29
	strb	r0, [r4, #30]
	b	.L_28d20
.L_28d10:
	bl	func_80288C4
	b	.L_28d20
.L_28d16:
	bl	func_80288EC
	b	.L_28d20
.L_28d1c:
	bl	func_80289CC
.L_28d20:
	bl	func_8026838
.L_28d24:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8028D2C
func_8028D2C:
	ldr	r0, .L_28d84
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #145	@ 0x91
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_28d88
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	strb	r2, [r1, #30]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, ip
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
	ldrh	r0, [r1, #8]
	sub	r0, #32
	strh	r0, [r1, #8]
	bx	lr
	.align	2, 0
.L_28d84:
	.4byte	gCurrentSprite
.L_28d88:
	.4byte	sUnk_83B4534


thumb_func_start SpriteRotatingPlatform2
SpriteRotatingPlatform2:
	push	{r4, r5, r6, lr}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #4
	ldr	r4, .L_28dcc
	mov	r0, #1
	strb	r0, [r4, #31]
	ldrb	r0, [r4, #28]
	cmp	r0, #0
	bne	.L_28dd0
	bl	func_8028D2C
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #174	@ 0xae
	bl	SpriteSpawnAsChild
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #175	@ 0xaf
	bl	SpriteSpawnAsChild
	b	.L_28de4
.L_28dcc:
	.4byte	gCurrentSprite
.L_28dd0:
	add	r4, #39	@ 0x27
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_28dde
	mov	r0, #248	@ 0xf8
	bl	m4aSongNumStart
.L_28dde:
	ldrb	r0, [r4, #0]
	add	r0, #2
	strb	r0, [r4, #0]
.L_28de4:
	ldr	r6, .L_28e5c
	add	r0, r6, #0
	add	r0, #39	@ 0x27
	ldrb	r4, [r0, #0]
	ldr	r0, .L_28e60
	mov	r8, r0
	add	r0, r4, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r9, r1
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r9
	bl	FixedMul
	strh	r0, [r6, #12]
	lsl	r4, r4, #1
	add	r4, r8
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #14]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #16]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r9
	bl	FixedMul
	strh	r0, [r6, #18]
	add	sp, #4
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_28e5c:
	.4byte	gCurrentSprite
.L_28e60:
	.4byte	sSinCosTable


thumb_func_start SpriteRotatingPlatform3
SpriteRotatingPlatform3:
	push	{r4, r5, r6, lr}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #4
	ldr	r4, .L_28ea4
	mov	r0, #1
	strb	r0, [r4, #31]
	ldrb	r0, [r4, #28]
	cmp	r0, #0
	bne	.L_28ea8
	bl	func_8028D2C
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #176	@ 0xb0
	bl	SpriteSpawnAsChild
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #177	@ 0xb1
	bl	SpriteSpawnAsChild
	b	.L_28ebc
.L_28ea4:
	.4byte	gCurrentSprite
.L_28ea8:
	add	r4, #39	@ 0x27
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_28eb6
	mov	r0, #248	@ 0xf8
	bl	m4aSongNumStart
.L_28eb6:
	ldrb	r0, [r4, #0]
	sub	r0, #2
	strb	r0, [r4, #0]
.L_28ebc:
	ldr	r6, .L_28f34
	add	r0, r6, #0
	add	r0, #39	@ 0x27
	ldrb	r4, [r0, #0]
	ldr	r0, .L_28f38
	mov	r8, r0
	add	r0, r4, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r9, r1
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r9
	bl	FixedMul
	strh	r0, [r6, #12]
	lsl	r4, r4, #1
	add	r4, r8
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #14]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #16]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r9
	bl	FixedMul
	strh	r0, [r6, #18]
	add	sp, #4
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_28f34:
	.4byte	gCurrentSprite
.L_28f38:
	.4byte	sSinCosTable


thumb_func_start SpriteUnknownAE
SpriteUnknownAE:
	push	{r4, lr}
	mov	r0, #85	@ 0x55
	bl	SpriteUtilDespawnChildWithParent
	cmp	r0, #0
	bne	.L_28f68
	ldr	r4, .L_28f70
	ldrb	r0, [r4, #28]
	cmp	r0, #0
	bne	.L_28f60
	bl	func_8028758
	mov	r0, #29
	strb	r0, [r4, #30]
	add	r1, r4, #0
	add	r1, #42	@ 0x2a
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
.L_28f60:
	bl	func_802655C
	bl	func_8026838
.L_28f68:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_28f70:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownAF
SpriteUnknownAF:
	push	{r4, r5, lr}
	mov	r0, #85	@ 0x55
	bl	SpriteUtilDespawnChildWithParent
	cmp	r0, #0
	bne	.L_28f9e
	ldr	r4, .L_28fa4
	ldrb	r5, [r4, #28]
	cmp	r5, #0
	bne	.L_28f96
	bl	func_8028758
	mov	r0, #29
	strb	r0, [r4, #30]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r5, [r0, #0]
.L_28f96:
	bl	func_802655C
	bl	func_8026838
.L_28f9e:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_28fa4:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownB0
SpriteUnknownB0:
	push	{r4, r5, lr}
	mov	r0, #86	@ 0x56
	bl	SpriteUtilDespawnChildWithParent
	cmp	r0, #0
	bne	.L_28fd2
	ldr	r4, .L_28fd8
	ldrb	r5, [r4, #28]
	cmp	r5, #0
	bne	.L_28fca
	bl	func_8028758
	mov	r0, #29
	strb	r0, [r4, #30]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r5, [r0, #0]
.L_28fca:
	bl	func_80264A0
	bl	func_8026838
.L_28fd2:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_28fd8:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownB1
SpriteUnknownB1:
	push	{r4, lr}
	mov	r0, #86	@ 0x56
	bl	SpriteUtilDespawnChildWithParent
	cmp	r0, #0
	bne	.L_29008
	ldr	r4, .L_29010
	ldrb	r0, [r4, #28]
	cmp	r0, #0
	bne	.L_29000
	bl	func_8028758
	mov	r0, #29
	strb	r0, [r4, #30]
	add	r1, r4, #0
	add	r1, #42	@ 0x2a
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
.L_29000:
	bl	func_80264A0
	bl	func_8026838
.L_29008:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_29010:
	.4byte	gCurrentSprite
