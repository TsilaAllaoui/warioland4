.include "macros.s.inc"


thumb_func_start func_808DFD0
func_808DFD0:
	push	{r4, r5, lr}
	ldr	r0, .L_8dfe8
	ldrb	r1, [r0, #0]
	add	r4, r0, #0
	cmp	r1, #17
	bls	.L_8dfde
	b	.L_8e4ce
.L_8dfde:
	lsl	r0, r1, #2
	ldr	r1, .L_8dfec
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_8dfe8:
	.4byte	gWarioHopSubState
.L_8dfec:
	.4byte	.L_8dff0
.L_8dff0:
	.4byte	.L_8e038
	.4byte	.L_8e05c
	.4byte	.L_8e0a8
	.4byte	.L_8e0d8
	.4byte	.L_8e11c
	.4byte	.L_8e138
	.4byte	.L_8e1d0
	.4byte	.L_8e1d6
	.4byte	.L_8e238
	.4byte	.L_8e2d0
	.4byte	.L_8e314
	.4byte	.L_8e388
	.4byte	.L_8e3c4
	.4byte	.L_8e432
	.4byte	.L_8e468
	.4byte	.L_8e4a4
	.4byte	.L_8e4a8
	.4byte	.L_8e4c0
.L_8e038:
	mov	r0, #10
	bl	func_8089B9C
	cmp	r0, #0
	bne	.L_8e044
	b	.L_8e4ce
.L_8e044:
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #192	@ 0xc0
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_8e058
	ldrb	r0, [r1, #0]
	add	r0, #1
	b	.L_8e4cc
.L_8e058:
	.4byte	gWarioHopSubState
.L_8e05c:
	ldr	r4, .L_8e098
	ldrh	r0, [r4, #4]
	add	r0, #192	@ 0xc0
	strh	r0, [r4, #4]
.L_8e064:
	ldr	r3, .L_8e09c
	add	r1, r3, #0
	ldrh	r5, [r4, #6]
	add	r1, r1, r5
	add	r3, #24
	add	r2, r3, #0
	and	r1, r2
	strh	r1, [r4, #6]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #6
	cmp	r0, r5
	bhi	.L_8e082
	b	.L_8e4ce
.L_8e082:
	ldr	r0, .L_8e0a0
	bl	m4aSongNumStart
	strh	r5, [r4, #4]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #4
	strh	r0, [r4, #6]
	ldr	r1, .L_8e0a4
	ldrb	r0, [r1, #0]
	add	r0, #1
	b	.L_8e4cc
.L_8e098:
	.4byte	gWarioHopSignState
.L_8e09c:
	.4byte	0x00000fe7
.L_8e0a0:
	.4byte	0x00000236
.L_8e0a4:
	.4byte	gWarioHopSubState
.L_8e0a8:
	mov	r0, #40	@ 0x28
	bl	func_8089B9C
	cmp	r0, #0
.L_8e0b0:
	bne	.L_8e0b4
	b	.L_8e4ce
.L_8e0b4:
	ldr	r1, .L_8e0d0
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_8e0d4
	mov	r0, #0
	strb	r0, [r1, #12]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r5, #224	@ 0xe0
	lsl	r5, r5, #5
	add	r0, r5, #0
	strh	r0, [r1, #0]
	b	.L_8e4ce
.L_8e0d0:
	.4byte	gWarioHopSubState
.L_8e0d4:
	.4byte	gWarioHopSignState
.L_8e0d8:
	mov	r0, #20
	bl	func_8089B9C
	cmp	r0, #0
	bne	.L_8e0e4
	b	.L_8e4ce
.L_8e0e4:
	ldr	r2, .L_8e100
	ldrb	r0, [r2, #0]
	cmp	r0, #1
	beq	.L_8e0f0
	cmp	r0, #4
	bne	.L_8e10c
.L_8e0f0:
	ldr	r0, .L_8e104
	bl	m4aSongNumStart
	ldr	r1, .L_8e108
	ldrb	r0, [r1, #0]
	add	r0, #1
	b	.L_8e4cc
	.align	2, 0
.L_8e100:
	.4byte	gUnk_3004A2D
.L_8e104:
	.4byte	0x000002c5
.L_8e108:
	.4byte	gWarioHopSubState
.L_8e10c:
	ldr	r0, .L_8e118
	mov	r1, #5
	strb	r1, [r0, #0]
	mov	r0, #4
	strb	r0, [r2, #0]
	b	.L_8e4ce
.L_8e118:
	.4byte	gWarioHopSubState
.L_8e11c:
	bl	func_808E96C
	mov	r0, #100	@ 0x64
	bl	func_8089B9C
	cmp	r0, #0
	bne	.L_8e12c
	b	.L_8e4ce
.L_8e12c:
	ldr	r1, .L_8e134
	ldrb	r0, [r1, #0]
	add	r0, #1
	b	.L_8e4cc
.L_8e134:
	.4byte	gWarioHopSubState
.L_8e138:
	bl	func_808E96C
	mov	r0, #30
	bl	func_8089B9C
	cmp	r0, #0
	bne	.L_8e148
	b	.L_8e4ce
.L_8e148:
	ldr	r1, .L_8e174
	ldrb	r0, [r1, #0]
.L_8e14c:
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_8e178
	ldrb	r0, [r1, #5]
	add	r0, #1
	strb	r0, [r1, #5]
	ldr	r0, .L_8e17c
	ldrb	r0, [r0, #0]
	add	r4, r1, #0
	cmp	r0, #2
	bne	.L_8e188
	ldr	r2, .L_8e180
	ldr	r0, .L_8e184
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	sub	r0, #1
	ldrb	r1, [r4, #5]
	add	r0, r0, r1
	b	.L_8e198
.L_8e174:
	.4byte	gWarioHopSubState
.L_8e178:
	.4byte	gUnk_3004A10
.L_8e17c:
	.4byte	gDifficulty
.L_8e180:
	.4byte	sUnk_871D627
.L_8e184:
	.4byte	gUnk_30049FC
.L_8e188:
	ldr	r2, .L_8e1c0
	ldr	r0, .L_8e1c4
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	sub	r0, #1
	ldrb	r3, [r4, #5]
	add	r0, r0, r3
.L_8e198:
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #4]
	add	r5, r4, #0
	ldrb	r0, [r5, #4]
	cmp	r0, #3
	bne	.L_8e1ac
	ldr	r0, .L_8e1c8
	bl	m4aSongNumStart
.L_8e1ac:
	ldrb	r0, [r5, #4]
	cmp	r0, #2
.L_8e1b0:
	bne	.L_8e1b8
	ldr	r0, .L_8e1cc
	bl	m4aSongNumStart
.L_8e1b8:
	mov	r0, #0
	strh	r0, [r4, #2]
.L_8e1bc:
	.4byte	0xe1868020
.L_8e1c0:
	.4byte	sUnk_871D604
.L_8e1c4:
	.4byte	gUnk_30049FC
.L_8e1c8:
	.4byte	0x00000226
.L_8e1cc:
	lsl	r7, r4, #8
	.align	2, 0
.L_8e1d0:
	bl	func_808E96C
	b	.L_8e4ce
.L_8e1d6:
	bl	func_808E96C
	bl	func_808E8CC
	cmp	r0, #0
	bne	.L_8e1e4
	b	.L_8e4ce
.L_8e1e4:
	ldr	r0, .L_8e200
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bne	.L_8e210
	ldr	r0, .L_8e204
	bl	m4aSongNumStart
	ldr	r1, .L_8e208
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_8e20c
	mov	r0, #12
	b	.L_8e4cc
.L_8e200:
	.4byte	gUnk_3004A2D
.L_8e204:
	.4byte	0x000002c9
.L_8e208:
	.4byte	gUnk_3004A2E
.L_8e20c:
	.4byte	gWarioHopSubState
.L_8e210:
	ldr	r1, .L_8e22c
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_8e230
	ldrh	r0, [r1, #8]
	lsl	r0, r0, #4
	strh	r0, [r1, #4]
	ldrh	r0, [r1, #10]
	lsl	r0, r0, #4
	strh	r0, [r1, #6]
	ldr	r1, .L_8e234
	mov	r0, #1
	b	.L_8e4cc
.L_8e22c:
	.4byte	gWarioHopSubState
.L_8e230:
	.4byte	gUnk_30049E8
.L_8e234:
	.4byte	gUnk_3004A0C
.L_8e238:
	ldr	r4, .L_8e268
	ldrb	r0, [r4, #0]
.L_8e23c:
	cmp	r0, #0
	beq	.L_8e24c
	bl	func_808EB88
	cmp	r0, #0
	beq	.L_8e24c
	mov	r0, #0
	strb	r0, [r4, #0]
.L_8e24c:
	bl	func_808EC10
	cmp	r0, #0
	bne	.L_8e256
	b	.L_8e4ce
.L_8e256:
	ldr	r0, .L_8e26c
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	beq	.L_8e276
	cmp	r0, #1
	bgt	.L_8e270
	cmp	r0, #0
	beq	.L_8e28c
	b	.L_8e4ce
.L_8e268:
	.4byte	gUnk_3004A0C
.L_8e26c:
	.4byte	gUnk_3004A2D
.L_8e270:
	cmp	r0, #5
	beq	.L_8e2bc
	b	.L_8e4ce
.L_8e276:
	ldr	r0, .L_8e284
.L_8e278:
	bl	m4aSongNumStart
	ldr	r1, .L_8e288
	mov	r0, #11
	b	.L_8e4cc
	.align	2, 0
.L_8e284:
	.4byte	0x000002c6
.L_8e288:
	.4byte	gWarioHopSubState
.L_8e28c:
	ldr	r1, .L_8e2b0
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #2
	bls	.L_8e2a0
.L_8e29c:
	.4byte	0x70082002
.L_8e2a0:
	ldr	r0, .L_8e2b4
	mov	r1, #12
	strb	r1, [r0, #0]
	ldr	r0, .L_8e2b8
	bl	m4aSongNumStart
	b	.L_8e4ce
	.align	2, 0
.L_8e2b0:
	.4byte	gUnk_3004A2E
.L_8e2b4:
	.4byte	gWarioHopSubState
.L_8e2b8:
	.4byte	0x000002ca
.L_8e2bc:
	ldr	r0, .L_8e2c8
	bl	m4aSongNumStart
	ldr	r1, .L_8e2cc
.L_8e2c4:
	.4byte	0xe1012009
.L_8e2c8:
	.4byte	0x00000235
.L_8e2cc:
	.4byte	gWarioHopSubState
.L_8e2d0:
	ldr	r4, .L_8e304
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_8e2e4
	bl	func_808EB88
	cmp	r0, #0
	beq	.L_8e2e4
	mov	r0, #0
	strb	r0, [r4, #0]
.L_8e2e4:
	bl	func_808ECF0
	cmp	r0, #0
	bne	.L_8e2ee
	b	.L_8e4ce
.L_8e2ee:
	ldr	r0, .L_8e308
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_8e2fc
	ldr	r0, .L_8e30c
	bl	m4aSongNumStart
.L_8e2fc:
	ldr	r1, .L_8e310
	ldrb	r0, [r1, #0]
	add	r0, #1
	b	.L_8e4cc
.L_8e304:
	.4byte	gUnk_3004A0C
.L_8e308:
	.4byte	gUnk_3004A2D
.L_8e30c:
	.4byte	0x000002c6
.L_8e310:
	.4byte	gWarioHopSubState
.L_8e314:
	ldr	r4, .L_8e350
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_8e328
	bl	func_808EB88
	cmp	r0, #0
	beq	.L_8e328
.L_8e324:
	.4byte	0x70202000
.L_8e328:
	mov	r0, #80	@ 0x50
	bl	func_8089B9C
	cmp	r0, #0
	bne	.L_8e334
	b	.L_8e4ce
.L_8e334:
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
.L_8e338:
	.4byte	0x016d25e0
	add	r0, r5, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_8e354
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_8e35c
	ldr	r1, .L_8e358
	mov	r0, #11
	b	.L_8e4cc
	.align	2, 0
.L_8e350:
	.4byte	gUnk_3004A0C
.L_8e354:
	.4byte	gUnk_3004A2D
.L_8e358:
	.4byte	gWarioHopSubState
.L_8e35c:
	ldr	r1, .L_8e37c
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #2
	bls	.L_8e370
.L_8e36c:
	.4byte	0x70082002
.L_8e370:
	ldr	r0, .L_8e380
	bl	m4aSongNumStart
	ldr	r1, .L_8e384
	mov	r0, #12
	b	.L_8e4cc
.L_8e37c:
	.4byte	gUnk_3004A2E
.L_8e380:
	.4byte	0x000002ca
.L_8e384:
	.4byte	gWarioHopSubState
.L_8e388:
	bl	func_808F8E4
	cmp	r0, #0
	bne	.L_8e392
	b	.L_8e4ce
.L_8e392:
	ldr	r1, .L_8e3b8
	mov	r0, #0
	strb	r0, [r1, #0]
	bl	func_808E834
	ldr	r0, .L_8e3bc
	ldrh	r0, [r0, #0]
	mov	r1, #9
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_8e3ae
.L_8e3ac:
	b	.L_8e4c8
.L_8e3ae:
	bl	func_808FAF4
	ldr	r1, .L_8e3c0
	mov	r0, #17
	b	.L_8e4cc
.L_8e3b8:
	.4byte	gUnk_3004A2E
.L_8e3bc:
	.4byte	gWarioHopScore
.L_8e3c0:
	.4byte	gWarioHopSubState
.L_8e3c4:
	ldr	r4, .L_8e400
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_8e3d8
	bl	func_808EB88
	cmp	r0, #0
	beq	.L_8e3d8
	mov	r0, #0
	strb	r0, [r4, #0]
.L_8e3d8:
	mov	r0, #100	@ 0x64
	bl	func_8089B9C
	cmp	r0, #0
	beq	.L_8e4ce
	ldr	r0, .L_8e404
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bne	.L_8e42c
	bl	MinigameRandom
	mov	r1, #1
	and	r1, r0
	cmp	r1, #0
	bne	.L_8e40c
	ldr	r0, .L_8e408
	bl	m4aSongNumStart
	b	.L_8e414
	.align	2, 0
.L_8e400:
	.4byte	gUnk_3004A0C
.L_8e404:
	.4byte	gUnk_3004A2E
.L_8e408:
	.4byte	0x000002c7
.L_8e40c:
	mov	r0, #178	@ 0xb2
	lsl	r0, r0, #2
	bl	m4aSongNumStart
.L_8e414:
	ldr	r1, .L_8e424
	mov	r0, #3
	strb	r0, [r1, #0]
	ldr	r1, .L_8e428
	ldrb	r0, [r1, #0]
	add	r0, #1
	b	.L_8e4cc
	.align	2, 0
.L_8e424:
	.4byte	gUnk_3004A2D
.L_8e428:
	.4byte	gWarioHopSubState
.L_8e42c:
	bl	func_808E834
	b	.L_8e4c8
.L_8e432:
	mov	r0, #120	@ 0x78
.L_8e434:
	.4byte	0xfbb2f7fb
.L_8e438:
	.4byte	0xd0482800
	ldr	r1, .L_8e460
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #192	@ 0xc0
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_8e464
	mov	r0, #2
	strb	r0, [r1, #12]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	strh	r0, [r1, #4]
	b	.L_8e4ce
	.align	2, 0
.L_8e460:
	.4byte	gWarioHopSubState
.L_8e464:
	.4byte	gWarioHopSignState
.L_8e468:
	ldr	r3, .L_8e498
	ldrh	r0, [r3, #4]
	add	r0, #192	@ 0xc0
	strh	r0, [r3, #4]
	ldrh	r1, [r3, #6]
	add	r1, #25
.L_8e474:
	.4byte	0x1c2a4d09
	and	r1, r2
	strh	r1, [r3, #6]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #6
.L_8e484:
	cmp	r0, r1
	bls	.L_8e4ce
	strh	r1, [r3, #4]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r0, .L_8e4a0
	bl	m4aSongNumStart
	b	.L_8e4ce
.L_8e498:
	.4byte	gWarioHopSignState
.L_8e49c:
	.4byte	0x00000fff
.L_8e4a0:
	.4byte	0x00000236
.L_8e4a4:
	mov	r0, #80	@ 0x50
	b	.L_8e4aa
.L_8e4a8:
	mov	r0, #30
.L_8e4aa:
	bl	func_8089B9C
	cmp	r0, #0
	beq	.L_8e4ce
	ldr	r1, .L_8e4bc
	mov	r0, #0
	strb	r0, [r1, #0]
	mov	r0, #1
	b	.L_8e4d0
.L_8e4bc:
	.4byte	gWarioHopSubState
.L_8e4c0:
	.4byte	0xfa8ef001
	cmp	r0, #0
	beq	.L_8e4ce
.L_8e4c8:
	ldr	r1, .L_8e4d8
	mov	r0, #3
.L_8e4cc:
	strb	r0, [r1, #0]
.L_8e4ce:
	mov	r0, #0
.L_8e4d0:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_8e4d8:
	.4byte	gWarioHopSubState


thumb_func_start func_808E4DC
func_808E4DC:
	push	{lr}
	ldr	r1, .L_8e538
	mov	r3, #0
	mov	r2, #0
	mov	r0, #60	@ 0x3c
	strh	r0, [r1, #8]
	mov	r0, #88	@ 0x58
	strh	r0, [r1, #10]
	strh	r2, [r1, #0]
	strh	r2, [r1, #2]
	strh	r2, [r1, #16]
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #18]
	ldr	r0, .L_8e53c
	strb	r3, [r0, #0]
	ldr	r1, .L_8e540
	strh	r2, [r1, #0]
	strh	r2, [r1, #2]
	strb	r3, [r1, #6]
	ldr	r0, .L_8e544
	ldrb	r0, [r0, #0]
	strh	r0, [r1, #4]
	ldr	r1, .L_8e548
	mov	r0, #215	@ 0xd7
	strh	r0, [r1, #0]
	ldr	r1, .L_8e54c
	mov	r0, #121	@ 0x79
	strh	r0, [r1, #0]
	ldr	r0, .L_8e550
	strb	r3, [r0, #0]
	ldr	r0, .L_8e554
	strh	r2, [r0, #0]
	strh	r2, [r0, #2]
	strb	r3, [r0, #4]
	strb	r3, [r0, #5]
	ldr	r1, .L_8e558
	strh	r2, [r1, #0]
	strh	r2, [r1, #2]
	mov	r0, #120	@ 0x78
	strh	r0, [r1, #4]
	mov	r0, #80	@ 0x50
	strh	r0, [r1, #6]
	bl	func_808E898
	pop	{r0}
	bx	r0
.L_8e538:
	.4byte	gUnk_30049E8
.L_8e53c:
	.4byte	gUnk_30049FD
.L_8e540:
	.4byte	gUnk_3004A00
.L_8e544:
	.4byte	sUnk_871DD44
.L_8e548:
	.4byte	gUnk_3004A08
.L_8e54c:
	.4byte	gUnk_3004A0A
.L_8e550:
	.4byte	gUnk_3004A0C
.L_8e554:
	.4byte	gUnk_3004A10
.L_8e558:
	.4byte	gUnk_3004A18


thumb_func_start func_808E55C
func_808E55C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r1, .L_8e6f8
	ldr	r0, .L_8e6fc
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_8e700
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	ldr	r3, .L_8e704
	ldr	r4, .L_8e708
	ldr	r5, .L_8e70c
	ldr	r6, .L_8e710
	mov	ip, r6
	ldr	r6, .L_8e714
	ldr	r7, .L_8e718
	mov	r9, r7
	ldr	r7, .L_8e71c
	mov	sl, r7
	ldr	r7, .L_8e720
	mov	r8, r7
	cmp	r0, #0
	bge	.L_8e5a2
.L_8e59a:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8e59a
.L_8e5a2:
	ldr	r1, .L_8e6f8
	str	r3, [r1, #0]
	ldr	r0, .L_8e724
	str	r0, [r1, #4]
	ldr	r0, .L_8e700
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8e5c2
.L_8e5ba:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8e5ba
.L_8e5c2:
	ldr	r1, .L_8e6f8
	str	r4, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_8e728
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8e5e4
.L_8e5dc:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8e5dc
.L_8e5e4:
	ldr	r1, .L_8e6f8
	str	r5, [r1, #0]
	ldr	r0, .L_8e72c
	str	r0, [r1, #4]
	ldr	r0, .L_8e730
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8e604
.L_8e5fc:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8e5fc
.L_8e604:
	mov	r1, ip
	ldrb	r0, [r1, #0]
	cmp	r0, #2
	bne	.L_8e62e
	ldr	r1, .L_8e6f8
	ldr	r0, .L_8e734
	str	r0, [r1, #0]
	ldr	r0, .L_8e72c
	str	r0, [r1, #4]
	ldr	r0, .L_8e738
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8e62e
.L_8e626:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8e626
.L_8e62e:
	ldr	r1, .L_8e6f8
	str	r6, [r1, #0]
	ldr	r0, .L_8e73c
	str	r0, [r1, #4]
	ldr	r0, .L_8e740
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8e64e
.L_8e646:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8e646
.L_8e64e:
	ldr	r1, .L_8e6f8
	ldr	r2, .L_8e744
	str	r2, [r1, #0]
	ldr	r0, .L_8e748
	str	r0, [r1, #4]
	ldr	r0, .L_8e740
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8e670
.L_8e668:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8e668
.L_8e670:
	ldr	r1, .L_8e6f8
	mov	r6, r9
	str	r6, [r1, #0]
	ldr	r0, .L_8e74c
	str	r0, [r1, #4]
	ldr	r0, .L_8e750
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8e692
.L_8e68a:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8e68a
.L_8e692:
	ldr	r1, .L_8e6f8
	mov	r7, sl
	str	r7, [r1, #0]
	ldr	r0, .L_8e754
	str	r0, [r1, #4]
	ldr	r0, .L_8e740
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #198	@ 0xc6
	ldr	r2, .L_8e758
	add	r0, r2, #0
	strh	r0, [r1, #0]
	sub	r1, #4
	ldr	r6, .L_8e75c
	add	r0, r6, #0
	strh	r0, [r1, #0]
	sub	r1, #2
	mov	r7, #218	@ 0xda
	lsl	r7, r7, #8
	add	r0, r7, #0
	strh	r0, [r1, #0]
	add	r1, #4
	ldr	r2, .L_8e760
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_8e764
	mov	r1, #0
	strh	r1, [r0, #0]
	sub	r0, #2
	strh	r1, [r0, #0]
	add	r0, #6
	strh	r1, [r0, #0]
	sub	r0, #2
	strh	r1, [r0, #0]
	ldr	r6, .L_8e768
	strh	r1, [r6, #0]
	ldr	r7, .L_8e76c
	strh	r1, [r7, #0]
	sub	r0, #10
	strh	r1, [r0, #0]
	sub	r0, #2
	strh	r1, [r0, #0]
	mov	r2, ip
	ldrb	r0, [r2, #0]
	cmp	r0, #2
	bne	.L_8e770
	mov	r0, #1
	mov	r6, r8
	strb	r0, [r6, #0]
	b	.L_8e774
	.align	2, 0
.L_8e6f8:
	.4byte	0x040000d4
.L_8e6fc:
	.4byte	sUnk_8720EE4
.L_8e700:
	.4byte	0x80000100
.L_8e704:
	.4byte	sUnk_8725CE4
.L_8e708:
	.4byte	sUnk_87210E4
.L_8e70c:
	.4byte	sUnk_8725EE4
.L_8e710:
	.4byte	gDifficulty
.L_8e714:
	.4byte	sUnk_871E6E4
.L_8e718:
	.4byte	sUnk_871EEE4
.L_8e71c:
	.4byte	sUnk_872DEE4
.L_8e720:
	.4byte	gUnk_3004A2F
.L_8e724:
	.4byte	0x05000200
.L_8e728:
	.4byte	0x80002600
.L_8e72c:
	.4byte	0x06010000
.L_8e730:
	.4byte	0x80004000
.L_8e734:
	.4byte	sUnk_872EEE4
.L_8e738:
	.4byte	0x80000800
.L_8e73c:
	.4byte	0x0600c000
.L_8e740:
	.4byte	0x80000400
.L_8e744:
	.4byte	sUnk_872E6E4
.L_8e748:
	.4byte	0x0600c800
.L_8e74c:
	.4byte	0x0600d000
.L_8e750:
	asr	r0, r0, #32
	strh	r0, [r0, #0]
.L_8e754:
	.4byte	0x0600f000
.L_8e758:
	.4byte	0x00001803
.L_8e75c:
	.4byte	0x00001901
.L_8e760:
	.4byte	0x00001e02
.L_8e764:
	.4byte	0x0400001a
.L_8e768:
	.4byte	gUnk_30049E0
.L_8e76c:
	.4byte	gUnk_30049E2
.L_8e770:
	mov	r7, r8
	strb	r1, [r7, #0]
.L_8e774:
	mov	r0, #4
	ldr	r1, .L_8e7f8
	strb	r0, [r1, #0]
	bl	func_808E4DC
	ldr	r0, .L_8e7fc
	mov	r4, #0
	mov	r5, #0
	strh	r5, [r0, #0]
	strh	r5, [r0, #2]
	strb	r4, [r0, #8]
	strb	r4, [r0, #9]
	strb	r4, [r0, #10]
	ldr	r0, .L_8e800
	strb	r4, [r0, #0]
	ldr	r1, .L_8e804
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	strh	r0, [r1, #4]
	mov	r0, #104	@ 0x68
	strh	r0, [r1, #8]
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #10]
	strh	r5, [r1, #6]
	mov	r0, #1
	strb	r0, [r1, #12]
	ldr	r0, .L_8e808
	strb	r4, [r0, #0]
	ldr	r0, .L_8e80c
	strb	r4, [r0, #0]
	ldr	r0, .L_8e810
	strb	r4, [r0, #0]
	ldr	r0, .L_8e814
	strh	r5, [r0, #0]
	ldr	r0, .L_8e818
	strh	r5, [r0, #0]
	ldr	r0, .L_8e81c
	strb	r4, [r0, #0]
	bl	func_808ED88
	ldr	r0, .L_8e820
	strb	r4, [r0, #0]
	bl	func_807A428
	ldr	r0, .L_8e824
	strh	r5, [r0, #0]
	ldr	r1, .L_8e828
	ldr	r2, .L_8e82c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r6, .L_8e830
	add	r0, r6, #0
	strh	r0, [r1, #0]
.L_8e7e0:
	.4byte	0x27803952
	lsl	r7, r7, #4
	add	r0, r7, #0
	strh	r0, [r1, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_8e7f8:
	.4byte	gUnk_3004A2D
.L_8e7fc:
	.4byte	gUnk_3004A20
.L_8e800:
	.4byte	gUnk_3004A2C
.L_8e804:
	.4byte	gWarioHopSignState
.L_8e808:
	.4byte	gWarioHopSubState
.L_8e80c:
	.4byte	gUnk_30047BA
.L_8e810:
	.4byte	gUnk_30047BB
.L_8e814:
	.4byte	gUnk_30047BC
.L_8e818:
	.4byte	gWarioHopScore
.L_8e81c:
	.4byte	gWarioHopNewHighScore
.L_8e820:
	.4byte	gUnk_3004A2E
.L_8e824:
	.4byte	0x04000054
.L_8e828:
	.4byte	0x04000050
.L_8e82c:
	.4byte	0x00001c42
.L_8e830:
	.4byte	0x0000060a


thumb_func_start func_808E834
func_808E834:
	push	{lr}
	ldr	r2, .L_8e888
	ldrh	r0, [r2, #0]
	mov	r1, #1
	eor	r0, r1
	strh	r0, [r2, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #224	@ 0xe0
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_8e88c
	ldrh	r0, [r0, #0]
	mov	r1, #5
	bl	__umodsi3
	lsl	r0, r0, #16
	ldr	r1, .L_8e890
	cmp	r0, #0
	bne	.L_8e86c
	ldr	r0, .L_8e894
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_8e86c
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
.L_8e86c:
	ldrb	r0, [r1, #0]
	cmp	r0, #9
	bls	.L_8e876
	mov	r0, #9
	strb	r0, [r1, #0]
.L_8e876:
	bl	func_808E4DC
	ldr	r0, .L_8e888
	ldrh	r1, [r0, #0]
	mov	r2, #1
	orr	r1, r2
	strh	r1, [r0, #0]
	pop	{r0}
	bx	r0
.L_8e888:
	.4byte	0x04000200
.L_8e88c:
	.4byte	gWarioHopScore
.L_8e890:
	.4byte	gUnk_3004A2F
.L_8e894:
	.4byte	gUnk_3004A2D


thumb_func_start func_808E898
func_808E898:
	push	{r4, r5, lr}
	ldr	r5, .L_8e8c0
	ldr	r4, .L_8e8c4
	bl	MinigameRandom
	mov	r1, #20
	bl	__modsi3
	ldr	r1, .L_8e8c8
	ldrb	r2, [r1, #0]
	lsl	r1, r2, #2
	add	r1, r1, r2
	lsl	r1, r1, #2
	add	r0, r0, r1
	add	r0, r0, r4
	ldrb	r0, [r0, #0]
	strb	r0, [r5, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_8e8c0:
	.4byte	gUnk_30049FC
.L_8e8c4:
	.4byte	sUnk_871D53C
.L_8e8c8:
	.4byte	gUnk_3004A2F


thumb_func_start func_808E8CC
func_808E8CC:
.L_8e8cc:
	push	{r4, r5, lr}
	ldr	r5, .L_8e930
	ldr	r3, .L_8e934
	ldr	r4, .L_8e938
	ldr	r2, .L_8e93c
	ldrb	r1, [r2, #0]
	lsl	r0, r1, #6
	sub	r0, r0, r1
	ldrb	r1, [r4, #0]
	add	r0, r0, r1
	lsl	r0, r0, #1
	add	r0, r0, r3
	ldrh	r1, [r0, #0]
	add	r1, #60	@ 0x3c
	strh	r1, [r5, #8]
	ldr	r3, .L_8e940
	ldrb	r2, [r2, #0]
	lsl	r0, r2, #6
	sub	r0, r0, r2
	ldrb	r4, [r4, #0]
	add	r0, r0, r4
	lsl	r0, r0, #1
	add	r0, r0, r3
	ldrh	r0, [r0, #0]
	add	r0, #88	@ 0x58
	strh	r0, [r5, #10]
	lsl	r1, r1, #16
	asr	r1, r1, #16
	cmp	r1, #140	@ 0x8c
	ble	.L_8e910
	bl	func_808E9B4
	cmp	r0, #0
	bne	.L_8e95c
.L_8e910:
	ldr	r1, .L_8e938
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r2, .L_8e944
	ldr	r1, .L_8e93c
	ldrb	r1, [r1, #0]
	add	r1, r1, r2
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	ldrb	r1, [r1, #0]
	cmp	r0, r1
	beq	.L_8e948
	mov	r0, #0
	b	.L_8e95e
	.align	2, 0
.L_8e930:
	.4byte	gUnk_30049E8
.L_8e934:
	.4byte	sUnk_871D652
.L_8e938:
	.4byte	gUnk_30049FD
.L_8e93c:
	.4byte	gUnk_30049FC
.L_8e940:
	.4byte	sUnk_871D9C4
.L_8e944:
	.4byte	sUnk_871D64A
.L_8e948:
	ldr	r1, .L_8e964
	ldrh	r0, [r1, #8]
	lsl	r0, r0, #4
	strh	r0, [r1, #4]
	ldrh	r0, [r1, #10]
	lsl	r0, r0, #4
	strh	r0, [r1, #6]
	ldr	r1, .L_8e968
	mov	r0, #2
	strb	r0, [r1, #0]
.L_8e95c:
	mov	r0, #1
.L_8e95e:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_8e964:
	.4byte	gUnk_30049E8
.L_8e968:
	.4byte	gUnk_3004A2D


thumb_func_start func_808E96C
func_808E96C:
	push	{lr}
	ldr	r0, .L_8e9a8
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_8e98c
	ldr	r1, .L_8e9ac
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_8e994
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_8e9b0
	bl	m4aSongNumStart
.L_8e98c:
	ldr	r0, .L_8e9ac
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_8e9a2
.L_8e994:
	bl	func_808EB88
	cmp	r0, #0
	beq	.L_8e9a2
	ldr	r1, .L_8e9ac
	mov	r0, #0
	strb	r0, [r1, #0]
.L_8e9a2:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8e9a8:
	.4byte	gButtonsPressed
.L_8e9ac:
	.4byte	gUnk_3004A0C
.L_8e9b0:
	.4byte	0x00000232


thumb_func_start func_808E9B4
func_808E9B4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	ldr	r4, .L_8eb38
	ldr	r0, .L_8eb3c
	ldrb	r2, [r0, #0]
	add	r0, r2, #1
	lsl	r0, r0, #1
	ldr	r1, .L_8eb40
	mov	r8, r1
	ldrb	r1, [r1, #0]
	lsl	r3, r1, #6
	sub	r3, r3, r1
	lsl	r3, r3, #1
	add	r0, r0, r3
	add	r1, r0, r4
	mov	r5, #0
	ldrsh	r1, [r1, r5]
	add	r1, #60	@ 0x3c
	mov	sl, r1
	ldr	r1, .L_8eb44
	add	r0, r0, r1
	mov	r7, #0
	ldrsh	r0, [r0, r7]
	add	r0, #88	@ 0x58
	mov	r9, r0
	sub	r2, #1
	lsl	r2, r2, #1
	add	r2, r2, r3
	add	r4, r2, r4
	mov	r3, #0
	ldrsh	r0, [r4, r3]
	add	r0, #60	@ 0x3c
	str	r0, [sp, #0]
	add	r2, r2, r1
	mov	r4, #0
	ldrsh	r0, [r2, r4]
	add	r6, r0, #0
	add	r6, #88	@ 0x58
	ldr	r0, .L_8eb48
	mov	r5, #0
	ldrsh	r1, [r0, r5]
	add	r5, r1, #0
	sub	r5, #215	@ 0xd7
	ldr	r3, .L_8eb4c
	mov	r7, #0
	ldrsh	r2, [r3, r7]
	add	r4, r2, #0
	sub	r4, #96	@ 0x60
	mov	r0, #215	@ 0xd7
	mul	r2, r0
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #5
	sub	r2, r2, r0
	ldr	r0, .L_8eb50
	mov	ip, r0
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r3, ip
	mov	r7, #10
	ldrsh	r1, [r3, r7]
	cmp	r0, r1
	ble	.L_8ea3c
	b	.L_8eb74
.L_8ea3c:
	cmp	r1, #96	@ 0x60
	ble	.L_8ea42
	b	.L_8eb74
.L_8ea42:
	ldr	r0, [sp, #0]
	add	r1, r4, #0
	mul	r1, r0
	add	r0, r5, #0
	mul	r0, r6
	add	r0, r0, r2
	cmp	r1, r0
	bge	.L_8ea54
	b	.L_8eb74
.L_8ea54:
	mov	r1, sl
	mul	r1, r4
	mov	r0, r9
	mul	r0, r5
	add	r0, r0, r2
	cmp	r1, r0
	ble	.L_8ea64
	b	.L_8eb74
.L_8ea64:
	ldr	r6, .L_8eb54
	ldrb	r3, [r6, #6]
	strb	r3, [r6, #7]
	ldr	r7, .L_8eb58
	ldrh	r1, [r6, #4]
	lsl	r0, r1, #1
	mov	r5, #255	@ 0xff
	and	r0, r5
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r7
	mov	r4, #0
	ldrsh	r2, [r0, r4]
	mov	r9, r2
	ldr	r4, .L_8eb5c
	mov	r2, r8
	ldrb	r0, [r2, #0]
	add	r0, r0, r4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	mov	r2, r9
	mul	r2, r0
	add	r0, r2, #0
	sub	r1, #64	@ 0x40
	lsl	r1, r1, #1
	add	r1, r1, r7
	mov	r2, #0
	ldrsh	r1, [r1, r2]
	mul	r0, r1
	mul	r0, r1
	asr	r0, r0, #24
	neg	r0, r0
	mov	r1, ip
	strb	r0, [r1, #12]
	ldrh	r1, [r6, #4]
	lsl	r0, r1, #1
	and	r0, r5
	lsl	r0, r0, #1
	add	r0, r0, r7
	mov	r5, #0
	ldrsh	r2, [r0, r5]
	mov	r5, r8
	ldrb	r0, [r5, #0]
	add	r0, r0, r4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	mul	r2, r0
	sub	r1, #64	@ 0x40
	lsl	r1, r1, #1
	add	r1, r1, r7
	mov	r4, #0
	ldrsh	r0, [r1, r4]
.L_8ead0:
	mul	r0, r2
	asr	r0, r0, #16
	neg	r0, r0
	mov	r5, ip
	strb	r0, [r5, #13]
	ldr	r4, .L_8eb60
	mov	r1, r8
	ldrb	r0, [r1, #0]
	add	r0, r0, r4
	mov	r1, #0
	ldrsb	r1, [r0, r1]
	ldrh	r0, [r6, #4]
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r7
	mov	r2, #0
	ldrsh	r0, [r0, r2]
	mul	r0, r1
	asr	r2, r0, #8
	strb	r2, [r5, #14]
	lsl	r3, r3, #24
	lsr	r3, r3, #24
	mov	r5, r8
	ldrb	r0, [r5, #0]
	cmp	r3, #12
	bne	.L_8eb20
	add	r0, r0, r4
	mov	r1, #0
	ldrsb	r1, [r0, r1]
	ldrh	r0, [r6, #4]
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r7
	mov	r7, #0
	ldrsh	r0, [r0, r7]
	mul	r0, r1
	asr	r0, r0, #8
	add	r0, r2, r0
	mov	r1, ip
	strb	r0, [r1, #14]
.L_8eb20:
	ldrb	r0, [r6, #7]
	sub	r0, #10
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #2
	bhi	.L_8eb64
	mov	r0, #141	@ 0x8d
	lsl	r0, r0, #2
	bl	m4aSongNumStart
	b	.L_8eb6a
	.align	2, 0
.L_8eb38:
	.4byte	sUnk_871D652
.L_8eb3c:
	.4byte	gUnk_30049FD
.L_8eb40:
	.4byte	gUnk_30049FC
.L_8eb44:
	.4byte	sUnk_871D9C4
.L_8eb48:
	.4byte	gUnk_3004A08
.L_8eb4c:
	.4byte	gUnk_3004A0A
.L_8eb50:
	.4byte	gUnk_30049E8
.L_8eb54:
	.4byte	gUnk_3004A00
.L_8eb58:
	.4byte	sSinCosTable
.L_8eb5c:
	.4byte	sUnk_871DD36
.L_8eb60:
	.4byte	sUnk_871DD3D
.L_8eb64:
	ldr	r0, .L_8eb70
	bl	m4aSongNumStart
.L_8eb6a:
	mov	r0, #1
.L_8eb6c:
	.4byte	0x0000e003
.L_8eb70:
	.4byte	0x00000233
.L_8eb74:
	mov	r0, #0
.L_8eb76:
	add	sp, #4
.L_8eb78:
	.4byte	0x4698bc38
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_808EB88
func_808EB88:
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L_8ebe4
	ldrb	r2, [r4, #6]
	add	r2, #1
	strb	r2, [r4, #6]
	ldr	r0, .L_8ebe8
	mov	ip, r0
	ldrb	r0, [r4, #6]
	add	r0, ip
	ldrb	r0, [r0, #0]
	strh	r0, [r4, #4]
	ldr	r7, .L_8ebec
	ldr	r3, .L_8ebf0
	ldrh	r0, [r4, #4]
	lsl	r0, r0, #1
	add	r0, r0, r3
	mov	r5, #0
	ldrsh	r1, [r0, r5]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r0, r0, r1
	asr	r0, r0, #8
	mov	r6, #215	@ 0xd7
	sub	r0, r6, r0
	strh	r0, [r7, #0]
	ldr	r5, .L_8ebf4
	ldrh	r0, [r4, #4]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r3
	mov	r3, #0
	ldrsh	r1, [r0, r3]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r0, r0, r1
	asr	r0, r0, #8
	add	r0, #96	@ 0x60
	strh	r0, [r5, #0]
	lsl	r2, r2, #24
	lsr	r2, r2, #24
	cmp	r2, #21
	bhi	.L_8ebf8
	mov	r0, #0
	b	.L_8ec0a
.L_8ebe4:
	.4byte	gUnk_3004A00
.L_8ebe8:
	.4byte	sUnk_871DD44
.L_8ebec:
	.4byte	gUnk_3004A08
.L_8ebf0:
	.4byte	sSinCosTable
.L_8ebf4:
	.4byte	gUnk_3004A0A
.L_8ebf8:
	mov	r0, #0
	strb	r0, [r4, #6]
	mov	r1, ip
	ldrb	r0, [r1, #0]
	strh	r0, [r4, #4]
	strh	r6, [r7, #0]
	mov	r0, #121	@ 0x79
	strh	r0, [r5, #0]
	mov	r0, #1
.L_8ec0a:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_808EC10
func_808EC10:
	push	{r4, r5, lr}
	ldr	r1, .L_8eca8
	ldrh	r4, [r1, #4]
	lsl	r3, r4, #16
	cmp	r3, #0
	ble	.L_8ecbc
	ldrh	r2, [r1, #6]
	lsl	r0, r2, #16
	cmp	r0, #0
	ble	.L_8ecbc
	asr	r0, r0, #20
	cmp	r0, #159	@ 0x9f
	bgt	.L_8ecbc
	asr	r0, r3, #20
	cmp	r0, #239	@ 0xef
	bgt	.L_8ecbc
	mov	r0, #12
	ldrsb	r0, [r1, r0]
	add	r3, r4, r0
	strh	r3, [r1, #4]
	mov	r0, #13
	ldrsb	r0, [r1, r0]
	add	r4, r2, r0
	strh	r4, [r1, #6]
	ldrh	r0, [r1, #16]
	add	r0, #5
	mov	r5, #255	@ 0xff
	and	r0, r5
	strh	r0, [r1, #16]
	mov	r0, #14
	ldrsb	r0, [r1, r0]
	ldrh	r2, [r1, #18]
	add	r0, r0, r2
	strh	r0, [r1, #18]
	lsl	r0, r0, #16
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #18
	cmp	r0, r1
	bls	.L_8ece8
	ldr	r0, .L_8ecac
	lsl	r2, r3, #16
	asr	r2, r2, #20
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #1
	add	r1, r3, #0
	sub	r2, r1, r2
	strh	r2, [r0, #0]
	ldr	r3, .L_8ecb0
	lsl	r0, r4, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strh	r1, [r3, #0]
	ldr	r0, .L_8ecb4
	strh	r1, [r0, #0]
	sub	r0, #2
	strh	r2, [r0, #0]
	add	r0, #6
	mov	r4, #192	@ 0xc0
	lsl	r4, r4, #1
	add	r3, r4, #0
	add	r1, r1, r3
	and	r1, r5
	strh	r1, [r0, #0]
	sub	r0, #2
	add	r2, r2, r3
	and	r2, r5
	strh	r2, [r0, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #248	@ 0xf8
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_8ecb8
	mov	r0, #5
	b	.L_8ecdc
.L_8eca8:
	.4byte	gUnk_30049E8
.L_8ecac:
	.4byte	gUnk_30049E0
.L_8ecb0:
	.4byte	gUnk_30049E2
.L_8ecb4:
	.4byte	0x04000012
.L_8ecb8:
	.4byte	gUnk_3004A2D
.L_8ecbc:
	ldr	r0, .L_8ecd0
	ldrb	r0, [r0, #7]
	sub	r0, #10
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #2
	bhi	.L_8ecd8
	ldr	r1, .L_8ecd4
	mov	r0, #1
	b	.L_8ecdc
.L_8ecd0:
	.4byte	gUnk_3004A00
.L_8ecd4:
	.4byte	gUnk_3004A2D
.L_8ecd8:
	ldr	r1, .L_8ece4
	mov	r0, #0
.L_8ecdc:
	strb	r0, [r1, #0]
	mov	r0, #1
	b	.L_8ecea
	.align	2, 0
.L_8ece4:
	.4byte	gUnk_3004A2D
.L_8ece8:
	mov	r0, #0
.L_8ecea:
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_808ECF0
func_808ECF0:
	push	{r4, r5, lr}
	ldr	r2, .L_8ed4c
	ldrh	r5, [r2, #4]
	lsl	r0, r5, #16
	asr	r1, r0, #20
	mov	r3, #20
	neg	r3, r3
	cmp	r1, r3
	ble	.L_8ed54
	ldrh	r4, [r2, #6]
	lsl	r0, r4, #16
	asr	r0, r0, #20
	cmp	r0, r3
	ble	.L_8ed54
	cmp	r0, #179	@ 0xb3
	bgt	.L_8ed54
	ldr	r0, .L_8ed50
	cmp	r1, r0
	bgt	.L_8ed54
	mov	r0, #12
	ldrsb	r0, [r2, r0]
	add	r0, r5, r0
	strh	r0, [r2, #4]
	mov	r0, #13
	ldrsb	r0, [r2, r0]
	add	r0, r4, r0
	strh	r0, [r2, #6]
	ldrh	r0, [r2, #16]
	add	r0, #5
	mov	r1, #255	@ 0xff
	and	r0, r1
	strh	r0, [r2, #16]
	mov	r0, #14
	ldrsb	r0, [r2, r0]
	ldrh	r1, [r2, #18]
	add	r0, r0, r1
	strh	r0, [r2, #18]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #3
	cmp	r0, r1
	bls	.L_8ed80
	strh	r1, [r2, #18]
	b	.L_8ed80
	.align	2, 0
.L_8ed4c:
	.4byte	gUnk_30049E8
.L_8ed50:
	.4byte	0x00000103
.L_8ed54:
	ldr	r0, .L_8ed68
	ldrb	r0, [r0, #7]
	sub	r0, #10
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #2
	bhi	.L_8ed70
	ldr	r1, .L_8ed6c
	mov	r0, #1
	b	.L_8ed74
.L_8ed68:
	.4byte	gUnk_3004A00
.L_8ed6c:
	.4byte	gUnk_3004A2D
.L_8ed70:
	ldr	r1, .L_8ed7c
	mov	r0, #0
.L_8ed74:
	strb	r0, [r1, #0]
	mov	r0, #1
	b	.L_8ed82
	.align	2, 0
.L_8ed7c:
	.4byte	gUnk_3004A2D
.L_8ed80:
	mov	r0, #0
.L_8ed82:
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_808ED88
func_808ED88:
	push	{r4, lr}
	ldr	r0, .L_8eda4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_8edb0
	ldr	r0, .L_8eda8
	ldrh	r0, [r0, #0]
	ldr	r1, .L_8edac
	mov	r2, #224	@ 0xe0
	lsl	r2, r2, #6
	bl	func_807AB8C
	b	.L_8edbe
	.align	2, 0
.L_8eda4:
	.4byte	gWarioHopMedalIconActive
.L_8eda8:
	.4byte	gMedalCount
.L_8edac:
	.4byte	sUnk_8724AA4
.L_8edb0:
	ldr	r0, .L_8ede8
	ldrh	r0, [r0, #0]
	ldr	r1, .L_8edec
	mov	r2, #224	@ 0xe0
	lsl	r2, r2, #6
	bl	func_807AB8C
.L_8edbe:
	ldr	r0, .L_8edf0
	ldrh	r0, [r0, #0]
	ldr	r4, .L_8edf4
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #7
	add	r1, r4, #0
	bl	func_807AB8C
	ldr	r0, .L_8edf8
	ldrh	r0, [r0, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #4
	add	r4, r4, r1
	mov	r2, #144	@ 0x90
	lsl	r2, r2, #7
	add	r1, r4, #0
	bl	func_8089C98
	pop	{r4}
	pop	{r0}
	bx	r0
.L_8ede8:
	.4byte	gMedalCount
.L_8edec:
	.4byte	sUnk_8724964
.L_8edf0:
	.4byte	gWarioHopScore
.L_8edf4:
	.4byte	sUnk_8725164
.L_8edf8:
	.4byte	gMinigameHighScores


thumb_func_start func_808EDFC
func_808EDFC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #20
	mov	r7, #0
	ldr	r0, .L_8f11c
	ldrb	r0, [r0, #0]
	mov	r8, r0
	lsl	r0, r0, #3
	ldr	r2, .L_8f120
	add	r6, r0, r2
	ldr	r0, .L_8f124
	ldrb	r1, [r0, #12]
	mov	r9, r0
	cmp	r1, #0
	bne	.L_8ee22
	b	.L_8ef78
.L_8ee22:
	cmp	r1, #1
.L_8ee24:
	bne	.L_8ee2a
	ldr	r0, .L_8f128
	ldr	r3, [r0, #0]
.L_8ee2a:
	cmp	r1, #2
	bne	.L_8ee32
	ldr	r0, .L_8f12c
	ldr	r3, [r0, #0]
.L_8ee32:
	ldrh	r0, [r3, #0]
	add	r8, r0
	add	r3, #2
	mov	r0, sp
	add	r0, #2
	str	r0, [sp, #8]
	mov	r1, sp
	add	r1, #4
	str	r1, [sp, #12]
	add	r0, #4
	str	r0, [sp, #16]
	cmp	r7, r8
	bge	.L_8eeb6
	mov	r5, r9
	add	r4, r2, #0
	ldr	r1, .L_8f130
	mov	sl, r1
	mov	r2, #13
	neg	r2, r2
	mov	ip, r2
	mov	r7, r8
.L_8ee5c:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrb	r0, [r5, #10]
	add	r0, r0, r2
	sub	r0, #16
	strb	r0, [r4, #0]
	ldrb	r0, [r4, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r4, #1]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r0, #8
	ldrsh	r1, [r5, r0]
	add	r1, r2, r1
	sub	r1, #32
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_8f134
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrb	r1, [r4, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	strb	r0, [r4, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r4, #5]
	add	r6, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8ee5c
	mov	r7, r8
.L_8eeb6:
	mov	r3, r9
	ldrh	r0, [r3, #6]
	lsr	r0, r0, #4
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r1, .L_8f138
	add	r0, r0, r1
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	ldrh	r0, [r3, #4]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	mov	r3, r9
	ldrh	r0, [r3, #6]
	lsr	r0, r0, #4
	lsl	r0, r0, #1
	ldr	r1, .L_8f138
	add	r0, r0, r1
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	ldrh	r0, [r3, #4]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #8]
	strh	r0, [r3, #0]
	mov	r1, r9
	ldrh	r0, [r1, #6]
	lsr	r0, r0, #4
	lsl	r0, r0, #1
	ldr	r2, .L_8f138
	add	r0, r0, r2
	ldrh	r4, [r0, #0]
	neg	r4, r4
.L_8ef18:
	lsl	r4, r4, #16
	asr	r4, r4, #16
	ldrh	r0, [r1, #4]
	lsr	r0, r0, #4
.L_8ef20:
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #12]
	strh	r0, [r3, #0]
	mov	r1, r9
	ldrh	r0, [r1, #6]
	lsr	r0, r0, #4
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r2, .L_8f138
	add	r0, r0, r2
	mov	r3, #0
	ldrsh	r4, [r0, r3]
	ldrh	r0, [r1, #4]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r1, [sp, #16]
	strh	r0, [r1, #0]
	ldr	r2, .L_8f120
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #6]
	ldr	r3, [sp, #8]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #14]
	ldr	r3, [sp, #12]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #22]
	strh	r0, [r2, #30]
.L_8ef78:
	ldr	r0, .L_8f13c
	ldrb	r0, [r0, #0]
	add	r1, r0, #0
	cmp	r1, #2
	bhi	.L_8ef86
	bl	.L_8f894
.L_8ef86:
	cmp	r1, #15
	bne	.L_8ef8e
	bl	.L_8f894
.L_8ef8e:
	cmp	r1, #14
	bne	.L_8ef96
	bl	.L_8f894
.L_8ef96:
	sub	r0, #8
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bls	.L_8efa2
	b	.L_8f14c
.L_8efa2:
	ldr	r2, .L_8f140
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r3, .L_8f144
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r5, r2, #0
	ldr	r2, .L_8f148
	cmp	r0, r1
	bcs	.L_8efd8
	mov	r0, #0
	strh	r0, [r5, #0]
	ldrh	r0, [r5, #2]
	add	r0, #1
	strh	r0, [r5, #2]
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8efd8
	strh	r0, [r5, #2]
.L_8efd8:
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r8, r0
	add	r3, #2
	mov	r0, sp
	add	r0, #2
	str	r0, [sp, #8]
	mov	r1, sp
	add	r1, #4
	str	r1, [sp, #12]
	mov	r2, sp
	add	r2, #6
	str	r2, [sp, #16]
	cmp	r7, r8
	bge	.L_8f06c
	ldr	r1, .L_8f120
	mov	r9, r5
	mov	r0, #15
	neg	r0, r0
	mov	ip, r0
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r1, .L_8f130
	mov	sl, r1
	mov	r2, r8
	sub	r7, r2, r7
.L_8f012:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r1, r9
	ldrh	r0, [r1, #6]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r2
	sub	r0, #32
	strb	r0, [r4, #0]
	ldrb	r0, [r4, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r4, #1]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r0, r9
	ldrh	r1, [r0, #4]
	lsl	r1, r1, #16
	asr	r1, r1, #20
	add	r1, r2, r1
	sub	r1, #32
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_8f134
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrb	r1, [r4, #3]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r4, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	add	r6, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8f012
	mov	r7, r8
.L_8f06c:
	ldrh	r0, [r5, #16]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r3, .L_8f138
	add	r0, r0, r3
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, #18
	ldrsh	r0, [r5, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldrh	r0, [r5, #16]
	lsl	r0, r0, #1
	ldr	r3, .L_8f138
	add	r0, r0, r3
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, #18
	ldrsh	r0, [r5, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #8]
	strh	r0, [r3, #0]
	ldrh	r0, [r5, #16]
	lsl	r0, r0, #1
	ldr	r1, .L_8f138
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r2, #18
	ldrsh	r0, [r5, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #12]
	strh	r0, [r3, #0]
	ldrh	r0, [r5, #16]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r1, .L_8f138
	add	r0, r0, r1
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	mov	r3, #18
	ldrsh	r0, [r5, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #16]
	strh	r0, [r1, #0]
	ldr	r2, .L_8f120
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #6]
	ldr	r3, [sp, #8]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #14]
	ldr	r3, [sp, #12]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #22]
	strh	r0, [r2, #30]
	b	.L_8f222
.L_8f11c:
	.4byte	gOamSlotsUsed
.L_8f120:
	.4byte	gOamBuffer
.L_8f124:
	.4byte	gWarioHopSignState
.L_8f128:
	.4byte	sUnk_871E4C4
.L_8f12c:
	.4byte	sUnk_871E4B4
.L_8f130:
	.4byte	0x000001ff
.L_8f134:
	.4byte	0xfffffe00
.L_8f138:
	.4byte	sSinCosTable
.L_8f13c:
	.4byte	gWarioHopSubState
.L_8f140:
	.4byte	gUnk_30049E8
.L_8f144:
	.4byte	sUnk_871E374
.L_8f148:
	.4byte	sUnk_871E364
.L_8f14c:
	mov	r0, sp
	add	r0, #2
	str	r0, [sp, #8]
	mov	r2, sp
	add	r2, #4
	str	r2, [sp, #12]
	mov	r3, sp
	add	r3, #6
	str	r3, [sp, #16]
	cmp	r1, #7
	bne	.L_8f222
	ldr	r2, .L_8f500
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r3, .L_8f504
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r5, r2, #0
	ldr	r2, .L_8f508
	cmp	r0, r1
	bcs	.L_8f198
	mov	r0, #0
	strh	r0, [r5, #0]
	ldrh	r0, [r5, #2]
	add	r0, #1
	strh	r0, [r5, #2]
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8f198
	strh	r0, [r5, #2]
.L_8f198:
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r8, r0
	add	r3, #2
	mov	r0, sp
	add	r0, #2
	str	r0, [sp, #8]
	mov	r1, sp
	add	r1, #4
	str	r1, [sp, #12]
	mov	r2, sp
	add	r2, #6
	str	r2, [sp, #16]
	cmp	r7, r8
	bge	.L_8f222
	ldr	r1, .L_8f50c
	ldr	r0, .L_8f510
	mov	ip, r0
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r1, .L_8f514
	mov	r9, r1
	mov	r2, #13
	neg	r2, r2
	mov	sl, r2
	mov	r0, r8
	sub	r7, r0, r7
.L_8f1d4:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrb	r0, [r5, #10]
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrb	r1, [r4, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	strb	r0, [r4, #1]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r0, #8
	ldrsh	r1, [r5, r0]
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, sl
	and	r0, r1
	strb	r0, [r4, #5]
	add	r6, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8f1d4
	mov	r7, r8
.L_8f222:
	ldr	r0, .L_8f518
	ldrb	r0, [r0, #0]
	mov	ip, r0
	cmp	r0, #2
	ble	.L_8f230
	mov	r3, #2
	mov	ip, r3
.L_8f230:
	mov	r5, #0
	cmp	r5, ip
	bge	.L_8f2a8
.L_8f236:
	ldr	r0, .L_8f51c
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r8, r0
	add	r3, #2
	add	r1, r5, #1
	mov	r9, r1
	cmp	r7, r8
	bge	.L_8f2a2
	mov	r2, #13
	neg	r2, r2
	mov	sl, r2
	lsl	r0, r7, #3
	ldr	r1, .L_8f50c
	add	r4, r0, r1
	mov	r2, r8
	sub	r7, r2, r7
.L_8f258:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #32
	lsl	r1, r5, #3
	sub	r0, r0, r1
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, #0
	add	r1, #224	@ 0xe0
	ldr	r0, .L_8f514
	and	r1, r0
	ldrh	r2, [r4, #2]
	ldr	r0, .L_8f510
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, sl
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r6, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8f258
	mov	r7, r8
.L_8f2a2:
	mov	r5, r9
	cmp	r5, ip
	blt	.L_8f236
.L_8f2a8:
	ldr	r1, .L_8f520
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_8f2ee
	ldr	r2, .L_8f524
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldr	r3, .L_8f528
	ldrh	r1, [r2, #2]
	lsl	r1, r1, #3
	add	r1, r1, r3
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_8f2ee
	mov	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8f2ee
	strh	r0, [r2, #2]
	strh	r0, [r2, #0]
	mov	r0, #0
	ldr	r2, .L_8f520
	strb	r0, [r2, #0]
	bl	func_808ED88
.L_8f2ee:
	ldr	r1, .L_8f528
	ldr	r0, .L_8f524
	ldrh	r0, [r0, #2]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r8, r0
	add	r3, #2
	ldr	r0, .L_8f52c
	mov	r9, r0
	ldr	r5, .L_8f530
	cmp	r7, r8
	bge	.L_8f364
	ldr	r1, .L_8f50c
	ldr	r2, .L_8f514
	mov	ip, r2
	mov	r0, #13
	neg	r0, r0
	mov	sl, r0
	lsl	r0, r7, #3
	add	r4, r0, r1
	mov	r1, r8
	sub	r7, r1, r7
.L_8f31e:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #146	@ 0x92
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, #0
	add	r1, #24
	mov	r2, ip
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_8f510
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, sl
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r6, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8f31e
	mov	r7, r8
.L_8f364:
	mov	r3, r9
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldrh	r1, [r3, #2]
	lsl	r1, r1, #3
	add	r1, r1, r5
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_8f394
	mov	r0, #0
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r5
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8f394
	strh	r0, [r3, #2]
.L_8f394:
	mov	r1, r9
	ldrh	r0, [r1, #2]
	lsl	r0, r0, #3
	add	r0, r0, r5
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r8, r0
	add	r3, #2
	cmp	r7, r8
	bge	.L_8f418
	ldr	r1, .L_8f50c
	ldr	r2, .L_8f510
	mov	ip, r2
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r5, .L_8f514
	mov	r0, #15
	neg	r0, r0
	mov	sl, r0
	mov	r1, r8
	sub	r7, r1, r7
.L_8f3be:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #96	@ 0x60
	strb	r0, [r4, #0]
	ldrb	r1, [r4, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r4, #1]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, #0
	add	r1, #215	@ 0xd7
	and	r1, r5
	ldrh	r2, [r4, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrb	r1, [r4, #3]
	mov	r0, sl
	and	r0, r1
	mov	r1, #2
	orr	r0, r1
	strb	r0, [r4, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r6, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8f3be
	mov	r7, r8
.L_8f418:
	mov	r2, r9
	ldrh	r0, [r2, #4]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r3, .L_8f534
	add	r0, r0, r3
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	mov	r2, r9
	ldrh	r0, [r2, #4]
	lsl	r0, r0, #1
	ldr	r3, .L_8f534
	add	r0, r0, r3
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #8]
	strh	r0, [r2, #0]
	mov	r3, r9
	ldrh	r0, [r3, #4]
	lsl	r0, r0, #1
	ldr	r1, .L_8f534
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
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
	ldr	r2, [sp, #12]
	strh	r0, [r2, #0]
	mov	r3, r9
	ldrh	r0, [r3, #4]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r1, .L_8f534
	add	r0, r0, r1
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #16]
	strh	r0, [r3, #0]
	ldr	r2, .L_8f50c
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #38]	@ 0x26
	ldr	r3, [sp, #8]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #46]	@ 0x2e
	ldr	r3, [sp, #12]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #54]	@ 0x36
	strh	r0, [r2, #62]	@ 0x3e
	ldr	r2, .L_8f538
	ldrb	r0, [r2, #8]
	cmp	r0, #0
	bne	.L_8f4d4
	b	.L_8f608
.L_8f4d4:
	ldr	r1, .L_8f53c
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
.L_8f4e4:
	.4byte	0x190000c0
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_8f592
	mov	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	b	.L_8f540
	.align	2, 0
.L_8f500:
	.4byte	gUnk_30049E8
.L_8f504:
	.4byte	sUnk_871E50C
.L_8f508:
	.4byte	sUnk_871E48C
.L_8f50c:
	.4byte	gOamBuffer
.L_8f510:
	.4byte	0xfffffe00
.L_8f514:
	.4byte	0x000001ff
.L_8f518:
	.4byte	gUnk_3004A2E
.L_8f51c:
	.4byte	sUnk_871E4FC
.L_8f520:
	.4byte	gWarioHopMedalIconActive
.L_8f524:
	.4byte	gWarioHopMedalAnim
.L_8f528:
	.4byte	sUnk_871E424
.L_8f52c:
	.4byte	gUnk_3004A00
.L_8f530:
	.4byte	sUnk_871E354
.L_8f534:
	.4byte	sSinCosTable
.L_8f538:
	.4byte	gUnk_3004A20
.L_8f53c:
	.4byte	sUnk_871DD5C
.L_8f540:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8f592
	strh	r0, [r2, #2]
	ldr	r0, .L_8f568
	ldrb	r4, [r0, #0]
	cmp	r4, #1
	bne	.L_8f592
	bl	MinigameRandom
	and	r4, r0
	cmp	r4, #0
	bne	.L_8f570
	ldr	r0, .L_8f56c
	bl	m4aSongNumStart
	b	.L_8f578
.L_8f568:
	.4byte	gUnk_30047BB
.L_8f56c:
	.4byte	0x00000237
.L_8f570:
	mov	r0, #142	@ 0x8e
	lsl	r0, r0, #2
	bl	m4aSongNumStart
.L_8f578:
	mov	r0, #179	@ 0xb3
	lsl	r0, r0, #2
	bl	m4aSongNumStart
	ldr	r0, .L_8f64c
	ldrb	r1, [r0, #9]
	mov	r2, #0
	strb	r1, [r0, #8]
	strh	r2, [r0, #0]
	ldr	r1, .L_8f650
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
.L_8f592:
	ldr	r1, .L_8f654
	ldr	r2, .L_8f64c
	ldrb	r0, [r2, #8]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r8, r0
	add	r3, #2
	cmp	r7, r8
	bge	.L_8f608
	ldr	r1, .L_8f658
	add	r5, r2, #0
	ldr	r0, .L_8f65c
	mov	r9, r0
	ldr	r2, .L_8f660
	mov	sl, r2
.L_8f5bc:
	.4byte	0x184400f8
	mov	r0, r8
	sub	r7, r0, r7
.L_8f5c4:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrb	r0, [r5, #6]
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
.L_8f5d4:
	.4byte	0x80323302
	add	r6, #2
	mov	r0, #4
	ldrsh	r1, [r5, r0]
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
.L_8f5f8:
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r6, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8f5c4
	mov	r7, r8
.L_8f608:
	ldr	r1, .L_8f664
	ldr	r2, .L_8f668
	ldrb	r0, [r2, #4]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcc	.L_8f62c
	b	.L_8f774
.L_8f62c:
	mov	r0, #0
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrb	r0, [r2, #4]
	cmp	r0, #4
	bne	.L_8f6ea
	ldrh	r0, [r2, #2]
	cmp	r0, #10
	bhi	.L_8f6ea
	lsl	r0, r0, #2
	ldr	r1, .L_8f66c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_8f64c:
	.4byte	gUnk_3004A20
.L_8f650:
	.4byte	gUnk_30047BB
.L_8f654:
	.4byte	sUnk_871DD5C
.L_8f658:
	asr	r4, r0, #17
	lsl	r0, r0, #12
.L_8f65c:
	.4byte	0x000001ff
.L_8f660:
	.4byte	0xfffffe00
.L_8f664:
	.4byte	sUnk_871D4F8
.L_8f668:
	.4byte	gUnk_3004A10
.L_8f66c:
	.4byte	.L_8f670
.L_8f670:
	.4byte	.L_8f6c0
	.4byte	.L_8f6ca
	.4byte	.L_8f6ea
	.4byte	.L_8f6ea
	.4byte	.L_8f6ea
	.4byte	.L_8f6d8
	.4byte	.L_8f6ea
	.4byte	.L_8f6ea
	.4byte	.L_8f6e4
	.4byte	.L_8f6ea
	.4byte	.L_8f69c
.L_8f69c:
	ldr	r1, .L_8f6b4
	mov	r0, #7
	strb	r0, [r1, #0]
	ldr	r1, .L_8f6b8
	ldr	r0, .L_8f6bc
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	bl	m4aSongNumStart
	b	.L_8f6ea
.L_8f6b4:
	.4byte	gWarioHopSubState
.L_8f6b8:
	.4byte	sUnk_871D520
.L_8f6bc:
	.4byte	gUnk_30049FC
.L_8f6c0:
	mov	r0, #138	@ 0x8a
	lsl	r0, r0, #2
	bl	m4aSongNumStart
	b	.L_8f6ea
.L_8f6ca:
	ldr	r0, .L_8f6d4
	bl	m4aSongNumStart
.L_8f6d0:
	.4byte	0x0000e00b
.L_8f6d4:
	.4byte	0x00000229
.L_8f6d8:
	ldr	r0, .L_8f6e0
	bl	m4aSongNumStart
	b	.L_8f6ea
.L_8f6e0:
	.4byte	0x0000022a
.L_8f6e4:
	ldr	r0, .L_8f70c
	bl	m4aSongNumStart
.L_8f6ea:
	ldr	r3, .L_8f710
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8f774
	strh	r0, [r3, #2]
	ldrb	r0, [r3, #4]
.L_8f6fc:
	cmp	r0, #4
	bne	.L_8f718
	mov	r0, #5
	strb	r0, [r3, #4]
	ldr	r0, .L_8f714
	ldr	r4, [r0, #20]
.L_8f708:
	b	.L_8f774
	.align	2, 0
.L_8f70c:
	.4byte	0x0000022b
.L_8f710:
	ldr	r2, .L_8f754
	lsl	r0, r0, #12
.L_8f714:
	.4byte	sUnk_871D4F8
.L_8f718:
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #3
	bhi	.L_8f774
	ldrb	r0, [r3, #5]
	add	r0, #1
	strb	r0, [r3, #5]
	ldr	r0, .L_8f734
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bne	.L_8f73c
	ldr	r2, .L_8f738
	b	.L_8f73e
.L_8f734:
	.4byte	gDifficulty
.L_8f738:
	.4byte	sUnk_871D627
.L_8f73c:
	ldr	r2, .L_8f8ac
.L_8f73e:
	ldr	r0, .L_8f8b0
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	sub	r0, #1
	ldrb	r1, [r3, #5]
	add	r0, r0, r1
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #4]
	ldr	r2, .L_8f8b4
.L_8f754:
	.4byte	0x79294d58
	lsl	r0, r1, #2
	add	r0, r0, r2
	ldr	r4, [r0, #0]
	cmp	r1, #3
	bne	.L_8f768
	ldr	r0, .L_8f8bc
	bl	m4aSongNumStart
.L_8f768:
	ldrb	r0, [r5, #4]
	cmp	r0, #2
	bne	.L_8f774
	ldr	r0, .L_8f8c0
	bl	m4aSongNumStart
.L_8f774:
	ldr	r0, .L_8f8b8
	ldrh	r0, [r0, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r8, r0
	add	r3, #2
	ldr	r2, .L_8f8c4
	mov	sl, r2
	cmp	r7, r8
.L_8f78a:
	bge	.L_8f7dc
	ldr	r1, .L_8f8c8
	ldr	r5, .L_8f8cc
	ldr	r0, .L_8f8d0
	mov	r9, r0
	lsl	r0, r7, #3
	add	r4, r0, r1
	mov	r1, r8
	sub	r7, r1, r7
.L_8f79c:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #88	@ 0x58
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, #0
	add	r1, #72	@ 0x48
	and	r1, r5
	ldrh	r2, [r4, #2]
	mov	r0, r9
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r6, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8f79c
	mov	r7, r8
.L_8f7dc:
	mov	r2, sl
	ldrb	r0, [r2, #0]
	sub	r0, #11
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #2
	bhi	.L_8f894
	ldr	r1, .L_8f8d4
	ldr	r0, .L_8f8d8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	ldr	r2, .L_8f8dc
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_8f826
	mov	r0, #0
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
.L_8f814:
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8f826
	strh	r0, [r2, #2]
.L_8f826:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
.L_8f830:
	add	r8, r0
	add	r3, #2
	cmp	r7, r8
	bge	.L_8f894
	ldr	r1, .L_8f8c8
	add	r5, r2, #0
	ldr	r0, .L_8f8cc
	mov	sl, r0
	ldr	r2, .L_8f8d0
	mov	ip, r2
	mov	r0, #13
	neg	r0, r0
	mov	r9, r0
	lsl	r0, r7, #3
	add	r4, r0, r1
	mov	r1, r8
	sub	r7, r1, r7
.L_8f852:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrb	r0, [r5, #6]
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r0, #4
	ldrsh	r1, [r5, r0]
	add	r1, r2, r1
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r6, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8f852
.L_8f894:
	ldr	r0, .L_8f8e0
	mov	r3, r8
	strb	r3, [r0, #0]
	add	sp, #20
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
.L_8f8a4:
	.4byte	0xbc01bcf0
.L_8f8a8:
	bx	r0
	.align	2, 0
.L_8f8ac:
	.4byte	sUnk_871D604
.L_8f8b0:
	.4byte	gUnk_30049FC
.L_8f8b4:
	.4byte	sUnk_871D4F8
.L_8f8b8:
	ldr	r2, .L_8f8fc
	lsl	r0, r0, #12
.L_8f8bc:
	.4byte	0x00000226
.L_8f8c0:
	.4byte	0x00000227
.L_8f8c4:
	.4byte	gWarioHopSubState
.L_8f8c8:
	.4byte	gOamBuffer
.L_8f8cc:
	.4byte	0x000001ff
.L_8f8d0:
	.4byte	0xfffffe00
.L_8f8d4:
	.4byte	sUnk_871D510
.L_8f8d8:
	.4byte	gUnk_3004A2D
.L_8f8dc:
	.4byte	gUnk_3004A18
.L_8f8e0:
	.4byte	gOamSlotsUsed


thumb_func_start func_808F8E4
func_808F8E4:
	push	{r4, r5, lr}
	ldr	r5, .L_8f8f8
	ldrb	r4, [r5, #0]
	cmp	r4, #1
	beq	.L_8f95c
	cmp	r4, #1
	bgt	.L_8f8fc
	cmp	r4, #0
	beq	.L_8f902
	b	.L_8f9d8
.L_8f8f8:
	.4byte	gUnk_30047BB
.L_8f8fc:
	cmp	r4, #2
	beq	.L_8f9bc
	b	.L_8f9d8
.L_8f902:
	mov	r0, #60	@ 0x3c
	bl	func_8089B9C
	cmp	r0, #0
	beq	.L_8f9d8
	ldr	r2, .L_8f924
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r1, .L_8f928
	cmp	r0, r1
	bls	.L_8f92c
	strh	r1, [r2, #0]
	b	.L_8f934
	.align	2, 0
.L_8f924:
	.4byte	gWarioHopScore
.L_8f928:
	.4byte	0x000003e7
.L_8f92c:
	mov	r0, #137	@ 0x89
	lsl	r0, r0, #2
	bl	m4aSongNumStart
.L_8f934:
	ldr	r0, .L_8f950
	ldr	r3, .L_8f954
	ldrh	r2, [r0, #0]
	ldrh	r0, [r3, #0]
	cmp	r2, r0
	bls	.L_8f948
	ldr	r1, .L_8f958
	mov	r0, #1
	strb	r0, [r1, #0]
	strh	r2, [r3, #0]
.L_8f948:
	bl	func_808ED88
	b	.L_8f9a6
	.align	2, 0
.L_8f950:
	.4byte	gWarioHopScore
.L_8f954:
	.4byte	gMinigameHighScores
.L_8f958:
	.4byte	gWarioHopNewHighScore
.L_8f95c:
	mov	r0, #20
	bl	func_8089B9C
	cmp	r0, #0
	beq	.L_8f9d8
	ldr	r0, .L_8f98c
	ldrh	r0, [r0, #0]
	mov	r1, #3
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	bne	.L_8f9a6
	ldr	r2, .L_8f990
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r1, .L_8f994
	cmp	r0, r1
	bls	.L_8f998
	strh	r1, [r2, #0]
	b	.L_8f9a2
.L_8f98c:
	.4byte	gWarioHopScore
.L_8f990:
	.4byte	gMedalCount
.L_8f994:
	.4byte	0x000003e7
.L_8f998:
	ldr	r0, .L_8f9b0
	bl	m4aSongNumStart
	ldr	r0, .L_8f9b4
	strb	r4, [r0, #0]
.L_8f9a2:
	bl	func_808ED88
.L_8f9a6:
	ldr	r1, .L_8f9b8
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	b	.L_8f9d8
.L_8f9b0:
	.4byte	0x00000223
.L_8f9b4:
	.4byte	gWarioHopMedalIconActive
.L_8f9b8:
	.4byte	gUnk_30047BB
.L_8f9bc:
	mov	r0, #30
	bl	func_8089B9C
	cmp	r0, #0
	beq	.L_8f9d8
	ldr	r1, .L_8f9d4
	mov	r0, #0
	strh	r0, [r1, #0]
	strb	r0, [r5, #0]
	mov	r0, #1
	b	.L_8f9da
	.align	2, 0
.L_8f9d4:
	.4byte	gUnk_30047BC
.L_8f9d8:
	mov	r0, #0
.L_8f9da:
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_808F9E0
func_808F9E0:
	push	{r4, r5, r6, lr}
	ldr	r5, .L_8f9f8
	ldrb	r0, [r5, #0]
	add	r2, r5, #0
	cmp	r0, #1
	bne	.L_8f9ee
	b	.L_8faec
.L_8f9ee:
	cmp	r0, #1
.L_8f9f0:
	bgt	.L_8f9fc
	cmp	r0, #0
	beq	.L_8fa02
	b	.L_8faec
.L_8f9f8:
	.4byte	gUnk_30047BB
.L_8f9fc:
	cmp	r0, #2
	beq	.L_8fa7e
	b	.L_8faec
.L_8fa02:
	ldr	r0, .L_8fa1c
	ldrb	r1, [r0, #10]
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_8fa20
	ldrh	r0, [r4, #6]
	add	r0, #1
	strh	r0, [r4, #6]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #80	@ 0x50
	ble	.L_8fa32
	b	.L_8fa2e
.L_8fa1c:
	.4byte	gUnk_3004A20
.L_8fa20:
	ldrh	r0, [r4, #6]
	sub	r0, #1
	strh	r0, [r4, #6]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #79	@ 0x4f
	bgt	.L_8fa32
.L_8fa2e:
	mov	r0, #80	@ 0x50
	strh	r0, [r4, #6]
.L_8fa32:
	add	r5, r4, #0
	mov	r1, #6
	ldrsh	r0, [r5, r1]
	cmp	r0, #80	@ 0x50
	bne	.L_8faec
	ldrb	r0, [r2, #0]
	add	r0, #1
	strb	r0, [r2, #0]
	mov	r0, #0
	strh	r0, [r5, #0]
	strh	r0, [r5, #2]
	ldrb	r0, [r5, #8]
	cmp	r0, #4
	beq	.L_8fa6a
	cmp	r0, #4
	bgt	.L_8faec
	cmp	r0, #1
	blt	.L_8faec
	bl	MinigameRandom
	lsr	r1, r0, #31
	add	r1, r0, r1
	asr	r1, r1, #1
	lsl	r1, r1, #1
	sub	r0, r0, r1
	add	r0, #7
	strb	r0, [r5, #8]
	b	.L_8faec
.L_8fa6a:
	bl	MinigameRandom
	lsr	r1, r0, #31
	add	r1, r0, r1
	asr	r1, r1, #1
	lsl	r1, r1, #1
	sub	r0, r0, r1
	add	r0, #5
	strb	r0, [r4, #8]
	b	.L_8faec
.L_8fa7e:
	ldr	r3, .L_8fab0
	ldrb	r4, [r3, #10]
	cmp	r4, #0
	beq	.L_8fabc
	ldrh	r0, [r3, #6]
	add	r0, #1
	mov	r4, #0
	strh	r0, [r3, #6]
	mov	r0, #6
	ldrsh	r2, [r3, r0]
	ldr	r1, .L_8fab4
	ldrb	r0, [r3, #10]
	sub	r0, #1
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	cmp	r2, r0
.L_8faa0:
	.4byte	0x4905dd24
	mov	r0, #0
	strh	r0, [r1, #0]
	strb	r4, [r5, #0]
	strb	r4, [r3, #8]
	mov	r0, #1
	b	.L_8faee
.L_8fab0:
	.4byte	gUnk_3004A20
.L_8fab4:
	.4byte	sUnk_871DD84
.L_8fab8:
	.4byte	gUnk_30047BC
.L_8fabc:
	ldrh	r0, [r3, #6]
	sub	r0, #1
	mov	r6, #0
	strh	r0, [r3, #6]
	mov	r1, #6
	ldrsh	r2, [r3, r1]
	ldr	r1, .L_8fae4
	ldrb	r0, [r3, #10]
	add	r0, #1
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	cmp	r2, r0
	bge	.L_8faec
	ldr	r0, .L_8fae8
	strh	r4, [r0, #0]
	strb	r6, [r5, #0]
	strb	r6, [r3, #8]
	mov	r0, #1
	b	.L_8faee
.L_8fae4:
	.4byte	sUnk_871DD84
.L_8fae8:
	.4byte	gUnk_30047BC
.L_8faec:
	mov	r0, #0
.L_8faee:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_808FAF4
func_808FAF4:
	push	{r4, r5, lr}
	bl	MinigameRandom
	ldr	r4, .L_8fb44
	lsr	r1, r0, #31
	add	r1, r0, r1
	asr	r1, r1, #1
	lsl	r1, r1, #1
	sub	r5, r0, r1
	strb	r5, [r4, #10]
	mov	r0, #120	@ 0x78
	strh	r0, [r4, #4]
	ldr	r1, .L_8fb48
	ldrb	r0, [r4, #10]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	strh	r0, [r4, #6]
	ldr	r0, .L_8fb4c
	ldrb	r0, [r0, #0]
	mov	r1, #3
	bl	__umodsi3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	beq	.L_8fb50
	cmp	r0, #2
	beq	.L_8fb54
	add	r0, r5, #1
	strb	r0, [r4, #8]
	bl	MinigameRandom
	mov	r1, #3
	bl	__modsi3
	cmp	r0, #0
	bne	.L_8fb58
	mov	r0, #3
	b	.L_8fb56
.L_8fb44:
	.4byte	gUnk_3004A20
.L_8fb48:
	.4byte	sUnk_871DD84
.L_8fb4c:
	.4byte	gUnk_3004A2C
.L_8fb50:
	mov	r0, #4
	b	.L_8fb56
.L_8fb54:
	mov	r0, #9
.L_8fb56:
	strb	r0, [r4, #8]
.L_8fb58:
	ldr	r0, .L_8fb78
	mov	r1, #0
	strh	r1, [r0, #0]
	strh	r1, [r0, #2]
	ldrb	r1, [r0, #8]
	strb	r1, [r0, #9]
	ldr	r1, .L_8fb7c
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_8fb80
	bl	m4aSongNumStart
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_8fb78:
	.4byte	gUnk_3004A20
.L_8fb7c:
	.4byte	gUnk_3004A2C
.L_8fb80:
	.4byte	0x000002cb
