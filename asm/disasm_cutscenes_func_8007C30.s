
.align 2, 0
.global func_8007C30
.thumb
.type func_8007C30, %function
func_8007C30:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #32
	mov	r8, r0
	mov	r1, #0
	str	r1, [sp, #4]
	str	r1, [sp, #8]
	str	r1, [sp, #12]
	str	r1, [sp, #16]
	str	r1, [sp, #20]
	ldr	r2, .L_7c80
	mov	r0, #7
	mov	r3, r8
	and	r0, r3
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	str	r0, [sp, #28]
	ldr	r0, .L_7c84
	ldrh	r0, [r0, #0]
	mov	sl, r0
	ldr	r0, .L_7c88
	strh	r1, [r0, #0]
	ldr	r0, .L_7c8c
	strh	r1, [r0, #0]
	ldr	r0, .L_7c90
	ldrh	r0, [r0, #0]
	cmp	r0, #12
	bls	.L_7c74
	bl	.L_8642
.L_7c74:
	lsl	r0, r0, #2
	ldr	r1, .L_7c94
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_7c80:
	.4byte	sUnk_878E760
.L_7c84:
	.4byte	gUnk_3002C80
.L_7c88:
	.4byte	gUnk_3002CA0
.L_7c8c:
	.4byte	gUnk_3002CA2
.L_7c90:
	.4byte	gUnk_3002C60
.L_7c94:
	.4byte	.L_7c98
.L_7c98:
	.4byte	.L_7ccc
	.4byte	.L_7d68
	.4byte	.L_7ddc
	.4byte	.L_7e84
	.4byte	.L_7fcc
	.4byte	.L_808c
	.4byte	.L_813c
	.4byte	.L_820c
	.4byte	.L_82b0
	.4byte	.L_8340
	.4byte	.L_8460
	.4byte	.L_8550
	.4byte	.L_8630
.L_7ccc:
	mov	r0, #1
	bl	DecreaseCutsceneBlendCoefficient
	cmp	r0, #0
	bne	.L_7cda
	bl	.L_8642
.L_7cda:
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence02
	mov	r4, sl
	cmp	r4, #0
	beq	.L_7cf6
	add	r1, sp, #8
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence03
	ldr	r0, .L_7d54
	bl	ConfigureLayeredCutsceneOamOffsets
.L_7cf6:
	mov	r0, #1
	mov	r5, r8
	and	r0, r5
	cmp	r0, #0
	beq	.L_7d08
	ldr	r1, .L_7d58
	ldrh	r0, [r1, #0]
	sub	r0, #1
	strh	r0, [r1, #0]
.L_7d08:
	ldr	r5, .L_7d58
	mov	r6, #0
	ldrsh	r0, [r5, r6]
	mov	r4, #64	@ 0x40
	neg	r4, r4
	ldr	r2, .L_7d5c
	cmp	r0, r4
	bge	.L_7d24
	mov	r0, #0
	str	r0, [r2, #0]
	ldr	r1, .L_7d60
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_7d24:
	ldr	r0, [r2, #0]
	mov	r1, #128	@ 0x80
	and	r1, r0
	add	r0, #1
	str	r0, [r2, #0]
	mov	r3, #8
	cmp	r1, #0
	beq	.L_7d36
	mov	r3, #4
.L_7d36:
	add	r1, sp, #12
	add	r0, r3, #0
	bl	SelectLayeredCutsceneOamSequence15
	ldr	r1, .L_7d64
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	cmp	r0, r4
	bgt	.L_7d4c
	bl	.L_8642
.L_7d4c:
	ldrh	r0, [r5, #0]
	sub	r0, #16
	bl	.L_8640
.L_7d54:
	ldmia	r2!, {r0, r5}
	lsr	r0, r0, #32
.L_7d58:
	cmp	r4, #76	@ 0x4c
	lsl	r0, r0, #12
.L_7d5c:
	cmp	r4, #100	@ 0x64
	lsl	r0, r0, #12
.L_7d60:
	cmp	r4, #96	@ 0x60
	lsl	r0, r0, #12
.L_7d64:
	cmp	r4, #154	@ 0x9a
	lsl	r0, r0, #12
.L_7d68:
	mov	r0, #1
	bl	IncreaseCutsceneBlendCoefficient
	cmp	r0, #0
	bne	.L_7d76
	bl	.L_8642
.L_7d76:
	ldr	r0, .L_7db0
	ldr	r1, .L_7db4
	bl	LZ77UnCompVram
	ldr	r0, .L_7db8
	ldr	r1, .L_7dbc
	bl	LZ77UnCompVram
	ldr	r0, .L_7dc0
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_7dc4
	strh	r1, [r0, #0]
	ldr	r1, .L_7dc8
	mov	r0, #120	@ 0x78
	strh	r0, [r1, #0]
	ldr	r1, .L_7dcc
	mov	r0, #180	@ 0xb4
	strh	r0, [r1, #0]
	ldr	r1, .L_7dd0
	mov	r0, #128	@ 0x80
	strh	r0, [r1, #0]
	ldr	r1, .L_7dd4
	mov	r0, #104	@ 0x68
	strh	r0, [r1, #0]
	ldr	r1, .L_7dd8
	bl	.L_863c
	.align 2, 0
.L_7db0:
	cmp	r0, #64	@ 0x40
	lsr	r2, r5, #32
.L_7db4:
	strh	r0, [r0, #0]
	lsl	r0, r0, #24
.L_7db8:
	cmp	r2, #36	@ 0x24
	lsr	r2, r5, #32
.L_7dbc:
	str	r0, [sp, #0]
	lsl	r0, r0, #24
.L_7dc0:
	cmp	r4, #70	@ 0x46
	lsl	r0, r0, #12
.L_7dc4:
	cmp	r4, #72	@ 0x48
	lsl	r0, r0, #12
.L_7dc8:
	cmp	r4, #74	@ 0x4a
	lsl	r0, r0, #12
.L_7dcc:
	cmp	r4, #76	@ 0x4c
	lsl	r0, r0, #12
.L_7dd0:
	cmp	r4, #152	@ 0x98
	lsl	r0, r0, #12
.L_7dd4:
	cmp	r4, #156	@ 0x9c
	lsl	r0, r0, #12
.L_7dd8:
	cmp	r4, #96	@ 0x60
	lsl	r0, r0, #12
.L_7ddc:
	mov	r0, #1
	bl	DecreaseCutsceneBlendCoefficient
	cmp	r0, #0
	bne	.L_7dea
	bl	.L_8642
.L_7dea:
	ldr	r1, .L_7e38
	ldrh	r2, [r1, #0]
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	cmp	r0, #88	@ 0x58
	ble	.L_7e40
	mov	r0, #1
	mov	r4, r8
	and	r0, r4
	cmp	r0, #0
	beq	.L_7e1e
	sub	r0, r2, #1
	strh	r0, [r1, #0]
	mov	r5, #0
	ldrsh	r0, [r1, r5]
	add	r3, r0, #0
	sub	r3, #104	@ 0x68
	ldr	r1, .L_7e3c
	add	r0, r3, #0
	mul	r0, r3
	cmp	r0, #0
	bge	.L_7e18
	add	r0, #7
.L_7e18:
	asr	r0, r0, #3
	add	r0, #112	@ 0x70
	strh	r0, [r1, #0]
.L_7e1e:
	ldr	r0, .L_7e38
	mov	r6, #0
	ldrsh	r0, [r0, r6]
	mov	r3, #6
	cmp	r0, #96	@ 0x60
	ble	.L_7e2c
	mov	r3, #10
.L_7e2c:
	add	r1, sp, #12
	add	r0, r3, #0
	bl	SelectLayeredCutsceneOamSequence13
	b	.L_7e60
	.align	2, 0
.L_7e38:
	.4byte	gUnk_3002C98
.L_7e3c:
	.4byte	gUnk_3002C9A
.L_7e40:
	ldr	r4, .L_7e78
	ldr	r1, [r4, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r4, #0]
	add	r1, sp, #12
	bl	SelectLayeredCutsceneOamSequence14
	cmp	r0, #0
	beq	.L_7e60
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_7e7c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_7e60:
	ldr	r0, .L_7e80
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #120	@ 0x78
	beq	.L_7e6e
	bl	.L_8642
.L_7e6e:
	mov	r0, #13
	bl	m4aSongNumStartOrChange
	bl	.L_8642
.L_7e78:
	cmp	r4, #100	@ 0x64
	lsl	r0, r0, #12
.L_7e7c:
	cmp	r4, #96	@ 0x60
	lsl	r0, r0, #12
.L_7e80:
	cmp	r4, #152	@ 0x98
	lsl	r0, r0, #12
.L_7e84:
	add	r1, sp, #12
	mov	r0, #100	@ 0x64
	bl	SelectLayeredCutsceneOamSequence14
	ldr	r2, .L_7ed8
	ldr	r0, [r2, #0]
	add	r1, r0, #0
	add	r0, #1
	str	r0, [r2, #0]
	cmp	r1, #160	@ 0xa0
	bls	.L_7f42
	ldr	r4, .L_7edc
	mov	r3, #0
	ldrsh	r0, [r4, r3]
	cmp	r0, #119	@ 0x77
	bgt	.L_7ee4
	add	r1, sp, #16
	mov	r0, #0
	bl	SelectLayeredCutsceneOamSequence19
	mov	r0, #1
	mov	r5, r8
	and	r0, r5
	cmp	r0, #0
	beq	.L_7ebc
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
.L_7ebc:
	mov	r6, #0
	ldrsh	r0, [r4, r6]
	add	r3, r0, #0
	sub	r3, #116	@ 0x74
	ldr	r2, .L_7ee0
	add	r0, r3, #0
	mul	r0, r3
	lsr	r1, r0, #31
	add	r0, r0, r1
	asr	r0, r0, #1
	add	r0, #136	@ 0x88
	strh	r0, [r2, #0]
	b	.L_7f24
	.align	2, 0
.L_7ed8:
	.4byte	gUnk_3002C64
.L_7edc:
	.4byte	gUnk_3002C9C
.L_7ee0:
	.4byte	gUnk_3002C9E
.L_7ee4:
	cmp	r0, #151	@ 0x97
	bgt	.L_7f14
	add	r1, sp, #16
	mov	r0, #8
	bl	SelectLayeredCutsceneOamSequence19
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	mov	r1, #0
	ldrsh	r0, [r4, r1]
	add	r3, r0, #0
	sub	r3, #136	@ 0x88
	ldr	r1, .L_7f10
	add	r0, r3, #0
	mul	r0, r3
	cmp	r0, #0
	bge	.L_7f0a
	add	r0, #15
.L_7f0a:
	asr	r0, r0, #4
	add	r0, #128	@ 0x80
	b	.L_7f22
.L_7f10:
	.4byte	gUnk_3002C9E
.L_7f14:
	cmp	r0, #152	@ 0x98
	bne	.L_7f24
	mov	r0, #0
	str	r0, [r2, #0]
	ldr	r1, .L_7f7c
	ldrh	r0, [r1, #0]
	add	r0, #1
.L_7f22:
	strh	r0, [r1, #0]
.L_7f24:
	ldr	r4, .L_7f80
	mov	r2, #0
	ldrsh	r0, [r4, r2]
	cmp	r0, #106	@ 0x6a
	bne	.L_7f34
	mov	r0, #13
	bl	m4aSongNumStartOrChange
.L_7f34:
	mov	r3, #0
	ldrsh	r0, [r4, r3]
	cmp	r0, #120	@ 0x78
	bne	.L_7f42
	mov	r0, #24
	bl	m4aSongNumStartOrChange
.L_7f42:
	ldr	r4, .L_7f80
	mov	r5, #0
	ldrsh	r0, [r4, r5]
	cmp	r0, #119	@ 0x77
	bgt	.L_7f8c
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence02
	mov	r6, sl
	cmp	r6, #0
	beq	.L_7f68
	add	r1, sp, #8
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence03
	ldr	r0, .L_7f84
	bl	ConfigureLayeredCutsceneOamOffsets
.L_7f68:
	mov	r0, #3
	mov	r1, r8
	and	r0, r1
	cmp	r0, #3
	beq	.L_7f74
	b	.L_8642
.L_7f74:
	ldr	r1, .L_7f88
	ldrh	r0, [r1, #0]
	sub	r0, #1
	b	.L_8640
.L_7f7c:
	.4byte	gUnk_3002C60
.L_7f80:
	.4byte	gUnk_3002C9C
.L_7f84:
	.4byte	SelectLayeredCutsceneOamSequence03
.L_7f88:
	.4byte	gUnk_3002C4C
.L_7f8c:
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence04
	mov	r2, sl
	cmp	r2, #0
	beq	.L_7fa8
	add	r1, sp, #8
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence05
	ldr	r0, .L_7fc4
	bl	ConfigureLayeredCutsceneOamOffsets
.L_7fa8:
	ldr	r0, .L_7fc8
	ldrh	r1, [r0, #0]
	add	r1, #1
	strh	r1, [r0, #0]
	mov	r3, #0
	ldrsh	r0, [r4, r3]
	cmp	r0, #122	@ 0x7a
	beq	.L_7fba
	b	.L_8642
.L_7fba:
	mov	r0, #6
	bl	m4aSongNumStartOrChange
	b	.L_8642
	.align	2, 0
.L_7fc4:
	.4byte	SelectLayeredCutsceneOamSequence05
.L_7fc8:
	.4byte	gUnk_3002C4C
.L_7fcc:
	add	r1, sp, #12
	mov	r0, #28
	bl	SelectLayeredCutsceneOamSequence14
	ldr	r4, .L_7fe4
	ldr	r2, [r4, #0]
	cmp	r2, #160	@ 0xa0
	bls	.L_7fec
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_7fe8
	b	.L_8028
.L_7fe4:
	.4byte	gUnk_3002C64
.L_7fe8:
	.4byte	gUnk_3002C60
.L_7fec:
	cmp	r2, #88	@ 0x58
	bls	.L_7ffa
	add	r1, sp, #16
	add	r0, r2, #0
	bl	SelectLayeredCutsceneOamSequence16
	b	.L_802e
.L_7ffa:
	mov	r0, #8
	and	r0, r2
	cmp	r0, #0
	beq	.L_8018
	add	r1, sp, #16
	add	r0, r2, #0
	bl	SelectLayeredCutsceneOamSequence16
	ldr	r1, .L_8014
	ldrh	r0, [r1, #0]
	sub	r0, #1
	b	.L_802c
	.align	2, 0
.L_8014:
	.4byte	gUnk_3002C9C
.L_8018:
	add	r1, sp, #16
	add	r0, r2, #0
	bl	SelectLayeredCutsceneOamSequence18
	ldr	r0, [r4, #0]
	cmp	r0, #4
	bls	.L_802e
	ldr	r1, .L_8044
.L_8028:
	ldrh	r0, [r1, #0]
	add	r0, #1
.L_802c:
	strh	r0, [r1, #0]
.L_802e:
	ldr	r1, .L_8048
	mov	r0, #144	@ 0x90
	strh	r0, [r1, #0]
	ldr	r1, .L_804c
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	cmp	r0, #39	@ 0x27
	bhi	.L_8054
	ldr	r1, .L_8050
	b	.L_863c
.L_8044:
	.4byte	gUnk_3002C9C
.L_8048:
	.4byte	gUnk_3002C9E
.L_804c:
	.4byte	gUnk_3002C64
.L_8050:
	.4byte	gUnk_3002C4C
.L_8054:
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence02
	mov	r4, sl
	cmp	r4, #0
	beq	.L_8070
	add	r1, sp, #8
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence03
	ldr	r0, .L_8084
	bl	ConfigureLayeredCutsceneOamOffsets
.L_8070:
	mov	r0, #3
	mov	r5, r8
	and	r0, r5
	cmp	r0, #3
	beq	.L_807c
	b	.L_8642
.L_807c:
	ldr	r1, .L_8088
	ldrh	r0, [r1, #0]
	sub	r0, #1
	b	.L_8640
.L_8084:
	.4byte	SelectLayeredCutsceneOamSequence03
.L_8088:
	.4byte	gUnk_3002C4C
.L_808c:
	add	r1, sp, #12
	mov	r0, #100	@ 0x64
	bl	SelectLayeredCutsceneOamSequence14
	ldr	r4, .L_80cc
	mov	r6, #0
	ldrsh	r1, [r4, r6]
	cmp	r1, #88	@ 0x58
	ble	.L_80d4
	add	r1, sp, #16
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence17
	ldrh	r0, [r4, #0]
	sub	r0, #1
	strh	r0, [r4, #0]
	mov	r1, #0
	ldrsh	r0, [r4, r1]
	add	r3, r0, #0
	sub	r3, #120	@ 0x78
	ldr	r2, .L_80d0
	add	r1, r3, #0
	mul	r1, r3
	lsl	r0, r1, #1
	add	r0, r0, r1
	cmp	r0, #0
	bge	.L_80c4
	add	r0, #127	@ 0x7f
.L_80c4:
	asr	r0, r0, #7
	add	r0, #120	@ 0x78
	strh	r0, [r2, #0]
	b	.L_80fa
.L_80cc:
	.4byte	gUnk_3002C9C
.L_80d0:
	.4byte	gUnk_3002C9E
.L_80d4:
	mov	r0, #32
	neg	r0, r0
	cmp	r1, r0
	ble	.L_80ec
	add	r1, sp, #16
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence16
	ldrh	r0, [r4, #0]
	sub	r0, #2
	strh	r0, [r4, #0]
	b	.L_80fa
.L_80ec:
	ldr	r1, .L_812c
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_8130
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_80fa:
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence02
	mov	r2, sl
	cmp	r2, #0
	beq	.L_8116
	add	r1, sp, #8
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence03
	ldr	r0, .L_8134
	bl	ConfigureLayeredCutsceneOamOffsets
.L_8116:
	mov	r0, #3
	mov	r3, r8
	and	r0, r3
	cmp	r0, #3
	beq	.L_8122
	b	.L_8642
.L_8122:
	ldr	r1, .L_8138
	ldrh	r0, [r1, #0]
	sub	r0, #1
	b	.L_8640
	.align	2, 0
.L_812c:
	.4byte	gUnk_3002C64
.L_8130:
	.4byte	gUnk_3002C60
.L_8134:
	.4byte	SelectLayeredCutsceneOamSequence03
.L_8138:
	.4byte	gUnk_3002C4C
.L_813c:
	ldr	r0, .L_8164
	mov	r4, #0
	ldrsh	r0, [r0, r4]
	cmp	r0, #96	@ 0x60
	ble	.L_81b8
	mov	r5, sl
	cmp	r5, #0
	beq	.L_816c
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence08
	add	r1, sp, #8
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence09
	ldr	r0, .L_8168
	bl	ConfigureLayeredCutsceneOamOffsets
	b	.L_8174
.L_8164:
	.4byte	gUnk_3002C4A
.L_8168:
	.4byte	SelectLayeredCutsceneOamSequence09
.L_816c:
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence12
.L_8174:
	ldr	r0, .L_81b0
	ldrh	r1, [r0, #0]
	sub	r1, #1
	strh	r1, [r0, #0]
	mov	r6, #0
	ldrsh	r0, [r0, r6]
	add	r3, r0, #0
	sub	r3, #104	@ 0x68
	ldr	r2, .L_81b4
	add	r0, r3, #0
	mul	r0, r3
	cmp	r0, #0
	bge	.L_8190
	add	r0, #7
.L_8190:
	asr	r0, r0, #3
	add	r0, #136	@ 0x88
	strh	r0, [r2, #0]
	lsl	r0, r1, #16
	asr	r0, r0, #16
	cmp	r0, #118	@ 0x76
	bne	.L_81a4
	mov	r0, #13
	bl	m4aSongNumStartOrChange
.L_81a4:
	add	r1, sp, #12
	mov	r0, #100	@ 0x64
	bl	SelectLayeredCutsceneOamSequence14
	b	.L_8642
	.align	2, 0
.L_81b0:
	.4byte	gUnk_3002C4A
.L_81b4:
	.4byte	gUnk_3002C4C
.L_81b8:
	mov	r0, sl
	cmp	r0, #0
	beq	.L_81dc
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence06
	add	r1, sp, #8
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence07
	ldr	r0, .L_81d8
	bl	ConfigureLayeredCutsceneOamOffsets
	b	.L_81e4
	.align	2, 0
.L_81d8:
	.4byte	SelectLayeredCutsceneOamSequence07
.L_81dc:
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence11
.L_81e4:
	ldr	r4, .L_8204
	ldr	r1, [r4, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r4, #0]
	add	r1, sp, #12
	bl	SelectLayeredCutsceneOamSequence15
	cmp	r0, #0
	bne	.L_81fa
	b	.L_8642
.L_81fa:
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_8208
	b	.L_863c
	.align	2, 0
.L_8204:
	.4byte	gUnk_3002C64
.L_8208:
	.4byte	gUnk_3002C60
.L_820c:
	ldr	r4, .L_8248
	mov	r2, #0
	ldrsh	r1, [r4, r2]
	mov	r0, #32
	neg	r0, r0
	cmp	r1, r0
	ble	.L_825a
	add	r1, sp, #12
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence13
	ldrh	r0, [r4, #0]
	sub	r0, #2
	strh	r0, [r4, #0]
	mov	r3, sl
	cmp	r3, #0
	beq	.L_8250
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence06
	add	r1, sp, #8
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence07
	ldr	r0, .L_824c
	bl	ConfigureLayeredCutsceneOamOffsets
	b	.L_8642
	.align	2, 0
.L_8248:
	.4byte	gUnk_3002C98
.L_824c:
	.4byte	SelectLayeredCutsceneOamSequence07
.L_8250:
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence11
	b	.L_8642
.L_825a:
	mov	r4, sl
	cmp	r4, #0
	beq	.L_827c
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence00
	add	r1, sp, #8
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence01
	ldr	r0, .L_8278
	bl	ConfigureLayeredCutsceneOamOffsets
	b	.L_8284
.L_8278:
	.4byte	SelectLayeredCutsceneOamSequence01
.L_827c:
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence10
.L_8284:
	ldr	r0, .L_82a4
	ldrh	r1, [r0, #0]
	sub	r1, #2
	strh	r1, [r0, #0]
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, #32
	neg	r0, r0
	cmp	r1, r0
	blt	.L_829a
	b	.L_8642
.L_829a:
	ldr	r1, .L_82a8
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_82ac
	b	.L_863c
.L_82a4:
	.4byte	gUnk_3002C4A
.L_82a8:
	.4byte	gUnk_3002C64
.L_82ac:
	.4byte	gUnk_3002C60
.L_82b0:
	mov	r0, #1
	bl	IncreaseCutsceneBlendCoefficient
	cmp	r0, #0
	bne	.L_82bc
	b	.L_8642
.L_82bc:
	ldr	r0, .L_8318
	ldr	r1, .L_831c
	bl	LZ77UnCompVram
	ldr	r0, .L_8320
	mov	r5, #136	@ 0x88
	lsl	r5, r5, #1
	add	r1, r5, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_8324
	mov	r2, #56	@ 0x38
	strh	r2, [r0, #0]
	ldr	r0, .L_8328
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	ldr	r2, .L_832c
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	add	r0, r1, r6
	strh	r0, [r2, #0]
	ldr	r0, .L_8330
	mov	r2, #200	@ 0xc8
	strh	r2, [r0, #0]
	ldr	r0, .L_8334
	mov	r3, #148	@ 0x94
	lsl	r3, r3, #1
	add	r1, r1, r3
	strh	r1, [r0, #0]
	ldr	r0, .L_8338
	strh	r2, [r0, #0]
	bl	WaitForVBlankInterrupt
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r4, #152	@ 0x98
	lsl	r4, r4, #5
	add	r0, r4, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_833c
	b	.L_863c
	.align	2, 0
.L_8318:
	.4byte	sUnk_82A229C
.L_831c:
	.4byte	0x6008000
.L_8320:
	.4byte	gUnk_3002C46
.L_8324:
	.4byte	gUnk_3002C48
.L_8328:
	.4byte	0x4000010
.L_832c:
	.4byte	gUnk_3002C98
.L_8330:
	.4byte	gUnk_3002C9A
.L_8334:
	.4byte	gUnk_3002C4A
.L_8338:
	.4byte	gUnk_3002C4C
.L_833c:
	.4byte	gUnk_3002C60
.L_8340:
	mov	r0, #1
	bl	DecreaseCutsceneBlendCoefficient
	ldr	r3, .L_836c
	ldrh	r2, [r3, #0]
	sub	r1, r2, #1
	lsl	r0, r1, #16
	lsr	r0, r0, #16
	cmp	r0, #54	@ 0x36
	bhi	.L_8374
	mov	r0, #1
	mov	r5, r8
	and	r0, r5
	cmp	r0, #0
	beq	.L_837c
	strh	r1, [r3, #0]
	ldr	r1, .L_8370
	ldrh	r0, [r1, #0]
	sub	r0, #1
	strh	r0, [r1, #0]
	b	.L_837c
	.align	2, 0
.L_836c:
	.4byte	gUnk_3002C46
.L_8370:
	.4byte	gUnk_3002C48
.L_8374:
	lsl	r0, r2, #16
	cmp	r0, #0
	ble	.L_837c
	strh	r1, [r3, #0]
.L_837c:
	mov	r6, sl
	cmp	r6, #0
	beq	.L_83a0
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence00
	add	r1, sp, #8
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence01
	ldr	r0, .L_839c
	bl	ConfigureLayeredCutsceneOamOffsets
	b	.L_83a8
	.align	2, 0
.L_839c:
	.4byte	SelectLayeredCutsceneOamSequence01
.L_83a0:
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence10
.L_83a8:
	ldr	r2, .L_83c0
	ldrh	r3, [r2, #0]
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	mov	r0, #32
	neg	r0, r0
	cmp	r1, r0
	ble	.L_83c4
	sub	r0, r3, #2
	strh	r0, [r2, #0]
	b	.L_83d2
	.align	2, 0
.L_83c0:
	.4byte	gUnk_3002C4A
.L_83c4:
	ldr	r1, .L_8448
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_844c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_83d2:
	ldr	r2, .L_8450
	ldrh	r1, [r2, #0]
	add	r0, r1, #0
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #103	@ 0x67
	bhi	.L_83fe
	add	r0, r1, #1
	strh	r0, [r2, #0]
	ldr	r4, .L_8454
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	sub	r1, #64	@ 0x40
	lsl	r0, r1, #3
	sub	r0, r0, r1
	lsl	r0, r0, #1
	mov	r1, #13
	bl	__divsi3
	add	r0, #88	@ 0x58
	strh	r0, [r4, #0]
.L_83fe:
	add	r1, sp, #12
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence13
	ldr	r2, .L_8458
	ldrh	r3, [r2, #0]
	mov	r4, #0
	ldrsh	r1, [r2, r4]
	mov	r0, #32
	neg	r0, r0
	cmp	r1, r0
	ble	.L_841a
	sub	r0, r3, #2
	strh	r0, [r2, #0]
.L_841a:
	ldrh	r1, [r2, #0]
	add	r0, r1, #0
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #103	@ 0x67
	bls	.L_842a
	b	.L_8642
.L_842a:
	add	r0, r1, #1
	strh	r0, [r2, #0]
	ldr	r4, .L_845c
	mov	r5, #0
	ldrsh	r1, [r2, r5]
	sub	r1, #64	@ 0x40
	lsl	r0, r1, #3
	sub	r0, r0, r1
	lsl	r0, r0, #1
	mov	r1, #13
	bl	__divsi3
	add	r0, #88	@ 0x58
	strh	r0, [r4, #0]
	b	.L_8642
.L_8448:
	.4byte	gUnk_3002C64
.L_844c:
	.4byte	gUnk_3002C60
.L_8450:
	.4byte	gUnk_3002C4A
.L_8454:
	.4byte	gUnk_3002C4C
.L_8458:
	.4byte	gUnk_3002C98
.L_845c:
	.4byte	gUnk_3002C9A
.L_8460:
	mov	r0, #1
	bl	IncreaseCutsceneBlendCoefficient
	cmp	r0, #0
	bne	.L_846c
	b	.L_8642
.L_846c:
	mov	r0, sp
	ldr	r1, .L_8500
	add	r6, r1, #0
	strh	r6, [r0, #0]
	ldr	r4, .L_8504
	str	r0, [r4, #0]
	ldr	r1, .L_8508
	str	r1, [r4, #4]
	ldr	r5, .L_850c
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_8510
	bl	DecodeCutsceneTileRuns
	mov	r0, sp
	strh	r6, [r0, #0]
	str	r0, [r4, #0]
	ldr	r1, .L_8514
	str	r1, [r4, #4]
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_8518
	bl	DecodeCutsceneTileRuns
	mov	r1, sp
	ldr	r2, .L_851c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	str	r1, [r4, #0]
	ldr	r0, .L_8520
	str	r0, [r4, #4]
	ldr	r0, .L_8524
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_8528
	ldr	r1, .L_852c
	bl	DecodeCutsceneTileRuns
	ldr	r0, .L_8530
	mov	r1, #16
	strh	r1, [r0, #0]
	ldr	r0, .L_8534
	mov	r2, #0
	strh	r2, [r0, #0]
	ldr	r0, .L_8538
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	ldr	r0, .L_853c
	add	r1, #240	@ 0xf0
	strh	r1, [r0, #0]
	ldr	r0, .L_8540
	mov	r2, #112	@ 0x70
	strh	r2, [r0, #0]
	ldr	r1, .L_8544
	mov	r0, #148	@ 0x94
	lsl	r0, r0, #1
	strh	r0, [r1, #0]
	ldr	r0, .L_8548
	strh	r2, [r0, #0]
	bl	WaitForVBlankInterrupt
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r3, #184	@ 0xb8
	lsl	r3, r3, #5
	add	r0, r3, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_854c
	b	.L_863c
.L_8500:
	.4byte	0x3FF
.L_8504:
	.4byte	0x40000D4
.L_8508:
	.4byte	0x6008000
.L_850c:
	.4byte	0x81000260
.L_8510:
	.4byte	sUnk_82A1CF0
.L_8514:
	.4byte	0x6009000
.L_8518:
	.4byte	sUnk_82A1E7A
.L_851c:
	.4byte	0x93A0
.L_8520:
	.4byte	0x600A380
.L_8524:
	.4byte	0x810000C0
.L_8528:
	.4byte	sUnk_82A1FBC
.L_852c:
	.4byte	0x600A000
.L_8530:
	.4byte	gUnk_3002C46
.L_8534:
	.4byte	gUnk_3002C48
.L_8538:
	.4byte	0x4000010
.L_853c:
	.4byte	gUnk_3002C98
.L_8540:
	.4byte	gUnk_3002C9A
.L_8544:
	.4byte	gUnk_3002C4A
.L_8548:
	.4byte	gUnk_3002C4C
.L_854c:
	.4byte	gUnk_3002C60
.L_8550:
	mov	r0, #1
	bl	DecreaseCutsceneBlendCoefficient
	cmp	r0, #0
	beq	.L_8562
	add	r1, sp, #20
	mov	r0, r8
	bl	SelectCutsceneGfx5
.L_8562:
	mov	r4, sl
	cmp	r4, #0
	beq	.L_8584
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence00
	add	r1, sp, #8
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence01
	ldr	r0, .L_8580
	bl	ConfigureLayeredCutsceneOamOffsets
	b	.L_858c
.L_8580:
	.4byte	SelectLayeredCutsceneOamSequence01
.L_8584:
	add	r1, sp, #4
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence10
.L_858c:
	ldr	r2, .L_85a4
	ldrh	r3, [r2, #0]
	mov	r5, #0
	ldrsh	r1, [r2, r5]
	mov	r0, #32
	neg	r0, r0
	cmp	r1, r0
	ble	.L_85a8
	sub	r0, r3, #2
	strh	r0, [r2, #0]
	b	.L_85bc
	.align	2, 0
.L_85a4:
	.4byte	gUnk_3002C4A
.L_85a8:
	mov	r0, #55	@ 0x37
	bl	InitCutsceneBrightenBlend
	ldr	r1, .L_8618
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_861c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_85bc:
	ldr	r1, .L_8620
	mov	r6, #0
	ldrsh	r0, [r1, r6]
	cmp	r0, #31
	bgt	.L_85dc
	ldr	r4, .L_8624
	mov	r1, #32
	sub	r1, r1, r0
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #1
	mov	r1, #5
	bl	__divsi3
	add	r0, #112	@ 0x70
	strh	r0, [r4, #0]
.L_85dc:
	add	r1, sp, #12
	mov	r0, r8
	bl	SelectLayeredCutsceneOamSequence13
	ldr	r2, .L_8628
	ldrh	r3, [r2, #0]
	mov	r4, #0
	ldrsh	r1, [r2, r4]
	mov	r0, #32
	neg	r0, r0
	cmp	r1, r0
	ble	.L_85f8
	sub	r0, r3, #2
	strh	r0, [r2, #0]
.L_85f8:
	mov	r5, #0
	ldrsh	r0, [r2, r5]
	cmp	r0, #31
	bgt	.L_8642
	ldr	r4, .L_862c
	mov	r1, #32
	sub	r1, r1, r0
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #1
	mov	r1, #5
	bl	__divsi3
	add	r0, #112	@ 0x70
	strh	r0, [r4, #0]
	b	.L_8642
.L_8618:
	.4byte	gUnk_3002C64
.L_861c:
	.4byte	gUnk_3002C60
.L_8620:
	.4byte	gUnk_3002C4A
.L_8624:
	.4byte	gUnk_3002C4C
.L_8628:
	.4byte	gUnk_3002C98
.L_862c:
	.4byte	gUnk_3002C9A
.L_8630:
	mov	r0, #7
	bl	IncreaseCutsceneBlendCoefficient
	cmp	r0, #0
	beq	.L_8642
	ldr	r1, .L_8890
.L_863c:
	ldrh	r0, [r1, #0]
	add	r0, #1
.L_8640:
	strh	r0, [r1, #0]
.L_8642:
	ldr	r1, .L_8894
	ldr	r0, .L_8898
	ldrh	r3, [r0, #0]
	strh	r3, [r1, #0]
	ldr	r2, .L_889c
	ldr	r0, .L_88a0
	ldrh	r1, [r0, #0]
	ldr	r0, [sp, #28]
	add	r1, r0, r1
	strh	r1, [r2, #0]
	ldr	r0, .L_88a4
	strh	r3, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	ldr	r7, .L_88a8
	ldr	r0, .L_88ac
	ldrh	r0, [r0, #0]
	cmp	r0, #10
	bhi	.L_8750
	ldr	r5, .L_88b0
	ldr	r6, .L_88b4
	mov	r1, #0
	lsl	r0, r3, #16
	cmp	r0, #0
	ble	.L_8676
	mov	r1, #1
.L_8676:
	add	r0, r1, #0
	bl	UpdateLayeredCutsceneObjectPositions
	add	r4, sp, #24
	mov	r0, r8
	add	r1, r4, #0
	bl	SelectLayeredCutsceneOamSequence20
	ldr	r0, [sp, #24]
	ldrh	r2, [r5, #0]
	add	r5, #2
	ldrh	r3, [r6, #0]
	add	r6, #2
	add	r1, r7, #0
	bl	AppendCutsceneOamTemplate
	add	r7, r0, #0
	mov	r0, r8
	add	r1, r4, #0
	bl	SelectLayeredCutsceneOamSequence21
	ldr	r0, [sp, #24]
	ldrh	r2, [r5, #0]
	add	r5, #2
	ldrh	r3, [r6, #0]
	add	r6, #2
	add	r1, r7, #0
	bl	AppendCutsceneOamTemplate
	add	r7, r0, #0
	mov	r0, r8
	add	r1, r4, #0
	bl	SelectLayeredCutsceneOamSequence22
	ldr	r0, [sp, #24]
	ldrh	r2, [r5, #0]
	add	r5, #2
	ldrh	r3, [r6, #0]
	add	r6, #2
	add	r1, r7, #0
	bl	AppendCutsceneOamTemplate
	add	r7, r0, #0
	mov	r0, r8
	add	r1, r4, #0
	bl	SelectLayeredCutsceneOamSequence23
	ldr	r0, [sp, #24]
	ldrh	r2, [r5, #0]
	add	r5, #2
	ldrh	r3, [r6, #0]
	add	r6, #2
	add	r1, r7, #0
	bl	AppendCutsceneOamTemplate
	add	r7, r0, #0
	mov	r0, r8
	add	r1, r4, #0
	bl	SelectLayeredCutsceneOamSequence24
	ldr	r0, [sp, #24]
	ldrh	r2, [r5, #0]
	add	r5, #2
	ldrh	r3, [r6, #0]
	add	r6, #2
	add	r1, r7, #0
	bl	AppendCutsceneOamTemplate
	add	r7, r0, #0
	mov	r0, r8
	add	r0, #24
	add	r1, r4, #0
	bl	SelectLayeredCutsceneOamSequence20
	ldr	r0, [sp, #24]
	ldrh	r2, [r5, #0]
	add	r5, #2
	ldrh	r3, [r6, #0]
	add	r6, #2
	add	r1, r7, #0
	bl	AppendCutsceneOamTemplate
	add	r7, r0, #0
	mov	r0, r8
	add	r0, #56	@ 0x38
	add	r1, r4, #0
	bl	SelectLayeredCutsceneOamSequence20
	ldr	r0, [sp, #24]
	ldrh	r2, [r5, #0]
	add	r5, #2
	ldrh	r3, [r6, #0]
	add	r6, #2
	add	r1, r7, #0
	bl	AppendCutsceneOamTemplate
	add	r7, r0, #0
	mov	r0, r8
	add	r0, #72	@ 0x48
	add	r1, r4, #0
	bl	SelectLayeredCutsceneOamSequence20
	ldr	r0, [sp, #24]
	ldrh	r2, [r5, #0]
	ldrh	r3, [r6, #0]
	add	r1, r7, #0
	bl	AppendCutsceneOamTemplate
	add	r7, r0, #0
.L_8750:
	ldr	r1, .L_88ac
	mov	r9, r1
	ldrh	r0, [r1, #0]
	cmp	r0, #11
	bne	.L_8768
	ldr	r0, [sp, #20]
	add	r1, r7, #0
	mov	r2, #216	@ 0xd8
	mov	r3, #88	@ 0x58
	bl	AppendCutsceneOamTemplate
	add	r7, r0, #0
.L_8768:
	ldr	r0, [sp, #12]
	ldr	r1, .L_88b8
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r4, .L_8898
	mov	r5, #0
	ldrsh	r1, [r4, r5]
	sub	r2, r2, r1
	ldr	r1, .L_88bc
	mov	r6, #0
	ldrsh	r3, [r1, r6]
	ldr	r5, .L_88a0
	mov	r6, #0
	ldrsh	r1, [r5, r6]
	sub	r1, #1
	sub	r3, r3, r1
	ldr	r1, [sp, #28]
	sub	r3, r3, r1
	add	r1, r7, #0
	bl	AppendCutsceneOamTemplate
	add	r7, r0, #0
	ldr	r0, [sp, #16]
	ldr	r1, .L_88c0
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r6, #0
	ldrsh	r1, [r4, r6]
	sub	r2, r2, r1
	ldr	r1, .L_88c4
	mov	r6, #0
	ldrsh	r3, [r1, r6]
	mov	r6, #0
	ldrsh	r1, [r5, r6]
	sub	r3, r3, r1
	ldr	r1, [sp, #28]
	sub	r3, r3, r1
	add	r1, r7, #0
	bl	AppendCutsceneOamTemplate
	add	r7, r0, #0
	mov	r2, r9
	ldrh	r0, [r2, #0]
	cmp	r0, #5
	bhi	.L_87f8
	ldr	r0, [sp, #8]
	ldr	r1, .L_88c8
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r6, #0
	ldrsh	r1, [r4, r6]
	sub	r2, r2, r1
	ldr	r1, .L_88cc
	mov	r3, #0
	ldrsh	r1, [r1, r3]
	add	r2, r2, r1
	ldr	r1, .L_88d0
	mov	r6, #0
	ldrsh	r3, [r1, r6]
	mov	r6, #0
	ldrsh	r1, [r5, r6]
	sub	r3, r3, r1
	ldr	r1, [sp, #28]
	sub	r3, r3, r1
	ldr	r1, .L_88d4
	mov	r6, #0
	ldrsh	r1, [r1, r6]
	add	r3, r3, r1
	add	r1, r7, #0
	bl	AppendCutsceneOamTemplate
	add	r7, r0, #0
.L_87f8:
	ldr	r0, [sp, #4]
	ldr	r6, .L_88c8
	mov	r1, #0
	ldrsh	r2, [r6, r1]
	mov	r3, #0
	ldrsh	r1, [r4, r3]
	sub	r2, r2, r1
	ldr	r1, .L_88d0
	mov	r8, r1
	mov	r3, #0
	ldrsh	r1, [r1, r3]
	mov	ip, r1
	mov	r3, #0
	ldrsh	r1, [r5, r3]
	mov	r3, ip
	sub	r3, r3, r1
	ldr	r1, [sp, #28]
	sub	r3, r3, r1
	mov	ip, r3
	add	r1, r7, #0
	bl	AppendCutsceneOamTemplate
	add	r7, r0, #0
	mov	r2, r9
	ldrh	r0, [r2, #0]
	cmp	r0, #5
	bls	.L_8862
	ldr	r0, [sp, #8]
	mov	r3, #0
	ldrsh	r2, [r6, r3]
	mov	r6, #0
	ldrsh	r1, [r4, r6]
	sub	r2, r2, r1
	ldr	r1, .L_88cc
	mov	r3, #0
	ldrsh	r1, [r1, r3]
	add	r2, r2, r1
	mov	r4, r8
	mov	r6, #0
	ldrsh	r3, [r4, r6]
	mov	r4, #0
	ldrsh	r1, [r5, r4]
	sub	r3, r3, r1
	ldr	r5, [sp, #28]
	sub	r3, r3, r5
	ldr	r1, .L_88d4
	mov	r6, #0
	ldrsh	r1, [r1, r6]
	add	r3, r3, r1
	add	r1, r7, #0
	bl	AppendCutsceneOamTemplate
	add	r7, r0, #0
.L_8862:
	mov	r0, sl
	cmp	r0, #0
	beq	.L_8878
	ldr	r0, .L_88d8
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	mov	r0, #0
	mov	r1, #0
	add	r2, r3, #0
	bl	WriteCutsceneOamAffineMatrix
.L_8878:
	add	r0, r7, #0
	bl	FinalizeCutsceneOamBuffer
	add	sp, #32
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8890:
	.4byte	gSubGameMode
.L_8894:
	.4byte	0x4000010
.L_8898:
	.4byte	gUnk_3002C46
.L_889c:
	.4byte	0x4000012
.L_88a0:
	.4byte	gUnk_3002C48
.L_88a4:
	.4byte	0x4000014
.L_88a8:
	.4byte	gOamBuffer
.L_88ac:
	.4byte	gUnk_3002C60
.L_88b0:
	.4byte	gUnk_3002CA8
.L_88b4:
	.4byte	gUnk_3002CB8
.L_88b8:
	.4byte	gUnk_3002C98
.L_88bc:
	.4byte	gUnk_3002C9A
.L_88c0:
	.4byte	gUnk_3002C9C
.L_88c4:
	.4byte	gUnk_3002C9E
.L_88c8:
	.4byte	gUnk_3002C4A
.L_88cc:
	.4byte	gUnk_3002CA0
.L_88d0:
	.4byte	gUnk_3002C4C
.L_88d4:
	.4byte	gUnk_3002CA2
.L_88d8:
	.4byte	gUnk_3002C82


