.include "macros.s.inc"


thumb_func_start func_808167C
func_808167C:
	push	{lr}
	ldr	r0, .L_81694
	mov	r2, #10
	ldrsh	r1, [r0, r2]
	mov	r0, #180	@ 0xb4
	lsl	r0, r0, #4
	cmp	r1, r0
	bgt	.L_81698
	bl	func_8081C8C
	mov	r0, #0
	b	.L_8169e
.L_81694:
	.4byte	gUnk_3003C0C
.L_81698:
	bl	func_8081C58
	mov	r0, #1
.L_8169e:
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_80816A4
func_80816A4:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_816b8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_816b2
	cmp	r0, #5
	bne	.L_816c0
.L_816b2:
	ldr	r1, .L_816bc
	mov	r0, #1
	b	.L_816c4
.L_816b8:
	.4byte	gCurrentPassage
.L_816bc:
	.4byte	gUnk_3003C4A
.L_816c0:
	ldr	r1, .L_8181c
	mov	r0, #0
.L_816c4:
	strb	r0, [r1, #0]
	bl	InitializeVideoMemory
	ldr	r0, .L_81820
	ldr	r1, .L_81824
	str	r1, [r0, #0]
	ldr	r1, .L_81828
	str	r1, [r0, #4]
	ldr	r2, .L_8182c
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_81830
	str	r1, [r0, #0]
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	str	r1, [r0, #4]
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	add	r2, r0, #0
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_816fc
.L_816f4:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_816f4
.L_816fc:
	ldr	r1, .L_81820
	ldr	r0, .L_81834
	str	r0, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_81838
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	ldr	r5, .L_8183c
	ldr	r4, .L_8181c
	ldr	r3, .L_81840
	ldr	r6, .L_81844
	ldr	r7, .L_81848
	cmp	r0, #0
	bge	.L_8172a
.L_81722:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_81722
.L_8172a:
	ldr	r1, .L_81820
	str	r3, [r1, #0]
	ldr	r0, .L_8184c
	str	r0, [r1, #4]
	ldr	r0, .L_81850
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8174a
.L_81742:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_81742
.L_8174a:
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_8177a
	ldr	r2, .L_81820
	ldrb	r0, [r5, #0]
	sub	r0, #1
	lsl	r0, r0, #5
	ldr	r1, .L_81854
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_81858
	str	r0, [r2, #4]
	ldr	r0, .L_8185c
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_8177a
.L_81772:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_81772
.L_8177a:
	ldr	r1, .L_81820
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #5
	add	r0, r0, r6
	str	r0, [r1, #0]
	ldr	r0, .L_81860
	str	r0, [r1, #4]
	ldr	r0, .L_8185c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_817a0
.L_81798:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_81798
.L_817a0:
	ldr	r1, .L_81820
	str	r7, [r1, #0]
	ldr	r0, .L_81864
	str	r0, [r1, #4]
	ldr	r0, .L_81868
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #204	@ 0xcc
	mov	r2, #196	@ 0xc4
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	mov	r0, #231	@ 0xe7
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	mov	r0, #6
	bl	VoiceSetPlay
	bl	InitMinigameScoreDisplay
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r3, #136	@ 0x88
	lsl	r3, r3, #5
	add	r0, r3, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_8186c
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_81870
	strb	r1, [r0, #0]
	ldr	r1, .L_81874
	mov	r2, #0
	mov	r3, #156	@ 0x9c
	lsl	r3, r3, #2
	add	r0, r1, r3
.L_817ea:
	strb	r2, [r0, #12]
	sub	r0, #16
	cmp	r0, r1
	bge	.L_817ea
	ldr	r1, .L_81878
	mov	r0, #0
	strb	r0, [r1, #0]
	bl	func_8081BA8
	ldr	r1, .L_8187c
	mov	r2, #0
	add	r0, r1, #0
	add	r0, #64	@ 0x40
.L_81804:
	strb	r2, [r0, #12]
	sub	r0, #16
	cmp	r0, r1
	bge	.L_81804
	ldr	r0, .L_81880
	ldr	r1, [r0, #0]
	cmp	r1, #0
	bne	.L_81888
	ldr	r0, .L_81884
	strb	r1, [r0, #0]
	b	.L_818a2
	.align	2, 0
.L_8181c:
	.4byte	gUnk_3003C4A
.L_81820:
	.4byte	0x40000D4
.L_81824:
	.4byte	sUnk_868249C
.L_81828:
	.4byte	0x5000200
.L_8182c:
	.4byte	0x80000100
.L_81830:
	.4byte	sUnk_868B95C
.L_81834:
	.4byte	sUnk_868BB5C
.L_81838:
	.4byte	0x80000500
.L_8183c:
	.4byte	gCurrentPassage
.L_81840:
	.4byte	sUnk_868269C
.L_81844:
	.4byte	sUnk_868A81C
.L_81848:
	.4byte	sUnk_868C55C
.L_8184c:
	.4byte	0x6010000
.L_81850:
	.4byte	0x80002000
.L_81854:
	.4byte	sUnk_868A8DC
.L_81858:
	.4byte	0x50003C0
.L_8185c:
	.4byte	0x80000010
.L_81860:
	.4byte	0x50003A0
.L_81864:
	.4byte	0x600C000
.L_81868:
	.4byte	0x80000400
.L_8186c:
	.4byte	gUnk_30040B8
.L_81870:
	.4byte	gUnk_30040BA
.L_81874:
	.4byte	gUnk_3003DE8
.L_81878:
	.4byte	gUnk_30040BB
.L_8187c:
	.4byte	gUnk_3004068
.L_81880:
	.4byte	gStageScore
.L_81884:
	.4byte	gUnk_30040B9
.L_81888:
	ldr	r4, .L_818d4
	add	r0, r1, #0
	mov	r1, #200	@ 0xc8
	bl	__divsi3
	add	r0, #1
	strb	r0, [r4, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #5
	bls	.L_818a2
	mov	r0, #5
	strb	r0, [r4, #0]
.L_818a2:
	ldr	r0, .L_818d8
	mov	r2, #0
	strh	r2, [r0, #2]
	ldr	r1, .L_818dc
	mov	r0, #240	@ 0xf0
	lsl	r0, r0, #3
	strh	r0, [r1, #8]
	mov	r0, #255	@ 0xff
	lsl	r0, r0, #8
	strh	r0, [r1, #10]
	strh	r2, [r1, #12]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	strh	r0, [r1, #14]
	strh	r0, [r1, #16]
	ldr	r0, .L_818e0
	strh	r2, [r0, #0]
	ldr	r0, .L_818e4
	strh	r2, [r0, #0]
	sub	r0, #2
	strh	r2, [r0, #0]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_818d4:
	.4byte	gUnk_30040B9
.L_818d8:
	.4byte	gUnk_3003C20
.L_818dc:
	.4byte	gUnk_3003C0C
.L_818e0:
	.4byte	gUnk_3003C3A
.L_818e4:
	.4byte	0x4000012


thumb_func_start func_80818E8
func_80818E8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, .L_819a0
	ldrb	r0, [r3, #0]
	cmp	r0, #0
	bne	.L_818fc
	b	.L_81a74
.L_818fc:
	ldr	r1, .L_819a4
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldrb	r2, [r1, #0]
	ldr	r1, .L_819a8
	ldrb	r0, [r3, #0]
	sub	r0, #1
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	cmp	r2, r0
	bne	.L_81a10
	ldr	r0, .L_819ac
	mov	sl, r0
	ldr	r7, .L_819b0
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #4
	add	r0, sl
	mov	r1, #0
	mov	r9, r1
	mov	r5, #1
	strb	r5, [r0, #12]
	bl	MinigameRandom
	ldrb	r4, [r7, #0]
	lsl	r4, r4, #4
	add	r4, sl
	ldr	r2, .L_819b4
	mov	r8, r2
	ldr	r6, .L_819b8
	mov	r1, #6
	bl	__modsi3
	lsl	r0, r0, #2
	add	r0, r0, r6
	ldr	r1, [r0, #0]
	mov	r2, r8
	ldrh	r0, [r2, #8]
	add	r0, r0, r1
	strh	r0, [r4, #4]
	bl	MinigameRandom
	ldrb	r4, [r7, #0]
	lsl	r4, r4, #4
	add	r4, sl
	mov	r1, #6
	bl	__modsi3
	lsl	r0, r0, #2
	add	r0, r0, r6
	ldr	r1, [r0, #0]
	mov	r2, r8
	ldrh	r0, [r2, #10]
	add	r0, r0, r1
	strh	r0, [r4, #6]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #4
	add	r0, sl
	mov	r1, r9
	strh	r1, [r0, #8]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #4
	add	r0, sl
	strh	r1, [r0, #10]
	ldrb	r0, [r7, #0]
	and	r5, r0
	cmp	r5, #0
	beq	.L_819c0
	bl	MinigameRandom
	ldrb	r4, [r7, #0]
	lsl	r4, r4, #4
	add	r4, sl
	ldr	r5, .L_819bc
	mov	r1, #6
	bl	__modsi3
	lsl	r0, r0, #2
	add	r0, r0, r5
	ldr	r0, [r0, #0]
	b	.L_819da
.L_819a0:
	.4byte	gUnk_30040B9
.L_819a4:
	.4byte	gUnk_30040BA
.L_819a8:
	.4byte	sUnk_863A498
.L_819ac:
	.4byte	gUnk_3003DE8
.L_819b0:
	.4byte	gUnk_30040B8
.L_819b4:
	.4byte	gUnk_3003C0C
.L_819b8:
	.4byte	sUnk_863A4DC
.L_819bc:
	.4byte	sUnk_863A4C4
.L_819c0:
	bl	MinigameRandom
	ldrb	r4, [r7, #0]
	lsl	r4, r4, #4
	add	r4, sl
	ldr	r5, .L_81a44
	mov	r1, #6
	bl	__modsi3
	lsl	r0, r0, #2
	add	r0, r0, r5
	ldr	r0, [r0, #0]
	neg	r0, r0
.L_819da:
	strh	r0, [r4, #0]
	bl	MinigameRandom
	ldr	r1, .L_81a48
	ldr	r6, .L_81a4c
	ldrb	r4, [r6, #0]
	lsl	r4, r4, #4
	add	r4, r4, r1
	ldr	r5, .L_81a50
	mov	r1, #6
	bl	__modsi3
	lsl	r0, r0, #2
	add	r0, r0, r5
	ldr	r0, [r0, #0]
	mov	r1, #0
	strh	r0, [r4, #2]
	ldr	r0, .L_81a54
	strb	r1, [r0, #0]
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #39	@ 0x27
	bne	.L_81a10
	strb	r1, [r6, #0]
.L_81a10:
	mov	r2, #240	@ 0xf0
	lsl	r2, r2, #4
	mov	r8, r2
	ldr	r6, .L_81a58
	ldr	r1, .L_81a48
	mov	r5, #180	@ 0xb4
	lsl	r5, r5, #4
	mov	r7, #156	@ 0x9c
	lsl	r7, r7, #2
	add	r4, r1, r7
.L_81a24:
	ldrh	r3, [r1, #4]
	mov	r2, #4
	ldrsh	r0, [r1, r2]
	cmp	r0, r8
	bgt	.L_81a3c
	ldrh	r2, [r1, #6]
	mov	r7, #6
	ldrsh	r0, [r1, r7]
	cmp	r0, r6
	blt	.L_81a3c
	cmp	r0, r5
	ble	.L_81a5c
.L_81a3c:
	mov	r0, #0
	strb	r0, [r1, #12]
	b	.L_81a6e
	.align	2, 0
.L_81a44:
	.4byte	sUnk_863A4C4
.L_81a48:
	.4byte	gUnk_3003DE8
.L_81a4c:
	.4byte	gUnk_30040B8
.L_81a50:
	.4byte	sUnk_863A4AC
.L_81a54:
	.4byte	gUnk_30040BA
.L_81a58:
	.4byte	0xFFFFFF00
.L_81a5c:
	ldrb	r0, [r1, #12]
	cmp	r0, #0
	beq	.L_81a6e
	ldrh	r0, [r1, #2]
	add	r0, r2, r0
	strh	r0, [r1, #6]
	ldrh	r0, [r1, #0]
	add	r0, r3, r0
	strh	r0, [r1, #4]
.L_81a6e:
	add	r1, #16
	cmp	r1, r4
	ble	.L_81a24
.L_81a74:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8081A84
func_8081A84:
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L_81ae4
	ldrb	r0, [r4, #0]
	cmp	r0, #4
	bhi	.L_81b3c
	ldr	r6, .L_81ae8
	mov	r0, #10
	ldrsh	r2, [r6, r0]
	ldr	r1, .L_81aec
	ldrb	r3, [r4, #0]
	lsl	r0, r3, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	cmp	r2, r0
	ble	.L_81b3c
	ldr	r5, .L_81af0
	lsl	r0, r3, #4
	add	r0, r0, r5
	mov	r2, #1
	strb	r2, [r0, #12]
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #4
	add	r0, r0, r5
	ldrh	r1, [r6, #8]
	strh	r1, [r0, #4]
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #4
	add	r0, r0, r5
	ldrh	r1, [r6, #10]
	strh	r1, [r0, #6]
	ldrb	r0, [r4, #0]
	and	r2, r0
	cmp	r2, #0
	beq	.L_81af8
	bl	MinigameRandom
	ldrb	r4, [r4, #0]
	lsl	r4, r4, #4
	add	r4, r4, r5
	ldr	r5, .L_81af4
	mov	r1, #6
	bl	__modsi3
	lsl	r0, r0, #2
	add	r0, r0, r5
	ldr	r0, [r0, #0]
	b	.L_81b12
	.align	2, 0
.L_81ae4:
	.4byte	gUnk_30040BB
.L_81ae8:
	.4byte	gUnk_3003C0C
.L_81aec:
	.4byte	sUnk_863A4F4
.L_81af0:
	.4byte	gUnk_3004068
.L_81af4:
	.4byte	sUnk_863A534
.L_81af8:
	bl	MinigameRandom
	ldrb	r4, [r4, #0]
	lsl	r4, r4, #4
	add	r4, r4, r5
	ldr	r5, .L_81b6c
	mov	r1, #6
	bl	__modsi3
	lsl	r0, r0, #2
	add	r0, r0, r5
	ldr	r0, [r0, #0]
	neg	r0, r0
.L_81b12:
	strh	r0, [r4, #0]
	bl	MinigameRandom
	ldr	r1, .L_81b70
	ldr	r5, .L_81b74
	ldrb	r4, [r5, #0]
	lsl	r4, r4, #4
	add	r4, r4, r1
	ldr	r6, .L_81b78
	mov	r1, #6
	bl	__modsi3
	lsl	r0, r0, #2
	add	r0, r0, r6
	ldr	r0, [r0, #0]
	strh	r0, [r4, #2]
	ldrb	r0, [r5, #0]
	add	r0, #1
	strb	r0, [r5, #0]
	bl	func_8081BA8
.L_81b3c:
	ldr	r4, .L_81b70
	mov	r2, #240	@ 0xf0
	lsl	r2, r2, #4
	mov	ip, r2
	ldr	r6, .L_81b7c
	add	r1, r4, #0
	mov	r5, #180	@ 0xb4
	lsl	r5, r5, #4
.L_81b4c:
	ldrh	r3, [r1, #4]
	mov	r7, #4
	ldrsh	r0, [r1, r7]
	cmp	r0, ip
	bgt	.L_81b64
	ldrh	r2, [r1, #6]
	mov	r7, #6
	ldrsh	r0, [r1, r7]
	cmp	r0, r6
	blt	.L_81b64
	cmp	r0, r5
	ble	.L_81b80
.L_81b64:
	mov	r0, #0
	strb	r0, [r1, #12]
	b	.L_81b96
	.align	2, 0
.L_81b6c:
	.4byte	sUnk_863A534
.L_81b70:
	.4byte	gUnk_3004068
.L_81b74:
	.4byte	gUnk_30040BB
.L_81b78:
	.4byte	sUnk_863A51C
.L_81b7c:
	.4byte	0xFFFFFF00
.L_81b80:
	ldrb	r0, [r1, #12]
	cmp	r0, #0
	beq	.L_81b96
	ldrh	r0, [r1, #2]
	add	r0, #1
	strh	r0, [r1, #2]
	add	r0, r2, r0
	strh	r0, [r1, #6]
	ldrh	r0, [r1, #0]
	add	r0, r3, r0
	strh	r0, [r1, #4]
.L_81b96:
	add	r1, #16
	add	r0, r4, #0
	add	r0, #64	@ 0x40
	cmp	r1, r0
	ble	.L_81b4c
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8081BA8
func_8081BA8:
	ldr	r0, .L_81bbc
	ldrb	r1, [r0, #0]
	add	r2, r0, #0
	cmp	r1, #5
	bhi	.L_81c40
	lsl	r0, r1, #2
	ldr	r1, .L_81bc0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_81bbc:
	.4byte	gUnk_30040BB
.L_81bc0:
	.4byte	.L_81bc4
.L_81bc4:
	.4byte	.L_81bdc
	.4byte	.L_81bf0
	.4byte	.L_81c04
	.4byte	.L_81c18
	.4byte	.L_81c2c
	.4byte	.L_81c40
.L_81bdc:
	ldr	r0, .L_81c44
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bls	.L_81c40
	ldrb	r0, [r2, #0]
	add	r0, #1
	strb	r0, [r2, #0]
.L_81bf0:
	ldr	r0, .L_81c48
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bls	.L_81c40
	ldrb	r0, [r2, #0]
	add	r0, #1
	strb	r0, [r2, #0]
.L_81c04:
	ldr	r0, .L_81c4c
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bls	.L_81c40
	ldrb	r0, [r2, #0]
	add	r0, #1
	strb	r0, [r2, #0]
.L_81c18:
	ldr	r0, .L_81c50
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bls	.L_81c40
	ldrb	r0, [r2, #0]
	add	r0, #1
	strb	r0, [r2, #0]
.L_81c2c:
	ldr	r0, .L_81c54
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bls	.L_81c40
	ldrb	r0, [r2, #0]
	add	r0, #1
	strb	r0, [r2, #0]
.L_81c40:
	bx	lr
	.align	2, 0
.L_81c44:
	.4byte	gCollectedNEJewelPiece
.L_81c48:
	.4byte	gCollectedSEJewelPiece
.L_81c4c:
	.4byte	gCollectedSWJewelPiece
.L_81c50:
	.4byte	gCollectedNWJewelPiece
.L_81c54:
	.4byte	gCollectedCD


thumb_func_start func_8081C58
func_8081C58:
	ldr	r0, .L_81c74
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_81c78
	strb	r1, [r0, #0]
	ldr	r0, .L_81c7c
	strb	r1, [r0, #0]
	ldr	r0, .L_81c80
	strb	r1, [r0, #0]
	ldr	r0, .L_81c84
	strb	r1, [r0, #0]
	ldr	r0, .L_81c88
	strb	r1, [r0, #0]
	bx	lr
.L_81c74:
	.4byte	gCollectedNEJewelPiece
.L_81c78:
	.4byte	gCollectedSEJewelPiece
.L_81c7c:
	.4byte	gCollectedSWJewelPiece
.L_81c80:
	.4byte	gCollectedNWJewelPiece
.L_81c84:
	.4byte	gCollectedCD
.L_81c88:
	.4byte	gCollectedKeyzer


thumb_func_start func_8081C8C
func_8081C8C:
	push	{r4, lr}
	ldr	r1, .L_81ca8
	ldrh	r0, [r1, #10]
	add	r0, #30
	strh	r0, [r1, #10]
	ldr	r0, .L_81cac
	ldrh	r2, [r0, #0]
	add	r4, r1, #0
	add	r3, r0, #0
	cmp	r2, #30
	bls	.L_81cb0
	ldrh	r0, [r3, #0]
	sub	r0, #45	@ 0x2d
	b	.L_81cb6
.L_81ca8:
	.4byte	gUnk_3003C0C
.L_81cac:
	.4byte	gUnk_3003C3A
.L_81cb0:
	ldrh	r1, [r3, #0]
	mov	r0, #15
	sub	r0, r0, r1
.L_81cb6:
	lsl	r0, r0, #1
	ldrh	r1, [r4, #8]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #60	@ 0x3c
	bls	.L_81cd0
	mov	r0, #0
	strh	r0, [r3, #0]
.L_81cd0:
	ldrh	r0, [r4, #12]
	add	r0, #253	@ 0xfd
	mov	r1, #255	@ 0xff
	and	r0, r1
	strh	r0, [r4, #12]
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8081CE0
func_8081CE0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #24
	mov	r0, #0
	mov	r9, r0
	ldr	r0, .L_81fc8
	ldrb	r0, [r0, #0]
	mov	r8, r0
	lsl	r0, r0, #3
	ldr	r1, .L_81fcc
	add	r5, r0, r1
	ldr	r4, .L_81fd0
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r2, r8
	cmp	r2, #128	@ 0x80
	ble	.L_81d0c
	b	.L_81fb6
.L_81d0c:
	ldr	r6, .L_81fd4
	ldr	r3, .L_81fd8
	mov	sl, r3
	mov	r0, sp
	add	r0, #2
	str	r0, [sp, #8]
	mov	r2, sp
	add	r2, #4
	str	r2, [sp, #12]
	mov	r3, sp
	add	r3, #6
	str	r3, [sp, #16]
	cmp	r9, r8
	bge	.L_81d94
	add	r7, r6, #0
	mov	r0, #13
	neg	r0, r0
	mov	ip, r0
	add	r3, r1, #0
.L_81d32:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r0, [r7, #10]
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
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r1, [r7, #8]
	lsl	r1, r1, #16
	asr	r1, r1, #20
	add	r1, r2, r1
	ldr	r0, .L_81fdc
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_81fe0
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	mov	r1, #1
	add	r9, r1
	cmp	r9, r8
	blt	.L_81d32
.L_81d94:
	ldrh	r0, [r6, #12]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, sl
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	ldrh	r0, [r6, #14]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldrh	r0, [r6, #12]
	lsl	r0, r0, #1
	add	r0, sl
	mov	r3, #0
	ldrsh	r4, [r0, r3]
	ldrh	r0, [r6, #14]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #8]
	strh	r0, [r1, #0]
	ldrh	r0, [r6, #12]
	lsl	r0, r0, #1
	add	r0, sl
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	ldrh	r0, [r6, #16]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #12]
	strh	r0, [r2, #0]
	ldrh	r0, [r6, #12]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, sl
	mov	r3, #0
	ldrsh	r4, [r0, r3]
	ldrh	r0, [r6, #16]
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
	ldr	r2, .L_81fcc
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
	mov	r0, #0
	mov	ip, r0
	ldr	r7, .L_81fe4
.L_81e44:
	ldrb	r0, [r7, #12]
	cmp	r0, #0
	beq	.L_81ecc
	ldr	r0, .L_81fe8
	mov	r2, ip
	lsl	r1, r2, #2
	add	r1, r1, r0
	ldr	r4, [r1, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r3, r8
	cmp	r3, #128	@ 0x80
	ble	.L_81e62
	b	.L_81fb6
.L_81e62:
	cmp	r9, r8
	bge	.L_81ecc
	add	r6, r7, #0
	mov	r1, r9
	lsl	r0, r1, #3
	ldr	r2, .L_81fcc
	add	r3, r0, r2
	ldr	r0, .L_81fdc
	mov	sl, r0
	mov	r2, r8
	sub	r2, r2, r1
	mov	r9, r2
.L_81e7a:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r0, [r6, #6]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r2
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r1, [r6, #4]
	lsl	r1, r1, #16
	asr	r1, r1, #20
	add	r1, r2, r1
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_81fe0
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	mov	r1, #1
	neg	r1, r1
	add	r9, r1
	mov	r2, r9
	cmp	r2, #0
	bne	.L_81e7a
	mov	r9, r8
.L_81ecc:
	add	r7, #16
	mov	r3, #1
	add	ip, r3
	mov	r0, ip
	cmp	r0, #4
	ble	.L_81e44
	mov	r1, #0
	mov	ip, r1
	ldr	r7, .L_81fec
	mov	r2, #0
	str	r2, [sp, #20]
.L_81ee2:
	ldrb	r0, [r7, #12]
	cmp	r0, #0
	beq	.L_81f9e
	ldrh	r0, [r7, #8]
	add	r0, #1
	mov	r3, #0
	strh	r0, [r7, #8]
	ldr	r2, .L_81ff0
	ldrh	r1, [r7, #10]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_81f18
	strh	r3, [r7, #8]
	ldrh	r0, [r7, #10]
	add	r0, #1
	strh	r0, [r7, #10]
	ldrh	r0, [r7, #10]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_81f18
	strh	r0, [r7, #10]
.L_81f18:
	ldrh	r0, [r7, #10]
	lsl	r0, r0, #3
	ldr	r3, .L_81ff0
	add	r0, r0, r3
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r8, r0
	add	r4, #2
	mov	r0, r8
	cmp	r0, #128	@ 0x80
	bgt	.L_81fb6
	cmp	r9, r8
	bge	.L_81f9e
	ldr	r0, .L_81fec
	ldr	r1, [sp, #20]
	add	r6, r1, r0
	mov	r2, r9
	lsl	r0, r2, #3
	ldr	r1, .L_81fcc
	add	r3, r0, r1
	ldr	r2, .L_81fdc
	mov	sl, r2
	mov	r0, r8
	mov	r1, r9
	sub	r0, r0, r1
	mov	r9, r0
.L_81f4c:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r0, [r6, #6]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r2
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r1, [r6, #4]
	lsl	r1, r1, #16
	asr	r1, r1, #20
	add	r1, r2, r1
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r3, #2]
	ldr	r0, .L_81fe0
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	mov	r0, #1
	neg	r0, r0
	add	r9, r0
	mov	r1, r9
	cmp	r1, #0
	bne	.L_81f4c
	mov	r9, r8
.L_81f9e:
	add	r7, #16
	ldr	r2, [sp, #20]
	add	r2, #16
	str	r2, [sp, #20]
	mov	r3, #1
	add	ip, r3
	mov	r0, ip
	cmp	r0, #39	@ 0x27
	ble	.L_81ee2
	ldr	r0, .L_81fc8
	mov	r1, r8
	strb	r1, [r0, #0]
.L_81fb6:
	add	sp, #24
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_81fc8:
	.4byte	gOamSlotsUsed
.L_81fcc:
	.4byte	gOamBuffer
.L_81fd0:
	.4byte	sUnk_863D9BC
.L_81fd4:
	.4byte	gUnk_3003C0C
.L_81fd8:
	.4byte	sSinCosTable
.L_81fdc:
	.4byte	0x1FF
.L_81fe0:
	.4byte	0xFFFFFE00
.L_81fe4:
	.4byte	gUnk_3004068
.L_81fe8:
	.4byte	sUnk_863A508
.L_81fec:
	.4byte	gUnk_3003DE8
.L_81ff0:
	.4byte	sUnk_863DC4C


thumb_func_start func_8081FF4
func_8081FF4:
	push	{lr}
	bl	func_80818E8
	bl	func_8081A84
	ldr	r2, .L_82018
	ldrh	r0, [r2, #2]
	add	r0, #150	@ 0x96
	ldr	r3, .L_8201c
	add	r1, r3, #0
	and	r0, r1
	strh	r0, [r2, #2]
	ldr	r1, .L_82020
	lsr	r0, r0, #4
	strh	r0, [r1, #0]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_82018:
	.4byte	gUnk_3003C20
.L_8201c:
	.4byte	0xFFF
.L_82020:
	.4byte	0x4000012
