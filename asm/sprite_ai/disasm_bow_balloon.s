.include "macros.s.inc"


thumb_func_start func_8038824
func_8038824:
	push	{lr}
	ldr	r3, .L_38870
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r3, #30]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
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
	ldr	r0, .L_38874
	str	r0, [r3, #4]
	strb	r2, [r3, #22]
	strh	r2, [r3, #20]
	mov	r0, #16
	strb	r0, [r3, #28]
	bl	SpriteUtilTurnTowardWario
	pop	{r0}
	bx	r0
	.align	2, 0
.L_38870:
	.4byte	gCurrentSprite
.L_38874:
	.4byte	sUnk_83BEBF4


thumb_func_start func_8038878
func_8038878:
	ldr	r0, .L_38890
	ldr	r1, .L_38894
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #16
	strb	r1, [r0, #28]
	add	r0, #40	@ 0x28
	mov	r1, #42	@ 0x2a
	strb	r1, [r0, #0]
	bx	lr
.L_38890:
	.4byte	gCurrentSprite
.L_38894:
	.4byte	sUnk_83BEBF4


thumb_func_start func_8038898
func_8038898:
	push	{r4, r5, r6, r7, lr}
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #1
	add	r0, r1, #0
	bl	SpriteUtilWaitCheckWarioNearbyLeftRight
	add	r5, r0, #0
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_388d8
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_3890c
	ldr	r3, .L_388dc
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_388e0
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_388f4
.L_388d8:
	.4byte	gSpriteAiCollisionResult
.L_388dc:
	.4byte	gCurrentSprite
.L_388e0:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_388f4:
	ldr	r0, .L_38904
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_389d8
	ldr	r1, .L_38908
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_389dc
.L_38904:
	.4byte	gSpriteAiCollisionFlags
.L_38908:
	.4byte	gCurrentSprite
.L_3890c:
	ldr	r4, .L_38964
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_3896c
	cmp	r5, #8
	beq	.L_38970
	cmp	r5, #4
	beq	.L_389cc
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_389d8
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	and	r0, r2
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	ldrb	r1, [r6, #0]
	add	r0, r0, r1
	cmp	r0, #63	@ 0x3f
	ble	.L_389d8
	ldrh	r0, [r4, #8]
	add	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_38968
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_389cc
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_389ba
.L_38964:
	.4byte	gCurrentSprite
.L_38968:
	.4byte	gSpriteAiCollisionFlags
.L_3896c:
	cmp	r5, #4
	bne	.L_38976
.L_38970:
	mov	r0, #110	@ 0x6e
	strb	r0, [r4, #28]
	b	.L_389dc
.L_38976:
	cmp	r5, #8
	beq	.L_389cc
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_389d8
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	ldrb	r1, [r6, #0]
	and	r0, r2
	cmp	r0, r1
	bcs	.L_389d8
	ldrh	r0, [r4, #8]
	sub	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_389d4
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_389cc
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_389ba:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_389d8
.L_389cc:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_389dc
	.align	2, 0
.L_389d4:
	.4byte	gSpriteAiCollisionFlags
.L_389d8:
	bl	func_8026374
.L_389dc:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80389E4
func_80389E4:
	ldr	r0, .L_389fc
	ldr	r1, .L_38a00
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #21
	strb	r1, [r0, #0]
	bx	lr
.L_389fc:
	.4byte	gCurrentSprite
.L_38a00:
	.4byte	sUnk_83BEC64


thumb_func_start func_8038A04
func_8038A04:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_38a20
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_38a28
	ldr	r1, .L_38a24
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_38a78
	.align	2, 0
.L_38a20:
	.4byte	gSpriteAiCollisionResult
.L_38a24:
	.4byte	gCurrentSprite
.L_38a28:
	ldr	r2, .L_38a64
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
	bne	.L_38a78
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	bne	.L_38a6c
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_38a68
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #24
	mov	r1, ip
	strb	r0, [r1, #0]
	b	.L_38a78
.L_38a64:
	.4byte	gCurrentSprite
.L_38a68:
	.4byte	sUnk_83BEC84
.L_38a6c:
	ldr	r0, .L_38a7c
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
.L_38a78:
	pop	{r0}
	bx	r0
.L_38a7c:
	.4byte	sUnk_83BEBF4


thumb_func_start func_8038A80
func_8038A80:
	ldr	r2, .L_38ab0
	ldr	r0, .L_38ab4
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
	beq	.L_38aac
	mov	r0, #5
	strb	r0, [r2, #30]
.L_38aac:
	bx	lr
	.align	2, 0
.L_38ab0:
	.4byte	gCurrentSprite
.L_38ab4:
	.4byte	sUnk_83BEDC4


thumb_func_start func_8038AB8
func_8038AB8:
	push	{lr}
	ldr	r1, .L_38ac8
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8038A80
	pop	{r0}
	bx	r0
.L_38ac8:
	.4byte	gCurrentSprite


thumb_func_start func_8038ACC
func_8038ACC:
	push	{lr}
	ldr	r1, .L_38adc
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8038A80
	pop	{r0}
	bx	r0
.L_38adc:
	.4byte	gCurrentSprite


thumb_func_start func_8038AE0
func_8038AE0:
	ldr	r0, .L_38af8
	ldr	r1, .L_38afc
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #111	@ 0x6f
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #79	@ 0x4f
	strb	r1, [r0, #0]
	bx	lr
.L_38af8:
	.4byte	gCurrentSprite
.L_38afc:
	.4byte	sUnk_83BED6C


thumb_func_start func_8038B00
func_8038B00:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r4, .L_38b44
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_38b84
	lsr	r0, r0, #24
	cmp	r0, #22
	bne	.L_38b64
	ldrh	r1, [r4, #0]
	mov	r6, #64	@ 0x40
	add	r0, r6, #0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L_38b48
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	add	r0, #96	@ 0x60
	str	r0, [sp, #0]
	str	r6, [sp, #4]
	mov	r0, #161	@ 0xa1
	bl	func_801E3A8
	b	.L_38b5e
.L_38b44:
	.4byte	gCurrentSprite
.L_38b48:
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	sub	r0, #96	@ 0x60
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #161	@ 0xa1
	bl	func_801E3A8
.L_38b5e:
	mov	r0, #90	@ 0x5a
	bl	m4aSongNumStart
.L_38b64:
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_38b7c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_38b88
	ldr	r1, .L_38b80
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_38b88
.L_38b7c:
	.4byte	gSpriteAiCollisionResult
.L_38b80:
	.4byte	gCurrentSprite
.L_38b84:
	mov	r0, #15
	strb	r0, [r4, #28]
.L_38b88:
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8038B90
func_8038B90:
	ldr	r0, .L_38ba8
	ldr	r1, .L_38bac
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #24
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #84	@ 0x54
	strb	r1, [r0, #0]
	bx	lr
.L_38ba8:
	.4byte	gCurrentSprite
.L_38bac:
	.4byte	sUnk_83BECA4


thumb_func_start func_8038BB0
func_8038BB0:
	ldr	r0, .L_38bd0
	ldr	r1, .L_38bd4
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r3, r0, #0
	add	r3, #39	@ 0x27
	mov	r1, #52	@ 0x34
	strb	r1, [r3, #0]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
.L_38bd0:
	.4byte	gCurrentSprite
.L_38bd4:
	.4byte	sUnk_83BEDFC


thumb_func_start func_8038BD8
func_8038BD8:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_38c04
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_38c08
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_38c0c
	cmp	r1, r0
	bne	.L_38c10
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_38c1a
.L_38c04:
	.4byte	gCurrentSprite
.L_38c08:
	.4byte	sUnk_83BEF44
.L_38c0c:
	.4byte	0x7FFF
.L_38c10:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
.L_38c1a:
	strh	r0, [r3, #8]
	ldr	r4, .L_38c40
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #42	@ 0x2a
	bls	.L_38c48
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_38c44
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_38c64
	mov	r0, #29
	strb	r0, [r4, #28]
	b	.L_38c64
	.align	2, 0
.L_38c40:
	.4byte	gCurrentSprite
.L_38c44:
	.4byte	gSpriteAiCollisionResult
.L_38c48:
	cmp	r0, #23
	bhi	.L_38c64
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_38c90
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_38c60
	mov	r0, #27
	strb	r0, [r4, #28]
.L_38c60:
	mov	r0, #1
	strb	r0, [r4, #30]
.L_38c64:
	ldr	r2, .L_38c94
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_38cae
	ldr	r1, .L_38c98
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_38c9c
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_38caa
	mov	r0, #23
	b	.L_38cac
	.align	2, 0
.L_38c90:
	.4byte	gSpriteAiCollisionResult
.L_38c94:
	.4byte	gCurrentSprite
.L_38c98:
	.4byte	gWarioData
.L_38c9c:
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_38caa
	mov	r0, #23
	b	.L_38cac
.L_38caa:
	mov	r0, #17
.L_38cac:
	strb	r0, [r2, #28]
.L_38cae:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8038CB4
func_8038CB4:
	ldr	r0, .L_38ccc
	ldr	r1, .L_38cd0
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
.L_38ccc:
	.4byte	gCurrentSprite
.L_38cd0:
	.4byte	sUnk_83BEC2C


thumb_func_start func_8038CD4
func_8038CD4:
	ldr	r1, .L_38cf4
	ldr	r0, .L_38cf8
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
.L_38cf4:
	.4byte	gCurrentSprite
.L_38cf8:
	.4byte	sUnk_83BEDC4


thumb_func_start func_8038CFC
func_8038CFC:
	push	{r4, r5, lr}
	ldr	r5, .L_38d40
	ldr	r0, .L_38d44
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
	ldrh	r0, [r5, #8]
	sub	r0, #32
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r5, #0]
	ldr	r0, .L_38d48
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_38d40:
	.4byte	gCurrentSprite
.L_38d44:
	.4byte	sUnk_83BEEFC
.L_38d48:
	.4byte	0xFEFF


thumb_func_start func_8038D4C
func_8038D4C:
	push	{lr}
	ldr	r1, .L_38d5c
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8038CFC
	pop	{r0}
	bx	r0
.L_38d5c:
	.4byte	gCurrentSprite


thumb_func_start func_8038D60
func_8038D60:
	push	{lr}
	ldr	r1, .L_38d70
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8038CFC
	pop	{r0}
	bx	r0
.L_38d70:
	.4byte	gCurrentSprite


thumb_func_start func_8038D74
func_8038D74:
	push	{lr}
	ldr	r2, .L_38da8
	ldr	r0, .L_38dac
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #29]
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	mov	r0, #7
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	strb	r1, [r2, #26]
	ldrh	r0, [r2, #8]
	sub	r0, #32
	ldrh	r1, [r2, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	pop	{r0}
	bx	r0
	.align	2, 0
.L_38da8:
	.4byte	gCurrentSprite
.L_38dac:
	.4byte	sUnk_83BEEFC


thumb_func_start func_8038DB0
func_8038DB0:
	push	{lr}
	ldr	r1, .L_38dc0
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8038D74
	pop	{r0}
	bx	r0
.L_38dc0:
	.4byte	gCurrentSprite


thumb_func_start func_8038DC4
func_8038DC4:
	push	{lr}
	ldr	r1, .L_38dd4
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8038D74
	pop	{r0}
	bx	r0
.L_38dd4:
	.4byte	gCurrentSprite


thumb_func_start func_8038DD8
func_8038DD8:
	ldr	r2, .L_38e00
	ldr	r0, .L_38e04
	str	r0, [r2, #4]
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
.L_38e00:
	.4byte	gCurrentSprite
.L_38e04:
	.4byte	sUnk_83BED4C


thumb_func_start func_8038E08
func_8038E08:
	push	{lr}
	ldr	r1, .L_38e18
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_8038DD8
	pop	{r0}
	bx	r0
.L_38e18:
	.4byte	gCurrentSprite


thumb_func_start func_8038E1C
func_8038E1C:
	push	{lr}
	ldr	r1, .L_38e2c
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_8038DD8
	pop	{r0}
	bx	r0
.L_38e2c:
	.4byte	gCurrentSprite


thumb_func_start func_8038E30
func_8038E30:
	ldr	r1, .L_38e4c
	ldr	r0, .L_38e50
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
.L_38e4c:
	.4byte	gCurrentSprite
.L_38e50:
	.4byte	sUnk_83BEDC4


thumb_func_start func_8038E54
func_8038E54:
	push	{lr}
	ldr	r1, .L_38e64
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_8038E30
	pop	{r0}
	bx	r0
.L_38e64:
	.4byte	gCurrentSprite


thumb_func_start func_8038E68
func_8038E68:
	push	{lr}
	ldr	r1, .L_38e78
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_8038E30
	pop	{r0}
	bx	r0
.L_38e78:
	.4byte	gCurrentSprite


thumb_func_start func_8038E7C
func_8038E7C:
	ldr	r1, .L_38e90
	ldrb	r0, [r1, #30]
	add	r2, r1, #0
	cmp	r0, #5
	bne	.L_38e98
	ldr	r0, .L_38e94
	str	r0, [r2, #4]
	add	r1, #39	@ 0x27
	mov	r0, #8
	b	.L_38ea2
.L_38e90:
	.4byte	gCurrentSprite
.L_38e94:
	.4byte	sUnk_83BEE8C
.L_38e98:
	ldr	r0, .L_38ec0
	str	r0, [r2, #4]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #10
.L_38ea2:
	strb	r0, [r1, #0]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r2, #28]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_38ec4
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
.L_38ec0:
	.4byte	sUnk_83BEEBC
.L_38ec4:
	.4byte	0xFEFF


thumb_func_start func_8038EC8
func_8038EC8:
	push	{lr}
	bl	SpriteUtilDie
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8038ED4
func_8038ED4:
	ldr	r2, .L_38ef8
	ldr	r0, .L_38efc
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
.L_38ef8:
	.4byte	gCurrentSprite
.L_38efc:
	.4byte	sUnk_83BEDC4


thumb_func_start func_8038F00
func_8038F00:
	push	{lr}
	ldr	r1, .L_38f10
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_8038ED4
	pop	{r0}
	bx	r0
.L_38f10:
	.4byte	gCurrentSprite


thumb_func_start func_8038F14
func_8038F14:
	push	{lr}
	ldr	r1, .L_38f24
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_8038ED4
	pop	{r0}
	bx	r0
.L_38f24:
	.4byte	gCurrentSprite


thumb_func_start func_8038F28
func_8038F28:
	ldr	r0, .L_38f48
	ldr	r1, .L_38f4c
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #76	@ 0x4c
	strb	r1, [r0, #28]
	add	r3, r0, #0
	add	r3, #39	@ 0x27
	mov	r1, #22
	strb	r1, [r3, #0]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
.L_38f48:
	.4byte	gCurrentSprite
.L_38f4c:
	.4byte	sUnk_83BED0C


thumb_func_start func_8038F50
func_8038F50:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_38f88
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_38fd2
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_38f8c
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_38f90
	mov	r0, #29
	b	.L_38fd4
.L_38f88:
	.4byte	gCurrentSprite
.L_38f8c:
	.4byte	gSpriteAiCollisionFlags
.L_38f90:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_38fbc
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_38fc0
	cmp	r1, r0
	bne	.L_38fc4
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_38fd6
	.align	2, 0
.L_38fbc:
	.4byte	sUnk_8352B18
.L_38fc0:
	.4byte	0x7FFF
.L_38fc4:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_38fd6
.L_38fd2:
	mov	r0, #27
.L_38fd4:
	strb	r0, [r4, #28]
.L_38fd6:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8038FDC
func_8038FDC:
	ldr	r1, .L_38fec
	ldr	r0, .L_38ff0
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	bx	lr
.L_38fec:
	.4byte	gCurrentSprite
.L_38ff0:
	.4byte	sUnk_83BEDC4


thumb_func_start func_8038FF4
func_8038FF4:
	push	{lr}
	ldr	r1, .L_39004
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_8038FDC
	pop	{r0}
	bx	r0
.L_39004:
	.4byte	gCurrentSprite


thumb_func_start func_8039008
func_8039008:
	push	{lr}
	ldr	r1, .L_39018
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_8038FDC
	pop	{r0}
	bx	r0
.L_39018:
	.4byte	gCurrentSprite


thumb_func_start func_803901C
func_803901C:
	ldr	r1, .L_39030
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r0, .L_39034
	str	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #20]
	strb	r0, [r1, #22]
	bx	lr
.L_39030:
	.4byte	gCurrentSprite
.L_39034:
	.4byte	sUnk_83BEDC4


thumb_func_start func_8039038
func_8039038:
	push	{lr}
	ldr	r1, .L_39048
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	bl	func_803901C
	pop	{r0}
	bx	r0
.L_39048:
	.4byte	gCurrentSprite


thumb_func_start func_803904C
func_803904C:
	push	{lr}
	ldr	r1, .L_3905c
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	bl	func_803901C
	pop	{r0}
	bx	r0
.L_3905c:
	.4byte	gCurrentSprite


thumb_func_start func_8039060
func_8039060:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_390c4
	mov	ip, r0
	ldrh	r0, [r0, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #3
	add	r2, r1, #0
	mov	r4, #0
	mov	r3, #0
	orr	r2, r0
	ldr	r0, .L_390c8
	and	r2, r0
	mov	r6, ip
	strh	r2, [r6, #0]
	mov	r0, ip
	add	r0, #32
	mov	r1, #8
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r1, #16
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r5, #12
	strb	r5, [r0, #0]
	ldr	r0, .L_390cc
	str	r0, [r6, #4]
	strb	r4, [r6, #22]
	strh	r3, [r6, #20]
	mov	r0, #39	@ 0x27
	strb	r0, [r6, #30]
	mov	r0, #1
	strb	r0, [r6, #26]
	strb	r1, [r6, #28]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r2
	cmp	r0, #0
	beq	.L_390d0
	mov	r0, ip
	add	r0, #37	@ 0x25
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r5, [r0, #0]
	b	.L_390da
.L_390c4:
	.4byte	gCurrentSprite
.L_390c8:
	.4byte	0xFFFB
.L_390cc:
	.4byte	sUnk_83BEF34
.L_390d0:
	mov	r0, ip
	add	r0, #37	@ 0x25
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
.L_390da:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_80390E0
func_80390E0:
	ldr	r2, .L_390f4
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_390f8
	ldrh	r0, [r2, #10]
	add	r0, #8
	b	.L_390fc
	.align	2, 0
.L_390f4:
	.4byte	gCurrentSprite
.L_390f8:
	ldrh	r0, [r2, #10]
	sub	r0, #8
.L_390fc:
	strh	r0, [r2, #10]
	bx	lr


thumb_func_start func_8039100
func_8039100:
	ldr	r0, .L_39110
	add	r2, r0, #0
	add	r2, #39	@ 0x27
	mov	r1, #20
	strb	r1, [r2, #0]
	mov	r1, #50	@ 0x32
	strb	r1, [r0, #28]
	bx	lr
.L_39110:
	.4byte	gCurrentSprite


thumb_func_start func_8039114
func_8039114:
	ldr	r2, .L_3912c
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3912a
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_3912a:
	bx	lr
.L_3912c:
	.4byte	gCurrentSprite


thumb_func_start SpriteBowBalloon
SpriteBowBalloon:
	push	{lr}
	ldr	r2, .L_39158
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_39144
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_39144:
	ldrb	r0, [r2, #28]
	cmp	r0, #111	@ 0x6f
	bls	.L_3914c
	b	.L_394ba
.L_3914c:
	lsl	r0, r0, #2
	ldr	r1, .L_3915c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_39158:
	.4byte	gCurrentSprite
.L_3915c:
	.4byte	.L_39160
.L_39160:
	.4byte	.L_39320
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_39326
	.4byte	.L_3932a
	.4byte	.L_39330
	.4byte	.L_39334
	.4byte	.L_394ba
	.4byte	.L_39334
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_39344
	.4byte	.L_39348
	.4byte	.L_3934e
	.4byte	.L_39352
	.4byte	.L_39358
	.4byte	.L_3935c
	.4byte	.L_39362
	.4byte	.L_39366
	.4byte	.L_3936c
	.4byte	.L_39370
	.4byte	.L_39376
	.4byte	.L_3937a
	.4byte	.L_39380
	.4byte	.L_39384
	.4byte	.L_3938a
	.4byte	.L_3938e
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_39394
	.4byte	.L_39398
	.4byte	.L_3939e
	.4byte	.L_393a2
	.4byte	.L_393a8
	.4byte	.L_393ac
	.4byte	.L_393b2
	.4byte	.L_393b6
	.4byte	.L_393bc
	.4byte	.L_393f4
	.4byte	.L_393c2
	.4byte	.L_393d6
	.4byte	.L_393c8
	.4byte	.L_393cc
	.4byte	.L_393d2
	.4byte	.L_393d6
	.4byte	.L_393dc
	.4byte	.L_393e0
	.4byte	.L_393e6
	.4byte	.L_393ea
	.4byte	.L_393f0
	.4byte	.L_393f4
	.4byte	.L_393fa
	.4byte	.L_393fe
	.4byte	.L_39404
	.4byte	.L_39414
	.4byte	.L_3940a
	.4byte	.L_3941e
	.4byte	.L_39410
	.4byte	.L_39414
	.4byte	.L_3941a
	.4byte	.L_3941e
	.4byte	.L_39424
	.4byte	.L_39428
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_3936c
	.4byte	.L_39376
	.4byte	.L_3942e
	.4byte	.L_39434
	.4byte	.L_3943a
	.4byte	.L_39440
	.4byte	.L_39452
	.4byte	.L_39458
	.4byte	.L_39446
	.4byte	.L_3944c
	.4byte	.L_3945e
	.4byte	.L_39462
	.4byte	.L_39486
	.4byte	.L_3948a
	.4byte	.L_39468
	.4byte	.L_3946c
	.4byte	.L_39490
	.4byte	.L_39494
	.4byte	.L_39472
	.4byte	.L_39476
	.4byte	.L_3949a
	.4byte	.L_3949e
	.4byte	.L_3947c
	.4byte	.L_39480
	.4byte	.L_394a4
	.4byte	.L_394a8
	.4byte	.L_394ae
	.4byte	.L_394b4
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_394ba
	.4byte	.L_3933a
	.4byte	.L_3933e
.L_39320:
	bl	func_8038824
	b	.L_394be
.L_39326:
	bl	func_8038878
.L_3932a:
	bl	func_8038898
	b	.L_394be
.L_39330:
	bl	func_80389E4
.L_39334:
	bl	func_8038A04
	b	.L_394be
.L_3933a:
	bl	func_8038AE0
.L_3933e:
	bl	func_8038B00
	b	.L_394be
.L_39344:
	bl	func_8038B90
.L_39348:
	bl	func_8023C94
	b	.L_394be
.L_3934e:
	bl	func_8038BB0
.L_39352:
	bl	func_8038BD8
	b	.L_394be
.L_39358:
	bl	func_8038CB4
.L_3935c:
	bl	func_8023D48
	b	.L_394be
.L_39362:
	bl	func_8038CD4
.L_39366:
	bl	func_8023EE0
	b	.L_394be
.L_3936c:
	bl	func_8038D4C
.L_39370:
	bl	SpriteUtilFallOffscreenRight
	b	.L_394be
.L_39376:
	bl	func_8038D60
.L_3937a:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_394be
.L_39380:
	bl	func_8038E08
.L_39384:
	bl	SpriteUtilPushedRight
	b	.L_394be
.L_3938a:
	bl	func_8038E1C
.L_3938e:
	bl	SpriteUtilPushedLeft
	b	.L_394be
.L_39394:
	bl	func_8038E54
.L_39398:
	bl	func_8024478
	b	.L_394be
.L_3939e:
	bl	func_8038E68
.L_393a2:
	bl	func_802449C
	b	.L_394be
.L_393a8:
	bl	func_80244C0
.L_393ac:
	bl	func_80244E0
	b	.L_394be
.L_393b2:
	bl	func_8038E7C
.L_393b6:
	bl	SpriteUtilDieAfterDelay
	b	.L_394be
.L_393bc:
	bl	func_8038AB8
	b	.L_393f4
.L_393c2:
	bl	func_8038ACC
	b	.L_393d6
.L_393c8:
	bl	func_8024688
.L_393cc:
	bl	func_80246B8
	b	.L_394be
.L_393d2:
	bl	func_802473C
.L_393d6:
	bl	func_802476C
	b	.L_394be
.L_393dc:
	bl	func_80247F0
.L_393e0:
	bl	func_8024820
	b	.L_394be
.L_393e6:
	bl	func_80248A4
.L_393ea:
	bl	func_80248D4
	b	.L_394be
.L_393f0:
	bl	func_8024958
.L_393f4:
	bl	func_8024988
	b	.L_394be
.L_393fa:
	bl	func_8024A0C
.L_393fe:
	bl	func_8024A3C
	b	.L_394be
.L_39404:
	bl	func_8024AC0
	b	.L_39414
.L_3940a:
	bl	func_8024BEC
	b	.L_3941e
.L_39410:
	bl	func_8038F00
.L_39414:
	bl	func_8024AD4
	b	.L_394be
.L_3941a:
	bl	func_8038F14
.L_3941e:
	bl	func_8024C00
	b	.L_394be
.L_39424:
	bl	func_8038F28
.L_39428:
	bl	func_8038F50
	b	.L_394be
.L_3942e:
	bl	func_8038FF4
	b	.L_394be
.L_39434:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_394be
.L_3943a:
	bl	func_8039008
	b	.L_394be
.L_39440:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_394be
.L_39446:
	bl	func_8039038
	b	.L_394be
.L_3944c:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_394be
.L_39452:
	bl	func_803904C
	b	.L_394be
.L_39458:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_394be
.L_3945e:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_39462:
	bl	SpriteUtilThrownLeftSoft
	b	.L_394be
.L_39468:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_3946c:
	bl	SpriteUtilThrownLeftHard
	b	.L_394be
.L_39472:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_39476:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_394be
.L_3947c:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_39480:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_394be
.L_39486:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_3948a:
	bl	SpriteUtilThrownRightSoft
	b	.L_394be
.L_39490:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_39494:
	bl	SpriteUtilThrownRightHard
	b	.L_394be
.L_3949a:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_3949e:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_394be
.L_394a4:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_394a8:
	bl	SpriteUtilThrownUpRightHard
	b	.L_394be
.L_394ae:
	bl	func_8038DC4
	b	.L_394be
.L_394b4:
	bl	func_8038DB0
	b	.L_394be
.L_394ba:
	bl	func_8038EC8
.L_394be:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownA1
SpriteUnknownA1:
	push	{lr}
	ldr	r0, .L_394d8
	ldrb	r0, [r0, #28]
	cmp	r0, #16
	beq	.L_394ec
	cmp	r0, #16
	bgt	.L_394dc
	cmp	r0, #0
	beq	.L_394e6
	b	.L_39508
.L_394d8:
	.4byte	gCurrentSprite
.L_394dc:
	cmp	r0, #49	@ 0x31
	beq	.L_394f2
	cmp	r0, #50	@ 0x32
	beq	.L_394f6
	b	.L_39508
.L_394e6:
	bl	func_8039060
	b	.L_3950c
.L_394ec:
	bl	func_80390E0
	b	.L_3950c
.L_394f2:
	bl	func_8039100
.L_394f6:
	bl	func_8039114
	ldr	r1, .L_39504
	mov	r0, #1
	strb	r0, [r1, #31]
	b	.L_3950c
	.align	2, 0
.L_39504:
	.4byte	gCurrentSprite
.L_39508:
	bl	SpriteUtilDie
.L_3950c:
	pop	{r0}
	bx	r0
