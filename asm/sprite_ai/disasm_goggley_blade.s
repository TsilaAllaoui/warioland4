.include "macros.s.inc"


thumb_func_start func_8044FDC
func_8044FDC:
	ldr	r2, .L_45000
	ldrh	r1, [r2, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #3
	add	r0, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #75	@ 0x4b
	strb	r0, [r2, #30]
	add	r0, r2, #0
	add	r0, #32
	mov	r1, #16
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	bx	lr
.L_45000:
	.4byte	gCurrentSprite


thumb_func_start func_8045004
func_8045004:
	push	{r4, lr}
	ldr	r2, .L_4504c
	ldr	r0, .L_45050
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #2
	strb	r1, [r0, #0]
	mov	r0, #16
	strb	r0, [r2, #28]
	mov	r0, #75	@ 0x4b
	strb	r0, [r2, #30]
	add	r0, r2, #0
	add	r0, #35	@ 0x23
	mov	r4, #40	@ 0x28
	strb	r4, [r0, #0]
	add	r0, #1
	mov	r3, #24
	strb	r3, [r0, #0]
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_45054
	add	r0, r2, #0
	add	r0, #37	@ 0x25
	strb	r3, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
	b	.L_4505e
	.align	2, 0
.L_4504c:
	.4byte	gCurrentSprite
.L_45050:
	.4byte	sUnk_83C89F0
.L_45054:
	add	r0, r2, #0
	add	r0, #37	@ 0x25
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r3, [r0, #0]
.L_4505e:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8045064
func_8045064:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r1, #225	@ 0xe1
	lsl	r1, r1, #1
	mov	r0, #70	@ 0x46
	bl	SpriteUtilCheckWarioNearbyLeftRight
	mov	r8, r0
	ldr	r4, .L_450c4
	ldrb	r0, [r4, #23]
	mov	r7, #3
	cmp	r0, #75	@ 0x4b
	bne	.L_45082
	mov	r7, #1
.L_45082:
	mov	r0, #41	@ 0x29
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r3, .L_450c8
	lsl	r0, r2, #1
	add	r0, r0, r3
	ldrh	r5, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_450cc
	cmp	r1, r0
	bne	.L_450aa
	ldrh	r5, [r3, #0]
	mov	r2, #0
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
.L_450aa:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_45108
	mov	r6, r8
	cmp	r6, #8
	bne	.L_450d0
	mov	r0, #112	@ 0x70
	b	.L_4513e
.L_450c4:
	.4byte	gCurrentSprite
.L_450c8:
	.4byte	sUnk_83C8CD0
.L_450cc:
	.4byte	0x7FFF
.L_450d0:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	add	r1, #76	@ 0x4c
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_450f0
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_450f4
	mov	r0, #19
	b	.L_4513e
	.align	2, 0
.L_450f0:
	.4byte	gSpriteCollisionTileType
.L_450f4:
	ldrh	r0, [r4, #10]
	add	r0, r0, r5
	strh	r0, [r4, #10]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, r7
	bne	.L_45140
	mov	r0, #19
	b	.L_4513e
.L_45108:
	mov	r0, r8
	cmp	r0, #4
	bne	.L_45112
	mov	r0, #112	@ 0x70
	b	.L_4513e
.L_45112:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	sub	r1, #76	@ 0x4c
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_4514c
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_4513c
	ldrh	r0, [r4, #10]
	sub	r0, r0, r5
	strh	r0, [r4, #10]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, r7
	bne	.L_45140
.L_4513c:
	mov	r0, #17
.L_4513e:
	strb	r0, [r4, #28]
.L_45140:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4514c:
	.4byte	gSpriteCollisionTileType


thumb_func_start func_8045150
func_8045150:
	ldr	r1, .L_4516c
	ldr	r0, .L_45170
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #18
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_4516c:
	.4byte	gCurrentSprite
.L_45170:
	.4byte	sUnk_83C8C60


thumb_func_start func_8045174
func_8045174:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_451b4
	add	r4, r0, #0
	add	r4, #42	@ 0x2a
	ldrb	r2, [r4, #0]
	add	r5, r0, #0
	cmp	r2, #8
	bne	.L_45194
	ldrh	r0, [r5, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r5, #0]
	mov	r0, #76	@ 0x4c
	strb	r0, [r5, #30]
.L_45194:
	ldr	r3, .L_451b8
	lsl	r0, r2, #1
	add	r0, r0, r3
	ldrh	r6, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_451bc
	cmp	r1, r0
	bne	.L_451c0
	sub	r0, r2, #1
	lsl	r0, r0, #1
	add	r0, r0, r3
	ldrh	r6, [r0, #0]
	mov	r0, #110	@ 0x6e
	strb	r0, [r5, #28]
	b	.L_451c4
.L_451b4:
	.4byte	gCurrentSprite
.L_451b8:
	.4byte	sUnk_83C8DAE
.L_451bc:
	.4byte	0x7FFF
.L_451c0:
	add	r0, r2, #1
	strb	r0, [r4, #0]
.L_451c4:
	add	r4, r5, #0
	ldrh	r0, [r4, #8]
	add	r0, #56	@ 0x38
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r7, .L_45210
	ldrb	r1, [r7, #0]
	mov	r0, #15
	mov	r8, r0
	and	r0, r1
	cmp	r0, #0
	bne	.L_451e8
	ldrh	r0, [r4, #8]
	add	r0, r0, r6
	strh	r0, [r4, #8]
.L_451e8:
	ldrh	r0, [r5, #8]
	ldrh	r1, [r5, #10]
	sub	r1, #56	@ 0x38
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r7, #0]
	mov	r0, r8
	and	r0, r1
	cmp	r0, #0
	bne	.L_45206
	ldrh	r0, [r5, #10]
	sub	r0, #1
	strh	r0, [r5, #10]
.L_45206:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_45210:
	.4byte	gSpriteCollisionTileType


thumb_func_start func_8045214
func_8045214:
	ldr	r1, .L_45230
	ldr	r0, .L_45234
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #20
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_45230:
	.4byte	gCurrentSprite
.L_45234:
	.4byte	sUnk_83C8C98


thumb_func_start func_8045238
func_8045238:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_45274
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	cmp	r2, #8
	bne	.L_45254
	ldrh	r0, [r3, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r3, #0]
	mov	r0, #77	@ 0x4d
	strb	r0, [r3, #30]
.L_45254:
	ldr	r4, .L_45278
	lsl	r0, r2, #1
	add	r0, r0, r4
	ldrh	r5, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_4527c
	cmp	r1, r0
	bne	.L_45280
	sub	r0, r2, #1
	lsl	r0, r0, #1
	add	r0, r0, r4
	ldrh	r5, [r0, #0]
	mov	r0, #110	@ 0x6e
	strb	r0, [r3, #28]
	b	.L_45286
.L_45274:
	.4byte	gCurrentSprite
.L_45278:
	.4byte	sUnk_83C8DAE
.L_4527c:
	.4byte	0x7FFF
.L_45280:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
.L_45286:
	ldr	r4, .L_452d8
	ldrh	r0, [r4, #8]
	sub	r0, #56	@ 0x38
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_452dc
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_452b0
	ldr	r0, .L_452e0
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_452b0
	ldrh	r0, [r4, #8]
	sub	r0, r0, r5
	strh	r0, [r4, #8]
.L_452b0:
	ldr	r4, .L_452d8
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	add	r1, #56	@ 0x38
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_452e0
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_452d2
	ldrh	r0, [r4, #10]
	add	r0, #1
	strh	r0, [r4, #10]
.L_452d2:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_452d8:
	.4byte	gCurrentSprite
.L_452dc:
	.4byte	gUnk_30000A0
.L_452e0:
	.4byte	gSpriteCollisionTileType


thumb_func_start func_80452E4
func_80452E4:
	push	{r4, lr}
	ldr	r2, .L_45314
	add	r0, r2, #0
	add	r0, #37	@ 0x25
	mov	r4, #24
	strb	r4, [r0, #0]
	add	r0, #1
	mov	r3, #40	@ 0x28
	strb	r3, [r0, #0]
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4531c
	ldr	r0, .L_45318
	str	r0, [r2, #4]
	mov	r0, #76	@ 0x4c
	strb	r0, [r2, #30]
	add	r0, r2, #0
	add	r0, #35	@ 0x23
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r3, [r0, #0]
	b	.L_4532e
.L_45314:
	.4byte	gCurrentSprite
.L_45318:
	.4byte	sUnk_83C8B70
.L_4531c:
	ldr	r0, .L_4534c
	str	r0, [r2, #4]
	mov	r0, #77	@ 0x4d
	strb	r0, [r2, #30]
	add	r0, r2, #0
	add	r0, #35	@ 0x23
	strb	r3, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
.L_4532e:
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #2
	strb	r1, [r0, #0]
	mov	r0, #111	@ 0x6f
	strb	r0, [r2, #28]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4534c:
	.4byte	sUnk_83C8AB0


thumb_func_start func_8045350
func_8045350:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #225	@ 0xe1
	lsl	r0, r0, #1
	mov	r1, #70	@ 0x46
	bl	SpriteUtilCheckWarioNearbyAboveBelow
	add	r6, r0, #0
	ldr	r4, .L_453d0
	ldrb	r0, [r4, #23]
	mov	r1, #1
	mov	r8, r1
	cmp	r0, #75	@ 0x4b
	bne	.L_45372
	mov	r7, #3
	mov	r8, r7
.L_45372:
	mov	r0, #41	@ 0x29
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r3, .L_453d4
	lsl	r0, r2, #1
	add	r0, r0, r3
	ldrh	r5, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_453d8
	cmp	r1, r0
	bne	.L_4539a
	ldrh	r5, [r3, #0]
	mov	r2, #0
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
.L_4539a:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_453e0
	cmp	r6, #2
	beq	.L_453e4
	ldrh	r0, [r4, #8]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_453dc
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_4540c
	ldrh	r0, [r4, #8]
	add	r0, r0, r5
	b	.L_45420
	.align	2, 0
.L_453d0:
	.4byte	gCurrentSprite
.L_453d4:
	.4byte	sUnk_83C8CD0
.L_453d8:
	.4byte	0x7FFF
.L_453dc:
	.4byte	gSpriteCollisionTileType
.L_453e0:
	cmp	r6, #1
	bne	.L_453ea
.L_453e4:
	mov	r0, #112	@ 0x70
	strb	r0, [r4, #28]
	b	.L_45432
.L_453ea:
	ldrh	r0, [r4, #8]
	sub	r0, #76	@ 0x4c
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_45414
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_4540c
	ldr	r0, .L_45418
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_4541c
.L_4540c:
	mov	r0, #21
	strb	r0, [r4, #28]
	b	.L_45432
	.align	2, 0
.L_45414:
	.4byte	gUnk_30000A0
.L_45418:
	.4byte	gSpriteCollisionTileType
.L_4541c:
	ldrh	r0, [r4, #8]
	sub	r0, r0, r5
.L_45420:
	strh	r0, [r4, #8]
	ldr	r1, .L_4543c
	add	r0, r1, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, r8
	bne	.L_45432
	mov	r0, #21
	strb	r0, [r1, #28]
.L_45432:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_4543c:
	.4byte	gCurrentSprite


thumb_func_start func_8045440
func_8045440:
	ldr	r0, .L_45450
	add	r2, r0, #0
	add	r2, #42	@ 0x2a
	mov	r1, #0
	strb	r1, [r2, #0]
	mov	r1, #22
	strb	r1, [r0, #28]
	bx	lr
.L_45450:
	.4byte	gCurrentSprite


thumb_func_start func_8045454
func_8045454:
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L_45484
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r4, .L_45488
	lsl	r0, r3, #1
	add	r0, r0, r4
	ldrh	r6, [r0, #0]
	mov	r5, #0
	ldrsh	r1, [r0, r5]
	ldr	r0, .L_4548c
	add	r5, r2, #0
	cmp	r1, r0
	bne	.L_45490
	sub	r0, r3, #1
	lsl	r0, r0, #1
	add	r0, r0, r4
	ldrh	r6, [r0, #0]
	mov	r0, #15
	strb	r0, [r5, #28]
	b	.L_45496
	.align	2, 0
.L_45484:
	.4byte	gCurrentSprite
.L_45488:
	.4byte	sUnk_83C8DAE
.L_4548c:
	.4byte	0x7FFF
.L_45490:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
.L_45496:
	add	r4, r5, #0
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_454e8
	ldrh	r0, [r4, #8]
	add	r0, #56	@ 0x38
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r5, .L_454e4
	ldrb	r1, [r5, #0]
	mov	r7, #15
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_454c4
	ldrh	r0, [r4, #8]
	add	r0, #1
	strh	r0, [r4, #8]
.L_454c4:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	add	r1, #56	@ 0x38
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_45532
	ldrh	r0, [r4, #10]
	add	r0, r0, r6
	b	.L_45530
	.align	2, 0
.L_454e4:
	.4byte	gSpriteCollisionTileType
.L_454e8:
	ldrh	r0, [r5, #8]
	sub	r0, #56	@ 0x38
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r5, #10]
	bl	func_8023BFC
	ldr	r0, .L_45538
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_45510
	ldr	r0, .L_4553c
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_45510
	ldrh	r0, [r5, #8]
	sub	r0, #1
	strh	r0, [r5, #8]
.L_45510:
	ldr	r4, .L_45540
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	sub	r1, #56	@ 0x38
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_4553c
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_45532
	ldrh	r0, [r4, #10]
	sub	r0, r0, r6
.L_45530:
	strh	r0, [r4, #10]
.L_45532:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_45538:
	.4byte	gUnk_30000A0
.L_4553c:
	.4byte	gSpriteCollisionTileType
.L_45540:
	.4byte	gCurrentSprite


thumb_func_start func_8045544
func_8045544:
	ldr	r0, .L_45554
	ldrb	r1, [r0, #30]
	add	r2, r0, #0
	cmp	r1, #76	@ 0x4c
	bne	.L_4555c
	ldr	r0, .L_45558
	b	.L_4556a
	.align	2, 0
.L_45554:
	.4byte	gCurrentSprite
.L_45558:
	.4byte	sUnk_83C8BB8
.L_4555c:
	cmp	r1, #77	@ 0x4d
	bne	.L_45568
	ldr	r0, .L_45564
	b	.L_4556a
.L_45564:
	.4byte	sUnk_83C8AF8
.L_45568:
	ldr	r0, .L_45580
.L_4556a:
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #20
	strb	r0, [r1, #0]
	mov	r0, #36	@ 0x24
	strb	r0, [r2, #28]
	bx	lr
.L_45580:
	.4byte	sUnk_83C8A38


thumb_func_start func_8045584
func_8045584:
	push	{r4, lr}
	ldr	r4, .L_455bc
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_45668
	ldrb	r0, [r4, #30]
	cmp	r0, #76	@ 0x4c
	bne	.L_455cc
	ldrh	r0, [r4, #8]
	add	r0, #76	@ 0x4c
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_455c0
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_455c4
	mov	r0, #21
	b	.L_4567c
.L_455bc:
	.4byte	gCurrentSprite
.L_455c0:
	.4byte	gSpriteCollisionTileType
.L_455c4:
	ldrh	r0, [r4, #8]
	add	r0, #8
	strh	r0, [r4, #8]
	b	.L_4567e
.L_455cc:
	cmp	r0, #77	@ 0x4d
	bne	.L_45608
	ldrh	r0, [r4, #8]
	sub	r0, #76	@ 0x4c
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_455f8
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_455f2
	ldr	r0, .L_455fc
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_45600
.L_455f2:
	mov	r0, #21
	b	.L_4567c
	.align	2, 0
.L_455f8:
	.4byte	gUnk_30000A0
.L_455fc:
	.4byte	gSpriteCollisionTileType
.L_45600:
	ldrh	r0, [r4, #8]
	sub	r0, #8
	strh	r0, [r4, #8]
	b	.L_4567e
.L_45608:
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4563c
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	add	r1, #76	@ 0x4c
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_45630
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_45634
	mov	r0, #19
	b	.L_4567c
.L_45630:
	.4byte	gSpriteCollisionTileType
.L_45634:
	ldrh	r0, [r4, #10]
	add	r0, #8
	strh	r0, [r4, #10]
	b	.L_4567e
.L_4563c:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	sub	r1, #76	@ 0x4c
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_4565c
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_45660
	mov	r0, #17
	b	.L_4567c
	.align	2, 0
.L_4565c:
	.4byte	gSpriteCollisionTileType
.L_45660:
	ldrh	r0, [r4, #10]
	sub	r0, #8
	strh	r0, [r4, #10]
	b	.L_4567e
.L_45668:
	ldrb	r0, [r4, #30]
	cmp	r0, #76	@ 0x4c
	bne	.L_45672
	mov	r0, #21
	b	.L_4567c
.L_45672:
	cmp	r0, #77	@ 0x4d
	bne	.L_4567a
	mov	r0, #110	@ 0x6e
	b	.L_4567c
.L_4567a:
	mov	r0, #15
.L_4567c:
	strb	r0, [r4, #28]
.L_4567e:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8045684
func_8045684:
	ldr	r0, .L_45694
	ldrb	r1, [r0, #30]
	add	r2, r0, #0
	cmp	r1, #76	@ 0x4c
	bne	.L_4569c
	ldr	r0, .L_45698
	b	.L_456aa
	.align	2, 0
.L_45694:
	.4byte	gCurrentSprite
.L_45698:
	.4byte	sUnk_83C8BB8
.L_4569c:
	cmp	r1, #77	@ 0x4d
	bne	.L_456a8
	ldr	r0, .L_456a4
	b	.L_456aa
.L_456a4:
	.4byte	sUnk_83C8AF8
.L_456a8:
	ldr	r0, .L_456c0
.L_456aa:
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r1, #0]
	mov	r0, #113	@ 0x71
	strb	r0, [r2, #28]
	bx	lr
.L_456c0:
	.4byte	sUnk_83C8A38


thumb_func_start func_80456C4
func_80456C4:
	push	{lr}
	ldr	r1, .L_456e4
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_45714
	ldrb	r0, [r1, #30]
	cmp	r0, #76	@ 0x4c
	bne	.L_456ec
	ldr	r0, .L_456e8
	b	.L_456fa
	.align	2, 0
.L_456e4:
	.4byte	gCurrentSprite
.L_456e8:
	.4byte	sUnk_83C8BE0
.L_456ec:
	cmp	r0, #77	@ 0x4d
	bne	.L_456f8
	ldr	r0, .L_456f4
	b	.L_456fa
.L_456f4:
	.4byte	sUnk_83C8B20
.L_456f8:
	ldr	r0, .L_45718
.L_456fa:
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #0]
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	mov	r0, #72	@ 0x48
	bl	m4aSongNumStart
.L_45714:
	pop	{r0}
	bx	r0
.L_45718:
	.4byte	sUnk_83C8A60


thumb_func_start func_804571C
func_804571C:
	push	{r4, r5, lr}
	ldr	r0, .L_4572c
	ldrb	r1, [r0, #30]
	add	r5, r0, #0
	cmp	r1, #76	@ 0x4c
	bne	.L_45734
	ldr	r0, .L_45730
	b	.L_45742
.L_4572c:
	.4byte	gCurrentSprite
.L_45730:
	.4byte	sUnk_83C8C08
.L_45734:
	cmp	r1, #77	@ 0x4d
	bne	.L_45740
	ldr	r0, .L_4573c
	b	.L_45742
.L_4573c:
	.4byte	sUnk_83C8B48
.L_45740:
	ldr	r0, .L_457a0
.L_45742:
	str	r0, [r5, #4]
	mov	r0, #0
	strb	r0, [r5, #22]
	mov	r4, #0
	strh	r0, [r5, #20]
	strb	r4, [r5, #29]
	add	r1, r5, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
	strb	r4, [r5, #26]
	ldrb	r0, [r5, #23]
	ldrh	r1, [r5, #8]
	ldrh	r2, [r5, #10]
	mov	r3, #1
	bl	func_807687C
	ldrh	r0, [r5, #8]
	sub	r0, #32
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldr	r1, .L_457a4
	ldr	r0, .L_457a8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r2, [r5, #24]
	add	r0, r0, r2
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	ldrh	r1, [r5, #0]
	ldr	r0, .L_457ac
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_457a0:
	.4byte	sUnk_83C8A88
.L_457a4:
	.4byte	gPersistentSpriteData
.L_457a8:
	.4byte	gCurrentRoom
.L_457ac:
	.4byte	0xFEFF


thumb_func_start func_80457B0
func_80457B0:
	push	{lr}
	ldr	r1, .L_457c0
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_804571C
	pop	{r0}
	bx	r0
.L_457c0:
	.4byte	gCurrentSprite


thumb_func_start func_80457C4
func_80457C4:
	push	{lr}
	ldr	r1, .L_457d4
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_804571C
	pop	{r0}
	bx	r0
.L_457d4:
	.4byte	gCurrentSprite


thumb_func_start SpriteGoggleyBlade
SpriteGoggleyBlade:
	push	{lr}
	ldr	r0, .L_457f0
	ldrb	r0, [r0, #28]
	cmp	r0, #113	@ 0x71
	bls	.L_457e4
	b	.L_45a1e
.L_457e4:
	lsl	r0, r0, #2
	ldr	r1, .L_457f4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_457f0:
	.4byte	gCurrentSprite
.L_457f4:
	.4byte	.L_457f8
.L_457f8:
	.4byte	.L_459c0
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_459c4
	.4byte	.L_459c8
	.4byte	.L_459ce
	.4byte	.L_459d2
	.4byte	.L_459d8
	.4byte	.L_459dc
	.4byte	.L_459f6
	.4byte	.L_459fa
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a0a
	.4byte	.L_45a0e
	.4byte	.L_45a14
	.4byte	.L_45a18
	.4byte	.L_45a00
	.4byte	.L_45a04
	.4byte	.L_45a00
	.4byte	.L_45a1e
	.4byte	.L_45a00
	.4byte	.L_45a1e
	.4byte	.L_45a00
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a00
	.4byte	.L_45a1e
	.4byte	.L_45a00
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_45a1e
	.4byte	.L_459e2
	.4byte	.L_459e6
	.4byte	.L_459ec
	.4byte	.L_459f0
.L_459c0:
	bl	func_8044FDC
.L_459c4:
	bl	func_8045004
.L_459c8:
	bl	func_8045064
	b	.L_45a22
.L_459ce:
	bl	func_8045150
.L_459d2:
	bl	func_8045174
	b	.L_45a22
.L_459d8:
	bl	func_8045214
.L_459dc:
	bl	func_8045238
	b	.L_45a22
.L_459e2:
	bl	func_80452E4
.L_459e6:
	bl	func_8045350
	b	.L_45a22
.L_459ec:
	bl	func_8045684
.L_459f0:
	bl	func_80456C4
	b	.L_45a22
.L_459f6:
	bl	func_8045440
.L_459fa:
	bl	func_8045454
	b	.L_45a22
.L_45a00:
	bl	func_8045544
.L_45a04:
	bl	func_8045584
	b	.L_45a22
.L_45a0a:
	bl	func_80457B0
.L_45a0e:
	bl	SpriteUtilFallOffscreenRight
	b	.L_45a22
.L_45a14:
	bl	func_80457C4
.L_45a18:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_45a22
.L_45a1e:
	bl	SpriteUtilDie
.L_45a22:
	pop	{r0}
	bx	r0
	.align	2, 0
