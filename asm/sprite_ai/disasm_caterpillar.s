.include "macros.s.inc"


thumb_func_start func_80416C8
func_80416C8:
	push	{lr}
	ldr	r0, .L_41714
	mov	ip, r0
	mov	r2, #0
	mov	r0, #1
	mov	r1, ip
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r3, #16
	strb	r3, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r1, #34	@ 0x22
	mov	r0, #24
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r1, ip
	add	r1, #38	@ 0x26
	mov	r0, #28
	strb	r0, [r1, #0]
	ldr	r0, .L_41718
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r2, [r1, #20]
	strb	r3, [r1, #28]
	bl	SpriteUtilTurnTowardWario
	pop	{r0}
	bx	r0
.L_41714:
	.4byte	gCurrentSprite
.L_41718:
	.4byte	sUnk_83C770C


thumb_func_start func_804171C
func_804171C:
	ldr	r0, .L_41734
	ldr	r1, .L_41738
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #16
	strb	r1, [r0, #28]
	add	r0, #35	@ 0x23
	mov	r1, #32
	strb	r1, [r0, #0]
	bx	lr
.L_41734:
	.4byte	gCurrentSprite
.L_41738:
	.4byte	sUnk_83C770C


thumb_func_start func_804173C
func_804173C:
	push	{r4, r5, r6, r7, lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_41770
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_417a4
	ldr	r3, .L_41774
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_41778
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_4178c
.L_41770:
	.4byte	gSpriteAiCollisionResult
.L_41774:
	.4byte	gCurrentSprite
.L_41778:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_4178c:
	ldr	r0, .L_4179c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_41858
	ldr	r1, .L_417a0
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_4185c
.L_4179c:
	.4byte	gSpriteAiCollisionFlags
.L_417a0:
	.4byte	gCurrentSprite
.L_417a4:
	ldr	r4, .L_417f4
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_417fc
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_41858
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	and	r0, r2
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	ldrb	r1, [r6, #0]
	add	r0, r0, r1
	cmp	r0, #63	@ 0x3f
	ble	.L_41858
	ldrh	r0, [r4, #8]
	add	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_417f8
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_4184e
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_4183c
.L_417f4:
	.4byte	gCurrentSprite
.L_417f8:
	.4byte	gSpriteAiCollisionFlags
.L_417fc:
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_41858
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	ldrb	r1, [r6, #0]
	and	r0, r2
	cmp	r0, r1
	bcs	.L_41858
	ldrh	r0, [r4, #8]
	sub	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_41854
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_4184e
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_4183c:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_41858
.L_4184e:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_4185c
.L_41854:
	.4byte	gSpriteAiCollisionFlags
.L_41858:
	bl	SpriteUtilMoveForward1Subpixel
.L_4185c:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8041864
func_8041864:
	ldr	r0, .L_4187c
	ldr	r1, .L_41880
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #22
	strb	r1, [r0, #0]
	bx	lr
.L_4187c:
	.4byte	gCurrentSprite
.L_41880:
	.4byte	sUnk_83C775C


thumb_func_start func_8041884
func_8041884:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_418a0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_418a8
	ldr	r1, .L_418a4
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_418f8
	.align	2, 0
.L_418a0:
	.4byte	gSpriteAiCollisionResult
.L_418a4:
	.4byte	gCurrentSprite
.L_418a8:
	ldr	r2, .L_418e4
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
	bne	.L_418f8
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	bne	.L_418ec
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_418e8
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #21
	mov	r1, ip
	strb	r0, [r1, #0]
	b	.L_418f8
.L_418e4:
	.4byte	gCurrentSprite
.L_418e8:
	.4byte	sUnk_83C777C
.L_418ec:
	ldr	r0, .L_418fc
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
.L_418f8:
	pop	{r0}
	bx	r0
.L_418fc:
	.4byte	sUnk_83C770C


thumb_func_start func_8041900
func_8041900:
	ldr	r2, .L_41930
	ldr	r0, .L_41934
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #4
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrb	r0, [r2, #30]
	cmp	r0, #5
	beq	.L_4192c
	mov	r0, #5
	strb	r0, [r2, #30]
.L_4192c:
	bx	lr
	.align	2, 0
.L_41930:
	.4byte	gCurrentSprite
.L_41934:
	.4byte	sUnk_83C7834


thumb_func_start func_8041938
func_8041938:
	push	{lr}
	ldr	r1, .L_41948
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8041900
	pop	{r0}
	bx	r0
.L_41948:
	.4byte	gCurrentSprite


thumb_func_start func_804194C
func_804194C:
	push	{lr}
	ldr	r1, .L_4195c
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8041900
	pop	{r0}
	bx	r0
.L_4195c:
	.4byte	gCurrentSprite


thumb_func_start func_8041960
func_8041960:
	ldr	r0, .L_41978
	ldr	r1, .L_4197c
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #24
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #60	@ 0x3c
	strb	r1, [r0, #0]
	bx	lr
.L_41978:
	.4byte	gCurrentSprite
.L_4197c:
	.4byte	sUnk_83C770C


thumb_func_start func_8041980
func_8041980:
	ldr	r0, .L_4199c
	ldr	r1, .L_419a0
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #32
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_4199c:
	.4byte	gCurrentSprite
.L_419a0:
	.4byte	sUnk_83C785C


thumb_func_start func_80419A4
func_80419A4:
	push	{lr}
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_419e0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_419bc
	ldr	r1, .L_419e4
	mov	r0, #29
	strb	r0, [r1, #28]
.L_419bc:
	ldr	r1, .L_419e4
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_419dc
	mov	r0, #23
	strb	r0, [r1, #28]
	mov	r0, #1
	strb	r0, [r1, #30]
	add	r1, #35	@ 0x23
	mov	r0, #32
	strb	r0, [r1, #0]
.L_419dc:
	pop	{r0}
	bx	r0
.L_419e0:
	.4byte	gSpriteAiCollisionResult
.L_419e4:
	.4byte	gCurrentSprite


thumb_func_start func_80419E8
func_80419E8:
	ldr	r0, .L_41a00
	ldr	r1, .L_41a04
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	mov	r2, #0
	strh	r1, [r0, #20]
	mov	r1, #28
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
.L_41a00:
	.4byte	gCurrentSprite
.L_41a04:
	.4byte	sUnk_83C7734


thumb_func_start func_8041A08
func_8041A08:
	ldr	r1, .L_41a28
	ldr	r0, .L_41a2c
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	mov	r0, #30
	strb	r0, [r1, #28]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #5
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_41a28:
	.4byte	gCurrentSprite
.L_41a2c:
	.4byte	sUnk_83C7834


thumb_func_start func_8041A30
func_8041A30:
	push	{r4, r5, lr}
	ldr	r5, .L_41a94
	ldr	r0, .L_41a98
	str	r0, [r5, #4]
	mov	r0, #0
	strb	r0, [r5, #22]
	mov	r4, #0
	strh	r0, [r5, #20]
	strb	r4, [r5, #29]
	add	r1, r5, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
	strb	r4, [r5, #26]
	ldrb	r0, [r5, #23]
	ldrh	r1, [r5, #8]
	ldrh	r2, [r5, #10]
	mov	r3, #1
	bl	func_807687C
	ldrh	r0, [r5, #8]
	sub	r0, #32
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r5, #0]
	ldr	r0, .L_41a9c
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	ldr	r1, .L_41aa0
	ldr	r0, .L_41aa4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r5, [r5, #24]
	add	r0, r0, r5
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_41a94:
	.4byte	gCurrentSprite
.L_41a98:
	.4byte	sUnk_83C780C
.L_41a9c:
	.4byte	0xFEFF
.L_41aa0:
	.4byte	gPersistentSpriteData
.L_41aa4:
	.4byte	gCurrentRoom


thumb_func_start func_8041AA8
func_8041AA8:
	push	{lr}
	ldr	r1, .L_41ab8
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8041A30
	pop	{r0}
	bx	r0
.L_41ab8:
	.4byte	gCurrentSprite


thumb_func_start func_8041ABC
func_8041ABC:
	push	{lr}
	ldr	r1, .L_41acc
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8041A30
	pop	{r0}
	bx	r0
.L_41acc:
	.4byte	gCurrentSprite


thumb_func_start func_8041AD0
func_8041AD0:
	push	{r4, lr}
	ldr	r4, .L_41b24
	ldr	r0, .L_41b28
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	mov	r1, #0
	strh	r0, [r4, #20]
	strb	r1, [r4, #29]
	add	r2, r4, #0
	add	r2, #41	@ 0x29
	mov	r0, #7
	strb	r0, [r2, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	strb	r1, [r4, #26]
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #1
	bl	func_807687C
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldr	r1, .L_41b2c
	ldr	r0, .L_41b30
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
.L_41b24:
	.4byte	gCurrentSprite
.L_41b28:
	.4byte	sUnk_83C780C
.L_41b2c:
	.4byte	gPersistentSpriteData
.L_41b30:
	.4byte	gCurrentRoom


thumb_func_start func_8041B34
func_8041B34:
	push	{lr}
	ldr	r1, .L_41b44
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8041AD0
	pop	{r0}
	bx	r0
.L_41b44:
	.4byte	gCurrentSprite


thumb_func_start func_8041B48
func_8041B48:
	push	{lr}
	ldr	r1, .L_41b58
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8041AD0
	pop	{r0}
	bx	r0
.L_41b58:
	.4byte	gCurrentSprite


thumb_func_start func_8041B5C
func_8041B5C:
	ldr	r2, .L_41b80
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #12
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_41b80:
	.4byte	gCurrentSprite


thumb_func_start func_8041B84
func_8041B84:
	push	{lr}
	ldr	r2, .L_41b98
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_41ba0
	ldr	r0, .L_41b9c
	b	.L_41ba2
	.align	2, 0
.L_41b98:
	.4byte	gCurrentSprite
.L_41b9c:
	.4byte	sUnk_83C77BC
.L_41ba0:
	ldr	r0, .L_41bb0
.L_41ba2:
	str	r0, [r2, #4]
	mov	r0, #36	@ 0x24
	strb	r0, [r2, #28]
	bl	func_8041B5C
	pop	{r0}
	bx	r0
.L_41bb0:
	.4byte	sUnk_83C779C


thumb_func_start func_8041BB4
func_8041BB4:
	push	{lr}
	ldr	r2, .L_41bc8
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_41bd0
	ldr	r0, .L_41bcc
	b	.L_41bd2
	.align	2, 0
.L_41bc8:
	.4byte	gCurrentSprite
.L_41bcc:
	.4byte	sUnk_83C779C
.L_41bd0:
	ldr	r0, .L_41be0
.L_41bd2:
	str	r0, [r2, #4]
	mov	r0, #38	@ 0x26
	strb	r0, [r2, #28]
	bl	func_8041B5C
	pop	{r0}
	bx	r0
.L_41be0:
	.4byte	sUnk_83C77BC


thumb_func_start func_8041BE4
func_8041BE4:
	ldr	r1, .L_41c00
	ldr	r0, .L_41c04
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	add	r0, r1, #0
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	mov	r0, #5
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_41c00:
	.4byte	gCurrentSprite
.L_41c04:
	.4byte	sUnk_83C7834


thumb_func_start func_8041C08
func_8041C08:
	push	{lr}
	ldr	r1, .L_41c18
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_8041BE4
	pop	{r0}
	bx	r0
.L_41c18:
	.4byte	gCurrentSprite


thumb_func_start func_8041C1C
func_8041C1C:
	push	{lr}
	ldr	r1, .L_41c2c
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_8041BE4
	pop	{r0}
	bx	r0
.L_41c2c:
	.4byte	gCurrentSprite


thumb_func_start func_8041C30
func_8041C30:
	push	{r4, lr}
	ldr	r4, .L_41c80
	ldr	r0, .L_41c84
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #11
	strb	r0, [r1, #0]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_41c88
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #1
	bl	func_807687C
	ldr	r1, .L_41c8c
	ldr	r0, .L_41c90
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
.L_41c80:
	.4byte	gCurrentSprite
.L_41c84:
	.4byte	sUnk_83C77DC
.L_41c88:
	.4byte	0xFEFF
.L_41c8c:
	.4byte	gPersistentSpriteData
.L_41c90:
	.4byte	gCurrentRoom


thumb_func_start func_8041C94
func_8041C94:
	push	{r4, lr}
	ldr	r4, .L_41cc0
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #1
	bl	func_807687C
	bl	SpriteUtilDie
	ldr	r1, .L_41cc4
	ldr	r0, .L_41cc8
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
.L_41cc0:
	.4byte	gCurrentSprite
.L_41cc4:
	.4byte	gPersistentSpriteData
.L_41cc8:
	.4byte	gCurrentRoom


thumb_func_start func_8041CCC
func_8041CCC:
	ldr	r2, .L_41cf0
	ldr	r0, .L_41cf4
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #5
	strb	r0, [r2, #30]
	bx	lr
	.align	2, 0
.L_41cf0:
	.4byte	gCurrentSprite
.L_41cf4:
	.4byte	sUnk_83C7834


thumb_func_start func_8041CF8
func_8041CF8:
	push	{lr}
	ldr	r1, .L_41d08
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_8041CCC
	pop	{r0}
	bx	r0
.L_41d08:
	.4byte	gCurrentSprite


thumb_func_start func_8041D0C
func_8041D0C:
	push	{lr}
	ldr	r1, .L_41d1c
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_8041CCC
	pop	{r0}
	bx	r0
.L_41d1c:
	.4byte	gCurrentSprite


thumb_func_start func_8041D20
func_8041D20:
	ldr	r0, .L_41d40
	ldr	r1, .L_41d44
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #76	@ 0x4c
	strb	r1, [r0, #28]
	add	r3, r0, #0
	add	r3, #39	@ 0x27
	mov	r1, #20
	strb	r1, [r3, #0]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
.L_41d40:
	.4byte	gCurrentSprite
.L_41d44:
	.4byte	sUnk_83C7734


thumb_func_start func_8041D48
func_8041D48:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_41d80
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_41dca
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_41d84
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_41d88
	mov	r0, #29
	b	.L_41dcc
.L_41d80:
	.4byte	gCurrentSprite
.L_41d84:
	.4byte	gSpriteAiCollisionFlags
.L_41d88:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_41db4
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_41db8
	cmp	r1, r0
	bne	.L_41dbc
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_41dce
	.align	2, 0
.L_41db4:
	.4byte	sUnk_8352B18
.L_41db8:
	.4byte	0x7FFF
.L_41dbc:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_41dce
.L_41dca:
	mov	r0, #27
.L_41dcc:
	strb	r0, [r4, #28]
.L_41dce:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8041DD4
func_8041DD4:
	ldr	r1, .L_41dec
	ldr	r0, .L_41df0
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	add	r1, #35	@ 0x23
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_41dec:
	.4byte	gCurrentSprite
.L_41df0:
	.4byte	sUnk_83C788C


thumb_func_start func_8041DF4
func_8041DF4:
	push	{lr}
	ldr	r1, .L_41e04
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_8041DD4
	pop	{r0}
	bx	r0
.L_41e04:
	.4byte	gCurrentSprite


thumb_func_start func_8041E08
func_8041E08:
	push	{lr}
	ldr	r1, .L_41e18
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_8041DD4
	pop	{r0}
	bx	r0
.L_41e18:
	.4byte	gCurrentSprite


thumb_func_start func_8041E1C
func_8041E1C:
	ldr	r0, .L_41e38
	mov	r2, #0
	mov	r1, #1
	strb	r1, [r0, #31]
	ldr	r1, .L_41e3c
	str	r1, [r0, #4]
	mov	r1, #0
	strh	r2, [r0, #20]
	strb	r1, [r0, #22]
	add	r0, #35	@ 0x23
	mov	r1, #64	@ 0x40
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_41e38:
	.4byte	gCurrentSprite
.L_41e3c:
	.4byte	sUnk_83C788C


thumb_func_start func_8041E40
func_8041E40:
	push	{lr}
	ldr	r1, .L_41e50
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	bl	func_8041E1C
	pop	{r0}
	bx	r0
.L_41e50:
	.4byte	gCurrentSprite


thumb_func_start func_8041E54
func_8041E54:
	push	{lr}
	ldr	r1, .L_41e64
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	bl	func_8041E1C
	pop	{r0}
	bx	r0
.L_41e64:
	.4byte	gCurrentSprite


thumb_func_start SpriteCaterpillar
SpriteCaterpillar:
	push	{lr}
	ldr	r2, .L_41e90
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_41e7c
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_41e7c:
	ldrb	r0, [r2, #28]
	cmp	r0, #106	@ 0x6a
	bls	.L_41e84
	b	.L_421d4
.L_41e84:
	lsl	r0, r0, #2
	ldr	r1, .L_41e94
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_41e90:
	.4byte	gCurrentSprite
.L_41e94:
	.4byte	.L_41e98
.L_41e98:
	.4byte	.L_42044
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_4204a
	.4byte	.L_4204e
	.4byte	.L_42054
	.4byte	.L_42058
	.4byte	.L_421d4
	.4byte	.L_42058
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_4205e
	.4byte	.L_42062
	.4byte	.L_42068
	.4byte	.L_4206c
	.4byte	.L_42072
	.4byte	.L_42076
	.4byte	.L_4207c
	.4byte	.L_42080
	.4byte	.L_42086
	.4byte	.L_4208a
	.4byte	.L_42090
	.4byte	.L_42094
	.4byte	.L_4209a
	.4byte	.L_4209e
	.4byte	.L_420a4
	.4byte	.L_420a8
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_420ae
	.4byte	.L_420b2
	.4byte	.L_420b8
	.4byte	.L_420bc
	.4byte	.L_420c2
	.4byte	.L_420c6
	.4byte	.L_420cc
	.4byte	.L_420d0
	.4byte	.L_420d6
	.4byte	.L_4210e
	.4byte	.L_420dc
	.4byte	.L_420f0
	.4byte	.L_420e2
	.4byte	.L_420e6
	.4byte	.L_420ec
	.4byte	.L_420f0
	.4byte	.L_420f6
	.4byte	.L_420fa
	.4byte	.L_42100
	.4byte	.L_42104
	.4byte	.L_4210a
	.4byte	.L_4210e
	.4byte	.L_42114
	.4byte	.L_42118
	.4byte	.L_4211e
	.4byte	.L_4212e
	.4byte	.L_42124
	.4byte	.L_42138
	.4byte	.L_4212a
	.4byte	.L_4212e
	.4byte	.L_42134
	.4byte	.L_42138
	.4byte	.L_4213e
	.4byte	.L_42142
	.4byte	.L_421d4
	.4byte	.L_421d4
	.4byte	.L_42086
	.4byte	.L_42090
	.4byte	.L_42148
	.4byte	.L_4214e
	.4byte	.L_42154
	.4byte	.L_4215a
	.4byte	.L_4216c
	.4byte	.L_42172
	.4byte	.L_42160
	.4byte	.L_42166
	.4byte	.L_42178
	.4byte	.L_4217c
	.4byte	.L_421a0
	.4byte	.L_421a4
	.4byte	.L_42182
	.4byte	.L_42186
	.4byte	.L_421aa
	.4byte	.L_421ae
	.4byte	.L_4218c
	.4byte	.L_42190
	.4byte	.L_421b4
	.4byte	.L_421b8
	.4byte	.L_42196
	.4byte	.L_4219a
	.4byte	.L_421be
	.4byte	.L_421c2
	.4byte	.L_421c8
	.4byte	.L_421ce
.L_42044:
	bl	func_80416C8
	b	.L_421d8
.L_4204a:
	bl	func_804171C
.L_4204e:
	bl	func_804173C
	b	.L_421d8
.L_42054:
	bl	func_8041864
.L_42058:
	bl	func_8041884
	b	.L_421d8
.L_4205e:
	bl	func_8041960
.L_42062:
	bl	func_8023C94
	b	.L_421d8
.L_42068:
	bl	func_8041980
.L_4206c:
	bl	func_80419A4
	b	.L_421d8
.L_42072:
	bl	func_80419E8
.L_42076:
	bl	func_8023D48
	b	.L_421d8
.L_4207c:
	bl	func_8041A08
.L_42080:
	bl	func_8023EE0
	b	.L_421d8
.L_42086:
	bl	func_8041AA8
.L_4208a:
	bl	SpriteUtilFallOffscreenRight
	b	.L_421d8
.L_42090:
	bl	func_8041ABC
.L_42094:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_421d8
.L_4209a:
	bl	func_8041B84
.L_4209e:
	bl	SpriteUtilPushedRight
	b	.L_421d8
.L_420a4:
	bl	func_8041BB4
.L_420a8:
	bl	SpriteUtilPushedLeft
	b	.L_421d8
.L_420ae:
	bl	func_8041C08
.L_420b2:
	bl	func_8024478
	b	.L_421d8
.L_420b8:
	bl	func_8041C1C
.L_420bc:
	bl	func_802449C
	b	.L_421d8
.L_420c2:
	bl	func_80244C0
.L_420c6:
	bl	func_80244E0
	b	.L_421d8
.L_420cc:
	bl	func_8041C30
.L_420d0:
	bl	SpriteUtilDieAfterDelay
	b	.L_421d8
.L_420d6:
	bl	func_8041938
	b	.L_4210e
.L_420dc:
	bl	func_804194C
	b	.L_420f0
.L_420e2:
	bl	func_8024688
.L_420e6:
	bl	func_80246B8
	b	.L_421d8
.L_420ec:
	bl	func_802473C
.L_420f0:
	bl	func_802476C
	b	.L_421d8
.L_420f6:
	bl	func_80247F0
.L_420fa:
	bl	func_8024820
	b	.L_421d8
.L_42100:
	bl	func_80248A4
.L_42104:
	bl	func_80248D4
	b	.L_421d8
.L_4210a:
	bl	func_8024958
.L_4210e:
	bl	func_8024988
	b	.L_421d8
.L_42114:
	bl	func_8024A0C
.L_42118:
	bl	func_8024A3C
	b	.L_421d8
.L_4211e:
	bl	func_8024AC0
	b	.L_4212e
.L_42124:
	bl	func_8024BEC
	b	.L_42138
.L_4212a:
	bl	func_8041CF8
.L_4212e:
	bl	func_8024AD4
	b	.L_421d8
.L_42134:
	bl	func_8041D0C
.L_42138:
	bl	func_8024C00
	b	.L_421d8
.L_4213e:
	bl	func_8041D20
.L_42142:
	bl	func_8041D48
	b	.L_421d8
.L_42148:
	bl	func_8041DF4
	b	.L_421d8
.L_4214e:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_421d8
.L_42154:
	bl	func_8041E08
	b	.L_421d8
.L_4215a:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_421d8
.L_42160:
	bl	func_8041E40
	b	.L_421d8
.L_42166:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_421d8
.L_4216c:
	bl	func_8041E54
	b	.L_421d8
.L_42172:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_421d8
.L_42178:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_4217c:
	bl	SpriteUtilThrownLeftSoft
	b	.L_421d8
.L_42182:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_42186:
	bl	SpriteUtilThrownLeftHard
	b	.L_421d8
.L_4218c:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_42190:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_421d8
.L_42196:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_4219a:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_421d8
.L_421a0:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_421a4:
	bl	SpriteUtilThrownRightSoft
	b	.L_421d8
.L_421aa:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_421ae:
	bl	SpriteUtilThrownRightHard
	b	.L_421d8
.L_421b4:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_421b8:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_421d8
.L_421be:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_421c2:
	bl	SpriteUtilThrownUpRightHard
	b	.L_421d8
.L_421c8:
	bl	func_8041B48
	b	.L_421d8
.L_421ce:
	bl	func_8041B34
	b	.L_421d8
.L_421d4:
	bl	func_8041C94
.L_421d8:
	pop	{r0}
	bx	r0
