.include "macros.s.inc"


thumb_func_start func_801A940
func_801A940:
	push	{lr}
	ldr	r1, .L_1a95c
	ldr	r0, .L_1a960
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
.L_1a95c:
	.4byte	sBatWarioPoseTable
.L_1a960:
	.4byte	gWarioData


thumb_func_start func_801A964
func_801A964:
	ldr	r0, .L_1a9a0
	ldrb	r0, [r0, #3]
	cmp	r0, #3
	bls	.L_1a9ac
	ldr	r2, .L_1a9a4
	ldr	r3, .L_1a9a8
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1a9ac
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
	bne	.L_1a9ac
	mov	r0, #3
	b	.L_1a9ae
.L_1a9a0:
	.4byte	gCurrentWarioEffect
.L_1a9a4:
	.4byte	gWarioData
.L_1a9a8:
	.4byte	sUnk_833BE10
.L_1a9ac:
	mov	r0, #255	@ 0xff
.L_1a9ae:
	bx	lr


thumb_func_start func_801A9B0
func_801A9B0:
	push	{r4, lr}
	ldr	r0, .L_1a9cc
	ldrh	r1, [r0, #0]
	mov	r2, #1
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_1a9d4
	ldr	r1, .L_1a9d0
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r0, #254	@ 0xfe
	b	.L_1aa9c
	.align	2, 0
.L_1a9cc:
	.4byte	gButtonsPressed
.L_1a9d0:
	.4byte	gWarioData
.L_1a9d4:
	ldr	r1, .L_1aa0c
	ldrh	r0, [r1, #0]
	and	r2, r0
	ldr	r4, .L_1aa10
	cmp	r2, #0
	bne	.L_1a9ec
	mov	r3, #24
	ldrsh	r0, [r4, r3]
	cmp	r0, #0
	ble	.L_1a9ea
	strh	r2, [r4, #24]
.L_1a9ea:
	strb	r2, [r4, #9]
.L_1a9ec:
	ldrh	r0, [r4, #24]
	sub	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #31
	bhi	.L_1aa16
	ldrb	r2, [r4, #9]
	add	r0, r2, #0
	cmp	r0, #0
	beq	.L_1aa14
	mov	r0, #32
	strh	r0, [r4, #24]
	sub	r0, r2, #1
	strb	r0, [r4, #9]
	b	.L_1aa16
	.align	2, 0
.L_1aa0c:
	.4byte	gButtonsHeld
.L_1aa10:
	.4byte	gWarioData
.L_1aa14:
	strh	r0, [r4, #24]
.L_1aa16:
	ldrh	r1, [r1, #0]
	ldrh	r2, [r4, #14]
	add	r3, r1, #0
	and	r3, r2
	cmp	r3, #0
	beq	.L_1aa3c
	mov	r0, #16
	and	r0, r2
	cmp	r0, #0
	beq	.L_1aa30
	mov	r0, #32
	strh	r0, [r4, #22]
	b	.L_1aa4e
.L_1aa30:
	ldr	r0, .L_1aa38
	strh	r0, [r4, #22]
	b	.L_1aa4e
	.align	2, 0
.L_1aa38:
	.4byte	0xFFE0
.L_1aa3c:
	mov	r0, #48	@ 0x30
	eor	r2, r0
	add	r0, r2, #0
	and	r0, r1
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_1aa4c
	strh	r2, [r4, #14]
.L_1aa4c:
	strh	r3, [r4, #22]
.L_1aa4e:
	add	r2, r4, #0
	ldr	r3, .L_1aa80
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1aa9a
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bne	.L_1aa88
	ldr	r0, .L_1aa84
	bl	m4aSongNumStart
	b	.L_1aa9a
	.align	2, 0
.L_1aa80:
	.4byte	sUnk_833BCC0
.L_1aa84:
	.4byte	0x173
.L_1aa88:
	ldrb	r1, [r4, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_1aa9a
	strb	r0, [r4, #31]
.L_1aa9a:
	mov	r0, #255	@ 0xff
.L_1aa9c:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_801AAA2
func_801AAA2:
	.align	2, 0
	push	{r4, lr}
	ldr	r0, .L_1aabc
	ldrh	r0, [r0, #0]
	mov	r3, #1
	and	r3, r0
	cmp	r3, #0
	beq	.L_1aac4
	ldr	r1, .L_1aac0
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r0, #254	@ 0xfe
	b	.L_1ab02
.L_1aabc:
	.4byte	gButtonsPressed
.L_1aac0:
	.4byte	gWarioData
.L_1aac4:
	ldr	r2, .L_1aaf8
	ldr	r4, .L_1aafc
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r4
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1ab00
	strb	r3, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_1ab00
	mov	r0, #3
	b	.L_1ab02
	.align	2, 0
.L_1aaf8:
	.4byte	gWarioData
.L_1aafc:
	.4byte	sUnk_833BD14
.L_1ab00:
	mov	r0, #255	@ 0xff
.L_1ab02:
	pop	{r4}
	pop	{r1}
	bx	r1


thumb_func_start func_801AB08
func_801AB08:
	push	{r4, lr}
	ldr	r0, .L_1ab20
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_1ab28
	ldr	r1, .L_1ab24
	mov	r0, #1
	strb	r0, [r1, #8]
	mov	r0, #254	@ 0xfe
	b	.L_1ab78
.L_1ab20:
	.4byte	gButtonsPressed
.L_1ab24:
	.4byte	gWarioData
.L_1ab28:
	ldr	r2, .L_1ab40
	ldr	r4, .L_1ab44
	ldrh	r1, [r4, #14]
	mov	r0, #48	@ 0x30
	add	r3, r1, #0
	eor	r3, r0
	ldrh	r0, [r2, #0]
	and	r3, r0
	cmp	r3, #0
	beq	.L_1ab48
	mov	r0, #2
	b	.L_1ab78
.L_1ab40:
	.4byte	gButtonsHeld
.L_1ab44:
	.4byte	gWarioData
.L_1ab48:
	ldr	r2, .L_1ab80
	ldrb	r0, [r4, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r2
	ldrb	r0, [r4, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1ab76
	strb	r3, [r4, #30]
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
	bne	.L_1ab76
	strb	r0, [r4, #31]
.L_1ab76:
	mov	r0, #255	@ 0xff
.L_1ab78:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_1ab80:
	.4byte	sUnk_833BD5C


thumb_func_start func_801AB84
func_801AB84:
	ldr	r2, .L_1abc0
	ldr	r3, .L_1abc4
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1abc8
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
	bne	.L_1abc8
	strb	r0, [r2, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #4]
	mov	r0, #2
	b	.L_1abca
	.align	2, 0
.L_1abc0:
	.4byte	gWarioData
.L_1abc4:
	.4byte	sUnk_833BD8C
.L_1abc8:
	mov	r0, #255	@ 0xff
.L_1abca:
	bx	lr


thumb_func_start func_801ABCC
func_801ABCC:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	bl	func_8010230
	cmp	r4, #4
	beq	.L_1ac32
	cmp	r4, #4
	bgt	.L_1abf0
	cmp	r4, #0
	beq	.L_1ac24
	cmp	r4, #2
	beq	.L_1ac68
	ldr	r1, .L_1abec
	b	.L_1ac6e
	.align	2, 0
.L_1abec:
	.4byte	gWarioData
.L_1abf0:
	cmp	r4, #253	@ 0xfd
	beq	.L_1ac18
	ldr	r1, .L_1ac10
	cmp	r4, #254	@ 0xfe
	bne	.L_1ac6e
	mov	r0, #1
	strb	r0, [r1, #1]
	ldr	r0, .L_1ac14
	ldrb	r0, [r0, #8]
	cmp	r0, #1
	bne	.L_1ac70
	mov	r0, #12
	strb	r0, [r1, #9]
	mov	r0, #128	@ 0x80
	strh	r0, [r1, #24]
	b	.L_1ac70
.L_1ac10:
	.4byte	gWarioData
.L_1ac14:
	.4byte	gWarioDataCopy
.L_1ac18:
	ldr	r1, .L_1ac20
	mov	r0, #3
	strb	r0, [r1, #1]
	b	.L_1ac70
.L_1ac20:
	.4byte	gWarioData
.L_1ac24:
	mov	r0, #175	@ 0xaf
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	mov	r0, #4
	bl	VoiceSetPlay
.L_1ac32:
	ldr	r2, .L_1ac54
.L_1ac34:
	ldr	r0, .L_1ac58
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	str	r1, [r2, #4]
	ldr	r2, .L_1ac5c
	ldr	r0, .L_1ac60
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	str	r1, [r2, #4]
	ldr	r0, .L_1ac64
.L_1ac4c:
	strb	r4, [r0, #1]
	mov	r0, #4
	strb	r0, [r2, #0]
	b	.L_1ac70
.L_1ac54:
	.4byte	gUnk_3001930
.L_1ac58:
	.4byte	sUnk_82DD0EC
.L_1ac5c:
	.4byte	gCurrentWarioEffect
.L_1ac60:
	.4byte	sStartingWarioEffect
.L_1ac64:
	.4byte	gWarioData
.L_1ac68:
	ldr	r1, .L_1ac78
	mov	r0, #1
	strb	r0, [r1, #3]
.L_1ac6e:
	strb	r4, [r1, #1]
.L_1ac70:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1ac78:
	.4byte	gWarioData


thumb_func_start func_801AC7C
func_801AC7C:
	push	{r4, lr}
	ldr	r3, .L_1acc8
	ldr	r2, .L_1accc
	ldr	r4, .L_1acd0
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
	mov	r3, #0
	ldrb	r0, [r4, #1]
	cmp	r0, #1
	bne	.L_1acd8
	ldrh	r2, [r4, #24]
	lsl	r1, r2, #16
	asr	r0, r1, #19
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r1, #0
	blt	.L_1acd4
	add	r0, r2, #0
	sub	r0, #8
	b	.L_1acd6
.L_1acc8:
	.4byte	gUnk_3001918
.L_1accc:
	.4byte	sUnk_82DDC18
.L_1acd0:
	.4byte	gWarioData
.L_1acd4:
	sub	r0, r2, #4
.L_1acd6:
	strh	r0, [r4, #24]
.L_1acd8:
	ldr	r2, .L_1acfc
	ldrh	r0, [r2, #20]
	sub	r0, r0, r3
	strh	r0, [r2, #20]
	mov	r0, #24
	ldrsh	r1, [r2, r0]
	mov	r0, #128	@ 0x80
	neg	r0, r0
	cmp	r1, r0
	bge	.L_1acf0
	ldr	r0, .L_1ad00
	strh	r0, [r2, #24]
.L_1acf0:
	ldrb	r0, [r2, #26]
	cmp	r0, #0
	bne	.L_1ad04
	bl	func_800FDBC
	b	.L_1ad06
.L_1acfc:
	.4byte	gWarioData
.L_1ad00:
	.2byte	0xff80
	.align	2, 0
.L_1ad04:
	ldrh	r0, [r2, #22]
.L_1ad06:
	lsl	r0, r0, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldr	r1, .L_1ad1c
	ldrh	r0, [r1, #18]
	add	r0, r0, r3
	strh	r0, [r1, #18]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_1ad1c:
	.4byte	gWarioData


thumb_func_start func_801AD20
func_801AD20:
	push	{r4, r5, lr}
	ldr	r4, .L_1ad6c
	ldr	r2, .L_1ad70
	ldr	r3, .L_1ad74
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
	ldrb	r1, [r0, #0]
	strb	r1, [r4, #17]
	mov	r5, #255	@ 0xff
	ldrh	r2, [r4, #2]
	mov	r0, #64	@ 0x40
	and	r0, r2
	cmp	r0, #0
	beq	.L_1ad78
	bl	func_8014C4C
	b	.L_1ada4
	.align	2, 0
.L_1ad6c:
	.4byte	gUnk_3001918
.L_1ad70:
	.4byte	sUnk_82DDC18
.L_1ad74:
	.4byte	gWarioData
.L_1ad78:
	mov	r0, #128	@ 0x80
	and	r0, r2
	cmp	r0, #0
	beq	.L_1ad86
	bl	func_8014930
	b	.L_1ada4
.L_1ad86:
	ldrh	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_1ad9c
	cmp	r1, #2
	bne	.L_1ad96
	bl	func_8014930
	b	.L_1ada4
.L_1ad96:
	bl	func_80143D8
	b	.L_1ada4
.L_1ad9c:
	cmp	r1, #0
	bne	.L_1ada8
	bl	func_8014758
.L_1ada4:
	lsl	r0, r0, #24
	lsr	r5, r0, #24
.L_1ada8:
	ldr	r4, .L_1add0
	ldrh	r0, [r4, #20]
	sub	r0, #48	@ 0x30
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	GetBackgroundCollisionAtPosition
	add	r1, r0, #0
	mov	r0, #255	@ 0xff
	and	r1, r0
	cmp	r1, #1
	bne	.L_1add4
	strb	r1, [r4, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r4, #4]
	mov	r0, #0
	bl	func_8016614
	b	.L_1ade6
.L_1add0:
	.4byte	gWarioData
.L_1add4:
	ldr	r0, .L_1adec
	ldrb	r0, [r0, #17]
	cmp	r0, #255	@ 0xff
	beq	.L_1ade6
	cmp	r5, #255	@ 0xff
	beq	.L_1ade6
	add	r0, r5, #0
	bl	func_801ABCC
.L_1ade6:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_1adec:
	.4byte	gUnk_3001918


thumb_func_start func_801ADF0
func_801ADF0:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	bl	func_800FF64
	ldr	r3, .L_1ae54
	ldrb	r1, [r3, #1]
	cmp	r1, #0
	bne	.L_1ae0a
	ldr	r0, .L_1ae58
	ldrb	r0, [r0, #3]
	cmp	r0, #3
	bls	.L_1ae3e
.L_1ae0a:
	ldr	r2, .L_1ae5c
	lsl	r0, r4, #2
	lsl	r1, r1, #3
	add	r0, r0, r1
	add	r0, r0, r2
	ldr	r2, [r0, #0]
	ldrb	r1, [r3, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r2, r2, r0
	ldr	r1, [r2, #0]
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	strh	r0, [r3, #40]	@ 0x28
	add	r1, #1
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	strh	r0, [r3, #48]	@ 0x30
	add	r1, #1
	str	r1, [r3, #36]	@ 0x24
	ldrh	r0, [r3, #40]	@ 0x28
	add	r1, r1, r0
	str	r1, [r3, #44]	@ 0x2c
	ldr	r0, [r2, #4]
	str	r0, [r3, #32]
.L_1ae3e:
	ldr	r0, .L_1ae60
.L_1ae40:
	mov	r1, #96	@ 0x60
	strh	r1, [r0, #0]
	ldr	r0, .L_1ae64
	mov	r1, #0
	mov	r2, #48	@ 0x30
	bl	func_800FD90
	pop	{r4}
	pop	{r0}
	bx	r0
.L_1ae54:
	.4byte	gWarioData
.L_1ae58:
	.4byte	gCurrentWarioEffect
.L_1ae5c:
	.4byte	sUnk_82DDBF0
.L_1ae60:
	.4byte	gWarioPaletteSize
.L_1ae64:
	.4byte	sUnk_82DE938


thumb_func_start func_801AE68
func_801AE68:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, .L_1aee0
	mov	r0, #0
	ldrsb	r0, [r7, r0]
	cmp	r0, #13
	beq	.L_1aed6
	ldr	r4, .L_1aee4
	ldr	r0, [r4, #0]
	mov	r8, r0
	mov	r5, #150	@ 0x96
	lsl	r5, r5, #1
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r6, [r4, #12]
	add	r0, r6, #0
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r4, .L_1aee8
	sub	r5, #44	@ 0x2c
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
	mov	r2, #20
	bl	m4aMPlayModDepthSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayModDepthSet
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #30
	bl	m4aMPlayLFOSpeedSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #30
	bl	m4aMPlayLFOSpeedSet
	mov	r0, #13
	strb	r0, [r7, #0]
.L_1aed6:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_1aee0:
	.4byte	gUnk_30031BC
.L_1aee4:
	.4byte	gMPlayTable
.L_1aee8:
	.4byte	0xFFFF


thumb_func_start func_801AEEC
func_801AEEC:
	push	{r4, lr}
	ldr	r3, .L_1af30
	ldr	r4, .L_1af34
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #0]
	ldr	r2, .L_1af38
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
	bne	.L_1af3c
	strb	r0, [r4, #26]
	b	.L_1af44
.L_1af30:
	.4byte	sUnk_82DDC18
.L_1af34:
	.4byte	gWarioData
.L_1af38:
	.4byte	sUnk_82DEB18
.L_1af3c:
	ldrb	r0, [r4, #26]
	cmp	r0, #1
	beq	.L_1af44
	strb	r1, [r4, #26]
.L_1af44:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
