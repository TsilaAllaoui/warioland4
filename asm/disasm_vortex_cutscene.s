.include "macros.s.inc"


thumb_func_start func_807F8D0
func_807F8D0:
	push	{lr}
	bl	func_807FD94
	cmp	r0, #0
	beq	.L_7f914
	ldr	r0, .L_7f8f4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_7f904
	ldr	r1, .L_7f8f8
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r1, .L_7f8fc
	ldr	r2, .L_7f900
	add	r0, r2, #0
	strh	r0, [r1, #0]
	mov	r0, #1
	b	.L_7f91e
.L_7f8f4:
	.4byte	gUnk_3003C34
.L_7f8f8:
	.4byte	gColorFading
.L_7f8fc:
	.4byte	0x4000050
.L_7f900:
	.4byte	0x3FFF
.L_7f904:
	ldr	r1, .L_7f910
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	mov	r0, #1
	b	.L_7f91e
.L_7f910:
	.4byte	gUnk_3003C39
.L_7f914:
	bl	func_807FFD8
	bl	func_80800EC
	mov	r0, #0
.L_7f91e:
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_807F924
func_807F924:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	InitializeVideoMemory
	bl	InitMinigameScoreDisplay
	ldr	r1, .L_7fa48
	ldr	r0, .L_7fa4c
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_7fa50
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7f95a
.L_7f952:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7f952
.L_7f95a:
	ldr	r1, .L_7fa48
	ldr	r0, .L_7fa54
	str	r0, [r1, #0]
	ldr	r0, .L_7fa58
	str	r0, [r1, #4]
	ldr	r0, .L_7fa5c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	ldr	r3, .L_7fa60
	ldr	r4, .L_7fa64
	ldr	r6, .L_7fa68
	ldr	r5, .L_7fa6c
	mov	ip, r5
	ldr	r5, .L_7fa70
	ldr	r7, .L_7fa74
	mov	r8, r7
	ldr	r7, .L_7fa78
	mov	r9, r7
	ldr	r7, .L_7fa7c
	mov	sl, r7
	cmp	r0, #0
	bge	.L_7f994
.L_7f98c:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7f98c
.L_7f994:
	ldr	r1, .L_7fa48
	str	r3, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
.L_7f99c:
	str	r0, [r1, #4]
	ldr	r0, .L_7fa80
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7f9b6
.L_7f9ae:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7f9ae
.L_7f9b6:
	ldr	r1, .L_7fa48
	str	r4, [r1, #0]
	ldr	r0, .L_7fa84
	str	r0, [r1, #4]
	ldr	r0, .L_7fa80
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7f9d6
.L_7f9ce:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7f9ce
.L_7f9d6:
	ldr	r1, .L_7fa48
	str	r6, [r1, #0]
	ldr	r0, .L_7fa88
	str	r0, [r1, #4]
	ldr	r0, .L_7fa8c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #200	@ 0xc8
	ldr	r2, .L_7fa90
	add	r0, r2, #0
	strh	r0, [r1, #0]
	mov	r0, #0
	ldr	r3, .L_7fa94
	strh	r0, [r3, #0]
	mov	r7, ip
	strb	r0, [r7, #0]
	mov	r1, #0
	strh	r1, [r5, #0]
	strh	r1, [r5, #2]
	mov	r2, r8
	strh	r1, [r2, #0]
	mov	r3, r9
	strb	r0, [r3, #0]
	mov	r5, sl
	strh	r1, [r5, #0]
.L_7fa08:
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #19
	ldr	r7, .L_7fa98
	add	r0, r7, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_7fa9c
	strh	r1, [r0, #0]
	sub	r0, #2
	strh	r1, [r0, #0]
	add	r0, #6
	strh	r1, [r0, #0]
	sub	r0, #2
	strh	r1, [r0, #0]
	add	r0, #6
	strh	r1, [r0, #0]
	sub	r0, #2
	strh	r1, [r0, #0]
	bl	func_807FFD8
	ldr	r0, .L_7faa0
	bl	m4aSongNumStart
	mov	r0, #6
	bl	VoiceSetPlay
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_7fa48:
	.4byte	0x40000D4
.L_7fa4c:
	.4byte	sUnk_867D8DC
.L_7fa50:
	.4byte	0x80000020
.L_7fa54:
	.4byte	sUnk_868249C
.L_7fa58:
	.4byte	0x5000200
.L_7fa5c:
	.4byte	0x80000100
.L_7fa60:
	.4byte	sUnk_867DC9C
.L_7fa64:
	.4byte	sUnk_868269C
.L_7fa68:
	.4byte	sUnk_8681C9C
.L_7fa6c:
	.4byte	gUnk_3003D6A
.L_7fa70:
	.4byte	gUnk_3003C20
.L_7fa74:
	.4byte	gUnk_3003D66
.L_7fa78:
	.4byte	gUnk_3003C39
.L_7fa7c:
	.4byte	gUnk_3003DD2
.L_7fa80:
	.4byte	0x80002000
.L_7fa84:
	.4byte	0x6010000
.L_7fa88:
	.4byte	0x600E000
.L_7fa8c:
	lsl	r0, r0, #16
	strh	r0, [r0, #0]
.L_7fa90:
	.4byte	0x5C82
.L_7fa94:
	.4byte	gUnk_3003D68
.L_7fa98:
	.4byte	0x1401
.L_7fa9c:
	.4byte	0x4000012
.L_7faa0:
	.4byte	0x1CB


thumb_func_start func_807FAA4
func_807FAA4:
	push	{r4, r5, r6, lr}
	bl	func_807F924
	ldr	r1, .L_7fb08
	mov	r2, #224	@ 0xe0
	lsl	r2, r2, #4
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_7fb0c
	mov	r3, #224	@ 0xe0
	strh	r3, [r0, #0]
	ldr	r1, .L_7fb10
	mov	r6, #200	@ 0xc8
	lsl	r6, r6, #3
	add	r0, r6, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_7fb14
	mov	r4, #100	@ 0x64
	strh	r4, [r0, #0]
	ldr	r1, .L_7fb18
	mov	r5, #0
	strh	r5, [r1, #0]
	strh	r5, [r1, #2]
	ldr	r2, .L_7fb1c
	add	r0, r3, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r2, r0
	mov	r6, #0
	ldrsh	r0, [r0, r6]
	mul	r0, r4
	asr	r0, r0, #8
	add	r0, #124	@ 0x7c
	strh	r0, [r1, #4]
	lsl	r3, r3, #1
	add	r2, r2, r3
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	mul	r0, r4
	asr	r0, r0, #8
	add	r0, #78	@ 0x4e
	strh	r0, [r1, #6]
	strh	r5, [r1, #12]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #7
	strh	r0, [r1, #14]
	strh	r0, [r1, #16]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_7fb08:
	.4byte	gUnk_3003D6C
.L_7fb0c:
	.4byte	gUnk_3003D70
.L_7fb10:
	.4byte	gUnk_3003D6E
.L_7fb14:
	.4byte	gUnk_3003D72
.L_7fb18:
	.4byte	gUnk_3003C0C
.L_7fb1c:
	.4byte	sSinCosTable


thumb_func_start func_807FB20
func_807FB20:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	func_807F924
	ldr	r0, .L_7fb40
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_7fb3a
	cmp	r0, #5
	bne	.L_7fb48
.L_7fb3a:
	ldr	r1, .L_7fb44
	mov	r0, #1
	b	.L_7fb4c
.L_7fb40:
	.4byte	gCurrentPassage
.L_7fb44:
	.4byte	gUnk_3003C4A
.L_7fb48:
	ldr	r1, .L_7fb9c
	mov	r0, #0
.L_7fb4c:
	strb	r0, [r1, #0]
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_7fbd4
	ldr	r1, .L_7fba0
	ldr	r0, .L_7fba4
	str	r0, [r1, #0]
	ldr	r0, .L_7fba8
	str	r0, [r1, #4]
	ldr	r0, .L_7fbac
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	ldr	r6, .L_7fbb0
	ldr	r4, .L_7fbb4
	ldr	r7, .L_7fbb8
	ldr	r3, .L_7fbbc
	mov	ip, r3
	ldr	r5, .L_7fbc0
	mov	r8, r5
	ldr	r3, .L_7fbc4
	mov	r9, r3
	ldr	r5, .L_7fbc8
	mov	sl, r5
	ldr	r3, .L_7fbcc
	cmp	r0, #0
	bge	.L_7fb8e
.L_7fb86:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7fb86
.L_7fb8e:
	ldr	r1, .L_7fba0
	str	r4, [r1, #0]
	ldr	r0, .L_7fbd0
	str	r0, [r1, #4]
	ldr	r0, .L_7fbac
	b	.L_7fc42
	.align	2, 0
.L_7fb9c:
	.4byte	gUnk_3003C4A
.L_7fba0:
	.4byte	0x40000D4
.L_7fba4:
	.4byte	sUnk_868A01C
.L_7fba8:
	.4byte	0x600C000
.L_7fbac:
	.4byte	0x80000400
.L_7fbb0:
	.4byte	gCurrentPassage
.L_7fbb4:
	.4byte	sUnk_868981C
.L_7fbb8:
	.4byte	sUnk_868A81C
.L_7fbbc:
	.4byte	sUnk_868669C
.L_7fbc0:
	.4byte	sUnk_868681C
.L_7fbc4:
	.4byte	gUnk_3003D6E
.L_7fbc8:
	.4byte	gUnk_3003D72
.L_7fbcc:
	.4byte	gUnk_3003C0C
.L_7fbd0:
	.4byte	0x600D000
.L_7fbd4:
	ldr	r1, .L_7fd18
	ldr	r0, .L_7fd1c
	str	r0, [r1, #0]
	ldr	r0, .L_7fd20
	str	r0, [r1, #4]
	ldr	r0, .L_7fd24
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	ldr	r6, .L_7fd28
	ldr	r4, .L_7fd2c
	ldr	r7, .L_7fd30
	ldr	r3, .L_7fd34
	mov	ip, r3
	ldr	r5, .L_7fd38
	mov	r8, r5
	ldr	r3, .L_7fd3c
	mov	r9, r3
	ldr	r5, .L_7fd40
	mov	sl, r5
	ldr	r3, .L_7fd44
	cmp	r0, #0
	bge	.L_7fc0e
.L_7fc06:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7fc06
.L_7fc0e:
	ldr	r1, .L_7fd18
	str	r4, [r1, #0]
	ldr	r0, .L_7fd48
	str	r0, [r1, #4]
	ldr	r0, .L_7fd24
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7fc2e
.L_7fc26:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7fc26
.L_7fc2e:
	ldr	r1, .L_7fd18
	ldrb	r0, [r6, #0]
	sub	r0, #1
	lsl	r0, r0, #5
	ldr	r2, .L_7fd4c
	add	r0, r0, r2
	str	r0, [r1, #0]
	ldr	r0, .L_7fd50
	str	r0, [r1, #4]
	ldr	r0, .L_7fd54
.L_7fc42:
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_7fd18
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_7fc5a
.L_7fc52:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_7fc52
.L_7fc5a:
	ldr	r1, .L_7fd18
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #5
	add	r0, r0, r7
	str	r0, [r1, #0]
	ldr	r0, .L_7fd58
	str	r0, [r1, #4]
	ldr	r0, .L_7fd54
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7fc80
.L_7fc78:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7fc78
.L_7fc80:
	ldr	r1, .L_7fd18
	mov	r4, ip
	str	r4, [r1, #0]
	ldr	r0, .L_7fd5c
	str	r0, [r1, #4]
	ldr	r0, .L_7fd60
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7fca2
.L_7fc9a:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7fc9a
.L_7fca2:
	ldr	r1, .L_7fd18
	mov	r5, r8
	str	r5, [r1, #0]
	ldr	r0, .L_7fd64
	str	r0, [r1, #4]
	ldr	r0, .L_7fd68
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #204	@ 0xcc
	ldr	r2, .L_7fd6c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r4, .L_7fd70
	add	r0, r4, #0
	strh	r0, [r1, #0]
	mov	r1, #0
	ldr	r5, .L_7fd74
	strh	r1, [r5, #0]
	ldr	r0, .L_7fd78
	strh	r1, [r0, #0]
	mov	r2, r9
	strh	r1, [r2, #0]
	mov	r4, sl
	strh	r1, [r4, #0]
	mov	r2, #0
	strh	r2, [r3, #0]
	strh	r2, [r3, #2]
	mov	r0, #120	@ 0x78
	strh	r0, [r3, #4]
	mov	r0, #80	@ 0x50
	strh	r0, [r3, #6]
	strh	r2, [r3, #12]
	mov	r0, #128	@ 0x80
	strh	r0, [r3, #14]
	strh	r0, [r3, #16]
	ldr	r5, .L_7fd7c
	strb	r1, [r5, #4]
	ldr	r1, .L_7fd80
	add	r0, r3, #0
	ldmia	r0!, {r3, r4, r5}
	stmia	r1!, {r3, r4, r5}
	ldmia	r0!, {r3, r4}
	stmia	r1!, {r3, r4}
	ldr	r5, .L_7fd84
	strh	r2, [r5, #0]
	ldr	r0, .L_7fd88
	strh	r2, [r0, #0]
	ldr	r3, .L_7fd8c
	strh	r2, [r3, #0]
	ldr	r4, .L_7fd90
	strh	r2, [r4, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_7fd18:
	.4byte	0x40000D4
.L_7fd1c:
	.4byte	sUnk_868901C
.L_7fd20:
	.4byte	0x600C000
.L_7fd24:
	.4byte	0x80000400
.L_7fd28:
	.4byte	gCurrentPassage
.L_7fd2c:
	.4byte	sUnk_868981C
.L_7fd30:
	.4byte	sUnk_868A81C
.L_7fd34:
	.4byte	sUnk_868669C
.L_7fd38:
	.4byte	sUnk_868681C
.L_7fd3c:
	.4byte	gUnk_3003D6E
.L_7fd40:
	.4byte	gUnk_3003D72
.L_7fd44:
	.4byte	gUnk_3003C0C
.L_7fd48:
	.4byte	0x600D000
.L_7fd4c:
	add	r0, sp, #880	@ 0x370
	lsr	r0, r5, #1
.L_7fd50:
	.4byte	0x50003C0
.L_7fd54:
	.4byte	0x80000010
.L_7fd58:
	.4byte	0x50003A0
.L_7fd5c:
	.4byte	0x5000080
.L_7fd60:
	.4byte	0x800000C0
.L_7fd64:
	.4byte	0x6008000
.L_7fd68:
	.4byte	0x80001400
.L_7fd6c:
	.4byte	0x1808
.L_7fd70:
	.4byte	0x1A09
.L_7fd74:
	.4byte	gUnk_3003D6C
.L_7fd78:
	.4byte	gUnk_3003D70
.L_7fd7c:
	.4byte	gUnk_3003DC8
.L_7fd80:
	.4byte	gUnk_3003D78
.L_7fd84:
	.4byte	gUnk_3003D8C
.L_7fd88:
	.4byte	gUnk_3003D90
.L_7fd8c:
	.4byte	gUnk_3003D8E
.L_7fd90:
	.4byte	gUnk_3003D92


thumb_func_start func_807FD94
func_807FD94:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_7fe20
	ldrb	r1, [r0, #0]
	mov	ip, r0
	cmp	r1, #0
	bne	.L_7fe48
	ldr	r4, .L_7fe24
	ldr	r1, .L_7fe28
	add	r0, r1, #0
	ldrh	r2, [r4, #0]
	add	r0, r0, r2
	ldr	r7, .L_7fe2c
	add	r1, r7, #0
	and	r0, r1
	strh	r0, [r4, #0]
	ldr	r3, .L_7fe30
	ldrh	r0, [r3, #0]
	sub	r0, #17
	strh	r0, [r3, #0]
	ldr	r0, .L_7fe34
	ldrh	r1, [r0, #0]
	add	r6, r0, #0
	ldr	r5, .L_7fe38
	cmp	r1, #0
	beq	.L_7fdd2
	ldrh	r0, [r5, #14]
	sub	r0, #159	@ 0x9f
	strh	r0, [r5, #14]
	ldrh	r0, [r5, #16]
	sub	r0, #159	@ 0x9f
	strh	r0, [r5, #16]
.L_7fdd2:
	ldrh	r0, [r5, #12]
	add	r0, #2
	mov	r1, #255	@ 0xff
	and	r0, r1
	strh	r0, [r5, #12]
	ldr	r2, .L_7fe3c
	ldrh	r0, [r4, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	strh	r0, [r2, #0]
	ldr	r1, .L_7fe40
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	strh	r0, [r1, #0]
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	ldr	r4, .L_7fe44
	ldrh	r0, [r2, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r4
	mov	r7, #0
	ldrsh	r0, [r0, r7]
	mul	r0, r3
	asr	r0, r0, #8
	add	r0, #124	@ 0x7c
	strh	r0, [r5, #4]
	mov	r0, #0
	ldrsh	r1, [r1, r0]
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #1
	add	r0, r0, r4
	mov	r2, #0
	ldrsh	r0, [r0, r2]
	mul	r0, r1
	asr	r0, r0, #8
	add	r0, #78	@ 0x4e
	b	.L_7fec2
.L_7fe20:
	.4byte	gUnk_3003C34
.L_7fe24:
	.4byte	gUnk_3003D6C
.L_7fe28:
	.4byte	0xFBC
.L_7fe2c:
	.4byte	0xFFF
.L_7fe30:
	.4byte	gUnk_3003D6E
.L_7fe34:
	.4byte	gUnk_3003D66
.L_7fe38:
	.4byte	gUnk_3003C0C
.L_7fe3c:
	.4byte	gUnk_3003D70
.L_7fe40:
	.4byte	gUnk_3003D72
.L_7fe44:
	.4byte	sSinCosTable
.L_7fe48:
	ldr	r4, .L_7fee8
	ldrh	r0, [r4, #0]
	add	r0, #68	@ 0x44
	ldr	r7, .L_7feec
	add	r1, r7, #0
	and	r0, r1
	strh	r0, [r4, #0]
	ldr	r3, .L_7fef0
	ldrh	r0, [r3, #0]
	add	r0, #17
	strh	r0, [r3, #0]
	ldr	r0, .L_7fef4
	ldrh	r1, [r0, #0]
	add	r6, r0, #0
	ldr	r5, .L_7fef8
	cmp	r1, #89	@ 0x59
	bhi	.L_7fe76
	ldrh	r0, [r5, #14]
	add	r0, #159	@ 0x9f
	strh	r0, [r5, #14]
	ldrh	r0, [r5, #16]
	add	r0, #159	@ 0x9f
	strh	r0, [r5, #16]
.L_7fe76:
	ldrh	r0, [r5, #12]
	add	r0, #254	@ 0xfe
	mov	r1, #255	@ 0xff
	and	r0, r1
	strh	r0, [r5, #12]
	ldr	r2, .L_7fefc
	ldrh	r0, [r4, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	strh	r0, [r2, #0]
	ldr	r1, .L_7ff00
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	strh	r0, [r1, #0]
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	ldr	r4, .L_7ff04
	ldrh	r0, [r2, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r4
	mov	r7, #0
	ldrsh	r0, [r0, r7]
	mul	r0, r3
	asr	r0, r0, #8
	add	r0, #120	@ 0x78
	strh	r0, [r5, #4]
	mov	r0, #0
	ldrsh	r1, [r1, r0]
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #1
	add	r0, r0, r4
	mov	r2, #0
	ldrsh	r0, [r0, r2]
	mul	r0, r1
	asr	r0, r0, #8
	add	r0, #80	@ 0x50
.L_7fec2:
	strh	r0, [r5, #6]
	ldr	r0, .L_7ff08
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_7ff0c
	mov	r7, ip
	ldrb	r0, [r7, #0]
	cmp	r0, #1
	bne	.L_7ff0c
	ldrh	r0, [r6, #0]
	cmp	r0, #29
	bls	.L_7ff12
	bl	func_807FF28
	cmp	r0, #0
	beq	.L_7ff12
.L_7fee2:
	mov	r0, #1
	b	.L_7ff1c
	.align	2, 0
.L_7fee8:
	.4byte	gUnk_3003D6C
.L_7feec:
	.4byte	0xFFF
.L_7fef0:
	.4byte	gUnk_3003D6E
.L_7fef4:
	.4byte	gUnk_3003D66
.L_7fef8:
	.4byte	gUnk_3003C0C
.L_7fefc:
	.4byte	gUnk_3003D70
.L_7ff00:
	.4byte	gUnk_3003D72
.L_7ff04:
	.4byte	sSinCosTable
.L_7ff08:
	.4byte	gCollectedKeyzer
.L_7ff0c:
	ldrh	r0, [r6, #0]
	cmp	r0, #89	@ 0x59
	bhi	.L_7fee2
.L_7ff12:
	ldr	r1, .L_7ff24
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	mov	r0, #0
.L_7ff1c:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_7ff24:
	.4byte	gUnk_3003D66


thumb_func_start func_807FF28
func_807FF28:
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L_7ffb0
	ldrh	r0, [r4, #0]
	add	r0, #68	@ 0x44
	ldr	r2, .L_7ffb4
	add	r1, r2, #0
	and	r0, r1
	strh	r0, [r4, #0]
	ldr	r3, .L_7ffb8
	ldrh	r0, [r3, #0]
	add	r0, #17
	strh	r0, [r3, #0]
	ldr	r6, .L_7ffbc
	ldrh	r0, [r6, #0]
	ldr	r5, .L_7ffc0
	cmp	r0, #119	@ 0x77
	bhi	.L_7ff56
	ldrh	r0, [r5, #14]
	add	r0, #159	@ 0x9f
	strh	r0, [r5, #14]
	ldrh	r0, [r5, #16]
	add	r0, #159	@ 0x9f
	strh	r0, [r5, #16]
.L_7ff56:
	ldrh	r0, [r5, #12]
	add	r0, #254	@ 0xfe
	mov	r1, #255	@ 0xff
	and	r0, r1
	strh	r0, [r5, #12]
	ldr	r2, .L_7ffc4
	ldrh	r0, [r4, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	strh	r0, [r2, #0]
	ldr	r1, .L_7ffc8
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	strh	r0, [r1, #0]
	mov	r7, #0
	ldrsh	r3, [r1, r7]
	ldr	r4, .L_7ffcc
	ldrh	r0, [r2, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r4
	mov	r7, #0
	ldrsh	r0, [r0, r7]
	mul	r0, r3
	asr	r0, r0, #8
	add	r0, #120	@ 0x78
	strh	r0, [r5, #4]
	mov	r0, #0
	ldrsh	r1, [r1, r0]
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #1
	add	r0, r0, r4
	mov	r2, #0
	ldrsh	r0, [r0, r2]
	mul	r0, r1
	asr	r0, r0, #8
	add	r0, #80	@ 0x50
	strh	r0, [r5, #6]
	ldrh	r0, [r6, #0]
	cmp	r0, #119	@ 0x77
	bhi	.L_7ffd0
	mov	r0, #0
	b	.L_7ffd2
	.align	2, 0
.L_7ffb0:
	.4byte	gUnk_3003D8C
.L_7ffb4:
	.4byte	0xFFF
.L_7ffb8:
	.4byte	gUnk_3003D8E
.L_7ffbc:
	.4byte	gUnk_3003D66
.L_7ffc0:
	.4byte	gUnk_3003D78
.L_7ffc4:
	.4byte	gUnk_3003D90
.L_7ffc8:
	.4byte	gUnk_3003D92
.L_7ffcc:
	.4byte	sSinCosTable
.L_7ffd0:
	mov	r0, #1
.L_7ffd2:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_807FFD8
func_807FFD8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_7fff0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_7fff8
	ldr	r0, .L_7fff4
	ldrh	r1, [r0, #0]
	add	r1, #5
	b	.L_7fffe
	.align	2, 0
.L_7fff0:
	.4byte	gUnk_3003C34
.L_7fff4:
	.4byte	gUnk_3003D68
.L_7fff8:
	ldr	r0, .L_800e0
	ldrh	r1, [r0, #0]
	add	r1, #251	@ 0xfb
.L_7fffe:
	mov	r2, #255	@ 0xff
	and	r1, r2
	strh	r1, [r0, #0]
	add	r7, r0, #0
	ldr	r0, .L_800e4
	mov	r8, r0
	ldrh	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #2
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r5, .L_800e8
	strh	r0, [r5, #4]
	ldrh	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #6]
	ldrh	r0, [r7, #0]
	lsl	r0, r0, #1
	add	r0, r8
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #8]
	ldrh	r0, [r7, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #10]
	mov	r0, #0
	ldrsh	r1, [r5, r0]
	mov	r3, #128	@ 0x80
	sub	r1, r3, r1
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
	sub	r3, r3, r0
	lsl	r3, r3, #8
	mov	r0, #8
	ldrsh	r1, [r5, r0]
	lsl	r0, r1, #4
	sub	r0, r0, r1
	lsl	r0, r0, #3
	sub	r3, r3, r0
	mov	r0, #10
	ldrsh	r1, [r5, r0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	lsl	r0, r0, #4
	sub	r3, r3, r0
	str	r3, [r5, #16]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_800e0:
	.4byte	gUnk_3003D68
.L_800e4:
	.4byte	sSinCosTable
.L_800e8:
	.4byte	gUnk_3003C20


thumb_func_start func_80800EC
func_80800EC:
	push	{lr}
	ldr	r0, .L_80130
	ldrb	r0, [r0, #0]
	mov	r1, #5
	bl	__umodsi3
.L_800f8:
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_8012a
	ldr	r1, .L_80134
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #14
	bls	.L_80112
	strb	r2, [r1, #0]
.L_80112:
	ldr	r2, .L_80138
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #6
	ldr	r1, .L_8013c
	add	r0, r0, r1
	str	r0, [r2, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r2, #4]
	ldr	r0, .L_80140
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_8012a:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_80130:
	.4byte	gMainTimer
.L_80134:
	.4byte	gUnk_3003D6A
.L_80138:
	.4byte	0x40000D4
.L_8013c:
	.4byte	sUnk_867D8DC
.L_80140:
	.4byte	0x80000020


thumb_func_start func_8080144
func_8080144:
	ldr	r1, .L_80180
	ldr	r2, .L_80184
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
	ldr	r3, .L_80188
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
.L_80180:
	.4byte	0x4000020
.L_80184:
	.4byte	gUnk_3003C20
.L_80188:
	.4byte	0xFFF0000


thumb_func_start func_808018C
func_808018C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #20
	mov	r0, #0
	mov	r8, r0
	ldr	r0, .L_80558
	ldrb	r0, [r0, #0]
	mov	r9, r0
	lsl	r0, r0, #3
	ldr	r1, .L_8055c
	add	r6, r0, r1
	ldr	r0, .L_80560
	ldrh	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #88	@ 0x58
	bls	.L_801b8
	b	.L_80302
.L_801b8:
	ldr	r5, .L_80564
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	mov	r2, r9
	cmp	r2, #128	@ 0x80
	ble	.L_801ca
	bl	.L_80a42
.L_801ca:
	ldr	r7, .L_80568
	mov	r3, sp
	add	r3, #2
	str	r3, [sp, #8]
	mov	r4, sp
	add	r4, #4
	str	r4, [sp, #12]
	mov	r0, sp
	add	r0, #6
	str	r0, [sp, #16]
	cmp	r8, r9
	bge	.L_80250
	add	r4, r7, #0
	add	r3, r1, #0
	ldr	r1, .L_8056c
	mov	sl, r1
	mov	r2, #13
	neg	r2, r2
	mov	ip, r2
	mov	r8, r9
.L_801f2:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrb	r0, [r4, #6]
	add	r0, r0, r2
	sub	r0, #32
	strb	r0, [r3, #0]
	ldrb	r0, [r3, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrh	r1, [r4, #4]
	add	r1, r2, r1
	sub	r1, #32
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_80570
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r3, #5]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L_801f2
	mov	r8, r9
.L_80250:
	ldrh	r0, [r7, #12]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r3, .L_80574
	add	r0, r0, r3
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	ldrh	r0, [r7, #14]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldrh	r0, [r7, #12]
	lsl	r0, r0, #1
	ldr	r2, .L_80574
	add	r0, r0, r2
	mov	r3, #0
	ldrsh	r4, [r0, r3]
	ldrh	r0, [r7, #14]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r4, [sp, #8]
	strh	r0, [r4, #0]
	ldrh	r0, [r7, #12]
	lsl	r0, r0, #1
	ldr	r1, .L_80574
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	ldrh	r0, [r7, #16]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #12]
	strh	r0, [r2, #0]
	ldrh	r0, [r7, #12]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r3, .L_80574
	add	r0, r0, r3
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	ldrh	r0, [r7, #16]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r2, [sp, #16]
	strh	r0, [r2, #0]
	ldr	r2, .L_8055c
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #6]
	ldr	r3, [sp, #8]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #14]
	ldr	r4, [sp, #12]
	ldrh	r1, [r4, #0]
	strh	r1, [r2, #22]
	strh	r0, [r2, #30]
.L_80302:
	ldr	r0, .L_80560
	ldrh	r0, [r0, #0]
	sub	r0, #30
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #89	@ 0x59
	bls	.L_80312
	b	.L_8046c
.L_80312:
	ldr	r0, .L_80578
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	beq	.L_8031c
	b	.L_8046c
.L_8031c:
	ldr	r0, .L_8057c
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	beq	.L_80326
	b	.L_8046c
.L_80326:
	ldr	r5, .L_80580
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	mov	r7, r9
	cmp	r7, #128	@ 0x80
	ble	.L_80336
	b	.L_80a42
.L_80336:
	mov	r0, sp
	add	r0, #2
	str	r0, [sp, #8]
	mov	r1, sp
	add	r1, #4
	str	r1, [sp, #12]
	mov	r2, sp
	add	r2, #6
	str	r2, [sp, #16]
	ldr	r7, .L_80584
	cmp	r8, r9
	bge	.L_803be
	add	r4, r7, #0
	mov	r3, #15
	neg	r3, r3
	mov	ip, r3
	ldr	r1, .L_8055c
	mov	r0, #13
	neg	r0, r0
	mov	sl, r0
	mov	r2, r8
	lsl	r0, r2, #3
	add	r3, r0, r1
.L_80364:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrb	r0, [r4, #6]
	add	r0, r0, r2
	sub	r0, #32
	strb	r0, [r3, #0]
	ldrb	r0, [r3, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrh	r1, [r4, #4]
	add	r1, r2, r1
	sub	r1, #32
	ldr	r0, .L_8056c
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_80570
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, ip
	and	r0, r1
	mov	r1, #2
	orr	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r3, #5]
	mov	r0, sl
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r0, #1
	add	r8, r0
	cmp	r8, r9
	blt	.L_80364
.L_803be:
	ldrh	r0, [r7, #12]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r1, .L_80574
	add	r0, r0, r1
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	ldrh	r0, [r7, #14]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldrh	r0, [r7, #12]
	lsl	r0, r0, #1
	ldr	r3, .L_80574
	add	r0, r0, r3
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	ldrh	r0, [r7, #14]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #8]
	strh	r0, [r2, #0]
	ldrh	r0, [r7, #12]
	lsl	r0, r0, #1
	ldr	r3, .L_80574
	add	r0, r0, r3
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	ldrh	r0, [r7, #16]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r4, [sp, #12]
	strh	r0, [r4, #0]
	ldrh	r0, [r7, #12]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r1, .L_80574
	add	r0, r0, r1
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	ldrh	r0, [r7, #16]
	lsr	r0, r0, #4
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #16]
	strh	r0, [r3, #0]
	ldr	r2, .L_8055c
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #38]	@ 0x26
	ldr	r4, [sp, #8]
	ldrh	r1, [r4, #0]
	strh	r1, [r2, #46]	@ 0x2e
	ldr	r7, [sp, #12]
	ldrh	r1, [r7, #0]
	strh	r1, [r2, #54]	@ 0x36
	strh	r0, [r2, #62]	@ 0x3e
.L_8046c:
	ldr	r0, .L_80588
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #18
	beq	.L_80478
	b	.L_80a3c
.L_80478:
	ldr	r0, .L_8058c
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bhi	.L_80482
	b	.L_80a3c
.L_80482:
	cmp	r0, #3
	beq	.L_80488
	b	.L_80630
.L_80488:
	ldr	r0, .L_80590
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_80492
	b	.L_80630
.L_80492:
	ldr	r1, .L_80594
	ldr	r2, .L_80598
	ldrb	r0, [r2, #6]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r5, [r0, #0]
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	mov	r3, sp
	add	r3, #2
	str	r3, [sp, #8]
	mov	r4, sp
	add	r4, #4
	str	r4, [sp, #12]
	mov	r7, sp
	add	r7, #6
	str	r7, [sp, #16]
	cmp	r8, r9
	bge	.L_8059e
	add	r0, r2, #0
	mov	sl, r0
.L_804be:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r1, r8
	lsl	r0, r1, #3
	ldr	r3, .L_8055c
	add	r4, r0, r3
	mov	r7, sl
	ldrb	r0, [r7, #2]
	add	r0, r0, r2
	sub	r0, #16
	strb	r0, [r4, #0]
	ldrb	r0, [r7, #6]
	cmp	r0, #4
	bne	.L_804e8
	ldr	r1, .L_80598
.L_804e0:
	ldrb	r0, [r1, #2]
	add	r0, r0, r2
	sub	r0, #32
	strb	r0, [r4, #0]
.L_804e8:
	ldrb	r0, [r4, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r4, #1]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r3, sl
	mov	r7, #0
	ldrsh	r0, [r3, r7]
	add	r0, r2, r0
	sub	r0, #16
	ldr	r1, .L_8056c
	mov	ip, r1
	and	r0, r1
	ldrh	r1, [r4, #2]
	ldr	r3, .L_80570
	and	r3, r1
	orr	r3, r0
	strh	r3, [r4, #2]
	mov	r7, sl
	ldrb	r0, [r7, #6]
	cmp	r0, #4
	bne	.L_80532
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	add	r0, r2, r0
	sub	r0, #32
	mov	r1, #255	@ 0xff
	and	r0, r1
	mov	r2, ip
	and	r0, r2
	ldr	r7, .L_80570
	and	r3, r7
	orr	r3, r0
	strh	r3, [r4, #2]
.L_80532:
	ldrb	r1, [r4, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	strb	r0, [r4, #3]
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r4, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	strb	r0, [r4, #5]
	add	r6, #4
	mov	r0, #1
	add	r8, r0
	cmp	r8, r9
	b	.L_8059c
	.align	2, 0
.L_80558:
	.4byte	gOamSlotsUsed
.L_8055c:
	asr	r4, r0, #17
	lsl	r0, r0, #12
.L_80560:
	.4byte	gUnk_3003D66
.L_80564:
	.4byte	sUnk_863D9BC
.L_80568:
	.4byte	gUnk_3003C0C
.L_8056c:
	.4byte	0x1FF
.L_80570:
	.4byte	0xFFFFFE00
.L_80574:
	.4byte	sSinCosTable
.L_80578:
	.4byte	gCollectedKeyzer
.L_8057c:
	.4byte	gUnk_3003C34
.L_80580:
	.4byte	sUnk_863D9EC
.L_80584:
	.4byte	gUnk_3003D78
.L_80588:
	.4byte	gSubGameMode
.L_8058c:
	.4byte	gUnk_3003C39
.L_80590:
	.4byte	gUnk_3003DE0
.L_80594:
	.4byte	sUnk_863A47C
.L_80598:
	.4byte	gUnk_3003D98
.L_8059c:
	blt	.L_804be
.L_8059e:
	ldr	r0, .L_8083c
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r5, [r0, r1]
	ldr	r2, .L_80840
	mov	r3, #4
	ldrsh	r0, [r2, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldr	r7, .L_8083c
	mov	r0, #0
	ldrsh	r4, [r7, r0]
	ldr	r1, .L_80840
	mov	r2, #4
	ldrsh	r0, [r1, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #8]
	strh	r0, [r3, #0]
	ldrh	r4, [r7, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	ldr	r7, .L_80840
	mov	r1, #4
	ldrsh	r0, [r7, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #12]
	strh	r0, [r2, #0]
	mov	r3, #4
	ldrsh	r0, [r7, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	ldr	r4, [sp, #16]
	strh	r0, [r4, #0]
	ldr	r2, .L_80844
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #6]
	ldr	r7, [sp, #8]
	ldrh	r1, [r7, #0]
	strh	r1, [r2, #14]
	ldr	r3, [sp, #12]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #22]
	strh	r0, [r2, #30]
.L_80630:
	ldr	r0, .L_80848
	ldrb	r3, [r0, #0]
	ldr	r4, .L_8084c
	mov	ip, r4
	cmp	r3, #1
	bne	.L_806e8
	ldrh	r1, [r4, #0]
	add	r1, #1
	strh	r1, [r4, #0]
	ldr	r2, .L_80850
	ldrh	r0, [r4, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_8066c
	mov	r7, ip
	strh	r3, [r7, #0]
	ldrh	r0, [r7, #2]
	add	r0, #1
	strh	r0, [r7, #2]
	ldrh	r0, [r7, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8066c
	strh	r0, [r7, #2]
.L_8066c:
	mov	r1, ip
	ldrh	r0, [r1, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r5, [r0, #0]
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	cmp	r8, r9
	bge	.L_806e8
	ldr	r1, .L_80844
	mov	r2, #13
	neg	r2, r2
	mov	sl, r2
	ldr	r7, .L_80854
	mov	r3, r8
	lsl	r0, r3, #3
	add	r3, r0, r1
	ldr	r4, .L_80858
	mov	r0, r9
	mov	r1, r8
	sub	r0, r0, r1
	mov	r8, r0
.L_8069a:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #112	@ 0x70
	strb	r0, [r3, #0]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #2
	ldr	r1, .L_8085c
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	and	r1, r4
	ldrh	r2, [r3, #2]
	ldr	r0, .L_80860
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r3, #5]
	mov	r0, sl
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r2, #1
	neg	r2, r2
	add	r8, r2
	mov	r0, r8
	cmp	r0, #0
	bne	.L_8069a
	mov	r8, r9
.L_806e8:
	mov	r1, #0
.L_806ea:
	lsl	r0, r1, #3
	add	r0, ip
	ldrb	r0, [r0, #4]
	add	r7, r1, #1
	cmp	r0, #0
	beq	.L_8076e
	ldr	r0, .L_80864
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r5, [r1, #0]
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	cmp	r8, r9
	bge	.L_8076e
	ldr	r1, .L_80854
	mov	sl, r1
	mov	r2, r8
	lsl	r0, r2, #3
	ldr	r4, .L_80844
	add	r3, r0, r4
	ldr	r4, .L_80858
	mov	r0, r9
	sub	r0, r0, r2
	mov	r8, r0
.L_8071c:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #112	@ 0x70
	strb	r0, [r3, #0]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	mov	r1, sl
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	ldr	r1, .L_8085c
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	and	r1, r4
	ldrh	r2, [r3, #2]
	ldr	r0, .L_80860
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r2, #1
	neg	r2, r2
	add	r8, r2
	mov	r0, r8
	cmp	r0, #0
	bne	.L_8071c
	mov	r8, r9
.L_8076e:
	add	r1, r7, #0
	cmp	r1, #3
	ble	.L_806ea
	mov	r0, ip
	add	r0, #36	@ 0x24
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_80824
	mov	r2, ip
	ldrh	r1, [r2, #32]
	add	r1, #1
	strh	r1, [r2, #32]
	ldr	r2, .L_80868
	mov	r3, ip
	ldrh	r0, [r3, #34]	@ 0x22
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_807b2
	mov	r0, #1
	strh	r0, [r3, #32]
	ldrh	r0, [r3, #34]	@ 0x22
	add	r0, #1
	strh	r0, [r3, #34]	@ 0x22
	ldrh	r0, [r3, #34]	@ 0x22
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_807b2
	strh	r0, [r3, #34]	@ 0x22
.L_807b2:
	mov	r4, ip
	ldrh	r0, [r4, #34]	@ 0x22
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r5, [r0, #0]
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	cmp	r8, r9
	bge	.L_80824
	ldr	r1, .L_80844
	ldr	r7, .L_80858
	ldr	r0, .L_80860
	mov	sl, r0
	mov	r4, #13
	neg	r4, r4
	mov	r2, r8
	lsl	r0, r2, #3
	add	r3, r0, r1
	mov	r0, r9
	sub	r0, r0, r2
	mov	r8, r0
.L_807de:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #112	@ 0x70
	strb	r0, [r3, #0]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, #0
	add	r1, #144	@ 0x90
	and	r1, r7
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r3, #5]
	add	r0, r4, #0
	and	r0, r1
.L_80810:
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L_807de
	mov	r8, r9
.L_80824:
	ldr	r3, .L_8086c
	ldrb	r0, [r3, #0]
	cmp	r0, #4
	bls	.L_808f8
	ldr	r0, .L_80870
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_808f8
.L_80834:
	cmp	r0, #1
	bne	.L_80878
	ldr	r0, .L_80874
	b	.L_80886
.L_8083c:
	str	r0, [r7, r4]
	lsr	r1, r1, #32
.L_80840:
	.4byte	gUnk_3003D98
.L_80844:
	.4byte	gOamBuffer
.L_80848:
	.4byte	gUnk_3003DD0
.L_8084c:
	.4byte	gUnk_3003DA0
.L_80850:
	.4byte	sUnk_863DB7C
.L_80854:
	.4byte	gUnk_3003C4A
.L_80858:
	.4byte	0x1FF
.L_8085c:
	.4byte	sUnk_863A490
.L_80860:
	.4byte	0xFFFFFE00
.L_80864:
	.4byte	sUnk_863A47C
.L_80868:
	.4byte	sUnk_863DBE4
.L_8086c:
	.4byte	gUnk_3003C39
.L_80870:
	.4byte	gUnk_3003DE4
.L_80874:
	.4byte	sUnk_863DCCC
.L_80878:
	cmp	r0, #2
	bne	.L_80884
	ldr	r0, .L_80880
	b	.L_80886
.L_80880:
	.4byte	sUnk_863DCDC
.L_80884:
	ldr	r0, .L_809a8
.L_80886:
	ldr	r5, [r0, #0]
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	mov	r4, r9
	cmp	r4, #128	@ 0x80
	ble	.L_80896
	b	.L_80a42
.L_80896:
	cmp	r8, r9
	bge	.L_808f8
	ldr	r1, .L_809ac
	ldr	r7, .L_809b0
	ldr	r0, .L_809b4
	mov	sl, r0
	mov	r4, #13
	neg	r4, r4
	mov	r2, r8
	lsl	r0, r2, #3
	add	r3, r0, r1
	mov	r0, r9
	sub	r0, r0, r2
	mov	r8, r0
.L_808b2:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #64	@ 0x40
	strb	r0, [r3, #0]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, #0
	add	r1, #80	@ 0x50
	and	r1, r7
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r3, #5]
	add	r0, r4, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L_808b2
	mov	r8, r9
.L_808f8:
	ldr	r0, .L_809b8
	ldrb	r1, [r0, #4]
	add	r3, r0, #0
	cmp	r1, #0
	beq	.L_809a2
	ldrh	r1, [r3, #0]
	add	r1, #1
	strh	r1, [r3, #0]
	ldr	r2, .L_809bc
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_80932
	mov	r0, #1
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
.L_80928:
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_80932
	strh	r0, [r3, #2]
.L_80932:
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r5, [r0, #0]
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	cmp	r8, r9
	bge	.L_809a2
	ldr	r1, .L_809ac
	ldr	r7, .L_809b0
	ldr	r3, .L_809b4
	mov	sl, r3
.L_8094c:
	mov	r4, #13
	neg	r4, r4
	mov	r2, r8
	lsl	r0, r2, #3
	add	r3, r0, r1
	mov	r0, r9
	sub	r0, r0, r2
	mov	r8, r0
.L_8095c:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #56	@ 0x38
	strb	r0, [r3, #0]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	and	r1, r7
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r5, #0]
.L_80984:
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r3, #5]
	add	r0, r4, #0
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L_8095c
	mov	r8, r9
.L_809a2:
	mov	r1, #0
	b	.L_80a34
	.align	2, 0
.L_809a8:
	.4byte	sUnk_863DCEC
.L_809ac:
	.4byte	gOamBuffer
.L_809b0:
	.4byte	0x1FF
.L_809b4:
	.4byte	0xFFFFFE00
.L_809b8:
	.4byte	gUnk_3003DC8
.L_809bc:
	.4byte	sUnk_863DCB4
.L_809c0:
	ldr	r5, .L_80a54
	ldrh	r0, [r5, #0]
	add	r9, r0
	add	r5, #2
	add	r7, r1, #1
	cmp	r8, r9
	bge	.L_80a32
	lsl	r0, r1, #3
	add	r4, r0, #0
	add	r4, #88	@ 0x58
	mov	r0, #13
	neg	r0, r0
	mov	ip, r0
	mov	r1, r8
	lsl	r0, r1, #3
	ldr	r2, .L_80a58
	add	r3, r0, r2
	ldr	r0, .L_80a5c
	mov	sl, r0
	mov	r2, r9
	sub	r2, r2, r1
	mov	r8, r2
.L_809ec:
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r0, r2, #0
	add	r0, #88	@ 0x58
	strb	r0, [r3, #0]
	ldrh	r2, [r5, #0]
	add	r5, #2
	strh	r2, [r6, #0]
	add	r6, #2
	add	r1, r2, r4
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_80a60
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r5, #0]
	strh	r0, [r6, #0]
	add	r5, #2
	ldrb	r1, [r3, #5]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r3, #5]
	add	r6, #4
	add	r3, #8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L_809ec
	mov	r8, r9
.L_80a32:
	add	r1, r7, #0
.L_80a34:
	ldr	r3, .L_80a64
	ldrb	r3, [r3, #0]
	cmp	r1, r3
	blt	.L_809c0
.L_80a3c:
	ldr	r0, .L_80a68
	mov	r4, r9
.L_80a40:
	strb	r4, [r0, #0]
.L_80a42:
	add	sp, #20
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_80a54:
	.4byte	sUnk_863D9F4
.L_80a58:
	.4byte	gOamBuffer
.L_80a5c:
	.4byte	0x1FF
.L_80a60:
	.4byte	0xFFFFFE00
.L_80a64:
	.4byte	gUnk_3003DDC
.L_80a68:
	.4byte	gOamSlotsUsed
