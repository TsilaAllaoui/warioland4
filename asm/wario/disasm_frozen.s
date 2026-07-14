.include "macros.s.inc"


thumb_func_start func_8018758
func_8018758:
	push	{lr}
	ldr	r1, .L_18774
	ldr	r0, .L_18778
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
.L_18774:
	.4byte	sFrozenWarioPoseTable
.L_18778:
	.4byte	gWarioData


thumb_func_start func_801877C
func_801877C:
	ldr	r2, .L_187b0
	ldr	r3, .L_187b4
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_187b8
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_187b8
	mov	r0, #1
	b	.L_187ba
.L_187b0:
	.4byte	gWarioData
.L_187b4:
	.4byte	sUnk_8325544
.L_187b8:
	mov	r0, #255	@ 0xff
.L_187ba:
	bx	lr


thumb_func_start func_80187BC
func_80187BC:
	ldr	r2, .L_187cc
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_187d4
	ldr	r0, .L_187d0
	b	.L_187d6
.L_187cc:
	.4byte	gWarioData
.L_187d0:
	.4byte	0xFFA0
.L_187d4:
	mov	r0, #96	@ 0x60
.L_187d6:
	strh	r0, [r2, #22]
	mov	r0, #255	@ 0xff
	bx	lr


thumb_func_start func_80187DC
func_80187DC:
	ldr	r2, .L_187ec
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_187f4
	ldr	r0, .L_187f0
	b	.L_187f6
.L_187ec:
	.4byte	gWarioData
.L_187f0:
	.4byte	0xFFA0
.L_187f4:
	mov	r0, #96	@ 0x60
.L_187f6:
	strh	r0, [r2, #22]
	mov	r0, #255	@ 0xff
	bx	lr


thumb_func_start func_80187FC
func_80187FC:
	ldr	r2, .L_18838
	ldr	r3, .L_1883c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_18840
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_18840
	strb	r0, [r2, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #4]
	mov	r0, #2
	b	.L_18842
	.align	2, 0
.L_18838:
	.4byte	gWarioData
.L_1883c:
	.4byte	sUnk_8325598
.L_18840:
	mov	r0, #255	@ 0xff
.L_18842:
	bx	lr


thumb_func_start func_8018844
func_8018844:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	bl	func_8010230
	cmp	r4, #3
	beq	.L_18888
	cmp	r4, #3
	bgt	.L_1885c
	cmp	r4, #0
	beq	.L_1887c
	b	.L_18894
.L_1885c:
	cmp	r4, #253	@ 0xfd
	beq	.L_18870
	cmp	r4, #254	@ 0xfe
	bne	.L_18894
	ldr	r1, .L_1886c
	mov	r0, #2
	strb	r0, [r1, #1]
	b	.L_18898
.L_1886c:
	.4byte	gWarioData
.L_18870:
	ldr	r1, .L_18878
	mov	r0, #1
	strb	r0, [r1, #1]
	b	.L_18898
.L_18878:
	.4byte	gWarioData
.L_1887c:
	ldr	r0, .L_18884
	bl	m4aSongNumStart
	b	.L_18894
.L_18884:
	.4byte	0x16F
.L_18888:
	ldr	r0, .L_188a0
	bl	m4aSongNumStart
	mov	r0, #0
	bl	VoiceSetPlay
.L_18894:
	ldr	r0, .L_188a4
	strb	r4, [r0, #1]
.L_18898:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_188a0:
	.4byte	0x15F
.L_188a4:
	.4byte	gWarioData


thumb_func_start func_80188A8
func_80188A8:
	push	{r4, lr}
	ldr	r3, .L_18910
	ldr	r2, .L_18914
	ldr	r4, .L_18918
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
	bl	func_800FE58
	mov	r2, #0
	ldrb	r0, [r4, #26]
	cmp	r0, #2
	bne	.L_188ee
	ldrh	r1, [r4, #24]
	lsl	r0, r1, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	sub	r1, #8
	strh	r1, [r4, #24]
.L_188ee:
	mov	r1, #24
	ldrsh	r0, [r4, r1]
	mov	r1, #128	@ 0x80
	neg	r1, r1
	cmp	r0, r1
	bge	.L_188fc
	strh	r1, [r4, #24]
.L_188fc:
	ldrh	r0, [r4, #20]
	sub	r0, r0, r2
	strh	r0, [r4, #20]
	ldrb	r0, [r4, #26]
	cmp	r0, #0
	bne	.L_1891c
	bl	func_800FDBC
	b	.L_1891e
	.align	2, 0
.L_18910:
	.4byte	gUnk_3001918
.L_18914:
	.4byte	sUnk_82DD920
.L_18918:
	.4byte	gWarioData
.L_1891c:
	ldrh	r0, [r4, #22]
.L_1891e:
	lsl	r0, r0, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	ldr	r1, .L_18934
	ldrh	r0, [r1, #18]
	add	r0, r0, r2
	strh	r0, [r1, #18]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_18934:
	.4byte	gWarioData


thumb_func_start func_8018938
func_8018938:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_18990
	ldr	r2, .L_18994
	ldr	r3, .L_18998
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
	mov	r1, #24
	ldrsh	r0, [r3, r1]
	cmp	r0, #47	@ 0x2f
	bgt	.L_1897c
	mov	r0, #0
	strb	r0, [r4, #12]
.L_1897c:
	mov	r6, #255	@ 0xff
	ldrh	r1, [r4, #2]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_1899c
	bl	func_8014C4C
	b	.L_189cc
	.align	2, 0
.L_18990:
	.4byte	gUnk_3001918
.L_18994:
	.4byte	sUnk_82DD920
.L_18998:
	.4byte	gWarioData
.L_1899c:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_189aa
	bl	func_8014930
	b	.L_189cc
.L_189aa:
	ldrh	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_189c2
	ldrb	r0, [r4, #17]
	cmp	r0, #2
	bne	.L_189bc
	bl	func_8014930
	b	.L_189cc
.L_189bc:
	bl	func_80143D8
	b	.L_189cc
.L_189c2:
	ldrb	r0, [r4, #17]
	cmp	r0, #0
	bne	.L_189d0
	bl	func_8014758
.L_189cc:
	lsl	r0, r0, #24
	lsr	r6, r0, #24
.L_189d0:
	ldr	r5, .L_189fc
	ldrh	r0, [r5, #20]
	sub	r0, #48	@ 0x30
	lsl	r0, r0, #16
.L_189d8:
	lsr	r0, r0, #16
	ldrh	r1, [r5, #18]
	bl	GetBackgroundCollisionAtPosition
	add	r4, r0, #0
	mov	r0, #255	@ 0xff
	and	r4, r0
	cmp	r4, #1
	bne	.L_18a04
	ldrb	r0, [r5, #1]
	cmp	r0, #3
	beq	.L_189f6
	mov	r0, #3
	bl	func_8018844
.L_189f6:
	ldr	r0, .L_18a00
	strb	r4, [r0, #0]
	b	.L_18a1e
.L_189fc:
	.4byte	gWarioData
.L_18a00:
	.4byte	gWarioDustEffect1
.L_18a04:
	ldr	r1, .L_18a24
	ldrb	r0, [r1, #17]
	cmp	r0, #255	@ 0xff
	beq	.L_18a1e
	ldrb	r0, [r1, #18]
	cmp	r0, #0
	beq	.L_18a14
	mov	r6, #3
.L_18a14:
	cmp	r6, #255	@ 0xff
	beq	.L_18a1e
	add	r0, r6, #0
	bl	func_8018844
.L_18a1e:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_18a24:
	.4byte	gUnk_3001918


thumb_func_start func_8018A28
func_8018A28:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r4, r4, #24
	lsr	r4, r4, #24
	bl	func_800FF64
	ldr	r1, .L_18a8c
	lsl	r4, r4, #2
	ldr	r2, .L_18a90
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
	ldr	r1, .L_18a94
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #0]
	ldr	r0, .L_18a98
	mov	r1, #0
	mov	r2, #16
	bl	func_800FD90
	ldr	r0, .L_18a9c
	mov	r1, #16
	mov	r2, #16
	bl	func_800FD90
	pop	{r4}
	pop	{r0}
	bx	r0
.L_18a8c:
	.4byte	sUnk_82DD900
.L_18a90:
	add	r0, r3, r2
	lsl	r0, r0, #12
.L_18a94:
	.4byte	gWarioPaletteSize
.L_18a98:
	.4byte	sUnk_82DDDA0
.L_18a9c:
	.4byte	sUnk_82DE818


thumb_func_start func_8018AA0
func_8018AA0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, .L_18b1c
	mov	r0, #0
	ldrsb	r0, [r7, r0]
	cmp	r0, #8
	beq	.L_18b10
	ldr	r4, .L_18b20
	ldr	r0, [r4, #0]
	mov	r8, r0
	mov	r5, #175	@ 0xaf
	lsl	r5, r5, #1
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r6, [r4, #12]
	add	r0, r6, #0
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r4, .L_18b24
	mov	r5, #250	@ 0xfa
	lsl	r5, r5, #2
	mov	r0, r8
	add	r1, r4, #0
	add	r2, r5, #0
	bl	m4aMPlayPitchControl
	add	r0, r6, #0
	add	r1, r4, #0
	add	r2, r5, #0
	bl	m4aMPlayPitchControl
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #40	@ 0x28
	bl	m4aMPlayModDepthSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #40	@ 0x28
	bl	m4aMPlayModDepthSet
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #50	@ 0x32
	bl	m4aMPlayLFOSpeedSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #50	@ 0x32
	bl	m4aMPlayLFOSpeedSet
	mov	r0, #8
	strb	r0, [r7, #0]
.L_18b10:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_18b1c:
	.4byte	gUnk_30031BC
.L_18b20:
	.4byte	gMPlayTable
.L_18b24:
	.4byte	0xFFFF


thumb_func_start func_8018B28
func_8018B28:
	push	{r4, lr}
	ldr	r3, .L_18b6c
	ldr	r4, .L_18b70
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #0]
	ldr	r2, .L_18b74
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
	bne	.L_18b78
	strb	r0, [r4, #26]
	b	.L_18b80
.L_18b6c:
	.4byte	sUnk_82DD920
.L_18b70:
	.4byte	gWarioData
.L_18b74:
	.4byte	sUnk_82DEB18
.L_18b78:
	ldrb	r0, [r4, #26]
	cmp	r0, #1
	beq	.L_18b80
	strb	r1, [r4, #26]
.L_18b80:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
