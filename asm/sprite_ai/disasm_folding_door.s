.include "macros.s.inc"


thumb_func_start func_8059834
func_8059834:
	push	{r4, r5, r6, lr}
	mov	r6, sl
	mov	r5, r9
	mov	r4, r8
	push	{r4, r5, r6}
	ldr	r0, .L_598f0
	ldrh	r5, [r0, #8]
	ldrh	r6, [r0, #10]
	ldr	r0, .L_598f4
	mov	sl, r0
	mov	r1, #3
	mov	r9, r1
	strb	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	neg	r0, r0
	add	r0, r0, r6
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	add	r0, r5, #0
	mov	r1, r8
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r6, #64	@ 0x40
	lsl	r6, r6, #16
	lsr	r6, r6, #16
	add	r0, r5, #0
	add	r1, r6, #0
	bl	func_806D5C0
	add	r4, r5, #0
	add	r4, #64	@ 0x40
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r0, r4, #0
	mov	r1, r8
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r1, r6, #0
	bl	func_806D5C0
	add	r4, r5, #0
	add	r4, #128	@ 0x80
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r0, r4, #0
	mov	r1, r8
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r1, r6, #0
	bl	func_806D5C0
	add	r5, #192	@ 0xc0
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r0, r5, #0
	mov	r1, r8
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r1, r6, #0
	bl	func_806D5C0
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_598f0:
	.4byte	gCurrentSprite
.L_598f4:
	.4byte	gSpriteAiCollisionOffset


thumb_func_start func_80598F8
func_80598F8:
	push	{r4, r5, r6, lr}
	mov	r6, sl
	mov	r5, r9
	mov	r4, r8
	push	{r4, r5, r6}
	ldr	r0, .L_599b4
	ldrh	r5, [r0, #8]
	ldrh	r6, [r0, #10]
	ldr	r0, .L_599b8
	mov	sl, r0
	mov	r1, #2
	mov	r9, r1
	strb	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	neg	r0, r0
	add	r0, r0, r6
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	add	r0, r5, #0
	mov	r1, r8
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r6, #64	@ 0x40
	lsl	r6, r6, #16
	lsr	r6, r6, #16
	add	r0, r5, #0
	add	r1, r6, #0
	bl	func_806D5C0
	add	r4, r5, #0
	add	r4, #64	@ 0x40
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r0, r4, #0
	mov	r1, r8
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r1, r6, #0
	bl	func_806D5C0
	add	r4, r5, #0
	add	r4, #128	@ 0x80
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r0, r4, #0
	mov	r1, r8
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r1, r6, #0
	bl	func_806D5C0
	add	r5, #192	@ 0xc0
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r0, r5, #0
	mov	r1, r8
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r1, r6, #0
	bl	func_806D5C0
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_599b4:
	.4byte	gCurrentSprite
.L_599b8:
	.4byte	gSpriteAiCollisionOffset


thumb_func_start func_80599BC
func_80599BC:
	push	{lr}
	ldr	r0, .L_59a18
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #30]
	mov	r0, ip
	add	r0, #32
	strb	r2, [r0, #0]
	add	r1, #33	@ 0x21
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #24
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_59a1c
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #1
	strb	r0, [r1, #26]
	bl	func_8059834
	pop	{r0}
	bx	r0
	.align	2, 0
.L_59a18:
	.4byte	gCurrentSprite
.L_59a1c:
	.4byte	sUnk_83DD720


thumb_func_start func_8059A20
func_8059A20:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_59a4c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_59a90
	mov	r7, #0
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	ldr	r0, .L_59a50
	ldrh	r2, [r0, #20]
	ldrh	r4, [r0, #18]
	ldr	r1, .L_59a54
	ldrh	r0, [r1, #8]
	add	r0, #192	@ 0xc0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r3, [r1, #10]
	add	r5, r1, #0
	cmp	r0, r2
	bls	.L_59a58
	sub	r0, r0, r2
	b	.L_59a5a
.L_59a4c:
	.4byte	gSwitchPressed
.L_59a50:
	.4byte	gWarioData
.L_59a54:
	.4byte	gCurrentSprite
.L_59a58:
	sub	r0, r2, r0
.L_59a5a:
	cmp	r0, #128	@ 0x80
	bge	.L_59a90
	cmp	r3, r4
	bls	.L_59a6a
	sub	r0, r3, r4
	cmp	r0, r6
	bge	.L_59a72
	b	.L_59a76
.L_59a6a:
	sub	r0, r4, r3
	cmp	r0, r6
	bge	.L_59a72
	mov	r7, #8
.L_59a72:
	cmp	r7, #0
	beq	.L_59a90
.L_59a76:
	mov	r1, #0
	mov	r0, #18
	strb	r0, [r5, #28]
	add	r2, r5, #0
	add	r2, #39	@ 0x27
	mov	r0, #24
	strb	r0, [r2, #0]
	ldr	r0, .L_59a98
	str	r0, [r5, #4]
	strb	r1, [r5, #22]
	strh	r1, [r5, #20]
	bl	func_80598F8
.L_59a90:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_59a98:
	.4byte	sUnk_83DD730


thumb_func_start func_8059A9C
func_8059A9C:
	ldr	r2, .L_59ac0
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_59abc
	mov	r0, #24
	strb	r0, [r2, #28]
	ldr	r0, .L_59ac4
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
.L_59abc:
	bx	lr
	.align	2, 0
.L_59ac0:
	.4byte	gCurrentSprite
.L_59ac4:
	.4byte	sUnk_83DD758


thumb_func_start SpriteFoldingDoor
SpriteFoldingDoor:
	push	{lr}
	ldr	r0, .L_59adc
	ldrb	r0, [r0, #28]
	cmp	r0, #16
	beq	.L_59aec
	cmp	r0, #16
	bgt	.L_59ae0
	cmp	r0, #0
	beq	.L_59ae6
	b	.L_59af6
.L_59adc:
	.4byte	gCurrentSprite
.L_59ae0:
	cmp	r0, #18
	beq	.L_59af2
	b	.L_59af6
.L_59ae6:
	bl	func_80599BC
	b	.L_59af6
.L_59aec:
	bl	func_8059A20
	b	.L_59af6
.L_59af2:
	bl	func_8059A9C
.L_59af6:
	pop	{r0}
	bx	r0
	.align	2, 0
