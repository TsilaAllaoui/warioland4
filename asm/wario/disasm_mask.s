.include "macros.s.inc"


thumb_func_start func_801B5D0
func_801B5D0:
	push	{lr}
	ldr	r1, .L_1b5ec
	ldr	r0, .L_1b5f0
	ldrb	r0, [r0, #1]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	pop	{r1}
	bx	r1
	.align	2, 0
.L_1b5ec:
	.4byte	sWarioMaskPoseTable
.L_1b5f0:
	.4byte	gWarioData


thumb_func_start func_801B5F4
func_801B5F4:
	push	{r4, lr}
	ldr	r4, .L_1b608
	ldrh	r1, [r4, #12]
	mov	r0, #144	@ 0x90
	lsl	r0, r0, #1
	cmp	r1, r0
	bls	.L_1b60c
	mov	r0, #1
	b	.L_1b684
	.align	2, 0
.L_1b608:
	.4byte	gWarioData
.L_1b60c:
	add	r0, r1, #1
	strh	r0, [r4, #12]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #10
	bne	.L_1b61e
	mov	r0, #131	@ 0x83
	bl	m4aSongNumStart
.L_1b61e:
	ldrh	r2, [r4, #12]
	cmp	r2, #10
	bls	.L_1b63a
	ldrh	r0, [r4, #20]
	sub	r0, #8
	strh	r0, [r4, #20]
	ldr	r0, .L_1b68c
	ldrh	r1, [r0, #0]
	mov	r0, #48	@ 0x30
	and	r0, r1
	cmp	r0, #0
	beq	.L_1b63a
	add	r0, r2, #6
	strh	r0, [r4, #12]
.L_1b63a:
	ldr	r4, .L_1b690
	ldrb	r0, [r4, #10]
	cmp	r0, #139	@ 0x8b
	bhi	.L_1b646
	add	r0, #1
	strb	r0, [r4, #10]
.L_1b646:
	ldrb	r0, [r4, #10]
	cmp	r0, #130	@ 0x82
	bne	.L_1b652
	mov	r0, #132	@ 0x84
	bl	m4aSongNumStart
.L_1b652:
	ldr	r2, .L_1b694
	ldrb	r0, [r4, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldrb	r0, [r4, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1b682
	mov	r0, #0
	strb	r0, [r4, #30]
	ldrb	r0, [r4, #31]
	add	r0, #1
	strb	r0, [r4, #31]
	ldrb	r1, [r4, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_1b682
	strb	r0, [r4, #31]
.L_1b682:
	mov	r0, #255	@ 0xff
.L_1b684:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_1b68c:
	.4byte	gButtonsPressed
.L_1b690:
	.4byte	gWarioData
.L_1b694:
	.4byte	sUnk_83318D8


thumb_func_start func_801B698
func_801B698:
	ldr	r1, .L_1b6a4
	ldrh	r0, [r1, #24]
	sub	r0, #8
	strh	r0, [r1, #24]
	mov	r0, #255	@ 0xff
	bx	lr
.L_1b6a4:
	.4byte	gWarioData


thumb_func_start func_801B6A8
func_801B6A8:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #18
	add	r0, r0, r1
	lsr	r0, r0, #24
	cmp	r0, #1
	bls	.L_1b6cc
	bl	ResetWarioState
	ldr	r0, .L_1b6d4
	strb	r4, [r0, #1]
	cmp	r4, #0
	bne	.L_1b6cc
	mov	r0, #6
	bl	VoiceSetPlay
.L_1b6cc:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1b6d4:
	.4byte	gWarioData


thumb_func_start func_801B6D8
func_801B6D8:
	push	{r4, lr}
	ldr	r3, .L_1b734
	ldr	r2, .L_1b738
	ldr	r4, .L_1b73c
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r1, r2, #1
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #8]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r1, r2, #2
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #9]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r2, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #10]
	mov	r2, #0
	ldrb	r0, [r4, #1]
	cmp	r0, #1
	bne	.L_1b71a
	ldrh	r1, [r4, #24]
	lsl	r0, r1, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	sub	r1, #8
	strh	r1, [r4, #24]
.L_1b71a:
	mov	r1, #24
	ldrsh	r0, [r4, r1]
	mov	r1, #128	@ 0x80
	neg	r1, r1
	cmp	r0, r1
	bge	.L_1b728
	strh	r1, [r4, #24]
.L_1b728:
	ldrh	r0, [r4, #20]
	sub	r0, r0, r2
	strh	r0, [r4, #20]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_1b734:
	.4byte	gUnk_3001918
.L_1b738:
	.4byte	sUnk_82DDCC0
.L_1b73c:
	.4byte	gWarioData


thumb_func_start func_801B740
func_801B740:
	push	{r4, r5, lr}
	ldr	r4, .L_1b78c
	ldr	r2, .L_1b790
	ldr	r3, .L_1b794
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #4
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #11]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #5
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #12]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #6
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #13]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r2, #7
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #17]
	mov	r5, #255	@ 0xff
	ldrh	r1, [r4, #2]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_1b798
	bl	func_8014C4C
	b	.L_1b7a4
	.align	2, 0
.L_1b78c:
	.4byte	gUnk_3001918
.L_1b790:
	.4byte	sUnk_82DDCC0
.L_1b794:
	.4byte	gWarioData
.L_1b798:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_1b7a8
	bl	func_8014930
.L_1b7a4:
	lsl	r0, r0, #24
	lsr	r5, r0, #24
.L_1b7a8:
	ldr	r4, .L_1b7d0
	ldrh	r0, [r4, #20]
	sub	r0, #48	@ 0x30
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	func_806DAC0
	add	r1, r0, #0
	mov	r0, #255	@ 0xff
	and	r1, r0
	cmp	r1, #1
	bne	.L_1b7d4
	strb	r1, [r4, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r4, #4]
	mov	r0, #0
	bl	func_8016614
	b	.L_1b7e6
.L_1b7d0:
	.4byte	gWarioData
.L_1b7d4:
	cmp	r5, #253	@ 0xfd
	bne	.L_1b7e6
	mov	r0, #0
	strb	r0, [r4, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r4, #4]
	mov	r0, #47	@ 0x2f
	bl	func_8012BAC
.L_1b7e6:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_801B7EC
func_801B7EC:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r4, r4, #24
	lsr	r4, r4, #24
	bl	UpdateWarioPositionHistory
	ldr	r1, .L_1b848
	lsl	r4, r4, #2
	ldr	r2, .L_1b84c
	ldrb	r0, [r2, #1]
	lsl	r0, r0, #3
	add	r4, r4, r0
	add	r4, r4, r1
	ldr	r3, [r4, #0]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r3, r3, r0
	ldr	r1, [r3, #0]
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	strh	r0, [r2, #40]	@ 0x28
	add	r1, #1
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	strh	r0, [r2, #48]	@ 0x30
	add	r1, #1
	str	r1, [r2, #36]	@ 0x24
	ldrh	r0, [r2, #40]	@ 0x28
	add	r1, r1, r0
	str	r1, [r2, #44]	@ 0x2c
	ldr	r0, [r3, #4]
	str	r0, [r2, #32]
	ldr	r1, .L_1b850
	mov	r0, #32
	strh	r0, [r1, #0]
	ldr	r0, .L_1b854
	mov	r1, #0
	mov	r2, #16
	bl	CopyWarioPalette
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1b848:
	.4byte	sUnk_82DDCB0
.L_1b84c:
	.4byte	gWarioData
.L_1b850:
	.4byte	gWarioPaletteSize
.L_1b854:
	.4byte	sUnk_82DEAF8


thumb_func_start func_801B858
func_801B858:
	bx	lr
	.align	2, 0


thumb_func_start func_801B85C
func_801B85C:
	push	{r4, lr}
	ldr	r3, .L_1b8a0
	ldr	r4, .L_1b8a4
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #0]
	ldr	r2, .L_1b8a8
	lsl	r1, r1, #3
	add	r0, r1, r2
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #50]	@ 0x32
	add	r0, r2, #2
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #52]	@ 0x34
	add	r0, r2, #4
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #54]	@ 0x36
	add	r2, #6
	add	r1, r1, r2
	ldrh	r0, [r1, #0]
	strh	r0, [r4, #56]	@ 0x38
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r3, #7
	add	r0, r0, r3
	ldrb	r0, [r0, #0]
	add	r1, r0, #0
	cmp	r0, #2
	bne	.L_1b8ac
	strb	r0, [r4, #26]
	b	.L_1b8b4
.L_1b8a0:
	.4byte	sUnk_82DDCC0
.L_1b8a4:
	.4byte	gWarioData
.L_1b8a8:
	.4byte	sUnk_82DEB18
.L_1b8ac:
	ldrb	r0, [r4, #26]
	cmp	r0, #1
	beq	.L_1b8b4
	strb	r1, [r4, #26]
.L_1b8b4:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
