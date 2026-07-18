.include "macros.s.inc"


thumb_func_start func_807ADFC
func_807ADFC:
	push	{r4, lr}
	ldr	r0, .L_7ae18
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_7ae1c
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bhi	.L_7aee2
	lsl	r0, r0, #2
	ldr	r1, .L_7ae20
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_7ae18:
	.4byte	gUnk_3004A30
.L_7ae1c:
	.4byte	gUnk_3003C94
.L_7ae20:
	.4byte	.L_7ae24
.L_7ae24:
	.4byte	.L_7ae38
	.4byte	.L_7aebc
	.4byte	.L_7aec2
	.4byte	.L_7aed2
	.4byte	.L_7aec8
.L_7ae38:
	ldr	r0, .L_7ae4c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_7ae50
	bl	func_807B808
	bl	func_807B82C
	b	.L_7ae5e
	.align	2, 0
.L_7ae4c:
	.4byte	gUnk_3003C45
.L_7ae50:
	bl	func_807B544
	cmp	r0, #0
	beq	.L_7ae5e
	ldr	r1, .L_7ae8c
	mov	r0, #3
	strb	r0, [r1, #0]
.L_7ae5e:
	ldr	r2, .L_7ae90
	ldr	r1, .L_7ae94
	ldr	r4, .L_7ae98
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	bl	func_807C06C
	bl	func_807C160
	ldrb	r0, [r4, #0]
	cmp	r0, #1
	bne	.L_7aea8
	ldr	r1, .L_7ae9c
	ldr	r0, .L_7aea0
	str	r0, [r1, #0]
	ldr	r1, .L_7aea4
	mov	r0, #0
	strh	r0, [r1, #0]
	strh	r0, [r1, #2]
	b	.L_7aeae
.L_7ae8c:
	.4byte	gUnk_3003C94
.L_7ae90:
	.4byte	gUnk_3003C40
.L_7ae94:
	.4byte	sUnk_86392C0
.L_7ae98:
	.4byte	gUnk_3003C44
.L_7ae9c:
	.4byte	gUnk_3003C64
.L_7aea0:
	.4byte	sUnk_86404A4
.L_7aea4:
	.4byte	gUnk_3003C78
.L_7aea8:
	ldr	r1, .L_7aeb4
	ldr	r0, .L_7aeb8
	str	r0, [r1, #0]
.L_7aeae:
	bl	func_807C0D8
	b	.L_7aee2
.L_7aeb4:
	.4byte	gUnk_3003C64
.L_7aeb8:
	.4byte	sUnk_8640394
.L_7aebc:
	bl	func_807B940
	b	.L_7aee2
.L_7aec2:
	bl	func_807BBD4
	b	.L_7aee2
.L_7aec8:
	bl	func_807BD90
	bl	func_807C160
	b	.L_7aee2
.L_7aed2:
	bl	func_807C06C
	bl	func_807BF88
	cmp	r0, #0
	beq	.L_7aee2
	mov	r0, #1
	b	.L_7aee8
.L_7aee2:
	bl	func_807C118
	mov	r0, #0
.L_7aee8:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_807AEF0
func_807AEF0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r1, .L_7b11c
	mov	r0, #6
	strb	r0, [r1, #0]
	bl	InitializeVideoMemory
	ldr	r1, .L_7b120
	ldr	r0, .L_7b124
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_7b128
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7af28
.L_7af20:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7af20
.L_7af28:
	ldr	r1, .L_7b120
	ldr	r0, .L_7b12c
	str	r0, [r1, #0]
	ldr	r0, .L_7b130
	str	r0, [r1, #4]
	ldr	r0, .L_7b128
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	ldr	r3, .L_7b134
	ldr	r4, .L_7b138
	ldr	r5, .L_7b13c
	ldr	r6, .L_7b140
	ldr	r7, .L_7b144
	mov	sl, r7
	ldr	r7, .L_7b148
	mov	ip, r7
	ldr	r7, .L_7b14c
	mov	r9, r7
	ldr	r7, .L_7b150
	mov	r8, r7
	cmp	r0, #0
	bge	.L_7af62
.L_7af5a:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7af5a
.L_7af62:
	ldr	r1, .L_7b120
	str	r3, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_7b154
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7af84
.L_7af7c:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7af7c
.L_7af84:
	ldr	r1, .L_7b120
	str	r4, [r1, #0]
	ldr	r0, .L_7b158
	str	r0, [r1, #4]
	ldr	r0, .L_7b15c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7afa4
.L_7af9c:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7af9c
.L_7afa4:
	ldr	r1, .L_7b120
	str	r5, [r1, #0]
	ldr	r0, .L_7b160
	str	r0, [r1, #4]
	ldr	r0, .L_7b164
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7afc4
.L_7afbc:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7afbc
.L_7afc4:
	ldr	r1, .L_7b120
	str	r6, [r1, #0]
	ldr	r0, .L_7b168
	str	r0, [r1, #4]
	ldr	r0, .L_7b164
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7afe4
.L_7afdc:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7afdc
.L_7afe4:
	ldr	r1, .L_7b120
	mov	r0, sl
	str	r0, [r1, #0]
	ldr	r0, .L_7b16c
	str	r0, [r1, #4]
	ldr	r0, .L_7b164
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7b006
.L_7affe:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7affe
.L_7b006:
	ldr	r1, .L_7b120
	mov	r2, ip
	str	r2, [r1, #0]
	ldr	r0, .L_7b170
	str	r0, [r1, #4]
	ldr	r0, .L_7b164
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #204	@ 0xcc
	ldr	r7, .L_7b174
	add	r0, r7, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_7b178
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r7, .L_7b17c
	add	r0, r7, #0
	strh	r0, [r1, #0]
	add	r1, #2
	mov	r2, #240	@ 0xf0
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_7b180
	add	r0, r8
	ldrh	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r9
	ldr	r0, [r0, #0]
	ldr	r1, .L_7b184
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	bl	m4aMPlayVolumeControl
	bl	InitMinigameScoreDisplay
	ldr	r0, .L_7b188
	mov	r7, #0
	strh	r7, [r0, #0]
	ldr	r2, .L_7b18c
	mov	r4, #0
	strh	r4, [r2, #0]
	strh	r4, [r2, #2]
	ldr	r1, .L_7b190
	ldr	r6, .L_7b194
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #5
	strh	r0, [r2, #8]
	ldr	r1, .L_7b198
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #5
	strh	r0, [r2, #10]
	ldr	r0, .L_7b19c
	strb	r7, [r0, #0]
	ldr	r1, .L_7b1a0
	ldr	r0, .L_7b1a4
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_7b1a8
	strh	r4, [r0, #0]
	strh	r4, [r0, #2]
	ldr	r0, .L_7b1ac
	strb	r7, [r0, #0]
	ldr	r0, .L_7b1b0
	strh	r4, [r0, #0]
	strh	r4, [r0, #2]
	ldr	r1, .L_7b1b4
	ldr	r0, .L_7b1b8
	str	r0, [r1, #0]
	ldr	r5, .L_7b1bc
	mov	r0, #5
	strb	r0, [r5, #0]
	ldr	r0, .L_7b1c0
	strh	r4, [r0, #0]
	strh	r4, [r0, #2]
	ldr	r0, .L_7b1c4
	ldr	r0, [r0, #0]
	mov	r1, #10
	bl	__divsi3
	mov	r1, #10
	bl	__modsi3
	strb	r0, [r5, #0]
	ldr	r0, .L_7b1c8
	strb	r7, [r0, #0]
	ldr	r1, .L_7b1cc
	ldrb	r0, [r6, #0]
	strb	r0, [r1, #0]
	ldr	r1, .L_7b1d0
	mov	r0, #120	@ 0x78
	strh	r0, [r1, #0]
	ldr	r1, .L_7b1d4
	mov	r2, #240	@ 0xf0
	lsl	r2, r2, #3
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_7b1d8
	strb	r7, [r0, #0]
	ldr	r0, .L_7b1dc
	strb	r7, [r0, #0]
	ldr	r0, .L_7b1e0
	strh	r4, [r0, #0]
	ldr	r0, .L_7b1e4
	strb	r7, [r0, #0]
	ldr	r0, .L_7b1e8
	str	r4, [r0, #0]
	ldr	r0, .L_7b1ec
	strb	r7, [r0, #0]
	ldr	r0, .L_7b1f0
	strh	r4, [r0, #0]
	strh	r4, [r0, #2]
	ldr	r0, .L_7b1f4
	strh	r4, [r0, #0]
	strh	r4, [r0, #2]
	ldr	r0, .L_7b1f8
	strb	r7, [r0, #0]
	ldr	r2, .L_7b1fc
	ldrb	r1, [r2, #16]
	mov	r3, #32
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_7b204
	ldr	r0, .L_7b200
	strb	r7, [r0, #0]
	add	r4, r0, #0
	b	.L_7b250
	.align	2, 0
.L_7b11c:
	.4byte	gCurrentStageNumber
.L_7b120:
	.4byte	0x40000D4
.L_7b124:
	.4byte	sUnk_8642958
.L_7b128:
	.4byte	0x80000100
.L_7b12c:
	.4byte	sUnk_8646358
.L_7b130:
	.4byte	0x5000200
.L_7b134:
	.4byte	sUnk_8642B58
.L_7b138:
	.4byte	sUnk_8646558
.L_7b13c:
	.4byte	sUnk_864A558
.L_7b140:
	.4byte	sUnk_864AD58
.L_7b144:
	.4byte	sUnk_864B558
.L_7b148:
	.4byte	sUnk_864BF58
.L_7b14c:
	.4byte	gMPlayTable
.L_7b150:
	.4byte	gSongTable
.L_7b154:
	.4byte	0x80001C00
.L_7b158:
	.4byte	0x6010000
.L_7b15c:
	.4byte	0x80002000
.L_7b160:
	.4byte	0x600C000
.L_7b164:
	.4byte	0x80000400
.L_7b168:
	.4byte	0x600D000
.L_7b16c:
	b	.L_7b170
	lsl	r0, r0, #24
.L_7b170:
	.2byte	0xf000
	.2byte	0x0600
.L_7b174:
	.4byte	0x1801
.L_7b178:
	.4byte	0x1A02
.L_7b17c:
	.4byte	0x1C03
.L_7b180:
	.4byte	0x13FC
.L_7b184:
	.4byte	0xFFFF
.L_7b188:
	.4byte	gUnk_3004A30
.L_7b18c:
	.4byte	gUnk_3003C0C
.L_7b190:
	.4byte	sUnk_863926C
.L_7b194:
	.4byte	gCurrentPassage
.L_7b198:
	.4byte	sUnk_8639288
.L_7b19c:
	.4byte	gUnk_3003C44
.L_7b1a0:
	.4byte	gUnk_3003C40
.L_7b1a4:
	.4byte	sUnk_86392C0
.L_7b1a8:
	.4byte	gUnk_3003C74
.L_7b1ac:
	.4byte	gUnk_3003C96
.L_7b1b0:
	.4byte	gUnk_3003C78
.L_7b1b4:
	.4byte	gUnk_3003C64
.L_7b1b8:
	.4byte	sUnk_86404A4
.L_7b1bc:
	.4byte	gUnk_3003C60
.L_7b1c0:
	.4byte	gUnk_3003C7C
.L_7b1c4:
	.4byte	gTotalScore
.L_7b1c8:
	.4byte	gUnk_3003C45
.L_7b1cc:
	.4byte	gCurrentPassageTemp
.L_7b1d0:
	.4byte	gUnk_3003C90
.L_7b1d4:
	.4byte	gUnk_3003C92
.L_7b1d8:
	.4byte	gUnk_3003C94
.L_7b1dc:
	.4byte	gUnk_3003C39
.L_7b1e0:
	.4byte	gUnk_3003C3A
.L_7b1e4:
	.4byte	gUnk_3003C9A
.L_7b1e8:
	.4byte	gUnk_3003C9C
.L_7b1ec:
	.4byte	gUnk_3003C97
.L_7b1f0:
	.4byte	gUnk_3003C80
.L_7b1f4:
	.4byte	gUnk_3003C84
.L_7b1f8:
	.4byte	gUnk_3003C6F
.L_7b1fc:
	.4byte	gCurrentCollection
.L_7b200:
	.4byte	gUnk_3003C95
.L_7b204:
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_7b248
	add	r0, r2, #0
	add	r0, #64	@ 0x40
	ldrb	r1, [r0, #0]
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_7b248
	add	r0, r2, #0
	add	r0, #88	@ 0x58
	ldrb	r1, [r0, #0]
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_7b248
	add	r0, r2, #0
	add	r0, #112	@ 0x70
	ldrb	r1, [r0, #0]
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_7b248
	ldr	r1, .L_7b244
	mov	r0, #2
	b	.L_7b24c
	.align	2, 0
.L_7b244:
	.4byte	gUnk_3003C95
.L_7b248:
	ldr	r1, .L_7b2d0
	mov	r0, #1
.L_7b24c:
	strb	r0, [r1, #0]
	add	r4, r1, #0
.L_7b250:
	ldr	r2, .L_7b2d4
	mov	r3, #0
	strh	r3, [r2, #4]
	strh	r3, [r2, #6]
	ldr	r1, .L_7b2d8
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #4
	strh	r0, [r2, #0]
	ldr	r1, .L_7b2dc
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #4
	strh	r0, [r2, #2]
	ldr	r2, .L_7b2e0
	ldr	r1, .L_7b2e4
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r1, .L_7b2e8
	ldr	r0, .L_7b2ec
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	strh	r0, [r1, #0]
	sub	r1, #2
	strh	r3, [r1, #0]
	add	r1, #6
	strh	r0, [r1, #0]
	sub	r1, #2
	strh	r3, [r1, #0]
	add	r1, #6
	strh	r0, [r1, #0]
	ldr	r0, .L_7b2f0
	strh	r3, [r0, #0]
	add	r0, #6
	strh	r3, [r0, #0]
	sub	r0, #2
	strh	r3, [r0, #0]
	sub	r1, #26
	mov	r7, #252	@ 0xfc
	lsl	r7, r7, #6
	add	r0, r7, #0
	strh	r0, [r1, #0]
	add	r1, #80	@ 0x50
	ldr	r2, .L_7b2f4
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_7b300
	ldr	r2, .L_7b2f8
	mov	r0, #80	@ 0x50
	strh	r0, [r2, #0]
	ldr	r1, .L_7b2fc
	mov	r0, #160	@ 0xa0
	b	.L_7b308
	.align	2, 0
.L_7b2d0:
	.4byte	gUnk_3003C95
.L_7b2d4:
	.4byte	gUnk_3003C88
.L_7b2d8:
	.4byte	sUnk_8639510
.L_7b2dc:
	.4byte	sUnk_863951C
.L_7b2e0:
	.4byte	gUnk_3003C68
.L_7b2e4:
	.4byte	sUnk_8639528
.L_7b2e8:
	.4byte	0x4000012
.L_7b2ec:
	.4byte	gUnk_3003C6C
.L_7b2f0:
	.4byte	0x4000018
.L_7b2f4:
	.4byte	0x1641
.L_7b2f8:
	.4byte	gUnk_3003C4C
.L_7b2fc:
	.4byte	gUnk_3003C4E
.L_7b300:
	ldr	r2, .L_7b340
	strh	r3, [r2, #0]
	ldr	r1, .L_7b344
	mov	r0, #240	@ 0xf0
.L_7b308:
	strh	r0, [r1, #0]
	add	r0, r2, #0
	ldr	r2, .L_7b348
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #8
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_7b34c
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
	add	r1, #4
	mov	r0, #63	@ 0x3f
	strh	r0, [r1, #0]
	add	r1, #2
	mov	r0, #8
	strh	r0, [r1, #0]
	add	r1, #8
	ldr	r0, .L_7b350
	strh	r0, [r1, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7b340:
	.4byte	gUnk_3003C4C
.L_7b344:
	.4byte	gUnk_3003C4E
.L_7b348:
	.4byte	0x4000040
.L_7b34c:
	.4byte	0x4000044
.L_7b350:
	.4byte	0xA0A


thumb_func_start func_807B354
func_807B354:
	push	{lr}
	ldr	r0, .L_7b378
	bl	m4aSongNumStart
	ldr	r2, .L_7b37c
	ldr	r1, .L_7b380
	ldr	r0, .L_7b384
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #4
	strh	r0, [r2, #0]
	bl	func_807AEF0
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7b378:
	.4byte	0x27F
.L_7b37c:
	.4byte	gUnk_3003C6C
.L_7b380:
	.4byte	sUnk_86392A4
.L_7b384:
	.4byte	gCurrentPassage


thumb_func_start func_807B388
func_807B388:
	push	{lr}
	ldr	r2, .L_7b3b0
	ldr	r1, .L_7b3b4
	ldr	r0, .L_7b3b8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #4
	strh	r0, [r2, #0]
	ldr	r1, .L_7b3bc
	mov	r0, #6
	strb	r0, [r1, #0]
	bl	func_80741F0
	bl	func_807AEF0
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7b3b0:
	.4byte	gUnk_3003C6C
.L_7b3b4:
	.4byte	sUnk_86392A4
.L_7b3b8:
	.4byte	gCurrentPassage
.L_7b3bc:
	.4byte	gCurrentStageNumber


thumb_func_start func_807B3C0
func_807B3C0:
	push	{lr}
	ldr	r1, .L_7b3fc
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r0, .L_7b400
	bl	m4aSongNumStart
	ldr	r1, .L_7b404
	mov	r0, #0
	strh	r0, [r1, #0]
	bl	func_807AEF0
	ldr	r1, .L_7b408
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_7b40c
	ldr	r0, .L_7b410
	str	r0, [r1, #0]
	ldr	r1, .L_7b414
	mov	r0, #240	@ 0xf0
	lsl	r0, r0, #4
	strh	r0, [r1, #8]
	mov	r0, #200	@ 0xc8
	lsl	r0, r0, #5
	strh	r0, [r1, #10]
	ldr	r1, .L_7b418
	ldr	r0, .L_7b41c
	str	r0, [r1, #0]
	pop	{r0}
	bx	r0
.L_7b3fc:
	.4byte	gCurrentPassage
.L_7b400:
	.4byte	0x27F
.L_7b404:
	.4byte	gUnk_3003C6C
.L_7b408:
	.4byte	gUnk_3003C94
.L_7b40c:
	.4byte	gUnk_3003C64
.L_7b410:
	.4byte	sUnk_8640404
.L_7b414:
	.4byte	gUnk_3003C0C
.L_7b418:
	.4byte	gUnk_3003C40
.L_7b41c:
	.4byte	sUnk_8640900


thumb_func_start func_807B420
func_807B420:
	push	{lr}
	ldr	r0, .L_7b490
	bl	m4aSongNumStart
	ldr	r1, .L_7b494
	mov	r2, #240	@ 0xf0
	lsl	r2, r2, #1
	add	r0, r2, #0
	strh	r0, [r1, #0]
	bl	func_807AEF0
	ldr	r1, .L_7b498
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r1, .L_7b49c
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_7b4a0
	mov	r0, #5
	strb	r0, [r1, #0]
	ldr	r1, .L_7b4a4
	ldr	r0, .L_7b4a8
	ldr	r0, [r0, #20]
	lsl	r0, r0, #5
	strh	r0, [r1, #8]
	ldr	r0, .L_7b4ac
	ldr	r0, [r0, #20]
	add	r0, #42	@ 0x2a
	lsl	r0, r0, #5
	strh	r0, [r1, #10]
	ldr	r1, .L_7b4b0
	ldr	r0, .L_7b4b4
	ldr	r0, [r0, #4]
	str	r0, [r1, #0]
	ldr	r1, .L_7b4b8
	ldr	r0, .L_7b4bc
	ldr	r0, [r0, #4]
	lsl	r0, r0, #4
	strh	r0, [r1, #0]
	ldr	r0, .L_7b4c0
	ldr	r0, [r0, #4]
	lsl	r0, r0, #4
	strh	r0, [r1, #2]
	ldr	r1, .L_7b4c4
	ldr	r0, .L_7b4c8
	ldr	r0, [r0, #4]
	str	r0, [r1, #0]
	ldr	r1, .L_7b4cc
	mov	r0, #2
	str	r0, [r1, #0]
	ldr	r0, .L_7b4d0
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7b490:
	.4byte	0x27F
.L_7b494:
	.4byte	gUnk_3003C6C
.L_7b498:
	.4byte	gUnk_3003C94
.L_7b49c:
	.4byte	gUnk_3003C44
.L_7b4a0:
	.4byte	gCurrentPassage
.L_7b4a4:
	.4byte	gUnk_3003C0C
.L_7b4a8:
	.4byte	sUnk_863926C
.L_7b4ac:
	.4byte	sUnk_8639288
.L_7b4b0:
	.4byte	gUnk_3003C40
.L_7b4b4:
	.4byte	sUnk_86392C0
.L_7b4b8:
	.4byte	gUnk_3003C88
.L_7b4bc:
	.4byte	sUnk_8639510
.L_7b4c0:
	.4byte	sUnk_863951C
.L_7b4c4:
	.4byte	gUnk_3003C68
.L_7b4c8:
	.4byte	sUnk_8639528
.L_7b4cc:
	.4byte	gUnk_3003C9C
.L_7b4d0:
	.4byte	0x1AB


thumb_func_start func_807B4D4
func_807B4D4:
	push	{lr}
	ldr	r2, .L_7b51c
	ldr	r1, .L_7b520
	ldr	r0, .L_7b524
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #4
	strh	r0, [r2, #0]
	ldr	r0, .L_7b528
	bl	m4aSongNumStart
	bl	func_807AEF0
	ldr	r1, .L_7b52c
	mov	r0, #2
	strb	r0, [r1, #0]
	ldr	r1, .L_7b530
	ldr	r0, .L_7b534
	ldr	r0, [r0, #0]
	lsl	r0, r0, #4
	strh	r0, [r1, #0]
	ldr	r0, .L_7b538
	ldr	r0, [r0, #0]
	lsl	r0, r0, #4
	strh	r0, [r1, #2]
	ldr	r1, .L_7b53c
	mov	r0, #80	@ 0x50
	strh	r0, [r1, #0]
	ldr	r1, .L_7b540
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7b51c:
	.4byte	gUnk_3003C6C
.L_7b520:
	.4byte	sUnk_86392A4
.L_7b524:
	.4byte	gCurrentPassage
.L_7b528:
	.4byte	0x27F
.L_7b52c:
	.4byte	gUnk_3003C94
.L_7b530:
	.4byte	gUnk_3003C88
.L_7b534:
	.4byte	sUnk_8639510
.L_7b538:
	.4byte	sUnk_863951C
.L_7b53c:
	.4byte	gUnk_3003C4C
.L_7b540:
	.4byte	gUnk_3003C4E


thumb_func_start func_807B544
func_807B544:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r1, .L_7b574
	ldrb	r3, [r1, #0]
	mov	r5, #4
	ldr	r0, .L_7b578
	ldrh	r2, [r0, #0]
	mov	r0, #1
	and	r0, r2
	add	r6, r1, #0
	cmp	r0, #0
	beq	.L_7b584
	ldr	r0, .L_7b57c
	bl	m4aSongNumStart
	ldr	r1, .L_7b580
	mov	r0, #0
	strb	r0, [r1, #0]
	mov	r0, #1
	b	.L_7b744
	.align	2, 0
.L_7b574:
	.4byte	gUnk_3003C44
.L_7b578:
	.4byte	gButtonsPressed
.L_7b57c:
	.4byte	0x125
.L_7b580:
	.4byte	gUnk_3003C08
.L_7b584:
	mov	r0, #32
	and	r0, r2
	cmp	r0, #0
	beq	.L_7b594
	mov	r5, #0
	mov	r0, #2
	strb	r0, [r6, #0]
	b	.L_7b5c4
.L_7b594:
	mov	r0, #64	@ 0x40
	and	r0, r2
	cmp	r0, #0
	beq	.L_7b5a4
	mov	r5, #2
	mov	r0, #1
	strb	r0, [r6, #0]
	b	.L_7b5c4
.L_7b5a4:
	mov	r0, #16
	and	r0, r2
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	cmp	r1, #0
	beq	.L_7b5b8
	mov	r5, #1
	mov	r0, #3
	strb	r0, [r6, #0]
	b	.L_7b5c4
.L_7b5b8:
	mov	r0, #128	@ 0x80
	and	r0, r2
	cmp	r0, #0
	beq	.L_7b5c4
	mov	r5, #3
	strb	r1, [r6, #0]
.L_7b5c4:
	ldrb	r0, [r6, #0]
	cmp	r0, r3
	beq	.L_7b5d0
	mov	r0, #8
	bl	m4aSongNumStart
.L_7b5d0:
	ldr	r0, .L_7b6f4
	mov	sl, r0
	lsl	r3, r5, #2
	ldr	r7, .L_7b6f8
	ldrb	r4, [r7, #0]
	lsl	r1, r4, #4
	add	r1, r3, r1
	ldr	r2, .L_7b6fc
	mov	r8, r2
	ldrb	r2, [r2, #0]
	lsl	r0, r2, #3
	sub	r0, r0, r2
	lsl	r0, r0, #4
	add	r1, r1, r0
	add	r1, sl
	ldr	r0, [r1, #0]
	cmp	r0, #7
	bne	.L_7b5f6
	b	.L_7b738
.L_7b5f6:
	cmp	r5, #4
	bne	.L_7b5fc
	b	.L_7b738
.L_7b5fc:
	ldr	r5, .L_7b700
	strb	r4, [r5, #0]
	ldr	r0, .L_7b704
	mov	r9, r0
	ldr	r1, .L_7b708
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #4
	add	r0, r3, r0
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	mov	r1, r9
	strb	r4, [r1, #0]
	ldr	r1, .L_7b70c
	mov	r2, r9
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	strb	r0, [r6, #0]
	ldrb	r1, [r7, #0]
	lsl	r1, r1, #4
	add	r1, r3, r1
	mov	r0, r8
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #3
	sub	r0, r0, r2
	lsl	r0, r0, #4
	add	r1, r1, r0
	add	r1, sl
	ldr	r0, [r1, #0]
	strb	r0, [r7, #0]
	ldr	r6, .L_7b710
	ldr	r2, .L_7b714
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldr	r0, [r0, #0]
	ldr	r1, [r1, #0]
	sub	r0, r0, r1
	lsl	r0, r0, #4
	ldr	r1, .L_7b718
	mov	r8, r1
	mov	r2, r9
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #2
	add	r1, r8
	ldr	r1, [r1, #0]
	bl	__divsi3
	strh	r0, [r6, #0]
	ldr	r2, .L_7b71c
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldr	r0, [r0, #0]
	ldr	r1, [r1, #0]
	sub	r0, r0, r1
	lsl	r0, r0, #5
	mov	r2, r9
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #2
	add	r1, r8
	ldr	r1, [r1, #0]
	bl	__divsi3
	mov	sl, r0
	mov	r1, sl
	ldr	r0, .L_7b720
	strh	r1, [r0, #0]
	ldr	r6, .L_7b724
	ldr	r2, .L_7b728
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldr	r0, [r0, #0]
	ldr	r1, [r1, #0]
	sub	r0, r0, r1
	lsl	r0, r0, #5
	mov	r2, r9
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #2
	add	r1, r8
	ldr	r1, [r1, #0]
	bl	__divsi3
	strh	r0, [r6, #0]
	lsl	r4, r4, #24
	lsr	r4, r4, #24
	cmp	r4, #3
	bhi	.L_7b6e6
	ldr	r0, .L_7b72c
	mov	r2, r9
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #2
	add	r0, r1, r0
	ldr	r4, [r0, #0]
	ldr	r0, .L_7b730
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #1
	mul	r0, r4
	add	r1, r8
	ldr	r1, [r1, #0]
	bl	__divsi3
	sub	r4, r4, r0
	add	r4, sl
	ldr	r0, .L_7b720
	strh	r4, [r0, #0]
.L_7b6e6:
	ldr	r1, .L_7b734
	mov	r0, #1
	strb	r0, [r1, #0]
	bl	func_80741F0
	b	.L_7b742
	.align	2, 0
.L_7b6f4:
	.4byte	sUnk_86392D0
.L_7b6f8:
	.4byte	gCurrentPassage
.L_7b6fc:
	.4byte	gUnk_3003C95
.L_7b700:
	.4byte	gCurrentPassageTemp
.L_7b704:
	.4byte	gUnk_3003C6E
.L_7b708:
	.4byte	sUnk_8639420
.L_7b70c:
	.4byte	sUnk_8639490
.L_7b710:
	.4byte	gUnk_3003C70
.L_7b714:
	.4byte	sUnk_86392A4
.L_7b718:
	.4byte	sUnk_86394C8
.L_7b71c:
	.4byte	sUnk_863926C
.L_7b720:
	.4byte	gUnk_3003C46
.L_7b724:
	.4byte	gUnk_3003C48
.L_7b728:
	.4byte	sUnk_8639288
.L_7b72c:
	.4byte	sUnk_8639500
.L_7b730:
	.4byte	gUnk_3003C6F
.L_7b734:
	.4byte	gUnk_3003C45
.L_7b738:
	ldr	r1, .L_7b754
	mov	r2, #250	@ 0xfa
	lsl	r2, r2, #2
	add	r0, r2, #0
	strh	r0, [r1, #0]
.L_7b742:
	mov	r0, #0
.L_7b744:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_7b754:
	.4byte	gUnk_3004A30


thumb_func_start func_807B758
func_807B758:
	push	{lr}
	bl	func_807F6B4
	ldr	r2, .L_7b790
	ldr	r1, .L_7b794
	ldrh	r1, [r1, #0]
	lsl	r1, r1, #16
	asr	r1, r1, #20
	add	r1, r1, r0
	strh	r1, [r2, #0]
	ldr	r0, .L_7b798
	mov	r2, #0
	strh	r2, [r0, #0]
	add	r0, #6
	strh	r1, [r0, #0]
	sub	r0, #2
	strh	r2, [r0, #0]
	add	r0, #6
	strh	r1, [r0, #0]
	sub	r0, #2
	strh	r2, [r0, #0]
	ldr	r0, .L_7b79c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_7b7a0
	cmp	r0, #1
	beq	.L_7b7c0
	b	.L_7b7d6
.L_7b790:
	.4byte	0x4000012
.L_7b794:
	.4byte	gUnk_3003C6C
.L_7b798:
	.4byte	0x4000010
.L_7b79c:
	.4byte	gLanguage
.L_7b7a0:
	ldr	r1, .L_7b7b8
	ldr	r0, .L_7b7bc
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #7
	mov	r2, #26
	bl	Shop_DrawText
	b	.L_7b7d6
.L_7b7b8:
	.4byte	sUnk_8639588
.L_7b7bc:
	.4byte	gCurrentPassage
.L_7b7c0:
	ldr	r1, .L_7b7f0
	ldr	r0, .L_7b7f4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #7
	mov	r2, #26
	bl	Shop_DrawText
.L_7b7d6:
	ldr	r2, .L_7b7f8
	ldr	r0, .L_7b7fc
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #8
	ldr	r1, .L_7b800
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_7b804
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
	pop	{r0}
	bx	r0
.L_7b7f0:
	.4byte	sUnk_863956C
.L_7b7f4:
	.4byte	gCurrentPassage
.L_7b7f8:
	.4byte	0x4000040
.L_7b7fc:
	.4byte	gUnk_3003C4C
.L_7b800:
	.4byte	gUnk_3003C4E
.L_7b804:
	.4byte	0x4000044


thumb_func_start func_807B808
func_807B808:
	ldr	r0, .L_7b820
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bhi	.L_7b81c
	ldr	r1, .L_7b824
	ldr	r0, .L_7b828
	ldrh	r0, [r0, #0]
	ldrh	r2, [r1, #0]
	add	r0, r0, r2
	strh	r0, [r1, #0]
.L_7b81c:
	bx	lr
	.align	2, 0
.L_7b820:
	.4byte	gUnk_3003C6E
.L_7b824:
	.4byte	gUnk_3003C6C
.L_7b828:
	.4byte	gUnk_3003C70


thumb_func_start func_807B82C
func_807B82C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, .L_7b908
	mov	r8, r0
	ldrb	r0, [r0, #0]
	ldr	r1, .L_7b90c
	mov	sl, r1
	ldr	r2, .L_7b910
	mov	r9, r2
	ldr	r7, .L_7b914
	cmp	r0, #3
	bhi	.L_7b892
	ldr	r3, .L_7b918
	ldr	r0, .L_7b91c
	ldrb	r2, [r0, #0]
	lsl	r2, r2, #2
	add	r2, r2, r3
	ldr	r0, .L_7b920
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldr	r0, [r2, #0]
	ldr	r1, [r1, #0]
	sub	r0, r0, r1
	lsl	r0, r0, #5
	mov	r1, r8
	ldrb	r4, [r1, #0]
	lsl	r4, r4, #2
	mov	r2, sl
	add	r1, r4, r2
	ldr	r5, [r1, #0]
	add	r1, r5, #0
	bl	__divsi3
	add	r6, r0, #0
	ldr	r0, .L_7b924
	add	r4, r4, r0
	ldr	r4, [r4, #0]
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #1
	mul	r0, r4
	add	r1, r5, #0
	bl	__divsi3
	sub	r4, r4, r0
	add	r4, r4, r6
	mov	r0, r9
	strh	r4, [r0, #0]
.L_7b892:
	ldr	r3, .L_7b928
	mov	r1, r9
	ldrh	r0, [r1, #0]
	ldrh	r2, [r3, #8]
	add	r0, r0, r2
	mov	r4, #0
	strh	r0, [r3, #8]
	ldr	r0, .L_7b92c
	ldrh	r0, [r0, #0]
	ldrh	r1, [r3, #10]
	add	r0, r0, r1
	strh	r0, [r3, #10]
	ldrb	r0, [r7, #0]
	add	r0, #1
	strb	r0, [r7, #0]
	ldrb	r1, [r7, #0]
	mov	r2, r8
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	add	r0, sl
	ldr	r0, [r0, #0]
	cmp	r1, r0
	bne	.L_7b8fa
	ldr	r1, .L_7b918
	ldr	r2, .L_7b91c
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #5
	strh	r0, [r3, #8]
	ldr	r1, .L_7b930
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #5
	strh	r0, [r3, #10]
	ldr	r1, .L_7b920
	ldrb	r0, [r2, #0]
	strb	r0, [r1, #0]
	ldr	r3, .L_7b934
	ldr	r1, .L_7b938
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #4
	strh	r0, [r3, #0]
	strb	r4, [r7, #0]
	ldr	r0, .L_7b93c
	strb	r4, [r0, #0]
.L_7b8fa:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_7b908:
	.4byte	gUnk_3003C6E
.L_7b90c:
	.4byte	sUnk_86394C8
.L_7b910:
	.4byte	gUnk_3003C46
.L_7b914:
	.4byte	gUnk_3003C6F
.L_7b918:
	.4byte	sUnk_863926C
.L_7b91c:
	.4byte	gCurrentPassage
.L_7b920:
	.4byte	gCurrentPassageTemp
.L_7b924:
	.4byte	sUnk_8639500
.L_7b928:
	.4byte	gUnk_3003C0C
.L_7b92c:
	.4byte	gUnk_3003C48
.L_7b930:
	.4byte	sUnk_8639288
.L_7b934:
	.4byte	gUnk_3003C6C
.L_7b938:
	.4byte	sUnk_86392A4
.L_7b93c:
	.4byte	gUnk_3003C45


thumb_func_start func_807B940
func_807B940:
	push	{r4, r5, r6, r7, lr}
	ldr	r7, .L_7b954
	ldrb	r0, [r7, #0]
	cmp	r0, #1
	beq	.L_7ba00
	cmp	r0, #1
	bgt	.L_7b958
	cmp	r0, #0
	beq	.L_7b966
	b	.L_7bbae
.L_7b954:
	.4byte	gUnk_3003C39
.L_7b958:
	cmp	r0, #2
	bne	.L_7b95e
	b	.L_7ba98
.L_7b95e:
	cmp	r0, #3
	bne	.L_7b964
	b	.L_7baf8
.L_7b964:
	b	.L_7bbae
.L_7b966:
	ldr	r4, .L_7b9e0
	ldrh	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_7b976
	mov	r0, #217	@ 0xd9
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_7b976:
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	ldrh	r1, [r4, #2]
	ldr	r3, .L_7b9e4
	ldr	r2, [r3, #0]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcc	.L_7b992
	b	.L_7bbae
.L_7b992:
	mov	r0, #1
	strh	r0, [r4, #0]
	ldrh	r0, [r4, #2]
	add	r0, #1
	strh	r0, [r4, #2]
	ldrh	r0, [r4, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r1, [r0, #4]
	cmp	r1, #0
	beq	.L_7b9aa
	b	.L_7bbae
.L_7b9aa:
	ldrb	r0, [r7, #0]
	add	r0, #1
	strb	r0, [r7, #0]
	ldr	r0, .L_7b9e8
	str	r0, [r3, #0]
	strh	r1, [r4, #0]
	strh	r1, [r4, #2]
	ldr	r1, .L_7b9ec
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #3
	strh	r0, [r1, #10]
	ldr	r4, .L_7b9f0
	ldr	r0, .L_7b9f4
	ldr	r0, [r0, #0]
	sub	r0, #32
	lsl	r0, r0, #5
	mov	r1, #40	@ 0x28
	bl	__divsi3
	strh	r0, [r4, #0]
	ldr	r1, .L_7b9f8
	mov	r0, #28
	strh	r0, [r1, #0]
	ldr	r0, .L_7b9fc
	bl	m4aSongNumStart
	b	.L_7bbae
.L_7b9e0:
	.4byte	gUnk_3003C78
.L_7b9e4:
	.4byte	gUnk_3003C64
.L_7b9e8:
	.4byte	sUnk_8640454
.L_7b9ec:
	.4byte	gUnk_3003C0C
.L_7b9f0:
	.4byte	gUnk_3003C48
.L_7b9f4:
	.4byte	sUnk_8639288
.L_7b9f8:
	.4byte	gUnk_3003C70
.L_7b9fc:
	.4byte	0x1B3
.L_7ba00:
	ldr	r4, .L_7ba70
	ldr	r0, .L_7ba74
	ldrh	r0, [r0, #0]
	ldrh	r1, [r4, #10]
	add	r0, r0, r1
	mov	r6, #0
	strh	r0, [r4, #10]
	ldr	r5, .L_7ba78
	ldr	r0, .L_7ba7c
	ldrh	r0, [r0, #0]
	ldrh	r2, [r5, #0]
	add	r0, r0, r2
	strh	r0, [r5, #0]
	bl	func_807C06C
	ldr	r1, .L_7ba80
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #40	@ 0x28
	beq	.L_7ba30
	b	.L_7bbae
.L_7ba30:
	ldr	r0, .L_7ba84
	ldr	r0, [r0, #0]
	lsl	r0, r0, #5
	strh	r0, [r4, #8]
	ldr	r0, .L_7ba88
	ldr	r0, [r0, #0]
	lsl	r0, r0, #5
	strh	r0, [r4, #10]
	mov	r2, #144	@ 0x90
	lsl	r2, r2, #3
	add	r0, r2, #0
	strh	r0, [r5, #0]
	strh	r6, [r1, #0]
	ldr	r1, .L_7ba8c
	mov	r0, #4
	str	r0, [r1, #0]
	strh	r6, [r4, #2]
	strh	r6, [r4, #0]
	ldr	r1, .L_7ba90
	ldr	r0, .L_7ba94
	str	r0, [r1, #0]
	mov	r0, #4
	bl	VoiceSetPlay
	mov	r0, #218	@ 0xda
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldrb	r0, [r7, #0]
	add	r0, #1
	strb	r0, [r7, #0]
	b	.L_7bbae
.L_7ba70:
	.4byte	gUnk_3003C0C
.L_7ba74:
	.4byte	gUnk_3003C48
.L_7ba78:
	.4byte	gUnk_3003C6C
.L_7ba7c:
	.4byte	gUnk_3003C70
.L_7ba80:
	.4byte	gUnk_3003C3A
.L_7ba84:
	.4byte	sUnk_863926C
.L_7ba88:
	.4byte	sUnk_8639288
.L_7ba8c:
	.4byte	gUnk_3003C9C
.L_7ba90:
	.4byte	gUnk_3003C40
.L_7ba94:
	.4byte	sUnk_86409E0
.L_7ba98:
	ldr	r3, .L_7bae4
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldrh	r1, [r3, #2]
	ldr	r4, .L_7bae8
	ldr	r2, [r4, #0]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7bbae
	mov	r0, #1
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r2, [r0, #4]
	cmp	r2, #0
	bne	.L_7bbae
	ldr	r0, .L_7baec
	str	r2, [r0, #0]
	ldr	r1, .L_7baf0
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r0, .L_7baf4
	str	r0, [r4, #0]
	ldrb	r0, [r7, #0]
	add	r0, #1
	strb	r0, [r7, #0]
	strh	r2, [r3, #0]
	strh	r2, [r3, #2]
	b	.L_7bbae
.L_7bae4:
	.4byte	gUnk_3003C0C
.L_7bae8:
	.4byte	gUnk_3003C40
.L_7baec:
	.4byte	gUnk_3003C9C
.L_7baf0:
	.4byte	gUnk_3003C9A
.L_7baf4:
	.4byte	sUnk_8640960
.L_7baf8:
	ldr	r3, .L_7bbb4
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldrh	r1, [r3, #2]
	ldr	r2, .L_7bbb8
	ldr	r2, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7bb4e
	mov	r0, #1
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #1
	bne	.L_7bb34
	ldr	r0, .L_7bbbc
	cmp	r2, r0
	beq	.L_7bb34
	mov	r0, #217	@ 0xd9
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_7bb34:
	ldr	r2, .L_7bbb4
	ldrh	r0, [r2, #2]
	ldr	r3, .L_7bbb8
	ldr	r1, [r3, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrb	r1, [r0, #4]
	cmp	r1, #0
	bne	.L_7bb4e
	ldr	r0, .L_7bbbc
	str	r0, [r3, #0]
	strh	r1, [r2, #0]
	strh	r1, [r2, #2]
.L_7bb4e:
	ldr	r3, .L_7bbc0
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldrh	r1, [r3, #2]
	ldr	r2, .L_7bbc4
	ldr	r2, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7bbae
	mov	r0, #1
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #1
	beq	.L_7bb80
	cmp	r0, #3
	bne	.L_7bb86
.L_7bb80:
	mov	r0, #8
	bl	m4aSongNumStart
.L_7bb86:
	ldr	r2, .L_7bbc0
	ldrh	r0, [r2, #2]
	ldr	r3, .L_7bbc4
	ldr	r1, [r3, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrb	r1, [r0, #4]
	cmp	r1, #0
	bne	.L_7bbae
	ldr	r0, .L_7bbc8
	str	r0, [r3, #0]
	ldr	r0, .L_7bbcc
	strb	r1, [r0, #0]
	ldr	r0, .L_7bbd0
	strb	r1, [r0, #0]
	ldr	r0, .L_7bbb4
	strh	r1, [r0, #0]
	strh	r1, [r0, #2]
	strh	r1, [r2, #0]
	strh	r1, [r2, #2]
.L_7bbae:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_7bbb4:
	.4byte	gUnk_3003C78
.L_7bbb8:
	.4byte	gUnk_3003C64
.L_7bbbc:
	.4byte	sUnk_86404A4
.L_7bbc0:
	.4byte	gUnk_3003C0C
.L_7bbc4:
	.4byte	gUnk_3003C40
.L_7bbc8:
	.4byte	sUnk_8640858
.L_7bbcc:
	.4byte	gUnk_3003C94
.L_7bbd0:
	.4byte	gUnk_3003C39


thumb_func_start func_807BBD4
func_807BBD4:
	push	{r4, r5, lr}
	ldr	r0, .L_7bbec
	ldrb	r1, [r0, #0]
	add	r5, r0, #0
	cmp	r1, #5
	bls	.L_7bbe2
	b	.L_7bd7e
.L_7bbe2:
	lsl	r0, r1, #2
	ldr	r1, .L_7bbf0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_7bbec:
	.4byte	gUnk_3003C39
.L_7bbf0:
	.4byte	.L_7bbf4
.L_7bbf4:
	.4byte	.L_7bc0c
	.4byte	.L_7bc40
	.4byte	.L_7bc94
	.4byte	.L_7bcc8
	.4byte	.L_7bd38
	.4byte	.L_7bd58
.L_7bc0c:
	ldr	r1, .L_7bc38
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #60	@ 0x3c
	bhi	.L_7bc1e
	b	.L_7bd7e
.L_7bc1e:
	mov	r0, #0
	strh	r0, [r1, #0]
	ldrb	r0, [r5, #0]
	add	r0, #1
	strb	r0, [r5, #0]
	ldr	r1, .L_7bc3c
	mov	r0, #3
	str	r0, [r1, #0]
	mov	r0, #213	@ 0xd5
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_7bd7e
.L_7bc38:
	.4byte	gUnk_3003C3A
.L_7bc3c:
	.4byte	gUnk_3003C9C
.L_7bc40:
	ldr	r1, .L_7bc80
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #50	@ 0x32
	bhi	.L_7bc52
	b	.L_7bd7e
.L_7bc52:
	mov	r0, #0
	strh	r0, [r1, #0]
	ldrb	r0, [r5, #0]
	add	r0, #1
	strb	r0, [r5, #0]
	ldr	r1, .L_7bc84
	mov	r0, #2
	str	r0, [r1, #0]
	ldr	r4, .L_7bc88
	mov	r0, #1
	strb	r0, [r4, #0]
	mov	r0, #8
	bl	m4aSongNumStart
	ldr	r2, .L_7bc8c
	ldr	r1, .L_7bc90
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	b	.L_7bd7e
	.align	2, 0
.L_7bc80:
	.4byte	gUnk_3003C3A
.L_7bc84:
	.4byte	gUnk_3003C9C
.L_7bc88:
	.4byte	gUnk_3003C44
.L_7bc8c:
	.4byte	gUnk_3003C40
.L_7bc90:
	.4byte	sUnk_86392C0
.L_7bc94:
	ldr	r0, .L_7bcbc
	ldrh	r1, [r0, #0]
	add	r1, #5
	strh	r1, [r0, #0]
	lsl	r1, r1, #16
	mov	r0, #220	@ 0xdc
	lsl	r0, r0, #20
	cmp	r1, r0
	bls	.L_7bd7e
	ldr	r1, .L_7bcc0
	mov	r0, #4
	str	r0, [r1, #0]
	ldr	r1, .L_7bcc4
	ldrh	r0, [r1, #0]
	sub	r0, #16
	strh	r0, [r1, #0]
	ldrb	r0, [r5, #0]
	add	r0, #1
	b	.L_7bd7c
	.align	2, 0
.L_7bcbc:
	.4byte	gUnk_3003C92
.L_7bcc0:
	.4byte	gUnk_3003C9C
.L_7bcc4:
	.4byte	gUnk_3003C88
.L_7bcc8:
	ldr	r1, .L_7bce4
	ldrh	r0, [r1, #2]
	sub	r0, #3
	strh	r0, [r1, #2]
	ldr	r2, .L_7bce8
	ldrh	r3, [r2, #0]
	mov	r0, #3
	and	r3, r0
	add	r4, r1, #0
	cmp	r3, #0
	bne	.L_7bcec
	ldrh	r0, [r4, #0]
	add	r0, #32
	b	.L_7bcf4
.L_7bce4:
	.4byte	gUnk_3003C88
.L_7bce8:
	.4byte	gUnk_3003C3A
.L_7bcec:
	cmp	r3, #2
	bne	.L_7bcf6
	ldrh	r0, [r4, #0]
	sub	r0, #32
.L_7bcf4:
	strh	r0, [r4, #0]
.L_7bcf6:
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldrh	r1, [r4, #2]
	ldr	r0, .L_7bd28
	ldr	r0, [r0, #4]
	lsl	r3, r0, #4
	cmp	r1, r3
	bge	.L_7bd7e
	ldr	r1, .L_7bd2c
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r1, .L_7bd30
	mov	r0, #1
	str	r0, [r1, #0]
	mov	r1, #0
	strh	r3, [r4, #2]
	ldr	r0, .L_7bd34
	ldr	r0, [r0, #4]
	lsl	r0, r0, #4
	strh	r0, [r4, #0]
	strh	r1, [r2, #0]
	ldrb	r0, [r5, #0]
	add	r0, #1
	b	.L_7bd7c
.L_7bd28:
	.4byte	sUnk_863951C
.L_7bd2c:
	.4byte	gUnk_3003C9A
.L_7bd30:
	.4byte	gUnk_3003C9C
.L_7bd34:
	.4byte	sUnk_8639510
.L_7bd38:
	ldr	r1, .L_7bd54
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #40	@ 0x28
	bls	.L_7bd7e
	mov	r0, #0
	strh	r0, [r1, #0]
	ldrb	r0, [r5, #0]
	add	r0, #1
	b	.L_7bd7c
	.align	2, 0
.L_7bd54:
	.4byte	gUnk_3003C3A
.L_7bd58:
	ldr	r1, .L_7bd84
	ldrh	r0, [r1, #0]
	sub	r0, #1
	strh	r0, [r1, #0]
	ldr	r2, .L_7bd88
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #240	@ 0xf0
	ble	.L_7bd7e
	mov	r0, #0
	strh	r0, [r1, #0]
	mov	r1, #240	@ 0xf0
	strh	r1, [r2, #0]
	ldr	r1, .L_7bd8c
	strb	r0, [r1, #0]
.L_7bd7c:
	strb	r0, [r5, #0]
.L_7bd7e:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_7bd84:
	.4byte	gUnk_3003C4C
.L_7bd88:
	.4byte	gUnk_3003C4E
.L_7bd8c:
	.4byte	gUnk_3003C94


thumb_func_start func_807BD90
func_807BD90:
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L_7bda8
	ldrb	r1, [r6, #0]
	add	r7, r6, #0
	cmp	r1, #1
	beq	.L_7bdf0
	cmp	r1, #1
	bgt	.L_7bdac
	cmp	r1, #0
	beq	.L_7bdb8
	b	.L_7bf5e
	.align	2, 0
.L_7bda8:
	.4byte	gUnk_3003C39
.L_7bdac:
	cmp	r1, #2
	beq	.L_7be8c
	cmp	r1, #3
	bne	.L_7bdb6
	b	.L_7bf04
.L_7bdb6:
	b	.L_7bf5e
.L_7bdb8:
	ldr	r2, .L_7bde4
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #80	@ 0x50
	bhi	.L_7bdca
	b	.L_7bf5e
.L_7bdca:
	strh	r1, [r2, #0]
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
	ldr	r1, .L_7bde8
	ldrh	r0, [r1, #0]
	sub	r0, #16
	strh	r0, [r1, #0]
	ldr	r1, .L_7bdec
	mov	r0, #4
	str	r0, [r1, #0]
	b	.L_7bf5e
	.align	2, 0
.L_7bde4:
	.4byte	gUnk_3003C3A
.L_7bde8:
	.4byte	gUnk_3003C88
.L_7bdec:
	.4byte	gUnk_3003C9C
.L_7bdf0:
	ldr	r1, .L_7be10
	ldrh	r0, [r1, #2]
	sub	r0, #2
	strh	r0, [r1, #2]
	ldr	r2, .L_7be14
	ldrh	r3, [r2, #0]
	mov	r0, #3
	and	r3, r0
	add	r4, r2, #0
	add	r5, r1, #0
	cmp	r3, #0
	bne	.L_7be18
	ldrh	r0, [r5, #0]
	add	r0, #32
	b	.L_7be20
	.align	2, 0
.L_7be10:
	.4byte	gUnk_3003C88
.L_7be14:
	.4byte	gUnk_3003C3A
.L_7be18:
	cmp	r3, #2
	bne	.L_7be22
	ldrh	r0, [r5, #0]
	sub	r0, #32
.L_7be20:
	strh	r0, [r5, #0]
.L_7be22:
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	ldrh	r1, [r5, #2]
	ldr	r0, .L_7be6c
	ldr	r0, [r0, #8]
	lsl	r0, r0, #4
	cmp	r1, r0
	blt	.L_7be36
	b	.L_7bf5e
.L_7be36:
	ldr	r3, .L_7be70
	mov	r2, #0
	mov	r1, #0
	strh	r0, [r5, #2]
	ldr	r0, .L_7be74
	ldr	r0, [r0, #8]
	lsl	r0, r0, #4
	strh	r0, [r5, #0]
	strh	r2, [r4, #0]
	ldrb	r0, [r7, #0]
	add	r0, #1
	strb	r0, [r7, #0]
	ldr	r0, .L_7be78
	strb	r1, [r0, #0]
	mov	r4, #1
	str	r4, [r3, #0]
	ldr	r1, .L_7be7c
	ldr	r0, .L_7be80
	str	r0, [r1, #0]
	strh	r2, [r5, #4]
	strh	r2, [r5, #6]
	ldr	r0, .L_7be84
	bl	m4aSongNumStart
	ldr	r0, .L_7be88
	strb	r4, [r0, #0]
	b	.L_7bf5e
.L_7be6c:
	.4byte	sUnk_863951C
.L_7be70:
	.4byte	gUnk_3003C9C
.L_7be74:
	.4byte	sUnk_8639510
.L_7be78:
	.4byte	gUnk_3003C9A
.L_7be7c:
	.4byte	gUnk_3003C68
.L_7be80:
	.4byte	sUnk_863FD1C
.L_7be84:
	.4byte	0x1C9
.L_7be88:
	.4byte	gUnk_3003C97
.L_7be8c:
	ldr	r3, .L_7beec
	ldrh	r0, [r3, #4]
	add	r0, #1
	strh	r0, [r3, #4]
	ldrh	r1, [r3, #6]
	ldr	r4, .L_7bef0
	ldr	r2, [r4, #0]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7bf5e
	mov	r1, #1
	strh	r1, [r3, #4]
	ldrh	r0, [r3, #6]
	add	r0, #1
	strh	r0, [r3, #6]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #3
	bne	.L_7bebe
	ldr	r0, .L_7bef4
	str	r1, [r0, #0]
.L_7bebe:
	ldrh	r0, [r3, #6]
	ldr	r1, [r4, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_7bf5e
	strh	r0, [r3, #6]
	ldr	r0, .L_7bef8
	ldr	r0, [r0, #8]
	str	r0, [r4, #0]
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
	ldr	r1, .L_7befc
	mov	r2, #33	@ 0x21
	neg	r2, r2
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_7bf00
	mov	r0, #16
	strh	r0, [r1, #0]
	b	.L_7bf5e
.L_7beec:
	.4byte	gUnk_3003C88
.L_7bef0:
	.4byte	gUnk_3003C68
.L_7bef4:
	.4byte	gUnk_3003C9C
.L_7bef8:
	.4byte	sUnk_8639528
.L_7befc:
	.4byte	gUnk_3003C48
.L_7bf00:
	.4byte	gUnk_3003C70
.L_7bf04:
	ldr	r4, .L_7bf64
	ldr	r0, .L_7bf68
	ldrh	r0, [r0, #0]
	ldrh	r1, [r4, #10]
	add	r0, r0, r1
	mov	r7, #0
	strh	r0, [r4, #10]
	ldr	r5, .L_7bf6c
	ldr	r0, .L_7bf70
	ldrh	r0, [r0, #0]
	ldrh	r2, [r5, #0]
	add	r0, r0, r2
	strh	r0, [r5, #0]
	ldr	r3, .L_7bf74
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #40	@ 0x28
	bne	.L_7bf5e
	ldr	r1, .L_7bf78
	ldr	r2, .L_7bf7c
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #5
	strh	r0, [r4, #8]
	ldr	r1, .L_7bf80
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #5
	strh	r0, [r4, #10]
	mov	r1, #144	@ 0x90
	lsl	r1, r1, #3
	add	r0, r1, #0
	strh	r0, [r5, #0]
	mov	r0, #0
	strh	r0, [r3, #0]
	strb	r7, [r6, #0]
	ldr	r0, .L_7bf84
	strb	r7, [r0, #0]
.L_7bf5e:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_7bf64:
	.4byte	gUnk_3003C0C
.L_7bf68:
	.4byte	gUnk_3003C48
.L_7bf6c:
	.4byte	gUnk_3003C6C
.L_7bf70:
	.4byte	gUnk_3003C70
.L_7bf74:
	.4byte	gUnk_3003C3A
.L_7bf78:
	.4byte	sUnk_863926C
.L_7bf7c:
	.4byte	gCurrentPassage
.L_7bf80:
	.4byte	sUnk_8639288
.L_7bf84:
	.4byte	gUnk_3003C94


thumb_func_start func_807BF88
func_807BF88:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_7bf9c
	ldrb	r1, [r0, #0]
	add	r6, r0, #0
	cmp	r1, #0
	beq	.L_7bfa0
	cmp	r1, #1
	beq	.L_7c000
	b	.L_7c064
	.align	2, 0
.L_7bf9c:
	.4byte	gUnk_3003C39
.L_7bfa0:
	ldr	r3, .L_7c030
	ldr	r1, .L_7c034
	ldr	r4, .L_7c038
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	strb	r0, [r3, #0]
	ldr	r2, .L_7c03c
	ldr	r1, .L_7c040
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	ldr	r5, .L_7c044
	ldr	r2, .L_7c048
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #2
	add	r2, r1, r2
	ldr	r0, .L_7c04c
	add	r1, r1, r0
	ldr	r0, [r2, #0]
	ldr	r1, [r1, #0]
	sub	r0, r0, r1
	lsl	r0, r0, #5
	mov	r1, #12
	bl	__divsi3
	strh	r0, [r5, #0]
	ldr	r5, .L_7c050
	ldr	r2, .L_7c054
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #2
	add	r2, r1, r2
	ldr	r0, .L_7c058
	add	r1, r1, r0
	ldr	r0, [r2, #0]
	ldr	r1, [r1, #0]
	sub	r0, r0, r1
	lsl	r0, r0, #5
	mov	r1, #12
	bl	__divsi3
	strh	r0, [r5, #0]
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
.L_7c000:
	ldr	r1, .L_7c05c
	ldr	r0, .L_7c044
	ldrh	r0, [r0, #0]
	ldrh	r2, [r1, #8]
	add	r0, r0, r2
	strh	r0, [r1, #8]
	ldr	r0, .L_7c050
	ldrh	r0, [r0, #0]
	ldrh	r2, [r1, #10]
	add	r0, r0, r2
	strh	r0, [r1, #10]
	ldr	r1, .L_7c060
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #12
	bne	.L_7c064
	mov	r0, #0
	strh	r0, [r1, #0]
	strb	r0, [r6, #0]
	mov	r0, #1
	b	.L_7c066
.L_7c030:
	.4byte	gUnk_3003C44
.L_7c034:
	.4byte	sUnk_86395FC
.L_7c038:
	.4byte	gCurrentPassage
.L_7c03c:
	.4byte	gUnk_3003C40
.L_7c040:
	.4byte	sUnk_86392C0
.L_7c044:
	.4byte	gUnk_3003C46
.L_7c048:
	.4byte	sUnk_86395C4
.L_7c04c:
	.4byte	sUnk_863926C
.L_7c050:
	.4byte	gUnk_3003C48
.L_7c054:
	.4byte	sUnk_86395E0
.L_7c058:
	.4byte	sUnk_8639288
.L_7c05c:
	.4byte	gUnk_3003C0C
.L_7c060:
	.4byte	gUnk_3003C3A
.L_7c064:
	mov	r0, #0
.L_7c066:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_807C06C
func_807C06C:
	push	{lr}
	ldr	r3, .L_7c0cc
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldrh	r1, [r3, #2]
	ldr	r2, .L_7c0d0
	ldr	r2, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7c0c6
	mov	r0, #1
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #1
	beq	.L_7c0a4
	cmp	r0, #3
	beq	.L_7c0a4
	cmp	r0, #5
	bne	.L_7c0b2
.L_7c0a4:
	ldr	r0, .L_7c0d4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_7c0b2
	mov	r0, #1
	bl	m4aSongNumStart
.L_7c0b2:
	ldr	r2, .L_7c0cc
	ldrh	r0, [r2, #2]
	ldr	r1, .L_7c0d0
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_7c0c6
	strh	r0, [r2, #2]
.L_7c0c6:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7c0cc:
	.4byte	gUnk_3003C0C
.L_7c0d0:
	.4byte	gUnk_3003C40
.L_7c0d4:
	.4byte	gUnk_3003C45


thumb_func_start func_807C0D8
func_807C0D8:
	ldr	r3, .L_7c110
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	ldrh	r1, [r3, #2]
	ldr	r2, .L_7c114
	ldr	r2, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7c10c
	mov	r0, #1
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r2, [r0, #4]
	cmp	r2, #0
	bne	.L_7c10c
	strh	r2, [r3, #2]
.L_7c10c:
	bx	lr
	.align	2, 0
.L_7c110:
	.4byte	gUnk_3003C78
.L_7c114:
	.4byte	gUnk_3003C64


thumb_func_start func_807C118
func_807C118:
	ldr	r1, .L_7c134
	ldrb	r0, [r1, #0]
	cmp	r0, #5
	bls	.L_7c124
	mov	r0, #0
	strb	r0, [r1, #0]
.L_7c124:
	ldrb	r0, [r1, #0]
	cmp	r0, #3
	bls	.L_7c138
	add	r1, r0, #0
	mov	r0, #6
	sub	r0, r0, r1
	b	.L_7c13a
	.align	2, 0
.L_7c134:
	.4byte	gUnk_3003C96
.L_7c138:
	ldrb	r0, [r1, #0]
.L_7c13a:
	ldr	r2, .L_7c150
	lsl	r0, r0, #3
	ldr	r1, .L_7c154
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_7c158
	str	r0, [r2, #4]
	ldr	r0, .L_7c15c
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	bx	lr
.L_7c150:
	.4byte	0x40000D4
.L_7c154:
	.4byte	sUnk_864BD58
.L_7c158:
	.4byte	0x5000012
.L_7c15c:
	.4byte	0x80000004


thumb_func_start func_807C160
func_807C160:
	push	{r4, r5, lr}
	ldr	r4, .L_7c21c
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	ldrh	r0, [r4, #0]
	mov	r1, #10
	bl	__udivsi3
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r3, #11
	ble	.L_7c180
	mov	r0, #0
	strh	r0, [r4, #0]
	mov	r3, #0
.L_7c180:
	cmp	r3, #6
	ble	.L_7c188
	mov	r0, #12
	sub	r3, r0, r3
.L_7c188:
	ldr	r4, .L_7c220
	add	r0, r4, #0
	add	r0, #112	@ 0x70
	ldrb	r1, [r0, #0]
	mov	r5, #32
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_7c1ae
	ldr	r2, .L_7c224
	lsl	r0, r3, #1
	ldr	r1, .L_7c228
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_7c22c
	str	r0, [r2, #4]
	ldr	r0, .L_7c230
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_7c1ae:
	add	r0, r4, #0
	add	r0, #64	@ 0x40
	ldrb	r1, [r0, #0]
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_7c1d0
	ldr	r2, .L_7c224
	lsl	r0, r3, #1
	ldr	r1, .L_7c234
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_7c238
	str	r0, [r2, #4]
	ldr	r0, .L_7c230
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_7c1d0:
	add	r0, r4, #0
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_7c1f2
	ldr	r2, .L_7c224
	lsl	r0, r3, #1
	ldr	r1, .L_7c23c
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_7c240
	str	r0, [r2, #4]
	ldr	r0, .L_7c230
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_7c1f2:
	add	r0, r4, #0
	add	r0, #88	@ 0x58
	ldrb	r1, [r0, #0]
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_7c214
	ldr	r2, .L_7c224
	lsl	r0, r3, #1
	ldr	r1, .L_7c244
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_7c248
	str	r0, [r2, #4]
	ldr	r0, .L_7c230
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_7c214:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7c21c:
	.4byte	gUnk_3003C62
.L_7c220:
	.4byte	gCurrentCollection
.L_7c224:
	.4byte	0x40000D4
.L_7c228:
	.4byte	sUnk_864BD78
.L_7c22c:
	.4byte	0x50000DC
.L_7c230:
	.4byte	0x80000001
.L_7c234:
	.4byte	sUnk_864BD98
.L_7c238:
	.4byte	0x50000FC
.L_7c23c:
	.4byte	sUnk_864BDB8
.L_7c240:
	.4byte	0x500011C
.L_7c244:
	.4byte	sUnk_864BDD8
.L_7c248:
	.4byte	0x500013C


thumb_func_start func_807C24C
func_807C24C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	mov	r7, #0
	ldr	r4, .L_7c5d8
	ldrb	r6, [r4, #0]
	lsl	r1, r6, #3
	ldr	r0, .L_7c5dc
	add	r5, r1, r0
	ldr	r2, .L_7c5e0
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r3, .L_7c5e4
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_7c2a0
	mov	r0, #1
	add	r1, r2, #0
	strh	r0, [r1, #0]
	ldrh	r0, [r1, #2]
	add	r0, #1
	strh	r0, [r1, #2]
	ldr	r1, .L_7c5e8
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_7c2a0
	strh	r7, [r2, #2]
.L_7c2a0:
	ldr	r1, .L_7c5e0
	ldrh	r0, [r1, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c2b6
	b	.L_7ca5a
.L_7c2b6:
	cmp	r7, r6
	bge	.L_7c320
	ldr	r1, .L_7c5dc
	ldr	r2, .L_7c5ec
	mov	r9, r2
	ldr	r0, .L_7c5f0
	mov	sl, r0
	mov	r2, #13
	neg	r2, r2
	mov	r8, r2
	lsl	r0, r7, #3
	add	r4, r0, r1
	sub	r7, r6, r7
.L_7c2d0:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #90	@ 0x5a
	ldr	r2, .L_7c5f4
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	mov	r0, r9
	and	r1, r0
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r8
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c2d0
	add	r7, r6, #0
.L_7c320:
	ldr	r1, .L_7c5f4
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	cmp	r0, #0
	beq	.L_7c3b0
	ldr	r2, .L_7c5f8
	ldrh	r0, [r2, #2]
	ldr	r1, .L_7c5fc
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c344
	b	.L_7ca5a
.L_7c344:
	cmp	r7, r6
	bge	.L_7c3b0
	ldr	r1, .L_7c5dc
	mov	r8, r2
	ldr	r0, .L_7c5f0
	mov	ip, r0
	mov	r2, #13
	neg	r2, r2
	mov	sl, r2
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r0, .L_7c5ec
	mov	r9, r0
	sub	r7, r6, r7
.L_7c360:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, r8
	ldrh	r0, [r1, #10]
	lsl	r0, r0, #16
	asr	r0, r0, #21
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r1, [r1, #8]
	lsl	r1, r1, #16
	asr	r1, r1, #21
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, sl
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c360
	add	r7, r6, #0
.L_7c3b0:
	ldr	r0, .L_7c600
	ldrb	r1, [r0, #0]
	cmp	r1, #2
	bne	.L_7c468
	ldr	r2, .L_7c604
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r3, .L_7c608
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_7c3ea
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
	bne	.L_7c3ea
	strh	r0, [r2, #2]
.L_7c3ea:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c3fe
	b	.L_7ca5a
.L_7c3fe:
	cmp	r7, r6
	bge	.L_7c468
	ldr	r1, .L_7c5dc
	ldr	r0, .L_7c5ec
	mov	r9, r0
	ldr	r2, .L_7c5f0
	mov	sl, r2
	mov	r0, #13
	neg	r0, r0
	mov	r8, r0
	lsl	r0, r7, #3
	add	r4, r0, r1
	sub	r7, r6, r7
.L_7c418:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #160	@ 0xa0
	ldr	r2, .L_7c5f4
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	mov	r0, r9
	and	r1, r0
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r8
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c418
	add	r7, r6, #0
.L_7c468:
	ldr	r0, .L_7c60c
	ldrb	r1, [r0, #0]
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_7c544
	ldr	r2, .L_7c610
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r3, .L_7c614
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	sl, r2
	cmp	r0, r1
	bcs	.L_7c4aa
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
	bne	.L_7c4aa
	strh	r0, [r2, #2]
	mov	r0, #0
	strb	r0, [r4, #0]
.L_7c4aa:
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_7c544
	mov	r1, #0
.L_7c4b2:
	mov	r2, sl
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	ldr	r2, .L_7c614
	add	r0, r0, r2
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c4ca
	b	.L_7ca5a
.L_7c4ca:
	add	r0, r1, #1
	mov	r9, r0
	cmp	r7, r6
	bge	.L_7c53e
	ldr	r0, .L_7c618
	lsl	r1, r1, #2
	add	r0, r1, r0
	ldr	r0, [r0, #0]
	mov	r8, r0
	lsl	r0, r7, #3
	ldr	r2, .L_7c5dc
	add	r4, r0, r2
	ldr	r0, .L_7c61c
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	mov	ip, r1
	sub	r7, r6, r7
.L_7c4ec:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, r8
	add	r1, r0, r2
	ldr	r2, .L_7c5f4
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, ip
	add	r1, r2, r0
	ldr	r0, .L_7c5ec
	and	r1, r0
	ldrh	r2, [r4, #2]
	ldr	r0, .L_7c5f0
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c4ec
	add	r7, r6, #0
.L_7c53e:
	mov	r1, r9
	cmp	r1, #3
	ble	.L_7c4b2
.L_7c544:
	ldr	r0, .L_7c620
	ldrb	r1, [r0, #0]
	cmp	r1, #4
	bne	.L_7c554
	ldr	r0, .L_7c624
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	beq	.L_7c588
.L_7c554:
	ldr	r3, .L_7c628
	ldrh	r0, [r3, #4]
	add	r0, #1
	strh	r0, [r3, #4]
	ldrh	r1, [r3, #6]
	ldr	r2, .L_7c62c
	ldr	r2, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r2
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7c588
	mov	r0, #1
	strh	r0, [r3, #4]
	ldrh	r0, [r3, #6]
	add	r0, #1
	strh	r0, [r3, #6]
	ldrh	r0, [r3, #6]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r2, [r0, #4]
	cmp	r2, #0
	bne	.L_7c588
	strh	r2, [r3, #6]
.L_7c588:
	ldr	r1, .L_7c600
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_7c670
	ldr	r2, .L_7c628
	ldrh	r0, [r2, #6]
	ldr	r1, .L_7c62c
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c5aa
	b	.L_7ca5a
.L_7c5aa:
	cmp	r7, r6
	bge	.L_7c670
	ldr	r1, .L_7c5dc
	mov	r8, r2
	ldr	r2, .L_7c5f0
	mov	sl, r2
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r0, .L_7c5ec
	mov	r9, r0
	sub	r7, r6, r7
.L_7c5c0:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, r8
	ldrh	r1, [r0, #2]
	lsr	r1, r1, #4
	add	r1, r1, r2
	ldr	r2, .L_7c5f4
	ldrh	r0, [r2, #0]
	b	.L_7c630
	.align	2, 0
.L_7c5d8:
	.4byte	gOamSlotsUsed
.L_7c5dc:
	.4byte	gOamBuffer
.L_7c5e0:
	.4byte	gUnk_3003C74
.L_7c5e4:
	.4byte	sUnk_863FFAC
.L_7c5e8:
	.4byte	gUnk_3003C96
.L_7c5ec:
	.4byte	0x1FF
.L_7c5f0:
	.4byte	0xFFFFFE00
.L_7c5f4:
	.4byte	gUnk_3003C6C
.L_7c5f8:
	.4byte	gUnk_3003C0C
.L_7c5fc:
	.4byte	gUnk_3003C40
.L_7c600:
	.4byte	gUnk_3003C95
.L_7c604:
	.4byte	gUnk_3003C84
.L_7c608:
	.4byte	sUnk_8640C68
.L_7c60c:
	.4byte	gUnk_3003C97
.L_7c610:
	.4byte	gUnk_3003C80
.L_7c614:
	.4byte	sUnk_8641070
.L_7c618:
	.4byte	sUnk_86395B4
.L_7c61c:
	.4byte	sUnk_86395A4
.L_7c620:
	.4byte	gUnk_3003C94
.L_7c624:
	.4byte	gUnk_3003C39
.L_7c628:
	.4byte	gUnk_3003C88
.L_7c62c:
	.4byte	gUnk_3003C68
.L_7c630:
	lsl	r0, r0, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, r8
	ldrh	r1, [r0, #0]
	lsr	r1, r1, #4
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c5c0
	add	r7, r6, #0
.L_7c670:
	ldr	r1, .L_7c7c4
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	cmp	r0, #0
	bne	.L_7c6f6
	ldr	r2, .L_7c7c8
	ldrh	r0, [r2, #2]
	ldr	r1, .L_7c7cc
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c694
	b	.L_7ca5a
.L_7c694:
	cmp	r7, r6
	bge	.L_7c6f6
	ldr	r1, .L_7c7d0
	mov	r8, r2
	ldr	r0, .L_7c7d4
	mov	sl, r0
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r1, .L_7c7d8
	mov	r9, r1
	sub	r7, r6, r7
.L_7c6aa:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, r8
	ldrh	r0, [r1, #10]
	lsl	r0, r0, #16
	asr	r0, r0, #21
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r1, [r1, #8]
	lsl	r1, r1, #16
	asr	r1, r1, #21
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c6aa
	add	r7, r6, #0
.L_7c6f6:
	ldr	r2, .L_7c7dc
	ldrb	r0, [r2, #0]
	cmp	r0, #2
	bhi	.L_7c7f0
	ldr	r2, .L_7c7e0
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldr	r3, .L_7c7e4
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_7c730
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
	bne	.L_7c730
	strh	r0, [r2, #2]
.L_7c730:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c744
	b	.L_7ca5a
.L_7c744:
	cmp	r7, r6
	blt	.L_7c74a
	b	.L_7c8b8
.L_7c74a:
	ldr	r1, .L_7c7d0
	ldr	r0, .L_7c7dc
	mov	r8, r0
	ldr	r2, .L_7c7e8
	mov	sl, r2
	ldr	r0, .L_7c7d4
	mov	ip, r0
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r1, .L_7c7d8
	mov	r9, r1
	sub	r7, r6, r7
.L_7c762:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	ldr	r1, .L_7c7ec
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r1, r2
	ldr	r2, .L_7c7c4
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	add	r0, sl
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c762
	add	r7, r6, #0
	b	.L_7c8b8
	.align	2, 0
.L_7c7c4:
	.4byte	gUnk_3003C6C
.L_7c7c8:
	.4byte	gUnk_3003C0C
.L_7c7cc:
	.4byte	gUnk_3003C40
.L_7c7d0:
	.4byte	gOamBuffer
.L_7c7d4:
	.4byte	0xFFFFFE00
.L_7c7d8:
	.4byte	0x1FF
.L_7c7dc:
	.4byte	gUnk_3003C60
.L_7c7e0:
	.4byte	gUnk_3003C7C
.L_7c7e4:
	.4byte	sUnk_8640B28
.L_7c7e8:
	.4byte	sUnk_8639534
.L_7c7ec:
	.4byte	sUnk_8639550
.L_7c7f0:
	ldr	r1, .L_7ca6c
	ldrb	r0, [r2, #0]
	sub	r0, #3
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldr	r2, .L_7ca70
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_7c82c
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
	bne	.L_7c82c
	strh	r0, [r2, #2]
.L_7c82c:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c840
	b	.L_7ca5a
.L_7c840:
	cmp	r7, r6
	bge	.L_7c8b8
	ldr	r0, .L_7ca74
	mov	ip, r0
	ldr	r1, .L_7ca78
	mov	r8, r1
	ldr	r2, .L_7ca7c
	mov	r9, r2
	ldr	r0, .L_7ca80
	mov	sl, r0
	ldr	r1, .L_7ca84
	lsl	r0, r7, #3
	add	r4, r0, r1
.L_7c85a:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, r8
	ldrb	r0, [r1, #0]
	sub	r0, #3
	lsl	r0, r0, #2
	add	r0, ip
	ldr	r1, [r0, #0]
	add	r1, r1, r2
	ldr	r2, .L_7ca88
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r1, r8
	ldrb	r0, [r1, #0]
	sub	r0, #3
	lsl	r0, r0, #2
	add	r0, r9
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r0, .L_7ca8c
	and	r1, r0
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	add	r7, #1
	cmp	r7, r6
	blt	.L_7c85a
.L_7c8b8:
	ldr	r2, .L_7ca90
	ldrb	r0, [r2, #0]
	cmp	r0, #3
	bhi	.L_7c954
	ldr	r0, .L_7ca94
	ldrh	r0, [r0, #2]
	ldr	r1, .L_7ca98
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	ble	.L_7c8da
	b	.L_7ca5a
.L_7c8da:
	cmp	r7, r6
	bge	.L_7c954
	ldr	r1, .L_7ca84
	ldr	r0, .L_7ca80
	mov	sl, r0
	mov	r2, #13
	neg	r2, r2
	mov	r9, r2
	lsl	r0, r7, #3
	add	r4, r0, r1
	ldr	r0, .L_7ca8c
	mov	r8, r0
	sub	r7, r6, r7
.L_7c8f4:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #48	@ 0x30
	ldr	r2, .L_7ca88
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	mov	r0, r8
	and	r1, r0
	ldrh	r2, [r4, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	add	r5, #2
	ldrb	r1, [r4, #5]
	mov	r0, #12
	orr	r1, r0
	strb	r1, [r4, #5]
	ldr	r2, .L_7ca90
	ldrb	r0, [r2, #0]
	cmp	r0, #1
	bne	.L_7c948
	mov	r0, r9
	and	r1, r0
	mov	r0, #8
	orr	r1, r0
	strb	r1, [r4, #5]
.L_7c948:
	add	r5, #2
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c8f4
	add	r7, r6, #0
.L_7c954:
	ldr	r1, .L_7ca9c
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_7c964
	ldr	r2, .L_7ca90
	ldrb	r0, [r2, #0]
	cmp	r0, #2
	bne	.L_7c9e2
.L_7c964:
	ldr	r3, .L_7caa0
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	bgt	.L_7ca5a
	cmp	r7, r6
	bge	.L_7c9e2
	ldr	r1, .L_7ca84
	ldr	r0, .L_7ca8c
	mov	sl, r0
	ldr	r2, .L_7ca80
	mov	ip, r2
	ldr	r0, .L_7caa4
	mov	r9, r0
	ldr	r2, .L_7caa8
	mov	r8, r2
	lsl	r0, r7, #3
	add	r4, r0, r1
	sub	r7, r6, r7
.L_7c98c:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, r9
	ldrh	r0, [r0, #0]
	str	r0, [sp, #0]
	ldr	r1, .L_7ca88
	mov	r0, #0
	ldrsh	r1, [r1, r0]
	ldr	r0, [sp, #0]
	sub	r1, r0, r1
	str	r1, [sp, #0]
	asr	r0, r1, #4
	add	r0, r2, r0
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, r8
	ldrh	r1, [r0, #0]
	add	r1, r2, r1
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7c98c
	add	r7, r6, #0
.L_7c9e2:
	ldr	r0, .L_7caac
	ldr	r2, .L_7cab0
	ldrh	r1, [r2, #2]
	lsl	r1, r1, #3
	add	r1, r1, r0
	ldr	r3, [r1, #0]
	ldrh	r0, [r3, #0]
	add	r6, r6, r0
	add	r3, #2
	cmp	r6, #128	@ 0x80
	bgt	.L_7ca5a
	cmp	r7, r6
	bge	.L_7ca56
	ldr	r1, .L_7ca84
	ldr	r0, .L_7ca8c
	mov	r8, r0
	ldr	r2, .L_7ca80
	mov	r9, r2
	lsl	r0, r7, #3
	add	r4, r0, r1
	sub	r7, r6, r7
.L_7ca0c:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #90	@ 0x5a
	ldr	r2, .L_7ca88
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	mov	r0, r8
	and	r1, r0
	ldrh	r2, [r4, #2]
	mov	r0, r9
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r5, #0]
	add	r3, #2
	ldrb	r0, [r4, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r4, #5]
	add	r5, #4
	add	r4, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_7ca0c
.L_7ca56:
	ldr	r1, .L_7cab4
	strb	r6, [r1, #0]
.L_7ca5a:
	add	sp, #8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7ca6c:
	.4byte	sUnk_8639618
.L_7ca70:
	.4byte	gUnk_3003C7C
.L_7ca74:
	.4byte	sUnk_8639550
.L_7ca78:
	.4byte	gUnk_3003C60
.L_7ca7c:
	.4byte	sUnk_8639534
.L_7ca80:
	.4byte	0xFFFFFE00
.L_7ca84:
	.4byte	gOamBuffer
.L_7ca88:
	.4byte	gUnk_3003C6C
.L_7ca8c:
	.4byte	0x1FF
.L_7ca90:
	.4byte	gUnk_3003C94
.L_7ca94:
	.4byte	gUnk_3003C78
.L_7ca98:
	.4byte	gUnk_3003C64
.L_7ca9c:
	.4byte	gUnk_3003C95
.L_7caa0:
	.4byte	sUnk_8640A58
.L_7caa4:
	.4byte	gUnk_3003C92
.L_7caa8:
	.4byte	gUnk_3003C90
.L_7caac:
	.4byte	sUnk_863FF84
.L_7cab0:
	.4byte	gUnk_3003C74
.L_7cab4:
	.4byte	gOamSlotsUsed
