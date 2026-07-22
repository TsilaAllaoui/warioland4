.include "macros.s.inc"


thumb_func_start func_8045A28
func_8045A28:
	push	{r4, r5, r6, lr}
	mov	r6, sl
	mov	r5, r9
	mov	r4, r8
	push	{r4, r5, r6}
	ldr	r0, .L_45a9c
	ldrh	r6, [r0, #8]
	ldrh	r4, [r0, #10]
	ldr	r0, .L_45aa0
	mov	sl, r0
	mov	r1, #3
	mov	r9, r1
	strb	r1, [r0, #0]
	sub	r5, r6, #4
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	sub	r0, r4, #4
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	add	r0, r5, #0
	mov	r1, r8
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r4, #4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	add	r0, r5, #0
	add	r1, r4, #0
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	sub	r6, #68	@ 0x44
	lsl	r6, r6, #16
	lsr	r6, r6, #16
	add	r0, r6, #0
	add	r1, r4, #0
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r0, r6, #0
	mov	r1, r8
	bl	func_806D5C0
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_45a9c:
	.4byte	gCurrentSprite
.L_45aa0:
	.4byte	gSpriteAiCollisionOffset


thumb_func_start func_8045AA4
func_8045AA4:
	push	{r4, r5, r6, lr}
	mov	r6, sl
	mov	r5, r9
	mov	r4, r8
	push	{r4, r5, r6}
	ldr	r0, .L_45b18
	ldrh	r6, [r0, #8]
	ldrh	r4, [r0, #10]
	ldr	r0, .L_45b1c
	mov	sl, r0
	mov	r1, #2
	mov	r9, r1
	strb	r1, [r0, #0]
	sub	r5, r6, #4
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	sub	r0, r4, #4
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	add	r0, r5, #0
	mov	r1, r8
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r4, #4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	add	r0, r5, #0
	add	r1, r4, #0
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	sub	r6, #68	@ 0x44
	lsl	r6, r6, #16
	lsr	r6, r6, #16
	add	r0, r6, #0
	add	r1, r4, #0
	bl	func_806D5C0
	mov	r0, r9
	mov	r1, sl
	strb	r0, [r1, #0]
	add	r0, r6, #0
	mov	r1, r8
	bl	func_806D5C0
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_45b18:
	.4byte	gCurrentSprite
.L_45b1c:
	.4byte	gSpriteAiCollisionOffset


thumb_func_start func_8045B20
func_8045B20:
	push	{r4, lr}
	ldr	r0, .L_45b8c
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r4, ip
	strh	r0, [r4, #0]
	mov	r0, #25
	strb	r0, [r4, #30]
	mov	r1, ip
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #16
	strb	r1, [r0, #0]
	add	r4, #35	@ 0x23
	mov	r0, #124	@ 0x7c
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r4, #2
	mov	r0, #60	@ 0x3c
	strb	r0, [r4, #0]
	add	r4, #1
	mov	r0, #56	@ 0x38
	strb	r0, [r4, #0]
	ldr	r0, .L_45b90
	mov	r4, ip
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	strb	r1, [r4, #28]
	ldrh	r0, [r4, #10]
	add	r0, #32
	strh	r0, [r4, #10]
	mov	r0, ip
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bl	func_8045A28
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_45b8c:
	.4byte	gCurrentSprite
.L_45b90:
	.4byte	sUnk_83C959C


thumb_func_start func_8045B94
func_8045B94:
	push	{r4, lr}
	ldr	r4, .L_45bcc
	ldr	r0, .L_45bd0
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	bl	func_8045AA4
	ldr	r1, .L_45bd4
	ldr	r0, .L_45bd8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_45bcc:
	.4byte	gCurrentSprite
.L_45bd0:
	.4byte	sUnk_83C95AC
.L_45bd4:
	.4byte	gPersistentSpriteData
.L_45bd8:
	.4byte	gCurrentRoom


thumb_func_start func_8045BDC
func_8045BDC:
	ldr	r2, .L_45bf8
	mov	r0, #0
	strb	r0, [r2, #31]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_45bf6
	mov	r0, #108	@ 0x6c
	strb	r0, [r2, #28]
.L_45bf6:
	bx	lr
.L_45bf8:
	.4byte	gCurrentSprite


thumb_func_start func_8045BFC
func_8045BFC:
	push	{lr}
	ldr	r0, .L_45c20
	ldr	r1, .L_45c24
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #109	@ 0x6d
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #43	@ 0x2b
	strb	r1, [r0, #0]
	mov	r0, #251	@ 0xfb
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_45c20:
	.4byte	gCurrentSprite
.L_45c24:
	.4byte	sUnk_83C9614


thumb_func_start func_8045C28
func_8045C28:
	ldr	r2, .L_45c40
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_45c3e
	strh	r0, [r2, #0]
.L_45c3e:
	bx	lr
.L_45c40:
	.4byte	gCurrentSprite


thumb_func_start SpriteDiceBlock
SpriteDiceBlock:
	push	{lr}
	ldr	r1, .L_45c60
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #50	@ 0x32
	beq	.L_45c78
	cmp	r0, #50	@ 0x32
	bgt	.L_45c64
	cmp	r0, #0
	beq	.L_45c6e
	cmp	r0, #49	@ 0x31
	beq	.L_45c74
	b	.L_45c8e
.L_45c60:
	.4byte	gCurrentSprite
.L_45c64:
	cmp	r0, #108	@ 0x6c
	beq	.L_45c82
	cmp	r0, #109	@ 0x6d
	beq	.L_45c86
	b	.L_45c8e
.L_45c6e:
	bl	func_8045B20
	b	.L_45c8e
.L_45c74:
	bl	func_8045B94
.L_45c78:
	bl	func_8045BDC
	bl	func_8026838
	b	.L_45c8e
.L_45c82:
	bl	func_8045BFC
.L_45c86:
	bl	func_8045C28
	bl	func_8026838
.L_45c8e:
	pop	{r0}
	bx	r0
	.align	2, 0
