.include "macros.s.inc"


thumb_func_start func_8038014
func_8038014:
	push	{r4, r5, r6, r7, lr}
	ldr	r1, .L_38050
	ldrb	r6, [r1, #24]
	mov	r4, #0
	mov	ip, r1
	ldr	r7, .L_38054
.L_38020:
	mov	r1, #44	@ 0x2c
	mul	r1, r4
	add	r3, r1, r7
	ldrb	r1, [r3, #23]
	cmp	r1, #38	@ 0x26
	bne	.L_38058
	ldrh	r2, [r3, #0]
	mov	r5, #1
	mov	r1, #1
	and	r1, r2
	cmp	r1, #0
	beq	.L_38058
	ldrb	r1, [r3, #24]
	cmp	r6, r1
	beq	.L_38058
	add	r1, r3, #0
	add	r1, #40	@ 0x28
	ldrb	r1, [r1, #0]
	cmp	r1, #0
	beq	.L_38058
	mov	r1, ip
	strb	r5, [r1, #31]
	b	.L_3805e
	.align	2, 0
.L_38050:
	.4byte	gCurrentSprite
.L_38054:
	.4byte	gSpriteData
.L_38058:
	add	r4, #1
	cmp	r4, #23
	ble	.L_38020
.L_3805e:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_8038064
func_8038064:
	push	{r4, lr}
	ldr	r0, .L_380d4
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
	mov	r0, #29
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r1, #16
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r1, ip
	add	r1, #34	@ 0x22
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #4
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	mov	r1, #64	@ 0x40
	strb	r1, [r0, #0]
	mov	r4, ip
	add	r4, #37	@ 0x25
	mov	r0, #68	@ 0x44
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #38	@ 0x26
	strb	r1, [r0, #0]
	ldr	r0, .L_380d8
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #24
	strb	r0, [r1, #28]
	ldrh	r0, [r1, #8]
	sub	r0, #12
	strh	r0, [r1, #8]
	mov	r0, ip
	add	r0, #41	@ 0x29
	strb	r2, [r0, #0]
	sub	r0, #1
	strb	r2, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_380d4:
	.4byte	gCurrentSprite
.L_380d8:
	.4byte	sUnk_83BE1D4


thumb_func_start func_80380DC
func_80380DC:
	ldr	r2, .L_3811c
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	ldrh	r3, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r3
	cmp	r0, #0
	beq	.L_3813c
	ldr	r0, .L_38120
	str	r0, [r2, #4]
	mov	r0, #22
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r0, .L_38124
	ldrh	r1, [r0, #14]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_3812c
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_38128
	and	r0, r3
	strh	r0, [r2, #0]
	b	.L_38170
.L_3811c:
	.4byte	gCurrentSprite
.L_38120:
	.4byte	sUnk_83BE164
.L_38124:
	.4byte	gWarioData
.L_38128:
	.4byte	0xFFBF
.L_3812c:
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #2
	strb	r0, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r3
	strh	r0, [r2, #0]
	b	.L_38170
.L_3813c:
	ldr	r0, .L_38164
	str	r0, [r2, #4]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r1, #0]
	mov	r0, #20
	strb	r0, [r2, #28]
	add	r2, #41	@ 0x29
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_38170
	ldr	r0, .L_38168
	ldrh	r1, [r0, #14]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_3816c
	mov	r0, #1
	b	.L_3816e
.L_38164:
	.4byte	sUnk_83BE19C
.L_38168:
	.4byte	gWarioData
.L_3816c:
	mov	r0, #2
.L_3816e:
	strb	r0, [r2, #0]
.L_38170:
	bx	lr
	.align	2, 0


thumb_func_start func_8038174
func_8038174:
	push	{lr}
	ldr	r2, .L_381b0
	ldrh	r3, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r3
	cmp	r0, #0
	beq	.L_381d0
	ldr	r0, .L_381b4
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
	ldr	r0, .L_381b8
	ldrh	r1, [r0, #14]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_381c0
	ldr	r0, .L_381bc
	and	r0, r3
	strh	r0, [r2, #0]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_381ea
	.align	2, 0
.L_381b0:
	.4byte	gCurrentSprite
.L_381b4:
	.4byte	sUnk_83BE19C
.L_381b8:
	.4byte	gWarioData
.L_381bc:
	.4byte	0xFFBF
.L_381c0:
	mov	r0, #64	@ 0x40
	orr	r0, r3
	strh	r0, [r2, #0]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #2
	strb	r0, [r1, #0]
	b	.L_381ea
.L_381d0:
	ldrh	r0, [r2, #8]
	add	r0, #12
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r2, #10]
	bl	func_8023BFC
	ldr	r0, .L_381f0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_381ea
	bl	func_80380DC
.L_381ea:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_381f0:
	.4byte	gUnk_3000A51


thumb_func_start func_80381F4
func_80381F4:
	push	{r4, lr}
	bl	func_8023B88
	ldr	r0, .L_38208
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_3820c
	bl	func_80380DC
	b	.L_38280
.L_38208:
	.4byte	gSpriteCollisionResult
.L_3820c:
	ldr	r3, .L_3823c
	ldrh	r4, [r3, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r4
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, #0
	beq	.L_38260
	ldr	r0, .L_38240
	ldrh	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_38248
	add	r1, r3, #0
	add	r1, #41	@ 0x29
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_38244
	and	r0, r4
	strh	r0, [r3, #0]
	b	.L_38280
	.align	2, 0
.L_3823c:
	.4byte	gCurrentSprite
.L_38240:
	.4byte	gButtonsPressed
.L_38244:
	.4byte	0xFFBF
.L_38248:
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_38280
	add	r1, r3, #0
	add	r1, #41	@ 0x29
	mov	r0, #2
	strb	r0, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r4
	strh	r0, [r3, #0]
	b	.L_38280
.L_38260:
	mov	r0, #6
	strb	r0, [r3, #31]
	ldr	r0, .L_38288
	str	r0, [r3, #4]
	strb	r2, [r3, #22]
	mov	r1, #0
	strh	r2, [r3, #20]
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	mov	r0, #36	@ 0x24
	strb	r0, [r2, #0]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #18
	strb	r0, [r3, #28]
.L_38280:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_38288:
	.4byte	sUnk_83BE19C


thumb_func_start func_803828C
func_803828C:
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L_382d0
	ldrh	r2, [r4, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r2
	cmp	r0, #0
	beq	.L_382f0
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	ldr	r0, .L_382d4
	str	r0, [r4, #4]
	mov	r0, #22
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r0, .L_382d8
	ldrh	r1, [r0, #14]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_382e0
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_382dc
	and	r0, r2
	strh	r0, [r4, #0]
	b	.L_38440
	.align	2, 0
.L_382d0:
	.4byte	gCurrentSprite
.L_382d4:
	.4byte	sUnk_83BE164
.L_382d8:
	.4byte	gWarioData
.L_382dc:
	.4byte	0xFFBF
.L_382e0:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #2
	strb	r0, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r2
	strh	r0, [r4, #0]
	b	.L_38440
.L_382f0:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_38302
	b	.L_3843c
.L_38302:
	ldrh	r0, [r4, #8]
	sub	r0, #16
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r5, .L_38360
	ldrb	r1, [r5, #0]
	mov	r6, #15
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_3835a
	ldrh	r0, [r4, #8]
	sub	r0, #16
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #64	@ 0x40
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_3835a
	ldrh	r0, [r4, #8]
	sub	r0, #16
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #64	@ 0x40
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_38364
.L_3835a:
	bl	func_80380DC
	b	.L_38440
.L_38360:
	.4byte	gUnk_3000A51
.L_38364:
	add	r6, r4, #0
	add	r6, #42	@ 0x2a
	ldrb	r2, [r6, #0]
	ldr	r5, .L_3838c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_38390
	cmp	r1, r0
	bne	.L_38394
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_3839c
	.align	2, 0
.L_3838c:
	.4byte	sUnk_83BE234
.L_38390:
	.4byte	0x7FFF
.L_38394:
	add	r0, r2, #1
	strb	r0, [r6, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_3839c:
	strh	r0, [r4, #8]
	ldr	r4, .L_383e8
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_383f4
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #80	@ 0x50
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_383ec
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_38440
	ldrh	r0, [r4, #10]
	sub	r0, #1
	strh	r0, [r4, #10]
	ldrh	r1, [r4, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_38440
	ldr	r1, .L_383f0
	ldrh	r0, [r1, #18]
	sub	r0, #3
	strh	r0, [r1, #18]
	b	.L_38440
	.align	2, 0
.L_383e8:
	.4byte	gCurrentSprite
.L_383ec:
	.4byte	gUnk_3000A51
.L_383f0:
	.4byte	gWarioData
.L_383f4:
	cmp	r0, #2
	bne	.L_38440
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #76	@ 0x4c
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_38434
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_38440
	ldrh	r0, [r4, #10]
	add	r0, #1
	strh	r0, [r4, #10]
	ldrh	r1, [r4, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r1
	cmp	r0, #0
	beq	.L_38440
	ldr	r1, .L_38438
	ldrh	r0, [r1, #18]
	add	r0, #3
	strh	r0, [r1, #18]
	b	.L_38440
.L_38434:
	.4byte	gUnk_3000A51
.L_38438:
	.4byte	gWarioData
.L_3843c:
	bl	func_80380DC
.L_38440:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8038448
func_8038448:
	push	{r4, r5, lr}
	ldr	r4, .L_3848c
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r3, r0, #0
	ldr	r0, .L_38490
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_3846a
	ldrh	r1, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #4
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_3846a:
	ldr	r0, .L_38494
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	beq	.L_3849c
	mov	r1, #0
	mov	r2, #0
	ldr	r0, .L_38498
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r2, [r4, #20]
	mov	r0, #24
	strb	r0, [r4, #28]
	add	r0, r3, #0
	sub	r0, #12
	strh	r0, [r4, #8]
	b	.L_38598
	.align	2, 0
.L_3848c:
	.4byte	gCurrentSprite
.L_38490:
	.4byte	gUnk_30000A0
.L_38494:
	.4byte	gSpriteCollisionResult
.L_38498:
	.4byte	sUnk_83BE1D4
.L_3849c:
	ldrh	r2, [r4, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r2
	add	r3, r2, #0
	cmp	r0, #0
	beq	.L_384f8
	strb	r1, [r4, #22]
	strh	r1, [r4, #20]
	ldr	r0, .L_384dc
	str	r0, [r4, #4]
	mov	r0, #22
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r0, .L_384e0
	ldrh	r1, [r0, #14]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_384e8
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_384e4
	and	r0, r3
	strh	r0, [r4, #0]
	b	.L_38598
	.align	2, 0
.L_384dc:
	.4byte	sUnk_83BE164
.L_384e0:
	.4byte	gWarioData
.L_384e4:
	.4byte	0xFFBF
.L_384e8:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #2
	strb	r0, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r2
	strh	r0, [r4, #0]
	b	.L_38598
.L_384f8:
	ldrh	r1, [r4, #8]
	add	r0, r1, #4
	strh	r0, [r4, #8]
	add	r5, r4, #0
	add	r5, #41	@ 0x29
	ldrb	r0, [r5, #0]
	cmp	r0, #1
	bne	.L_38540
	add	r0, r1, #0
	sub	r0, #28
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #80	@ 0x50
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_38530
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_38534
	ldrh	r0, [r4, #10]
	sub	r0, #3
	strh	r0, [r4, #10]
	b	.L_38578
.L_38530:
	.4byte	gUnk_3000A51
.L_38534:
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	mov	r1, #30
	strb	r1, [r0, #0]
	mov	r0, #2
	b	.L_38576
.L_38540:
	add	r0, r1, #0
	sub	r0, #28
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #76	@ 0x4c
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_38568
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_3856c
	ldrh	r0, [r4, #10]
	add	r0, #3
	strh	r0, [r4, #10]
	b	.L_38578
.L_38568:
	.4byte	gUnk_3000A51
.L_3856c:
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	mov	r1, #30
	strb	r1, [r0, #0]
	mov	r0, #1
.L_38576:
	strb	r0, [r5, #0]
.L_38578:
	ldr	r2, .L_385a0
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_38598
	mov	r0, #30
	strb	r0, [r1, #0]
	add	r2, #41	@ 0x29
	ldrb	r0, [r2, #0]
	mov	r1, #3
	eor	r0, r1
	strb	r0, [r2, #0]
.L_38598:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_385a0:
	.4byte	gCurrentSprite


thumb_func_start func_80385A4
func_80385A4:
	push	{r4, lr}
	ldr	r4, .L_385e0
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r3, r0, #0
	ldr	r0, .L_385e4
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_385c6
	ldrh	r1, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #4
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_385c6:
	ldr	r0, .L_385e8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_385f0
	mov	r1, #0
	mov	r2, #0
	strh	r3, [r4, #8]
	ldr	r0, .L_385ec
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r2, [r4, #20]
	mov	r0, #16
	b	.L_38722
.L_385e0:
	.4byte	gCurrentSprite
.L_385e4:
	.4byte	gUnk_30000A0
.L_385e8:
	.4byte	gSpriteCollisionResult
.L_385ec:
	.4byte	sUnk_83BE19C
.L_385f0:
	ldrh	r0, [r4, #8]
	add	r0, #2
	strh	r0, [r4, #8]
	ldrh	r2, [r4, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	and	r0, r2
	add	r3, r2, #0
	cmp	r0, #0
	beq	.L_386f8
	ldr	r1, .L_38630
	ldrh	r0, [r1, #20]
	add	r0, #2
	strh	r0, [r1, #20]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r0, .L_38634
	ldrh	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_3863c
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_38638
	and	r0, r3
	b	.L_38650
	.align	2, 0
.L_38630:
	.4byte	gWarioData
.L_38634:
	.4byte	gButtonsHeld
.L_38638:
	.4byte	0xFFBF
.L_3863c:
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_38652
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #2
	strb	r0, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r2
.L_38650:
	strh	r0, [r4, #0]
.L_38652:
	ldr	r0, .L_386a0
	add	r2, r0, #0
	add	r2, #41	@ 0x29
	ldrb	r2, [r2, #0]
	add	r4, r0, #0
	cmp	r2, #1
	bne	.L_386ac
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #80	@ 0x50
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_386a4
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_3868e
	ldrh	r0, [r4, #10]
	sub	r0, #4
	strh	r0, [r4, #10]
	ldr	r1, .L_386a8
	ldrh	r0, [r1, #18]
	sub	r0, #4
	strh	r0, [r1, #18]
.L_3868e:
	ldr	r2, .L_386a8
	ldrh	r1, [r2, #18]
	ldrh	r0, [r4, #10]
	sub	r0, #33	@ 0x21
	cmp	r1, r0
	bge	.L_38702
	strh	r0, [r2, #18]
	b	.L_38702
	.align	2, 0
.L_386a0:
	.4byte	gCurrentSprite
.L_386a4:
	.4byte	gUnk_3000A51
.L_386a8:
	.4byte	gWarioData
.L_386ac:
	cmp	r2, #2
	bne	.L_38702
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #76	@ 0x4c
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_386f0
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_386de
	ldrh	r0, [r4, #10]
	add	r0, #4
	strh	r0, [r4, #10]
	ldr	r1, .L_386f4
	ldrh	r0, [r1, #18]
	add	r0, #4
	strh	r0, [r1, #18]
.L_386de:
	ldr	r2, .L_386f4
	ldrh	r1, [r2, #18]
	ldrh	r0, [r4, #10]
	add	r0, #33	@ 0x21
	cmp	r1, r0
	ble	.L_38702
	strh	r0, [r2, #18]
	b	.L_38702
	.align	2, 0
.L_386f0:
	.4byte	gUnk_3000A51
.L_386f4:
	.4byte	gWarioData
.L_386f8:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
.L_38702:
	add	r3, r4, #0
	add	r3, #39	@ 0x27
	ldrb	r2, [r3, #0]
	cmp	r2, #0
	bne	.L_38724
	ldr	r0, .L_3872c
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	mov	r1, #0
	strh	r2, [r4, #20]
	mov	r0, #36	@ 0x24
	strb	r0, [r3, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #18
.L_38722:
	strb	r0, [r4, #28]
.L_38724:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3872c:
	.4byte	sUnk_83BE19C


thumb_func_start SpriteMagicCarpet
SpriteMagicCarpet:
	push	{lr}
	ldr	r2, .L_38754
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_38744
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_38744:
	ldrb	r0, [r2, #28]
	cmp	r0, #24
	bhi	.L_387e4
	lsl	r0, r0, #2
	ldr	r1, .L_38758
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_38754:
	.4byte	gCurrentSprite
.L_38758:
	.4byte	.L_3875c
.L_3875c:
	.4byte	.L_387c0
	.4byte	.L_387e4
	.4byte	.L_387e4
	.4byte	.L_387e4
	.4byte	.L_387e4
	.4byte	.L_387e4
	.4byte	.L_387e4
	.4byte	.L_387e4
	.4byte	.L_387e4
	.4byte	.L_387e4
	.4byte	.L_387e4
	.4byte	.L_387e4
	.4byte	.L_387e4
	.4byte	.L_387e4
	.4byte	.L_387e4
	.4byte	.L_387e4
	.4byte	.L_387cc
	.4byte	.L_387e4
	.4byte	.L_387d2
	.4byte	.L_387e4
	.4byte	.L_387d8
	.4byte	.L_387e4
	.4byte	.L_387de
	.4byte	.L_387e4
	.4byte	.L_387c6
.L_387c0:
	bl	func_8038064
	b	.L_387ee
.L_387c6:
	bl	func_8038174
	b	.L_387ee
.L_387cc:
	bl	func_80381F4
	b	.L_387ee
.L_387d2:
	bl	func_803828C
	b	.L_387ee
.L_387d8:
	bl	func_8038448
	b	.L_387ee
.L_387de:
	bl	func_80385A4
	b	.L_387ee
.L_387e4:
	bl	SpriteUtilDie
	ldr	r1, .L_3880c
	mov	r0, #0
	strb	r0, [r1, #26]
.L_387ee:
	bl	func_8026838
	bl	func_8038014
	ldr	r2, .L_38810
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_38818
	ldrh	r1, [r2, #0]
	ldr	r0, .L_38814
	and	r0, r1
	b	.L_3881e
	.align	2, 0
.L_3880c:
	.4byte	gWarioData
.L_38810:
	.4byte	gCurrentSprite
.L_38814:
	.4byte	0xFFF7
.L_38818:
	ldrh	r1, [r2, #0]
	mov	r0, #8
	orr	r0, r1
.L_3881e:
	strh	r0, [r2, #0]
	pop	{r0}
	bx	r0
