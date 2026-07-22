.include "macros.s.inc"


thumb_func_start func_804AC88
func_804AC88:
	ldr	r2, .L_4acac
	ldrh	r1, [r2, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_4acbc
	ldr	r0, .L_4acb0
	ldrb	r0, [r0, #0]
	cmp	r0, #41	@ 0x29
	bls	.L_4acbc
	ldr	r0, .L_4acb4
	ldrh	r1, [r0, #14]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_4acb8
	mov	r0, #53	@ 0x35
	b	.L_4acba
.L_4acac:
	.4byte	gCurrentSprite
.L_4acb0:
	.4byte	gScreenShakeY
.L_4acb4:
	.4byte	gWarioData
.L_4acb8:
	mov	r0, #51	@ 0x33
.L_4acba:
	strb	r0, [r2, #28]
.L_4acbc:
	bx	lr
	.align	2, 0


thumb_func_start func_804ACC0
func_804ACC0:
	push	{r4, lr}
	ldr	r0, .L_4ad20
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #8
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, ip
	add	r0, #32
	mov	r1, #24
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	mov	r4, ip
	add	r4, #34	@ 0x22
	mov	r0, #16
	strb	r0, [r4, #0]
	add	r4, #1
	mov	r0, #56	@ 0x38
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r4, #2
	mov	r0, #28
	strb	r0, [r4, #0]
	mov	r0, ip
	add	r0, #38	@ 0x26
	strb	r1, [r0, #0]
	mov	r0, ip
	strb	r2, [r0, #22]
	strh	r3, [r0, #20]
	ldr	r0, .L_4ad24
	mov	r1, ip
	str	r0, [r1, #4]
	mov	r0, #5
	strb	r0, [r1, #30]
	mov	r0, #15
	strb	r0, [r1, #28]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4ad20:
	.4byte	gCurrentSprite
.L_4ad24:
	.4byte	sUnk_83D0B08


thumb_func_start func_804AD28
func_804AD28:
	ldr	r2, .L_4ad40
	ldrh	r0, [r2, #0]
	mov	r1, #128	@ 0x80
	orr	r1, r0
	mov	r0, #16
	strb	r0, [r2, #28]
	mov	r0, #5
	strb	r0, [r2, #30]
	ldr	r0, .L_4ad44
	and	r1, r0
	strh	r1, [r2, #0]
	bx	lr
.L_4ad40:
	.4byte	gCurrentSprite
.L_4ad44:
	.4byte	0xFCFF


thumb_func_start func_804AD48
func_804AD48:
	push	{lr}
	bl	func_804AC88
	bl	func_8023B88
	ldr	r0, .L_4ad7c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4ada6
	ldr	r3, .L_4ad80
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4ad84
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_4ad98
.L_4ad7c:
	.4byte	gSpriteAiCollisionResult
.L_4ad80:
	.4byte	gCurrentSprite
.L_4ad84:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_4ad98:
	ldr	r0, .L_4adac
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4ada6
	ldr	r1, .L_4adb0
	mov	r0, #27
	strb	r0, [r1, #28]
.L_4ada6:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4adac:
	.4byte	gSpriteAiCollisionFlags
.L_4adb0:
	.4byte	gCurrentSprite


thumb_func_start func_804ADB4
func_804ADB4:
	ldr	r0, .L_4adc4
	mov	r2, #0
	mov	r1, #30
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_4adc4:
	.4byte	gCurrentSprite


thumb_func_start func_804ADC8
func_804ADC8:
	ldr	r0, .L_4add8
	mov	r2, #0
	mov	r1, #44	@ 0x2c
	strb	r1, [r0, #28]
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_4add8:
	.4byte	gCurrentSprite


thumb_func_start func_804ADDC
func_804ADDC:
	ldr	r0, .L_4adec
	mov	r2, #0
	mov	r1, #46	@ 0x2e
	strb	r1, [r0, #28]
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_4adec:
	.4byte	gCurrentSprite


thumb_func_start func_804ADF0
func_804ADF0:
	ldr	r1, .L_4ae08
	mov	r2, #0
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_4ae08:
	.4byte	gCurrentSprite


thumb_func_start func_804AE0C
func_804AE0C:
	ldr	r1, .L_4ae24
	mov	r2, #0
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	add	r3, r1, #0
	add	r3, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
	bx	lr
	.align	2, 0
.L_4ae24:
	.4byte	gCurrentSprite


thumb_func_start func_804AE28
func_804AE28:
	ldr	r2, .L_4ae48
	mov	r1, #0
	mov	r0, #52	@ 0x34
	strb	r0, [r2, #28]
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
	bx	lr
	.align	2, 0
.L_4ae48:
	.4byte	gCurrentSprite


thumb_func_start func_804AE4C
func_804AE4C:
	ldr	r2, .L_4ae6c
	mov	r1, #0
	mov	r0, #54	@ 0x36
	strb	r0, [r2, #28]
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
	bx	lr
	.align	2, 0
.L_4ae6c:
	.4byte	gCurrentSprite


thumb_func_start func_804AE70
func_804AE70:
	ldr	r2, .L_4ae90
	mov	r1, #0
	mov	r0, #52	@ 0x34
	strb	r0, [r2, #28]
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
	bx	lr
	.align	2, 0
.L_4ae90:
	.4byte	gCurrentSprite


thumb_func_start func_804AE94
func_804AE94:
	ldr	r2, .L_4aeb4
	mov	r1, #0
	mov	r0, #54	@ 0x36
	strb	r0, [r2, #28]
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
	bx	lr
	.align	2, 0
.L_4aeb4:
	.4byte	gCurrentSprite


thumb_func_start func_804AEB8
func_804AEB8:
	push	{lr}
	ldr	r0, .L_4aecc
	ldr	r1, .L_4aed0
	ldrh	r0, [r0, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_4aed4
	bl	func_804AE28
	b	.L_4aed8
.L_4aecc:
	.4byte	gCurrentSprite
.L_4aed0:
	.4byte	gWarioData
.L_4aed4:
	bl	func_804AE4C
.L_4aed8:
	pop	{r0}
	bx	r0


thumb_func_start func_804AEDC
func_804AEDC:
	ldr	r1, .L_4aee4
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bx	lr
.L_4aee4:
	.4byte	gCurrentSprite


thumb_func_start func_804AEE8
func_804AEE8:
	ldr	r1, .L_4aef0
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bx	lr
.L_4aef0:
	.4byte	gCurrentSprite


thumb_func_start func_804AEF4
func_804AEF4:
	ldr	r0, .L_4af00
	mov	r1, #88	@ 0x58
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	bx	lr
.L_4af00:
	.4byte	gCurrentSprite


thumb_func_start func_804AF04
func_804AF04:
	ldr	r0, .L_4af10
	mov	r1, #86	@ 0x56
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	bx	lr
.L_4af10:
	.4byte	gCurrentSprite


thumb_func_start func_804AF14
func_804AF14:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #20
	ldr	r3, .L_4b020
	ldrh	r1, [r3, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	bne	.L_4af2e
	b	.L_4b03a
.L_4af2e:
	ldrb	r0, [r3, #23]
	str	r0, [sp, #16]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #5
	add	r2, r1, #0
	ldrh	r0, [r3, #8]
	add	r1, r2, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	ldrh	r0, [r3, #10]
	add	r2, r2, r0
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	ldrb	r0, [r0, #0]
	sub	r0, r1, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	sl, r0
	add	r0, r3, #0
	add	r0, #36	@ 0x24
	ldrb	r0, [r0, #0]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r9, r1
	add	r0, r3, #0
	add	r0, #37	@ 0x25
	ldrb	r0, [r0, #0]
	sub	r0, r2, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r8, r0
	add	r0, r3, #0
	add	r0, #38	@ 0x26
	ldrb	r0, [r0, #0]
	add	r2, r2, r0
	lsl	r2, r2, #16
	lsr	r7, r2, #16
	mov	r6, #0
.L_4af80:
	ldr	r1, .L_4b024
	mov	r0, #44	@ 0x2c
	mul	r0, r6
	add	r5, r0, r1
	ldrh	r1, [r5, #0]
	ldr	r2, .L_4b028
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #3
	bne	.L_4b034
	ldrb	r0, [r5, #23]
	ldr	r1, [sp, #16]
	cmp	r0, r1
	beq	.L_4b034
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #5
	add	r2, r0, #0
	ldrh	r1, [r5, #8]
	add	r3, r2, r1
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	ldrh	r0, [r5, #10]
	add	r2, r2, r0
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	add	r0, r5, #0
	add	r0, #35	@ 0x23
	ldrb	r4, [r0, #0]
	sub	r4, r3, r4
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	add	r0, #1
	ldrb	r0, [r0, #0]
	add	r3, r3, r0
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r0, r5, #0
	add	r0, #37	@ 0x25
	ldrb	r1, [r0, #0]
	sub	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r0, #1
	ldrb	r0, [r0, #0]
	add	r2, r2, r0
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r4, [sp, #0]
	str	r3, [sp, #4]
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	mov	r0, sl
	mov	r1, r9
	mov	r2, r8
	add	r3, r7, #0
	bl	SpriteCollisionCheckObjectsTouching
	cmp	r0, #0
	beq	.L_4b034
	ldr	r0, .L_4b020
	add	r0, #42	@ 0x2a
	strb	r6, [r0, #0]
	mov	r0, #15
	strb	r0, [r5, #31]
	ldrh	r1, [r5, #0]
	ldr	r2, .L_4b02c
	add	r0, r2, #0
	and	r1, r0
	mov	r4, #0
	strh	r1, [r5, #0]
	ldrb	r0, [r5, #28]
	cmp	r0, #86	@ 0x56
	beq	.L_4b016
	cmp	r0, #88	@ 0x58
	bne	.L_4b03a
.L_4b016:
	bl	func_801E4B0
	ldr	r0, .L_4b030
	strb	r4, [r0, #0]
	b	.L_4b03a
.L_4b020:
	.4byte	gCurrentSprite
.L_4b024:
	.4byte	gSpriteData
.L_4b028:
	.4byte	0x613
.L_4b02c:
	.4byte	0xFEFF
.L_4b030:
	.4byte	gCurrentCarriedSprite
.L_4b034:
	add	r6, #1
	cmp	r6, #23
	ble	.L_4af80
.L_4b03a:
	add	sp, #20
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_804B04C
func_804B04C:
	push	{lr}
	ldr	r0, .L_4b0a8
	mov	ip, r0
	mov	r3, #0
	mov	r0, #1
	mov	r1, ip
	strb	r0, [r1, #26]
	ldrh	r1, [r1, #0]
	mov	r2, #132	@ 0x84
	lsl	r2, r2, #8
	add	r0, r2, #0
	mov	r2, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #32
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	strb	r2, [r0, #22]
	strh	r3, [r0, #20]
	mov	r0, #15
	mov	r1, ip
	strb	r0, [r1, #28]
	strb	r2, [r1, #30]
	ldrh	r0, [r1, #10]
	add	r0, #32
	strh	r0, [r1, #10]
	ldrh	r0, [r1, #8]
	sub	r0, #64	@ 0x40
	strh	r0, [r1, #8]
	add	r1, #39	@ 0x27
	mov	r0, #100	@ 0x64
	strb	r0, [r1, #0]
	add	r1, #3
	mov	r0, #255	@ 0xff
	strb	r0, [r1, #0]
	bl	func_80269EC
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4b0a8:
	.4byte	gCurrentSprite


thumb_func_start func_804B0AC
func_804B0AC:
	push	{lr}
	ldr	r1, .L_4b0e8
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_4b0e2
	mov	r0, #124	@ 0x7c
	strb	r0, [r3, #0]
	mov	r0, #16
	strb	r0, [r1, #28]
	strb	r2, [r1, #22]
	strh	r2, [r1, #20]
	ldr	r0, .L_4b0ec
	str	r0, [r1, #4]
	ldrh	r1, [r1, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_4b0e2
	ldr	r0, .L_4b0f0
	bl	m4aSongNumStart
.L_4b0e2:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4b0e8:
	.4byte	gCurrentSprite
.L_4b0ec:
	.4byte	sUnk_83D0948
.L_4b0f0:
	.4byte	0x111


thumb_func_start func_804B0F4
func_804B0F4:
	push	{r4, lr}
	bl	func_804AF14
	ldr	r2, .L_4b130
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	ldrb	r4, [r0, #0]
	cmp	r4, #255	@ 0xff
	beq	.L_4b13c
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r1, #0
	mov	r0, #48	@ 0x30
	strb	r0, [r3, #0]
	mov	r0, #20
	strb	r0, [r2, #28]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	ldr	r0, .L_4b134
	str	r0, [r2, #4]
	ldr	r1, .L_4b138
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrh	r1, [r2, #10]
	strh	r1, [r0, #10]
	mov	r1, #87	@ 0x57
	strb	r1, [r0, #28]
	b	.L_4b18c
	.align	2, 0
.L_4b130:
	.4byte	gCurrentSprite
.L_4b134:
	.4byte	sUnk_83D0960
.L_4b138:
	.4byte	gSpriteData
.L_4b13c:
	mov	r0, #39	@ 0x27
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r0, [r0, #0]
	sub	r3, r0, #1
	mov	r4, #0
	mov	r1, ip
	strb	r3, [r1, #0]
	lsl	r0, r3, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_4b168
	add	r0, r1, #0
	cmp	r0, #120	@ 0x78
	bne	.L_4b18c
	strb	r4, [r2, #22]
	strh	r4, [r2, #20]
	ldr	r0, .L_4b164
	str	r0, [r2, #4]
	b	.L_4b18c
.L_4b164:
	.4byte	sUnk_83D0960
.L_4b168:
	mov	r0, #44	@ 0x2c
	mov	r3, ip
	strb	r0, [r3, #0]
	mov	r0, #18
	strb	r0, [r2, #28]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	ldr	r0, .L_4b194
	str	r0, [r2, #4]
	ldrh	r1, [r2, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_4b18c
	mov	r0, #137	@ 0x89
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_4b18c:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4b194:
	.4byte	sUnk_83D0970


thumb_func_start func_804B198
func_804B198:
	push	{r4, lr}
	ldr	r3, .L_4b1c0
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	mov	r4, #0
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_4b1c8
	lsr	r0, r0, #24
	cmp	r0, #40	@ 0x28
	bne	.L_4b1d0
	strb	r4, [r3, #22]
	strh	r4, [r3, #20]
	ldr	r0, .L_4b1c4
	str	r0, [r3, #4]
	b	.L_4b1d0
	.align	2, 0
.L_4b1c0:
	.4byte	gCurrentSprite
.L_4b1c4:
	.4byte	sUnk_83D0938
.L_4b1c8:
	mov	r0, #1
	strb	r0, [r2, #0]
	mov	r0, #15
	strb	r0, [r3, #28]
.L_4b1d0:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_804B1D8
func_804B1D8:
	push	{lr}
	ldr	r3, .L_4b230
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	ldr	r2, .L_4b234
	mov	r0, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r2
	mov	r0, #87	@ 0x57
	strb	r0, [r1, #28]
	mov	r0, #39	@ 0x27
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldrh	r0, [r3, #8]
	sub	r0, r0, r2
	strh	r0, [r1, #8]
	ldrh	r0, [r3, #10]
	strh	r0, [r1, #10]
	mov	r1, ip
	ldrb	r0, [r1, #0]
	sub	r0, #2
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_4b22c
	mov	r0, #4
	mov	r2, ip
	strb	r0, [r2, #0]
	mov	r0, #22
	strb	r0, [r3, #28]
	mov	r0, #0
	strb	r0, [r3, #22]
	strh	r1, [r3, #20]
	ldr	r0, .L_4b238
	str	r0, [r3, #4]
	mov	r0, #137	@ 0x89
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_4b22c:
	pop	{r0}
	bx	r0
.L_4b230:
	.4byte	gCurrentSprite
.L_4b234:
	.4byte	gSpriteData
.L_4b238:
	.4byte	sUnk_83D0970


thumb_func_start func_804B23C
func_804B23C:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_4b2bc
	mov	ip, r0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	ldr	r2, .L_4b2c0
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r4, r0, r2
	mov	r0, #87	@ 0x57
	strb	r0, [r4, #28]
	mov	r1, ip
	ldrh	r0, [r1, #8]
	add	r0, #32
	strh	r0, [r4, #8]
	ldrh	r0, [r1, #10]
	strh	r0, [r4, #10]
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	cmp	r5, #0
	bne	.L_4b2de
	mov	r0, #0
	mov	r2, ip
	strb	r0, [r2, #22]
	strh	r5, [r2, #20]
	ldr	r0, .L_4b2c4
	str	r0, [r2, #4]
	ldrb	r0, [r4, #23]
	cmp	r0, #87	@ 0x57
	bne	.L_4b2d4
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r0, #50	@ 0x32
	strb	r0, [r2, #28]
	ldr	r3, .L_4b2c8
	ldr	r2, .L_4b2cc
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #6
	mov	r6, ip
	ldrb	r6, [r6, #24]
	add	r0, r0, r6
	add	r0, r0, r3
	mov	r1, #2
	strb	r1, [r0, #0]
	strh	r5, [r4, #0]
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r3
	strb	r1, [r0, #0]
	bl	func_8026A54
	ldr	r0, .L_4b2d0
	bl	m4aSongNumStart
	mov	r0, #0
	bl	VoiceSetPlay
	b	.L_4b2de
.L_4b2bc:
	.4byte	gCurrentSprite
.L_4b2c0:
	.4byte	gSpriteData
.L_4b2c4:
	.4byte	sUnk_83D0938
.L_4b2c8:
	.4byte	gPersistentSpriteData
.L_4b2cc:
	.4byte	gCurrentRoom
.L_4b2d0:
	.4byte	0x113
.L_4b2d4:
	mov	r0, #20
	strb	r0, [r1, #0]
	mov	r0, #109	@ 0x6d
	mov	r1, ip
	strb	r0, [r1, #28]
.L_4b2de:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_804B2E4
func_804B2E4:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_4b310
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	mov	r3, #0
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_4b318
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #20
	bne	.L_4b334
	strb	r3, [r4, #22]
	strh	r3, [r4, #20]
	ldr	r0, .L_4b314
	str	r0, [r4, #4]
	b	.L_4b334
.L_4b310:
	.4byte	gCurrentSprite
.L_4b314:
	.4byte	sUnk_83D0BE8
.L_4b318:
	strh	r0, [r4, #0]
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #181	@ 0xb5
	bl	SpriteSpawnAsChild
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	mov	r2, #5
	bl	func_80767DC
.L_4b334:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_804B33C
func_804B33C:
	push	{r4, lr}
	ldr	r3, .L_4b38c
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r1, [r0, #0]
	ldr	r2, .L_4b390
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r1, r0, r2
	mov	r0, #87	@ 0x57
	strb	r0, [r1, #28]
	ldrh	r0, [r3, #8]
	add	r0, #32
	strh	r0, [r1, #8]
	ldrh	r0, [r3, #10]
	strh	r0, [r1, #10]
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	mov	r4, #255	@ 0xff
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4b384
	mov	r0, #1
	strb	r0, [r2, #0]
	mov	r2, ip
	ldrb	r0, [r2, #0]
	orr	r0, r4
	strb	r0, [r2, #0]
	mov	r0, #15
	strb	r0, [r3, #28]
	mov	r0, #107	@ 0x6b
	strb	r0, [r1, #28]
.L_4b384:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4b38c:
	.4byte	gCurrentSprite
.L_4b390:
	.4byte	gSpriteData


thumb_func_start func_804B394
func_804B394:
	push	{lr}
	ldr	r1, .L_4b3d0
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_4b3ca
	mov	r0, #124	@ 0x7c
	strb	r0, [r3, #0]
	mov	r0, #16
	strb	r0, [r1, #28]
	strb	r2, [r1, #22]
	strh	r2, [r1, #20]
	ldr	r0, .L_4b3d4
	str	r0, [r1, #4]
	ldrh	r1, [r1, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_4b3ca
	ldr	r0, .L_4b3d8
	bl	m4aSongNumStart
.L_4b3ca:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4b3d0:
	.4byte	gCurrentSprite
.L_4b3d4:
	.4byte	sUnk_83D0998
.L_4b3d8:
	.4byte	0x111


thumb_func_start func_804B3DC
func_804B3DC:
	push	{r4, r5, lr}
	bl	func_804AF14
	ldr	r0, .L_4b424
	mov	ip, r0
	mov	r5, ip
	add	r5, #42	@ 0x2a
	ldrb	r4, [r5, #0]
	cmp	r4, #255	@ 0xff
	beq	.L_4b430
	mov	r2, ip
	add	r2, #39	@ 0x27
	mov	r1, #0
	mov	r0, #48	@ 0x30
	strb	r0, [r2, #0]
	mov	r0, #20
	mov	r2, ip
	strb	r0, [r2, #28]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	ldr	r0, .L_4b428
	str	r0, [r2, #4]
	ldr	r3, .L_4b42c
	ldrb	r0, [r5, #0]
	mov	r2, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r3
	mov	r5, ip
	ldrh	r1, [r5, #10]
	strh	r1, [r0, #10]
	add	r0, r4, #0
	mul	r0, r2
	add	r0, r0, r3
	mov	r1, #87	@ 0x57
	strb	r1, [r0, #28]
	b	.L_4b480
.L_4b424:
	.4byte	gCurrentSprite
.L_4b428:
	.4byte	sUnk_83D09B0
.L_4b42c:
	.4byte	gSpriteData
.L_4b430:
	mov	r3, ip
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r2, r0, #1
	mov	r4, #0
	strb	r2, [r3, #0]
	lsl	r0, r2, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_4b45c
	add	r0, r1, #0
	cmp	r0, #120	@ 0x78
	bne	.L_4b480
	mov	r0, ip
	strb	r4, [r0, #22]
	strh	r4, [r0, #20]
	ldr	r0, .L_4b458
	mov	r1, ip
	str	r0, [r1, #4]
	b	.L_4b480
.L_4b458:
	.4byte	sUnk_83D09B0
.L_4b45c:
	mov	r0, #44	@ 0x2c
	strb	r0, [r3, #0]
	mov	r0, #18
	mov	r2, ip
	strb	r0, [r2, #28]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	ldr	r0, .L_4b488
	str	r0, [r2, #4]
	ldrh	r1, [r2, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_4b480
	mov	r0, #137	@ 0x89
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_4b480:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4b488:
	.4byte	sUnk_83D09C0


thumb_func_start func_804B48C
func_804B48C:
	push	{r4, lr}
	ldr	r3, .L_4b4b4
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	mov	r4, #0
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_4b4bc
	lsr	r0, r0, #24
	cmp	r0, #40	@ 0x28
	bne	.L_4b4c4
	strb	r4, [r3, #22]
	strh	r4, [r3, #20]
	ldr	r0, .L_4b4b8
	str	r0, [r3, #4]
	b	.L_4b4c4
	.align	2, 0
.L_4b4b4:
	.4byte	gCurrentSprite
.L_4b4b8:
	.4byte	sUnk_83D0988
.L_4b4bc:
	mov	r0, #1
	strb	r0, [r2, #0]
	mov	r0, #15
	strb	r0, [r3, #28]
.L_4b4c4:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_804B4CC
func_804B4CC:
	push	{r4, lr}
	ldr	r3, .L_4b524
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	ldr	r2, .L_4b528
	mov	r0, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r2
	mov	r0, #87	@ 0x57
	strb	r0, [r1, #28]
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	add	r0, #64	@ 0x40
	ldrh	r4, [r3, #8]
	add	r0, r0, r4
	strh	r0, [r1, #8]
	ldrh	r0, [r3, #10]
	strh	r0, [r1, #10]
	ldrb	r0, [r2, #0]
	sub	r0, #2
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_4b51c
	mov	r0, #4
	strb	r0, [r2, #0]
	mov	r0, #22
	strb	r0, [r3, #28]
	mov	r0, #0
	strb	r0, [r3, #22]
	strh	r1, [r3, #20]
	ldr	r0, .L_4b52c
	str	r0, [r3, #4]
	mov	r0, #137	@ 0x89
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_4b51c:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4b524:
	.4byte	gCurrentSprite
.L_4b528:
	.4byte	gSpriteData
.L_4b52c:
	.4byte	sUnk_83D09C0


thumb_func_start func_804B530
func_804B530:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_4b5b0
	mov	ip, r0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	ldr	r2, .L_4b5b4
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r4, r0, r2
	mov	r0, #87	@ 0x57
	strb	r0, [r4, #28]
	mov	r1, ip
	ldrh	r0, [r1, #8]
	add	r0, #64	@ 0x40
	strh	r0, [r4, #8]
	ldrh	r0, [r1, #10]
	strh	r0, [r4, #10]
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	cmp	r5, #0
	bne	.L_4b5d2
	mov	r0, #0
	mov	r2, ip
	strb	r0, [r2, #22]
	strh	r5, [r2, #20]
	ldr	r0, .L_4b5b8
	str	r0, [r2, #4]
	ldrb	r0, [r4, #23]
	cmp	r0, #87	@ 0x57
	bne	.L_4b5c8
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r0, #50	@ 0x32
	strb	r0, [r2, #28]
	ldr	r3, .L_4b5bc
	ldr	r2, .L_4b5c0
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #6
	mov	r6, ip
	ldrb	r6, [r6, #24]
	add	r0, r0, r6
	add	r0, r0, r3
	mov	r1, #2
	strb	r1, [r0, #0]
	strh	r5, [r4, #0]
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r3
	strb	r1, [r0, #0]
	bl	func_8026A54
	ldr	r0, .L_4b5c4
	bl	m4aSongNumStart
	mov	r0, #0
	bl	VoiceSetPlay
	b	.L_4b5d2
.L_4b5b0:
	.4byte	gCurrentSprite
.L_4b5b4:
	.4byte	gSpriteData
.L_4b5b8:
	.4byte	sUnk_83D0988
.L_4b5bc:
	.4byte	gPersistentSpriteData
.L_4b5c0:
	.4byte	gCurrentRoom
.L_4b5c4:
	.4byte	0x113
.L_4b5c8:
	mov	r0, #20
	strb	r0, [r1, #0]
	mov	r0, #109	@ 0x6d
	mov	r1, ip
	strb	r0, [r1, #28]
.L_4b5d2:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_804B5D8
func_804B5D8:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_4b604
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	mov	r3, #0
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_4b60c
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #20
	bne	.L_4b628
	strb	r3, [r4, #22]
	strh	r3, [r4, #20]
	ldr	r0, .L_4b608
	str	r0, [r4, #4]
	b	.L_4b628
.L_4b604:
	.4byte	gCurrentSprite
.L_4b608:
	.4byte	sUnk_83D0C00
.L_4b60c:
	strh	r0, [r4, #0]
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #181	@ 0xb5
	bl	SpriteSpawnAsChild
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	mov	r2, #5
	bl	func_80767DC
.L_4b628:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_804B630
func_804B630:
	push	{r4, lr}
	ldr	r3, .L_4b680
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r1, [r0, #0]
	ldr	r2, .L_4b684
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r1, r0, r2
	mov	r0, #87	@ 0x57
	strb	r0, [r1, #28]
	ldrh	r0, [r3, #8]
	add	r0, #64	@ 0x40
	strh	r0, [r1, #8]
	ldrh	r0, [r3, #10]
	strh	r0, [r1, #10]
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	mov	r4, #255	@ 0xff
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4b678
	mov	r0, #1
	strb	r0, [r2, #0]
	mov	r2, ip
	ldrb	r0, [r2, #0]
	orr	r0, r4
	strb	r0, [r2, #0]
	mov	r0, #15
	strb	r0, [r3, #28]
	mov	r0, #107	@ 0x6b
	strb	r0, [r1, #28]
.L_4b678:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4b680:
	.4byte	gCurrentSprite
.L_4b684:
	.4byte	gSpriteData


thumb_func_start func_804B688
func_804B688:
	push	{lr}
	ldr	r1, .L_4b6c4
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_4b6be
	mov	r0, #124	@ 0x7c
	strb	r0, [r3, #0]
	mov	r0, #16
	strb	r0, [r1, #28]
	strb	r2, [r1, #22]
	strh	r2, [r1, #20]
	ldr	r0, .L_4b6c8
	str	r0, [r1, #4]
	ldrh	r1, [r1, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_4b6be
	ldr	r0, .L_4b6cc
	bl	m4aSongNumStart
.L_4b6be:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4b6c4:
	.4byte	gCurrentSprite
.L_4b6c8:
	.4byte	sUnk_83D09E8
.L_4b6cc:
	.4byte	0x111


thumb_func_start func_804B6D0
func_804B6D0:
	push	{r4, lr}
	bl	func_804AF14
	ldr	r3, .L_4b710
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r4, [r0, #0]
	cmp	r4, #255	@ 0xff
	beq	.L_4b71c
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	mov	r1, #0
	mov	r0, #48	@ 0x30
	strb	r0, [r2, #0]
	mov	r0, #20
	strb	r0, [r3, #28]
	strb	r1, [r3, #22]
	strh	r1, [r3, #20]
	ldr	r0, .L_4b714
	str	r0, [r3, #4]
	ldr	r2, .L_4b718
	mov	r0, #44	@ 0x2c
	add	r1, r4, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r3, #8]
	add	r0, #40	@ 0x28
	strh	r0, [r1, #8]
	mov	r0, #87	@ 0x57
	strb	r0, [r1, #28]
	b	.L_4b76c
	.align	2, 0
.L_4b710:
	.4byte	gCurrentSprite
.L_4b714:
	.4byte	sUnk_83D0A00
.L_4b718:
	.4byte	gSpriteData
.L_4b71c:
	mov	r0, #39	@ 0x27
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	sub	r2, r0, #1
	mov	r4, #0
	mov	r1, ip
	strb	r2, [r1, #0]
	lsl	r0, r2, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_4b748
	add	r0, r1, #0
	cmp	r0, #120	@ 0x78
	bne	.L_4b76c
	strb	r4, [r3, #22]
	strh	r4, [r3, #20]
	ldr	r0, .L_4b744
	str	r0, [r3, #4]
	b	.L_4b76c
.L_4b744:
	.4byte	sUnk_83D0A00
.L_4b748:
	mov	r0, #44	@ 0x2c
	mov	r2, ip
	strb	r0, [r2, #0]
	mov	r0, #18
	strb	r0, [r3, #28]
	strb	r1, [r3, #22]
	strh	r1, [r3, #20]
	ldr	r0, .L_4b774
	str	r0, [r3, #4]
	ldrh	r1, [r3, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_4b76c
	mov	r0, #137	@ 0x89
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_4b76c:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4b774:
	.4byte	sUnk_83D0A10


thumb_func_start func_804B778
func_804B778:
	push	{r4, lr}
	ldr	r3, .L_4b7a0
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	mov	r4, #0
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_4b7a8
	lsr	r0, r0, #24
	cmp	r0, #40	@ 0x28
	bne	.L_4b7b0
	strb	r4, [r3, #22]
	strh	r4, [r3, #20]
	ldr	r0, .L_4b7a4
	str	r0, [r3, #4]
	b	.L_4b7b0
	.align	2, 0
.L_4b7a0:
	.4byte	gCurrentSprite
.L_4b7a4:
	.4byte	sUnk_83D09D8
.L_4b7a8:
	mov	r0, #1
	strb	r0, [r2, #0]
	mov	r0, #15
	strb	r0, [r3, #28]
.L_4b7b0:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_804B7B8
func_804B7B8:
	push	{r4, lr}
	ldr	r0, .L_4b818
	mov	ip, r0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	ldr	r3, .L_4b81c
	mov	r0, #44	@ 0x2c
	add	r2, r1, #0
	mul	r2, r0
	add	r2, r2, r3
	mov	r0, #87	@ 0x57
	strb	r0, [r2, #28]
	mov	r1, ip
	ldrh	r0, [r1, #8]
	add	r0, #40	@ 0x28
	strh	r0, [r2, #8]
	mov	r3, ip
	add	r3, #39	@ 0x27
	ldrb	r1, [r3, #0]
	add	r1, #16
	mov	r4, ip
	ldrh	r0, [r4, #10]
	sub	r0, r0, r1
	strh	r0, [r2, #10]
	ldrb	r0, [r3, #0]
	sub	r0, #2
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_4b810
	mov	r0, #4
	strb	r0, [r3, #0]
	mov	r0, #22
	strb	r0, [r4, #28]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r1, [r4, #20]
	ldr	r0, .L_4b820
	str	r0, [r4, #4]
	mov	r0, #137	@ 0x89
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_4b810:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4b818:
	.4byte	gCurrentSprite
.L_4b81c:
	.4byte	gSpriteData
.L_4b820:
	.4byte	sUnk_83D0A10


thumb_func_start func_804B824
func_804B824:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_4b8a4
	mov	ip, r0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	ldr	r2, .L_4b8a8
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r4, r0, r2
	mov	r0, #87	@ 0x57
	strb	r0, [r4, #28]
	mov	r1, ip
	ldrh	r0, [r1, #8]
	add	r0, #40	@ 0x28
	strh	r0, [r4, #8]
	ldrh	r0, [r1, #10]
	strh	r0, [r4, #10]
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	cmp	r5, #0
	bne	.L_4b8c6
	mov	r0, #0
	mov	r2, ip
	strb	r0, [r2, #22]
	strh	r5, [r2, #20]
	ldr	r0, .L_4b8ac
	str	r0, [r2, #4]
	ldrb	r0, [r4, #23]
	cmp	r0, #87	@ 0x57
	bne	.L_4b8bc
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r0, #50	@ 0x32
	strb	r0, [r2, #28]
	ldr	r3, .L_4b8b0
	ldr	r2, .L_4b8b4
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #6
	mov	r6, ip
	ldrb	r6, [r6, #24]
	add	r0, r0, r6
	add	r0, r0, r3
	mov	r1, #2
	strb	r1, [r0, #0]
	strh	r5, [r4, #0]
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r3
	strb	r1, [r0, #0]
	bl	func_8026A54
	ldr	r0, .L_4b8b8
	bl	m4aSongNumStart
	mov	r0, #0
	bl	VoiceSetPlay
	b	.L_4b8c6
.L_4b8a4:
	.4byte	gCurrentSprite
.L_4b8a8:
	.4byte	gSpriteData
.L_4b8ac:
	.4byte	sUnk_83D09D8
.L_4b8b0:
	.4byte	gPersistentSpriteData
.L_4b8b4:
	.4byte	gCurrentRoom
.L_4b8b8:
	.4byte	0x113
.L_4b8bc:
	mov	r0, #20
	strb	r0, [r1, #0]
	mov	r0, #109	@ 0x6d
	mov	r1, ip
	strb	r0, [r1, #28]
.L_4b8c6:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_804B8CC
func_804B8CC:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_4b8f8
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	mov	r3, #0
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_4b900
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #20
	bne	.L_4b91c
	strb	r3, [r4, #22]
	strh	r3, [r4, #20]
	ldr	r0, .L_4b8fc
	str	r0, [r4, #4]
	b	.L_4b91c
.L_4b8f8:
	.4byte	gCurrentSprite
.L_4b8fc:
	.4byte	sUnk_83D0C18
.L_4b900:
	strh	r0, [r4, #0]
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #181	@ 0xb5
	bl	SpriteSpawnAsChild
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	mov	r2, #5
	bl	func_80767DC
.L_4b91c:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_804B924
func_804B924:
	push	{r4, lr}
	ldr	r3, .L_4b974
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r1, [r0, #0]
	ldr	r2, .L_4b978
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r1, r0, r2
	mov	r0, #87	@ 0x57
	strb	r0, [r1, #28]
	ldrh	r0, [r3, #8]
	add	r0, #40	@ 0x28
	strh	r0, [r1, #8]
	ldrh	r0, [r3, #10]
	strh	r0, [r1, #10]
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	mov	r4, #255	@ 0xff
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4b96c
	mov	r0, #1
	strb	r0, [r2, #0]
	mov	r2, ip
	ldrb	r0, [r2, #0]
	orr	r0, r4
	strb	r0, [r2, #0]
	mov	r0, #15
	strb	r0, [r3, #28]
	mov	r0, #107	@ 0x6b
	strb	r0, [r1, #28]
.L_4b96c:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4b974:
	.4byte	gCurrentSprite
.L_4b978:
	.4byte	gSpriteData


thumb_func_start func_804B97C
func_804B97C:
	push	{lr}
	ldr	r1, .L_4b9b8
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_4b9b2
	mov	r0, #124	@ 0x7c
	strb	r0, [r3, #0]
	mov	r0, #16
	strb	r0, [r1, #28]
	strb	r2, [r1, #22]
	strh	r2, [r1, #20]
	ldr	r0, .L_4b9bc
	str	r0, [r1, #4]
	ldrh	r1, [r1, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_4b9b2
	ldr	r0, .L_4b9c0
	bl	m4aSongNumStart
.L_4b9b2:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4b9b8:
	.4byte	gCurrentSprite
.L_4b9bc:
	.4byte	sUnk_83D0A38
.L_4b9c0:
	.4byte	0x111


thumb_func_start func_804B9C4
func_804B9C4:
	push	{r4, lr}
	bl	func_804AF14
	ldr	r3, .L_4ba04
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r4, [r0, #0]
	cmp	r4, #255	@ 0xff
	beq	.L_4ba10
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	mov	r1, #0
	mov	r0, #48	@ 0x30
	strb	r0, [r2, #0]
	mov	r0, #20
	strb	r0, [r3, #28]
	strb	r1, [r3, #22]
	strh	r1, [r3, #20]
	ldr	r0, .L_4ba08
	str	r0, [r3, #4]
	ldr	r2, .L_4ba0c
	mov	r0, #44	@ 0x2c
	add	r1, r4, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r3, #8]
	add	r0, #40	@ 0x28
	strh	r0, [r1, #8]
	mov	r0, #87	@ 0x57
	strb	r0, [r1, #28]
	b	.L_4ba60
	.align	2, 0
.L_4ba04:
	.4byte	gCurrentSprite
.L_4ba08:
	.4byte	sUnk_83D0A50
.L_4ba0c:
	.4byte	gSpriteData
.L_4ba10:
	mov	r0, #39	@ 0x27
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	sub	r2, r0, #1
	mov	r4, #0
	mov	r1, ip
	strb	r2, [r1, #0]
	lsl	r0, r2, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_4ba3c
	add	r0, r1, #0
	cmp	r0, #120	@ 0x78
	bne	.L_4ba60
	strb	r4, [r3, #22]
	strh	r4, [r3, #20]
	ldr	r0, .L_4ba38
	str	r0, [r3, #4]
	b	.L_4ba60
.L_4ba38:
	.4byte	sUnk_83D0A50
.L_4ba3c:
	mov	r0, #44	@ 0x2c
	mov	r2, ip
	strb	r0, [r2, #0]
	mov	r0, #18
	strb	r0, [r3, #28]
	strb	r1, [r3, #22]
	strh	r1, [r3, #20]
	ldr	r0, .L_4ba68
	str	r0, [r3, #4]
	ldrh	r1, [r3, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_4ba60
	mov	r0, #137	@ 0x89
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_4ba60:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4ba68:
	.4byte	sUnk_83D0A60


thumb_func_start func_804BA6C
func_804BA6C:
	push	{r4, lr}
	ldr	r3, .L_4ba94
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	mov	r4, #0
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_4ba9c
	lsr	r0, r0, #24
	cmp	r0, #40	@ 0x28
	bne	.L_4baa4
	strb	r4, [r3, #22]
	strh	r4, [r3, #20]
	ldr	r0, .L_4ba98
	str	r0, [r3, #4]
	b	.L_4baa4
	.align	2, 0
.L_4ba94:
	.4byte	gCurrentSprite
.L_4ba98:
	.4byte	sUnk_83D0A28
.L_4ba9c:
	mov	r0, #1
	strb	r0, [r2, #0]
	mov	r0, #15
	strb	r0, [r3, #28]
.L_4baa4:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_804BAAC
func_804BAAC:
	push	{r4, lr}
	ldr	r3, .L_4bb04
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	ldr	r2, .L_4bb08
	mov	r0, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r2
	mov	r0, #87	@ 0x57
	strb	r0, [r1, #28]
	ldrh	r0, [r3, #8]
	add	r0, #40	@ 0x28
	strh	r0, [r1, #8]
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	add	r0, #12
	ldrh	r4, [r3, #10]
	add	r0, r0, r4
	strh	r0, [r1, #10]
	ldrb	r0, [r2, #0]
	sub	r0, #2
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_4bafe
	mov	r0, #4
	strb	r0, [r2, #0]
	mov	r0, #22
	strb	r0, [r3, #28]
	mov	r0, #0
	strb	r0, [r3, #22]
	strh	r1, [r3, #20]
	ldr	r0, .L_4bb0c
	str	r0, [r3, #4]
	mov	r0, #137	@ 0x89
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_4bafe:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_4bb04:
	.4byte	gCurrentSprite
.L_4bb08:
	.4byte	gSpriteData
.L_4bb0c:
	.4byte	sUnk_83D0A60


thumb_func_start func_804BB10
func_804BB10:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_4bb90
	mov	ip, r0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	ldr	r2, .L_4bb94
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r4, r0, r2
	mov	r0, #87	@ 0x57
	strb	r0, [r4, #28]
	mov	r1, ip
	ldrh	r0, [r1, #8]
	add	r0, #40	@ 0x28
	strh	r0, [r4, #8]
	ldrh	r0, [r1, #10]
	strh	r0, [r4, #10]
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	cmp	r5, #0
	bne	.L_4bbb2
	mov	r0, #0
	mov	r2, ip
	strb	r0, [r2, #22]
	strh	r5, [r2, #20]
	ldr	r0, .L_4bb98
	str	r0, [r2, #4]
	ldrb	r0, [r4, #23]
	cmp	r0, #87	@ 0x57
	bne	.L_4bba8
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r0, #50	@ 0x32
	strb	r0, [r2, #28]
	ldr	r3, .L_4bb9c
	ldr	r2, .L_4bba0
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #6
	mov	r6, ip
	ldrb	r6, [r6, #24]
	add	r0, r0, r6
	add	r0, r0, r3
	mov	r1, #2
	strb	r1, [r0, #0]
	strh	r5, [r4, #0]
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r3
	strb	r1, [r0, #0]
	bl	func_8026A54
	ldr	r0, .L_4bba4
	bl	m4aSongNumStart
	mov	r0, #0
	bl	VoiceSetPlay
	b	.L_4bbb2
.L_4bb90:
	.4byte	gCurrentSprite
.L_4bb94:
	.4byte	gSpriteData
.L_4bb98:
	.4byte	sUnk_83D0A28
.L_4bb9c:
	.4byte	gPersistentSpriteData
.L_4bba0:
	.4byte	gCurrentRoom
.L_4bba4:
	.4byte	0x113
.L_4bba8:
	mov	r0, #20
	strb	r0, [r1, #0]
	mov	r0, #109	@ 0x6d
	mov	r1, ip
	strb	r0, [r1, #28]
.L_4bbb2:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_804BBB8
func_804BBB8:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_4bbe4
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	mov	r3, #0
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_4bbec
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #20
	bne	.L_4bc08
	strb	r3, [r4, #22]
	strh	r3, [r4, #20]
	ldr	r0, .L_4bbe8
	str	r0, [r4, #4]
	b	.L_4bc08
.L_4bbe4:
	.4byte	gCurrentSprite
.L_4bbe8:
	.4byte	sUnk_83D0C30
.L_4bbec:
	strh	r0, [r4, #0]
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #181	@ 0xb5
	bl	SpriteSpawnAsChild
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	mov	r2, #5
	bl	func_80767DC
.L_4bc08:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_804BC10
func_804BC10:
	push	{r4, lr}
	ldr	r3, .L_4bc60
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r1, [r0, #0]
	ldr	r2, .L_4bc64
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r1, r0, r2
	mov	r0, #87	@ 0x57
	strb	r0, [r1, #28]
	ldrh	r0, [r3, #8]
	add	r0, #40	@ 0x28
	strh	r0, [r1, #8]
	ldrh	r0, [r3, #10]
	strh	r0, [r1, #10]
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	mov	r4, #255	@ 0xff
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4bc58
	mov	r0, #1
	strb	r0, [r2, #0]
	mov	r2, ip
	ldrb	r0, [r2, #0]
	orr	r0, r4
	strb	r0, [r2, #0]
	mov	r0, #15
	strb	r0, [r3, #28]
	mov	r0, #107	@ 0x6b
	strb	r0, [r1, #28]
.L_4bc58:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4bc60:
	.4byte	gCurrentSprite
.L_4bc64:
	.4byte	gSpriteData


thumb_func_start func_804BC68
func_804BC68:
	push	{lr}
	ldr	r0, .L_4bccc
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, ip
	add	r0, #32
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, ip
	strb	r3, [r0, #30]
	mov	r1, ip
	add	r1, #39	@ 0x27
	mov	r0, #120	@ 0x78
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r3, [r0, #0]
	mov	r1, ip
	strb	r2, [r1, #28]
	ldrh	r0, [r1, #10]
	add	r0, #32
	strh	r0, [r1, #10]
	ldrh	r0, [r1, #8]
	sub	r0, #64	@ 0x40
	strh	r0, [r1, #8]
	bl	func_80269EC
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4bccc:
	.4byte	gCurrentSprite


thumb_func_start func_804BCD0
func_804BCD0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, #0
	mov	r1, #0
	ldr	r2, .L_4bd2c
	ldrb	r0, [r2, #0]
	mov	ip, r2
	ldr	r4, .L_4bd30
	cmp	r0, #255	@ 0xff
	beq	.L_4bd1e
	ldr	r0, .L_4bd34
	mov	r8, r0
	ldr	r6, .L_4bd38
	mov	r3, #0
	add	r2, #2
.L_4bcf0:
	ldrb	r0, [r2, #0]
	cmp	r0, #20
	bgt	.L_4bd0a
	cmp	r0, #17
	blt	.L_4bd0a
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #6
	add	r0, r1, r0
	add	r0, r8
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bne	.L_4bd0a
	add	r5, #1
.L_4bd0a:
	add	r3, #3
	add	r2, #3
	add	r1, #1
	cmp	r1, #63	@ 0x3f
	bgt	.L_4bd1e
	mov	r7, ip
	add	r0, r3, r7
	ldrb	r0, [r0, #0]
	cmp	r0, #255	@ 0xff
	bne	.L_4bcf0
.L_4bd1e:
	cmp	r5, #4
	bhi	.L_4bd8c
	lsl	r0, r5, #2
	ldr	r1, .L_4bd3c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_4bd2c:
	.4byte	gUnk_3000964
.L_4bd30:
	.4byte	gCurrentSprite
.L_4bd34:
	.4byte	gPersistentSpriteData
.L_4bd38:
	.4byte	gCurrentRoom
.L_4bd3c:
	.4byte	.L_4bd40
.L_4bd40:
	.4byte	.L_4bd54
	.4byte	.L_4bd60
	.4byte	.L_4bd6c
	.4byte	.L_4bd78
	.4byte	.L_4bd84
.L_4bd54:
	ldr	r0, .L_4bd5c
	str	r0, [r4, #4]
	b	.L_4bd8c
	.align	2, 0
.L_4bd5c:
	.4byte	sUnk_83D0B58
.L_4bd60:
	ldr	r0, .L_4bd68
	str	r0, [r4, #4]
	b	.L_4bd8c
	.align	2, 0
.L_4bd68:
	.4byte	sUnk_83D0B48
.L_4bd6c:
	ldr	r0, .L_4bd74
	str	r0, [r4, #4]
	b	.L_4bd8c
	.align	2, 0
.L_4bd74:
	.4byte	sUnk_83D0B38
.L_4bd78:
	ldr	r0, .L_4bd80
	str	r0, [r4, #4]
	b	.L_4bd8c
	.align	2, 0
.L_4bd80:
	.4byte	sUnk_83D0B28
.L_4bd84:
	ldr	r0, .L_4bd9c
	str	r0, [r4, #4]
	mov	r0, #49	@ 0x31
	strb	r0, [r4, #28]
.L_4bd8c:
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_4bd9c:
	.4byte	sUnk_83D0B18


thumb_func_start func_804BDA0
func_804BDA0:
	push	{lr}
	ldr	r2, .L_4bdbc
	ldrh	r1, [r2, #0]
	mov	r0, #3
	and	r0, r1
	cmp	r0, #3
	bne	.L_4bdb8
	mov	r0, #50	@ 0x32
	strb	r0, [r2, #28]
	add	r0, #222	@ 0xde
	bl	m4aSongNumStart
.L_4bdb8:
	pop	{r0}
	bx	r0
.L_4bdbc:
	.4byte	gCurrentSprite


thumb_func_start func_804BDC0
func_804BDC0:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_4bdec
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	mov	r3, #0
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_4bdf4
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #60	@ 0x3c
	bne	.L_4be2c
	ldr	r0, .L_4bdf0
	str	r0, [r4, #4]
	strb	r3, [r4, #22]
	strh	r3, [r4, #20]
	b	.L_4be2c
.L_4bdec:
	.4byte	gCurrentSprite
.L_4bdf0:
	.4byte	sUnk_83D0C48
.L_4bdf4:
	strh	r0, [r4, #0]
	ldr	r1, .L_4be34
	ldr	r0, .L_4be38
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r2, [r4, #24]
	add	r0, r0, r2
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	bl	func_8026A54
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #181	@ 0xb5
	bl	SpriteSpawnAsChild
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	mov	r2, #50	@ 0x32
	bl	func_80767DC
	mov	r0, #1
	bl	VoiceSetPlay
.L_4be2c:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
.L_4be34:
	.4byte	gPersistentSpriteData
.L_4be38:
	.4byte	gCurrentRoom


thumb_func_start func_804BE3C
func_804BE3C:
	push	{r4, lr}
	ldr	r0, .L_4bea4
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_4bea8
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, ip
	add	r0, #32
	mov	r2, #32
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_4beac
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	strb	r3, [r1, #30]
	mov	r0, ip
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #1
	strb	r0, [r1, #26]
	mov	r0, #138	@ 0x8a
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4bea4:
	.4byte	gCurrentSprite
.L_4bea8:
	.4byte	0xFFFB
.L_4beac:
	.4byte	sUnk_83D0B68


thumb_func_start func_804BEB0
func_804BEB0:
	ldr	r2, .L_4bec8
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_4bec6
	strh	r0, [r2, #0]
.L_4bec6:
	bx	lr
.L_4bec8:
	.4byte	gCurrentSprite


thumb_func_start SpritePinball
SpritePinball:
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L_4bef4
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_4bee0
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_4bee0:
	ldrb	r0, [r2, #28]
	cmp	r0, #107	@ 0x6b
	bls	.L_4bee8
	b	.L_4c2a6
.L_4bee8:
	lsl	r0, r0, #2
	ldr	r1, .L_4bef8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_4bef4:
	.4byte	gCurrentSprite
.L_4bef8:
	.4byte	.L_4befc
.L_4befc:
	.4byte	.L_4c0ac
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c0b2
	.4byte	.L_4c0b6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c0b2
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c0bc
	.4byte	.L_4c2a6
	.4byte	.L_4c0bc
	.4byte	.L_4c0c0
	.4byte	.L_4c0e0
	.4byte	.L_4c2a6
	.4byte	.L_4c0ea
	.4byte	.L_4c2a6
	.4byte	.L_4c0f4
	.4byte	.L_4c2a6
	.4byte	.L_4c0fe
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c0c6
	.4byte	.L_4c0ca
	.4byte	.L_4c0d0
	.4byte	.L_4c0d4
	.4byte	.L_4c0b2
	.4byte	.L_4c0b6
	.4byte	.L_4c0da
	.4byte	.L_4c2a6
	.4byte	.L_4c0f4
	.4byte	.L_4c0f8
	.4byte	.L_4c0fe
	.4byte	.L_4c102
	.4byte	.L_4c108
	.4byte	.L_4c10c
	.4byte	.L_4c112
	.4byte	.L_4c116
	.4byte	.L_4c11c
	.4byte	.L_4c120
	.4byte	.L_4c126
	.4byte	.L_4c12a
	.4byte	.L_4c130
	.4byte	.L_4c134
	.4byte	.L_4c13a
	.4byte	.L_4c13e
	.4byte	.L_4c144
	.4byte	.L_4c154
	.4byte	.L_4c14a
	.4byte	.L_4c16c
	.4byte	.L_4c150
	.4byte	.L_4c154
	.4byte	.L_4c168
	.4byte	.L_4c16c
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c2a6
	.4byte	.L_4c0e0
	.4byte	.L_4c0ea
	.4byte	.L_4c180
	.4byte	.L_4c186
	.4byte	.L_4c18c
	.4byte	.L_4c192
	.4byte	.L_4c1a4
	.4byte	.L_4c1aa
	.4byte	.L_4c198
	.4byte	.L_4c19e
	.4byte	.L_4c1b0
	.4byte	.L_4c1b6
	.4byte	.L_4c208
	.4byte	.L_4c20e
	.4byte	.L_4c1c0
	.4byte	.L_4c1ca
	.4byte	.L_4c218
	.4byte	.L_4c222
	.4byte	.L_4c1d4
	.4byte	.L_4c1da
	.4byte	.L_4c22c
	.4byte	.L_4c232
	.4byte	.L_4c1ec
	.4byte	.L_4c1f6
	.4byte	.L_4c244
	.4byte	.L_4c24e
	.4byte	.L_4c0fe
	.4byte	.L_4c0f4
	.4byte	.L_4c260
.L_4c0ac:
	bl	func_804ACC0
	b	.L_4c2aa
.L_4c0b2:
	bl	func_804AD28
.L_4c0b6:
	bl	func_804AD48
	b	.L_4c2aa
.L_4c0bc:
	bl	func_804ADB4
.L_4c0c0:
	bl	func_8023EE0
	b	.L_4c2aa
.L_4c0c6:
	bl	func_804ADC8
.L_4c0ca:
	bl	func_8024478
	b	.L_4c158
.L_4c0d0:
	bl	func_804ADDC
.L_4c0d4:
	bl	func_802449C
	b	.L_4c170
.L_4c0da:
	bl	func_804AEB8
	b	.L_4c2aa
.L_4c0e0:
	bl	func_804AE70
	bl	func_8024988
	b	.L_4c170
.L_4c0ea:
	bl	func_804AE94
	bl	func_802476C
	b	.L_4c158
.L_4c0f4:
	bl	func_804AE28
.L_4c0f8:
	bl	func_8024988
	b	.L_4c170
.L_4c0fe:
	bl	func_804AE4C
.L_4c102:
	bl	func_802476C
	b	.L_4c158
.L_4c108:
	bl	func_8024688
.L_4c10c:
	bl	func_80246B8
	b	.L_4c158
.L_4c112:
	bl	func_802473C
.L_4c116:
	bl	func_802476C
	b	.L_4c158
.L_4c11c:
	bl	func_80247F0
.L_4c120:
	bl	func_8024820
	b	.L_4c158
.L_4c126:
	bl	func_80248A4
.L_4c12a:
	bl	func_80248D4
	b	.L_4c170
.L_4c130:
	bl	func_8024958
.L_4c134:
	bl	func_8024988
	b	.L_4c170
.L_4c13a:
	bl	func_8024A0C
.L_4c13e:
	bl	func_8024A3C
	b	.L_4c170
.L_4c144:
	bl	func_8024AC0
	b	.L_4c154
.L_4c14a:
	bl	func_8024BEC
	b	.L_4c16c
.L_4c150:
	bl	func_804ADF0
.L_4c154:
	bl	func_8024AD4
.L_4c158:
	ldr	r1, .L_4c164
	ldrb	r0, [r1, #22]
	sub	r0, #4
	strb	r0, [r1, #22]
	b	.L_4c2aa
	.align	2, 0
.L_4c164:
	.4byte	gCurrentSprite
.L_4c168:
	bl	func_804AE0C
.L_4c16c:
	bl	func_8024C00
.L_4c170:
	ldr	r1, .L_4c17c
	ldrb	r0, [r1, #22]
	add	r0, #4
	strb	r0, [r1, #22]
	b	.L_4c2aa
	.align	2, 0
.L_4c17c:
	.4byte	gCurrentSprite
.L_4c180:
	bl	func_804AEDC
	b	.L_4c2aa
.L_4c186:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_4c2aa
.L_4c18c:
	bl	func_804AEE8
	b	.L_4c2aa
.L_4c192:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_4c2aa
.L_4c198:
	bl	func_804AEF4
	b	.L_4c2aa
.L_4c19e:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_4c2aa
.L_4c1a4:
	bl	func_804AF04
	b	.L_4c2aa
.L_4c1aa:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_4c2aa
.L_4c1b0:
	ldr	r1, .L_4c1bc
	mov	r0, #90	@ 0x5a
	strb	r0, [r1, #28]
.L_4c1b6:
	bl	SpriteUtilThrownLeftSoft
	b	.L_4c1de
.L_4c1bc:
	.4byte	gCurrentSprite
.L_4c1c0:
	ldr	r0, .L_4c1d0
	mov	r1, #94	@ 0x5e
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #29]
.L_4c1ca:
	bl	SpriteUtilThrownLeftHard
	b	.L_4c1fa
.L_4c1d0:
	.4byte	gCurrentSprite
.L_4c1d4:
	ldr	r1, .L_4c1e8
	mov	r0, #98	@ 0x62
	strb	r0, [r1, #28]
.L_4c1da:
	bl	SpriteUtilThrownUpLeftSoft
.L_4c1de:
	ldr	r1, .L_4c1e8
	ldrb	r0, [r1, #22]
	add	r0, #8
	strb	r0, [r1, #22]
	b	.L_4c2aa
.L_4c1e8:
	.4byte	gCurrentSprite
.L_4c1ec:
	ldr	r0, .L_4c204
	mov	r1, #102	@ 0x66
	strb	r1, [r0, #28]
	mov	r1, #18
	strb	r1, [r0, #29]
.L_4c1f6:
	bl	SpriteUtilThrownUpLeftHard
.L_4c1fa:
	ldr	r1, .L_4c204
	ldrb	r0, [r1, #22]
	add	r0, #16
	strb	r0, [r1, #22]
	b	.L_4c2aa
.L_4c204:
	.4byte	gCurrentSprite
.L_4c208:
	ldr	r1, .L_4c214
	mov	r0, #92	@ 0x5c
	strb	r0, [r1, #28]
.L_4c20e:
	bl	SpriteUtilThrownRightSoft
	b	.L_4c236
.L_4c214:
	.4byte	gCurrentSprite
.L_4c218:
	ldr	r0, .L_4c228
	mov	r1, #96	@ 0x60
	strb	r1, [r0, #28]
	mov	r1, #2
	strb	r1, [r0, #29]
.L_4c222:
	bl	SpriteUtilThrownRightHard
	b	.L_4c252
.L_4c228:
	.4byte	gCurrentSprite
.L_4c22c:
	ldr	r1, .L_4c240
	mov	r0, #100	@ 0x64
	strb	r0, [r1, #28]
.L_4c232:
	bl	SpriteUtilThrownUpRightSoft
.L_4c236:
	ldr	r1, .L_4c240
	ldrb	r0, [r1, #22]
	sub	r0, #8
	strb	r0, [r1, #22]
	b	.L_4c2aa
.L_4c240:
	.4byte	gCurrentSprite
.L_4c244:
	ldr	r0, .L_4c25c
	mov	r1, #104	@ 0x68
	strb	r1, [r0, #28]
	mov	r1, #17
	strb	r1, [r0, #29]
.L_4c24e:
	bl	SpriteUtilThrownUpRightHard
.L_4c252:
	ldr	r1, .L_4c25c
	ldrb	r0, [r1, #22]
	sub	r0, #16
	strb	r0, [r1, #22]
	b	.L_4c2aa
.L_4c25c:
	.4byte	gCurrentSprite
.L_4c260:
	add	r3, r2, #0
	ldrh	r1, [r3, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	bne	.L_4c2a6
	ldrb	r1, [r3, #29]
	mov	r0, #240	@ 0xf0
	and	r0, r1
	cmp	r0, #0
	beq	.L_4c280
	add	r1, r3, #0
	add	r1, #41	@ 0x29
	mov	r0, #4
	b	.L_4c286
.L_4c280:
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
.L_4c286:
	strb	r0, [r1, #0]
	ldr	r0, .L_4c29c
	ldrb	r1, [r0, #29]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #2
	bne	.L_4c2a0
	bl	func_8024AC0
	b	.L_4c2aa
	.align	2, 0
.L_4c29c:
	.4byte	gCurrentSprite
.L_4c2a0:
	bl	func_8024BEC
	b	.L_4c2aa
.L_4c2a6:
	bl	SpriteUtilDie
.L_4c2aa:
	ldr	r7, .L_4c338
	ldrh	r1, [r7, #0]
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_4c330
	ldr	r6, .L_4c33c
	ldrb	r0, [r7, #22]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
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
	ldrb	r0, [r7, #22]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #14]
	ldrb	r0, [r7, #22]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #16]
	ldrb	r0, [r7, #22]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #18]
	ldrb	r0, [r7, #22]
	sub	r0, #1
	strb	r0, [r7, #22]
.L_4c330:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4c338:
	.4byte	gCurrentSprite
.L_4c33c:
	.4byte	sSinCosTable


thumb_func_start SpritePinballLockUp
SpritePinballLockUp:
	push	{r4, r5, lr}
	ldr	r5, .L_4c35c
	ldrb	r4, [r5, #28]
	cmp	r4, #18
	beq	.L_4c3b4
	cmp	r4, #18
	bgt	.L_4c366
	cmp	r4, #15
	beq	.L_4c3a8
	cmp	r4, #15
	bgt	.L_4c360
	cmp	r4, #0
	beq	.L_4c37e
	b	.L_4c3d0
.L_4c35c:
	.4byte	gCurrentSprite
.L_4c360:
	cmp	r4, #16
	beq	.L_4c3ae
	b	.L_4c3d0
.L_4c366:
	cmp	r4, #22
	beq	.L_4c3c0
	cmp	r4, #22
	bgt	.L_4c374
	cmp	r4, #20
	beq	.L_4c3ba
	b	.L_4c3d0
.L_4c374:
	cmp	r4, #50	@ 0x32
	beq	.L_4c3c6
	cmp	r4, #109	@ 0x6d
	beq	.L_4c3cc
	b	.L_4c3d0
.L_4c37e:
	bl	func_804B04C
	add	r1, r5, #0
	add	r1, #35	@ 0x23
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #36	@ 0x24
	strb	r4, [r0, #0]
	add	r1, #2
	mov	r0, #4
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #38	@ 0x26
	strb	r4, [r0, #0]
	ldr	r0, .L_4c3a4
	str	r0, [r5, #4]
	b	.L_4c3d0
	.align	2, 0
.L_4c3a4:
	.4byte	sUnk_83D0938
.L_4c3a8:
	bl	func_804B0AC
	b	.L_4c3d0
.L_4c3ae:
	bl	func_804B0F4
	b	.L_4c3d0
.L_4c3b4:
	bl	func_804B198
	b	.L_4c3d0
.L_4c3ba:
	bl	func_804B1D8
	b	.L_4c3d0
.L_4c3c0:
	bl	func_804B23C
	b	.L_4c3d0
.L_4c3c6:
	bl	func_804B2E4
	b	.L_4c3d0
.L_4c3cc:
	bl	func_804B33C
.L_4c3d0:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpritePinballLockDown
SpritePinballLockDown:
	push	{r4, r5, lr}
	ldr	r5, .L_4c3f4
	ldrb	r4, [r5, #28]
	cmp	r4, #18
	beq	.L_4c44c
	cmp	r4, #18
	bgt	.L_4c3fe
	cmp	r4, #15
	beq	.L_4c440
	cmp	r4, #15
	bgt	.L_4c3f8
	cmp	r4, #0
	beq	.L_4c416
	b	.L_4c468
.L_4c3f4:
	.4byte	gCurrentSprite
.L_4c3f8:
	cmp	r4, #16
	beq	.L_4c446
	b	.L_4c468
.L_4c3fe:
	cmp	r4, #22
	beq	.L_4c458
	cmp	r4, #22
	bgt	.L_4c40c
	cmp	r4, #20
	beq	.L_4c452
	b	.L_4c468
.L_4c40c:
	cmp	r4, #50	@ 0x32
	beq	.L_4c45e
	cmp	r4, #109	@ 0x6d
	beq	.L_4c464
	b	.L_4c468
.L_4c416:
	bl	func_804B04C
	add	r0, r5, #0
	add	r0, #35	@ 0x23
	strb	r4, [r0, #0]
	add	r1, r5, #0
	add	r1, #36	@ 0x24
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #4
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #38	@ 0x26
	strb	r4, [r0, #0]
	ldr	r0, .L_4c43c
	str	r0, [r5, #4]
	b	.L_4c468
	.align	2, 0
.L_4c43c:
	.4byte	sUnk_83D0988
.L_4c440:
	bl	func_804B394
	b	.L_4c468
.L_4c446:
	bl	func_804B3DC
	b	.L_4c468
.L_4c44c:
	bl	func_804B48C
	b	.L_4c468
.L_4c452:
	bl	func_804B4CC
	b	.L_4c468
.L_4c458:
	bl	func_804B530
	b	.L_4c468
.L_4c45e:
	bl	func_804B5D8
	b	.L_4c468
.L_4c464:
	bl	func_804B630
.L_4c468:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpritePinballLockLeft
SpritePinballLockLeft:
	push	{r4, r5, lr}
	ldr	r5, .L_4c48c
	ldrb	r4, [r5, #28]
	cmp	r4, #18
	beq	.L_4c4e4
	cmp	r4, #18
	bgt	.L_4c496
	cmp	r4, #15
	beq	.L_4c4d8
	cmp	r4, #15
	bgt	.L_4c490
	cmp	r4, #0
	beq	.L_4c4ae
	b	.L_4c500
.L_4c48c:
	.4byte	gCurrentSprite
.L_4c490:
	cmp	r4, #16
	beq	.L_4c4de
	b	.L_4c500
.L_4c496:
	cmp	r4, #22
	beq	.L_4c4f0
	cmp	r4, #22
	bgt	.L_4c4a4
	cmp	r4, #20
	beq	.L_4c4ea
	b	.L_4c500
.L_4c4a4:
	cmp	r4, #50	@ 0x32
	beq	.L_4c4f6
	cmp	r4, #109	@ 0x6d
	beq	.L_4c4fc
	b	.L_4c500
.L_4c4ae:
	bl	func_804B04C
	add	r1, r5, #0
	add	r1, #35	@ 0x23
	mov	r0, #4
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #38	@ 0x26
	strb	r4, [r0, #0]
	ldr	r0, .L_4c4d4
	str	r0, [r5, #4]
	b	.L_4c500
	.align	2, 0
.L_4c4d4:
	.4byte	sUnk_83D09D8
.L_4c4d8:
	bl	func_804B688
	b	.L_4c500
.L_4c4de:
	bl	func_804B6D0
	b	.L_4c500
.L_4c4e4:
	bl	func_804B778
	b	.L_4c500
.L_4c4ea:
	bl	func_804B7B8
	b	.L_4c500
.L_4c4f0:
	bl	func_804B824
	b	.L_4c500
.L_4c4f6:
	bl	func_804B8CC
	b	.L_4c500
.L_4c4fc:
	bl	func_804B924
.L_4c500:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpritePinballLockRight
SpritePinballLockRight:
	push	{r4, r5, lr}
	ldr	r5, .L_4c524
	ldrb	r4, [r5, #28]
	cmp	r4, #18
	beq	.L_4c57c
	cmp	r4, #18
	bgt	.L_4c52e
	cmp	r4, #15
	beq	.L_4c570
	cmp	r4, #15
	bgt	.L_4c528
	cmp	r4, #0
	beq	.L_4c546
	b	.L_4c598
.L_4c524:
	.4byte	gCurrentSprite
.L_4c528:
	cmp	r4, #16
	beq	.L_4c576
	b	.L_4c598
.L_4c52e:
	cmp	r4, #22
	beq	.L_4c588
	cmp	r4, #22
	bgt	.L_4c53c
	cmp	r4, #20
	beq	.L_4c582
	b	.L_4c598
.L_4c53c:
	cmp	r4, #50	@ 0x32
	beq	.L_4c58e
	cmp	r4, #109	@ 0x6d
	beq	.L_4c594
	b	.L_4c598
.L_4c546:
	bl	func_804B04C
	add	r1, r5, #0
	add	r1, #35	@ 0x23
	mov	r0, #4
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #37	@ 0x25
	strb	r4, [r0, #0]
	add	r1, #2
	mov	r0, #68	@ 0x44
	strb	r0, [r1, #0]
	ldr	r0, .L_4c56c
	str	r0, [r5, #4]
	b	.L_4c598
	.align	2, 0
.L_4c56c:
	.4byte	sUnk_83D0A28
.L_4c570:
	bl	func_804B97C
	b	.L_4c598
.L_4c576:
	bl	func_804B9C4
	b	.L_4c598
.L_4c57c:
	bl	func_804BA6C
	b	.L_4c598
.L_4c582:
	bl	func_804BAAC
	b	.L_4c598
.L_4c588:
	bl	func_804BB10
	b	.L_4c598
.L_4c58e:
	bl	func_804BBB8
	b	.L_4c598
.L_4c594:
	bl	func_804BC10
.L_4c598:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpritePinballCounter
SpritePinballCounter:
	push	{lr}
	ldr	r1, .L_4c5b8
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #16
	beq	.L_4c5ca
	cmp	r0, #16
	bgt	.L_4c5bc
	cmp	r0, #0
	beq	.L_4c5c6
	b	.L_4c5da
.L_4c5b8:
	.4byte	gCurrentSprite
.L_4c5bc:
	cmp	r0, #49	@ 0x31
	beq	.L_4c5d0
	cmp	r0, #50	@ 0x32
	beq	.L_4c5d6
	b	.L_4c5da
.L_4c5c6:
	bl	func_804BC68
.L_4c5ca:
	bl	func_804BCD0
	b	.L_4c5da
.L_4c5d0:
	bl	func_804BDA0
	b	.L_4c5da
.L_4c5d6:
	bl	func_804BDC0
.L_4c5da:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownB5
SpriteUnknownB5:
	push	{lr}
	ldr	r0, .L_4c5f4
	mov	r1, #1
	strb	r1, [r0, #31]
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_4c5f8
	bl	func_804BE3C
	b	.L_4c5fc
.L_4c5f4:
	.4byte	gCurrentSprite
.L_4c5f8:
	bl	func_804BEB0
.L_4c5fc:
	pop	{r0}
	bx	r0
