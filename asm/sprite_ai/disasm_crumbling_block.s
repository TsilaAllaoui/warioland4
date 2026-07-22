.include "macros.s.inc"


thumb_func_start func_80699D8
func_80699D8:
	push	{r4, r5, r6, lr}
	mov	r6, sl
	mov	r5, r9
	mov	r4, r8
	push	{r4, r5, r6}
	ldr	r0, .L_69a4c
	ldrh	r6, [r0, #8]
	ldrh	r4, [r0, #10]
	ldr	r0, .L_69a50
	mov	sl, r0
	mov	r1, #3
	mov	r9, r1
	strb	r1, [r0, #0]
	add	r5, r6, #4
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
	sub	r6, #4
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
.L_69a4c:
	.4byte	gCurrentSprite
.L_69a50:
	.4byte	gSpriteAiCollisionOffset


thumb_func_start func_8069A54
func_8069A54:
	push	{r4, r5, r6, lr}
	mov	r6, sl
	mov	r5, r9
	mov	r4, r8
	push	{r4, r5, r6}
	ldr	r0, .L_69ac8
	ldrh	r6, [r0, #8]
	ldrh	r4, [r0, #10]
	ldr	r0, .L_69acc
	mov	sl, r0
	mov	r1, #2
	mov	r9, r1
	strb	r1, [r0, #0]
	add	r5, r6, #4
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
	sub	r6, #4
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
.L_69ac8:
	.4byte	gCurrentSprite
.L_69acc:
	.4byte	gSpriteAiCollisionOffset


thumb_func_start func_8069AD0
func_8069AD0:
	push	{r4, lr}
	ldr	r0, .L_69b34
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #6
	strb	r0, [r1, #30]
	add	r1, #32
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	mov	r1, #28
	strb	r1, [r0, #0]
	mov	r4, ip
	add	r4, #37	@ 0x25
	mov	r0, #32
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #38	@ 0x26
	strb	r1, [r0, #0]
	ldr	r0, .L_69b38
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	ldrh	r0, [r1, #8]
	sub	r0, #32
	strh	r0, [r1, #8]
	bl	func_80699D8
	pop	{r4}
	pop	{r0}
	bx	r0
.L_69b34:
	.4byte	gCurrentSprite
.L_69b38:
	.4byte	sUnk_83F122C


thumb_func_start func_8069B3C
func_8069B3C:
	push	{lr}
	ldr	r1, .L_69b6c
	ldr	r0, .L_69b70
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #88	@ 0x58
	strb	r0, [r2, #0]
	ldrh	r1, [r1, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_69b68
	mov	r0, #139	@ 0x8b
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_69b68:
	pop	{r0}
	bx	r0
.L_69b6c:
	.4byte	gCurrentSprite
.L_69b70:
	.4byte	sUnk_83F123C


thumb_func_start func_8069B74
func_8069B74:
	push	{lr}
	ldr	r3, .L_69ba0
	mov	r0, #1
	strb	r0, [r3, #31]
	mov	r0, #39	@ 0x27
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	sub	r2, r0, #1
	mov	r1, ip
	strb	r2, [r1, #0]
	lsl	r0, r2, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_69ba4
	add	r0, r1, #0
	cmp	r0, #38	@ 0x26
	bne	.L_69bb6
	bl	func_8069A54
	b	.L_69bb6
	.align	2, 0
.L_69ba0:
	.4byte	gCurrentSprite
.L_69ba4:
	ldr	r0, .L_69bbc
	str	r0, [r3, #4]
	strb	r1, [r3, #22]
	strh	r1, [r3, #20]
	mov	r0, #18
	strb	r0, [r3, #28]
	mov	r0, #120	@ 0x78
	mov	r1, ip
	strb	r0, [r1, #0]
.L_69bb6:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_69bbc:
	.4byte	sUnk_83F132C


thumb_func_start func_8069BC0
func_8069BC0:
	push	{lr}
	ldr	r1, .L_69c00
	mov	r0, #1
	strb	r0, [r1, #31]
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_69bfa
	ldr	r0, .L_69c04
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r2, [r1, #20]
	mov	r0, #20
	strb	r0, [r1, #28]
	mov	r0, #39	@ 0x27
	strb	r0, [r3, #0]
	ldrh	r1, [r1, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_69bfa
	ldr	r0, .L_69c08
	bl	m4aSongNumStart
.L_69bfa:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_69c00:
	.4byte	gCurrentSprite
.L_69c04:
	.4byte	sUnk_83F12BC
.L_69c08:
	.4byte	0x117


thumb_func_start func_8069C0C
func_8069C0C:
	push	{lr}
	ldr	r3, .L_69c34
	mov	r0, #1
	strb	r0, [r3, #31]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r2, r0, #1
	strb	r2, [r1, #0]
	lsl	r0, r2, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_69c38
	add	r0, r1, #0
	cmp	r0, #21
	bne	.L_69c44
	bl	func_80699D8
	b	.L_69c44
	.align	2, 0
.L_69c34:
	.4byte	gCurrentSprite
.L_69c38:
	ldr	r0, .L_69c48
	str	r0, [r3, #4]
	strb	r1, [r3, #22]
	strh	r1, [r3, #20]
	mov	r0, #16
	strb	r0, [r3, #28]
.L_69c44:
	pop	{r0}
	bx	r0
.L_69c48:
	.4byte	sUnk_83F122C


thumb_func_start SpriteCrumblingBlock
SpriteCrumblingBlock:
	push	{lr}
	ldr	r0, .L_69c60
	ldrb	r0, [r0, #28]
	cmp	r0, #50	@ 0x32
	bhi	.L_69d4e
	lsl	r0, r0, #2
	ldr	r1, .L_69c64
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_69c60:
	.4byte	gCurrentSprite
.L_69c64:
	.4byte	.L_69c68
.L_69c68:
	.4byte	.L_69d34
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d44
	.4byte	.L_69d4e
	.4byte	.L_69d4a
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d4e
	.4byte	.L_69d3a
	.4byte	.L_69d3e
.L_69d34:
	bl	func_8069AD0
	b	.L_69d4e
.L_69d3a:
	bl	func_8069B3C
.L_69d3e:
	bl	func_8069B74
	b	.L_69d4e
.L_69d44:
	bl	func_8069BC0
	b	.L_69d4e
.L_69d4a:
	bl	func_8069C0C
.L_69d4e:
	pop	{r0}
	bx	r0
	.align	2, 0
