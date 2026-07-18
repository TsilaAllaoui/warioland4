.include "macros.s.inc"


thumb_func_start func_808CB18
func_808CB18:
	push	{r4, r5, lr}
	ldr	r0, .L_8cb30
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bls	.L_8cb24
	b	.L_8cc1c
.L_8cb24:
	lsl	r0, r0, #2
	ldr	r1, .L_8cb34
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_8cb30:
	.4byte	gHomerunState
.L_8cb34:
	.4byte	.L_8cb38
.L_8cb38:
	.4byte	.L_8cb50
	.4byte	.L_8cb64
	.4byte	.L_8cb8c
	.4byte	.L_8cb9e
	.4byte	.L_8cbc8
	.4byte	.L_8cc00
.L_8cb50:
	bl	func_808D5AC
	bl	func_808D394
	mov	r0, #40	@ 0x28
	bl	MinigameWaitForFrames
	cmp	r0, #0
	beq	.L_8cc1c
	b	.L_8cbe8
.L_8cb64:
	bl	func_808D5AC
	bl	func_808D394
	ldr	r1, .L_8cb88
	ldrh	r0, [r1, #4]
	sub	r0, #20
	strh	r0, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #31
	bhi	.L_8cc1c
	mov	r0, #32
	strh	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #12]
	b	.L_8cbe8
	.align	2, 0
.L_8cb88:
	.4byte	gHomerunCamera
.L_8cb8c:
	bl	func_808D5AC
	bl	func_808D394
	bl	func_808D028
	cmp	r0, #0
	beq	.L_8cc1c
	b	.L_8cbe8
.L_8cb9e:
	bl	func_808D44C
	bl	func_808D7CC
	mov	r0, #120	@ 0x78
	bl	MinigameWaitForFrames
	cmp	r0, #0
	beq	.L_8cc1c
	ldr	r1, .L_8cbc0
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_8cbc4
	mov	r0, #2
	strb	r0, [r1, #12]
	b	.L_8cc1c
.L_8cbc0:
	.4byte	gHomerunState
.L_8cbc4:
	.4byte	gHomerunCamera
.L_8cbc8:
	bl	func_808D44C
	ldr	r4, .L_8cbf4
	ldrh	r0, [r4, #4]
	add	r0, #20
	strh	r0, [r4, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #2
	cmp	r0, r5
	bls	.L_8cc1c
	ldr	r0, .L_8cbf8
	bl	m4aSongNumStart
	strh	r5, [r4, #4]
.L_8cbe8:
	ldr	r1, .L_8cbfc
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	b	.L_8cc1c
	.align	2, 0
.L_8cbf4:
	.4byte	gHomerunCamera
.L_8cbf8:
	.4byte	0x00000236
.L_8cbfc:
	.4byte	gHomerunState
.L_8cc00:
	bl	func_808D44C
	mov	r0, #60	@ 0x3c
	bl	MinigameWaitForFrames
	cmp	r0, #0
	beq	.L_8cc1c
	ldr	r1, .L_8cc18
	mov	r0, #0
	strb	r0, [r1, #0]
	mov	r0, #1
	b	.L_8cc1e
.L_8cc18:
	.4byte	gHomerunState
.L_8cc1c:
	mov	r0, #0
.L_8cc1e:
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_808CC24
func_808CC24:
	ldr	r1, .L_8cc4c
	ldr	r0, .L_8cc50
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	strh	r0, [r1, #0]
	add	r1, #4
	ldr	r0, .L_8cc54
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	strh	r0, [r1, #0]
	add	r1, #4
	ldr	r0, .L_8cc58
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	strh	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_8cc4c:
	.4byte	0x04000010
.L_8cc50:
	.4byte	gUnk_3004914
.L_8cc54:
	.4byte	gUnk_3004918
.L_8cc58:
	.4byte	gUnk_300491C


thumb_func_start func_808CC5C
func_808CC5C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	MinigameRandom
	add	r1, r0, #0
	mov	r2, #1
	and	r1, r2
	cmp	r1, #0
	bne	.L_8cc80
	ldr	r0, .L_8cc7c
	strb	r1, [r0, #0]
	b	.L_8cc84
	.align	2, 0
.L_8cc7c:
	.4byte	gUnk_3004910
.L_8cc80:
	ldr	r0, .L_8cf08
	strb	r2, [r0, #0]
.L_8cc84:
	ldr	r1, .L_8cf0c
	ldr	r0, .L_8cf10
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_8cf14
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	ldr	r3, .L_8cf18
	ldr	r4, .L_8cf1c
	ldr	r5, .L_8cf20
	mov	ip, r5
	ldr	r6, .L_8cf24
	mov	r9, r6
	ldr	r7, .L_8cf28
	mov	sl, r7
	ldr	r5, .L_8cf2c
	mov	r8, r5
	ldr	r6, .L_8cf30
	cmp	r0, #0
	bge	.L_8ccbe
.L_8ccb6:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8ccb6
.L_8ccbe:
	ldr	r1, .L_8cf0c
.L_8ccc0:
	.4byte	0x489c600b
	str	r0, [r1, #4]
	ldr	r0, .L_8cf14
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8ccde
.L_8ccd6:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8ccd6
.L_8ccde:
	ldr	r1, .L_8cf0c
	str	r4, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_8cf38
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8cd00
.L_8ccf8:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8ccf8
.L_8cd00:
	ldr	r1, .L_8cf0c
	ldr	r7, .L_8cf3c
	str	r7, [r1, #0]
	ldr	r0, .L_8cf40
	str	r0, [r1, #4]
	ldr	r0, .L_8cf38
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8cd22
.L_8cd1a:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8cd1a
.L_8cd22:
	ldr	r1, .L_8cf0c
	mov	r0, ip
	str	r0, [r1, #0]
	ldr	r0, .L_8cf44
	str	r0, [r1, #4]
	ldr	r0, .L_8cf48
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8cd44
.L_8cd3c:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8cd3c
.L_8cd44:
	ldr	r1, .L_8cf0c
	mov	r2, r9
	str	r2, [r1, #0]
	ldr	r0, .L_8cf4c
	str	r0, [r1, #4]
	ldr	r0, .L_8cf50
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8cd66
.L_8cd5e:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8cd5e
.L_8cd66:
	ldr	r1, .L_8cf0c
	ldr	r3, .L_8cf54
	str	r3, [r1, #0]
	ldr	r0, .L_8cf58
	str	r0, [r1, #4]
	ldr	r0, .L_8cf50
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_8cd88
.L_8cd80:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_8cd80
.L_8cd88:
	ldr	r1, .L_8cf0c
	ldr	r4, .L_8cf5c
	str	r4, [r1, #0]
	ldr	r0, .L_8cf60
	str	r0, [r1, #4]
	ldr	r0, .L_8cf48
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #204	@ 0xcc
	ldr	r5, .L_8cf64
	add	r0, r5, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r7, .L_8cf68
	add	r0, r7, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_8cf6c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	mov	r3, #240	@ 0xf0
	lsl	r3, r3, #5
	add	r0, r3, #0
	strh	r0, [r1, #0]
	mov	r5, #0
	mov	r4, #0
	mov	r7, sl
	strh	r4, [r7, #0]
	strh	r4, [r7, #2]
	ldr	r0, .L_8cf70
	strh	r4, [r0, #0]
	strh	r4, [r0, #2]
	ldr	r1, .L_8cf74
	strh	r4, [r1, #0]
	strh	r4, [r1, #2]
	ldr	r0, .L_8cf78
	strh	r4, [r0, #0]
	sub	r0, #2
	strh	r4, [r0, #0]
	add	r0, #6
	strh	r4, [r0, #0]
	sub	r0, #2
	strh	r4, [r0, #0]
	add	r0, #6
	strh	r4, [r0, #0]
	sub	r0, #2
	strh	r4, [r0, #0]
	add	r0, #6
	strh	r4, [r0, #0]
	sub	r0, #2
	strh	r4, [r0, #0]
	ldr	r2, .L_8cf08
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #2
	ldr	r3, .L_8cf7c
	add	r0, r0, r3
	ldr	r0, [r0, #0]
	mov	r7, r8
	strb	r0, [r7, #0]
	ldrb	r0, [r7, #0]
	add	r1, r0, #0
	mul	r1, r0
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #6
	bl	__divsi3
	ldr	r1, .L_8cf80
	strb	r0, [r1, #0]
	ldrb	r1, [r7, #0]
	ldr	r2, .L_8cf80
	ldrb	r0, [r2, #0]
	mul	r0, r1
	asr	r0, r0, #1
	ldr	r3, .L_8cf84
	strb	r0, [r3, #0]
	mov	r7, #160	@ 0xa0
	lsl	r7, r7, #4
	mov	r8, r7
	mov	r0, r8
	strh	r0, [r6, #0]
	mov	r2, #140	@ 0x8c
	lsl	r2, r2, #4
	strh	r2, [r6, #2]
	strh	r4, [r6, #12]
	strh	r4, [r6, #14]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	strh	r0, [r6, #6]
	strh	r4, [r6, #4]
	strh	r4, [r6, #8]
	strh	r4, [r6, #10]
	ldr	r1, .L_8cf88
	add	r0, r6, #0
	ldmia	r0!, {r3, r6, r7}
	stmia	r1!, {r3, r6, r7}
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	mov	r1, r8
	ldr	r0, .L_8cf8c
	strh	r1, [r0, #0]
	strh	r2, [r0, #2]
	strh	r4, [r0, #6]
	strh	r4, [r0, #8]
	ldr	r2, .L_8cf90
	strb	r5, [r2, #0]
	ldr	r3, .L_8cf94
	strh	r4, [r3, #0]
	ldr	r6, .L_8cf98
	strb	r5, [r6, #0]
	bl	func_808D6D4
	ldr	r0, .L_8cf9c
	strb	r5, [r0, #0]
	bl	InitMinigameScoreDisplay
	ldr	r0, .L_8cfa0
	strh	r4, [r0, #0]
	ldr	r0, .L_8cfa4
	bl	m4aSongNumStart
	mov	r2, #0
	mov	r3, #1
	ldr	r0, .L_8cfa8
	mov	r1, #6
.L_8ce82:
	strh	r2, [r0, #0]
	strb	r4, [r0, #4]
	strh	r2, [r0, #6]
	strh	r2, [r0, #8]
	strb	r3, [r0, #10]
	add	r0, #12
	sub	r1, #1
	cmp	r1, #0
	bge	.L_8ce82
	mov	r2, #0
	ldr	r0, .L_8cfac
	strb	r2, [r0, #0]
	ldr	r0, .L_8cfb0
	strb	r2, [r0, #0]
	ldr	r0, .L_8cfb4
	strb	r2, [r0, #0]
	ldr	r0, .L_8cfb8
	mov	r3, #0
	strh	r2, [r0, #0]
	ldr	r1, .L_8cfbc
	sub	r0, r3, #2
	strh	r0, [r1, #0]
	ldr	r0, .L_8cfc0
	str	r2, [r0, #0]
	ldr	r0, .L_8cfc4
	strh	r2, [r0, #0]
	ldr	r0, .L_8cfc8
	strb	r3, [r0, #0]
	ldr	r0, .L_8cfcc
	strb	r3, [r0, #0]
	ldr	r0, .L_8cfd0
	strh	r2, [r0, #0]
	strh	r2, [r0, #2]
	ldr	r0, .L_8cfd4
	strb	r3, [r0, #0]
	ldr	r1, .L_8cfd8
	mov	r0, #128	@ 0x80
	strh	r0, [r1, #8]
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #10]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	strh	r0, [r1, #4]
	mov	r0, #1
	strb	r0, [r1, #12]
	ldr	r0, .L_8cfdc
	strh	r2, [r0, #6]
	strh	r2, [r0, #8]
	strb	r3, [r0, #4]
	ldr	r1, .L_8cfe0
	ldmia	r0!, {r2, r4, r7}
	stmia	r1!, {r2, r4, r7}
	ldr	r0, .L_8cfe4
	strb	r3, [r0, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r5, #248	@ 0xf8
	lsl	r5, r5, #5
	add	r0, r5, #0
	strh	r0, [r1, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
.L_8cf04:
	pop	{r0}
	bx	r0
.L_8cf08:
	.4byte	gUnk_3004910
.L_8cf0c:
	.4byte	0x040000d4
.L_8cf10:
	bhi	.L_8cf04
	lsr	r0, r6, #1
.L_8cf14:
	.4byte	0x80000100
.L_8cf18:
	.4byte	sUnk_87122F8
.L_8cf1c:
	.4byte	sUnk_870DAF8
.L_8cf20:
	.4byte	sUnk_871A4F8
.L_8cf24:
	.4byte	sUnk_871ACF8
.L_8cf28:
	.4byte	gUnk_3004914
.L_8cf2c:
	.4byte	gUnk_30049CD
.L_8cf30:
	.4byte	gUnk_3004920
.L_8cf34:
	.4byte	0x05000200
.L_8cf38:
	.4byte	0x80004000
.L_8cf3c:
	.4byte	sUnk_87124F8
.L_8cf40:
	.4byte	0x06010000
.L_8cf44:
	.4byte	0x0600c000
.L_8cf48:
	.4byte	0x80000400
.L_8cf4c:
	.4byte	0x0600d000
.L_8cf50:
	lsr	r0, r0, #32
	strh	r0, [r0, #0]
.L_8cf54:
	.4byte	sUnk_871BCF8
.L_8cf58:
	.4byte	0x0600e000
.L_8cf5c:
	ldmia	r4, {r3, r4, r5, r6, r7}
	lsr	r1, r6, #1
.L_8cf60:
	.4byte	0x0600f000
.L_8cf64:
	.4byte	0x00001801
.L_8cf68:
	.4byte	0x00005a02
.L_8cf6c:
	.4byte	0x00005c03
.L_8cf70:
	.4byte	gUnk_3004918
.L_8cf74:
	.4byte	gUnk_300491C
.L_8cf78:
	.4byte	0x04000012
.L_8cf7c:
	.4byte	sUnk_870CE04
.L_8cf80:
	.4byte	gUnk_30049CC
.L_8cf84:
	.4byte	gUnk_30049CB
.L_8cf88:
	.4byte	gUnk_3004930
.L_8cf8c:
	.4byte	gUnk_3004940
.L_8cf90:
	.4byte	gHomerunState
.L_8cf94:
	.4byte	gHomerunScore
.L_8cf98:
	.4byte	gHomerunNewHighScore
.L_8cf9c:
	.4byte	gUnk_30049DB
.L_8cfa0:
	.4byte	0x04000054
.L_8cfa4:
	.4byte	0x000002be
.L_8cfa8:
	.4byte	gUnk_3004950
.L_8cfac:
	.4byte	gUnk_30049C4
.L_8cfb0:
	.4byte	gUnk_30049C5
.L_8cfb4:
	.4byte	gUnk_30049CA
.L_8cfb8:
	.4byte	gUnk_30049D4
.L_8cfbc:
	.4byte	gUnk_30049D6
.L_8cfc0:
	.4byte	gUnk_30049D0
.L_8cfc4:
	.4byte	gUnk_30049D8
.L_8cfc8:
	.4byte	gUnk_30049DA
.L_8cfcc:
	.4byte	gUnk_30049C6
.L_8cfd0:
	.4byte	gHomerunUiAnimation
.L_8cfd4:
	.4byte	gHomerunMedalHighlight
.L_8cfd8:
	.4byte	gHomerunCamera
.L_8cfdc:
	.4byte	gUnk_30049B8
.L_8cfe0:
	.4byte	gUnk_30049A8
.L_8cfe4:
	.4byte	gUnk_30049DC


thumb_func_start func_808CFE8
func_808CFE8:
	push	{lr}
	ldr	r1, .L_8d018
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r1, .L_8d01c
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r0, .L_8d020
	bl	m4aSongNumStart
	ldr	r1, .L_8d024
	ldrb	r0, [r1, #0]
	cmp	r0, #3
	beq	.L_8d008
	add	r0, #1
	strb	r0, [r1, #0]
.L_8d008:
	ldrb	r0, [r1, #0]
	cmp	r0, #1
	bne	.L_8d012
	add	r0, #1
	strb	r0, [r1, #0]
.L_8d012:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8d018:
	.4byte	gUnk_30049DA
.L_8d01c:
	.4byte	gUnk_30049D0
.L_8d020:
	.4byte	0x000002be
.L_8d024:
	.4byte	gUnk_3004910


thumb_func_start func_808D028
func_808D028:
	push	{r4, r5, r6, lr}
	ldr	r5, .L_8d038
	ldrb	r4, [r5, #0]
	cmp	r4, #0
	beq	.L_8d03c
	cmp	r4, #1
	beq	.L_8d0b4
	b	.L_8d0da
.L_8d038:
	.4byte	gUnk_30049CA
.L_8d03c:
	bl	func_808D1F4
	cmp	r0, #0
	beq	.L_8d0da
	mov	r0, #1
	strb	r0, [r5, #0]
	ldr	r0, .L_8d088
	strh	r4, [r0, #0]
	ldr	r1, .L_8d08c
	mov	r0, #168	@ 0xa8
	lsl	r0, r0, #1
	strh	r0, [r1, #6]
	ldr	r0, .L_8d090
	ldrb	r4, [r0, #0]
	cmp	r4, #1
	bne	.L_8d0a8
	ldr	r0, .L_8d094
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_8d0a8
	ldr	r3, .L_8d098
	ldr	r2, .L_8d09c
	ldr	r0, .L_8d0a0
	ldrb	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	sub	r0, #1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrh	r0, [r0, #0]
	bl	m4aSongNumStart
	ldr	r0, .L_8d0a4
	strb	r4, [r0, #0]
	b	.L_8d0da
.L_8d088:
	.4byte	gUnk_30049D4
.L_8d08c:
	.4byte	gUnk_3004920
.L_8d090:
	.4byte	gMPlayMemAccArea
.L_8d094:
	.4byte	gUnk_30049DA
.L_8d098:
	.4byte	sUnk_870CDC8
.L_8d09c:
	.4byte	gUnk_3004950
.L_8d0a0:
	.4byte	gUnk_30049C6
.L_8d0a4:
	.4byte	gUnk_30049DC
.L_8d0a8:
	ldr	r0, .L_8d0b0
	bl	m4aSongNumStart
	b	.L_8d0da
.L_8d0b0:
	.4byte	0x0000023d
.L_8d0b4:
	bl	func_808D20C
	cmp	r0, #0
	beq	.L_8d0da
	ldr	r1, .L_8d128
	mov	r0, #0
	strb	r0, [r1, #0]
	strb	r0, [r5, #0]
	ldr	r1, .L_8d12c
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_8d130
	sub	r0, #2
	strh	r0, [r1, #0]
	ldr	r0, .L_8d134
	mov	r1, #0
	strh	r1, [r0, #14]
	ldr	r0, .L_8d138
	strh	r1, [r0, #14]
.L_8d0da:
	ldr	r6, .L_8d13c
	ldrb	r0, [r6, #0]
	cmp	r0, #1
	bne	.L_8d158
	bl	MinigameRandom
	ldr	r1, .L_8d140
	bl	__modsi3
	cmp	r0, #0
	bne	.L_8d0fc
	ldr	r1, .L_8d144
	ldrb	r0, [r1, #4]
	cmp	r0, #0
	bne	.L_8d0fc
	add	r0, #1
	strb	r0, [r1, #4]
.L_8d0fc:
	bl	func_808D2BC
	ldr	r0, .L_8d148
	ldr	r1, [r0, #0]
	add	r1, #1
	str	r1, [r0, #0]
	ldr	r1, .L_8d14c
	ldrb	r0, [r1, #0]
	cmp	r0, #127	@ 0x7f
	bne	.L_8d1b4
.L_8d110:
	.4byte	0x70082000
	ldr	r1, .L_8d150
	mov	r0, #1
	strb	r0, [r1, #4]
	ldr	r0, .L_8d154
	bl	m4aSongNumStart
	bl	func_808CFE8
	b	.L_8d1b4
	.align	2, 0
.L_8d128:
	.4byte	gUnk_30049DC
.L_8d12c:
	.4byte	gUnk_30049D4
.L_8d130:
	.4byte	gUnk_30049D6
.L_8d134:
	.4byte	gUnk_3004920
.L_8d138:
	.4byte	gUnk_3004930
.L_8d13c:
	.4byte	gUnk_30049DA
.L_8d140:
	.4byte	0x00000bb8
.L_8d144:
	.4byte	gUnk_30049B8
.L_8d148:
	.4byte	gUnk_30049D0
.L_8d14c:
	.4byte	gMPlayMemAccArea
.L_8d150:
	.4byte	gUnk_30049A8
.L_8d154:
	.4byte	0x0000023b
.L_8d158:
	ldr	r0, .L_8d1c8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_8d18e
	ldr	r4, .L_8d1cc
	ldr	r1, .L_8d1d0
	ldr	r0, .L_8d1d4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	strb	r0, [r4, #0]
	ldr	r5, .L_8d1d8
	ldrb	r0, [r4, #0]
	add	r1, r0, #0
	mul	r1, r0
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #6
	bl	__divsi3
	strb	r0, [r5, #0]
	ldr	r2, .L_8d1dc
	ldrb	r1, [r4, #0]
	ldrb	r0, [r5, #0]
	mul	r0, r1
	asr	r0, r0, #1
	strb	r0, [r2, #0]
.L_8d18e:
	ldr	r2, .L_8d1e0
	ldrb	r0, [r2, #0]
	cmp	r0, #126	@ 0x7e
	bne	.L_8d1b4
	mov	r0, #1
	strb	r0, [r6, #0]
	ldr	r1, .L_8d1e4
	mov	r0, #0
	strb	r0, [r1, #0]
	mov	r0, #0
	strb	r0, [r2, #0]
	ldr	r1, .L_8d1e8
	ldr	r0, .L_8d1d4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	bl	m4aSongNumStart
.L_8d1b4:
	bl	func_808D3C4
.L_8d1b8:
	.4byte	0xfa46f000
	cmp	r0, #0
	bne	.L_8d1ec
	bl	func_808D7CC
	mov	r0, #0
	b	.L_8d1ee
.L_8d1c8:
	.4byte	gUnk_30049CA
.L_8d1cc:
	.4byte	gUnk_30049CD
.L_8d1d0:
	.4byte	sUnk_870CE04
.L_8d1d4:
	.4byte	gUnk_3004910
.L_8d1d8:
	.4byte	gUnk_30049CC
.L_8d1dc:
	.4byte	gUnk_30049CB
.L_8d1e0:
	.4byte	gMPlayMemAccArea
.L_8d1e4:
	.4byte	gUnk_30049C5
.L_8d1e8:
	.4byte	sUnk_870CDB8
.L_8d1ec:
	mov	r0, #1
.L_8d1ee:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1


thumb_func_start func_808D1F4
func_808D1F4:
	ldr	r0, .L_8d204
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_8d208
	mov	r0, #0
	b	.L_8d20a
.L_8d204:
	.4byte	gButtonsPressed
.L_8d208:
	mov	r0, #1
.L_8d20a:
	bx	lr


thumb_func_start func_808D20C
func_808D20C:
	push	{r4, r5, r6, r7, lr}
	ldr	r5, .L_8d28c
	ldrh	r0, [r5, #0]
	add	r0, #1
	strh	r0, [r5, #0]
	ldr	r3, .L_8d290
	ldr	r7, .L_8d294
	ldrb	r1, [r7, #0]
	ldr	r6, .L_8d298
	ldrb	r2, [r6, #0]
	mov	r4, #0
	ldrsh	r0, [r5, r4]
	mul	r0, r2
	sub	r1, r1, r0
	strh	r1, [r3, #14]
	ldrh	r0, [r3, #2]
	sub	r0, r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r3, #6]
	sub	r0, #10
	strh	r0, [r3, #6]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #255	@ 0xff
	bhi	.L_8d244
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	strh	r0, [r3, #6]
.L_8d244:
	mov	r1, #0
	ldrsh	r0, [r5, r1]
	ldr	r4, .L_8d29c
	cmp	r0, #2
	ble	.L_8d260
	ldrb	r1, [r7, #0]
	ldrb	r2, [r6, #0]
	sub	r0, #2
	mul	r0, r2
	sub	r1, r1, r0
	strh	r1, [r4, #14]
	ldrh	r0, [r4, #2]
	sub	r0, r0, r1
	strh	r0, [r4, #2]
.L_8d260:
	mov	r1, #2
	ldrsh	r0, [r3, r1]
	mov	r1, #140	@ 0x8c
	lsl	r1, r1, #4
	cmp	r0, r1
	ble	.L_8d26e
	strh	r1, [r3, #2]
.L_8d26e:
	mov	r2, #2
	ldrsh	r0, [r4, r2]
	cmp	r0, r1
	ble	.L_8d278
	strh	r1, [r4, #2]
.L_8d278:
	mov	r4, #0
	ldrsh	r1, [r5, r4]
	ldr	r0, .L_8d2a0
	ldrb	r0, [r0, #0]
	add	r0, #2
	cmp	r1, r0
	beq	.L_8d2a4
	mov	r0, #0
	b	.L_8d2a6
	.align	2, 0
.L_8d28c:
	.4byte	gUnk_30049D4
.L_8d290:
	.4byte	gUnk_3004920
.L_8d294:
	.4byte	gUnk_30049CB
.L_8d298:
	.4byte	gUnk_30049CC
.L_8d29c:
	.4byte	gUnk_3004930
.L_8d2a0:
	.4byte	gUnk_30049CD
.L_8d2a4:
	mov	r0, #1
.L_8d2a6:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_808D2AC
func_808D2AC:
	push	{lr}
	bl	func_808D5AC
	bl	func_808D394
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_808D2BC
func_808D2BC:
	push	{r4, r5, r6, lr}
	ldr	r1, .L_8d308
	ldr	r0, .L_8d30c
	ldrb	r4, [r0, #0]
	lsl	r6, r4, #2
	add	r1, r6, r1
	ldr	r1, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #4
	bl	__divsi3
	ldr	r3, .L_8d310
	ldr	r1, .L_8d314
	ldrb	r5, [r1, #0]
	lsl	r2, r5, #1
	lsl	r1, r4, #5
	sub	r1, r1, r4
	lsl	r1, r1, #2
	add	r2, r2, r1
	add	r2, r2, r3
	ldrh	r1, [r2, #0]
	sub	r1, r1, r0
	ldr	r0, .L_8d318
	add	r0, r6, r0
	ldr	r0, [r0, #0]
	add	r1, r1, r0
	ldr	r0, .L_8d31c
	ldr	r0, [r0, #0]
	cmp	r1, r0
	bne	.L_8d380
	ldr	r0, .L_8d320
	add	r0, r6, r0
	ldr	r0, [r0, #0]
	sub	r0, #1
	cmp	r5, r0
	bne	.L_8d324
	mov	r3, #5
	b	.L_8d338
.L_8d308:
	.4byte	sUnk_870CDE4
.L_8d30c:
	.4byte	gUnk_3004910
.L_8d310:
	.4byte	sUnk_870CA28
.L_8d314:
	.4byte	gUnk_30049C5
.L_8d318:
	.4byte	sUnk_870CE78
.L_8d31c:
	.4byte	gUnk_30049D0
.L_8d320:
	.4byte	sUnk_870CDA8
.L_8d324:
	cmp	r5, #0
	bne	.L_8d32c
	mov	r3, #6
	b	.L_8d338
.L_8d32c:
	bl	MinigameRandom
	mov	r1, #5
	bl	__modsi3
	add	r3, r0, #0
.L_8d338:
	ldr	r2, .L_8d388
	ldr	r4, .L_8d38c
	ldrb	r1, [r4, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	add	r1, r3, #1
	strb	r1, [r0, #4]
	ldrb	r1, [r4, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
.L_8d350:
	.4byte	0x18800080
	mov	r1, #140	@ 0x8c
	lsl	r1, r1, #4
	strh	r1, [r0, #2]
	ldr	r1, .L_8d390
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #61	@ 0x3d
	bls	.L_8d36e
	mov	r0, #61	@ 0x3d
	strb	r0, [r1, #0]
.L_8d36e:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #6
	bls	.L_8d380
	mov	r0, #0
	strb	r0, [r4, #0]
.L_8d380:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8d388:
	.4byte	gUnk_3004950
.L_8d38c:
	.4byte	gUnk_30049C4
.L_8d390:
	.4byte	gUnk_30049C5


thumb_func_start func_808D394
func_808D394:
	ldr	r3, .L_8d3b8
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	add	r1, r0, #0
	ldrh	r0, [r3, #4]
	add	r1, r1, r0
	ldr	r2, .L_8d3bc
	ldr	r0, .L_8d3c0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	sub	r1, r1, r0
	mov	r0, #255	@ 0xff
	and	r1, r0
	strh	r1, [r3, #4]
	bx	lr
	.align	2, 0
.L_8d3b8:
	.4byte	gUnk_3004920
.L_8d3bc:
	.4byte	sUnk_870CDF4
.L_8d3c0:
	.4byte	gUnk_3004910


thumb_func_start func_808D3C4
func_808D3C4:
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L_8d43c
	mov	r7, #168	@ 0xa8
	lsl	r7, r7, #4
	mov	r4, #0
	mov	r6, #140	@ 0x8c
	lsl	r6, r6, #5
	mov	r5, #6
.L_8d3d4:
	add	r1, r4, r3
	ldrb	r0, [r1, #4]
	cmp	r0, #0
	beq	.L_8d42c
	ldr	r0, .L_8d440
	ldrh	r0, [r0, #0]
	ldrh	r2, [r1, #0]
	add	r0, r0, r2
	mov	r2, #0
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, r7
	ble	.L_8d410
	ldrb	r0, [r1, #10]
	cmp	r0, #0
	beq	.L_8d410
	ldr	r0, .L_8d444
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_8d410
	strb	r2, [r1, #10]
	bl	func_808D74C
	cmp	r0, #0
	beq	.L_8d410
	ldr	r1, .L_8d448
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
.L_8d410:
	ldr	r0, .L_8d43c
	add	r2, r4, r0
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	add	r3, r0, #0
	cmp	r1, r6
	ble	.L_8d42c
	mov	r1, #0
	mov	r0, #1
	strb	r0, [r2, #10]
	strb	r1, [r2, #4]
	strh	r1, [r2, #0]
	strh	r1, [r2, #6]
	strh	r1, [r2, #8]
.L_8d42c:
	add	r4, #12
	sub	r5, #1
	cmp	r5, #0
	bge	.L_8d3d4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8d43c:
	.4byte	gUnk_3004950
.L_8d440:
	.4byte	gUnk_30049C8
.L_8d444:
	.4byte	gUnk_30049CA
.L_8d448:
	.4byte	gUnk_30049DB


thumb_func_start func_808D44C
func_808D44C:
	push	{r4, r5, lr}
	ldr	r2, .L_8d47c
	ldr	r1, .L_8d480
	ldr	r0, .L_8d484
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrh	r2, [r0, #4]
	ldr	r0, .L_8d488
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #60	@ 0x3c
	beq	.L_8d4f0
	cmp	r0, #60	@ 0x3c
	bgt	.L_8d48c
	cmp	r0, #0
	beq	.L_8d496
	cmp	r0, #30
	beq	.L_8d4cc
	b	.L_8d57a
	.align	2, 0
.L_8d47c:
	.4byte	gSongTable
.L_8d480:
	.4byte	sUnk_870CDB8
.L_8d484:
	.4byte	gUnk_3004910
.L_8d488:
	.4byte	gUnk_30049D8
.L_8d48c:
	cmp	r0, #90	@ 0x5a
	beq	.L_8d51c
	cmp	r0, #120	@ 0x78
	beq	.L_8d554
	b	.L_8d57a
.L_8d496:
	ldr	r1, .L_8d4c4
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	mov	r1, #140	@ 0x8c
	lsl	r1, r1, #1
	add	r0, r4, #0
	bl	m4aMPlayTempoControl
	ldr	r1, .L_8d4c8
	mov	r2, #100	@ 0x64
	neg	r2, r2
	add	r0, r4, #0
	bl	m4aMPlayPitchControl
	mov	r0, #143	@ 0x8f
	lsl	r0, r0, #2
	bl	m4aSongNumStart
	b	.L_8d57a
	.align	2, 0
.L_8d4c4:
	.4byte	gMPlayTable
.L_8d4c8:
	.4byte	0x0000ffff
.L_8d4cc:
	ldr	r1, .L_8d4e8
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	add	r0, r4, #0
	mov	r1, #220	@ 0xdc
	bl	m4aMPlayTempoControl
	ldr	r1, .L_8d4ec
	mov	r2, #200	@ 0xc8
	neg	r2, r2
	b	.L_8d508
.L_8d4e8:
	.4byte	gMPlayTable
.L_8d4ec:
	.4byte	0x0000ffff
.L_8d4f0:
	ldr	r1, .L_8d510
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	add	r0, r4, #0
	mov	r1, #200	@ 0xc8
	bl	m4aMPlayTempoControl
	ldr	r1, .L_8d514
	ldr	r2, .L_8d518
.L_8d508:
	add	r0, r4, #0
	bl	m4aMPlayPitchControl
	b	.L_8d57a
.L_8d510:
	.4byte	gMPlayTable
.L_8d514:
	.4byte	0x0000ffff
.L_8d518:
	.4byte	0xfffffed4
.L_8d51c:
	ldr	r1, .L_8d548
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	add	r0, r4, #0
	mov	r1, #160	@ 0xa0
	bl	m4aMPlayTempoControl
	ldr	r5, .L_8d54c
	ldr	r2, .L_8d550
	add	r0, r4, #0
	add	r1, r5, #0
	bl	m4aMPlayPitchControl
	add	r0, r4, #0
	add	r1, r5, #0
	mov	r2, #15
	bl	m4aMPlayModDepthSet
	b	.L_8d57a
.L_8d548:
	.4byte	gMPlayTable
.L_8d54c:
	.4byte	0x0000ffff
.L_8d550:
	.4byte	0xfffffe70
.L_8d554:
	ldr	r1, .L_8d59c
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	add	r0, r4, #0
	mov	r1, #130	@ 0x82
	bl	m4aMPlayTempoControl
	ldr	r1, .L_8d5a0
	ldr	r2, .L_8d5a4
	add	r0, r4, #0
	bl	m4aMPlayPitchControl
	add	r0, r4, #0
	mov	r1, #3
	bl	m4aMPlayFadeOut
.L_8d57a:
	ldr	r4, .L_8d5a8
	mov	r2, #0
	ldrsh	r0, [r4, r2]
	cmp	r0, #180	@ 0xb4
	bne	.L_8d588
	bl	m4aMPlayAllStop
.L_8d588:
	ldrh	r1, [r4, #0]
	mov	r2, #0
	ldrsh	r0, [r4, r2]
	cmp	r0, #180	@ 0xb4
	bgt	.L_8d596
	add	r0, r1, #1
	strh	r0, [r4, #0]
.L_8d596:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_8d59c:
	.4byte	gMPlayTable
.L_8d5a0:
	.4byte	0x0000ffff
.L_8d5a4:
	.4byte	0xfffffe0c
.L_8d5a8:
	.4byte	gUnk_30049D8


thumb_func_start func_808D5AC
func_808D5AC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r4, .L_8d630
	ldr	r1, .L_8d634
	ldr	r0, .L_8d638
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	strh	r1, [r4, #0]
	ldr	r0, .L_8d63c
	mov	r8, r0
	ldrh	r0, [r0, #0]
	sub	r5, r0, r1
	mov	r1, r8
	strh	r5, [r1, #0]
	ldr	r7, .L_8d640
	mov	r2, #0
	ldrsh	r0, [r4, r2]
	mov	r1, #10
	bl	__divsi3
	ldrh	r1, [r7, #0]
	sub	r1, r1, r0
	strh	r1, [r7, #0]
	ldr	r6, .L_8d644
	mov	r1, #0
	ldrsh	r0, [r4, r1]
	mov	r1, #18
	bl	__divsi3
	ldrh	r1, [r6, #0]
	sub	r1, r1, r0
	strh	r1, [r6, #0]
	lsl	r0, r5, #16
	cmp	r0, #0
	bge	.L_8d602
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #6
	add	r0, r5, r2
	mov	r1, r8
	strh	r0, [r1, #0]
.L_8d602:
	ldrh	r1, [r7, #0]
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	cmp	r0, #0
	bge	.L_8d614
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #6
	add	r0, r1, r2
	strh	r0, [r7, #0]
.L_8d614:
	ldrh	r1, [r6, #0]
	mov	r2, #0
	ldrsh	r0, [r6, r2]
	cmp	r0, #0
	bge	.L_8d626
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #6
	add	r0, r1, r2
	strh	r0, [r6, #0]
.L_8d626:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_8d630:
	.4byte	gUnk_30049C8
.L_8d634:
	.4byte	sUnk_870CDE4
.L_8d638:
	.4byte	gUnk_3004910
.L_8d63c:
	.4byte	gUnk_3004914
.L_8d640:
	.4byte	gUnk_3004918
.L_8d644:
	.4byte	gUnk_300491C


thumb_func_start func_808D648
func_808D648:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #160	@ 0xa0
	mov	r8, r0
	mov	r0, #176	@ 0xb0
	mov	ip, r0
	ldr	r0, .L_8d6ac
	ldrh	r0, [r0, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r6, r0, #0
	sub	r6, #48	@ 0x30
	add	r5, r0, #0
	mov	r4, #0
	ldr	r7, .L_8d6b0
	ldr	r3, .L_8d6b4
.L_8d66a:
	ldrb	r0, [r3, #4]
	cmp	r0, #0
	beq	.L_8d6c0
	sub	r0, #1
	lsl	r0, r0, #2
	add	r1, r0, r7
	ldr	r2, [r1, #0]
	ldr	r1, .L_8d6b8
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	ldrh	r0, [r3, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	cmp	r0, r8
	ble	.L_8d6c0
	sub	r0, r0, r2
	cmp	r0, ip
	bge	.L_8d6c0
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	cmp	r0, r6
	ble	.L_8d6c0
	sub	r0, r0, r1
	cmp	r0, r5
	bge	.L_8d6c0
	ldr	r0, .L_8d6bc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_8d6c0
	mov	r0, #1
	b	.L_8d6ca
	.align	2, 0
.L_8d6ac:
	.4byte	gUnk_3004920
.L_8d6b0:
	.4byte	sUnk_870CE40
.L_8d6b4:
	.4byte	gUnk_3004950
.L_8d6b8:
	.4byte	sUnk_870CE5C
.L_8d6bc:
	.4byte	gUnk_30049DC
.L_8d6c0:
	add	r3, #12
	add	r4, #1
	cmp	r4, #6
	ble	.L_8d66a
	mov	r0, #0
.L_8d6ca:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_808D6D4
func_808D6D4:
	push	{r4, lr}
	ldr	r0, .L_8d6f0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_8d6fc
	ldr	r0, .L_8d6f4
	ldrh	r0, [r0, #0]
	ldr	r1, .L_8d6f8
	mov	r2, #225	@ 0xe1
	lsl	r2, r2, #6
	bl	DrawMinigameNumber
	b	.L_8d70a
	.align	2, 0
.L_8d6f0:
	.4byte	gHomerunMedalHighlight
.L_8d6f4:
	.4byte	gMedalCount
.L_8d6f8:
	.4byte	sUnk_8711D98
.L_8d6fc:
	ldr	r0, .L_8d734
	ldrh	r0, [r0, #0]
	ldr	r1, .L_8d738
	mov	r2, #225	@ 0xe1
	lsl	r2, r2, #6
	bl	DrawMinigameNumber
.L_8d70a:
	ldr	r0, .L_8d73c
	ldrh	r0, [r0, #0]
	ldr	r4, .L_8d740
	mov	r2, #227	@ 0xe3
	lsl	r2, r2, #6
	add	r1, r4, #0
	bl	DrawMinigameNumber
	ldr	r0, .L_8d744
	ldrh	r0, [r0, #2]
	mov	r1, #194	@ 0xc2
	lsl	r1, r1, #4
	add	r4, r4, r1
	ldr	r2, .L_8d748
	add	r1, r4, #0
	bl	DrawMinigameHighScore
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8d734:
	.4byte	gMedalCount
.L_8d738:
	.4byte	sUnk_8711AF8
.L_8d73c:
	.4byte	gHomerunScore
.L_8d740:
	.4byte	sUnk_8711438
.L_8d744:
	.4byte	gMinigameHighScores
.L_8d748:
	.4byte	0x00004160


thumb_func_start func_808D74C
func_808D74C:
	push	{r4, lr}
	ldr	r3, .L_8d778
	ldrh	r0, [r3, #0]
	add	r2, r0, #1
	strh	r2, [r3, #0]
	ldr	r1, .L_8d77c
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #6
	bls	.L_8d76a
	mov	r0, #0
	strb	r0, [r1, #0]
.L_8d76a:
	lsl	r0, r2, #16
	lsr	r0, r0, #16
	ldr	r1, .L_8d780
	cmp	r0, r1
	bls	.L_8d784
	strh	r1, [r3, #0]
	b	.L_8d78c
.L_8d778:
	.4byte	gHomerunScore
.L_8d77c:
	.4byte	gUnk_30049C6
.L_8d780:
	.4byte	0x000003e7
.L_8d784:
	mov	r0, #137	@ 0x89
	lsl	r0, r0, #2
	bl	m4aSongNumStart
.L_8d78c:
	ldr	r4, .L_8d7b8
	ldr	r3, .L_8d7bc
	ldrh	r2, [r4, #0]
	ldrh	r0, [r3, #2]
	cmp	r2, r0
	bls	.L_8d7a0
	ldr	r1, .L_8d7c0
	mov	r0, #1
	strb	r0, [r1, #0]
	strh	r2, [r3, #2]
.L_8d7a0:
	bl	func_808D6D4
	ldrh	r0, [r4, #0]
	mov	r1, #15
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_8d7c4
	mov	r0, #0
	b	.L_8d7c6
	.align	2, 0
.L_8d7b8:
	.4byte	gHomerunScore
.L_8d7bc:
	.4byte	gMinigameHighScores
.L_8d7c0:
	.4byte	gHomerunNewHighScore
.L_8d7c4:
	mov	r0, #1
.L_8d7c6:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_808D7CC
func_808D7CC:
	push	{lr}
	ldr	r1, .L_8d7fc
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_8d7da
	add	r0, #1
	strb	r0, [r1, #0]
.L_8d7da:
	ldrb	r0, [r1, #0]
	cmp	r0, #20
	bls	.L_8d818
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r2, .L_8d800
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r1, .L_8d804
	cmp	r0, r1
	bls	.L_8d808
	strh	r1, [r2, #0]
	b	.L_8d818
	.align	2, 0
.L_8d7fc:
	.4byte	gUnk_30049DB
.L_8d800:
	.4byte	gMedalCount
.L_8d804:
	.4byte	0x000003e7
.L_8d808:
	ldr	r0, .L_8d81c
	bl	m4aSongNumStart
	ldr	r1, .L_8d820
	mov	r0, #1
	strb	r0, [r1, #0]
	bl	func_808D6D4
.L_8d818:
	pop	{r0}
	bx	r0
.L_8d81c:
	.4byte	0x00000223
.L_8d820:
	.4byte	gHomerunMedalHighlight


thumb_func_start func_808D824
func_808D824:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #20
	mov	r7, #0
	ldr	r0, .L_8dbc0
	ldrb	r0, [r0, #0]
	mov	r9, r0
	lsl	r0, r0, #3
	ldr	r3, .L_8dbc4
	add	r5, r0, r3
	ldr	r2, .L_8dbc8
	ldrb	r1, [r2, #12]
	mov	r0, sp
	add	r0, #2
	str	r0, [sp, #8]
	add	r0, #2
	str	r0, [sp, #12]
	add	r0, #2
	str	r0, [sp, #16]
	cmp	r1, #0
	beq	.L_8d8da
	cmp	r1, #1
	bne	.L_8d85c
	ldr	r0, .L_8dbcc
	ldr	r4, [r0, #0]
.L_8d85c:
	cmp	r1, #2
	bne	.L_8d864
	ldr	r0, .L_8dbd0
	ldr	r4, [r0, #0]
.L_8d864:
	ldrh	r0, [r4, #0]
	add	r9, r0
	add	r4, #2
	cmp	r7, r9
	bge	.L_8d8da
	add	r6, r2, #0
	ldr	r1, .L_8dbd4
	mov	ip, r1
	mov	r2, #15
	neg	r2, r2
	mov	sl, r2
	mov	r0, #13
	neg	r0, r0
	mov	r8, r0
.L_8d880:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrb	r0, [r6, #10]
	add	r0, r0, r2
	sub	r0, #16
	strb	r0, [r3, #0]
	ldrb	r0, [r3, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	mov	r0, #8
	ldrsh	r1, [r6, r0]
	add	r1, r2, r1
	sub	r1, #32
	ldr	r0, .L_8dbd8
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, sl
	and	r0, r1
	mov	r1, #2
	orr	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, r8
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	add	r7, #1
	cmp	r7, r9
	blt	.L_8d880
.L_8d8da:
	ldr	r1, .L_8dbdc
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_8d920
	ldr	r2, .L_8dbe0
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldr	r3, .L_8dbe4
	ldrh	r1, [r2, #2]
	lsl	r1, r1, #3
	add	r1, r1, r3
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_8d920
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
	bne	.L_8d920
	strh	r0, [r2, #2]
	strh	r0, [r2, #0]
	mov	r0, #0
	ldr	r2, .L_8dbdc
	strb	r0, [r2, #0]
	bl	func_808D6D4
.L_8d920:
	ldr	r1, .L_8dbe4
	ldr	r0, .L_8dbe0
	ldrh	r0, [r0, #2]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r9, r0
	add	r4, #2
	ldr	r6, .L_8dbe8
	cmp	r7, r9
	bge	.L_8d992
	ldr	r1, .L_8dbc4
	ldr	r3, .L_8dbd8
	mov	sl, r3
	ldr	r0, .L_8dbd4
	mov	ip, r0
	mov	r2, #13
	neg	r2, r2
	mov	r8, r2
	lsl	r0, r7, #3
	add	r3, r0, r1
	mov	r0, r9
	sub	r7, r0, r7
.L_8d950:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #24
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #29
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, r8
	and	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8d950
	mov	r7, r9
.L_8d992:
	ldr	r3, .L_8dbec
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #2
	ldr	r1, .L_8dbf0
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldr	r2, .L_8dbf4
	ldrb	r0, [r2, #0]
	cmp	r0, #2
	bhi	.L_8d9ac
	ldrh	r0, [r6, #8]
	add	r0, #1
	strh	r0, [r6, #8]
.L_8d9ac:
	ldrh	r0, [r6, #10]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	ldrh	r1, [r6, #8]
	cmp	r0, r1
	bcs	.L_8d9d2
	mov	r0, #0
	strh	r0, [r6, #8]
	ldrh	r0, [r6, #10]
	add	r0, #1
	strh	r0, [r6, #10]
	ldrh	r0, [r6, #10]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8d9d2
	strh	r0, [r6, #10]
.L_8d9d2:
	ldrh	r0, [r6, #10]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r9, r0
	add	r4, #2
	cmp	r7, r9
	bge	.L_8da4a
	ldr	r1, .L_8dbc4
	ldr	r2, .L_8dbd4
	mov	ip, r2
	mov	r3, #13
	neg	r3, r3
	mov	sl, r3
	lsl	r0, r7, #3
	add	r3, r0, r1
	ldr	r0, .L_8dbd8
	mov	r8, r0
	mov	r1, r9
	sub	r7, r1, r7
.L_8d9fc:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r0, [r6, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r2
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r1, [r6, #0]
	lsl	r1, r1, #16
	asr	r1, r1, #20
	add	r1, r2, r1
	mov	r2, r8
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, sl
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8d9fc
	mov	r7, r9
.L_8da4a:
	ldr	r3, .L_8dbf8
	ldr	r4, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r9, r0
	add	r4, #2
	cmp	r7, r9
	bge	.L_8dace
	ldr	r6, .L_8dbfc
	ldr	r0, .L_8dbc4
	mov	ip, r0
	mov	r1, #15
	neg	r1, r1
	mov	sl, r1
	mov	r2, #13
	neg	r2, r2
	mov	r8, r2
.L_8da6a:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	lsl	r3, r7, #3
	add	r3, ip
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
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r1, [r6, #0]
	lsl	r1, r1, #16
	asr	r1, r1, #20
	add	r1, r2, r1
	ldr	r0, .L_8dbd8
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_8dbd4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, sl
	and	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, r8
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r7, #1
	cmp	r7, r9
	blt	.L_8da6a
.L_8dace:
	ldr	r3, .L_8dc00
.L_8dad0:
	ldrb	r4, [r3, #0]
	cmp	r4, #0
	bne	.L_8db80
	ldr	r2, .L_8dc04
	ldrh	r1, [r2, #6]
	add	r1, #1
	strh	r1, [r2, #6]
	ldr	r3, .L_8dc08
	ldrh	r0, [r2, #8]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_8db06
	strh	r4, [r2, #6]
	ldrh	r0, [r2, #8]
.L_8daf4:
	add	r0, #1
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #8]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8db06
	strh	r0, [r2, #8]
.L_8db06:
	ldrh	r0, [r2, #8]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r9, r0
	add	r4, #2
	cmp	r7, r9
	bge	.L_8db80
	ldr	r1, .L_8dbc4
	add	r6, r2, #0
	ldr	r0, .L_8dbd4
	mov	ip, r0
	mov	r2, #13
	neg	r2, r2
	mov	sl, r2
	lsl	r0, r7, #3
	add	r3, r0, r1
	ldr	r0, .L_8dbd8
	mov	r8, r0
	mov	r1, r9
	sub	r7, r1, r7
.L_8db32:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r0, [r6, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r2
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
.L_8db4c:
	ldrh	r1, [r6, #0]
	lsl	r1, r1, #16
	asr	r1, r1, #20
	add	r1, r2, r1
	mov	r2, r8
	and	r1, r2
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, sl
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8db32
	mov	r7, r9
.L_8db80:
	mov	r6, #0
.L_8db82:
	lsl	r0, r6, #1
	add	r1, r0, r6
	lsl	r1, r1, #2
	ldr	r3, .L_8dc0c
	add	r2, r1, r3
	ldrb	r1, [r2, #4]
	mov	ip, r0
	add	r0, r6, #1
	mov	r8, r0
	cmp	r1, #0
	bne	.L_8db9a
	b	.L_8dcb2
.L_8db9a:
	ldr	r1, .L_8dc10
	ldrb	r0, [r2, #4]
	sub	r0, #1
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r1, [r2, #6]
	add	r1, #1
	mov	r4, #0
	strh	r1, [r2, #6]
	ldrh	r0, [r2, #8]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	b	.L_8dc14
	.align	2, 0
.L_8dbc0:
	.4byte	gOamSlotsUsed
.L_8dbc4:
	.4byte	gOamBuffer
.L_8dbc8:
	.4byte	gHomerunCamera
.L_8dbcc:
	.4byte	sUnk_870D880
.L_8dbd0:
	.4byte	sUnk_870D890
.L_8dbd4:
	.4byte	0xfffffe00
.L_8dbd8:
	.4byte	0x000001ff
.L_8dbdc:
	.4byte	gHomerunMedalHighlight
.L_8dbe0:
	.4byte	gHomerunUiAnimation
.L_8dbe4:
	.4byte	sUnk_870D428
.L_8dbe8:
	.4byte	gUnk_3004930
.L_8dbec:
	.4byte	gUnk_3004910
.L_8dbf0:
	.4byte	sUnk_870CE14
.L_8dbf4:
	.4byte	gHomerunState
.L_8dbf8:
	.4byte	sUnk_870D4A8
.L_8dbfc:
	.4byte	gUnk_3004920
.L_8dc00:
	.4byte	gUnk_30049CA
.L_8dc04:
	.4byte	gUnk_3004940
.L_8dc08:
	.4byte	sUnk_870D400
.L_8dc0c:
	ldr	r1, .L_8dd50
	lsl	r0, r0, #12
.L_8dc10:
	.4byte	sUnk_870CE24
.L_8dc14:
	bcs	.L_8dc2c
	strh	r4, [r2, #6]
	ldrh	r0, [r2, #8]
	add	r0, #1
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #8]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8dc2c
	strh	r0, [r2, #8]
.L_8dc2c:
	mov	r1, ip
	add	r0, r1, r6
.L_8dc30:
	.4byte	0x4ad90081
	add	r0, r1, r2
	ldrh	r0, [r0, #8]
.L_8dc38:
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r9, r0
	add	r4, #2
	add	r6, #1
	mov	r8, r6
	cmp	r7, r9
	bge	.L_8dcb2
	add	r0, r2, #0
	add	r6, r1, r0
	lsl	r0, r7, #3
	ldr	r1, .L_8df9c
	add	r3, r0, r1
	ldr	r2, .L_8dfa0
	mov	sl, r2
	mov	r0, #13
	neg	r0, r0
	mov	ip, r0
	mov	r1, r9
	sub	r7, r1, r7
.L_8dc64:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r0, [r6, #2]
	lsl	r0, r0, #16
	asr	r0, r0, #20
	add	r0, r0, r2
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrh	r1, [r6, #0]
.L_8dc80:
	.4byte	0x15090409
	add	r1, r2, r1
	mov	r2, sl
	and	r1, r2
	ldrh	r2, [r3, #2]
	ldr	r0, .L_8dfa4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, ip
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
.L_8dcac:
	.4byte	0xd1d92f00
	mov	r7, r9
.L_8dcb2:
	mov	r6, r8
	cmp	r6, #6
	bgt	.L_8dcba
	b	.L_8db82
.L_8dcba:
	ldr	r3, .L_8dfa8
	ldrb	r1, [r3, #4]
	cmp	r1, #0
	beq	.L_8dd90
	add	r1, #1
	strb	r1, [r3, #4]
	ldrh	r0, [r3, #6]
	add	r0, #1
	strh	r0, [r3, #6]
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	cmp	r1, #201	@ 0xc9
	bls	.L_8dcd8
	mov	r0, #0
	strb	r0, [r3, #4]
.L_8dcd8:
	ldr	r0, .L_8dfac
	ldr	r2, .L_8dfa8
	ldrh	r1, [r2, #8]
	lsl	r1, r1, #3
	add	r1, r1, r0
	ldrb	r1, [r1, #4]
	add	r2, r0, #0
	ldr	r3, .L_8dfa8
	ldrh	r3, [r3, #6]
	cmp	r1, r3
	bcs	.L_8dd08
	mov	r0, #1
	ldr	r1, .L_8dfa8
	strh	r0, [r1, #6]
	ldrh	r0, [r1, #8]
	add	r0, #1
	strh	r0, [r1, #8]
	ldrh	r0, [r1, #8]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8dd08
	strh	r0, [r1, #8]
.L_8dd08:
	ldr	r3, .L_8dfa8
	ldrb	r0, [r3, #4]
	cmp	r0, #0
	beq	.L_8dd90
	ldrh	r0, [r3, #8]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r9, r0
	add	r4, #2
	cmp	r7, r9
	bge	.L_8dd90
	ldr	r1, .L_8df9c
	add	r6, r3, #0
	ldr	r0, .L_8dfb0
	mov	ip, r0
	lsl	r0, r7, #3
	add	r3, r0, r1
	ldr	r1, .L_8dfa0
	mov	r8, r1
	mov	r2, #13
	neg	r2, r2
	mov	sl, r2
	mov	r0, r9
	sub	r7, r0, r7
.L_8dd3c:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrb	r0, [r6, #4]
	sub	r0, #2
	ldr	r1, .L_8dfb4
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	add	r0, r0, r2
.L_8dd50:
	.4byte	0x88227018
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	ldrb	r0, [r6, #4]
	sub	r0, #2
	add	r0, ip
	ldrb	r1, [r0, #0]
	add	r1, r2, r1
	mov	r2, r8
	and	r1, r2
	ldrh	r2, [r3, #2]
	ldr	r0, .L_8dfa4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, sl
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8dd3c
	mov	r7, r9
.L_8dd90:
	ldr	r3, .L_8dfb8
	ldrb	r0, [r3, #4]
	cmp	r0, #0
	beq	.L_8de36
	ldrh	r1, [r3, #6]
	add	r1, #1
	strh	r1, [r3, #6]
	ldr	r2, .L_8dfbc
	ldrh	r0, [r3, #8]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_8ddce
	mov	r0, #1
	strh	r0, [r3, #6]
	ldrh	r0, [r3, #8]
	add	r0, #1
	strh	r0, [r3, #8]
	ldrh	r0, [r3, #8]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8ddce
	strh	r0, [r3, #8]
	strh	r0, [r3, #6]
	mov	r0, #0
	strb	r0, [r3, #4]
.L_8ddce:
	ldr	r1, .L_8dfb8
	ldrb	r0, [r1, #4]
	cmp	r0, #0
	beq	.L_8de36
	ldrh	r0, [r1, #8]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r4, [r0, #0]
	ldrh	r0, [r4, #0]
	add	r9, r0
	add	r4, #2
	cmp	r7, r9
	bge	.L_8de36
	ldr	r1, .L_8df9c
	ldr	r6, .L_8dfa0
	ldr	r2, .L_8dfa4
	mov	r8, r2
	lsl	r0, r7, #3
	add	r3, r0, r1
	mov	r0, r9
	sub	r7, r0, r7
.L_8ddf8:
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r2, #0
	add	r0, #140	@ 0x8c
	strb	r0, [r3, #0]
	ldrh	r2, [r4, #0]
	add	r4, #2
	strh	r2, [r5, #0]
	add	r5, #2
	add	r1, r2, #0
	add	r1, #160	@ 0xa0
	and	r1, r6
	ldrh	r2, [r3, #2]
	mov	r0, r8
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	ldrb	r0, [r3, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r5, #4
	add	r3, #8
	sub	r7, #1
	cmp	r7, #0
	bne	.L_8ddf8
.L_8de36:
	ldr	r1, .L_8dfc0
	ldrh	r0, [r1, #4]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r2, .L_8dfc4
	add	r0, r0, r2
	mov	r3, #0
	ldrsh	r4, [r0, r3]
	mov	r2, #6
	ldrsh	r0, [r1, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldr	r3, .L_8dfc0
	ldrh	r0, [r3, #4]
	lsl	r0, r0, #1
	ldr	r1, .L_8dfc4
	add	r0, r0, r1
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	mov	r1, #6
	ldrsh	r0, [r3, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #8]
	strh	r0, [r2, #0]
	ldr	r3, .L_8dfc0
	ldrh	r0, [r3, #4]
	lsl	r0, r0, #1
	ldr	r1, .L_8dfc4
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r2, #6
	ldrsh	r0, [r3, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #12]
	strh	r0, [r3, #0]
	ldr	r1, .L_8dfc0
	ldrh	r0, [r1, #4]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r2, .L_8dfc4
	add	r0, r0, r2
	mov	r3, #0
	ldrsh	r4, [r0, r3]
	mov	r2, #6
	ldrsh	r0, [r1, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r3, [sp, #16]
	strh	r0, [r3, #0]
	ldr	r5, .L_8df9c
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r5, #6]
	ldr	r2, [sp, #8]
	ldrh	r1, [r2, #0]
	strh	r1, [r5, #14]
	ldr	r3, [sp, #12]
	ldrh	r1, [r3, #0]
	strh	r1, [r5, #22]
	strh	r0, [r5, #30]
	ldr	r0, .L_8dfc4
	add	r0, #128	@ 0x80
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r8, r1
	ldr	r6, .L_8dfc8
	mov	r3, #4
	ldrsh	r0, [r6, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, r8
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldr	r0, .L_8dfc4
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, #4
	ldrsh	r0, [r6, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #8]
.L_8df30:
	strh	r0, [r3, #0]
	ldr	r0, .L_8dfc4
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r1, #4
	ldrsh	r0, [r6, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #12]
	strh	r0, [r2, #0]
	mov	r3, #4
	ldrsh	r0, [r6, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, r8
	bl	FixedMul
	ldr	r1, [sp, #16]
	strh	r0, [r1, #0]
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r5, #38]	@ 0x26
	ldr	r2, [sp, #8]
	ldrh	r1, [r2, #0]
	strh	r1, [r5, #46]	@ 0x2e
	ldr	r3, [sp, #12]
	ldrh	r1, [r3, #0]
	strh	r1, [r5, #54]	@ 0x36
	strh	r0, [r5, #62]	@ 0x3e
	ldr	r0, .L_8dfcc
	mov	r1, r9
	strb	r1, [r0, #0]
	add	sp, #20
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8df98:
	.4byte	gUnk_3004950
.L_8df9c:
	.4byte	gOamBuffer
.L_8dfa0:
	.4byte	0x000001ff
.L_8dfa4:
	.4byte	0xfffffe00
.L_8dfa8:
	.4byte	gUnk_30049B8
.L_8dfac:
	.4byte	sUnk_870D6C0
.L_8dfb0:
	.4byte	sUnk_870CC18
.L_8dfb4:
	.4byte	sUnk_870CCE0
.L_8dfb8:
	.4byte	gUnk_30049A8
.L_8dfbc:
	.4byte	sUnk_870D700
.L_8dfc0:
	.4byte	gUnk_3004920
.L_8dfc4:
	.4byte	sSinCosTable
.L_8dfc8:
	.4byte	gHomerunCamera
.L_8dfcc:
	.4byte	gOamSlotsUsed
