.include "macros.s.inc"


thumb_func_start func_801D684
func_801D684:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r0, .L_1d710
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #2
	beq	.L_1d698
	b	.L_1d798
.L_1d698:
	mov	r0, #3
	bl	func_801E258
	ldr	r0, .L_1d714
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_1d724
	bl	SpriteCollisionProcess
	bl	func_80267C0
	mov	r6, #0
	ldr	r2, .L_1d718
	mov	r8, r2
	ldr	r5, .L_1d71c
	ldr	r3, .L_1d720
	mov	r9, r3
.L_1d6ba:
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	mov	r7, r8
	add	r4, r0, r7
	ldrh	r1, [r4, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d708
	add	r1, r5, #0
	add	r0, r4, #0
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3}
	stmia	r1!, {r2, r3}
	ldrb	r0, [r5, #23]
	lsl	r0, r0, #2
	add	r0, r9
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	bl	func_801D88C
	bl	func_801DCEC
	add	r1, r4, #0
	add	r0, r5, #0
	ldmia	r0!, {r2, r4, r7}
	stmia	r1!, {r2, r4, r7}
	ldmia	r0!, {r3, r4, r7}
	stmia	r1!, {r3, r4, r7}
	ldmia	r0!, {r2, r3, r4}
	stmia	r1!, {r2, r3, r4}
	ldmia	r0!, {r2, r7}
	stmia	r1!, {r2, r7}
.L_1d708:
	add	r6, #1
	cmp	r6, #23
	ble	.L_1d6ba
	b	.L_1d872
.L_1d710:
	.4byte	gSubGameMode
.L_1d714:
	.4byte	gWarioPauseTimer
.L_1d718:
	.4byte	gSpriteData
.L_1d71c:
	.4byte	gCurrentSprite
.L_1d720:
	.4byte	sPrimarySpriteAITable
.L_1d724:
	mov	r6, #0
	ldr	r5, .L_1d78c
.L_1d728:
	ldr	r1, .L_1d790
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r4, r0, r1
	ldrh	r1, [r4, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d782
	ldrb	r1, [r4, #26]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d782
	add	r1, r5, #0
	add	r0, r4, #0
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r3, r7}
	stmia	r1!, {r3, r7}
	ldr	r1, .L_1d794
	ldrb	r0, [r5, #23]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	bl	func_801D88C
	bl	func_801DCEC
	add	r1, r4, #0
	add	r0, r5, #0
	ldmia	r0!, {r2, r3, r4}
	stmia	r1!, {r2, r3, r4}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r4, r7}
	stmia	r1!, {r2, r4, r7}
	ldmia	r0!, {r3, r4}
	stmia	r1!, {r3, r4}
.L_1d782:
	add	r6, #1
	cmp	r6, #23
	ble	.L_1d728
	b	.L_1d872
	.align	2, 0
.L_1d78c:
	.4byte	gCurrentSprite
.L_1d790:
	.4byte	gSpriteData
.L_1d794:
	.4byte	sPrimarySpriteAITable
.L_1d798:
	cmp	r0, #8
	bne	.L_1d810
	mov	r0, #3
	bl	func_801E258
	mov	r6, #0
	ldr	r7, .L_1d804
	mov	r8, r7
	ldr	r5, .L_1d808
	ldr	r0, .L_1d80c
	mov	r9, r0
.L_1d7ae:
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	mov	r1, r8
	add	r4, r0, r1
	ldrh	r1, [r4, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d7fc
	add	r1, r5, #0
	add	r0, r4, #0
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3}
	stmia	r1!, {r2, r3}
	ldrb	r0, [r5, #23]
	lsl	r0, r0, #2
	add	r0, r9
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	bl	func_801D88C
	bl	func_801DCEC
	add	r1, r4, #0
	add	r0, r5, #0
	ldmia	r0!, {r2, r4, r7}
	stmia	r1!, {r2, r4, r7}
	ldmia	r0!, {r3, r4, r7}
	stmia	r1!, {r3, r4, r7}
	ldmia	r0!, {r2, r3, r4}
	stmia	r1!, {r2, r3, r4}
	ldmia	r0!, {r2, r7}
	stmia	r1!, {r2, r7}
.L_1d7fc:
	add	r6, #1
	cmp	r6, #23
	ble	.L_1d7ae
	b	.L_1d872
.L_1d804:
	.4byte	gSpriteData
.L_1d808:
	.4byte	gCurrentSprite
.L_1d80c:
	.4byte	sPrimarySpriteAITable
.L_1d810:
	mov	r0, #3
	bl	func_801E258
	mov	r6, #0
.L_1d818:
	ldr	r1, .L_1d880
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r4, r0, r1
	ldrh	r1, [r4, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_1d86c
	ldr	r5, .L_1d884
	add	r0, r5, #0
	add	r1, r4, #0
	ldmia	r1!, {r2, r3, r7}
	stmia	r0!, {r2, r3, r7}
	ldmia	r1!, {r2, r3, r7}
	stmia	r0!, {r2, r3, r7}
	ldmia	r1!, {r2, r3, r7}
	stmia	r0!, {r2, r3, r7}
	ldmia	r1!, {r3, r7}
	stmia	r0!, {r3, r7}
	ldrb	r0, [r5, #28]
	cmp	r0, #14
	bhi	.L_1d854
	ldr	r0, .L_1d888
	ldrb	r1, [r5, #23]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r0, [r1, #0]
	bl	_call_via_r0
.L_1d854:
	bl	func_801DCEC
	add	r1, r4, #0
	add	r0, r5, #0
	ldmia	r0!, {r2, r3, r4}
	stmia	r1!, {r2, r3, r4}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r4, r7}
	stmia	r1!, {r2, r4, r7}
	ldmia	r0!, {r3, r4}
	stmia	r1!, {r3, r4}
.L_1d86c:
	add	r6, #1
	cmp	r6, #23
	ble	.L_1d818
.L_1d872:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1d880:
	.4byte	gSpriteData
.L_1d884:
	.4byte	gCurrentSprite
.L_1d888:
	.4byte	sPrimarySpriteAITable


thumb_func_start func_801D88C
func_801D88C:
	ldr	r2, .L_1d8c0
	ldrb	r0, [r2, #22]
	add	r0, #1
	strb	r0, [r2, #22]
	ldrh	r1, [r2, #20]
	ldr	r3, [r2, #4]
	lsl	r1, r1, #3
	add	r1, r1, r3
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r1, r0
	bcs	.L_1d8be
	mov	r0, #1
	strb	r0, [r2, #22]
	ldrh	r0, [r2, #20]
	add	r0, #1
	strh	r0, [r2, #20]
	ldrh	r0, [r2, #20]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_1d8be
	strh	r0, [r2, #20]
.L_1d8be:
	bx	lr
.L_1d8c0:
	.4byte	gCurrentSprite


thumb_func_start func_801D8C4
func_801D8C4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_1d964
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bhi	.L_1d974
	mov	r4, #0
	ldr	r0, .L_1d968
	mov	r8, r0
	ldr	r5, .L_1d96c
	ldr	r6, .L_1d970
.L_1d8dc:
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	mov	r1, r8
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #3
	bne	.L_1d914
	add	r1, r5, #0
	add	r0, r2, #0
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3}
	stmia	r1!, {r2, r3}
	ldrh	r0, [r5, #20]
	ldr	r1, [r5, #4]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r6, #0]
	add	r0, r4, #0
	bl	func_801DA70
.L_1d914:
	add	r4, #1
	cmp	r4, #23
	ble	.L_1d8dc
	mov	r4, #0
	ldr	r7, .L_1d968
	mov	r8, r7
	ldr	r5, .L_1d96c
	ldr	r6, .L_1d970
.L_1d924:
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	mov	r1, r8
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #11
	bne	.L_1d95c
	add	r1, r5, #0
	add	r0, r2, #0
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3}
	stmia	r1!, {r2, r3}
	ldrh	r0, [r5, #20]
	ldr	r1, [r5, #4]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r6, #0]
	add	r0, r4, #0
	bl	func_801DA70
.L_1d95c:
	add	r4, #1
	cmp	r4, #23
	ble	.L_1d924
	b	.L_1da58
.L_1d964:
	.4byte	gCurrentStageNumber
.L_1d968:
	.4byte	gSpriteData
.L_1d96c:
	.4byte	gCurrentSprite
.L_1d970:
	.4byte	gUnk_3000A54
.L_1d974:
	mov	r4, #0
	ldr	r7, .L_1da64
	mov	r8, r7
	ldr	r5, .L_1da68
	ldr	r6, .L_1da6c
.L_1d97e:
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	mov	r1, r8
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #3
	bne	.L_1d9b6
	add	r1, r5, #0
	add	r0, r2, #0
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3}
	stmia	r1!, {r2, r3}
	ldrh	r0, [r5, #20]
	ldr	r1, [r5, #4]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r6, #0]
	add	r0, r4, #0
	bl	func_801DA70
.L_1d9b6:
	add	r4, #1
	cmp	r4, #23
	ble	.L_1d97e
	mov	r4, #0
	ldr	r7, .L_1da64
	mov	r8, r7
	ldr	r5, .L_1da68
	ldr	r6, .L_1da6c
.L_1d9c6:
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	mov	r1, r8
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #11
	bne	.L_1da04
	ldrb	r0, [r2, #23]
	cmp	r0, #14
	beq	.L_1da04
	add	r1, r5, #0
	add	r0, r2, #0
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3}
	stmia	r1!, {r2, r3}
	ldrh	r0, [r5, #20]
	ldr	r1, [r5, #4]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r6, #0]
	add	r0, r4, #0
	bl	func_801DA70
.L_1da04:
	add	r4, #1
	cmp	r4, #23
	ble	.L_1d9c6
	mov	r4, #0
	ldr	r7, .L_1da64
	mov	r8, r7
	ldr	r5, .L_1da68
	ldr	r6, .L_1da6c
.L_1da14:
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	mov	r1, r8
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #11
	bne	.L_1da52
	ldrb	r0, [r2, #23]
	cmp	r0, #14
	bne	.L_1da52
	add	r1, r5, #0
	add	r0, r2, #0
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3, r7}
	stmia	r1!, {r2, r3, r7}
	ldmia	r0!, {r2, r3}
	stmia	r1!, {r2, r3}
	ldrh	r0, [r5, #20]
	ldr	r1, [r5, #4]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r6, #0]
	add	r0, r4, #0
	bl	func_801DA70
.L_1da52:
	add	r4, #1
	cmp	r4, #23
	ble	.L_1da14
.L_1da58:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1da64:
	.4byte	gSpriteData
.L_1da68:
	.4byte	gCurrentSprite
.L_1da6c:
	.4byte	gUnk_3000A54


thumb_func_start func_801DA70
func_801DA70:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #36	@ 0x24
	mov	ip, r0
	ldr	r0, .L_1dbf4
	ldrb	r1, [r0, #0]
	mov	r8, r1
	ldr	r1, .L_1dbf8
	ldr	r6, [r1, #0]
	ldrh	r2, [r6, #0]
	mov	r9, r2
	add	r6, #2
	mov	r1, r9
	add	r1, r8
	cmp	r1, #127	@ 0x7f
	ble	.L_1da98
	b	.L_1dcce
.L_1da98:
	mov	r3, r8
	lsl	r0, r3, #3
	ldr	r3, .L_1dbfc
	add	r5, r0, r3
	ldr	r2, .L_1dc00
	ldrh	r1, [r2, #8]
	lsr	r1, r1, #2
	ldr	r0, .L_1dc04
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	str	r1, [sp, #0]
	ldrh	r1, [r2, #10]
	lsr	r1, r1, #2
	ldr	r0, .L_1dc08
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	sl, r1
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #4]
	mov	r0, #128	@ 0x80
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #8]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #7
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #12]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #6
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #16]
	ldrb	r1, [r2, #25]
	ldrb	r0, [r2, #27]
	add	r0, r1, r0
	str	r0, [sp, #20]
	lsl	r1, r1, #6
	str	r1, [sp, #24]
	ldrb	r0, [r2, #26]
	mov	r4, #15
	and	r4, r0
	ldr	r0, .L_1dc0c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_1db14
	cmp	r4, #0
	beq	.L_1db14
	sub	r4, #1
.L_1db14:
	mov	r0, r9
	add	r0, r8
	str	r0, [sp, #32]
	mov	r1, r9
	cmp	r1, #0
	bne	.L_1db22
	b	.L_1dc8a
.L_1db22:
	ldr	r1, .L_1dbfc
	mov	r7, #1
	mov	r2, r8
	lsl	r0, r2, #3
	add	r3, r0, r1
	mov	r0, #3
	and	r4, r0
	lsl	r4, r4, #2
	str	r4, [sp, #28]
	mov	r8, r9
.L_1db36:
	ldrh	r0, [r6, #0]
	add	r6, #2
	strh	r0, [r5, #0]
	add	r5, #2
	ldr	r1, [sp, #0]
	add	r0, r0, r1
	strb	r0, [r3, #0]
	ldrh	r4, [r6, #0]
	add	r6, #2
	strh	r4, [r5, #0]
	add	r5, #2
	mov	r2, sl
	add	r1, r4, r2
	ldr	r0, .L_1dc10
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_1dc14
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r6, #0]
	strh	r0, [r5, #0]
	add	r6, #2
	add	r5, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	ldr	r1, [sp, #28]
	orr	r0, r1
	lsr	r2, r0, #4
	ldr	r1, [sp, #20]
	add	r2, r2, r1
	lsl	r2, r2, #4
	mov	r1, #15
	and	r0, r1
	orr	r0, r2
	strb	r0, [r3, #5]
	ldrh	r2, [r3, #4]
	lsl	r1, r2, #22
	lsr	r1, r1, #22
	ldr	r0, [sp, #24]
	add	r1, r1, r0
	ldr	r0, .L_1dc18
	mov	r9, r0
	mov	r0, r9
	and	r1, r0
	ldr	r0, .L_1dc1c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #4]
	ldr	r1, [sp, #4]
	cmp	r1, #0
	beq	.L_1dbde
	ldrb	r2, [r3, #3]
	lsl	r0, r2, #27
	lsr	r0, r0, #31
	eor	r0, r7
	and	r0, r7
	lsl	r0, r0, #4
	mov	r1, #17
	neg	r1, r1
	and	r1, r2
	orr	r1, r0
	strb	r1, [r3, #3]
	ldrb	r0, [r3, #1]
	lsr	r0, r0, #6
	lsr	r1, r1, #6
	lsl	r0, r0, #2
	add	r1, r1, r0
	ldr	r2, .L_1dc20
	add	r1, r1, r2
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #3
	add	r1, r4, r1
	mov	r0, sl
	sub	r1, r0, r1
	ldr	r2, .L_1dc10
	and	r1, r2
	ldrh	r2, [r3, #2]
	ldr	r0, .L_1dc14
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
.L_1dbde:
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.L_1dc64
	ldr	r1, [sp, #12]
	cmp	r1, #0
	beq	.L_1dc24
	ldrb	r0, [r3, #1]
	mov	r2, #3
	orr	r0, r2
	b	.L_1dc2e
	.align	2, 0
.L_1dbf4:
	.4byte	gOamSlotsUsed
.L_1dbf8:
	.4byte	gUnk_3000A54
.L_1dbfc:
	.4byte	gOamBuffer
.L_1dc00:
	.4byte	gCurrentSprite
.L_1dc04:
	.4byte	gBg1YPosition
.L_1dc08:
	.4byte	gBg1XPosition
.L_1dc0c:
	.4byte	gDrawWarioOverBackground
.L_1dc10:
	.4byte	0x000001ff
.L_1dc14:
	.4byte	0xfffffe00
.L_1dc18:
	.4byte	0x000003ff
.L_1dc1c:
	.4byte	0xfffffc00
.L_1dc20:
	.4byte	sUnk_835299C
.L_1dc24:
	ldrb	r1, [r3, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	orr	r0, r7
.L_1dc2e:
	strb	r0, [r3, #1]
	mov	r1, ip
	asr	r0, r1, #4
	and	r0, r7
	lsl	r0, r0, #5
	ldrb	r2, [r3, #3]
	mov	r1, #33	@ 0x21
	neg	r1, r1
	and	r1, r2
	orr	r1, r0
	mov	r2, ip
	asr	r0, r2, #3
	and	r0, r7
	lsl	r0, r0, #4
	mov	r2, #17
	neg	r2, r2
	and	r1, r2
	orr	r1, r0
	mov	r0, #7
	mov	r2, ip
	and	r2, r0
	lsl	r2, r2, #1
	mov	r0, #15
	neg	r0, r0
	and	r1, r0
	orr	r1, r2
	strb	r1, [r3, #3]
.L_1dc64:
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.L_1dc78
	ldrb	r0, [r3, #1]
	mov	r1, #13
	neg	r1, r1
	and	r1, r0
	mov	r0, #4
	orr	r1, r0
	strb	r1, [r3, #1]
.L_1dc78:
	add	r5, #2
	add	r3, #8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	beq	.L_1dc8a
	b	.L_1db36
.L_1dc8a:
	add	r3, sp, #32
	ldrb	r0, [r3, #0]
	ldr	r3, .L_1dce0
	strb	r0, [r3, #0]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.L_1dcce
	mov	r1, ip
	lsl	r0, r1, #5
	ldr	r2, .L_1dce4
	add	r0, r0, r2
	ldr	r3, .L_1dce8
	ldrh	r1, [r3, #12]
	strh	r1, [r0, #6]
	mov	r0, ip
	lsl	r1, r0, #2
	add	r0, r1, #1
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrh	r2, [r3, #14]
	strh	r2, [r0, #6]
	add	r0, r1, #2
	lsl	r0, r0, #3
	ldr	r2, .L_1dce4
	add	r0, r0, r2
	ldrh	r2, [r3, #16]
	strh	r2, [r0, #6]
	add	r1, #3
	lsl	r1, r1, #3
	ldr	r3, .L_1dce4
	add	r1, r1, r3
	ldr	r2, .L_1dce8
	ldrh	r0, [r2, #18]
	strh	r0, [r1, #6]
.L_1dcce:
	add	sp, #36	@ 0x24
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1dce0:
	.4byte	gOamSlotsUsed
.L_1dce4:
	.4byte	gOamBuffer
.L_1dce8:
	.4byte	gCurrentSprite


thumb_func_start func_801DCEC
func_801DCEC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #12
	ldr	r1, .L_1dda0
	ldrh	r0, [r1, #0]
	mov	sl, r0
	mov	r0, #1
	mov	r2, sl
	and	r0, r2
	mov	ip, r1
	cmp	r0, #0
	bne	.L_1dd0c
	b	.L_1de64
.L_1dd0c:
	ldr	r0, .L_1dda4
	ldrh	r0, [r0, #0]
	mov	r8, r0
	ldr	r0, .L_1dda8
	ldrh	r0, [r0, #0]
	str	r0, [sp, #0]
	ldrh	r3, [r1, #8]
	mov	r9, r3
	ldrh	r7, [r1, #10]
	str	r7, [sp, #4]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	add	r3, r0, #0
	mov	r2, r8
	add	r1, r2, r3
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r7, r9
	add	r0, r7, r3
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	mov	r0, ip
	add	r0, #33	@ 0x21
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	sub	r0, r1, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	str	r0, [sp, #8]
	mov	r0, ip
	add	r0, #32
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	mov	r2, #160	@ 0xa0
	lsl	r2, r2, #2
	add	r0, r0, r2
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	ldr	r7, [sp, #0]
	add	r0, r7, r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r1, [sp, #4]
	add	r3, r1, r3
	lsl	r3, r3, #16
	mov	r1, ip
	add	r1, #34	@ 0x22
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #2
	sub	r2, r0, r1
	lsl	r2, r2, #16
	lsr	r4, r3, #16
	mov	r7, #240	@ 0xf0
	lsl	r7, r7, #2
	add	r1, r1, r7
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r2, r3
	bcs	.L_1ddac
	cmp	r4, r0
	bcs	.L_1ddac
	ldr	r0, [sp, #8]
	cmp	r0, r6
	bcs	.L_1ddac
	cmp	r6, r5
	bcs	.L_1ddac
	mov	r0, #2
	mov	r1, sl
	orr	r0, r1
	mov	r2, ip
	strh	r0, [r2, #0]
	b	.L_1de64
.L_1dda0:
	.4byte	gCurrentSprite
.L_1dda4:
	.4byte	gBg1YPosition
.L_1dda8:
	.4byte	gBg1XPosition
.L_1ddac:
	mov	r3, ip
	ldrh	r1, [r3, #0]
	ldr	r0, .L_1de30
	and	r0, r1
	strh	r0, [r3, #0]
	mov	r7, #160	@ 0xa0
	lsl	r7, r7, #2
	add	r2, r7, #0
	mov	r0, r8
	add	r1, r0, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r3, r9
	add	r0, r3, r2
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldr	r7, .L_1de34
	add	r3, r7, #0
	add	r0, r1, r3
	lsl	r0, r0, #16
	lsr	r6, r0, #16
	mov	r0, #152	@ 0x98
	lsl	r0, r0, #3
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r5, r1, #16
	ldr	r1, [sp, #0]
	add	r0, r1, r2
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r7, [sp, #4]
	add	r2, r7, r2
	lsl	r2, r2, #16
	add	r3, r0, r3
	lsl	r3, r3, #16
	lsr	r1, r2, #16
	mov	r7, #192	@ 0xc0
	lsl	r7, r7, #3
	add	r0, r0, r7
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r3, r2
	bcs	.L_1de0e
	cmp	r1, r0
	bcs	.L_1de0e
	cmp	r6, r4
	bcs	.L_1de0e
	cmp	r4, r5
	bcc	.L_1de64
.L_1de0e:
	mov	r3, ip
	ldrh	r1, [r3, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #8
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, #0
	bne	.L_1de64
	mov	r0, #16
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #0
	beq	.L_1de38
	strh	r2, [r3, #0]
	b	.L_1de64
.L_1de30:
	.4byte	0x0000fffd
.L_1de34:
	.4byte	0xfffffdc0
.L_1de38:
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #16
	strb	r0, [r1, #23]
	ldrb	r0, [r1, #29]
	cmp	r0, #0
	beq	.L_1de64
	ldr	r1, .L_1de74
	ldr	r0, .L_1de78
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	mov	r2, ip
	ldrb	r2, [r2, #24]
	add	r0, r0, r2
	add	r1, r0, r1
	ldrb	r2, [r1, #0]
	mov	r0, #15
	and	r0, r2
	cmp	r0, #1
	bne	.L_1de64
	sub	r0, r2, #1
	strb	r0, [r1, #0]
.L_1de64:
	add	sp, #12
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_1de74:
	.4byte	gPersistentSpriteData
.L_1de78:
	.4byte	gCurrentRoom


thumb_func_start func_801DE7C
func_801DE7C:
	push	{lr}
	bl	func_801DEC0
	ldr	r0, .L_1deb8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	bne	.L_1deb2
	bl	func_801E060
	ldr	r0, .L_1debc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_1deb2
	bl	func_801DFF8
	bl	func_801E0D4
	bl	func_801E1C0
	mov	r0, #1
	bl	func_801E258
	mov	r0, #2
	bl	func_801E258
.L_1deb2:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1deb8:
	.4byte	gPauseFlag
.L_1debc:
	.4byte	gHasTemporarySave


thumb_func_start func_801DEC0
func_801DEC0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, #0
	ldr	r6, .L_1dfc4
	ldr	r4, .L_1dfc8
	mov	r3, #16
	ldr	r2, .L_1dfcc
	mov	r1, #7
.L_1ded6:
	add	r0, r7, r4
	strb	r3, [r0, #0]
	add	r0, r7, r2
	strb	r1, [r0, #0]
	add	r7, #1
	cmp	r7, #31
	ble	.L_1ded6
	ldr	r2, .L_1dfd0
	ldr	r1, .L_1dfd4
	ldr	r0, [r1, #0]
	str	r0, [r2, #0]
	ldr	r0, .L_1dfd8
	str	r0, [r2, #4]
	ldr	r3, .L_1dfdc
	ldr	r0, [r3, #0]
	lsr	r0, r0, #1
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #24
	orr	r0, r5
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	ldr	r1, .L_1dfe0
	ldr	r0, [r1, #0]
	str	r0, [r2, #0]
	ldr	r0, .L_1dfe4
	str	r0, [r2, #4]
	ldr	r0, .L_1dfe8
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
	mov	r3, #255	@ 0xff
	mov	r9, r3
	ldrb	r0, [r6, #0]
	cmp	r0, #90	@ 0x5a
	ble	.L_1df1c
	mov	r0, #0
.L_1df1c:
	mov	r7, #0
	lsl	r1, r0, #2
	ldr	r4, .L_1dfec
	add	r0, r1, r4
	ldr	r0, [r0, #0]
	ldrb	r3, [r0, #0]
	mov	sl, r1
	cmp	r3, #0
	beq	.L_1dfb4
	add	r6, r2, #0
	mov	r8, r5
	mov	r0, #0
	mov	ip, r0
.L_1df36:
	add	r0, r1, r4
	ldr	r0, [r0, #0]
	add	r0, ip
	ldrb	r5, [r0, #1]
	ldr	r1, .L_1dfc8
	add	r0, r7, r1
	strb	r3, [r0, #0]
	ldr	r0, .L_1dfcc
	add	r2, r7, r0
	mov	r1, #7
	add	r0, r5, #0
	and	r0, r1
	strb	r0, [r2, #0]
	cmp	r5, r9
	beq	.L_1df9a
	mov	r9, r5
	cmp	r5, #8
	beq	.L_1df9a
	sub	r3, #16
	lsl	r2, r3, #2
	ldr	r1, .L_1dfd4
	add	r0, r2, r1
	ldr	r3, [r0, #0]
	lsl	r0, r5, #11
	ldr	r1, .L_1dff0
	add	r4, r0, r1
	ldr	r1, .L_1dfdc
	add	r0, r2, r1
	ldr	r1, [r0, #0]
	str	r3, [r6, #0]
	str	r4, [r6, #4]
	lsr	r0, r1, #1
	mov	r3, r8
	orr	r0, r3
	str	r0, [r6, #8]
	ldr	r0, [r6, #8]
	ldr	r0, .L_1dfe0
	add	r2, r2, r0
	ldr	r2, [r2, #0]
	lsl	r0, r5, #5
	ldr	r3, .L_1dff4
	add	r4, r0, r3
	lsr	r1, r1, #11
	str	r2, [r6, #0]
	str	r4, [r6, #4]
	lsl	r1, r1, #4
	mov	r0, r8
	orr	r1, r0
	str	r1, [r6, #8]
	ldr	r0, [r6, #8]
.L_1df9a:
	mov	r1, #2
	add	ip, r1
	add	r7, #1
	cmp	r7, #31
	bgt	.L_1dfb4
	mov	r1, sl
	ldr	r4, .L_1dfec
	add	r0, r1, r4
	ldr	r0, [r0, #0]
	add	r0, ip
	ldrb	r3, [r0, #0]
	cmp	r3, #0
	bne	.L_1df36
.L_1dfb4:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1dfc4:
	.4byte	gUnk_3000027
.L_1dfc8:
	.4byte	gUnk_3000524
.L_1dfcc:
	.4byte	gUnk_3000544
.L_1dfd0:
	.4byte	0x040000d4
.L_1dfd4:
	.4byte	sUnk_878EBF0
.L_1dfd8:
	.4byte	0x06017800
.L_1dfdc:
	.4byte	sUnk_83B2C90
.L_1dfe0:
	.4byte	sUnk_878EDB4
.L_1dfe4:
	.4byte	0x050003e0
.L_1dfe8:
	.4byte	0x80000010
.L_1dfec:
	.4byte	sUnk_878EF78
.L_1dff0:
	.4byte	0x06014000
.L_1dff4:
	.4byte	0x05000300


thumb_func_start func_801DFF8
func_801DFF8:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_1e02c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	beq	.L_1e038
	mov	r2, #0
	ldr	r6, .L_1e030
	ldr	r5, .L_1e034
	mov	r4, #15
.L_1e00e:
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #6
	add	r0, r2, r0
	add	r3, r0, r6
	ldrb	r1, [r3, #0]
	add	r0, r1, #0
	and	r0, r4
	cmp	r0, #1
	bne	.L_1e024
	sub	r0, r1, #1
	strb	r0, [r3, #0]
.L_1e024:
	add	r2, #1
	cmp	r2, #63	@ 0x3f
	ble	.L_1e00e
	b	.L_1e056
.L_1e02c:
	.4byte	gUnk_3000C3F
.L_1e030:
	.4byte	gPersistentSpriteData
.L_1e034:
	.4byte	gCurrentRoom
.L_1e038:
	mov	r1, #0
	ldr	r4, .L_1e05c
	mov	r3, #0
.L_1e03e:
	lsl	r0, r1, #6
	add	r1, #1
	mov	r2, #63	@ 0x3f
	add	r0, r0, r4
	add	r0, #63	@ 0x3f
.L_1e048:
	strb	r3, [r0, #0]
	sub	r0, #1
	sub	r2, #1
	cmp	r2, #0
	bge	.L_1e048
	cmp	r1, #15
	ble	.L_1e03e
.L_1e056:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_1e05c:
	.4byte	gPersistentSpriteData


thumb_func_start func_801E060
func_801E060:
	push	{r4, r5, r6, r7, lr}
	ldr	r7, .L_1e0cc
	mov	r5, #255	@ 0xff
	ldr	r2, .L_1e0d0
	mov	r4, #0
	add	r6, r2, #1
	mov	r3, #63	@ 0x3f
.L_1e06e:
	ldrb	r0, [r2, #0]
	orr	r0, r5
	strb	r0, [r2, #0]
	add	r1, r4, r6
	ldrb	r0, [r1, #0]
	orr	r0, r5
	strb	r0, [r1, #0]
	ldrb	r0, [r2, #2]
	orr	r0, r5
	strb	r0, [r2, #2]
	add	r2, #3
	add	r4, #3
	sub	r3, #1
	cmp	r3, #0
	bge	.L_1e06e
	ldr	r0, [r7, #28]
	ldrb	r0, [r0, #0]
	cmp	r0, #255	@ 0xff
	beq	.L_1e0c6
	add	r4, r7, #0
	mov	r3, #0
	ldr	r2, .L_1e0d0
	add	r6, r2, #0
	add	r6, #189	@ 0xbd
	add	r5, r2, #1
.L_1e0a0:
	strb	r0, [r2, #0]
	add	r1, r3, r5
	ldr	r0, [r4, #28]
	add	r0, r3, r0
	ldrb	r0, [r0, #1]
	strb	r0, [r1, #0]
	ldr	r0, [r4, #28]
	add	r0, r3, r0
	ldrb	r0, [r0, #2]
	strb	r0, [r2, #2]
	add	r3, #3
	add	r2, #3
	cmp	r2, r6
	bgt	.L_1e0c6
	ldr	r0, [r4, #28]
	add	r0, r3, r0
	ldrb	r0, [r0, #0]
	cmp	r0, #255	@ 0xff
	bne	.L_1e0a0
.L_1e0c6:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_1e0cc:
	.4byte	gCurrentRoomHeader
.L_1e0d0:
	.4byte	gUnk_3000964


thumb_func_start func_801E0D4
func_801E0D4:
	ldr	r1, .L_1e0e8
	mov	r2, #0
	mov	r3, #253	@ 0xfd
	lsl	r3, r3, #2
	add	r0, r1, r3
.L_1e0de:
	strh	r2, [r0, #0]
	sub	r0, #44	@ 0x2c
	cmp	r0, r1
	bge	.L_1e0de
	bx	lr
.L_1e0e8:
	.4byte	gSpriteData


thumb_func_start func_801E0EC
func_801E0EC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	add	r5, r0, #0
	str	r2, [sp, #0]
	lsl	r3, r3, #24
	lsr	r7, r3, #24
	mov	r4, #0
	ldr	r0, .L_1e160
	mov	r9, r0
	mov	r2, #44	@ 0x2c
	mov	r8, r2
	mov	r6, #1
	ldr	r2, .L_1e164
	lsl	r0, r5, #1
	add	r0, r0, r5
	add	r0, r0, r2
	mov	ip, r0
	lsl	r1, r1, #6
	add	r1, #64	@ 0x40
	mov	sl, r1
.L_1e11c:
	mov	r0, r8
	mul	r0, r4
	mov	r1, r9
	add	r3, r0, r1
	ldrh	r0, [r3, #0]
	add	r2, r6, #0
	and	r2, r0
	cmp	r2, #0
	bne	.L_1e1a6
	ldr	r1, .L_1e168
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #6
	add	r0, r5, r0
	ldr	r1, .L_1e16c
	add	r0, r0, r1
	add	r1, r7, #1
	strb	r1, [r0, #0]
	mov	r1, ip
	ldrb	r0, [r1, #0]
	cmp	r0, #16
	bls	.L_1e178
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	add	r1, r0, #0
	sub	r1, #16
	ldr	r2, .L_1e170
	add	r0, r1, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #25]
	ldr	r0, .L_1e174
	add	r1, r1, r0
	ldrb	r0, [r1, #0]
	b	.L_1e17c
.L_1e160:
	.4byte	gSpriteData
.L_1e164:
	.4byte	gUnk_3000964 + 2
.L_1e168:
	.4byte	gCurrentRoom
.L_1e16c:
	.4byte	gPersistentSpriteData
.L_1e170:
	.4byte	gUnk_3000544
.L_1e174:
	.4byte	gUnk_3000524
.L_1e178:
	strb	r2, [r3, #25]
	sub	r0, #1
.L_1e17c:
	strb	r0, [r3, #23]
	mov	r1, r8
	mul	r1, r4
	add	r1, r9
	strh	r6, [r1, #0]
	mov	r2, sl
	strh	r2, [r1, #8]
	ldr	r2, [sp, #0]
	lsl	r0, r2, #6
	add	r0, #32
	strh	r0, [r1, #10]
	strb	r5, [r1, #24]
	mov	r0, #2
	strb	r0, [r1, #26]
	lsr	r0, r7, #4
	strb	r0, [r1, #28]
	strb	r6, [r1, #29]
	mov	r0, #0
	strb	r0, [r1, #27]
	strb	r6, [r1, #31]
	b	.L_1e1b0
.L_1e1a6:
	add	r0, r4, #1
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #23
	bls	.L_1e11c
.L_1e1b0:
	add	sp, #4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_801E1C0
func_801E1C0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, .L_1e244
	ldrh	r0, [r0, #0]
	lsr	r7, r0, #6
	ldr	r0, .L_1e248
	ldrh	r0, [r0, #0]
	lsr	r6, r0, #6
	mov	r0, #9
	add	r0, r0, r7
	mov	r9, r0
	mov	r0, #15
	add	r0, r0, r6
	mov	r8, r0
	mov	r4, #0
	ldr	r2, .L_1e24c
	ldrb	r1, [r2, #0]
	cmp	r1, #255	@ 0xff
	beq	.L_1e234
	ldr	r0, .L_1e250
	mov	sl, r0
	mov	r5, #0
.L_1e1f2:
	ldr	r0, .L_1e254
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	add	r0, r4, r0
	add	r0, sl
	ldrb	r3, [r0, #0]
	mov	r0, #15
	and	r0, r3
	cmp	r0, #0
	bne	.L_1e222
	add	r0, r2, #1
	add	r0, r5, r0
	ldrb	r2, [r0, #0]
	cmp	r7, r1
	bgt	.L_1e222
	cmp	r1, r9
	bgt	.L_1e222
	cmp	r6, r2
	bgt	.L_1e222
	cmp	r2, r8
	bgt	.L_1e222
	add	r0, r4, #0
	bl	func_801E0EC
.L_1e222:
	add	r5, #3
	add	r4, #1
	cmp	r4, #63	@ 0x3f
	bgt	.L_1e234
	ldr	r2, .L_1e24c
	add	r0, r5, r2
	ldrb	r1, [r0, #0]
	cmp	r1, #255	@ 0xff
	bne	.L_1e1f2
.L_1e234:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1e244:
	.4byte	gBg1YPosition
.L_1e248:
	.4byte	gBg1XPosition
.L_1e24c:
	.4byte	gUnk_3000964
.L_1e250:
	.4byte	gPersistentSpriteData
.L_1e254:
	.4byte	gCurrentRoom


thumb_func_start func_801E258
func_801E258:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r1, .L_1e2e4
	ldrh	r3, [r1, #0]
	lsr	r3, r3, #6
	ldr	r1, .L_1e2e8
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #6
	sub	r7, r1, r0
	add	r2, r0, #0
	add	r2, #15
	add	r1, r1, r2
	mov	sl, r1
	sub	r6, r3, r0
	add	r0, #9
	add	r3, r3, r0
	mov	r9, r3
	cmp	r7, #0
	bge	.L_1e286
	mov	r7, #0
.L_1e286:
	cmp	r6, #0
	bge	.L_1e28c
	mov	r6, #0
.L_1e28c:
	mov	r5, #0
	ldr	r0, .L_1e2ec
	mov	r8, r0
.L_1e292:
	mov	r0, r8
	ldrb	r3, [r0, #0]
	cmp	r3, #255	@ 0xff
	beq	.L_1e318
	ldr	r1, .L_1e2f0
	ldr	r0, .L_1e2f4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	add	r0, r5, r0
	add	r0, r0, r1
	ldrb	r4, [r0, #0]
	mov	r0, #15
	and	r0, r4
	cmp	r0, #0
	bne	.L_1e30e
	mov	r0, r8
	ldrb	r2, [r0, #1]
	cmp	sl, r2
	bne	.L_1e2c0
	cmp	r6, r3
	bgt	.L_1e2c0
	cmp	r3, r9
	ble	.L_1e2d8
.L_1e2c0:
	cmp	r7, r2
	bne	.L_1e2cc
	cmp	r6, r3
	bgt	.L_1e2cc
	cmp	r3, r9
	ble	.L_1e2d8
.L_1e2cc:
	cmp	r9, r3
	bne	.L_1e2f8
	cmp	r7, r2
	bgt	.L_1e2f8
	cmp	r2, sl
	bgt	.L_1e2f8
.L_1e2d8:
	add	r0, r5, #0
	add	r1, r3, #0
	add	r3, r4, #0
	bl	func_801E0EC
	b	.L_1e30e
.L_1e2e4:
	.4byte	gBg1YPosition
.L_1e2e8:
	.4byte	gBg1XPosition
.L_1e2ec:
	.4byte	gUnk_3000964
.L_1e2f0:
	.4byte	gPersistentSpriteData
.L_1e2f4:
	.4byte	gCurrentRoom
.L_1e2f8:
	cmp	r6, r3
	bne	.L_1e30e
	cmp	r7, r2
	bgt	.L_1e30e
	cmp	r2, sl
	bgt	.L_1e30e
	add	r0, r5, #0
	add	r1, r3, #0
	add	r3, r4, #0
	bl	func_801E0EC
.L_1e30e:
	mov	r0, #3
	add	r8, r0
	add	r5, #1
	cmp	r5, #63	@ 0x3f
	ble	.L_1e292
.L_1e318:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteSpawnAsChild
SpriteSpawnAsChild:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r4, [sp, #32]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	ip, r0
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	mov	r8, r1
	lsl	r2, r2, #24
	lsr	r6, r2, #24
	lsl	r3, r3, #16
	lsr	r7, r3, #16
	lsl	r4, r4, #16
	lsr	r5, r4, #16
	mov	r3, #0
	ldr	r0, .L_1e38c
	mov	r9, r0
	mov	r1, #1
	mov	sl, r1
	mov	r4, #0
.L_1e358:
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	mov	r1, r9
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_1e390
	mov	r0, #23
	strh	r0, [r2, #0]
	strb	r6, [r2, #25]
	mov	r0, ip
	strb	r0, [r2, #23]
	strh	r7, [r2, #8]
	strh	r5, [r2, #10]
	mov	r1, r8
	strb	r1, [r2, #24]
	mov	r0, #2
	strb	r0, [r2, #26]
	strb	r4, [r2, #28]
	strb	r4, [r2, #29]
	strb	r4, [r2, #27]
	mov	r0, sl
	strb	r0, [r2, #31]
	b	.L_1e39a
.L_1e38c:
	.4byte	gSpriteData
.L_1e390:
	add	r0, r3, #1
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #23
	bls	.L_1e358
.L_1e39a:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start SpawnPrimarySpriteWithStatus
SpawnPrimarySpriteWithStatus:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r4, [sp, #32]
	ldr	r5, [sp, #36]	@ 0x24
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	r8, r0
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	mov	r9, r1
	lsl	r2, r2, #24
	lsr	r7, r2, #24
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	ip, r3
	lsl	r4, r4, #16
	lsr	r6, r4, #16
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	mov	r3, #0
	ldr	r0, .L_1e414
	mov	sl, r0
	mov	r0, #23
	mov	r4, #0
	orr	r5, r0
.L_1e3e0:
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	mov	r1, sl
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_1e418
	strh	r5, [r2, #0]
	strb	r7, [r2, #25]
	mov	r0, r8
	strb	r0, [r2, #23]
	mov	r1, ip
	strh	r1, [r2, #8]
	strh	r6, [r2, #10]
	mov	r0, r9
	strb	r0, [r2, #24]
	mov	r0, #2
	strb	r0, [r2, #26]
	strb	r4, [r2, #28]
	strb	r4, [r2, #29]
	strb	r4, [r2, #27]
	mov	r1, #1
	strb	r1, [r2, #31]
	b	.L_1e422
.L_1e414:
	.4byte	gSpriteData
.L_1e418:
	add	r0, r3, #1
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #23
	bls	.L_1e3e0
.L_1e422:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_801E430
func_801E430:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r4, [sp, #32]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	ip, r0
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	mov	r8, r1
	lsl	r2, r2, #24
	lsr	r6, r2, #24
	lsl	r3, r3, #16
	lsr	r7, r3, #16
	lsl	r4, r4, #16
	lsr	r5, r4, #16
	mov	r3, #0
	ldr	r0, .L_1e494
	mov	r9, r0
	mov	r1, #1
	mov	sl, r1
	mov	r4, #0
.L_1e460:
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	mov	r1, r9
	add	r2, r0, r1
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_1e498
	mov	r0, #23
	strh	r0, [r2, #0]
	strb	r6, [r2, #25]
	mov	r0, ip
	strb	r0, [r2, #23]
	strh	r7, [r2, #8]
	strh	r5, [r2, #10]
	mov	r1, r8
	strb	r1, [r2, #24]
	mov	r0, #130	@ 0x82
	strb	r0, [r2, #26]
	strb	r4, [r2, #28]
	strb	r4, [r2, #29]
	strb	r4, [r2, #27]
	mov	r0, sl
	strb	r0, [r2, #31]
	b	.L_1e4a2
.L_1e494:
	.4byte	gSpriteData
.L_1e498:
	add	r0, r3, #1
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #23
	bls	.L_1e460
.L_1e4a2:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0

	.align 2, 0
