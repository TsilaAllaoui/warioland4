.syntax divided
.align 2, 0
.global InitializeVortexCutsceneFromPassage
.thumb
.type InitializeVortexCutsceneFromPassage, %function
InitializeVortexCutsceneFromPassage:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	InitializeVortexCutsceneResources
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
	.4byte	sStageEjectionPassagePalettes
.L_7fbbc:
	.4byte	sUnk_868669C
.L_7fbc0:
	.4byte	sUnk_868681C
.L_7fbc4:
	.4byte	gUnk_3003D6E
.L_7fbc8:
	.4byte	gUnk_3003D72
.L_7fbcc:
	.4byte	gStageEntryMainSpriteState
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
	.4byte	sStageEjectionPassagePalettes
.L_7fd34:
	.4byte	sUnk_868669C
.L_7fd38:
	.4byte	sUnk_868681C
.L_7fd3c:
	.4byte	gUnk_3003D6E
.L_7fd40:
	.4byte	gUnk_3003D72
.L_7fd44:
	.4byte	gStageEntryMainSpriteState
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
	.4byte	gStageResultsNewHighScoreIcon
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
.size InitializeVortexCutsceneFromPassage, .-InitializeVortexCutsceneFromPassage
