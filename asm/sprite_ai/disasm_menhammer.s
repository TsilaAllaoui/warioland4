.include "macros.s.inc"


thumb_func_start func_804384C
func_804384C:
	ldr	r2, .L_43868
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_4386c
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #52	@ 0x34
	b	.L_43878
	.align	2, 0
.L_43868:
	.4byte	gCurrentSprite
.L_4386c:
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #56	@ 0x38
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
.L_43878:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_804387C
func_804387C:
	push	{lr}
	ldr	r3, .L_438b0
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r3, #30]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #40	@ 0x28
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
	bl	SpriteUtilTurnTowardWario
	pop	{r0}
	bx	r0
	.align	2, 0
.L_438b0:
	.4byte	gCurrentSprite


thumb_func_start func_80438B4
func_80438B4:
	push	{lr}
	ldr	r1, .L_438dc
	ldr	r0, .L_438e0
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	add	r0, r1, #0
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	mov	r0, #1
	strb	r0, [r1, #30]
	bl	func_804384C
	pop	{r0}
	bx	r0
	.align	2, 0
.L_438dc:
	.4byte	gCurrentSprite
.L_438e0:
	.4byte	sUnk_83C7DB0


thumb_func_start func_80438E4
func_80438E4:
	push	{r4, r5, r6, lr}
	mov	r1, #161	@ 0xa1
	lsl	r1, r1, #1
	mov	r0, #136	@ 0x88
	bl	SpriteUtilWaitCheckWarioNearbyLeftRight
	add	r5, r0, #0
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_43920
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_43950
	ldr	r2, .L_43924
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_43928
	ldrh	r0, [r2, #8]
	ldrh	r1, [r2, #10]
	sub	r1, #40	@ 0x28
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_43936
	.align	2, 0
.L_43920:
	.4byte	gSpriteAiCollisionResult
.L_43924:
	.4byte	gCurrentSprite
.L_43928:
	ldrh	r0, [r2, #8]
	ldrh	r1, [r2, #10]
	add	r1, #36	@ 0x24
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_43936:
	ldr	r0, .L_43948
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_43a10
	ldr	r1, .L_4394c
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_43a14
	.align	2, 0
.L_43948:
	.4byte	gSpriteAiCollisionFlags
.L_4394c:
	.4byte	gCurrentSprite
.L_43950:
	ldr	r4, .L_439a4
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_439ac
	cmp	r5, #8
	beq	.L_439b0
	cmp	r5, #4
	beq	.L_439e6
	mov	r0, #240	@ 0xf0
	and	r0, r2
	cmp	r0, #0
	beq	.L_43a10
	ldrh	r1, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	and	r0, r1
	ldrb	r2, [r6, #0]
	add	r0, r0, r2
	cmp	r0, #63	@ 0x3f
	ble	.L_43a10
	ldrh	r0, [r4, #8]
	add	r1, #36	@ 0x24
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_439a8
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_439e6
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_439fe
	.align	2, 0
.L_439a4:
	.4byte	gCurrentSprite
.L_439a8:
	.4byte	gSpriteAiCollisionFlags
.L_439ac:
	cmp	r5, #4
	bne	.L_439b6
.L_439b0:
	mov	r0, #110	@ 0x6e
	strb	r0, [r4, #28]
	b	.L_43a14
.L_439b6:
	cmp	r5, #8
	beq	.L_439e6
	mov	r0, #240	@ 0xf0
	and	r0, r2
	cmp	r0, #0
	beq	.L_43a10
	ldrh	r1, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	and	r0, r1
	ldrb	r2, [r6, #0]
	cmp	r0, r2
	bcs	.L_43a10
	ldrh	r0, [r4, #8]
	sub	r1, #40	@ 0x28
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_439ec
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_439f0
.L_439e6:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_43a14
.L_439ec:
	.4byte	gSpriteAiCollisionFlags
.L_439f0:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_439fe:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r0, [r5, #0]
	cmp	r0, #17
	bne	.L_43a10
	strb	r0, [r4, #28]
	b	.L_43a14
.L_43a10:
	bl	func_80263AC
.L_43a14:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8043A1C
func_8043A1C:
	push	{lr}
	ldr	r0, .L_43a3c
	ldr	r1, .L_43a40
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #9
	strb	r1, [r0, #0]
	bl	func_804384C
	pop	{r0}
	bx	r0
.L_43a3c:
	.4byte	gCurrentSprite
.L_43a40:
	.4byte	sUnk_83C7E10


thumb_func_start func_8043A44
func_8043A44:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_43a60
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_43a68
	ldr	r1, .L_43a64
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_43abc
	.align	2, 0
.L_43a60:
	.4byte	gSpriteAiCollisionResult
.L_43a64:
	.4byte	gCurrentSprite
.L_43a68:
	ldr	r2, .L_43aa8
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
	bne	.L_43abc
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	bne	.L_43ab0
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r2, #0]
	ldr	r0, .L_43aac
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #8
	mov	r1, ip
	strb	r0, [r1, #0]
	bl	func_804384C
	b	.L_43abc
.L_43aa8:
	.4byte	gCurrentSprite
.L_43aac:
	.4byte	sUnk_83C7EF0
.L_43ab0:
	ldr	r0, .L_43ac0
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r3, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
.L_43abc:
	pop	{r0}
	bx	r0
.L_43ac0:
	.4byte	sUnk_83C7DB0


thumb_func_start func_8043AC4
func_8043AC4:
	ldr	r0, .L_43ae4
	ldr	r1, .L_43ae8
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	mov	r2, #0
	strh	r1, [r0, #20]
	mov	r1, #111	@ 0x6f
	strb	r1, [r0, #28]
	add	r3, r0, #0
	add	r3, #39	@ 0x27
	mov	r1, #5
	strb	r1, [r3, #0]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
.L_43ae4:
	.4byte	gCurrentSprite
.L_43ae8:
	.4byte	sUnk_83C7E40


thumb_func_start func_8043AEC
func_8043AEC:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_43b14
	add	r5, r4, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	add	r6, r0, #0
	cmp	r6, #0
	beq	.L_43b18
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_43b08
	b	.L_43c50
.L_43b08:
	mov	r0, #52	@ 0x34
	strb	r0, [r4, #30]
	mov	r0, #78	@ 0x4e
	bl	m4aSongNumStart
	b	.L_43c50
.L_43b14:
	.4byte	gCurrentSprite
.L_43b18:
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r0, [r0, #0]
	cmp	r0, #9
	bhi	.L_43b4c
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_43b48
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_43b98
	mov	r0, #29
	strb	r0, [r4, #28]
	b	.L_43c50
.L_43b48:
	.4byte	gSpriteAiCollisionFlags
.L_43b4c:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r2, r0, #0
	ldr	r0, .L_43b8c
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_43b6a
	ldrh	r1, [r4, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #4
	add	r0, r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_43b6a:
	ldr	r0, .L_43b90
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_43b98
	mov	r1, #0
	strh	r2, [r4, #8]
	mov	r0, #24
	strb	r0, [r4, #28]
	ldr	r0, .L_43b94
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r6, [r4, #20]
	mov	r0, #25
	strb	r0, [r5, #0]
	mov	r0, #1
	strb	r0, [r4, #30]
	b	.L_43c50
.L_43b8c:
	.4byte	gUnk_30000A0
.L_43b90:
	.4byte	gSpriteAiCollisionResult
.L_43b94:
	.4byte	sUnk_83C7F08
.L_43b98:
	ldr	r2, .L_43bc4
	mov	r4, #42	@ 0x2a
	add	r4, r4, r2
	mov	ip, r4
	ldrb	r3, [r4, #0]
	ldr	r6, .L_43bc8
	lsl	r0, r3, #1
	add	r0, r0, r6
	ldrh	r5, [r0, #0]
	mov	r4, #0
	ldrsh	r1, [r0, r4]
	ldr	r0, .L_43bcc
	add	r4, r2, #0
	cmp	r1, r0
	bne	.L_43bd0
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r6
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_43bda
.L_43bc4:
	.4byte	gCurrentSprite
.L_43bc8:
	.4byte	sUnk_83C7F20
.L_43bcc:
	.4byte	0x7FFF
.L_43bd0:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r5
.L_43bda:
	strh	r0, [r4, #8]
	add	r5, r4, #0
	ldrh	r1, [r5, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_43c20
	ldrh	r1, [r5, #10]
	add	r1, #8
	strh	r1, [r5, #10]
	ldrh	r0, [r5, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r2, r5, #0
	add	r2, #38	@ 0x26
	ldrb	r2, [r2, #0]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_43c1c
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_43c50
	mov	r0, #71	@ 0x47
	strb	r0, [r5, #28]
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
	b	.L_43c50
	.align	2, 0
.L_43c1c:
	.4byte	gSpriteAiCollisionFlags
.L_43c20:
	ldrh	r1, [r4, #10]
	sub	r1, #8
	strh	r1, [r4, #10]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r2, r4, #0
	add	r2, #37	@ 0x25
	ldrb	r2, [r2, #0]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_43c58
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_43c50
	mov	r0, #69	@ 0x45
	strb	r0, [r4, #28]
	mov	r0, #55	@ 0x37
	bl	m4aSongNumStart
.L_43c50:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_43c58:
	.4byte	gSpriteAiCollisionFlags


thumb_func_start func_8043C5C
func_8043C5C:
	ldr	r2, .L_43c98
	ldr	r0, .L_43c9c
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
	beq	.L_43c96
	mov	r0, #5
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
.L_43c96:
	bx	lr
.L_43c98:
	.4byte	gCurrentSprite
.L_43c9c:
	.4byte	sUnk_83C7E78


thumb_func_start func_8043CA0
func_8043CA0:
	push	{lr}
	ldr	r1, .L_43cb0
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8043C5C
	pop	{r0}
	bx	r0
.L_43cb0:
	.4byte	gCurrentSprite


thumb_func_start func_8043CB4
func_8043CB4:
	push	{lr}
	ldr	r1, .L_43cc4
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8043C5C
	pop	{r0}
	bx	r0
.L_43cc4:
	.4byte	gCurrentSprite


thumb_func_start func_8043CC8
func_8043CC8:
	ldr	r0, .L_43ce0
	ldr	r1, .L_43ce4
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
.L_43ce0:
	.4byte	gCurrentSprite
.L_43ce4:
	.4byte	sUnk_83C7DA0


thumb_func_start func_8043CE8
func_8043CE8:
	push	{lr}
	ldr	r0, .L_43d14
	ldr	r1, .L_43d18
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r3, r0, #0
	add	r3, #39	@ 0x27
	mov	r1, #16
	strb	r1, [r3, #0]
	mov	r1, #1
	strb	r1, [r0, #30]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bl	func_804384C
	pop	{r0}
	bx	r0
.L_43d14:
	.4byte	gCurrentSprite
.L_43d18:
	.4byte	sUnk_83C7E28


thumb_func_start func_8043D1C
func_8043D1C:
	ldr	r0, .L_43d34
	ldr	r1, .L_43d38
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
.L_43d34:
	.4byte	gCurrentSprite
.L_43d38:
	.4byte	sUnk_83C7DE8


thumb_func_start func_8043D3C
func_8043D3C:
	ldr	r2, .L_43d68
	ldr	r0, .L_43d6c
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	mov	r0, #30
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #5
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	bx	lr
.L_43d68:
	.4byte	gCurrentSprite
.L_43d6c:
	.4byte	sUnk_83C7E78


thumb_func_start func_8043D70
func_8043D70:
	push	{r4, r5, lr}
	ldr	r5, .L_43db4
	ldr	r0, .L_43db8
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
	ldr	r0, .L_43dbc
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_43db4:
	.4byte	gCurrentSprite
.L_43db8:
	.4byte	sUnk_83C7EB8
.L_43dbc:
	.4byte	0xFEFF


thumb_func_start func_8043DC0
func_8043DC0:
	push	{lr}
	ldr	r1, .L_43dd0
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8043D70
	pop	{r0}
	bx	r0
.L_43dd0:
	.4byte	gCurrentSprite


thumb_func_start func_8043DD4
func_8043DD4:
	push	{lr}
	ldr	r1, .L_43de4
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8043D70
	pop	{r0}
	bx	r0
.L_43de4:
	.4byte	gCurrentSprite


thumb_func_start func_8043DE8
func_8043DE8:
	push	{lr}
	ldr	r2, .L_43e1c
	ldr	r0, .L_43e20
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
.L_43e1c:
	.4byte	gCurrentSprite
.L_43e20:
	.4byte	sUnk_83C7EB8


thumb_func_start func_8043E24
func_8043E24:
	push	{lr}
	ldr	r1, .L_43e34
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8043DE8
	pop	{r0}
	bx	r0
.L_43e34:
	.4byte	gCurrentSprite


thumb_func_start func_8043E38
func_8043E38:
	push	{lr}
	ldr	r1, .L_43e48
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8043DE8
	pop	{r0}
	bx	r0
.L_43e48:
	.4byte	gCurrentSprite


thumb_func_start func_8043E4C
func_8043E4C:
	ldr	r2, .L_43e74
	ldr	r0, .L_43e78
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
.L_43e74:
	.4byte	gCurrentSprite
.L_43e78:
	.4byte	sUnk_83C7DA0


thumb_func_start func_8043E7C
func_8043E7C:
	push	{lr}
	ldr	r1, .L_43e8c
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_8043E4C
	pop	{r0}
	bx	r0
.L_43e8c:
	.4byte	gCurrentSprite


thumb_func_start func_8043E90
func_8043E90:
	push	{lr}
	ldr	r1, .L_43ea0
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_8043E4C
	pop	{r0}
	bx	r0
.L_43ea0:
	.4byte	gCurrentSprite


thumb_func_start func_8043EA4
func_8043EA4:
	ldr	r2, .L_43ecc
	ldr	r0, .L_43ed0
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	mov	r0, #5
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	bx	lr
.L_43ecc:
	.4byte	gCurrentSprite
.L_43ed0:
	.4byte	sUnk_83C7E78


thumb_func_start func_8043ED4
func_8043ED4:
	push	{lr}
	ldr	r1, .L_43ee4
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_8043EA4
	pop	{r0}
	bx	r0
.L_43ee4:
	.4byte	gCurrentSprite


thumb_func_start func_8043EE8
func_8043EE8:
	push	{lr}
	ldr	r1, .L_43ef8
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_8043EA4
	pop	{r0}
	bx	r0
.L_43ef8:
	.4byte	gCurrentSprite


thumb_func_start func_8043EFC
func_8043EFC:
	ldr	r0, .L_43f0c
	ldrb	r1, [r0, #30]
	add	r2, r0, #0
	cmp	r1, #5
	bne	.L_43f14
	ldr	r0, .L_43f10
	b	.L_43f16
	.align	2, 0
.L_43f0c:
	.4byte	gCurrentSprite
.L_43f10:
	.4byte	sUnk_83C7ED8
.L_43f14:
	ldr	r0, .L_43f3c
.L_43f16:
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #10
	strb	r0, [r1, #0]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_43f40
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
.L_43f3c:
	.4byte	sUnk_83C7EA0
.L_43f40:
	.4byte	0xFEFF


thumb_func_start func_8043F44
func_8043F44:
	push	{lr}
	bl	SpriteUtilDie
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8043F50
func_8043F50:
	ldr	r2, .L_43f80
	ldr	r0, .L_43f84
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
	add	r1, #37	@ 0x25
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	bx	lr
.L_43f80:
	.4byte	gCurrentSprite
.L_43f84:
	.4byte	sUnk_83C7E78


thumb_func_start func_8043F88
func_8043F88:
	push	{lr}
	ldr	r1, .L_43f98
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_8043F50
	pop	{r0}
	bx	r0
.L_43f98:
	.4byte	gCurrentSprite


thumb_func_start func_8043F9C
func_8043F9C:
	push	{lr}
	ldr	r1, .L_43fac
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_8043F50
	pop	{r0}
	bx	r0
.L_43fac:
	.4byte	gCurrentSprite


thumb_func_start func_8043FB0
func_8043FB0:
	ldr	r2, .L_43fd8
	ldr	r0, .L_43fdc
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	mov	r0, #76	@ 0x4c
	strb	r0, [r2, #28]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #20
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #1
	strb	r0, [r2, #30]
	bx	lr
	.align	2, 0
.L_43fd8:
	.4byte	gCurrentSprite
.L_43fdc:
	.4byte	sUnk_83C7DA0


thumb_func_start func_8043FE0
func_8043FE0:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_44018
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_44062
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_4401c
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_44020
	mov	r0, #29
	b	.L_44064
.L_44018:
	.4byte	gCurrentSprite
.L_4401c:
	.4byte	gSpriteAiCollisionFlags
.L_44020:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_4404c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_44050
	cmp	r1, r0
	bne	.L_44054
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_44066
	.align	2, 0
.L_4404c:
	.4byte	sUnk_8352B18
.L_44050:
	.4byte	0x7FFF
.L_44054:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_44066
.L_44062:
	mov	r0, #27
.L_44064:
	strb	r0, [r4, #28]
.L_44066:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_804406C
func_804406C:
	ldr	r1, .L_44074
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bx	lr
.L_44074:
	.4byte	gCurrentSprite


thumb_func_start func_8044078
func_8044078:
	ldr	r1, .L_44080
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bx	lr
.L_44080:
	.4byte	gCurrentSprite


thumb_func_start func_8044084
func_8044084:
	ldr	r0, .L_44090
	mov	r1, #88	@ 0x58
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	bx	lr
.L_44090:
	.4byte	gCurrentSprite


thumb_func_start func_8044094
func_8044094:
	ldr	r0, .L_440a0
	mov	r1, #86	@ 0x56
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #31]
	bx	lr
.L_440a0:
	.4byte	gCurrentSprite


thumb_func_start SpriteMenhanma
SpriteMenhanma:
	push	{lr}
	ldr	r2, .L_440cc
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_440b8
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_440b8:
	ldrb	r0, [r2, #28]
	cmp	r0, #111	@ 0x6f
	bls	.L_440c0
	b	.L_44428
.L_440c0:
	lsl	r0, r0, #2
	ldr	r1, .L_440d0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_440cc:
	.4byte	gCurrentSprite
.L_440d0:
	.4byte	.L_440d4
.L_440d4:
	.4byte	.L_44294
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44298
	.4byte	.L_4429c
	.4byte	.L_442a2
	.4byte	.L_442a6
	.4byte	.L_44428
	.4byte	.L_442a6
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_442b6
	.4byte	.L_442ba
	.4byte	.L_442c0
	.4byte	.L_44396
	.4byte	.L_442c6
	.4byte	.L_442ca
	.4byte	.L_442d0
	.4byte	.L_442d4
	.4byte	.L_442da
	.4byte	.L_442de
	.4byte	.L_442e4
	.4byte	.L_442e8
	.4byte	.L_442ee
	.4byte	.L_442f2
	.4byte	.L_442f8
	.4byte	.L_442fc
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44302
	.4byte	.L_44306
	.4byte	.L_4430c
	.4byte	.L_44310
	.4byte	.L_44316
	.4byte	.L_4431a
	.4byte	.L_44320
	.4byte	.L_44324
	.4byte	.L_4432a
	.4byte	.L_44362
	.4byte	.L_44330
	.4byte	.L_44344
	.4byte	.L_44336
	.4byte	.L_4433a
	.4byte	.L_44340
	.4byte	.L_44344
	.4byte	.L_4434a
	.4byte	.L_4434e
	.4byte	.L_44354
	.4byte	.L_44358
	.4byte	.L_4435e
	.4byte	.L_44362
	.4byte	.L_44368
	.4byte	.L_4436c
	.4byte	.L_44372
	.4byte	.L_44382
	.4byte	.L_44378
	.4byte	.L_4438c
	.4byte	.L_4437e
	.4byte	.L_44382
	.4byte	.L_44388
	.4byte	.L_4438c
	.4byte	.L_44392
	.4byte	.L_44396
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_442da
	.4byte	.L_442e4
	.4byte	.L_4439c
	.4byte	.L_443a2
	.4byte	.L_443a8
	.4byte	.L_443ae
	.4byte	.L_443c0
	.4byte	.L_443c6
	.4byte	.L_443b4
	.4byte	.L_443ba
	.4byte	.L_443cc
	.4byte	.L_443d0
	.4byte	.L_443f4
	.4byte	.L_443f8
	.4byte	.L_443d6
	.4byte	.L_443da
	.4byte	.L_443fe
	.4byte	.L_44402
	.4byte	.L_443e0
	.4byte	.L_443e4
	.4byte	.L_44408
	.4byte	.L_4440c
	.4byte	.L_443ea
	.4byte	.L_443ee
	.4byte	.L_44412
	.4byte	.L_44416
	.4byte	.L_4441c
	.4byte	.L_44422
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_44428
	.4byte	.L_442ac
	.4byte	.L_442b0
.L_44294:
	bl	func_804387C
.L_44298:
	bl	func_80438B4
.L_4429c:
	bl	func_80438E4
	b	.L_4442c
.L_442a2:
	bl	func_8043A1C
.L_442a6:
	bl	func_8043A44
	b	.L_4442c
.L_442ac:
	bl	func_8043AC4
.L_442b0:
	bl	func_8043AEC
	b	.L_4442c
.L_442b6:
	bl	func_8043CC8
.L_442ba:
	bl	func_8023C94
	b	.L_4442c
.L_442c0:
	bl	func_8043CE8
	b	.L_4442c
.L_442c6:
	bl	func_8043D1C
.L_442ca:
	bl	func_8023E00
	b	.L_4442c
.L_442d0:
	bl	func_8043D3C
.L_442d4:
	bl	func_8023EE0
	b	.L_4442c
.L_442da:
	bl	func_8043DC0
.L_442de:
	bl	SpriteUtilFallOffscreenRight
	b	.L_4442c
.L_442e4:
	bl	func_8043DD4
.L_442e8:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_4442c
.L_442ee:
	bl	func_8043E7C
.L_442f2:
	bl	SpriteUtilPushedRight
	b	.L_4442c
.L_442f8:
	bl	func_8043E90
.L_442fc:
	bl	SpriteUtilPushedLeft
	b	.L_4442c
.L_44302:
	bl	func_8043ED4
.L_44306:
	bl	func_8024478
	b	.L_4442c
.L_4430c:
	bl	func_8043EE8
.L_44310:
	bl	func_802449C
	b	.L_4442c
.L_44316:
	bl	func_80244C0
.L_4431a:
	bl	func_80244E0
	b	.L_4442c
.L_44320:
	bl	func_8043EFC
.L_44324:
	bl	SpriteUtilDieAfterDelay
	b	.L_4442c
.L_4432a:
	bl	func_8043CA0
	b	.L_44362
.L_44330:
	bl	func_8043CB4
	b	.L_44344
.L_44336:
	bl	func_8024688
.L_4433a:
	bl	func_80246B8
	b	.L_4442c
.L_44340:
	bl	func_802473C
.L_44344:
	bl	func_802476C
	b	.L_4442c
.L_4434a:
	bl	func_80247F0
.L_4434e:
	bl	func_8024820
	b	.L_4442c
.L_44354:
	bl	func_80248A4
.L_44358:
	bl	func_80248D4
	b	.L_4442c
.L_4435e:
	bl	func_8024958
.L_44362:
	bl	func_8024988
	b	.L_4442c
.L_44368:
	bl	func_8024A0C
.L_4436c:
	bl	func_8024A3C
	b	.L_4442c
.L_44372:
	bl	func_8024AC0
	b	.L_44382
.L_44378:
	bl	func_8024BEC
	b	.L_4438c
.L_4437e:
	bl	func_8043F88
.L_44382:
	bl	func_8024AD4
	b	.L_4442c
.L_44388:
	bl	func_8043F9C
.L_4438c:
	bl	func_8024C00
	b	.L_4442c
.L_44392:
	bl	func_8043FB0
.L_44396:
	bl	func_8043FE0
	b	.L_4442c
.L_4439c:
	bl	func_804406C
	b	.L_4442c
.L_443a2:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_4442c
.L_443a8:
	bl	func_8044078
	b	.L_4442c
.L_443ae:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_4442c
.L_443b4:
	bl	func_8044084
	b	.L_4442c
.L_443ba:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_4442c
.L_443c0:
	bl	func_8044094
	b	.L_4442c
.L_443c6:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_4442c
.L_443cc:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_443d0:
	bl	SpriteUtilThrownLeftSoft
	b	.L_4442c
.L_443d6:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_443da:
	bl	SpriteUtilThrownLeftHard
	b	.L_4442c
.L_443e0:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_443e4:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_4442c
.L_443ea:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_443ee:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_4442c
.L_443f4:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_443f8:
	bl	SpriteUtilThrownRightSoft
	b	.L_4442c
.L_443fe:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_44402:
	bl	SpriteUtilThrownRightHard
	b	.L_4442c
.L_44408:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_4440c:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_4442c
.L_44412:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_44416:
	bl	SpriteUtilThrownUpRightHard
	b	.L_4442c
.L_4441c:
	bl	func_8043E38
	b	.L_4442c
.L_44422:
	bl	func_8043E24
	b	.L_4442c
.L_44428:
	bl	func_8043F44
.L_4442c:
	pop	{r0}
	bx	r0
