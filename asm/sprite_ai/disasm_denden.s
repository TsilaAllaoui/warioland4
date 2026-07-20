.include "macros.s.inc"


thumb_func_start func_8057304
func_8057304:
	ldr	r2, .L_57320
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_57324
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	b	.L_57330
	.align	2, 0
.L_57320:
	.4byte	gCurrentSprite
.L_57324:
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #68	@ 0x44
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
.L_57330:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_8057334
func_8057334:
	push	{r4, r5, r6, lr}
	ldr	r6, .L_57380
	ldrh	r1, [r6, #0]
	ldr	r0, .L_57384
	and	r0, r1
	mov	r4, #0
	mov	r5, #0
	strh	r0, [r6, #0]
	mov	r0, #38	@ 0x26
	strb	r0, [r6, #30]
	add	r1, r6, #0
	add	r1, #32
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r0, r6, #0
	add	r0, #33	@ 0x21
	strb	r4, [r0, #0]
	add	r1, #2
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r0, r6, #0
	add	r0, #36	@ 0x24
	strb	r4, [r0, #0]
	bl	func_8057304
	ldr	r0, .L_57388
	str	r0, [r6, #4]
	strb	r4, [r6, #22]
	strh	r5, [r6, #20]
	mov	r0, #110	@ 0x6e
	strb	r0, [r6, #28]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_57380:
	.4byte	gCurrentSprite
.L_57384:
	.4byte	0xFFFB
.L_57388:
	.4byte	sUnk_83DC770


thumb_func_start func_805738C
func_805738C:
	push	{r4, lr}
	ldr	r4, .L_573b0
	ldr	r0, .L_573b4
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	mov	r0, #16
	strb	r0, [r4, #28]
	mov	r0, #38	@ 0x26
	strb	r0, [r4, #30]
	bl	func_8057304
	mov	r0, #2
	strb	r0, [r4, #26]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_573b0:
	.4byte	gCurrentSprite
.L_573b4:
	.4byte	sUnk_83DC770


thumb_func_start func_80573B8
func_80573B8:
	push	{r4, r5, r6, r7, lr}
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #1
	mov	r0, #80	@ 0x50
	bl	SpriteUtilCheckWarioNearbyLeftRight
	add	r5, r0, #0
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_573f8
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_5742c
	ldr	r3, .L_573fc
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_57400
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_57414
.L_573f8:
	.4byte	gSpriteCollisionResult
.L_573fc:
	.4byte	gCurrentSprite
.L_57400:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_57414:
	ldr	r0, .L_57424
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_574f8
	ldr	r1, .L_57428
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_574fc
.L_57424:
	.4byte	gSpriteCollisionTileType
.L_57428:
	.4byte	gCurrentSprite
.L_5742c:
	ldr	r4, .L_57484
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_5748c
	cmp	r5, #8
	beq	.L_57490
	cmp	r5, #4
	beq	.L_574ec
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_574f8
	ldrh	r1, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	and	r0, r1
	ldrb	r2, [r6, #0]
	add	r0, r0, r2
	cmp	r0, #63	@ 0x3f
	ble	.L_574f8
	ldrh	r0, [r4, #8]
	add	r1, #44	@ 0x2c
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_57488
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_574ec
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_574da
.L_57484:
	.4byte	gCurrentSprite
.L_57488:
	.4byte	gSpriteCollisionTileType
.L_5748c:
	cmp	r5, #4
	bne	.L_57496
.L_57490:
	mov	r0, #112	@ 0x70
	strb	r0, [r4, #28]
	b	.L_574fc
.L_57496:
	cmp	r5, #8
	beq	.L_574ec
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_574f8
	ldrh	r1, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	and	r0, r1
	ldrb	r2, [r6, #0]
	cmp	r0, r2
	bcs	.L_574f8
	ldrh	r0, [r4, #8]
	sub	r1, #48	@ 0x30
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_574f4
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_574ec
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_574da:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_574f8
.L_574ec:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_574fc
	.align	2, 0
.L_574f4:
	.4byte	gSpriteCollisionTileType
.L_574f8:
	bl	func_80263AC
.L_574fc:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8057504
func_8057504:
	ldr	r0, .L_5751c
	ldr	r1, .L_57520
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #11
	strb	r1, [r0, #0]
	bx	lr
.L_5751c:
	.4byte	gCurrentSprite
.L_57520:
	.4byte	sUnk_83DC900


thumb_func_start func_8057524
func_8057524:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_57540
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_57548
	ldr	r1, .L_57544
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_575a8
	.align	2, 0
.L_57540:
	.4byte	gSpriteCollisionResult
.L_57544:
	.4byte	gCurrentSprite
.L_57548:
	ldr	r2, .L_5756c
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_575a8
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	beq	.L_57570
	cmp	r0, #20
	beq	.L_5758c
	mov	r0, #15
	strb	r0, [r2, #28]
	b	.L_575a8
.L_5756c:
	.4byte	gCurrentSprite
.L_57570:
	ldr	r0, .L_57588
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #9
	strb	r0, [r3, #0]
	mov	r0, #33	@ 0x21
	strb	r0, [r2, #30]
	b	.L_575a8
	.align	2, 0
.L_57588:
	.4byte	sUnk_83DC928
.L_5758c:
	ldr	r0, .L_575ac
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #22
	strb	r0, [r2, #28]
	mov	r0, #17
	strb	r0, [r3, #0]
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	bl	func_8057304
.L_575a8:
	pop	{r0}
	bx	r0
.L_575ac:
	.4byte	sUnk_83DC948


thumb_func_start func_80575B0
func_80575B0:
	push	{lr}
	ldr	r1, .L_575d8
	ldr	r0, .L_575dc
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #24
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #23
	strb	r0, [r2, #0]
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #30]
	bl	func_8057304
	pop	{r0}
	bx	r0
	.align	2, 0
.L_575d8:
	.4byte	gCurrentSprite
.L_575dc:
	.4byte	sUnk_83DC9C8


thumb_func_start func_80575E0
func_80575E0:
	ldr	r0, .L_575fc
	ldr	r1, .L_57600
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #36	@ 0x24
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_575fc:
	.4byte	gCurrentSprite
.L_57600:
	.4byte	sUnk_83DC828


thumb_func_start func_8057604
func_8057604:
	ldr	r0, .L_5761c
	ldr	r1, .L_57620
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	mov	r2, #0
	strh	r1, [r0, #20]
	mov	r1, #28
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
.L_5761c:
	.4byte	gCurrentSprite
.L_57620:
	.4byte	sUnk_83DC798


thumb_func_start func_8057624
func_8057624:
	ldr	r1, .L_57644
	ldr	r0, .L_57648
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	mov	r0, #111	@ 0x6f
	strb	r0, [r1, #28]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #1
	strb	r0, [r1, #26]
	bx	lr
	.align	2, 0
.L_57644:
	.4byte	gCurrentSprite
.L_57648:
	.4byte	sUnk_83DC798


thumb_func_start func_805764C
func_805764C:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_57698
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r5, r0, #0
	ldr	r0, .L_5769c
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_57674
	ldrh	r1, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #4
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #61	@ 0x3d
	bl	m4aSongNumStart
.L_57674:
	ldr	r0, .L_576a0
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	beq	.L_576bc
	strh	r5, [r4, #8]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_576a4
	and	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #2
	strb	r0, [r4, #26]
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_576a8
	mov	r0, #23
	strb	r0, [r4, #28]
	b	.L_576f8
.L_57698:
	.4byte	gCurrentSprite
.L_5769c:
	.4byte	gUnk_30000A0
.L_576a0:
	.4byte	gSpriteCollisionResult
.L_576a4:
	.4byte	0xFFFB
.L_576a8:
	mov	r0, #1
	and	r0, r2
	cmp	r0, #0
	beq	.L_576b6
	mov	r0, #53	@ 0x35
	strb	r0, [r4, #28]
	b	.L_576f8
.L_576b6:
	mov	r0, #51	@ 0x33
	strb	r0, [r4, #28]
	b	.L_576f8
.L_576bc:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_576e4
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_576e8
	cmp	r1, r0
	bne	.L_576ec
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_576f6
.L_576e4:
	.4byte	sUnk_83DC9E0
.L_576e8:
	.4byte	0x7FFF
.L_576ec:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_576f6:
	strh	r0, [r4, #8]
.L_576f8:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8057700
func_8057700:
	ldr	r1, .L_57720
	ldr	r0, .L_57724
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	mov	r0, #30
	strb	r0, [r1, #28]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_57720:
	.4byte	gCurrentSprite
.L_57724:
	.4byte	sUnk_83DC818


thumb_func_start func_8057728
func_8057728:
	push	{lr}
	ldr	r2, .L_57768
	ldr	r0, .L_5776c
	str	r0, [r2, #4]
	mov	r1, #0
	strb	r1, [r2, #22]
	mov	r0, #0
	strh	r1, [r2, #20]
	strb	r0, [r2, #29]
	add	r1, r2, #0
	add	r1, #42	@ 0x2a
	strb	r0, [r1, #0]
	strb	r0, [r2, #26]
	sub	r1, #1
	mov	r0, #8
	strb	r0, [r1, #0]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_57770
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #8]
	sub	r0, #32
	ldrh	r1, [r2, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	pop	{r0}
	bx	r0
.L_57768:
	.4byte	gCurrentSprite
.L_5776c:
	.4byte	sUnk_83DC9A0
.L_57770:
	.4byte	0xFEFF


thumb_func_start func_8057774
func_8057774:
	push	{lr}
	ldr	r1, .L_57784
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8057728
	pop	{r0}
	bx	r0
.L_57784:
	.4byte	gCurrentSprite


thumb_func_start func_8057788
func_8057788:
	push	{lr}
	ldr	r1, .L_57798
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8057728
	pop	{r0}
	bx	r0
.L_57798:
	.4byte	gCurrentSprite


thumb_func_start func_805779C
func_805779C:
	push	{lr}
	ldr	r2, .L_577cc
	ldr	r0, .L_577d0
	str	r0, [r2, #4]
	mov	r1, #0
	strb	r1, [r2, #22]
	mov	r0, #0
	strh	r1, [r2, #20]
	strb	r0, [r2, #29]
	add	r1, r2, #0
	add	r1, #42	@ 0x2a
	strb	r0, [r1, #0]
	strb	r0, [r2, #26]
	sub	r1, #1
	mov	r0, #7
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	sub	r0, #32
	ldrh	r1, [r2, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	pop	{r0}
	bx	r0
.L_577cc:
	.4byte	gCurrentSprite
.L_577d0:
	.4byte	sUnk_83DC9A0


thumb_func_start func_80577D4
func_80577D4:
	push	{lr}
	ldr	r1, .L_577e4
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_805779C
	pop	{r0}
	bx	r0
.L_577e4:
	.4byte	gCurrentSprite


thumb_func_start func_80577E8
func_80577E8:
	push	{lr}
	ldr	r1, .L_577f8
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_805779C
	pop	{r0}
	bx	r0
.L_577f8:
	.4byte	gCurrentSprite


thumb_func_start func_80577FC
func_80577FC:
	ldr	r2, .L_57824
	ldr	r0, .L_57828
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #12
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_57824:
	.4byte	gCurrentSprite
.L_57828:
	.4byte	sUnk_83DC880


thumb_func_start func_805782C
func_805782C:
	push	{lr}
	ldr	r1, .L_5783c
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_80577FC
	pop	{r0}
	bx	r0
.L_5783c:
	.4byte	gCurrentSprite


thumb_func_start func_8057840
func_8057840:
	push	{lr}
	ldr	r1, .L_57850
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_80577FC
	pop	{r0}
	bx	r0
.L_57850:
	.4byte	gCurrentSprite


thumb_func_start func_8057854
func_8057854:
	ldr	r2, .L_5787c
	ldr	r0, .L_57880
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #12
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_5787c:
	.4byte	gCurrentSprite
.L_57880:
	.4byte	sUnk_83DC880


thumb_func_start func_8057884
func_8057884:
	push	{lr}
	ldr	r1, .L_57894
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #28]
	bl	func_8057854
	pop	{r0}
	bx	r0
.L_57894:
	.4byte	gCurrentSprite


thumb_func_start func_8057898
func_8057898:
	push	{lr}
	ldr	r1, .L_578a8
	mov	r0, #42	@ 0x2a
	strb	r0, [r1, #28]
	bl	func_8057854
	pop	{r0}
	bx	r0
.L_578a8:
	.4byte	gCurrentSprite


thumb_func_start func_80578AC
func_80578AC:
	ldr	r2, .L_578d4
	ldr	r0, .L_578d8
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	mov	r1, #36	@ 0x24
	strb	r1, [r2, #30]
	add	r3, r2, #0
	add	r3, #37	@ 0x25
	mov	r0, #40	@ 0x28
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #38	@ 0x26
	strb	r1, [r0, #0]
	bx	lr
.L_578d4:
	.4byte	gCurrentSprite
.L_578d8:
	.4byte	sUnk_83DC818


thumb_func_start func_80578DC
func_80578DC:
	push	{lr}
	ldr	r1, .L_578ec
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_80578AC
	pop	{r0}
	bx	r0
.L_578ec:
	.4byte	gCurrentSprite


thumb_func_start func_80578F0
func_80578F0:
	push	{lr}
	ldr	r1, .L_57900
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_80578AC
	pop	{r0}
	bx	r0
.L_57900:
	.4byte	gCurrentSprite


thumb_func_start func_8057904
func_8057904:
	ldr	r2, .L_57930
	ldr	r0, .L_57934
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #11
	strb	r0, [r1, #0]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_57938
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
	.align	2, 0
.L_57930:
	.4byte	gCurrentSprite
.L_57934:
	.4byte	sUnk_83DC970
.L_57938:
	.4byte	0xFEFF


thumb_func_start func_805793C
func_805793C:
	ldr	r1, .L_5797c
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r3, #0
	mov	r0, #4
	strb	r0, [r2, #0]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	strb	r3, [r0, #0]
	sub	r2, #2
	mov	r0, #40	@ 0x28
	strb	r0, [r2, #0]
	add	r0, r1, #0
	add	r0, #38	@ 0x26
	mov	r2, #36	@ 0x24
	strb	r2, [r0, #0]
	ldrb	r0, [r1, #30]
	cmp	r0, #36	@ 0x24
	beq	.L_57984
	strb	r2, [r1, #30]
	ldr	r0, .L_57980
	str	r0, [r1, #4]
	mov	r0, #0
	strh	r3, [r1, #20]
	strb	r0, [r1, #22]
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	strb	r0, [r2, #0]
	mov	r0, #2
	strb	r0, [r1, #26]
	b	.L_5798a
	.align	2, 0
.L_5797c:
	.4byte	gCurrentSprite
.L_57980:
	.4byte	sUnk_83DC7C0
.L_57984:
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
.L_5798a:
	bx	lr


thumb_func_start func_805798C
func_805798C:
	push	{lr}
	ldr	r1, .L_5799c
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_805793C
	pop	{r0}
	bx	r0
.L_5799c:
	.4byte	gCurrentSprite


thumb_func_start func_80579A0
func_80579A0:
	push	{lr}
	ldr	r1, .L_579b0
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_805793C
	pop	{r0}
	bx	r0
.L_579b0:
	.4byte	gCurrentSprite


thumb_func_start func_80579B4
func_80579B4:
	ldr	r2, .L_579e4
	ldr	r0, .L_579e8
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r1, #36	@ 0x24
	strb	r1, [r2, #30]
	sub	r3, #4
	mov	r0, #40	@ 0x28
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #38	@ 0x26
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_579e4:
	.4byte	gCurrentSprite
.L_579e8:
	.4byte	sUnk_83DC818


thumb_func_start func_80579EC
func_80579EC:
	push	{lr}
	ldr	r1, .L_579fc
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_80579B4
	pop	{r0}
	bx	r0
.L_579fc:
	.4byte	gCurrentSprite


thumb_func_start func_8057A00
func_8057A00:
	push	{lr}
	ldr	r1, .L_57a10
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_80579B4
	pop	{r0}
	bx	r0
.L_57a10:
	.4byte	gCurrentSprite


thumb_func_start func_8057A14
func_8057A14:
	ldr	r0, .L_57a34
	ldr	r1, .L_57a38
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #76	@ 0x4c
	strb	r1, [r0, #28]
	add	r3, r0, #0
	add	r3, #39	@ 0x27
	mov	r1, #20
	strb	r1, [r3, #0]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
.L_57a34:
	.4byte	gCurrentSprite
.L_57a38:
	.4byte	sUnk_83DC798


thumb_func_start func_8057A3C
func_8057A3C:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_57a74
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_57abe
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_57a78
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_57a7c
	mov	r0, #29
	b	.L_57ac0
.L_57a74:
	.4byte	gCurrentSprite
.L_57a78:
	.4byte	gSpriteCollisionTileType
.L_57a7c:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_57aa8
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_57aac
	cmp	r1, r0
	bne	.L_57ab0
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_57ac2
	.align	2, 0
.L_57aa8:
	.4byte	sUnk_8352B18
.L_57aac:
	.4byte	0x7FFF
.L_57ab0:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_57ac2
.L_57abe:
	mov	r0, #27
.L_57ac0:
	strb	r0, [r4, #28]
.L_57ac2:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8057AC8
func_8057AC8:
	ldr	r0, .L_57ae0
	ldr	r1, .L_57ae4
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #113	@ 0x71
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #50	@ 0x32
	strb	r1, [r0, #0]
	bx	lr
.L_57ae0:
	.4byte	gCurrentSprite
.L_57ae4:
	.4byte	sUnk_83DC898


thumb_func_start func_8057AE8
func_8057AE8:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r4, .L_57b24
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_57b40
	ldrh	r1, [r4, #0]
	mov	r6, #64	@ 0x40
	add	r0, r6, #0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L_57b28
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	str	r6, [sp, #4]
	mov	r0, #209	@ 0xd1
	bl	SpawnPrimarySpriteWithStatus
	b	.L_57b3a
	.align	2, 0
.L_57b24:
	.4byte	gCurrentSprite
.L_57b28:
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #209	@ 0xd1
	bl	SpawnPrimarySpriteWithStatus
.L_57b3a:
	ldr	r1, .L_57b48
	mov	r0, #0
	strh	r0, [r1, #0]
.L_57b40:
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_57b48:
	.4byte	gCurrentSprite


thumb_func_start func_8057B4C
func_8057B4C:
	push	{r4, lr}
	ldr	r0, .L_57bb0
	mov	ip, r0
	ldrh	r0, [r0, #0]
	mov	r2, #160	@ 0xa0
	mov	r3, #0
	mov	r4, #0
	orr	r2, r0
	ldr	r0, .L_57bb4
	and	r2, r0
	mov	r1, ip
	strh	r2, [r1, #0]
	add	r1, #32
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #2
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #140	@ 0x8c
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #28
	strb	r0, [r1, #0]
	ldr	r0, .L_57bb8
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	mov	r0, #9
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #40	@ 0x28
	strb	r3, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r2
	cmp	r0, #0
	beq	.L_57bbc
	mov	r0, #51	@ 0x33
	b	.L_57bc0
	.align	2, 0
.L_57bb0:
	.4byte	gCurrentSprite
.L_57bb4:
	.4byte	0xFFFB
.L_57bb8:
	.4byte	sUnk_83DC8F0
.L_57bbc:
	mov	r0, #53	@ 0x35
	mov	r1, ip
.L_57bc0:
	strb	r0, [r1, #28]
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8057BC8
func_8057BC8:
	ldr	r2, .L_57be4
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r1, #0
	mov	r0, #4
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #6
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_57be4:
	.4byte	gCurrentSprite


thumb_func_start func_8057BE8
func_8057BE8:
	push	{lr}
	ldr	r1, .L_57c00
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r2
	strh	r0, [r1, #0]
	bl	func_8057BC8
	pop	{r0}
	bx	r0
.L_57c00:
	.4byte	gCurrentSprite


thumb_func_start func_8057C04
func_8057C04:
	push	{lr}
	ldr	r1, .L_57c1c
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_57c20
	and	r0, r2
	strh	r0, [r1, #0]
	bl	func_8057BC8
	pop	{r0}
	bx	r0
.L_57c1c:
	.4byte	gCurrentSprite
.L_57c20:
	.4byte	0xFFBF


thumb_func_start func_8057C24
func_8057C24:
	push	{lr}
	bl	SpriteUtilDie
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8057C30
func_8057C30:
	ldr	r3, .L_57c54
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_57c58
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #7
	bhi	.L_57c5a
	mov	r0, #1
	strb	r0, [r3, #31]
	b	.L_57c5a
	.align	2, 0
.L_57c54:
	.4byte	gCurrentSprite
.L_57c58:
	strh	r0, [r3, #0]
.L_57c5a:
	bx	lr


thumb_func_start func_8057C5C
func_8057C5C:
	push	{r4, lr}
	ldr	r4, .L_57c98
	mov	r1, #0
	strb	r1, [r4, #29]
	add	r2, r4, #0
	add	r2, #41	@ 0x29
	mov	r0, #4
	strb	r0, [r2, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	strb	r1, [r4, #26]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r4, #0]
	ldr	r0, .L_57c9c
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_57c98:
	.4byte	gCurrentSprite
.L_57c9c:
	.4byte	0xFEFF


thumb_func_start func_8057CA0
func_8057CA0:
	push	{lr}
	ldr	r1, .L_57cb0
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8057C5C
	pop	{r0}
	bx	r0
.L_57cb0:
	.4byte	gCurrentSprite


thumb_func_start func_8057CB4
func_8057CB4:
	push	{lr}
	ldr	r1, .L_57cc4
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8057C5C
	pop	{r0}
	bx	r0
.L_57cc4:
	.4byte	gCurrentSprite


thumb_func_start SpriteDenden
SpriteDenden:
	push	{lr}
	ldr	r2, .L_57cf0
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_57cdc
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_57cdc:
	ldrb	r0, [r2, #28]
	cmp	r0, #113	@ 0x71
	bls	.L_57ce4
	b	.L_5802a
.L_57ce4:
	lsl	r0, r0, #2
	ldr	r1, .L_57cf4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_57cf0:
	.4byte	gCurrentSprite
.L_57cf4:
	.4byte	.L_57cf8
.L_57cf8:
	.4byte	.L_57ec0
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_57ec6
	.4byte	.L_57eca
	.4byte	.L_57eda
	.4byte	.L_57ede
	.4byte	.L_5802a
	.4byte	.L_57ede
	.4byte	.L_5802a
	.4byte	.L_57ede
	.4byte	.L_57ee4
	.4byte	.L_57ee8
	.4byte	.L_57eee
	.4byte	.L_57ef2
	.4byte	.L_57f02
	.4byte	.L_57f06
	.4byte	.L_57f0c
	.4byte	.L_57f10
	.4byte	.L_57f16
	.4byte	.L_57f1a
	.4byte	.L_57f20
	.4byte	.L_57f24
	.4byte	.L_57f2a
	.4byte	.L_57f4c
	.4byte	.L_57f36
	.4byte	.L_57f5c
	.4byte	.L_57f42
	.4byte	.L_57f4c
	.4byte	.L_57f52
	.4byte	.L_57f5c
	.4byte	.L_57f62
	.4byte	.L_57f66
	.4byte	.L_57f6c
	.4byte	.L_57f70
	.4byte	.L_57f76
	.4byte	.L_57f84
	.4byte	.L_57f90
	.4byte	.L_57f94
	.4byte	.L_57f9a
	.4byte	.L_5800a
	.4byte	.L_57fa0
	.4byte	.L_58018
	.4byte	.L_57fa6
	.4byte	.L_57faa
	.4byte	.L_57fb0
	.4byte	.L_58018
	.4byte	.L_57fb6
	.4byte	.L_57fba
	.4byte	.L_57fc0
	.4byte	.L_57fc4
	.4byte	.L_57fca
	.4byte	.L_5800a
	.4byte	.L_57fd0
	.4byte	.L_57fd4
	.4byte	.L_57fda
	.4byte	.L_57fea
	.4byte	.L_57fe0
	.4byte	.L_57ff4
	.4byte	.L_57fe6
	.4byte	.L_57fea
	.4byte	.L_57ff0
	.4byte	.L_57ff4
	.4byte	.L_57ffa
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_57f16
	.4byte	.L_57f20
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5801e
	.4byte	.L_58024
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_5802a
	.4byte	.L_57ef8
	.4byte	.L_57efc
	.4byte	.L_57ed0
	.4byte	.L_57ed4
.L_57ec0:
	bl	func_8057334
	b	.L_5802e
.L_57ec6:
	bl	func_805738C
.L_57eca:
	bl	func_80573B8
	b	.L_5802e
.L_57ed0:
	bl	func_8057AC8
.L_57ed4:
	bl	func_8057AE8
	b	.L_5802e
.L_57eda:
	bl	func_8057504
.L_57ede:
	bl	func_8057524
	b	.L_5802e
.L_57ee4:
	bl	func_80575B0
.L_57ee8:
	bl	func_8023C94
	b	.L_5802e
.L_57eee:
	bl	func_80575E0
.L_57ef2:
	bl	func_8023CD8
	b	.L_5802e
.L_57ef8:
	bl	func_8057624
.L_57efc:
	bl	func_805764C
	b	.L_5802e
.L_57f02:
	bl	func_8057604
.L_57f06:
	bl	func_8023D48
	b	.L_5802e
.L_57f0c:
	bl	func_8057700
.L_57f10:
	bl	func_8023EE0
	b	.L_5802e
.L_57f16:
	bl	func_8057774
.L_57f1a:
	bl	SpriteUtilFallOffscreenRight
	b	.L_5802e
.L_57f20:
	bl	func_8057788
.L_57f24:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_5802e
.L_57f2a:
	ldrb	r0, [r2, #30]
	cmp	r0, #36	@ 0x24
	beq	.L_58006
	bl	func_805782C
	b	.L_57f4c
.L_57f36:
	ldrb	r0, [r2, #30]
	cmp	r0, #36	@ 0x24
	beq	.L_58014
	bl	func_8057840
	b	.L_57f5c
.L_57f42:
	ldrb	r0, [r2, #30]
	cmp	r0, #36	@ 0x24
	beq	.L_58006
	bl	func_8057884
.L_57f4c:
	bl	SpriteUtilPushedRight
	b	.L_5802e
.L_57f52:
	ldrb	r0, [r2, #30]
	cmp	r0, #36	@ 0x24
	beq	.L_58014
	bl	func_8057898
.L_57f5c:
	bl	SpriteUtilPushedLeft
	b	.L_5802e
.L_57f62:
	bl	func_80578DC
.L_57f66:
	bl	func_8024478
	b	.L_5802e
.L_57f6c:
	bl	func_80578F0
.L_57f70:
	bl	func_802449C
	b	.L_5802e
.L_57f76:
	ldr	r0, .L_57f8c
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	bl	func_80244C0
.L_57f84:
	bl	func_80244E0
	b	.L_5802e
	.align	2, 0
.L_57f8c:
	.4byte	sUnk_83DC818
.L_57f90:
	bl	func_8057904
.L_57f94:
	bl	SpriteUtilDieAfterDelay
	b	.L_5802e
.L_57f9a:
	bl	func_805798C
	b	.L_5800a
.L_57fa0:
	bl	func_80579A0
	b	.L_58018
.L_57fa6:
	bl	func_8024688
.L_57faa:
	bl	func_80246B8
	b	.L_5802e
.L_57fb0:
	bl	func_802473C
	b	.L_58018
.L_57fb6:
	bl	func_80247F0
.L_57fba:
	bl	func_8024820
	b	.L_5802e
.L_57fc0:
	bl	func_80248A4
.L_57fc4:
	bl	func_80248D4
	b	.L_5802e
.L_57fca:
	bl	func_8024958
	b	.L_5800a
.L_57fd0:
	bl	func_8024A0C
.L_57fd4:
	bl	func_8024A3C
	b	.L_5802e
.L_57fda:
	bl	func_8024AC0
	b	.L_57fea
.L_57fe0:
	bl	func_8024BEC
	b	.L_57ff4
.L_57fe6:
	bl	func_80579EC
.L_57fea:
	bl	func_8024AD4
	b	.L_5802e
.L_57ff0:
	bl	func_8057A00
.L_57ff4:
	bl	func_8024C00
	b	.L_5802e
.L_57ffa:
	ldr	r0, .L_58010
	ldr	r0, [r0, #0]
	mov	r1, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_58014
.L_58006:
	bl	func_805798C
.L_5800a:
	bl	func_8024988
	b	.L_5802e
.L_58010:
	.4byte	gUnk_3000BEC
.L_58014:
	bl	func_80579A0
.L_58018:
	bl	func_802476C
	b	.L_5802e
.L_5801e:
	bl	func_80577E8
	b	.L_5802e
.L_58024:
	bl	func_80577D4
	b	.L_5802e
.L_5802a:
	bl	SpriteUtilDie
.L_5802e:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownD1
SpriteUnknownD1:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r2, .L_58060
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_5804c
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_5804c:
	ldrb	r0, [r2, #28]
	cmp	r0, #107	@ 0x6b
	bls	.L_58054
	b	.L_582f6
.L_58054:
	lsl	r0, r0, #2
	ldr	r1, .L_58064
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_58060:
	.4byte	gCurrentSprite
.L_58064:
	.4byte	.L_58068
.L_58068:
	.4byte	.L_58218
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582d6
	.4byte	.L_582da
	.4byte	.L_582e0
	.4byte	.L_582e4
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_5821e
	.4byte	.L_5821e
	.4byte	.L_58234
	.4byte	.L_58234
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f0
	.4byte	.L_5824c
	.4byte	.L_58284
	.4byte	.L_58252
	.4byte	.L_58266
	.4byte	.L_58258
	.4byte	.L_5825c
	.4byte	.L_58262
	.4byte	.L_58266
	.4byte	.L_5826c
	.4byte	.L_58270
	.4byte	.L_58276
	.4byte	.L_5827a
	.4byte	.L_58280
	.4byte	.L_58284
	.4byte	.L_5828a
	.4byte	.L_5828e
	.4byte	.L_58294
	.4byte	.L_582b0
	.4byte	.L_582b6
	.4byte	.L_582d0
	.4byte	.L_58294
	.4byte	.L_582f6
	.4byte	.L_582b6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582d6
	.4byte	.L_582e0
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582f6
	.4byte	.L_582ea
.L_58218:
	bl	func_8057B4C
	b	.L_582fa
.L_5821e:
	ldr	r0, .L_58230
	add	r0, #41	@ 0x29
	mov	r1, #5
	strb	r1, [r0, #0]
	bl	func_80238E8
	bl	func_8025E98
	b	.L_582fa
.L_58230:
	.4byte	gCurrentSprite
.L_58234:
	ldr	r0, .L_58248
	add	r0, #41	@ 0x29
	mov	r1, #5
	strb	r1, [r0, #0]
	bl	func_80238E8
	bl	func_8025DE8
	b	.L_582fa
	.align	2, 0
.L_58248:
	.4byte	gCurrentSprite
.L_5824c:
	bl	func_8057BE8
	b	.L_58284
.L_58252:
	bl	func_8057C04
	b	.L_58266
.L_58258:
	bl	func_8024688
.L_5825c:
	bl	func_80246B8
	b	.L_582fa
.L_58262:
	bl	func_802473C
.L_58266:
	bl	func_802476C
	b	.L_582fa
.L_5826c:
	bl	func_80247F0
.L_58270:
	bl	func_8024820
	b	.L_582fa
.L_58276:
	bl	func_80248A4
.L_5827a:
	bl	func_80248D4
	b	.L_582fa
.L_58280:
	bl	func_8024958
.L_58284:
	bl	func_8024988
	b	.L_582fa
.L_5828a:
	bl	func_8024A0C
.L_5828e:
	bl	func_8024A3C
	b	.L_582fa
.L_58294:
	ldr	r2, .L_582a8
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_582ac
	mov	r0, #49	@ 0x31
	strb	r0, [r2, #28]
	b	.L_582b0
	.align	2, 0
.L_582a8:
	.4byte	gCurrentSprite
.L_582ac:
	bl	func_8024AC0
.L_582b0:
	bl	func_8024AD4
	b	.L_582fa
.L_582b6:
	ldr	r2, .L_582c8
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_582cc
	bl	func_8024BEC
	b	.L_582d0
.L_582c8:
	.4byte	gCurrentSprite
.L_582cc:
	mov	r0, #49	@ 0x31
	strb	r0, [r2, #28]
.L_582d0:
	bl	func_8024C00
	b	.L_582fa
.L_582d6:
	bl	func_8057CA0
.L_582da:
	bl	SpriteUtilFallOffscreenRight
	b	.L_582fa
.L_582e0:
	bl	func_8057CB4
.L_582e4:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_582fa
.L_582ea:
	bl	SpriteUtilDie
	b	.L_582fa
.L_582f0:
	bl	func_8057C30
	b	.L_582fa
.L_582f6:
	bl	func_8057C24
.L_582fa:
	ldr	r1, .L_58318
	ldrh	r2, [r1, #0]
	mov	r0, #128	@ 0x80
	and	r0, r2
	add	r7, r1, #0
	cmp	r0, #0
	beq	.L_583a0
	mov	r0, #64	@ 0x40
	and	r0, r2
	cmp	r0, #0
	beq	.L_5831c
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	add	r0, #5
	b	.L_58324
.L_58318:
	.4byte	gCurrentSprite
.L_5831c:
	add	r1, r7, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	sub	r0, #5
.L_58324:
	strb	r0, [r1, #0]
	ldr	r0, .L_583ac
	mov	r8, r0
	add	r6, r7, #0
	add	r6, #40	@ 0x28
	ldrb	r0, [r6, #0]
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
	strh	r0, [r7, #12]
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #14]
	ldrb	r0, [r6, #0]
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
	strh	r0, [r7, #16]
	ldrb	r0, [r6, #0]
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
	strh	r0, [r7, #18]
.L_583a0:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_583ac:
	.4byte	sSinCosTable
