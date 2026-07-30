
.align 2, 0
.global func_8008B20
.thumb
.type func_8008B20, %function
func_8008B20:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #36	@ 0x24
	str	r0, [sp, #32]
	mov	r7, #0
	str	r7, [sp, #16]
	str	r7, [sp, #12]
	str	r7, [sp, #24]
	str	r7, [sp, #20]
	ldr	r6, .L_8b4c
	ldrh	r0, [r6, #0]
	cmp	r0, #1
	beq	.L_8bbc
	cmp	r0, #1
	bgt	.L_8b50
	cmp	r0, #0
	beq	.L_8b5c
	b	.L_8dbe
	.align	2, 0
.L_8b4c:
	.4byte	gUnk_3002C60
.L_8b50:
	cmp	r0, #2
	beq	.L_8c1c
	cmp	r0, #3
	bne	.L_8b5a
	b	.L_8ce4
.L_8b5a:
	b	.L_8dbe
.L_8b5c:
	mov	r0, #15
	bl	DecreaseCutsceneBlendCoefficient
	cmp	r0, #0
	beq	.L_8b9e
	ldr	r2, .L_8b8c
	ldrh	r3, [r2, #0]
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	mov	r0, #120	@ 0x78
	neg	r0, r0
	cmp	r1, r0
	ble	.L_8b94
	mov	r0, #7
	ldr	r1, [sp, #32]
	and	r0, r1
	cmp	r0, #7
	bne	.L_8b9e
	ldr	r1, .L_8b90
	sub	r0, r3, #1
	strh	r0, [r2, #0]
	strh	r3, [r1, #0]
	b	.L_8b9e
	.align	2, 0
.L_8b8c:
	.4byte	gUnk_3002C98
.L_8b90:
	.4byte	0x4000016
.L_8b94:
	ldr	r0, .L_8bb4
	str	r7, [r0, #0]
	ldrh	r0, [r6, #0]
	add	r0, #1
	strh	r0, [r6, #0]
.L_8b9e:
	ldr	r2, .L_8bb8
	mov	r1, #3
	ldr	r0, [sp, #32]
	and	r0, r1
	sub	r0, #1
	strh	r0, [r2, #0]
	add	r1, sp, #12
	ldr	r0, [sp, #32]
	bl	SelectEndingCutsceneOamSequence00
	b	.L_8dbe
.L_8bb4:
	.4byte	gUnk_3002C64
.L_8bb8:
	.4byte	0x4000014
.L_8bbc:
	ldr	r4, .L_8bcc
	ldr	r0, [r4, #0]
	cmp	r0, #119	@ 0x77
	bhi	.L_8bd0
	add	r1, sp, #12
	bl	SelectEndingCutsceneOamSequence01
	b	.L_8c08
.L_8bcc:
	.4byte	gUnk_3002C64
.L_8bd0:
	cmp	r0, #239	@ 0xef
	bls	.L_8bf4
	sub	r0, #240	@ 0xf0
	add	r1, sp, #12
	bl	SelectEndingCutsceneOamSequence05
	cmp	r0, #0
	beq	.L_8c08
	str	r7, [r4, #0]
	ldr	r0, .L_8bf0
	str	r7, [r0, #0]
	ldrh	r0, [r6, #0]
	add	r0, #1
	strh	r0, [r6, #0]
	b	.L_8dbe
	.align	2, 0
.L_8bf0:
	.4byte	gUnk_3002C68
.L_8bf4:
	sub	r0, #120	@ 0x78
	add	r1, sp, #12
	bl	SelectEndingCutsceneOamSequence04
	ldr	r0, [r4, #0]
	cmp	r0, #120	@ 0x78
	bne	.L_8c08
	ldr	r0, .L_8c14
	bl	m4aSongNumStartOrChange
.L_8c08:
	ldr	r1, .L_8c18
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	b	.L_8dbe
	.align	2, 0
.L_8c14:
	.4byte	0x322
.L_8c18:
	.4byte	gUnk_3002C64
.L_8c1c:
	mov	r7, #1
	ldr	r0, .L_8c64
	mov	r2, #0
	ldrsh	r0, [r0, r2]
	cmp	r0, #0
	beq	.L_8c4a
	mov	r0, #214	@ 0xd6
	lsl	r0, r0, #1
	bl	m4aSongNumStartOrChange
	ldr	r0, .L_8c68
	mov	r3, #0
	ldrsh	r0, [r0, r3]
	cmp	r0, #1
	bne	.L_8c44
	ldr	r0, .L_8c6c
	strh	r7, [r0, #0]
	ldr	r1, .L_8c70
	mov	r0, #0
	strh	r0, [r1, #0]
.L_8c44:
	ldr	r1, .L_8c74
	mov	r0, #8
	str	r0, [r1, #0]
.L_8c4a:
	ldr	r4, .L_8c74
	ldr	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_8c78
	add	r1, sp, #16
	mov	r0, #0
	bl	SelectEndingCutsceneOamSequence07
	ldr	r0, [r4, #0]
	sub	r0, #1
	str	r0, [r4, #0]
	b	.L_8c80
	.align	2, 0
.L_8c64:
	.4byte	gUnk_3002CA0
.L_8c68:
	.4byte	gUnk_3002CA2
.L_8c6c:
	.4byte	gUnk_3002CA4
.L_8c70:
	.4byte	gUnk_3002CA6
.L_8c74:
	.4byte	gUnk_3002C68
.L_8c78:
	add	r1, sp, #16
	mov	r0, #0
	bl	SelectEndingCutsceneOamSequence06
.L_8c80:
	ldr	r0, .L_8ca0
	mov	r4, #0
	ldrsh	r0, [r0, r4]
	cmp	r0, #0
	beq	.L_8ca8
	ldr	r2, .L_8ca4
	ldrh	r0, [r2, #0]
	add	r1, r0, #1
	strh	r1, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	add	r1, sp, #12
	bl	SelectEndingCutsceneOamSequence08
	b	.L_8cb2
	.align	2, 0
.L_8ca0:
	.4byte	gUnk_3002CA4
.L_8ca4:
	.4byte	gUnk_3002CA6
.L_8ca8:
	ldr	r0, .L_8cd4
	ldr	r0, [r0, #0]
	add	r1, sp, #12
	bl	SelectEndingCutsceneOamSequence02
.L_8cb2:
	ldr	r2, .L_8cd4
	ldr	r0, [r2, #0]
	add	r0, #1
	str	r0, [r2, #0]
	ldr	r0, .L_8cd8
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #4
	beq	.L_8cc6
	b	.L_8dbe
.L_8cc6:
	ldr	r1, .L_8cdc
	mov	r0, #0
	str	r0, [r1, #0]
	str	r0, [r2, #0]
	ldr	r1, .L_8ce0
	b	.L_8db8
	.align	2, 0
.L_8cd4:
	.4byte	gUnk_3002C64
.L_8cd8:
	.4byte	gUnk_3002CA2
.L_8cdc:
	.4byte	gUnk_3002C68
.L_8ce0:
	.4byte	gUnk_3002C60
.L_8ce4:
	ldr	r1, .L_8d04
	mov	r0, #96	@ 0x60
	strh	r0, [r1, #0]
	ldr	r1, .L_8d08
	mov	r0, #144	@ 0x90
	strh	r0, [r1, #0]
	ldr	r0, .L_8d0c
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_8d14
	ldr	r0, .L_8d10
	ldr	r0, [r0, #0]
	add	r1, sp, #16
	bl	SelectEndingCutsceneOamSequence32
	b	.L_8d4a
.L_8d04:
	.4byte	gUnk_3002C9A
.L_8d08:
	.4byte	gUnk_3002C9C
.L_8d0c:
	.4byte	gUnk_3002C84
.L_8d10:
	.4byte	gUnk_3002C64
.L_8d14:
	cmp	r0, #1
	bne	.L_8d28
	ldr	r0, .L_8d24
	ldr	r0, [r0, #0]
	add	r1, sp, #16
	bl	SelectEndingCutsceneOamSequence31
	b	.L_8d4a
.L_8d24:
	.4byte	gUnk_3002C64
.L_8d28:
	cmp	r0, #2
	bne	.L_8d3c
	ldr	r0, .L_8d38
	ldr	r0, [r0, #0]
	add	r1, sp, #16
	bl	SelectEndingCutsceneOamSequence29
	b	.L_8d4a
.L_8d38:
	.4byte	gUnk_3002C64
.L_8d3c:
	cmp	r0, #3
	bne	.L_8d4c
	ldr	r0, .L_8d74
	ldr	r0, [r0, #0]
	add	r1, sp, #16
	bl	SelectEndingCutsceneOamSequence30
.L_8d4a:
	add	r5, r0, #0
.L_8d4c:
	ldr	r1, .L_8d78
	cmp	r5, #2
	bne	.L_8d56
	mov	r0, #0
	strh	r0, [r1, #0]
.L_8d56:
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	cmp	r0, #0
	beq	.L_8d80
	ldr	r2, .L_8d7c
	ldrh	r0, [r2, #0]
	add	r1, r0, #1
	strh	r1, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	add	r1, sp, #12
	bl	SelectEndingCutsceneOamSequence08
	b	.L_8d98
	.align	2, 0
.L_8d74:
	.4byte	gUnk_3002C64
.L_8d78:
	.4byte	gUnk_3002CA4
.L_8d7c:
	.4byte	gUnk_3002CA6
.L_8d80:
	ldr	r4, .L_9110
	ldr	r0, [r4, #0]
	add	r1, sp, #12
	bl	SelectEndingCutsceneOamSequence09
	ldr	r0, [r4, #0]
	add	r1, sp, #20
	bl	SelectEndingCutsceneOamSequence28
	ldr	r0, [r4, #0]
	add	r0, #1
	str	r0, [r4, #0]
.L_8d98:
	ldr	r0, .L_9114
	mov	r3, sp
	ldrh	r3, [r3, #32]
	strh	r3, [r0, #0]
	ldr	r1, .L_9118
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	cmp	r5, #1
	bne	.L_8dbe
	mov	r0, #7
	bl	IncreaseCutsceneBlendCoefficient
	cmp	r0, #0
	beq	.L_8dbe
	ldr	r1, .L_911c
.L_8db8:
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_8dbe:
	ldr	r4, .L_9120
	mov	r9, r4
	mov	r5, sp
	add	r5, #6
	cmp	r7, #0
	bne	.L_8dce
	bl	.L_99bc
.L_8dce:
	ldr	r0, .L_9118
	ldr	r4, [r0, #0]
	sub	r0, r4, #1
	mov	r8, r0
	cmp	r0, #0
	bne	.L_8de0
	ldr	r0, .L_9124
	bl	m4aSongNumStartOrChange
.L_8de0:
	mov	r1, r8
	cmp	r1, #90	@ 0x5a
	bne	.L_8dee
	mov	r0, #215	@ 0xd7
	lsl	r0, r0, #1
	bl	m4aSongNumStartOrChange
.L_8dee:
	mov	r0, #0
	ldr	r2, .L_9128
	strh	r0, [r2, #0]
	add	r3, sp, #24
	mov	sl, r3
	add	r6, sp, #8
	mov	r7, sp
	add	r7, #10
	mov	r0, r8
	cmp	r0, #44	@ 0x2c
	ble	.L_8e58
	sub	r4, #46	@ 0x2e
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence24
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath03
	cmp	r0, #0
	beq	.L_8e34
	ldr	r1, .L_9128
	ldrh	r0, [r1, #0]
	mov	r1, #1
	orr	r0, r1
	ldr	r2, .L_9128
	strh	r0, [r2, #0]
	ldr	r1, .L_912c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_8e34:
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #4
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_8e58:
	mov	r2, r8
	cmp	r2, #29
	ble	.L_8eb2
	mov	r4, r8
	sub	r4, #30
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence23
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath02
	cmp	r0, #0
	beq	.L_8e8e
	ldr	r2, .L_9128
	ldrh	r0, [r2, #0]
	mov	r1, #1
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_912c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_8e8e:
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #3
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_8eb2:
	mov	r2, r8
	cmp	r2, #14
	ble	.L_8f0c
	mov	r4, r8
	sub	r4, #15
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence22
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath01
	cmp	r0, #0
	beq	.L_8ee8
	ldr	r2, .L_9128
	ldrh	r0, [r2, #0]
	mov	r1, #1
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_912c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_8ee8:
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #2
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_8f0c:
	mov	r0, r8
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence21
	str	r7, [sp, #0]
	mov	r0, r8
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath00
	cmp	r0, #0
	beq	.L_8f38
	ldr	r2, .L_9128
	ldrh	r0, [r2, #0]
	mov	r1, #1
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_912c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_8f38:
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #1
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
	mov	r2, r8
	cmp	r2, #44	@ 0x2c
	ble	.L_8fae
	mov	r4, r8
	sub	r4, #45	@ 0x2d
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath28
	cmp	r0, #0
	bne	.L_8fae
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #29
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #29
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_8fae:
	mov	r2, r8
	cmp	r2, #48	@ 0x30
	ble	.L_9000
	mov	r4, r8
	sub	r4, #49	@ 0x31
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath29
	cmp	r0, #0
	bne	.L_9000
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #30
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #30
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_9000:
	mov	r2, r8
	cmp	r2, #52	@ 0x34
	ble	.L_9052
	mov	r4, r8
	sub	r4, #53	@ 0x35
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath30
	cmp	r0, #0
	bne	.L_9052
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #31
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #31
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_9052:
	mov	r2, r8
	cmp	r2, #56	@ 0x38
	ble	.L_90a4
	mov	r4, r8
	sub	r4, #57	@ 0x39
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath31
	cmp	r0, #0
	bne	.L_90a4
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #31
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #31
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_90a4:
	mov	r2, r8
	cmp	r2, #60	@ 0x3c
	ble	.L_90f6
	mov	r4, r8
	sub	r4, #61	@ 0x3d
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath32
	cmp	r0, #0
	bne	.L_90f6
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #31
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #31
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_90f6:
	mov	r2, r8
	cmp	r2, #64	@ 0x40
	ble	.L_916a
	mov	r4, r8
	sub	r4, #65	@ 0x41
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	b	.L_9130
.L_9110:
	.4byte	gUnk_3002C68
.L_9114:
	.4byte	0x400001E
.L_9118:
	.4byte	gUnk_3002C64
.L_911c:
	.4byte	gSubGameMode
.L_9120:
	.4byte	gOamBuffer
.L_9124:
	.4byte	0x1AD
.L_9128:
	.4byte	gUnk_3002CA0
.L_912c:
	.4byte	gUnk_3002CA2
.L_9130:
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath33
	cmp	r0, #0
	bne	.L_916a
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #31
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #31
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_916a:
	mov	r2, r8
	cmp	r2, #68	@ 0x44
	ble	.L_91bc
	mov	r4, r8
	sub	r4, #69	@ 0x45
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath34
	cmp	r0, #0
	bne	.L_91bc
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #31
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #31
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_91bc:
	mov	r2, r8
	cmp	r2, #72	@ 0x48
	ble	.L_920e
	mov	r4, r8
	sub	r4, #73	@ 0x49
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath35
	cmp	r0, #0
	bne	.L_920e
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #31
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #31
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_920e:
	mov	r2, r8
	cmp	r2, #29
	ble	.L_9260
	mov	r4, r8
	sub	r4, #30
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath20
	cmp	r0, #0
	bne	.L_9260
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #21
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #21
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_9260:
	mov	r2, r8
	cmp	r2, #33	@ 0x21
	ble	.L_92b2
	mov	r4, r8
	sub	r4, #34	@ 0x22
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath21
	cmp	r0, #0
	bne	.L_92b2
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #22
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #22
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_92b2:
	mov	r2, r8
	cmp	r2, #37	@ 0x25
	ble	.L_9304
	mov	r4, r8
	sub	r4, #38	@ 0x26
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath22
	cmp	r0, #0
	bne	.L_9304
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #23
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #23
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_9304:
	mov	r2, r8
	cmp	r2, #41	@ 0x29
	ble	.L_9356
	mov	r4, r8
	sub	r4, #42	@ 0x2a
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath23
	cmp	r0, #0
	bne	.L_9356
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #24
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #24
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_9356:
	mov	r2, r8
	cmp	r2, #45	@ 0x2d
	ble	.L_93a8
	mov	r4, r8
	sub	r4, #46	@ 0x2e
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath24
	cmp	r0, #0
	bne	.L_93a8
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #25
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #25
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_93a8:
	mov	r2, r8
	cmp	r2, #49	@ 0x31
	ble	.L_93fa
	mov	r4, r8
	sub	r4, #50	@ 0x32
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath25
	cmp	r0, #0
	bne	.L_93fa
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #26
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #26
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_93fa:
	mov	r2, r8
	cmp	r2, #53	@ 0x35
	ble	.L_944c
	mov	r4, r8
	sub	r4, #54	@ 0x36
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath26
	cmp	r0, #0
	bne	.L_944c
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #27
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #27
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_944c:
	mov	r2, r8
	cmp	r2, #57	@ 0x39
	ble	.L_949e
	mov	r4, r8
	sub	r4, #58	@ 0x3a
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath27
	cmp	r0, #0
	bne	.L_949e
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #28
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #28
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_949e:
	mov	r2, r8
	cmp	r2, #14
	ble	.L_94f0
	mov	r4, r8
	sub	r4, #15
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath12
	cmp	r0, #0
	bne	.L_94f0
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #13
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #13
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_94f0:
	mov	r2, r8
	cmp	r2, #18
	ble	.L_9542
	mov	r4, r8
	sub	r4, #19
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath13
	cmp	r0, #0
	bne	.L_9542
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #14
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #14
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_9542:
	mov	r2, r8
	cmp	r2, #22
	ble	.L_9594
	mov	r4, r8
	sub	r4, #23
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath14
	cmp	r0, #0
	bne	.L_9594
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #15
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #15
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_9594:
	mov	r2, r8
	cmp	r2, #26
	ble	.L_95e6
	mov	r4, r8
	sub	r4, #27
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath15
	cmp	r0, #0
	bne	.L_95e6
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #16
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #16
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_95e6:
	mov	r2, r8
	cmp	r2, #30
	ble	.L_9638
	mov	r4, r8
	sub	r4, #31
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath16
	cmp	r0, #0
	bne	.L_9638
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #17
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #17
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_9638:
	mov	r2, r8
	cmp	r2, #34	@ 0x22
	ble	.L_968a
	mov	r4, r8
	sub	r4, #35	@ 0x23
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath17
	cmp	r0, #0
	bne	.L_968a
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #18
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #18
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_968a:
	mov	r2, r8
	cmp	r2, #38	@ 0x26
	ble	.L_96dc
	mov	r4, r8
	sub	r4, #39	@ 0x27
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath18
	cmp	r0, #0
	bne	.L_96dc
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #19
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #19
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_96dc:
	mov	r2, r8
	cmp	r2, #42	@ 0x2a
	ble	.L_972e
	mov	r4, r8
	sub	r4, #43	@ 0x2b
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath19
	cmp	r0, #0
	bne	.L_972e
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #20
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #20
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_972e:
	mov	r2, r8
	cmp	r2, #0
	blt	.L_977e
	mov	r4, r8
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath04
	cmp	r0, #0
	bne	.L_977e
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #5
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #5
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_977e:
	mov	r2, r8
	cmp	r2, #3
	ble	.L_97d0
	mov	r4, r8
	sub	r4, #4
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath05
	cmp	r0, #0
	bne	.L_97d0
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #6
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #6
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_97d0:
	mov	r2, r8
	cmp	r2, #7
	ble	.L_9822
	mov	r4, r8
	sub	r4, #8
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath06
	cmp	r0, #0
	bne	.L_9822
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #7
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #7
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_9822:
	mov	r2, r8
	cmp	r2, #11
	ble	.L_9874
	mov	r4, r8
	sub	r4, #12
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath07
	cmp	r0, #0
	bne	.L_9874
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #8
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #8
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_9874:
	mov	r2, r8
	cmp	r2, #15
	ble	.L_98c6
	mov	r4, r8
	sub	r4, #16
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath08
	cmp	r0, #0
	bne	.L_98c6
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #9
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #9
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_98c6:
	mov	r2, r8
	cmp	r2, #19
	ble	.L_9918
	mov	r4, r8
	sub	r4, #20
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath09
	cmp	r0, #0
	bne	.L_9918
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #10
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #10
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_9918:
	mov	r2, r8
	cmp	r2, #23
	ble	.L_996a
	mov	r4, r8
	sub	r4, #24
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath10
	cmp	r0, #0
	bne	.L_996a
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #11
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #11
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_996a:
	mov	r2, r8
	cmp	r2, #27
	ble	.L_99bc
	mov	r4, r8
	sub	r4, #28
	add	r0, r4, #0
	mov	r1, sl
	bl	SelectEndingCutsceneOamSequence26
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	ReadEndingCutscenePath11
	cmp	r0, #0
	bne	.L_99bc
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #12
	bl	ApplyCutsceneOamAffineMatrix
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #12
	mov	r1, #0
	bl	WriteCutsceneOamAffineMatrix
.L_99bc:
	ldr	r0, .L_9a00
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_99f0
	ldr	r0, .L_9a04
	ldr	r0, [r0, #0]
	add	r1, sp, #28
	bl	SelectEndingCutsceneOamSequence25
	ldr	r0, [sp, #28]
	ldr	r1, .L_9a08
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	mov	r1, r9
	mov	r2, #184	@ 0xb8
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, .L_9a0c
	mov	r4, #0
	ldrsh	r3, [r0, r4]
	mov	r0, #0
	mov	r1, #0
	add	r2, r3, #0
	bl	WriteCutsceneOamAffineMatrix
.L_99f0:
	ldr	r0, .L_9a10
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_9a18
	ldr	r0, .L_9a14
	ldrh	r0, [r0, #0]
	sub	r0, #12
	b	.L_9a2e
.L_9a00:
	.4byte	gUnk_3002C80
.L_9a04:
	.4byte	gUnk_3002C64
.L_9a08:
	.4byte	gUnk_3002C9E
.L_9a0c:
	.4byte	gUnk_3002C82
.L_9a10:
	.4byte	gUnk_3002C84
.L_9a14:
	.4byte	gUnk_3002C9C
.L_9a18:
	cmp	r0, #1
	bne	.L_9a28
	ldr	r0, .L_9a24
	ldrh	r0, [r0, #0]
	sub	r0, #20
	b	.L_9a2e
.L_9a24:
	.4byte	gUnk_3002C9C
.L_9a28:
	ldr	r0, .L_9b24
	ldrh	r0, [r0, #0]
	sub	r0, #24
.L_9a2e:
	strh	r0, [r5, #0]
	ldr	r0, [sp, #20]
	ldr	r4, .L_9b28
	mov	r1, #0
	ldrsh	r2, [r4, r1]
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #16]
	mov	r3, #0
	ldrsh	r2, [r4, r3]
	ldr	r1, .L_9b24
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #12]
	ldr	r1, .L_9b2c
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r1, .L_9b30
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	mov	r1, r9
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, .L_9b34
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_9b0e
	add	r4, sp, #28
	ldr	r0, [sp, #32]
	add	r1, r4, #0
	bl	SelectEndingCutsceneOamSequence20
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #60	@ 0x3c
	mov	r3, #128	@ 0x80
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #32]
	add	r1, r4, #0
	bl	SelectEndingCutsceneOamSequence18
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #72	@ 0x48
	mov	r3, #130	@ 0x82
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #88	@ 0x58
	mov	r3, #134	@ 0x86
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #104	@ 0x68
	mov	r3, #138	@ 0x8a
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #120	@ 0x78
	mov	r3, #140	@ 0x8c
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #136	@ 0x88
	mov	r3, #136	@ 0x88
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #152	@ 0x98
	mov	r3, #132	@ 0x84
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #168	@ 0xa8
	mov	r3, #128	@ 0x80
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
	ldr	r0, [sp, #32]
	add	r1, r4, #0
	bl	SelectEndingCutsceneOamSequence19
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #180	@ 0xb4
	mov	r3, #128	@ 0x80
	bl	AppendCutsceneOamTemplate
	mov	r9, r0
.L_9b0e:
	mov	r0, r9
	bl	FinalizeCutsceneOamBuffer
	add	sp, #36	@ 0x24
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_9b24:
	.4byte	gUnk_3002C9C
.L_9b28:
	.4byte	gUnk_3002C9A
.L_9b2c:
	.4byte	gUnk_3002C4A
.L_9b30:
	.4byte	gUnk_3002C4C
.L_9b34:
	.4byte	gUnk_3002C60
