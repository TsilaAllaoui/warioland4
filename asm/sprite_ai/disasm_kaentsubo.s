.include "macros.s.inc"


thumb_func_start func_802D6D0
func_802D6D0:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_2d730
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r4, #30]
	add	r1, r4, #0
	add	r1, #32
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #16
	strb	r1, [r0, #0]
	add	r3, r4, #0
	add	r3, #35	@ 0x23
	mov	r0, #64	@ 0x40
	strb	r0, [r3, #0]
	add	r0, r4, #0
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r3, #2
	mov	r0, #32
	strb	r0, [r3, #0]
	add	r3, #1
	mov	r0, #28
	strb	r0, [r3, #0]
	ldr	r0, .L_2d734
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r2, [r4, #20]
	strb	r1, [r4, #28]
	bl	SpriteUtilTurnTowardWario
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #146	@ 0x92
	bl	SpriteSpawnAsChild
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
.L_2d730:
	.4byte	gCurrentSprite
.L_2d734:
	.4byte	sUnk_83B8118


thumb_func_start func_802D738
func_802D738:
	ldr	r0, .L_2d754
	ldr	r1, .L_2d758
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #16
	strb	r1, [r0, #28]
	mov	r1, #1
	strb	r1, [r0, #30]
	add	r0, #40	@ 0x28
	mov	r1, #50	@ 0x32
	strb	r1, [r0, #0]
	bx	lr
.L_2d754:
	.4byte	gCurrentSprite
.L_2d758:
	.4byte	sUnk_83B8118


thumb_func_start func_802D75C
func_802D75C:
	push	{r4, r5, r6, r7, lr}
	mov	r0, #127	@ 0x7f
	mov	r1, #192	@ 0xc0
	bl	SpriteUtilWaitCheckWarioNearbyLeftRight
	add	r5, r0, #0
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_2d79c
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_2d7d0
	ldr	r3, .L_2d7a0
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2d7a4
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_2d7b8
	.align	2, 0
.L_2d79c:
	.4byte	gSpriteAiCollisionResult
.L_2d7a0:
	.4byte	gCurrentSprite
.L_2d7a4:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_2d7b8:
	ldr	r0, .L_2d7c8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_2d8a8
	ldr	r1, .L_2d7cc
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_2d8ac
.L_2d7c8:
	.4byte	gSpriteAiCollisionFlags
.L_2d7cc:
	.4byte	gCurrentSprite
.L_2d7d0:
	ldr	r4, .L_2d828
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2d830
	cmp	r5, #8
	beq	.L_2d834
	cmp	r5, #4
	beq	.L_2d83e
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_2d8a8
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	and	r0, r2
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	ldrb	r1, [r6, #0]
	add	r0, r0, r1
	cmp	r0, #63	@ 0x3f
	ble	.L_2d8a8
	ldrh	r0, [r4, #8]
	add	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_2d82c
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_2d89e
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_2d88c
.L_2d828:
	.4byte	gCurrentSprite
.L_2d82c:
	.4byte	gSpriteAiCollisionFlags
.L_2d830:
	cmp	r5, #4
	bne	.L_2d83a
.L_2d834:
	mov	r0, #19
	strb	r0, [r4, #28]
	b	.L_2d8ac
.L_2d83a:
	cmp	r5, #8
	bne	.L_2d84c
.L_2d83e:
	mov	r0, #17
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	mov	r0, #7
	strb	r0, [r1, #0]
	b	.L_2d8ac
.L_2d84c:
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_2d8a8
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	ldrb	r1, [r6, #0]
	and	r0, r2
	cmp	r0, r1
	bcs	.L_2d8a8
	ldrh	r0, [r4, #8]
	sub	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_2d8a4
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_2d89e
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_2d88c:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_2d8a8
.L_2d89e:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_2d8ac
.L_2d8a4:
	.4byte	gSpriteAiCollisionFlags
.L_2d8a8:
	bl	func_8026374
.L_2d8ac:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_802D8B4
func_802D8B4:
	ldr	r0, .L_2d8cc
	ldr	r1, .L_2d8d0
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #20
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #52	@ 0x34
	strb	r1, [r0, #0]
	bx	lr
.L_2d8cc:
	.4byte	gCurrentSprite
.L_2d8d0:
	.4byte	sUnk_83B8170


thumb_func_start func_802D8D4
func_802D8D4:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r4, .L_2d910
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #30
	bne	.L_2d92a
	mov	r0, #5
	strb	r0, [r4, #30]
	ldrh	r1, [r4, #0]
	mov	r6, #64	@ 0x40
	add	r0, r6, #0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L_2d914
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #32
	ldrh	r0, [r4, #10]
	add	r0, #64	@ 0x40
	str	r0, [sp, #0]
	str	r6, [sp, #4]
	mov	r0, #147	@ 0x93
	bl	func_801E3A8
	b	.L_2d92a
.L_2d910:
	.4byte	gCurrentSprite
.L_2d914:
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #32
	ldrh	r0, [r4, #10]
	sub	r0, #63	@ 0x3f
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #147	@ 0x93
	bl	func_801E3A8
.L_2d92a:
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_2d944
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_2d94c
	ldr	r1, .L_2d948
	mov	r0, #29
	strb	r0, [r1, #28]
	b	.L_2d970
	.align	2, 0
.L_2d944:
	.4byte	gSpriteAiCollisionResult
.L_2d948:
	.4byte	gCurrentSprite
.L_2d94c:
	ldr	r2, .L_2d978
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_2d970
	mov	r0, #48	@ 0x30
	strb	r0, [r2, #28]
	mov	r0, #80	@ 0x50
	strb	r0, [r3, #0]
	ldr	r0, .L_2d97c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
.L_2d970:
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_2d978:
	.4byte	gCurrentSprite
.L_2d97c:
	.4byte	sUnk_83B81C8


thumb_func_start func_802D980
func_802D980:
	ldr	r1, .L_2d9a0
	ldr	r0, .L_2d9a4
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #18
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #22
	strb	r0, [r2, #0]
	mov	r0, #1
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_2d9a0:
	.4byte	gCurrentSprite
.L_2d9a4:
	.4byte	sUnk_83B8298


thumb_func_start func_802D9A8
func_802D9A8:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_2d9c4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_2d9cc
	ldr	r1, .L_2d9c8
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_2d9f8
	.align	2, 0
.L_2d9c4:
	.4byte	gSpriteAiCollisionResult
.L_2d9c8:
	.4byte	gCurrentSprite
.L_2d9cc:
	ldr	r2, .L_2d9fc
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_2d9f8
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	mov	r0, #1
	strb	r0, [r2, #30]
	ldr	r0, .L_2da00
	str	r0, [r2, #4]
	mov	r0, #16
	strb	r0, [r2, #28]
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
.L_2d9f8:
	pop	{r0}
	bx	r0
.L_2d9fc:
	.4byte	gCurrentSprite
.L_2da00:
	.4byte	sUnk_83B8118


thumb_func_start func_802DA04
func_802DA04:
	ldr	r0, .L_2da1c
	ldr	r1, .L_2da20
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #24
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #15
	strb	r1, [r0, #0]
	bx	lr
.L_2da1c:
	.4byte	gCurrentSprite
.L_2da20:
	.4byte	sUnk_83B8248


thumb_func_start func_802DA24
func_802DA24:
	ldr	r0, .L_2da40
	ldr	r1, .L_2da44
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #62	@ 0x3e
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_2da40:
	.4byte	gCurrentSprite
.L_2da44:
	.4byte	sUnk_83B81E0


thumb_func_start func_802DA48
func_802DA48:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r4, .L_2da84
	add	r5, r4, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	cmp	r0, #15
	bne	.L_2da6c
	mov	r0, #1
	strb	r0, [r4, #30]
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #146	@ 0x92
	bl	SpriteSpawnAsChild
.L_2da6c:
	bl	func_80238E8
	bl	func_8023B88
	ldr	r0, .L_2da88
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_2da8c
	mov	r0, #29
	strb	r0, [r4, #28]
	b	.L_2daa4
	.align	2, 0
.L_2da84:
	.4byte	gCurrentSprite
.L_2da88:
	.4byte	gSpriteAiCollisionResult
.L_2da8c:
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_2daa4
	mov	r0, #17
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	mov	r0, #100	@ 0x64
	strb	r0, [r1, #0]
.L_2daa4:
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_802DAAC
func_802DAAC:
	ldr	r0, .L_2dac4
	ldr	r1, .L_2dac8
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
.L_2dac4:
	.4byte	gCurrentSprite
.L_2dac8:
	.4byte	sUnk_83B82B8


thumb_func_start func_802DACC
func_802DACC:
	ldr	r1, .L_2daec
	ldr	r0, .L_2daf0
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
.L_2daec:
	.4byte	gCurrentSprite
.L_2daf0:
	.4byte	sUnk_83B81C8


thumb_func_start func_802DAF4
func_802DAF4:
	push	{r4, r5, lr}
	ldr	r5, .L_2db38
	ldr	r0, .L_2db3c
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
	ldr	r0, .L_2db40
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_2db38:
	.4byte	gCurrentSprite
.L_2db3c:
	.4byte	sUnk_83B82F0
.L_2db40:
	.4byte	0xFEFF


thumb_func_start func_802DB44
func_802DB44:
	push	{lr}
	ldr	r1, .L_2db54
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_802DAF4
	pop	{r0}
	bx	r0
.L_2db54:
	.4byte	gCurrentSprite


thumb_func_start func_802DB58
func_802DB58:
	push	{lr}
	ldr	r1, .L_2db68
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_802DAF4
	pop	{r0}
	bx	r0
.L_2db68:
	.4byte	gCurrentSprite


thumb_func_start func_802DB6C
func_802DB6C:
	push	{lr}
	ldr	r2, .L_2dba0
	ldr	r0, .L_2dba4
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
.L_2dba0:
	.4byte	gCurrentSprite
.L_2dba4:
	.4byte	sUnk_83B82F0


thumb_func_start func_802DBA8
func_802DBA8:
	push	{lr}
	ldr	r1, .L_2dbb8
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_802DB6C
	pop	{r0}
	bx	r0
.L_2dbb8:
	.4byte	gCurrentSprite


thumb_func_start func_802DBBC
func_802DBBC:
	push	{lr}
	ldr	r1, .L_2dbcc
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_802DB6C
	pop	{r0}
	bx	r0
.L_2dbcc:
	.4byte	gCurrentSprite


thumb_func_start func_802DBD0
func_802DBD0:
	ldr	r2, .L_2dbf8
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
.L_2dbf8:
	.4byte	gCurrentSprite


thumb_func_start func_802DBFC
func_802DBFC:
	push	{lr}
	ldr	r2, .L_2dc10
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2dc18
	ldr	r0, .L_2dc14
	b	.L_2dc1a
	.align	2, 0
.L_2dc10:
	.4byte	gCurrentSprite
.L_2dc14:
	.4byte	sUnk_83B8150
.L_2dc18:
	ldr	r0, .L_2dc28
.L_2dc1a:
	str	r0, [r2, #4]
	mov	r0, #36	@ 0x24
	strb	r0, [r2, #28]
	bl	func_802DBD0
	pop	{r0}
	bx	r0
.L_2dc28:
	.4byte	sUnk_83B8160


thumb_func_start func_802DC2C
func_802DC2C:
	push	{lr}
	ldr	r2, .L_2dc40
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2dc48
	ldr	r0, .L_2dc44
	b	.L_2dc4a
	.align	2, 0
.L_2dc40:
	.4byte	gCurrentSprite
.L_2dc44:
	.4byte	sUnk_83B8160
.L_2dc48:
	ldr	r0, .L_2dc58
.L_2dc4a:
	str	r0, [r2, #4]
	mov	r0, #38	@ 0x26
	strb	r0, [r2, #28]
	bl	func_802DBD0
	pop	{r0}
	bx	r0
.L_2dc58:
	.4byte	sUnk_83B8150


thumb_func_start func_802DC5C
func_802DC5C:
	ldr	r1, .L_2dc78
	ldr	r0, .L_2dc7c
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
.L_2dc78:
	.4byte	gCurrentSprite
.L_2dc7c:
	.4byte	sUnk_83B81C8


thumb_func_start func_802DC80
func_802DC80:
	push	{lr}
	ldr	r1, .L_2dc90
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_802DC5C
	pop	{r0}
	bx	r0
.L_2dc90:
	.4byte	gCurrentSprite


thumb_func_start func_802DC94
func_802DC94:
	push	{lr}
	ldr	r1, .L_2dca4
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_802DC5C
	pop	{r0}
	bx	r0
.L_2dca4:
	.4byte	gCurrentSprite


thumb_func_start func_802DCA8
func_802DCA8:
	push	{r4, lr}
	sub	sp, #8
	ldr	r4, .L_2dcd0
	ldr	r1, .L_2dcd4
	ldrh	r0, [r4, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bcs	.L_2dcd8
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #32
	str	r0, [sp, #0]
	mov	r0, #64	@ 0x40
	str	r0, [sp, #4]
	mov	r0, #147	@ 0x93
	bl	func_801E3A8
	b	.L_2dcee
	.align	2, 0
.L_2dcd0:
	.4byte	gCurrentSprite
.L_2dcd4:
	.4byte	gWarioData
.L_2dcd8:
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #32
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #0
	str	r0, [sp, #4]
	mov	r0, #147	@ 0x93
	bl	func_801E3A8
.L_2dcee:
	ldr	r2, .L_2dd20
	ldr	r0, .L_2dd24
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #21
	strb	r0, [r3, #0]
	strb	r1, [r2, #26]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_2dd28
	and	r0, r1
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	ldrb	r0, [r2, #28]
	cmp	r0, #49	@ 0x31
	bne	.L_2dd2c
	mov	r0, #50	@ 0x32
	b	.L_2dd2e
.L_2dd20:
	.4byte	gCurrentSprite
.L_2dd24:
	.4byte	sUnk_83B8854
.L_2dd28:
	.4byte	0xFEFF
.L_2dd2c:
	mov	r0, #109	@ 0x6d
.L_2dd2e:
	strb	r0, [r2, #28]
	add	sp, #8
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_802DD38
func_802DD38:
	push	{lr}
	bl	SpriteUtilDie
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_802DD44
func_802DD44:
	ldr	r2, .L_2dd74
	ldr	r0, .L_2dd78
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
	beq	.L_2dd70
	mov	r0, #5
	strb	r0, [r2, #30]
.L_2dd70:
	bx	lr
	.align	2, 0
.L_2dd74:
	.4byte	gCurrentSprite
.L_2dd78:
	.4byte	sUnk_83B81C8


thumb_func_start func_802DD7C
func_802DD7C:
	push	{lr}
	ldr	r1, .L_2dd8c
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_802DD44
	pop	{r0}
	bx	r0
.L_2dd8c:
	.4byte	gCurrentSprite


thumb_func_start func_802DD90
func_802DD90:
	push	{lr}
	ldr	r1, .L_2dda0
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_802DD44
	pop	{r0}
	bx	r0
.L_2dda0:
	.4byte	gCurrentSprite


thumb_func_start func_802DDA4
func_802DDA4:
	ldr	r2, .L_2ddc8
	ldr	r0, .L_2ddcc
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
.L_2ddc8:
	.4byte	gCurrentSprite
.L_2ddcc:
	.4byte	sUnk_83B81C8


thumb_func_start func_802DDD0
func_802DDD0:
	push	{lr}
	ldr	r1, .L_2dde0
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_802DDA4
	pop	{r0}
	bx	r0
.L_2dde0:
	.4byte	gCurrentSprite


thumb_func_start func_802DDE4
func_802DDE4:
	push	{lr}
	ldr	r1, .L_2ddf4
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_802DDA4
	pop	{r0}
	bx	r0
.L_2ddf4:
	.4byte	gCurrentSprite


thumb_func_start func_802DDF8
func_802DDF8:
	ldr	r2, .L_2de20
	ldr	r0, .L_2de24
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
.L_2de20:
	.4byte	gCurrentSprite
.L_2de24:
	.4byte	sUnk_83B8118


thumb_func_start func_802DE28
func_802DE28:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_2de64
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	beq	.L_2deae
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_2de68
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_2de6c
	mov	r0, #29
	strb	r0, [r4, #28]
	b	.L_2dec2
.L_2de64:
	.4byte	gCurrentSprite
.L_2de68:
	.4byte	gSpriteAiCollisionFlags
.L_2de6c:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_2de98
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_2de9c
	cmp	r1, r0
	bne	.L_2dea0
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_2dec2
	.align	2, 0
.L_2de98:
	.4byte	sUnk_8352B18
.L_2de9c:
	.4byte	0x7FFF
.L_2dea0:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_2dec2
.L_2deae:
	ldr	r0, .L_2dec8
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	mov	r1, #0
	strh	r2, [r4, #20]
	mov	r0, #77	@ 0x4d
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
.L_2dec2:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_2dec8:
	.4byte	sUnk_83B82B8


thumb_func_start func_802DECC
func_802DECC:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_2df08
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r2, r0, #0
	ldr	r0, .L_2df0c
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_2deee
	ldrh	r1, [r4, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #4
	add	r0, r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_2deee:
	ldr	r0, .L_2df10
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_2df14
	strh	r2, [r4, #8]
	mov	r0, #17
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	mov	r0, #7
	strb	r0, [r1, #0]
	b	.L_2df50
	.align	2, 0
.L_2df08:
	.4byte	gCurrentSprite
.L_2df0c:
	.4byte	gUnk_30000A0
.L_2df10:
	.4byte	gSpriteAiCollisionResult
.L_2df14:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_2df3c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_2df40
	cmp	r1, r0
	bne	.L_2df44
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_2df4e
.L_2df3c:
	.4byte	sUnk_8352A28
.L_2df40:
	.4byte	0x7FFF
.L_2df44:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_2df4e:
	strh	r0, [r4, #8]
.L_2df50:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_802DF58
func_802DF58:
	ldr	r1, .L_2df68
	ldr	r0, .L_2df6c
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	bx	lr
.L_2df68:
	.4byte	gCurrentSprite
.L_2df6c:
	.4byte	sUnk_83B81C8


thumb_func_start func_802DF70
func_802DF70:
	push	{lr}
	ldr	r1, .L_2df80
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_802DF58
	pop	{r0}
	bx	r0
.L_2df80:
	.4byte	gCurrentSprite


thumb_func_start func_802DF84
func_802DF84:
	push	{lr}
	ldr	r1, .L_2df94
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_802DF58
	pop	{r0}
	bx	r0
.L_2df94:
	.4byte	gCurrentSprite


thumb_func_start func_802DF98
func_802DF98:
	ldr	r1, .L_2dfac
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r0, .L_2dfb0
	str	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #20]
	strb	r0, [r1, #22]
	bx	lr
.L_2dfac:
	.4byte	gCurrentSprite
.L_2dfb0:
	.4byte	sUnk_83B81C8


thumb_func_start func_802DFB4
func_802DFB4:
	push	{lr}
	ldr	r1, .L_2dfc4
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	bl	func_802DF98
	pop	{r0}
	bx	r0
.L_2dfc4:
	.4byte	gCurrentSprite


thumb_func_start func_802DFC8
func_802DFC8:
	push	{lr}
	ldr	r1, .L_2dfd8
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	bl	func_802DF98
	pop	{r0}
	bx	r0
.L_2dfd8:
	.4byte	gCurrentSprite


thumb_func_start func_802DFDC
func_802DFDC:
	ldr	r1, .L_2dfec
	ldr	r0, .L_2dff0
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	bx	lr
.L_2dfec:
	.4byte	gCurrentSprite
.L_2dff0:
	.4byte	sUnk_83B82F0


thumb_func_start func_802DFF4
func_802DFF4:
	push	{r4, lr}
	ldr	r0, .L_2e050
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_2e054
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	add	r1, #32
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r3, [r0, #0]
	add	r0, #1
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r1, #3
	mov	r0, #120	@ 0x78
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #208	@ 0xd0
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #20
	strb	r0, [r1, #0]
	mov	r0, #14
	mov	r1, ip
	strb	r0, [r1, #30]
	ldr	r0, .L_2e058
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	strb	r2, [r1, #28]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_2e050:
	.4byte	gCurrentSprite
.L_2e054:
	.4byte	0xFFFB
.L_2e058:
	.4byte	sUnk_83B8734


thumb_func_start func_802E05C
func_802E05C:
	ldr	r1, .L_2e070
	ldr	r0, .L_2e074
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_2e070:
	.4byte	gCurrentSprite
.L_2e074:
	.4byte	sUnk_83B8734


thumb_func_start func_802E078
func_802E078:
	ldr	r2, .L_2e094
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrb	r0, [r0, #28]
	sub	r0, #19
	cmp	r0, #19
	bhi	.L_2e114
	lsl	r0, r0, #2
	ldr	r1, .L_2e098
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_2e094:
	.4byte	gSpriteData
.L_2e098:
	.4byte	.L_2e09c
.L_2e09c:
	.4byte	.L_2e104
	.4byte	.L_2e104
	.4byte	.L_2e114
	.4byte	.L_2e114
	.4byte	.L_2e114
	.4byte	.L_2e114
	.4byte	.L_2e114
	.4byte	.L_2e114
	.4byte	.L_2e114
	.4byte	.L_2e114
	.4byte	.L_2e114
	.4byte	.L_2e114
	.4byte	.L_2e114
	.4byte	.L_2e114
	.4byte	.L_2e114
	.4byte	.L_2e114
	.4byte	.L_2e0ec
	.4byte	.L_2e0ec
	.4byte	.L_2e0f8
	.4byte	.L_2e0f8
.L_2e0ec:
	ldr	r1, .L_2e0f4
	mov	r0, #35	@ 0x23
	strb	r0, [r1, #28]
	b	.L_2e114
.L_2e0f4:
	.4byte	gCurrentSprite
.L_2e0f8:
	ldr	r1, .L_2e100
	mov	r0, #37	@ 0x25
	strb	r0, [r1, #28]
	b	.L_2e114
.L_2e100:
	.4byte	gCurrentSprite
.L_2e104:
	ldr	r1, .L_2e118
	mov	r2, #0
	mov	r0, #20
	strb	r0, [r1, #28]
	ldr	r0, .L_2e11c
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r2, [r1, #20]
.L_2e114:
	bx	lr
	.align	2, 0
.L_2e118:
	.4byte	gCurrentSprite
.L_2e11c:
	.4byte	sUnk_83B879C


thumb_func_start func_802E120
func_802E120:
	ldr	r2, .L_2e138
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrb	r0, [r0, #28]
	cmp	r0, #35	@ 0x23
	blt	.L_2e14a
	cmp	r0, #36	@ 0x24
	bgt	.L_2e140
	ldr	r1, .L_2e13c
	mov	r0, #35	@ 0x23
	b	.L_2e148
.L_2e138:
	.4byte	gSpriteData
.L_2e13c:
	.4byte	gCurrentSprite
.L_2e140:
	cmp	r0, #38	@ 0x26
	bgt	.L_2e14a
	ldr	r1, .L_2e14c
	mov	r0, #37	@ 0x25
.L_2e148:
	strb	r0, [r1, #28]
.L_2e14a:
	bx	lr
.L_2e14c:
	.4byte	gCurrentSprite


thumb_func_start func_802E150
func_802E150:
	ldr	r3, .L_2e174
	mov	r1, #0
	strb	r1, [r3, #22]
	strh	r1, [r3, #20]
	mov	r1, #36	@ 0x24
	strb	r1, [r3, #28]
	ldr	r2, .L_2e178
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2e180
	ldr	r0, .L_2e17c
	b	.L_2e182
	.align	2, 0
.L_2e174:
	.4byte	gCurrentSprite
.L_2e178:
	.4byte	gSpriteData
.L_2e17c:
	.4byte	sUnk_83B876C
.L_2e180:
	ldr	r0, .L_2e188
.L_2e182:
	str	r0, [r3, #4]
	bx	lr
	.align	2, 0
.L_2e188:
	.4byte	sUnk_83B8784


thumb_func_start func_802E18C
func_802E18C:
	ldr	r2, .L_2e1a4
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrb	r0, [r0, #28]
	cmp	r0, #17
	blt	.L_2e1ba
	cmp	r0, #18
	bgt	.L_2e1ac
	ldr	r1, .L_2e1a8
	mov	r0, #15
	b	.L_2e1b8
.L_2e1a4:
	.4byte	gSpriteData
.L_2e1a8:
	.4byte	gCurrentSprite
.L_2e1ac:
	cmp	r0, #38	@ 0x26
	bgt	.L_2e1ba
	cmp	r0, #37	@ 0x25
	blt	.L_2e1ba
	ldr	r1, .L_2e1bc
	mov	r0, #37	@ 0x25
.L_2e1b8:
	strb	r0, [r1, #28]
.L_2e1ba:
	bx	lr
.L_2e1bc:
	.4byte	gCurrentSprite


thumb_func_start func_802E1C0
func_802E1C0:
	ldr	r3, .L_2e1e4
	mov	r1, #0
	strb	r1, [r3, #22]
	strh	r1, [r3, #20]
	mov	r1, #38	@ 0x26
	strb	r1, [r3, #28]
	ldr	r2, .L_2e1e8
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r1, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2e1f0
	ldr	r0, .L_2e1ec
	b	.L_2e1f2
	.align	2, 0
.L_2e1e4:
	.4byte	gCurrentSprite
.L_2e1e8:
	.4byte	gSpriteData
.L_2e1ec:
	.4byte	sUnk_83B8784
.L_2e1f0:
	ldr	r0, .L_2e1f8
.L_2e1f2:
	str	r0, [r3, #4]
	bx	lr
	.align	2, 0
.L_2e1f8:
	.4byte	sUnk_83B876C


thumb_func_start func_802E1FC
func_802E1FC:
	ldr	r2, .L_2e214
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrb	r0, [r0, #28]
	cmp	r0, #17
	blt	.L_2e22a
	cmp	r0, #18
	bgt	.L_2e21c
	ldr	r1, .L_2e218
	mov	r0, #15
	b	.L_2e228
.L_2e214:
	.4byte	gSpriteData
.L_2e218:
	.4byte	gCurrentSprite
.L_2e21c:
	cmp	r0, #36	@ 0x24
	bgt	.L_2e22a
	cmp	r0, #35	@ 0x23
	blt	.L_2e22a
	ldr	r1, .L_2e22c
	mov	r0, #35	@ 0x23
.L_2e228:
	strb	r0, [r1, #28]
.L_2e22a:
	bx	lr
.L_2e22c:
	.4byte	gCurrentSprite


thumb_func_start func_802E230
func_802E230:
	push	{r4, lr}
	ldr	r0, .L_2e2a0
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_2e2a4
	and	r0, r1
	mov	r4, ip
	strh	r0, [r4, #0]
	mov	r1, ip
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
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #24
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #38	@ 0x26
	mov	r1, #20
	strb	r1, [r0, #0]
	mov	r0, #14
	strb	r0, [r4, #30]
	ldr	r0, .L_2e2a8
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	mov	r0, #28
	strb	r0, [r4, #28]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	strb	r2, [r4, #26]
	mov	r0, #84	@ 0x54
	bl	m4aSongNumStart
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_2e2a0:
	.4byte	gCurrentSprite
.L_2e2a4:
	.4byte	0xFFFB
.L_2e2a8:
	.4byte	sUnk_83B8884


thumb_func_start func_802E2AC
func_802E2AC:
	ldr	r2, .L_2e2dc
	ldr	r0, .L_2e2e0
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #100	@ 0x64
	strb	r0, [r1, #0]
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2e2e4
	add	r1, r2, #0
	add	r1, #38	@ 0x26
	mov	r0, #28
	b	.L_2e2ea
.L_2e2dc:
	.4byte	gCurrentSprite
.L_2e2e0:
	.4byte	sUnk_83B87C4
.L_2e2e4:
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #32
.L_2e2ea:
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0


thumb_func_start func_802E2F0
func_802E2F0:
	ldr	r2, .L_2e31c
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	add	r3, r2, #0
	cmp	r0, #0
	beq	.L_2e398
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2e330
	ldrh	r0, [r2, #20]
	cmp	r0, #4
	bls	.L_2e320
	add	r0, r2, #0
	add	r0, #38	@ 0x26
	mov	r1, #56	@ 0x38
	strb	r1, [r0, #0]
	sub	r0, #3
	strb	r1, [r0, #0]
	b	.L_2e350
.L_2e31c:
	.4byte	gCurrentSprite
.L_2e320:
	cmp	r0, #7
	bls	.L_2e350
	add	r1, r2, #0
	add	r1, #38	@ 0x26
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #0]
	sub	r1, #3
	b	.L_2e34c
.L_2e330:
	ldrh	r0, [r2, #20]
	cmp	r0, #4
	bls	.L_2e33e
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #60	@ 0x3c
	b	.L_2e348
.L_2e33e:
	cmp	r0, #7
	bls	.L_2e350
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #92	@ 0x5c
.L_2e348:
	strb	r0, [r1, #0]
	sub	r1, #2
.L_2e34c:
	mov	r0, #56	@ 0x38
	strb	r0, [r1, #0]
.L_2e350:
	add	r2, r3, #0
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_2e3ac
	ldr	r0, .L_2e38c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #56	@ 0x38
	strb	r0, [r1, #0]
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_2e390
	ldrh	r0, [r2, #10]
	add	r0, #44	@ 0x2c
	strh	r0, [r2, #10]
	b	.L_2e3ac
.L_2e38c:
	.4byte	sUnk_83B882C
.L_2e390:
	ldrh	r0, [r3, #10]
	sub	r0, #44	@ 0x2c
	strh	r0, [r3, #10]
	b	.L_2e3ac
.L_2e398:
	add	r3, r2, #0
	add	r3, #40	@ 0x28
	ldrb	r0, [r3, #0]
	add	r1, r0, #0
	cmp	r1, #0
	beq	.L_2e3aa
	sub	r0, #1
	strb	r0, [r3, #0]
	b	.L_2e3ac
.L_2e3aa:
	strh	r1, [r2, #0]
.L_2e3ac:
	bx	lr
	.align	2, 0


thumb_func_start SpriteKaentsubo
SpriteKaentsubo:
	push	{lr}
	ldr	r2, .L_2e3d8
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_2e3c4
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_2e3c4:
	ldrb	r0, [r2, #28]
	cmp	r0, #109	@ 0x6d
	bls	.L_2e3cc
	b	.L_2e72c
.L_2e3cc:
	lsl	r0, r0, #2
	ldr	r1, .L_2e3dc
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_2e3d8:
	.4byte	gCurrentSprite
.L_2e3dc:
	.4byte	.L_2e3e0
.L_2e3e0:
	.4byte	.L_2e598
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e59e
	.4byte	.L_2e5a2
	.4byte	.L_2e5a8
	.4byte	.L_2e5ac
	.4byte	.L_2e5b2
	.4byte	.L_2e5b6
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e5bc
	.4byte	.L_2e5c0
	.4byte	.L_2e5c6
	.4byte	.L_2e5ca
	.4byte	.L_2e5d0
	.4byte	.L_2e5d4
	.4byte	.L_2e5da
	.4byte	.L_2e5de
	.4byte	.L_2e5e4
	.4byte	.L_2e5e8
	.4byte	.L_2e5ee
	.4byte	.L_2e5f2
	.4byte	.L_2e5f8
	.4byte	.L_2e5fc
	.4byte	.L_2e602
	.4byte	.L_2e606
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e60c
	.4byte	.L_2e610
	.4byte	.L_2e616
	.4byte	.L_2e61a
	.4byte	.L_2e620
	.4byte	.L_2e624
	.4byte	.L_2e72c
	.4byte	.L_2e62a
	.4byte	.L_2e630
	.4byte	.L_2e634
	.4byte	.L_2e63a
	.4byte	.L_2e63e
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e72c
	.4byte	.L_2e644
	.4byte	.L_2e654
	.4byte	.L_2e64a
	.4byte	.L_2e65e
	.4byte	.L_2e650
	.4byte	.L_2e654
	.4byte	.L_2e65a
	.4byte	.L_2e65e
	.4byte	.L_2e664
	.4byte	.L_2e668
	.4byte	.L_2e66e
	.4byte	.L_2e72c
	.4byte	.L_2e5e4
	.4byte	.L_2e5ee
	.4byte	.L_2e674
	.4byte	.L_2e67a
	.4byte	.L_2e680
	.4byte	.L_2e686
	.4byte	.L_2e698
	.4byte	.L_2e69e
	.4byte	.L_2e68c
	.4byte	.L_2e692
	.4byte	.L_2e6a4
	.4byte	.L_2e6ae
	.4byte	.L_2e6e2
	.4byte	.L_2e6ea
	.4byte	.L_2e6b8
	.4byte	.L_2e6c0
	.4byte	.L_2e6f0
	.4byte	.L_2e6f8
	.4byte	.L_2e6c6
	.4byte	.L_2e6ce
	.4byte	.L_2e6fe
	.4byte	.L_2e706
	.4byte	.L_2e6d4
	.4byte	.L_2e6dc
	.4byte	.L_2e70c
	.4byte	.L_2e714
	.4byte	.L_2e71a
	.4byte	.L_2e720
	.4byte	.L_2e726
	.4byte	.L_2e72c
	.4byte	.L_2e62a
.L_2e598:
	bl	func_802D6D0
	b	.L_2e734
.L_2e59e:
	bl	func_802D738
.L_2e5a2:
	bl	func_802D75C
	b	.L_2e734
.L_2e5a8:
	bl	func_802D980
.L_2e5ac:
	bl	func_802D9A8
	b	.L_2e734
.L_2e5b2:
	bl	func_802D8B4
.L_2e5b6:
	bl	func_802D8D4
	b	.L_2e734
.L_2e5bc:
	bl	func_802DA04
.L_2e5c0:
	bl	func_8023C94
	b	.L_2e734
.L_2e5c6:
	bl	func_802DA24
.L_2e5ca:
	bl	func_802DA48
	b	.L_2e734
.L_2e5d0:
	bl	func_802DAAC
.L_2e5d4:
	bl	func_8023D48
	b	.L_2e734
.L_2e5da:
	bl	func_802DACC
.L_2e5de:
	bl	func_8023FA8
	b	.L_2e734
.L_2e5e4:
	bl	func_802DB44
.L_2e5e8:
	bl	SpriteUtilFallOffscreenRight
	b	.L_2e734
.L_2e5ee:
	bl	func_802DB58
.L_2e5f2:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_2e734
.L_2e5f8:
	bl	func_802DBFC
.L_2e5fc:
	bl	SpriteUtilPushedRight
	b	.L_2e734
.L_2e602:
	bl	func_802DC2C
.L_2e606:
	bl	SpriteUtilPushedLeft
	b	.L_2e734
.L_2e60c:
	bl	func_802DC80
.L_2e610:
	bl	func_8024478
	b	.L_2e734
.L_2e616:
	bl	func_802DC94
.L_2e61a:
	bl	func_802449C
	b	.L_2e734
.L_2e620:
	bl	func_80244C0
.L_2e624:
	bl	func_80244E0
	b	.L_2e734
.L_2e62a:
	bl	SpriteUtilDieAfterDelay
	b	.L_2e734
.L_2e630:
	bl	func_802DD7C
.L_2e634:
	bl	func_8024988
	b	.L_2e734
.L_2e63a:
	bl	func_802DD90
.L_2e63e:
	bl	func_802476C
	b	.L_2e734
.L_2e644:
	bl	func_8024AC0
	b	.L_2e654
.L_2e64a:
	bl	func_8024BEC
	b	.L_2e65e
.L_2e650:
	bl	func_802DDD0
.L_2e654:
	bl	func_8024AD4
	b	.L_2e734
.L_2e65a:
	bl	func_802DDE4
.L_2e65e:
	bl	func_8024C00
	b	.L_2e734
.L_2e664:
	bl	func_802DDF8
.L_2e668:
	bl	func_802DE28
	b	.L_2e734
.L_2e66e:
	bl	func_802DECC
	b	.L_2e734
.L_2e674:
	bl	func_802DF70
	b	.L_2e734
.L_2e67a:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_2e734
.L_2e680:
	bl	func_802DF84
	b	.L_2e734
.L_2e686:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_2e734
.L_2e68c:
	bl	func_802DFB4
	b	.L_2e734
.L_2e692:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_2e734
.L_2e698:
	bl	func_802DFC8
	b	.L_2e734
.L_2e69e:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_2e734
.L_2e6a4:
	bl	func_802DFDC
	ldr	r1, .L_2e6b4
	mov	r0, #90	@ 0x5a
	strb	r0, [r1, #28]
.L_2e6ae:
	bl	SpriteUtilThrownLeftSoft
	b	.L_2e734
.L_2e6b4:
	.4byte	gCurrentSprite
.L_2e6b8:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
	bl	func_802DFDC
.L_2e6c0:
	bl	SpriteUtilThrownLeftHard
	b	.L_2e734
.L_2e6c6:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
	bl	func_802DFDC
.L_2e6ce:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_2e734
.L_2e6d4:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
	bl	func_802DFDC
.L_2e6dc:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_2e734
.L_2e6e2:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
	bl	func_802DFDC
.L_2e6ea:
	bl	SpriteUtilThrownRightSoft
	b	.L_2e734
.L_2e6f0:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
	bl	func_802DFDC
.L_2e6f8:
	bl	SpriteUtilThrownRightHard
	b	.L_2e734
.L_2e6fe:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
	bl	func_802DFDC
.L_2e706:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_2e734
.L_2e70c:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
	bl	func_802DFDC
.L_2e714:
	bl	SpriteUtilThrownUpRightHard
	b	.L_2e734
.L_2e71a:
	bl	func_802DBBC
	b	.L_2e734
.L_2e720:
	bl	func_802DBA8
	b	.L_2e734
.L_2e726:
	bl	func_802DD38
	b	.L_2e734
.L_2e72c:
	bl	func_802DCA8
	bl	SpriteUtilDieAfterDelay
.L_2e734:
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknown92
SpriteUnknown92:
	push	{r4, lr}
	mov	r0, #23
	bl	SpriteUtilFindParentSlot
	add	r4, r0, #0
	cmp	r4, #24
	beq	.L_2e754
	ldr	r1, .L_2e75c
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r2, r0, r1
	ldrb	r0, [r2, #30]
	cmp	r0, #5
	bne	.L_2e764
.L_2e754:
	ldr	r1, .L_2e760
	mov	r0, #0
	strh	r0, [r1, #0]
	b	.L_2e868
.L_2e75c:
	.4byte	gSpriteData
.L_2e760:
	.4byte	gCurrentSprite
.L_2e764:
	ldrb	r1, [r2, #29]
	cmp	r1, #0
	bne	.L_2e774
	ldr	r0, .L_2e770
	strh	r1, [r0, #0]
	b	.L_2e868
.L_2e770:
	.4byte	gCurrentSprite
.L_2e774:
	ldr	r0, .L_2e790
	ldrh	r1, [r2, #8]
	strh	r1, [r0, #8]
	ldrh	r1, [r2, #10]
	strh	r1, [r0, #10]
	ldrb	r0, [r0, #28]
	cmp	r0, #38	@ 0x26
	bhi	.L_2e868
	lsl	r0, r0, #2
	ldr	r1, .L_2e794
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_2e790:
	.4byte	gCurrentSprite
.L_2e794:
	.4byte	.L_2e798
.L_2e798:
	.4byte	.L_2e834
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e83a
	.4byte	.L_2e83e
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e846
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e868
	.4byte	.L_2e84e
	.4byte	.L_2e854
	.4byte	.L_2e85c
	.4byte	.L_2e862
.L_2e834:
	bl	func_802DFF4
	b	.L_2e868
.L_2e83a:
	bl	func_802E05C
.L_2e83e:
	add	r0, r4, #0
	bl	func_802E078
	b	.L_2e868
.L_2e846:
	add	r0, r4, #0
	bl	func_802E120
	b	.L_2e868
.L_2e84e:
	add	r0, r4, #0
	bl	func_802E150
.L_2e854:
	add	r0, r4, #0
	bl	func_802E18C
	b	.L_2e868
.L_2e85c:
	add	r0, r4, #0
	bl	func_802E1C0
.L_2e862:
	add	r0, r4, #0
	bl	func_802E1FC
.L_2e868:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknown93
SpriteUnknown93:
	push	{lr}
	ldr	r2, .L_2e894
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_2e884
	mov	r0, #0
	strh	r0, [r2, #0]
.L_2e884:
	ldrb	r1, [r2, #28]
	cmp	r1, #16
	beq	.L_2e8b4
	cmp	r1, #16
	bgt	.L_2e898
	cmp	r1, #0
	beq	.L_2e8a2
	b	.L_2e8b8
.L_2e894:
	.4byte	gCurrentSprite
.L_2e898:
	cmp	r1, #23
	beq	.L_2e8ae
	cmp	r1, #28
	beq	.L_2e8a8
	b	.L_2e8b8
.L_2e8a2:
	bl	func_802E230
	b	.L_2e8b8
.L_2e8a8:
	bl	func_8023D48
	b	.L_2e8b8
.L_2e8ae:
	bl	func_802E2AC
	b	.L_2e8b8
.L_2e8b4:
	bl	func_802E2F0
.L_2e8b8:
	pop	{r0}
	bx	r0
