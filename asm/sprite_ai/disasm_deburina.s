.include "macros.s.inc"


thumb_func_start func_8058820
func_8058820:
	push	{r4, lr}
	ldr	r0, .L_58888
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
	strb	r2, [r1, #30]
	add	r1, #32
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #8
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #34	@ 0x22
	mov	r1, #32
	strb	r1, [r0, #0]
	mov	r4, ip
	add	r4, #35	@ 0x23
	mov	r0, #128	@ 0x80
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r1, ip
	add	r1, #38	@ 0x26
	mov	r0, #28
	strb	r0, [r1, #0]
	ldr	r0, .L_5888c
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #111	@ 0x6f
	strb	r0, [r1, #28]
	ldrh	r0, [r1, #8]
	add	r0, #32
	strh	r0, [r1, #8]
	ldrh	r0, [r1, #10]
	sub	r0, #4
	strh	r0, [r1, #10]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_58888:
	.4byte	gCurrentSprite
.L_5888c:
	.4byte	sUnk_83DD4CC


thumb_func_start func_8058890
func_8058890:
	push	{lr}
	mov	r0, #200	@ 0xc8
	mov	r1, #200	@ 0xc8
	bl	SpriteUtilCheckWarioNearbyLeftRight
	cmp	r0, #0
	beq	.L_588ba
	ldr	r0, .L_588c0
	ldr	r1, .L_588c4
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #113	@ 0x71
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #50	@ 0x32
	strb	r1, [r0, #0]
	mov	r0, #110	@ 0x6e
	bl	m4aSongNumStart
.L_588ba:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_588c0:
	.4byte	gCurrentSprite
.L_588c4:
	.4byte	sUnk_83DD4DC


thumb_func_start func_80588C8
func_80588C8:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r1, .L_5891c
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	mov	ip, r1
	cmp	r2, #0
	bne	.L_58948
	mov	r5, #1
	strb	r5, [r1, #30]
	ldrh	r1, [r1, #0]
	ldr	r0, .L_58920
	and	r0, r1
	mov	r4, #0
	ldr	r1, .L_58924
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	ldr	r0, .L_58928
	str	r0, [r1, #4]
	strb	r4, [r1, #22]
	strh	r2, [r1, #20]
	mov	r0, #115	@ 0x73
	strb	r0, [r1, #28]
	mov	r0, #48	@ 0x30
	strb	r0, [r3, #0]
	ldr	r1, .L_5892c
	mov	r2, ip
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_58930
	mov	r0, ip
	add	r0, #41	@ 0x29
	strb	r4, [r0, #0]
	b	.L_58936
	.align	2, 0
.L_5891c:
	.4byte	gCurrentSprite
.L_58920:
	.4byte	0xFBFF
.L_58924:
	.4byte	0xFFF7
.L_58928:
	.4byte	sUnk_83DD594
.L_5892c:
	.4byte	gWarioData
.L_58930:
	mov	r0, ip
	add	r0, #41	@ 0x29
	strb	r5, [r0, #0]
.L_58936:
	mov	r4, ip
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #210	@ 0xd2
	bl	SpriteSpawnAsChild
.L_58948:
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8058950
func_8058950:
	push	{lr}
	ldr	r2, .L_58978
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_589a4
	add	r0, r2, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5897c
	ldrh	r0, [r2, #10]
	add	r0, #1
	b	.L_58980
	.align	2, 0
.L_58978:
	.4byte	gCurrentSprite
.L_5897c:
	ldrh	r0, [r2, #10]
	sub	r0, #1
.L_58980:
	strh	r0, [r2, #10]
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_5899c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_589b4
	ldr	r1, .L_589a0
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_589b4
	.align	2, 0
.L_5899c:
	.4byte	gSpriteAiCollisionResult
.L_589a0:
	.4byte	gCurrentSprite
.L_589a4:
	ldr	r0, .L_589b8
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
	bl	SpriteUtilTurnTowardWario
.L_589b4:
	pop	{r0}
	bx	r0
.L_589b8:
	.4byte	sUnk_83DD36C


thumb_func_start func_80589BC
func_80589BC:
	ldr	r0, .L_589d8
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	ldr	r1, .L_589dc
	str	r1, [r0, #4]
	mov	r1, #16
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #30]
	add	r0, #35	@ 0x23
	mov	r1, #128	@ 0x80
	strb	r1, [r0, #0]
	bx	lr
.L_589d8:
	.4byte	gCurrentSprite
.L_589dc:
	.4byte	sUnk_83DD36C


thumb_func_start func_80589E0
func_80589E0:
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L_58a34
	ldr	r0, [r2, #20]
	ldr	r1, .L_58a38
	and	r0, r1
	ldr	r1, .L_58a3c
	cmp	r0, r1
	bne	.L_58a00
	ldrh	r1, [r2, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_58a00
	mov	r0, #111	@ 0x6f
	bl	m4aSongNumStart
.L_58a00:
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_58a40
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_58a70
	ldr	r3, .L_58a34
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_58a44
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_58a58
	.align	2, 0
.L_58a34:
	.4byte	gCurrentSprite
.L_58a38:
	.4byte	0xFFFFFF
.L_58a3c:
	.4byte	0x10002
.L_58a40:
	.4byte	gSpriteAiCollisionResult
.L_58a44:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_58a58:
	ldr	r0, .L_58a68
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_58b24
	ldr	r1, .L_58a6c
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_58b28
.L_58a68:
	.4byte	gSpriteAiCollisionFlags
.L_58a6c:
	.4byte	gCurrentSprite
.L_58a70:
	ldr	r4, .L_58ac0
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_58ac8
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_58b24
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	and	r0, r2
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	ldrb	r1, [r6, #0]
	add	r0, r0, r1
	cmp	r0, #63	@ 0x3f
	ble	.L_58b24
	ldrh	r0, [r4, #8]
	add	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_58ac4
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_58b1a
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_58b08
.L_58ac0:
	.4byte	gCurrentSprite
.L_58ac4:
	.4byte	gSpriteAiCollisionFlags
.L_58ac8:
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_58b24
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	ldrb	r1, [r6, #0]
	and	r0, r2
	cmp	r0, r1
	bcs	.L_58b24
	ldrh	r0, [r4, #8]
	sub	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_58b20
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_58b1a
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_58b08:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_58b24
.L_58b1a:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_58b28
.L_58b20:
	.4byte	gSpriteAiCollisionFlags
.L_58b24:
	bl	func_80263AC
.L_58b28:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8058B30
func_8058B30:
	ldr	r0, .L_58b54
	ldr	r1, .L_58b58
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r2, r0, #0
	add	r2, #39	@ 0x27
	mov	r1, #40	@ 0x28
	strb	r1, [r2, #0]
	mov	r1, #1
	strb	r1, [r0, #30]
	add	r0, #35	@ 0x23
	mov	r1, #128	@ 0x80
	strb	r1, [r0, #0]
	bx	lr
.L_58b54:
	.4byte	gCurrentSprite
.L_58b58:
	.4byte	sUnk_83DD394


thumb_func_start func_8058B5C
func_8058B5C:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_58b78
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_58b80
	ldr	r1, .L_58b7c
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_58b9e
	.align	2, 0
.L_58b78:
	.4byte	gSpriteAiCollisionResult
.L_58b7c:
	.4byte	gCurrentSprite
.L_58b80:
	ldr	r2, .L_58ba4
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_58b9e
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #15
	strb	r0, [r2, #28]
.L_58b9e:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_58ba4:
	.4byte	gCurrentSprite


thumb_func_start func_8058BA8
func_8058BA8:
	ldr	r0, .L_58bcc
	ldr	r1, .L_58bd0
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #24
	strb	r1, [r0, #28]
	add	r2, r0, #0
	add	r2, #39	@ 0x27
	mov	r1, #40	@ 0x28
	strb	r1, [r2, #0]
	mov	r1, #1
	strb	r1, [r0, #30]
	add	r0, #35	@ 0x23
	mov	r1, #128	@ 0x80
	strb	r1, [r0, #0]
	bx	lr
.L_58bcc:
	.4byte	gCurrentSprite
.L_58bd0:
	.4byte	sUnk_83DD394


thumb_func_start func_8058BD4
func_8058BD4:
	ldr	r0, .L_58bf0
	ldr	r1, .L_58bf4
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #8
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_58bf0:
	.4byte	gCurrentSprite
.L_58bf4:
	.4byte	sUnk_83DD43C


thumb_func_start func_8058BF8
func_8058BF8:
	push	{lr}
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_58c14
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_58c1c
	ldr	r1, .L_58c18
	mov	r0, #29
	strb	r0, [r1, #28]
	b	.L_58c62
	.align	2, 0
.L_58c14:
	.4byte	gSpriteAiCollisionResult
.L_58c18:
	.4byte	gCurrentSprite
.L_58c1c:
	ldr	r2, .L_58c48
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_58c62
	ldr	r1, .L_58c4c
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_58c50
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_58c5e
	mov	r0, #23
	b	.L_58c60
	.align	2, 0
.L_58c48:
	.4byte	gCurrentSprite
.L_58c4c:
	.4byte	gWarioData
.L_58c50:
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_58c5e
	mov	r0, #23
	b	.L_58c60
.L_58c5e:
	mov	r0, #17
.L_58c60:
	strb	r0, [r2, #28]
.L_58c62:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8058C68
func_8058C68:
	ldr	r1, .L_58c88
	ldr	r0, .L_58c8c
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	mov	r0, #28
	strb	r0, [r1, #28]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #1
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_58c88:
	.4byte	gCurrentSprite
.L_58c8c:
	.4byte	sUnk_83DD5F4


thumb_func_start func_8058C90
func_8058C90:
	ldr	r0, .L_58cb4
	ldr	r1, .L_58cb8
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	mov	r2, #0
	strh	r1, [r0, #20]
	mov	r1, #30
	strb	r1, [r0, #28]
	add	r1, r0, #0
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	mov	r1, #5
	strb	r1, [r0, #30]
	add	r0, #35	@ 0x23
	mov	r1, #96	@ 0x60
	strb	r1, [r0, #0]
	bx	lr
.L_58cb4:
	.4byte	gCurrentSprite
.L_58cb8:
	.4byte	sUnk_83DD3C4


thumb_func_start func_8058CBC
func_8058CBC:
	push	{r4, r5, lr}
	ldr	r5, .L_58d20
	ldr	r0, .L_58d24
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
	mov	r3, #5
	bl	func_807687C
	ldrh	r0, [r5, #8]
	sub	r0, #32
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r5, #0]
	ldr	r0, .L_58d28
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	ldr	r1, .L_58d2c
	ldr	r0, .L_58d30
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
.L_58d20:
	.4byte	gCurrentSprite
.L_58d24:
	.4byte	sUnk_83DD49C
.L_58d28:
	.4byte	0xFEFF
.L_58d2c:
	.4byte	gPersistentSpriteData
.L_58d30:
	.4byte	gCurrentRoom


thumb_func_start func_8058D34
func_8058D34:
	push	{lr}
	ldr	r1, .L_58d44
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8058CBC
	pop	{r0}
	bx	r0
.L_58d44:
	.4byte	gCurrentSprite


thumb_func_start func_8058D48
func_8058D48:
	push	{lr}
	ldr	r1, .L_58d58
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8058CBC
	pop	{r0}
	bx	r0
.L_58d58:
	.4byte	gCurrentSprite


thumb_func_start func_8058D5C
func_8058D5C:
	push	{r4, lr}
	ldr	r4, .L_58db0
	ldr	r0, .L_58db4
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
	mov	r3, #5
	bl	func_807687C
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldr	r1, .L_58db8
	ldr	r0, .L_58dbc
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
.L_58db0:
	.4byte	gCurrentSprite
.L_58db4:
	.4byte	sUnk_83DD49C
.L_58db8:
	.4byte	gPersistentSpriteData
.L_58dbc:
	.4byte	gCurrentRoom


thumb_func_start func_8058DC0
func_8058DC0:
	push	{lr}
	ldr	r1, .L_58dd0
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8058D5C
	pop	{r0}
	bx	r0
.L_58dd0:
	.4byte	gCurrentSprite


thumb_func_start func_8058DD4
func_8058DD4:
	push	{lr}
	ldr	r1, .L_58de4
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8058D5C
	pop	{r0}
	bx	r0
.L_58de4:
	.4byte	gCurrentSprite


thumb_func_start func_8058DE8
func_8058DE8:
	ldr	r2, .L_58e14
	ldr	r0, .L_58e18
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
	mov	r0, #1
	strb	r0, [r2, #30]
	bx	lr
	.align	2, 0
.L_58e14:
	.4byte	gCurrentSprite
.L_58e18:
	.4byte	sUnk_83DD3AC


thumb_func_start func_8058E1C
func_8058E1C:
	push	{lr}
	ldr	r1, .L_58e2c
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_8058DE8
	pop	{r0}
	bx	r0
.L_58e2c:
	.4byte	gCurrentSprite


thumb_func_start func_8058E30
func_8058E30:
	push	{lr}
	ldr	r1, .L_58e40
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_8058DE8
	pop	{r0}
	bx	r0
.L_58e40:
	.4byte	gCurrentSprite


thumb_func_start func_8058E44
func_8058E44:
	ldr	r0, .L_58e64
	ldr	r1, .L_58e68
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	mov	r2, #0
	strh	r1, [r0, #20]
	add	r1, r0, #0
	add	r1, #40	@ 0x28
	strb	r2, [r1, #0]
	mov	r1, #5
	strb	r1, [r0, #30]
	add	r0, #35	@ 0x23
	mov	r1, #96	@ 0x60
	strb	r1, [r0, #0]
	bx	lr
.L_58e64:
	.4byte	gCurrentSprite
.L_58e68:
	.4byte	sUnk_83DD3C4


thumb_func_start func_8058E6C
func_8058E6C:
	push	{lr}
	ldr	r1, .L_58e7c
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_8058E44
	pop	{r0}
	bx	r0
.L_58e7c:
	.4byte	gCurrentSprite


thumb_func_start func_8058E80
func_8058E80:
	push	{lr}
	ldr	r1, .L_58e90
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_8058E44
	pop	{r0}
	bx	r0
.L_58e90:
	.4byte	gCurrentSprite


thumb_func_start func_8058E94
func_8058E94:
	push	{r4, lr}
	ldr	r4, .L_58ee4
	ldr	r0, .L_58ee8
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #11
	strb	r0, [r1, #0]
	mov	r0, #50	@ 0x32
	strb	r0, [r4, #28]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_58eec
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #5
	bl	func_807687C
	ldr	r1, .L_58ef0
	ldr	r0, .L_58ef4
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
.L_58ee4:
	.4byte	gCurrentSprite
.L_58ee8:
	.4byte	sUnk_83DD464
.L_58eec:
	.4byte	0xFEFF
.L_58ef0:
	.4byte	gPersistentSpriteData
.L_58ef4:
	.4byte	gCurrentRoom


thumb_func_start func_8058EF8
func_8058EF8:
	push	{r4, lr}
	ldr	r4, .L_58f24
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #5
	bl	func_807687C
	bl	SpriteUtilDie
	ldr	r1, .L_58f28
	ldr	r0, .L_58f2c
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
.L_58f24:
	.4byte	gCurrentSprite
.L_58f28:
	.4byte	gPersistentSpriteData
.L_58f2c:
	.4byte	gCurrentRoom


thumb_func_start func_8058F30
func_8058F30:
	ldr	r2, .L_58f68
	ldr	r0, .L_58f6c
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
	beq	.L_58f64
	mov	r0, #5
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #35	@ 0x23
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
.L_58f64:
	bx	lr
	.align	2, 0
.L_58f68:
	.4byte	gCurrentSprite
.L_58f6c:
	.4byte	sUnk_83DD3C4


thumb_func_start func_8058F70
func_8058F70:
	push	{lr}
	ldr	r1, .L_58f80
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8058F30
	pop	{r0}
	bx	r0
.L_58f80:
	.4byte	gCurrentSprite


thumb_func_start func_8058F84
func_8058F84:
	push	{lr}
	ldr	r1, .L_58f94
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8058F30
	pop	{r0}
	bx	r0
.L_58f94:
	.4byte	gCurrentSprite


thumb_func_start func_8058F98
func_8058F98:
	ldr	r2, .L_58fc4
	ldr	r0, .L_58fc8
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
	add	r1, r2, #0
	add	r1, #35	@ 0x23
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_58fc4:
	.4byte	gCurrentSprite
.L_58fc8:
	.4byte	sUnk_83DD3C4


thumb_func_start func_8058FCC
func_8058FCC:
	push	{lr}
	ldr	r1, .L_58fdc
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_8058F98
	pop	{r0}
	bx	r0
.L_58fdc:
	.4byte	gCurrentSprite


thumb_func_start func_8058FE0
func_8058FE0:
	push	{lr}
	ldr	r1, .L_58ff0
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_8058F98
	pop	{r0}
	bx	r0
.L_58ff0:
	.4byte	gCurrentSprite


thumb_func_start func_8058FF4
func_8058FF4:
	ldr	r2, .L_5901c
	ldr	r0, .L_59020
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	mov	r0, #76	@ 0x4c
	strb	r0, [r2, #28]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #40	@ 0x28
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #1
	strb	r0, [r2, #30]
	bx	lr
	.align	2, 0
.L_5901c:
	.4byte	gCurrentSprite
.L_59020:
	.4byte	sUnk_83DD5F4


thumb_func_start func_8059024
func_8059024:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_59054
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r6, .L_59058
	lsl	r0, r3, #1
	add	r0, r0, r6
	ldrh	r4, [r0, #0]
	mov	r5, #0
	ldrsh	r1, [r0, r5]
	ldr	r0, .L_5905c
	add	r5, r2, #0
	cmp	r1, r0
	bne	.L_59060
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r6
	ldrh	r0, [r5, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_5906a
	.align	2, 0
.L_59054:
	.4byte	gCurrentSprite
.L_59058:
	.4byte	sUnk_8352B18
.L_5905c:
	.4byte	0x7FFF
.L_59060:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r5, #8]
	add	r0, r0, r4
.L_5906a:
	strh	r0, [r5, #8]
	add	r4, r5, #0
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_590ac
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_59092
	mov	r0, #29
	strb	r0, [r4, #28]
.L_59092:
	add	r1, r5, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_590a6
	mov	r0, #27
	strb	r0, [r5, #28]
.L_590a6:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_590ac:
	.4byte	gSpriteAiCollisionFlags


thumb_func_start func_80590B0
func_80590B0:
	ldr	r1, .L_590c0
	ldr	r0, .L_590c4
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	bx	lr
.L_590c0:
	.4byte	gCurrentSprite
.L_590c4:
	.4byte	sUnk_83DD5DC


thumb_func_start func_80590C8
func_80590C8:
	push	{lr}
	ldr	r1, .L_590d8
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_80590B0
	pop	{r0}
	bx	r0
.L_590d8:
	.4byte	gCurrentSprite


thumb_func_start func_80590DC
func_80590DC:
	push	{lr}
	ldr	r1, .L_590ec
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_80590B0
	pop	{r0}
	bx	r0
.L_590ec:
	.4byte	gCurrentSprite


thumb_func_start func_80590F0
func_80590F0:
	ldr	r1, .L_59104
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r0, .L_59108
	str	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #20]
	strb	r0, [r1, #22]
	bx	lr
.L_59104:
	.4byte	gCurrentSprite
.L_59108:
	.4byte	sUnk_83DD5DC


thumb_func_start func_805910C
func_805910C:
	push	{lr}
	ldr	r1, .L_5911c
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	bl	func_80590F0
	pop	{r0}
	bx	r0
.L_5911c:
	.4byte	gCurrentSprite


thumb_func_start func_8059120
func_8059120:
	push	{lr}
	ldr	r1, .L_59130
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	bl	func_80590F0
	pop	{r0}
	bx	r0
.L_59130:
	.4byte	gCurrentSprite


thumb_func_start func_8059134
func_8059134:
	ldr	r0, .L_5918c
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_59190
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #8
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r1, #24
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r1, ip
	add	r1, #35	@ 0x23
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #168	@ 0xa8
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #0]
	ldr	r0, .L_59194
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
.L_5918c:
	.4byte	gCurrentSprite
.L_59190:
	.4byte	0xFFFB
.L_59194:
	.4byte	sUnk_83DD344


thumb_func_start func_8059198
func_8059198:
	push	{r4, r5, lr}
	mov	r0, #109	@ 0x6d
	bl	SpriteUtilFindParentSlotOrU8Max
	add	r4, r0, #0
	cmp	r4, #255	@ 0xff
	beq	.L_591ba
	ldr	r2, .L_591c4
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r3, r0, r2
	ldrh	r1, [r3, #0]
	mov	r0, #1
	and	r0, r1
	add	r5, r2, #0
	cmp	r0, #0
	bne	.L_591cc
.L_591ba:
	ldr	r1, .L_591c8
	mov	r0, #0
	strh	r0, [r1, #0]
	b	.L_5922a
	.align	2, 0
.L_591c4:
	.4byte	gSpriteData
.L_591c8:
	.4byte	gCurrentSprite
.L_591cc:
	ldrb	r0, [r3, #28]
	cmp	r0, #28
	bgt	.L_591e8
	cmp	r0, #27
	bge	.L_591f4
	cmp	r0, #15
	blt	.L_5920c
	cmp	r0, #18
	ble	.L_591f4
	cmp	r0, #24
	bgt	.L_5920c
	cmp	r0, #23
	blt	.L_5920c
	b	.L_591f4
.L_591e8:
	cmp	r0, #75	@ 0x4b
	blt	.L_5920c
	cmp	r0, #76	@ 0x4c
	ble	.L_591f4
	cmp	r0, #115	@ 0x73
	bne	.L_5920c
.L_591f4:
	ldr	r0, .L_59204
	ldrh	r2, [r0, #0]
	ldr	r1, .L_59208
	and	r1, r2
	strh	r1, [r0, #0]
	add	r2, r0, #0
	b	.L_5921c
	.align	2, 0
.L_59204:
	.4byte	gCurrentSprite
.L_59208:
	.4byte	0xFFFB
.L_5920c:
	ldr	r1, .L_59230
	mov	r0, #2
	strb	r0, [r1, #31]
	ldrh	r2, [r1, #0]
	mov	r0, #4
	orr	r0, r2
	strh	r0, [r1, #0]
	add	r2, r1, #0
.L_5921c:
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r5
	ldrh	r1, [r0, #8]
	strh	r1, [r2, #8]
	ldrh	r0, [r0, #10]
	strh	r0, [r2, #10]
.L_5922a:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_59230:
	.4byte	gCurrentSprite


thumb_func_start SpriteDeburina
SpriteDeburina:
	push	{lr}
	ldr	r2, .L_5925c
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_59248
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_59248:
	ldrb	r0, [r2, #28]
	cmp	r0, #115	@ 0x73
	bls	.L_59250
	b	.L_595d6
.L_59250:
	lsl	r0, r0, #2
	ldr	r1, .L_59260
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_5925c:
	.4byte	gCurrentSprite
.L_59260:
	.4byte	.L_59264
.L_59264:
	.4byte	.L_59434
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_5944c
	.4byte	.L_59450
	.4byte	.L_59456
	.4byte	.L_5945a
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_59460
	.4byte	.L_59464
	.4byte	.L_5946a
	.4byte	.L_5946e
	.4byte	.L_59474
	.4byte	.L_59478
	.4byte	.L_5947e
	.4byte	.L_59482
	.4byte	.L_59488
	.4byte	.L_5948c
	.4byte	.L_59492
	.4byte	.L_59496
	.4byte	.L_5949c
	.4byte	.L_594a0
	.4byte	.L_594a6
	.4byte	.L_594aa
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_594b0
	.4byte	.L_594b4
	.4byte	.L_594ba
	.4byte	.L_594be
	.4byte	.L_594c4
	.4byte	.L_594c8
	.4byte	.L_594ce
	.4byte	.L_594d2
	.4byte	.L_594d8
	.4byte	.L_59510
	.4byte	.L_594de
	.4byte	.L_594f2
	.4byte	.L_594e4
	.4byte	.L_594e8
	.4byte	.L_594ee
	.4byte	.L_594f2
	.4byte	.L_594f8
	.4byte	.L_594fc
	.4byte	.L_59502
	.4byte	.L_59506
	.4byte	.L_5950c
	.4byte	.L_59510
	.4byte	.L_59516
	.4byte	.L_5951a
	.4byte	.L_59520
	.4byte	.L_59530
	.4byte	.L_59526
	.4byte	.L_5953a
	.4byte	.L_5952c
	.4byte	.L_59530
	.4byte	.L_59536
	.4byte	.L_5953a
	.4byte	.L_59540
	.4byte	.L_59544
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_59488
	.4byte	.L_59492
	.4byte	.L_5954a
	.4byte	.L_59550
	.4byte	.L_59556
	.4byte	.L_5955c
	.4byte	.L_5956e
	.4byte	.L_59574
	.4byte	.L_59562
	.4byte	.L_59568
	.4byte	.L_5957a
	.4byte	.L_5957e
	.4byte	.L_595a2
	.4byte	.L_595a6
	.4byte	.L_59584
	.4byte	.L_59588
	.4byte	.L_595ac
	.4byte	.L_595b0
	.4byte	.L_5958e
	.4byte	.L_59592
	.4byte	.L_595b6
	.4byte	.L_595ba
	.4byte	.L_59598
	.4byte	.L_5959c
	.4byte	.L_595c0
	.4byte	.L_595c4
	.4byte	.L_595ca
	.4byte	.L_595d0
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_595d6
	.4byte	.L_5943a
	.4byte	.L_595d6
	.4byte	.L_59440
	.4byte	.L_595d6
	.4byte	.L_59446
.L_59434:
	bl	func_8058820
	b	.L_595da
.L_5943a:
	bl	func_8058890
	b	.L_595da
.L_59440:
	bl	func_80588C8
	b	.L_595da
.L_59446:
	bl	func_8058950
	b	.L_595da
.L_5944c:
	bl	func_80589BC
.L_59450:
	bl	func_80589E0
	b	.L_595da
.L_59456:
	bl	func_8058B30
.L_5945a:
	bl	func_8058B5C
	b	.L_595da
.L_59460:
	bl	func_8058BA8
.L_59464:
	bl	func_8023C94
	b	.L_595da
.L_5946a:
	bl	func_8058BD4
.L_5946e:
	bl	func_8058BF8
	b	.L_595da
.L_59474:
	bl	func_8058C68
.L_59478:
	bl	func_8023D48
	b	.L_595da
.L_5947e:
	bl	func_8058C90
.L_59482:
	bl	func_8023EE0
	b	.L_595da
.L_59488:
	bl	func_8058D34
.L_5948c:
	bl	SpriteUtilFallOffscreenRight
	b	.L_595da
.L_59492:
	bl	func_8058D48
.L_59496:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_595da
.L_5949c:
	bl	func_8058E1C
.L_594a0:
	bl	SpriteUtilPushedRight
	b	.L_595da
.L_594a6:
	bl	func_8058E30
.L_594aa:
	bl	SpriteUtilPushedLeft
	b	.L_595da
.L_594b0:
	bl	func_8058E6C
.L_594b4:
	bl	func_8024478
	b	.L_595da
.L_594ba:
	bl	func_8058E80
.L_594be:
	bl	func_802449C
	b	.L_595da
.L_594c4:
	bl	func_80244C0
.L_594c8:
	bl	func_80244E0
	b	.L_595da
.L_594ce:
	bl	func_8058E94
.L_594d2:
	bl	SpriteUtilDieAfterDelay
	b	.L_595da
.L_594d8:
	bl	func_8058F70
	b	.L_59510
.L_594de:
	bl	func_8058F84
	b	.L_594f2
.L_594e4:
	bl	func_8024688
.L_594e8:
	bl	func_80246B8
	b	.L_595da
.L_594ee:
	bl	func_802473C
.L_594f2:
	bl	func_802476C
	b	.L_595da
.L_594f8:
	bl	func_80247F0
.L_594fc:
	bl	func_8024820
	b	.L_595da
.L_59502:
	bl	func_80248A4
.L_59506:
	bl	func_80248D4
	b	.L_595da
.L_5950c:
	bl	func_8024958
.L_59510:
	bl	func_8024988
	b	.L_595da
.L_59516:
	bl	func_8024A0C
.L_5951a:
	bl	func_8024A3C
	b	.L_595da
.L_59520:
	bl	func_8024AC0
	b	.L_59530
.L_59526:
	bl	func_8024BEC
	b	.L_5953a
.L_5952c:
	bl	func_8058FCC
.L_59530:
	bl	func_8024AD4
	b	.L_595da
.L_59536:
	bl	func_8058FE0
.L_5953a:
	bl	func_8024C00
	b	.L_595da
.L_59540:
	bl	func_8058FF4
.L_59544:
	bl	func_8059024
	b	.L_595da
.L_5954a:
	bl	func_80590C8
	b	.L_595da
.L_59550:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_595da
.L_59556:
	bl	func_80590DC
	b	.L_595da
.L_5955c:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_595da
.L_59562:
	bl	func_805910C
	b	.L_595da
.L_59568:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_595da
.L_5956e:
	bl	func_8059120
	b	.L_595da
.L_59574:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_595da
.L_5957a:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_5957e:
	bl	SpriteUtilThrownLeftSoft
	b	.L_595da
.L_59584:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_59588:
	bl	SpriteUtilThrownLeftHard
	b	.L_595da
.L_5958e:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_59592:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_595da
.L_59598:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_5959c:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_595da
.L_595a2:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_595a6:
	bl	SpriteUtilThrownRightSoft
	b	.L_595da
.L_595ac:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_595b0:
	bl	SpriteUtilThrownRightHard
	b	.L_595da
.L_595b6:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_595ba:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_595da
.L_595c0:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_595c4:
	bl	SpriteUtilThrownUpRightHard
	b	.L_595da
.L_595ca:
	bl	func_8058DD4
	b	.L_595da
.L_595d0:
	bl	func_8058DC0
	b	.L_595da
.L_595d6:
	bl	func_8058EF8
.L_595da:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownD2
SpriteUnknownD2:
	push	{lr}
	ldr	r0, .L_595f8
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_595ee
	bl	func_8059134
.L_595ee:
	bl	func_8059198
	pop	{r0}
	bx	r0
	.align	2, 0
.L_595f8:
	.4byte	gCurrentSprite
