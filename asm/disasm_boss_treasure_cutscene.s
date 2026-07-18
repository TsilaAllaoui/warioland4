.include "macros.s.inc"


thumb_func_start func_8082024
func_8082024:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	bl	func_8082ED4
	bl	func_8082DC4
	ldr	r0, .L_8204c
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bls	.L_82042
	b	.L_8240a
.L_82042:
	lsl	r0, r0, #2
	ldr	r1, .L_82050
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_8204c:
	.4byte	gUnk_3003C39
.L_82050:
	.4byte	.L_82054
.L_82054:
	.4byte	.L_82068
	.4byte	.L_820d4
	.4byte	.L_82138
	.4byte	.L_82248
	.4byte	.L_82364
.L_82068:
	mov	r4, #0
	ldr	r0, .L_820c8
	ldrb	r1, [r0, #0]
	cmp	r4, r1
	bgt	.L_820a8
	ldr	r7, .L_820cc
	add	r6, r0, #0
	mov	r5, #65	@ 0x41
	ldr	r2, .L_820d0
	mov	r0, #1
	mov	r8, r0
.L_8207e:
	lsl	r1, r4, #3
	ldrh	r0, [r7, #0]
	cmp	r0, r1
	bne	.L_8208a
	mov	r1, r8
	strb	r1, [r2, #6]
.L_8208a:
	ldrh	r0, [r7, #0]
	cmp	r0, r5
	bne	.L_8209c
	mov	r3, #0
	strb	r3, [r2, #6]
	ldrb	r0, [r6, #0]
	cmp	r4, r0
	bne	.L_8209c
	b	.L_82388
.L_8209c:
	add	r5, #8
	add	r2, #8
	add	r4, #1
	ldrb	r1, [r6, #0]
	cmp	r4, r1
	ble	.L_8207e
.L_820a8:
	bl	func_80825D0
	bl	func_8082C48
	ldr	r4, .L_820cc
	ldrh	r0, [r4, #0]
	mov	r1, #3
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_820c2
	b	.L_82210
.L_820c2:
	bl	func_8082AC8
	b	.L_82210
.L_820c8:
	.4byte	gUnk_30040E8
.L_820cc:
	.4byte	gUnk_3003C3A
.L_820d0:
	.4byte	gUnk_30040C8
.L_820d4:
	bl	func_8082C48
	ldr	r3, .L_82124
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldrh	r2, [r3, #0]
	mov	r0, #1
	and	r2, r0
	cmp	r2, #0
	beq	.L_820ec
	b	.L_8240a
.L_820ec:
	ldr	r0, .L_82128
	ldrh	r1, [r0, #0]
	add	r1, #1
	strh	r1, [r0, #0]
	ldr	r0, .L_8212c
	strh	r1, [r0, #0]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r1, #15
	beq	.L_82102
	b	.L_8240a
.L_82102:
	strh	r2, [r3, #0]
	ldr	r1, .L_82130
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	ldr	r2, .L_82134
	add	r0, r2, #0
	strh	r0, [r1, #0]
	bl	func_8082C98
	mov	r0, #215	@ 0xd7
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_8240a
.L_82124:
	.4byte	gUnk_3003C3A
.L_82128:
	.4byte	gBldy
.L_8212c:
	.4byte	0x4000054
.L_82130:
	.4byte	gUnk_3003C39
.L_82134:
	.4byte	0x1404
.L_82138:
	ldr	r0, .L_82218
	ldrh	r0, [r0, #0]
	mov	r1, #3
	and	r0, r1
	cmp	r0, #0
	bne	.L_82154
	ldr	r0, .L_8221c
	ldrh	r1, [r0, #0]
	cmp	r1, #0
	beq	.L_82154
	sub	r1, #1
	strh	r1, [r0, #0]
	ldr	r0, .L_82220
	strh	r1, [r0, #0]
.L_82154:
	mov	r4, #0
	ldr	r0, .L_82224
	ldrb	r1, [r0, #0]
	cmp	r4, r1
	bgt	.L_821b8
	ldr	r2, .L_82218
	mov	sl, r2
	ldr	r5, .L_82228
	mov	r7, #14
	mov	r1, #1
	mov	r9, r1
	add	r3, r0, #0
.L_8216c:
	lsl	r2, r4, #4
	mov	r1, sl
	ldrh	r0, [r1, #0]
	cmp	r0, r7
	bne	.L_8217a
	mov	r0, r9
	strb	r0, [r5, #6]
.L_8217a:
	mov	r0, sl
	ldrh	r1, [r0, #0]
	add	r0, r2, #0
	add	r0, #174	@ 0xae
	cmp	r1, r0
	bne	.L_821ac
	mov	r6, #0
	strb	r6, [r5, #6]
	ldr	r0, .L_8222c
	mov	r1, r9
	strb	r1, [r0, #0]
	ldr	r0, .L_82230
	mov	r2, #0
	mov	r8, r2
	strh	r6, [r0, #0]
	mov	r0, #214	@ 0xd6
	lsl	r0, r0, #1
	str	r3, [sp, #0]
	bl	m4aSongNumStart
	ldr	r3, [sp, #0]
	ldrb	r0, [r3, #0]
	cmp	r4, r0
	bne	.L_821ac
	b	.L_82398
.L_821ac:
	add	r5, #8
	add	r7, #16
	add	r4, #1
	ldrb	r1, [r3, #0]
	cmp	r4, r1
	ble	.L_8216c
.L_821b8:
	bl	func_8082640
	bl	func_8082C48
	ldr	r4, .L_82218
	ldrh	r0, [r4, #0]
	mov	r1, #3
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	bne	.L_821d4
	bl	func_8082AC8
.L_821d4:
	ldrh	r0, [r4, #0]
	cmp	r0, #158	@ 0x9e
	bhi	.L_82210
	ldr	r2, .L_82234
	ldr	r1, .L_82238
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	ldrh	r1, [r2, #0]
	add	r0, r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_8223c
	ldrh	r0, [r4, #0]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	ldrh	r1, [r2, #2]
	add	r0, r0, r1
	strh	r0, [r2, #2]
	ldr	r2, .L_82240
	ldr	r1, .L_82244
	ldrh	r0, [r4, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	bl	func_8082CE0
.L_82210:
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	b	.L_8240a
.L_82218:
	.4byte	gUnk_3003C3A
.L_8221c:
	.4byte	gBldy
.L_82220:
	.4byte	0x4000054
.L_82224:
	.4byte	gUnk_30040E8
.L_82228:
	.4byte	gUnk_30040C8
.L_8222c:
	.4byte	gUnk_300463C
.L_82230:
	.4byte	gUnk_300463A
.L_82234:
	.4byte	gUnk_3003C20
.L_82238:
	.4byte	sUnk_863A6D2
.L_8223c:
	.4byte	sUnk_863A771
.L_82240:
	.4byte	gUnk_30040C0
.L_82244:
	.4byte	sUnk_863A810
.L_82248:
	mov	r4, #0
	ldr	r6, .L_8227c
	ldr	r7, .L_82280
	ldr	r2, .L_82284
	mov	r8, r2
	ldrh	r3, [r6, #0]
	ldr	r2, .L_82288
	ldr	r5, .L_8228c
.L_82258:
	add	r0, r4, r7
	ldrb	r0, [r0, #0]
	cmp	r3, r0
	bne	.L_82294
	ldr	r1, .L_82290
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #11
	bgt	.L_82274
	mov	r0, #12
	strb	r0, [r1, #0]
.L_82274:
	ldrb	r0, [r2, #0]
	add	r0, #1
	b	.L_822b6
	.align	2, 0
.L_8227c:
	.4byte	gUnk_3003C3A
.L_82280:
	.4byte	sUnk_863AD0E
.L_82284:
	.4byte	sUnk_863AD58
.L_82288:
	.4byte	gUnk_3003C3D
.L_8228c:
	.4byte	0x4000052
.L_82290:
	.4byte	gUnk_3003C3C
.L_82294:
	ldr	r0, .L_822e4
	add	r0, r4, r0
	ldrb	r0, [r0, #0]
	cmp	r3, r0
	bne	.L_822c8
	ldr	r1, .L_822e8
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #16
	ble	.L_822b2
	mov	r0, #16
	strb	r0, [r1, #0]
.L_822b2:
	ldrb	r0, [r2, #0]
	sub	r0, #1
.L_822b6:
	strb	r0, [r2, #0]
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #24
	asr	r1, r1, #24
	lsl	r1, r1, #8
	mov	r0, #0
	ldrsb	r0, [r2, r0]
	orr	r0, r1
	strh	r0, [r5, #0]
.L_822c8:
	add	r4, #1
	cmp	r4, #9
	ble	.L_82258
	mov	r4, #0
	ldr	r5, .L_822ec
	ldr	r3, .L_822f0
.L_822d4:
	mov	r1, r8
	add	r0, r4, r1
	ldrb	r2, [r0, #0]
	ldrh	r0, [r5, #0]
	cmp	r0, r2
	bne	.L_822f4
	mov	r0, #1
	b	.L_82304
.L_822e4:
	.4byte	sUnk_863AD18
.L_822e8:
	.4byte	gUnk_3003C3C
.L_822ec:
	.4byte	gUnk_3003C3A
.L_822f0:
	.4byte	gUnk_3004108
.L_822f4:
	ldrh	r0, [r6, #0]
	ldr	r1, .L_82354
	add	r1, r4, r1
	ldrb	r1, [r1, #0]
	add	r1, r2, r1
	cmp	r0, r1
	bne	.L_82306
	mov	r0, #0
.L_82304:
	strb	r0, [r3, #2]
.L_82306:
	add	r3, #4
	add	r4, #1
	cmp	r4, #10
	ble	.L_822d4
	bl	func_8082734
	mov	r4, #0
	ldr	r6, .L_82358
	ldr	r3, .L_8235c
	mov	r2, #34	@ 0x22
.L_8231a:
	ldrh	r0, [r6, #0]
	cmp	r0, r2
	bne	.L_82324
	mov	r0, #1
	strb	r0, [r3, #2]
.L_82324:
	ldrh	r0, [r6, #0]
	ldr	r1, .L_82360
	add	r1, r4, r1
	ldrb	r1, [r1, #0]
	add	r1, r1, r2
	cmp	r0, r1
	bne	.L_8233a
	mov	r5, #0
	strb	r5, [r3, #2]
	cmp	r4, #4
	beq	.L_823f4
.L_8233a:
	add	r3, #4
	sub	r2, #5
	add	r4, #1
	cmp	r4, #4
	ble	.L_8231a
	bl	func_80826B0
	ldr	r1, .L_82358
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	b	.L_8240a
	.align	2, 0
.L_82354:
	.4byte	sUnk_863AD63
.L_82358:
	.4byte	gUnk_3003C3A
.L_8235c:
	.4byte	gUnk_30040F0
.L_82360:
	.4byte	sUnk_863AD22
.L_82364:
	ldr	r2, .L_82380
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #10
	bls	.L_8240a
	mov	r1, #0
	strh	r1, [r2, #0]
	ldr	r0, .L_82384
	strb	r1, [r0, #0]
	mov	r0, #1
	b	.L_8240c
.L_82380:
	.4byte	gUnk_3003C3A
.L_82384:
	.4byte	gUnk_3003C39
.L_82388:
	ldr	r1, .L_82394
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	strh	r3, [r7, #0]
	b	.L_8240a
.L_82394:
	.4byte	gUnk_3003C39
.L_82398:
	ldr	r1, .L_823d8
	mov	r2, #130	@ 0x82
	lsl	r2, r2, #3
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_823dc
	mov	r0, #16
	strb	r0, [r1, #0]
	ldr	r0, .L_823e0
	mov	r1, r8
	strb	r1, [r0, #0]
	ldr	r2, .L_823e4
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #5
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r0, .L_823e8
	mov	r2, r8
	strb	r2, [r0, #0]
	mov	r0, sl
	strh	r6, [r0, #0]
	ldr	r1, .L_823ec
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_823f0
	bl	m4aSongNumStart
	b	.L_8240a
.L_823d8:
	.4byte	0x4000050
.L_823dc:
	.4byte	gUnk_3003C3C
.L_823e0:
	.4byte	gUnk_3003C3D
.L_823e4:
	.4byte	0x4000052
.L_823e8:
	.4byte	gUnk_3004639
.L_823ec:
	.4byte	gUnk_3003C39
.L_823f0:
	.4byte	0x1AF
.L_823f4:
	bl	InitMinigameScoreDisplay
	ldr	r0, .L_8241c
	strh	r5, [r0, #0]
	ldr	r0, .L_82420
	strh	r5, [r0, #0]
	strh	r5, [r6, #0]
	ldr	r1, .L_82424
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
.L_8240a:
	mov	r0, #0
.L_8240c:
	add	sp, #4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L_8241c:
	.4byte	gBldy
.L_82420:
	.4byte	0x4000054
.L_82424:
	.4byte	gUnk_3003C39


thumb_func_start func_8082428
func_8082428:
	push	{r4, lr}
	bl	InitializeVideoMemory
	ldr	r1, .L_8256c
	ldr	r0, .L_82570
	str	r0, [r1, #0]
	ldr	r0, .L_82574
	str	r0, [r1, #4]
	ldr	r0, .L_82578
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_82450
.L_82448:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_82448
.L_82450:
	ldr	r0, .L_8256c
	ldr	r1, .L_8257c
	str	r1, [r0, #0]
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	str	r1, [r0, #4]
	ldr	r1, .L_82578
	str	r1, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_82580
	str	r1, [r0, #0]
	ldr	r1, .L_82584
	str	r1, [r0, #4]
	ldr	r1, .L_82588
	str	r1, [r0, #8]
	ldr	r1, [r0, #8]
	add	r1, r0, #0
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	ldr	r3, .L_8258c
	cmp	r0, #0
	bge	.L_82486
.L_8247e:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8247e
.L_82486:
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	add	r0, r3, #0
	bl	LZ77UnCompVram
	bl	InitMinigameScoreDisplay
	ldr	r1, .L_82590
	mov	r4, #0
	mov	r2, #0
	mov	r0, #32
	strh	r0, [r1, #0]
	strh	r2, [r1, #2]
	ldr	r1, .L_82594
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #1
	add	r0, r3, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_82598
	strb	r4, [r0, #0]
	ldr	r0, .L_8259c
	strh	r2, [r0, #0]
	bl	func_8082CE0
	ldr	r2, .L_825a0
	strb	r4, [r2, #0]
	ldr	r4, .L_825a4
	ldr	r3, .L_825a8
	ldrb	r1, [r3, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r0, [r0, #16]
	lsl	r0, r0, #29
	cmp	r0, #0
	bge	.L_824d4
	mov	r0, #1
	strb	r0, [r2, #0]
.L_824d4:
	ldrb	r0, [r3, #0]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #3
	add	r1, r1, r4
	ldrb	r0, [r1, #16]
	lsl	r0, r0, #30
	cmp	r0, #0
	bge	.L_824ec
	ldrb	r0, [r2, #0]
	add	r0, #1
	strb	r0, [r2, #0]
.L_824ec:
	ldrb	r0, [r1, #16]
	lsl	r0, r0, #31
	cmp	r0, #0
	beq	.L_824fa
	ldrb	r0, [r2, #0]
	add	r0, #1
	strb	r0, [r2, #0]
.L_824fa:
	ldr	r1, .L_825ac
	mov	r2, #0
	add	r0, r1, #0
	add	r0, #24
.L_82502:
	strb	r2, [r0, #6]
	sub	r0, #8
	cmp	r0, r1
	bge	.L_82502
	ldr	r1, .L_825b0
	mov	r2, #0
	add	r0, r1, #0
	add	r0, #16
.L_82512:
	strb	r2, [r0, #2]
	sub	r0, #4
	cmp	r0, r1
	bge	.L_82512
	ldr	r1, .L_825b4
	mov	r2, #0
	add	r0, r1, #0
	add	r0, #40	@ 0x28
.L_82522:
	strb	r2, [r0, #2]
	sub	r0, #4
	cmp	r0, r1
	bge	.L_82522
	mov	r4, #0
	bl	func_8082C98
	ldr	r0, .L_825b8
	mov	r2, #0
	strh	r4, [r0, #0]
	ldr	r1, .L_825bc
	ldr	r0, .L_825a8
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	ldr	r0, .L_825c0
	strh	r4, [r0, #0]
	ldr	r0, .L_825c4
	strb	r2, [r0, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	ldr	r2, .L_825c8
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #26
	ldr	r2, .L_82590
	ldrh	r0, [r2, #2]
	strh	r0, [r1, #0]
	sub	r1, #2
	ldrh	r0, [r2, #0]
	strh	r0, [r1, #0]
	ldr	r0, .L_825cc
	bl	m4aSongNumStart
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8256c:
	.4byte	0x40000D4
.L_82570:
	.4byte	sUnk_868E2C8
.L_82574:
	.4byte	0x5000200
.L_82578:
	.4byte	0x80000100
.L_8257c:
	.4byte	sUnk_868CD5C
.L_82580:
	.4byte	sUnk_868E4C8
.L_82584:
	.4byte	0x6014000
.L_82588:
	.4byte	0x80000C00
.L_8258c:
	.4byte	sUnk_868CF5C
.L_82590:
	.4byte	gUnk_3003C20
.L_82594:
	.4byte	gUnk_30040C0
.L_82598:
	.4byte	gUnk_3003C39
.L_8259c:
	.4byte	gUnk_3003C3A
.L_825a0:
	.4byte	gUnk_30040E8
.L_825a4:
	.4byte	gCurrentCollection
.L_825a8:
	.4byte	gCurrentPassageTemp
.L_825ac:
	.4byte	gUnk_30040C8
.L_825b0:
	.4byte	gUnk_30040F0
.L_825b4:
	.4byte	gUnk_3004108
.L_825b8:
	.4byte	gUnk_3003C62
.L_825bc:
	.4byte	gUnk_3004639
.L_825c0:
	.4byte	gUnk_300463A
.L_825c4:
	.4byte	gUnk_300463C
.L_825c8:
	.4byte	0x1004
.L_825cc:
	.4byte	0x1AD


thumb_func_start func_80825D0
func_80825D0:
	push	{r4, r5, r6, r7, lr}
	mov	r3, #0
	ldr	r0, .L_82628
	add	r5, r0, #0
	ldrb	r0, [r5, #0]
	cmp	r3, r0
	bgt	.L_82620
	ldr	r0, .L_8262c
	mov	ip, r0
	ldr	r4, .L_82630
	ldr	r7, .L_82634
	ldr	r6, .L_82638
	ldr	r2, .L_8263c
.L_825ea:
	lsl	r1, r3, #3
	ldrb	r0, [r2, #6]
	cmp	r0, #0
	beq	.L_82616
	ldrh	r0, [r4, #0]
	sub	r0, r0, r1
	lsl	r0, r0, #1
	add	r0, ip
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldrh	r0, [r4, #0]
	sub	r0, r0, r1
	lsl	r0, r0, #1
	add	r0, r0, r7
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #2]
	ldrh	r0, [r4, #0]
	sub	r0, r0, r1
	lsl	r0, r0, #1
	add	r0, r0, r6
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #4]
.L_82616:
	add	r2, #8
	add	r3, #1
	ldrb	r0, [r5, #0]
	cmp	r3, r0
	ble	.L_825ea
.L_82620:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_82628:
	.4byte	gUnk_30040E8
.L_8262c:
	.4byte	sUnk_863A54C
.L_82630:
	.4byte	gUnk_3003C3A
.L_82634:
	.4byte	sUnk_863A5CE
.L_82638:
	.4byte	sUnk_863A650
.L_8263c:
	.4byte	gUnk_30040C8


thumb_func_start func_8082640
func_8082640:
	push	{r4, r5, r6, r7, lr}
	mov	r3, #0
	ldr	r0, .L_82698
	add	r5, r0, #0
	ldrb	r0, [r5, #0]
	cmp	r3, r0
	bgt	.L_82692
	ldr	r0, .L_8269c
	mov	ip, r0
	ldr	r4, .L_826a0
	ldr	r7, .L_826a4
	ldr	r6, .L_826a8
	ldr	r1, .L_826ac
	mov	r2, #14
.L_8265c:
	ldrb	r0, [r1, #6]
	cmp	r0, #0
	beq	.L_82686
	ldrh	r0, [r4, #0]
	sub	r0, r0, r2
	lsl	r0, r0, #1
	add	r0, ip
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	ldrh	r0, [r4, #0]
	sub	r0, r0, r2
	lsl	r0, r0, #1
	add	r0, r0, r7
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #2]
	ldrh	r0, [r4, #0]
	sub	r0, r0, r2
	lsl	r0, r0, #1
	add	r0, r0, r6
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #4]
.L_82686:
	add	r1, #8
	add	r2, #16
	add	r3, #1
	ldrb	r0, [r5, #0]
	cmp	r3, r0
	ble	.L_8265c
.L_82692:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_82698:
	.4byte	gUnk_30040E8
.L_8269c:
	.4byte	sUnk_863A94E
.L_826a0:
	.4byte	gUnk_3003C3A
.L_826a4:
	.4byte	sUnk_863AA8E
.L_826a8:
	.4byte	sUnk_863ABCE
.L_826ac:
	.4byte	gUnk_30040C8


thumb_func_start func_80826B0
func_80826B0:
	push	{r4, r5, r6, r7, lr}
	mov	r4, #0
	ldr	r0, .L_826f8
	mov	ip, r0
	ldr	r7, .L_826fc
	ldr	r6, .L_82700
	ldr	r5, .L_82704
.L_826be:
	ldrb	r0, [r5, #2]
	cmp	r0, #0
	beq	.L_82724
	mov	r0, #4
	sub	r0, r0, r4
	lsl	r1, r0, #2
	add	r1, r1, r0
	add	r1, #14
	ldr	r3, .L_82708
	ldrb	r0, [r3, #0]
	sub	r0, #1
	add	r0, ip
	ldrb	r0, [r0, #0]
	strb	r0, [r5, #0]
	ldr	r0, .L_8270c
	add	r0, r4, r0
	ldrb	r2, [r0, #0]
	ldr	r0, .L_82710
	ldrh	r0, [r0, #0]
	sub	r0, r0, r1
	cmp	r2, r0
	bgt	.L_82714
	ldrb	r0, [r3, #0]
	sub	r0, #1
	lsl	r1, r0, #2
	add	r1, r1, r0
	add	r1, r4, r1
	add	r1, r1, r7
	b	.L_82720
.L_826f8:
	.4byte	sUnk_863AD27
.L_826fc:
	.4byte	sUnk_863AD3F
.L_82700:
	.4byte	sUnk_863AD2B
.L_82704:
	.4byte	gUnk_30040F0
.L_82708:
	.4byte	gCurrentPassageTemp
.L_8270c:
	.4byte	sUnk_863AD53
.L_82710:
	.4byte	gUnk_3003C3A
.L_82714:
	ldrb	r0, [r3, #0]
	sub	r0, #1
	lsl	r1, r0, #2
	add	r1, r1, r0
	add	r1, r4, r1
	add	r1, r1, r6
.L_82720:
	ldrb	r0, [r1, #0]
	strb	r0, [r5, #1]
.L_82724:
	add	r5, #4
	add	r4, #1
	cmp	r4, #4
	ble	.L_826be
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8082734
func_8082734:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, #0
	ldr	r0, .L_82760
	mov	ip, r0
.L_82740:
	lsl	r0, r7, #2
	mov	r2, ip
	add	r1, r0, r2
	ldrb	r1, [r1, #2]
	add	r2, r0, #0
	cmp	r1, #0
	bne	.L_82750
	b	.L_82aa0
.L_82750:
	cmp	r7, #10
	bls	.L_82756
	b	.L_82aa0
.L_82756:
	ldr	r0, .L_82764
	add	r0, r2, r0
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_82760:
	.4byte	gUnk_3004108
.L_82764:
	.4byte	.L_82768
.L_82768:
	.4byte	.L_82794
	.4byte	.L_827d4
	.4byte	.L_82814
	.4byte	.L_82854
	.4byte	.L_828a8
	.4byte	.L_828fc
	.4byte	.L_82950
	.4byte	.L_82990
	.4byte	.L_829d0
	.4byte	.L_82a10
	.4byte	.L_82a64
.L_82794:
	add	r2, ip
	mov	r8, r2
	ldr	r2, .L_827c0
	ldr	r6, .L_827c4
	ldrh	r1, [r6, #0]
	ldr	r0, .L_827c8
	add	r0, r7, r0
	ldrb	r5, [r0, #0]
	sub	r1, r1, r5
	ldr	r4, .L_827cc
	ldrb	r0, [r4, #0]
	sub	r0, #1
	mov	r3, #46	@ 0x2e
	mul	r0, r3
	add	r1, r1, r0
	add	r1, r1, r2
	ldrb	r0, [r1, #0]
	mov	r1, r8
	strb	r0, [r1, #0]
	ldr	r2, .L_827d0
	b	.L_82a8c
	.align	2, 0
.L_827c0:
	.4byte	sUnk_863AD6E
.L_827c4:
	.4byte	gUnk_3003C3A
.L_827c8:
	.4byte	sUnk_863AD58
.L_827cc:
	.4byte	gCurrentPassageTemp
.L_827d0:
	.4byte	sUnk_863AE26
.L_827d4:
	add	r2, ip
	mov	r8, r2
	ldr	r2, .L_82800
	ldr	r6, .L_82804
	ldrh	r1, [r6, #0]
	ldr	r0, .L_82808
	add	r0, r7, r0
	ldrb	r5, [r0, #0]
	sub	r1, r1, r5
	ldr	r4, .L_8280c
	ldrb	r0, [r4, #0]
	sub	r0, #1
	mov	r3, #46	@ 0x2e
	mul	r0, r3
	add	r1, r1, r0
	add	r1, r1, r2
	ldrb	r0, [r1, #0]
	mov	r1, r8
	strb	r0, [r1, #0]
	ldr	r2, .L_82810
	b	.L_82a8c
	.align	2, 0
.L_82800:
	.4byte	sUnk_863AEDE
.L_82804:
	.4byte	gUnk_3003C3A
.L_82808:
	.4byte	sUnk_863AD58
.L_8280c:
	.4byte	gCurrentPassageTemp
.L_82810:
	.4byte	sUnk_863AF96
.L_82814:
	add	r2, ip
	mov	r8, r2
	ldr	r2, .L_82840
	ldr	r6, .L_82844
	ldrh	r1, [r6, #0]
	ldr	r0, .L_82848
	add	r0, r7, r0
	ldrb	r5, [r0, #0]
	sub	r1, r1, r5
	ldr	r4, .L_8284c
	ldrb	r0, [r4, #0]
	sub	r0, #1
	mov	r3, #46	@ 0x2e
	mul	r0, r3
	add	r1, r1, r0
	add	r1, r1, r2
	ldrb	r0, [r1, #0]
	mov	r1, r8
	strb	r0, [r1, #0]
	ldr	r2, .L_82850
	b	.L_82a8c
	.align	2, 0
.L_82840:
	.4byte	sUnk_863B04E
.L_82844:
	.4byte	gUnk_3003C3A
.L_82848:
	.4byte	sUnk_863AD58
.L_8284c:
	.4byte	gCurrentPassageTemp
.L_82850:
	.4byte	sUnk_863B106
.L_82854:
	add	r2, ip
	mov	r8, r2
	ldr	r4, .L_82894
	ldr	r6, .L_82898
	ldrh	r2, [r6, #0]
	ldr	r0, .L_8289c
	add	r0, r7, r0
	ldrb	r5, [r0, #0]
	sub	r2, r2, r5
	ldr	r3, .L_828a0
	ldrb	r1, [r3, #0]
	sub	r1, #1
	lsl	r0, r1, #3
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r2, r2, r0
	add	r2, r2, r4
	ldrb	r0, [r2, #0]
	mov	r1, r8
	strb	r0, [r1, #0]
	ldr	r4, .L_828a4
	ldrh	r2, [r6, #0]
	sub	r2, r2, r5
	ldrb	r1, [r3, #0]
	sub	r1, #1
	lsl	r0, r1, #3
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r2, r2, r0
	add	r2, r2, r4
	ldrb	r0, [r2, #0]
	b	.L_82a9c
.L_82894:
	.4byte	sUnk_863B1BE
.L_82898:
	.4byte	gUnk_3003C3A
.L_8289c:
	.4byte	sUnk_863AD58
.L_828a0:
	.4byte	gCurrentPassageTemp
.L_828a4:
	.4byte	sUnk_863B24E
.L_828a8:
	add	r2, ip
	mov	r8, r2
	ldr	r4, .L_828e8
	ldr	r6, .L_828ec
	ldrh	r2, [r6, #0]
	ldr	r0, .L_828f0
	add	r0, r7, r0
	ldrb	r5, [r0, #0]
	sub	r2, r2, r5
	ldr	r3, .L_828f4
	ldrb	r1, [r3, #0]
	sub	r1, #1
	lsl	r0, r1, #3
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r2, r2, r0
	add	r2, r2, r4
	ldrb	r0, [r2, #0]
	mov	r1, r8
	strb	r0, [r1, #0]
	ldr	r4, .L_828f8
	ldrh	r2, [r6, #0]
	sub	r2, r2, r5
	ldrb	r1, [r3, #0]
	sub	r1, #1
	lsl	r0, r1, #3
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r2, r2, r0
	add	r2, r2, r4
	ldrb	r0, [r2, #0]
	b	.L_82a9c
.L_828e8:
	.4byte	sUnk_863B2DE
.L_828ec:
	.4byte	gUnk_3003C3A
.L_828f0:
	.4byte	sUnk_863AD58
.L_828f4:
	.4byte	gCurrentPassageTemp
.L_828f8:
	.4byte	sUnk_863B36E
.L_828fc:
	add	r2, ip
	mov	r8, r2
	ldr	r4, .L_8293c
	ldr	r6, .L_82940
	ldrh	r2, [r6, #0]
	ldr	r0, .L_82944
	add	r0, r7, r0
	ldrb	r5, [r0, #0]
	sub	r2, r2, r5
	ldr	r3, .L_82948
	ldrb	r1, [r3, #0]
	sub	r1, #1
	lsl	r0, r1, #3
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r2, r2, r0
	add	r2, r2, r4
	ldrb	r0, [r2, #0]
	mov	r1, r8
	strb	r0, [r1, #0]
	ldr	r4, .L_8294c
	ldrh	r2, [r6, #0]
	sub	r2, r2, r5
	ldrb	r1, [r3, #0]
	sub	r1, #1
	lsl	r0, r1, #3
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r2, r2, r0
	add	r2, r2, r4
	ldrb	r0, [r2, #0]
	b	.L_82a9c
.L_8293c:
	.4byte	sUnk_863B3FE
.L_82940:
	.4byte	gUnk_3003C3A
.L_82944:
	.4byte	sUnk_863AD58
.L_82948:
	.4byte	gCurrentPassageTemp
.L_8294c:
	.4byte	sUnk_863B48E
.L_82950:
	add	r2, ip
	mov	r8, r2
	ldr	r2, .L_8297c
	ldr	r6, .L_82980
	ldrh	r1, [r6, #0]
	ldr	r0, .L_82984
	add	r0, r7, r0
	ldrb	r5, [r0, #0]
	sub	r1, r1, r5
	ldr	r4, .L_82988
	ldrb	r0, [r4, #0]
	sub	r0, #1
	mov	r3, #46	@ 0x2e
	mul	r0, r3
	add	r1, r1, r0
	add	r1, r1, r2
	ldrb	r0, [r1, #0]
	mov	r1, r8
	strb	r0, [r1, #0]
	ldr	r2, .L_8298c
	b	.L_82a8c
	.align	2, 0
.L_8297c:
	.4byte	sUnk_863B51E
.L_82980:
	.4byte	gUnk_3003C3A
.L_82984:
	.4byte	sUnk_863AD58
.L_82988:
	.4byte	gCurrentPassageTemp
.L_8298c:
	.4byte	sUnk_863B5D6
.L_82990:
	add	r2, ip
	mov	r8, r2
	ldr	r2, .L_829bc
	ldr	r6, .L_829c0
	ldrh	r1, [r6, #0]
	ldr	r0, .L_829c4
	add	r0, r7, r0
	ldrb	r5, [r0, #0]
	sub	r1, r1, r5
	ldr	r4, .L_829c8
	ldrb	r0, [r4, #0]
	sub	r0, #1
	mov	r3, #46	@ 0x2e
	mul	r0, r3
	add	r1, r1, r0
	add	r1, r1, r2
	ldrb	r0, [r1, #0]
	mov	r1, r8
	strb	r0, [r1, #0]
	ldr	r2, .L_829cc
	b	.L_82a8c
	.align	2, 0
.L_829bc:
	.4byte	sUnk_863B68E
.L_829c0:
	.4byte	gUnk_3003C3A
.L_829c4:
	.4byte	sUnk_863AD58
.L_829c8:
	.4byte	gCurrentPassageTemp
.L_829cc:
	.4byte	sUnk_863B746
.L_829d0:
	add	r2, ip
	mov	r8, r2
	ldr	r2, .L_829fc
	ldr	r6, .L_82a00
	ldrh	r1, [r6, #0]
	ldr	r0, .L_82a04
	add	r0, r7, r0
	ldrb	r5, [r0, #0]
	sub	r1, r1, r5
	ldr	r4, .L_82a08
	ldrb	r0, [r4, #0]
	sub	r0, #1
	mov	r3, #46	@ 0x2e
	mul	r0, r3
	add	r1, r1, r0
	add	r1, r1, r2
	ldrb	r0, [r1, #0]
	mov	r1, r8
	strb	r0, [r1, #0]
	ldr	r2, .L_82a0c
	b	.L_82a8c
	.align	2, 0
.L_829fc:
	.4byte	sUnk_863B7FE
.L_82a00:
	.4byte	gUnk_3003C3A
.L_82a04:
	.4byte	sUnk_863AD58
.L_82a08:
	.4byte	gCurrentPassageTemp
.L_82a0c:
	.4byte	sUnk_863B8B6
.L_82a10:
	add	r2, ip
	mov	r8, r2
	ldr	r4, .L_82a50
	ldr	r6, .L_82a54
	ldrh	r2, [r6, #0]
	ldr	r0, .L_82a58
	add	r0, r7, r0
	ldrb	r5, [r0, #0]
	sub	r2, r2, r5
	ldr	r3, .L_82a5c
	ldrb	r1, [r3, #0]
	sub	r1, #1
	lsl	r0, r1, #3
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r2, r2, r0
	add	r2, r2, r4
	ldrb	r0, [r2, #0]
	mov	r1, r8
	strb	r0, [r1, #0]
	ldr	r4, .L_82a60
	ldrh	r2, [r6, #0]
	sub	r2, r2, r5
	ldrb	r1, [r3, #0]
	sub	r1, #1
	lsl	r0, r1, #3
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r2, r2, r0
	add	r2, r2, r4
	ldrb	r0, [r2, #0]
	b	.L_82a9c
.L_82a50:
	.4byte	sUnk_863B96E
.L_82a54:
	.4byte	gUnk_3003C3A
.L_82a58:
	.4byte	sUnk_863AD58
.L_82a5c:
	.4byte	gCurrentPassageTemp
.L_82a60:
	.4byte	sUnk_863B9FE
.L_82a64:
	add	r2, ip
	mov	r8, r2
	ldr	r2, .L_82ab4
	ldr	r6, .L_82ab8
	ldrh	r1, [r6, #0]
	ldr	r0, .L_82abc
	add	r0, r7, r0
	ldrb	r5, [r0, #0]
	sub	r1, r1, r5
	ldr	r4, .L_82ac0
	ldrb	r0, [r4, #0]
	sub	r0, #1
	mov	r3, #46	@ 0x2e
	mul	r0, r3
	add	r1, r1, r0
	add	r1, r1, r2
	ldrb	r0, [r1, #0]
	mov	r1, r8
	strb	r0, [r1, #0]
	ldr	r2, .L_82ac4
.L_82a8c:
	ldrh	r1, [r6, #0]
	sub	r1, r1, r5
	ldrb	r0, [r4, #0]
	sub	r0, #1
	mul	r0, r3
	add	r1, r1, r0
	add	r1, r1, r2
	ldrb	r0, [r1, #0]
.L_82a9c:
	mov	r2, r8
	strb	r0, [r2, #1]
.L_82aa0:
	add	r7, #1
	cmp	r7, #10
	bgt	.L_82aa8
	b	.L_82740
.L_82aa8:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_82ab4:
	.4byte	sUnk_863BA8E
.L_82ab8:
	.4byte	gUnk_3003C3A
.L_82abc:
	.4byte	sUnk_863AD58
.L_82ac0:
	.4byte	gCurrentPassageTemp
.L_82ac4:
	.4byte	sUnk_863BB46


thumb_func_start func_8082AC8
func_8082AC8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	mov	r0, #0
	str	r0, [sp, #0]
	ldr	r0, .L_82c28
	ldr	r1, [sp, #0]
	ldrb	r0, [r0, #0]
	cmp	r1, r0
	ble	.L_82ae4
	b	.L_82c02
.L_82ae4:
	ldr	r2, .L_82c2c
	mov	sl, r2
	mov	r0, #0
	mov	r9, r0
.L_82aec:
	ldr	r0, .L_82c30
	ldr	r2, [sp, #0]
	lsl	r1, r2, #3
	add	r7, r1, r0
	ldrb	r0, [r7, #6]
	cmp	r0, #0
	beq	.L_82bea
	ldrh	r1, [r7, #4]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	bl	__divsi3
	mov	r8, r0
	bl	MinigameRandom
	mov	r1, sl
	ldrb	r4, [r1, #0]
	lsl	r4, r4, #4
	add	r4, r9
	ldr	r2, .L_82c34
	add	r4, r4, r2
	ldrh	r5, [r7, #0]
	lsl	r5, r5, #4
	ldr	r6, .L_82c38
	mov	r1, #3
	bl	__modsi3
	lsl	r0, r0, #2
	add	r0, r0, r6
	ldr	r0, [r0, #0]
	mov	r1, r8
	bl	__divsi3
	add	r5, r5, r0
	strh	r5, [r4, #0]
	bl	MinigameRandom
	mov	r1, sl
	ldrb	r4, [r1, #0]
	lsl	r4, r4, #4
	add	r4, r9
	ldr	r2, .L_82c34
	add	r4, r4, r2
	ldrh	r5, [r7, #2]
	lsl	r5, r5, #4
	ldr	r6, .L_82c3c
	mov	r1, #3
	bl	__modsi3
	lsl	r0, r0, #2
	add	r0, r0, r6
	ldr	r0, [r0, #0]
	mov	r1, r8
	bl	__divsi3
	add	r5, r5, r0
	strh	r5, [r4, #2]
	bl	MinigameRandom
	mov	r1, sl
	ldrb	r4, [r1, #0]
	lsl	r4, r4, #4
	add	r4, r9
	ldr	r2, .L_82c34
	add	r4, r4, r2
	ldr	r5, .L_82c40
	mov	r1, #3
	bl	__modsi3
	lsl	r0, r0, #2
	add	r0, r0, r5
	ldr	r0, [r0, #0]
	mov	r1, r8
	bl	__divsi3
	strb	r0, [r4, #5]
	bl	MinigameRandom
	mov	r1, sl
	ldrb	r4, [r1, #0]
	lsl	r4, r4, #4
	add	r4, r9
	ldr	r2, .L_82c34
	add	r4, r4, r2
	ldr	r5, .L_82c44
	mov	r1, #3
	bl	__modsi3
	lsl	r0, r0, #2
	add	r0, r0, r5
	ldr	r0, [r0, #0]
	mov	r1, r8
	bl	__divsi3
	strb	r0, [r4, #6]
	mov	r0, sl
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #4
	add	r1, r9
	ldr	r2, .L_82c34
	add	r1, r1, r2
	ldrh	r0, [r7, #4]
	lsr	r0, r0, #7
	strb	r0, [r1, #4]
	mov	r1, sl
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	add	r0, r9
	add	r0, r0, r2
	mov	r1, #1
	strb	r1, [r0, #12]
	mov	r2, sl
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #4
	add	r0, r9
	ldr	r1, .L_82c34
	add	r0, r0, r1
	mov	r2, #0
	strh	r2, [r0, #8]
	mov	r1, sl
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #4
	add	r0, r9
	ldr	r2, .L_82c34
	add	r0, r0, r2
	mov	r1, #0
	strh	r1, [r0, #10]
.L_82bea:
	mov	r2, #160	@ 0xa0
	lsl	r2, r2, #1
	add	r9, r2
	ldr	r0, [sp, #0]
	add	r0, #1
	str	r0, [sp, #0]
	ldr	r0, .L_82c28
	ldr	r1, [sp, #0]
	ldrb	r0, [r0, #0]
	cmp	r1, r0
	bgt	.L_82c02
	b	.L_82aec
.L_82c02:
	ldr	r1, .L_82c2c
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #20
	bne	.L_82c16
	mov	r0, #0
	strb	r0, [r1, #0]
.L_82c16:
	add	sp, #4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_82c28:
	.4byte	gUnk_30040E8
.L_82c2c:
	.4byte	gUnk_3004638
.L_82c30:
	.4byte	gUnk_30040C8
.L_82c34:
	.4byte	gUnk_3004138
.L_82c38:
	.4byte	sUnk_863BC64
.L_82c3c:
	.4byte	sUnk_863BC70
.L_82c40:
	.4byte	sUnk_863BC4C
.L_82c44:
	.4byte	sUnk_863BC58


thumb_func_start func_8082C48
func_8082C48:
	push	{r4, r5, r6, lr}
	mov	r1, #0
	ldr	r0, .L_82c90
	ldrb	r0, [r0, #0]
	add	r0, #1
	cmp	r1, r0
	bge	.L_82c88
	ldr	r5, .L_82c94
	add	r4, r0, #0
.L_82c5a:
	lsl	r0, r1, #2
	add	r3, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #6
	add	r1, r0, r5
	mov	r2, #19
.L_82c66:
	mov	r0, #5
	ldrsb	r0, [r1, r0]
	ldrh	r6, [r1, #0]
	add	r0, r0, r6
	strh	r0, [r1, #0]
	mov	r0, #6
	ldrsb	r0, [r1, r0]
	ldrh	r6, [r1, #2]
	add	r0, r0, r6
	strh	r0, [r1, #2]
	add	r1, #16
	sub	r2, #1
	cmp	r2, #0
	bge	.L_82c66
	add	r1, r3, #0
	cmp	r1, r4
	blt	.L_82c5a
.L_82c88:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_82c90:
	.4byte	gUnk_30040E8
.L_82c94:
	.4byte	gUnk_3004138


thumb_func_start func_8082C98
func_8082C98:
	push	{r4, r5, r6, r7, lr}
	ldr	r1, .L_82cd8
	mov	r0, #0
	strb	r0, [r1, #0]
	mov	r1, #0
	ldr	r6, .L_82cdc
	mov	r3, #0
	mov	r5, #0
	add	r7, r6, #6
.L_82caa:
	lsl	r0, r1, #2
	add	r4, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #6
	add	r1, r0, r7
	add	r0, r0, r6
	mov	r2, #19
.L_82cb8:
	strh	r5, [r1, #2]
	strh	r5, [r1, #4]
	strb	r3, [r0, #5]
	strb	r3, [r1, #0]
	strb	r3, [r1, #6]
	add	r1, #16
	add	r0, #16
	sub	r2, #1
	cmp	r2, #0
	bge	.L_82cb8
	add	r1, r4, #0
	cmp	r1, #3
	ble	.L_82caa
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_82cd8:
	.4byte	gUnk_3004638
.L_82cdc:
	.4byte	gUnk_3004138


thumb_func_start func_8082CE0
func_8082CE0:
	push	{r4, r5, r6, lr}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	ldr	r4, .L_82db8
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r9, r1
	ldr	r0, .L_82dbc
	mov	r8, r0
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, r9
	bl	FixedMul
	ldr	r5, .L_82dc0
	strh	r0, [r5, #4]
	mov	r2, #0
	ldrsh	r6, [r4, r2]
	mov	r1, r8
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r5, #6]
	ldrh	r4, [r4, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r1, r8
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #8]
	mov	r1, r8
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, r9
	bl	FixedMul
	strh	r0, [r5, #10]
	mov	r1, #0
	ldrsh	r0, [r5, r1]
	mov	r1, #120	@ 0x78
	sub	r1, r1, r0
	lsl	r1, r1, #8
	mov	r0, #4
	ldrsh	r2, [r5, r0]
	lsl	r0, r2, #4
	sub	r0, r0, r2
	lsl	r0, r0, #3
	sub	r1, r1, r0
	mov	r0, #6
	ldrsh	r2, [r5, r0]
	lsl	r0, r2, #2
	add	r0, r0, r2
	lsl	r0, r0, #4
	sub	r1, r1, r0
	str	r1, [r5, #12]
	mov	r1, #2
	ldrsh	r0, [r5, r1]
	mov	r1, #64	@ 0x40
	sub	r1, r1, r0
	lsl	r1, r1, #8
	mov	r0, #8
	ldrsh	r2, [r5, r0]
	lsl	r0, r2, #4
	sub	r0, r0, r2
	lsl	r0, r0, #3
	sub	r1, r1, r0
	mov	r0, #10
	ldrsh	r2, [r5, r0]
	lsl	r0, r2, #2
	add	r0, r0, r2
	lsl	r0, r0, #4
	sub	r1, r1, r0
	str	r1, [r5, #16]
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_82db8:
	.4byte	sSinCosTable
.L_82dbc:
	.4byte	gUnk_30040C0
.L_82dc0:
	.4byte	gUnk_3003C20


thumb_func_start func_8082DC4
func_8082DC4:
	push	{r4, lr}
	ldr	r4, .L_82ea0
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	ldrh	r0, [r4, #0]
	mov	r1, #10
	bl	__udivsi3
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r3, #11
	ble	.L_82de4
	mov	r0, #0
	strh	r0, [r4, #0]
	mov	r3, #0
.L_82de4:
	cmp	r3, #6
	ble	.L_82dec
	mov	r0, #12
	sub	r3, r0, r3
.L_82dec:
	ldr	r2, .L_82ea4
	add	r0, r2, #0
	add	r0, #112	@ 0x70
	ldrb	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	add	r4, r2, #0
	cmp	r0, #0
	beq	.L_82e1a
	ldr	r0, .L_82ea8
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	beq	.L_82e1a
	ldr	r2, .L_82eac
	lsl	r0, r3, #1
	ldr	r1, .L_82eb0
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_82eb4
	str	r0, [r2, #4]
	ldr	r0, .L_82eb8
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_82e1a:
	add	r0, r4, #0
	add	r0, #64	@ 0x40
	ldrb	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_82e44
	ldr	r0, .L_82ea8
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	beq	.L_82e44
	ldr	r2, .L_82eac
	lsl	r0, r3, #1
	ldr	r1, .L_82ebc
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_82ec0
	str	r0, [r2, #4]
	ldr	r0, .L_82eb8
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_82e44:
	add	r0, r4, #0
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_82e6e
	ldr	r0, .L_82ea8
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	beq	.L_82e6e
	ldr	r2, .L_82eac
	lsl	r0, r3, #1
	ldr	r1, .L_82ec4
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_82ec8
	str	r0, [r2, #4]
	ldr	r0, .L_82eb8
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_82e6e:
	add	r0, r4, #0
	add	r0, #88	@ 0x58
	ldrb	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_82e98
	ldr	r0, .L_82ea8
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	beq	.L_82e98
	ldr	r2, .L_82eac
	lsl	r0, r3, #1
	ldr	r1, .L_82ecc
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_82ed0
	str	r0, [r2, #4]
	ldr	r0, .L_82eb8
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_82e98:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_82ea0:
	.4byte	gUnk_3003C62
.L_82ea4:
	.4byte	gCurrentCollection
.L_82ea8:
	.4byte	gUnk_3004639
.L_82eac:
	.4byte	0x40000D4
.L_82eb0:
	.4byte	sUnk_864BD78
.L_82eb4:
	.4byte	0x500000C
.L_82eb8:
	.4byte	0x80000001
.L_82ebc:
	.4byte	sUnk_864BD98
.L_82ec0:
	.4byte	0x500001A
.L_82ec4:
	.4byte	sUnk_864BDB8
.L_82ec8:
	.4byte	0x500000E
.L_82ecc:
	.4byte	sUnk_864BDD8
.L_82ed0:
	.4byte	0x5000018


thumb_func_start func_8082ED4
func_8082ED4:
	push	{r4, r5, lr}
	ldr	r4, .L_82f08
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	ldr	r2, .L_82f0c
	ldrb	r5, [r2, #0]
	cmp	r5, #0
	beq	.L_82f18
	ldrh	r0, [r4, #0]
	lsr	r1, r0, #1
	cmp	r1, #5
	ble	.L_82ef6
	mov	r0, #0
	strh	r0, [r4, #0]
	strb	r0, [r2, #0]
	mov	r1, #0
.L_82ef6:
	cmp	r1, #3
	ble	.L_82efe
	mov	r0, #6
	sub	r1, r0, r1
.L_82efe:
	ldr	r2, .L_82f10
	lsl	r0, r1, #5
	ldr	r1, .L_82f14
	b	.L_82f3a
	.align	2, 0
.L_82f08:
	.4byte	gUnk_300463A
.L_82f0c:
	.4byte	gUnk_300463C
.L_82f10:
	.4byte	0x40000D4
.L_82f14:
	.4byte	sUnk_868FDA8
.L_82f18:
	ldrh	r0, [r4, #0]
	mov	r1, #10
	bl	__udivsi3
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	cmp	r1, #9
	ble	.L_82f2c
	strh	r5, [r4, #0]
	mov	r1, #0
.L_82f2c:
	cmp	r1, #5
	ble	.L_82f34
	mov	r0, #10
	sub	r1, r0, r1
.L_82f34:
	ldr	r2, .L_82f50
	lsl	r0, r1, #5
	ldr	r1, .L_82f54
.L_82f3a:
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_82f58
	str	r0, [r2, #4]
	ldr	r0, .L_82f5c
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_82f50:
	.4byte	0x40000D4
.L_82f54:
	.4byte	sUnk_868FCC8
.L_82f58:
	.4byte	0x5000002
.L_82f5c:
	.4byte	0x80000010


thumb_func_start func_8082F60
func_8082F60:
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
	.4byte	gUnk_30040E8
.L_83058:
	.4byte	gUnk_3004138
.L_8305c:
	.4byte	sUnk_8641598
.L_83060:
	.4byte	gUnk_30040C8
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
	.4byte	gUnk_3004138
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
	.4byte	gUnk_30040E8
.L_83254:
	.4byte	sSinCosTable
.L_83258:
	.4byte	gOamBuffer
.L_8325c:
	.4byte	gUnk_3003C39
.L_83260:
	.4byte	gUnk_30040C8
.L_83264:
	.4byte	sUnk_863BC00
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
	.4byte	sUnk_864141C
.L_833b8:
	.4byte	gUnk_30040C8
.L_833bc:
	.4byte	gOamBuffer
.L_833c0:
	.4byte	0x1FF
.L_833c4:
	.4byte	0xFFFFFE00
.L_833c8:
	.4byte	gUnk_30040E8
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
	.4byte	gUnk_30040E8
.L_83420:
	.4byte	gUnk_30040C8
.L_83424:
	.4byte	sSinCosTable
.L_83428:
	.4byte	gOamBuffer
.L_8342c:
	.4byte	sUnk_863BC00
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
	.4byte	sUnk_864141C
.L_83490:
	.4byte	gUnk_30040C8
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
	.4byte	gUnk_30040C8
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
	.4byte	gUnk_3004108
.L_83734:
	.4byte	sUnk_863BC20
.L_83738:
	.4byte	gOamBuffer
.L_8373c:
	.4byte	0x1FF
.L_83740:
	.4byte	gUnk_30040F0
.L_83744:
	.4byte	gCurrentPassageTemp
.L_83748:
	.4byte	sUnk_863BC10
.L_8374c:
	.4byte	gOamSlotsUsed


thumb_func_start func_8083750
func_8083750:
	ldr	r1, .L_8378c
	ldr	r2, .L_83790
	ldrh	r0, [r2, #4]
	strh	r0, [r1, #0]
	add	r1, #2
	ldrh	r0, [r2, #6]
	strh	r0, [r1, #0]
	add	r1, #2
	ldrh	r0, [r2, #8]
	strh	r0, [r1, #0]
	add	r1, #2
	ldrh	r0, [r2, #10]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, [r2, #12]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r3, .L_83794
	and	r0, r3
	asr	r0, r0, #16
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, [r2, #16]
	strh	r0, [r1, #0]
	add	r1, #2
	and	r0, r3
	asr	r0, r0, #16
	strh	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_8378c:
	.4byte	0x4000020
.L_83790:
	.4byte	gUnk_3003C20
.L_83794:
	.4byte	0xFFF0000
