.include "macros.s.inc"


thumb_func_start func_804D994
func_804D994:
	ldr	r0, .L_4d9a8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_4d9b0
	ldr	r1, .L_4d9ac
	mov	r0, #112	@ 0x70
	strb	r0, [r1, #28]
	mov	r0, #1
	b	.L_4d9b2
	.align	2, 0
.L_4d9a8:
	.4byte	gSwitchPressed
.L_4d9ac:
	.4byte	gCurrentSprite
.L_4d9b0:
	mov	r0, #0
.L_4d9b2:
	bx	lr


thumb_func_start func_804D9B4
func_804D9B4:
	push	{lr}
	ldr	r3, .L_4da04
	ldrb	r1, [r3, #26]
	mov	r0, #128	@ 0x80
	mov	r2, #0
	orr	r0, r1
	strb	r0, [r3, #26]
	mov	r0, #53	@ 0x35
	strb	r0, [r3, #30]
	add	r0, r3, #0
	add	r0, #32
	mov	r1, #24
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r1, r3, #0
	add	r1, #35	@ 0x23
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #2
	mov	r0, #30
	strb	r0, [r1, #0]
	sub	r1, #1
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
	bl	SpriteUtilTurnTowardWario
	pop	{r0}
	bx	r0
.L_4da04:
	.4byte	gCurrentSprite


thumb_func_start func_804DA08
func_804DA08:
	ldr	r1, .L_4da1c
	ldr	r0, .L_4da20
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_4da1c:
	.4byte	gCurrentSprite
.L_4da20:
	.4byte	sUnk_83D21E4


thumb_func_start func_804DA24
func_804DA24:
	push	{r4, r5, lr}
	bl	func_80238A4
	ldr	r4, .L_4da58
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4dab4
	add	r2, r4, #0
	add	r2, #40	@ 0x28
	ldrb	r5, [r2, #0]
	sub	r0, r5, #1
	strb	r0, [r2, #0]
	mov	r3, #255	@ 0xff
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4da60
	ldr	r1, .L_4da5c
	ldrh	r0, [r4, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bcc	.L_4dad0
	strb	r5, [r2, #0]
	b	.L_4db28
	.align	2, 0
.L_4da58:
	.4byte	gCurrentSprite
.L_4da5c:
	.4byte	gWarioData
.L_4da60:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	and	r0, r3
	cmp	r0, #0
	beq	.L_4db28
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	add	r1, #120	@ 0x78
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_4dab0
	ldrb	r1, [r5, #0]
	mov	r0, #240	@ 0xf0
	and	r0, r1
	cmp	r0, #0
	beq	.L_4db28
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	add	r1, #120	@ 0x78
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_4db28
	ldrh	r0, [r4, #10]
	add	r0, #2
	b	.L_4db38
	.align	2, 0
.L_4dab0:
	.4byte	gSpriteAiCollisionFlags
.L_4dab4:
	add	r2, r4, #0
	add	r2, #40	@ 0x28
	ldrb	r5, [r2, #0]
	sub	r0, r5, #1
	strb	r0, [r2, #0]
	mov	r3, #255	@ 0xff
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4dae0
	ldr	r1, .L_4dad8
	ldrh	r0, [r4, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_4dadc
.L_4dad0:
	mov	r0, #110	@ 0x6e
	strb	r0, [r4, #28]
	b	.L_4db3a
	.align	2, 0
.L_4dad8:
	.4byte	gWarioData
.L_4dadc:
	strb	r5, [r2, #0]
	b	.L_4db28
.L_4dae0:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	and	r0, r3
	cmp	r0, #0
	beq	.L_4db28
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	sub	r1, #116	@ 0x74
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_4db30
	ldrb	r1, [r5, #0]
	mov	r0, #240	@ 0xf0
	and	r0, r1
	cmp	r0, #0
	beq	.L_4db28
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #116	@ 0x74
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_4db34
.L_4db28:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_4db3a
	.align	2, 0
.L_4db30:
	.4byte	gSpriteAiCollisionFlags
.L_4db34:
	ldrh	r0, [r4, #10]
	sub	r0, #2
.L_4db38:
	strh	r0, [r4, #10]
.L_4db3a:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_804DB40
func_804DB40:
	ldr	r0, .L_4db58
	ldr	r1, .L_4db5c
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #7
	strb	r1, [r0, #0]
	bx	lr
.L_4db58:
	.4byte	gCurrentSprite
.L_4db5c:
	.4byte	sUnk_83D205C


thumb_func_start func_804DB60
func_804DB60:
	push	{lr}
	bl	func_80238A4
	ldr	r2, .L_4dba0
	mov	r0, #39	@ 0x27
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r0, [r0, #0]
	sub	r0, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #0
	bne	.L_4dbba
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	bne	.L_4dba8
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_4dba4
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #5
	b	.L_4dbb6
	.align	2, 0
.L_4dba0:
	.4byte	gCurrentSprite
.L_4dba4:
	.4byte	sUnk_83D2074
.L_4dba8:
	ldr	r0, .L_4dbc0
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
	mov	r0, #96	@ 0x60
.L_4dbb6:
	mov	r1, ip
	strb	r0, [r1, #0]
.L_4dbba:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4dbc0:
	.4byte	sUnk_83D21E4


thumb_func_start func_804DBC4
func_804DBC4:
	push	{r4, lr}
	ldr	r4, .L_4dc14
	ldr	r0, .L_4dc18
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #8
	strb	r0, [r1, #0]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_4dc1c
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #10
	bl	func_807687C
	ldr	r1, .L_4dc20
	ldr	r0, .L_4dc24
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
.L_4dc14:
	.4byte	gCurrentSprite
.L_4dc18:
	.4byte	sUnk_83D221C
.L_4dc1c:
	.4byte	0xFEFF
.L_4dc20:
	.4byte	gPersistentSpriteData
.L_4dc24:
	.4byte	gCurrentRoom


thumb_func_start func_804DC28
func_804DC28:
	ldr	r0, .L_4dc40
	ldr	r1, .L_4dc44
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #24
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #20
	strb	r1, [r0, #0]
	bx	lr
.L_4dc40:
	.4byte	gCurrentSprite
.L_4dc44:
	.4byte	sUnk_83D204C


thumb_func_start func_804DC48
func_804DC48:
	push	{lr}
	bl	func_80238A4
	ldr	r2, .L_4dc80
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4dc9a
	add	r1, #1
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	ldr	r1, .L_4dc84
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_4dc88
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_4dc96
	mov	r0, #15
	b	.L_4dc98
	.align	2, 0
.L_4dc80:
	.4byte	gCurrentSprite
.L_4dc84:
	.4byte	gWarioData
.L_4dc88:
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4dc96
	mov	r0, #15
	b	.L_4dc98
.L_4dc96:
	mov	r0, #17
.L_4dc98:
	strb	r0, [r2, #28]
.L_4dc9a:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_804DCA0
func_804DCA0:
	ldr	r1, .L_4dcb4
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	add	r1, #39	@ 0x27
	mov	r0, #20
	strb	r0, [r1, #0]
	bx	lr
.L_4dcb4:
	.4byte	gCurrentSprite


thumb_func_start func_804DCB8
func_804DCB8:
	push	{lr}
	bl	func_804DCA0
	ldr	r2, .L_4dcd0
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4dcd8
	ldr	r0, .L_4dcd4
	b	.L_4dcda
	.align	2, 0
.L_4dcd0:
	.4byte	gCurrentSprite
.L_4dcd4:
	.4byte	sUnk_83D238C
.L_4dcd8:
	ldr	r0, .L_4dce0
.L_4dcda:
	str	r0, [r2, #4]
	pop	{r0}
	bx	r0
.L_4dce0:
	.4byte	sUnk_83D222C


thumb_func_start func_804DCE4
func_804DCE4:
	push	{lr}
	bl	func_804DCA0
	ldr	r2, .L_4dcfc
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4dd04
	ldr	r0, .L_4dd00
	b	.L_4dd06
	.align	2, 0
.L_4dcfc:
	.4byte	gCurrentSprite
.L_4dd00:
	.4byte	sUnk_83D222C
.L_4dd04:
	ldr	r0, .L_4dd0c
.L_4dd06:
	str	r0, [r2, #4]
	pop	{r0}
	bx	r0
.L_4dd0c:
	.4byte	sUnk_83D238C


thumb_func_start func_804DD10
func_804DD10:
	push	{lr}
	bl	func_804DCA0
	ldr	r1, .L_4dd20
	ldr	r0, .L_4dd24
	str	r0, [r1, #4]
	pop	{r0}
	bx	r0
.L_4dd20:
	.4byte	gCurrentSprite
.L_4dd24:
	.4byte	sUnk_83D2244


thumb_func_start func_804DD28
func_804DD28:
	ldr	r2, .L_4dd40
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4dd3e
	mov	r0, #23
	strb	r0, [r2, #28]
.L_4dd3e:
	bx	lr
.L_4dd40:
	.4byte	gCurrentSprite


thumb_func_start func_804DD44
func_804DD44:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r4, .L_4dd88
	ldr	r0, .L_4dd8c
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	mov	r0, #111	@ 0x6f
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #107	@ 0x6b
	strb	r0, [r1, #0]
	ldrh	r1, [r4, #0]
	mov	r6, #64	@ 0x40
	add	r0, r6, #0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L_4dd90
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	str	r6, [sp, #4]
	mov	r0, #186	@ 0xba
	bl	func_801E3A8
	b	.L_4dda4
	.align	2, 0
.L_4dd88:
	.4byte	gCurrentSprite
.L_4dd8c:
	.4byte	sUnk_83D208C
.L_4dd90:
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #186	@ 0xba
	bl	func_801E3A8
.L_4dda4:
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_804DDAC
func_804DDAC:
	push	{lr}
	ldr	r3, .L_4ddd8
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	add	r1, r0, #0
	add	r1, #255	@ 0xff
	strb	r1, [r2, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	add	r1, r0, #0
	cmp	r0, #89	@ 0x59
	bne	.L_4dddc
	mov	r0, #48	@ 0x30
	mov	r1, #129	@ 0x81
	bl	ScreenShakeRequestY
	mov	r0, #62	@ 0x3e
	bl	m4aSongNumStart
	b	.L_4ddf0
	.align	2, 0
.L_4ddd8:
	.4byte	gCurrentSprite
.L_4dddc:
	cmp	r0, #79	@ 0x4f
	bne	.L_4dde8
	mov	r0, #103	@ 0x67
	bl	m4aSongNumStart
	b	.L_4ddf0
.L_4dde8:
	cmp	r1, #0
	bne	.L_4ddf0
	mov	r0, #23
	strb	r0, [r3, #28]
.L_4ddf0:
	pop	{r0}
	bx	r0


thumb_func_start func_804DDF4
func_804DDF4:
	ldr	r0, .L_4de0c
	ldr	r1, .L_4de10
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #113	@ 0x71
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #152	@ 0x98
	strb	r1, [r0, #0]
	bx	lr
.L_4de0c:
	.4byte	gCurrentSprite
.L_4de10:
	.4byte	sUnk_83D2274


thumb_func_start func_804DE14
func_804DE14:
	ldr	r2, .L_4de3c
	mov	r0, #1
	strb	r0, [r2, #31]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_4de38
	ldr	r0, .L_4de40
	ldrb	r0, [r0, #1]
	strb	r0, [r2, #25]
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #23]
	strb	r1, [r2, #28]
.L_4de38:
	bx	lr
	.align	2, 0
.L_4de3c:
	.4byte	gCurrentSprite
.L_4de40:
	.4byte	gUnk_3000544


thumb_func_start func_804DE44
func_804DE44:
	ldr	r0, .L_4dea0
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_4dea4
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #108	@ 0x6c
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_4dea8
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #58	@ 0x3a
	strb	r0, [r1, #30]
	mov	r0, #111	@ 0x6f
	strb	r0, [r1, #28]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
.L_4dea0:
	.4byte	gCurrentSprite
.L_4dea4:
	.4byte	0xFFFB
.L_4dea8:
	.4byte	sUnk_83D2264


thumb_func_start func_804DEAC
func_804DEAC:
	ldr	r2, .L_4dee4
	mov	r1, #0
	mov	r0, #57	@ 0x39
	strb	r0, [r2, #30]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #6
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r3, #2
	mov	r0, #12
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4dee8
	mov	r0, #66	@ 0x42
	b	.L_4deea
	.align	2, 0
.L_4dee4:
	.4byte	gCurrentSprite
.L_4dee8:
	mov	r0, #60	@ 0x3c
.L_4deea:
	strb	r0, [r2, #28]
	bx	lr
	.align	2, 0


thumb_func_start func_804DEF0
func_804DEF0:
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L_4df1c
	add	r5, r2, #0
	add	r5, #42	@ 0x2a
	ldrb	r4, [r5, #0]
	ldr	r1, .L_4df20
	lsl	r0, r4, #1
	add	r0, r0, r1
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_4df24
	add	r7, r2, #0
	cmp	r1, r0
	bne	.L_4df2e
	bl	func_804DEAC
	mov	r0, #104	@ 0x68
	bl	m4aSongNumStart
	b	.L_4df7a
	.align	2, 0
.L_4df1c:
	.4byte	gCurrentSprite
.L_4df20:
	.4byte	sUnk_83D23A4
.L_4df24:
	.4byte	0x7FFF
.L_4df28:
	mov	r0, #0
	strh	r0, [r7, #0]
	b	.L_4df7a
.L_4df2e:
	add	r0, r4, #1
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	strb	r4, [r5, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r3
	strh	r0, [r2, #8]
	ldrb	r5, [r2, #24]
	mov	r3, #0
	ldr	r6, .L_4df70
.L_4df42:
	mov	r0, #44	@ 0x2c
	mul	r0, r3
	add	r2, r0, r6
	ldrb	r0, [r2, #24]
	cmp	r0, r5
	bne	.L_4df74
	ldrb	r0, [r2, #23]
	cmp	r0, #97	@ 0x61
	bne	.L_4df74
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_4df74
	ldrb	r0, [r2, #28]
	cmp	r0, #111	@ 0x6f
	beq	.L_4df7a
	cmp	r4, #20
	bls	.L_4df28
	bl	func_804DEAC
	b	.L_4df7a
	.align	2, 0
.L_4df70:
	.4byte	gSpriteData
.L_4df74:
	add	r3, #1
	cmp	r3, #23
	ble	.L_4df42
.L_4df7a:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_804DF80
func_804DF80:
	push	{r4, lr}
	ldr	r4, .L_4dfd0
	ldrh	r1, [r4, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_4e00c
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4dfd4
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	add	r1, #32
	mov	r2, #8
	bl	SpriteSpawnSecondary
	ldrh	r0, [r4, #8]
	sub	r0, #96	@ 0x60
	ldrh	r1, [r4, #10]
	add	r1, #32
	mov	r2, #14
	bl	SpriteSpawnSecondary
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	sub	r1, #32
	mov	r2, #14
	bl	SpriteSpawnSecondary
	ldrh	r0, [r4, #8]
	sub	r0, #96	@ 0x60
	ldrh	r1, [r4, #10]
	sub	r1, #32
	mov	r2, #8
	bl	SpriteSpawnSecondary
	b	.L_4e00c
.L_4dfd0:
	.4byte	gCurrentSprite
.L_4dfd4:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	add	r1, #32
	mov	r2, #9
	bl	SpriteSpawnSecondary
	ldrh	r0, [r4, #8]
	sub	r0, #96	@ 0x60
	ldrh	r1, [r4, #10]
	add	r1, #32
	mov	r2, #15
	bl	SpriteSpawnSecondary
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	sub	r1, #32
	mov	r2, #15
	bl	SpriteSpawnSecondary
	ldrh	r0, [r4, #8]
	sub	r0, #96	@ 0x60
	ldrh	r1, [r4, #10]
	sub	r1, #32
	mov	r2, #9
	bl	SpriteSpawnSecondary
.L_4e00c:
	ldr	r1, .L_4e018
	mov	r0, #0
	strh	r0, [r1, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_4e018:
	.4byte	gCurrentSprite


thumb_func_start SpriteBowler
SpriteBowler:
	push	{lr}
	ldr	r0, .L_4e034
	ldrb	r0, [r0, #28]
	cmp	r0, #113	@ 0x71
	bls	.L_4e028
	b	.L_4e284
.L_4e028:
	lsl	r0, r0, #2
	ldr	r1, .L_4e038
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_4e034:
	.4byte	gCurrentSprite
.L_4e038:
	.4byte	.L_4e03c
.L_4e03c:
	.4byte	.L_4e204
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e208
	.4byte	.L_4e20c
	.4byte	.L_4e21a
	.4byte	.L_4e21e
	.4byte	.L_4e284
	.4byte	.L_4e21e
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e22c
	.4byte	.L_4e230
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e23e
	.4byte	.L_4e284
	.4byte	.L_4e244
	.4byte	.L_4e284
	.4byte	.L_4e23e
	.4byte	.L_4e284
	.4byte	.L_4e244
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e25e
	.4byte	.L_4e262
	.4byte	.L_4e24a
	.4byte	.L_4e250
	.4byte	.L_4e24a
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e24a
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e244
	.4byte	.L_4e23e
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e284
	.4byte	.L_4e268
	.4byte	.L_4e26c
	.4byte	.L_4e27a
	.4byte	.L_4e27e
.L_4e204:
	bl	func_804D9B4
.L_4e208:
	bl	func_804DA08
.L_4e20c:
	bl	func_804D994
	cmp	r0, #0
	bne	.L_4e288
	bl	func_804DA24
	b	.L_4e288
.L_4e21a:
	bl	func_804DB40
.L_4e21e:
	bl	func_804D994
	cmp	r0, #0
	bne	.L_4e288
	bl	func_804DB60
	b	.L_4e288
.L_4e22c:
	bl	func_804DC28
.L_4e230:
	bl	func_804D994
	cmp	r0, #0
	bne	.L_4e288
	bl	func_804DC48
	b	.L_4e288
.L_4e23e:
	bl	func_804DCB8
	b	.L_4e288
.L_4e244:
	bl	func_804DCE4
	b	.L_4e288
.L_4e24a:
	bl	func_804DD10
	b	.L_4e288
.L_4e250:
	bl	func_804D994
	cmp	r0, #0
	bne	.L_4e288
	bl	func_804DD28
	b	.L_4e288
.L_4e25e:
	bl	func_804DBC4
.L_4e262:
	bl	SpriteUtilDieAfterDelay
	b	.L_4e288
.L_4e268:
	bl	func_804DD44
.L_4e26c:
	bl	func_804D994
	cmp	r0, #0
	bne	.L_4e288
	bl	func_804DDAC
	b	.L_4e288
.L_4e27a:
	bl	func_804DDF4
.L_4e27e:
	bl	func_804DE14
	b	.L_4e288
.L_4e284:
	bl	SpriteUtilDie
.L_4e288:
	ldr	r2, .L_4e2b0
	ldrb	r1, [r2, #26]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_4e2aa
	ldr	r0, .L_4e2b4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_4e2a4
	ldr	r0, .L_4e2b8
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bls	.L_4e2aa
.L_4e2a4:
	mov	r0, #127	@ 0x7f
	and	r0, r1
	strb	r0, [r2, #26]
.L_4e2aa:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4e2b0:
	.4byte	gCurrentSprite
.L_4e2b4:
	.4byte	gHeartMeter
.L_4e2b8:
	.4byte	gTimerState


thumb_func_start SpriteUnknownBA
SpriteUnknownBA:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r2, .L_4e2ec
	ldrh	r0, [r2, #0]
	ldr	r1, .L_4e2f0
	and	r1, r0
	strh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_4e2da
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_4e2da:
	ldrb	r0, [r2, #28]
	cmp	r0, #111	@ 0x6f
	bls	.L_4e2e2
	b	.L_4e58a
.L_4e2e2:
	lsl	r0, r0, #2
	ldr	r1, .L_4e2f4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_4e2ec:
	.4byte	gCurrentSprite
.L_4e2f0:
	.4byte	0xFFDF
.L_4e2f4:
	.4byte	.L_4e2f8
.L_4e2f8:
	.4byte	.L_4e4b8
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e4c4
	.4byte	.L_4e4c4
	.4byte	.L_4e4d8
	.4byte	.L_4e4d8
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e4ec
	.4byte	.L_4e4f6
	.4byte	.L_4e4fc
	.4byte	.L_4e506
	.4byte	.L_4e50c
	.4byte	.L_4e516
	.4byte	.L_4e51c
	.4byte	.L_4e526
	.4byte	.L_4e52c
	.4byte	.L_4e536
	.4byte	.L_4e53c
	.4byte	.L_4e546
	.4byte	.L_4e54c
	.4byte	.L_4e55c
	.4byte	.L_4e568
	.4byte	.L_4e584
	.4byte	.L_4e54c
	.4byte	.L_4e58a
	.4byte	.L_4e568
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e58a
	.4byte	.L_4e4be
.L_4e4b8:
	bl	func_804DE44
	b	.L_4e58e
.L_4e4be:
	bl	func_804DEF0
	b	.L_4e58e
.L_4e4c4:
	ldr	r0, .L_4e4d4
	add	r0, #41	@ 0x29
	mov	r1, #6
	strb	r1, [r0, #0]
	bl	func_8025E98
	b	.L_4e58e
	.align	2, 0
.L_4e4d4:
	.4byte	gCurrentSprite
.L_4e4d8:
	ldr	r0, .L_4e4e8
	add	r0, #41	@ 0x29
	mov	r1, #6
	strb	r1, [r0, #0]
	bl	func_8025DE8
	b	.L_4e58e
	.align	2, 0
.L_4e4e8:
	.4byte	gCurrentSprite
.L_4e4ec:
	bl	func_8024688
	mov	r0, #102	@ 0x66
	bl	m4aSongNumStart
.L_4e4f6:
	bl	func_80246B8
	b	.L_4e58e
.L_4e4fc:
	bl	func_802473C
	mov	r0, #102	@ 0x66
	bl	m4aSongNumStart
.L_4e506:
	bl	func_802476C
	b	.L_4e58e
.L_4e50c:
	bl	func_80247F0
	mov	r0, #102	@ 0x66
	bl	m4aSongNumStart
.L_4e516:
	bl	func_8024820
	b	.L_4e58e
.L_4e51c:
	bl	func_80248A4
	mov	r0, #102	@ 0x66
	bl	m4aSongNumStart
.L_4e526:
	bl	func_80248D4
	b	.L_4e58e
.L_4e52c:
	bl	func_8024958
	mov	r0, #102	@ 0x66
	bl	m4aSongNumStart
.L_4e536:
	bl	func_8024988
	b	.L_4e58e
.L_4e53c:
	bl	func_8024A0C
	mov	r0, #102	@ 0x66
	bl	m4aSongNumStart
.L_4e546:
	bl	func_8024A3C
	b	.L_4e58e
.L_4e54c:
	ldr	r2, .L_4e564
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_4e574
	bl	func_8024AC0
.L_4e55c:
	bl	func_8024AD4
	b	.L_4e58e
	.align	2, 0
.L_4e564:
	.4byte	gCurrentSprite
.L_4e568:
	ldr	r2, .L_4e57c
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_4e580
.L_4e574:
	mov	r0, #49	@ 0x31
	strb	r0, [r2, #28]
	b	.L_4e58e
	.align	2, 0
.L_4e57c:
	.4byte	gCurrentSprite
.L_4e580:
	bl	func_8024BEC
.L_4e584:
	bl	func_8024C00
	b	.L_4e58e
.L_4e58a:
	bl	func_804DF80
.L_4e58e:
	ldr	r2, .L_4e5b4
	ldrh	r1, [r2, #0]
	mov	r0, #32
	orr	r1, r0
	strh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	and	r0, r1
	add	r7, r2, #0
	cmp	r0, #0
	beq	.L_4e63c
	mov	r0, #64	@ 0x40
	and	r1, r0
	cmp	r1, #0
	beq	.L_4e5b8
	add	r1, r7, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	add	r0, #5
	b	.L_4e5c0
.L_4e5b4:
	.4byte	gCurrentSprite
.L_4e5b8:
	add	r1, r7, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	sub	r0, #5
.L_4e5c0:
	strb	r0, [r1, #0]
	ldr	r0, .L_4e648
	mov	r8, r0
	add	r6, r7, #0
	add	r6, #40	@ 0x28
	ldrb	r0, [r6, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #12]
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #14]
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #16]
	ldrb	r0, [r6, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #18]
.L_4e63c:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4e648:
	.4byte	sSinCosTable
