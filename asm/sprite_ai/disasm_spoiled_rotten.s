.include "macros.s.inc"


thumb_func_start func_803AB4C
func_803AB4C:
	push	{r4, lr}
	ldr	r1, .L_3abcc
	mov	r0, #90	@ 0x5a
	strb	r0, [r1, #0]
	ldr	r4, .L_3abd0
	ldrb	r1, [r4, #26]
	mov	r0, #128	@ 0x80
	mov	r3, #0
	orr	r0, r1
	strb	r0, [r4, #26]
	ldrh	r1, [r4, #0]
	mov	r0, #40	@ 0x28
	mov	r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	add	r1, r4, #0
	add	r1, #32
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #184	@ 0xb8
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #68	@ 0x44
	strb	r0, [r1, #0]
	mov	r0, #41	@ 0x29
	strb	r0, [r4, #30]
	mov	r0, #10
	strb	r0, [r4, #29]
	mov	r0, #1
	strb	r0, [r4, #28]
	ldr	r0, .L_3abd4
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	bl	SpriteUtilTurnTowardWario
	bl	UpdateBossHealthGauge
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	mov	r0, #131	@ 0x83
	mov	r1, #8
	mov	r2, #1
	bl	LoadBossSpriteGraphics
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3abcc:
	.4byte	gUnk_3000A62
.L_3abd0:
	.4byte	gCurrentSprite
.L_3abd4:
	.4byte	sUnk_83C302C


thumb_func_start func_803ABD8
func_803ABD8:
	push	{r4, lr}
	ldr	r4, .L_3ac28
	mov	r0, #0
	strb	r0, [r4, #22]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_3abfa
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3ac20
	ldr	r1, .L_3ac2c
	mov	r0, #7
	strb	r0, [r1, #0]
.L_3abfa:
	ldr	r0, .L_3ac2c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_3ac20
	ldr	r0, .L_3ac30
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_3ac1c
	ldr	r1, .L_3ac34
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3ac20
	bl	SpriteUtilStartBossTimer
.L_3ac1c:
	mov	r0, #2
	strb	r0, [r4, #28]
.L_3ac20:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3ac28:
	.4byte	gCurrentSprite
.L_3ac2c:
	.4byte	gColorFadingState
.L_3ac30:
	.4byte	gCurrentShopItem
.L_3ac34:
	.4byte	gUnk_3000A62


thumb_func_start func_803AC38
func_803AC38:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #4
	ldr	r7, .L_3ad14
	mov	r0, #0
	strb	r0, [r7, #22]
	ldr	r0, .L_3ad18
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_3ad0a
	ldr	r0, .L_3ad1c
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_3ad0a
	ldrb	r1, [r7, #26]
	mov	r0, #127	@ 0x7f
	and	r0, r1
	strb	r0, [r7, #26]
	mov	r0, #15
	strb	r0, [r7, #28]
	ldrh	r3, [r7, #8]
	ldr	r6, .L_3ad20
	add	r3, r3, r6
	ldrh	r0, [r7, #10]
	add	r0, #144	@ 0x90
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r7, #8]
	ldr	r4, .L_3ad24
	add	r3, r3, r4
	ldrh	r0, [r7, #10]
	add	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r7, #8]
	ldr	r5, .L_3ad28
	add	r3, r3, r5
	ldrh	r0, [r7, #10]
	add	r0, #112	@ 0x70
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r7, #8]
	add	r3, r3, r4
	ldrh	r0, [r7, #10]
	add	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #169	@ 0xa9
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r7, #8]
	add	r3, r3, r6
	ldrh	r0, [r7, #10]
	sub	r0, #144	@ 0x90
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r7, #8]
	add	r3, r3, r4
	ldrh	r0, [r7, #10]
	sub	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r7, #8]
	add	r3, r3, r5
	ldrh	r0, [r7, #10]
	sub	r0, #112	@ 0x70
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r7, #8]
	add	r3, r3, r4
	ldrh	r0, [r7, #10]
	sub	r0, #128	@ 0x80
	str	r0, [sp, #0]
	mov	r0, #169	@ 0xa9
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	mov	r0, #157	@ 0x9d
	bl	m4aSongNumStart
.L_3ad0a:
	add	sp, #4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3ad14:
	.4byte	gCurrentSprite
.L_3ad18:
	.4byte	gWarioPauseTimer
.L_3ad1c:
	.4byte	gTimerState
.L_3ad20:
	.4byte	0xFFFFFEF0
.L_3ad24:
	.4byte	0xFFFFFF00
.L_3ad28:
	.4byte	0xFFFFFEE0


thumb_func_start func_803AD2C
func_803AD2C:
	ldr	r1, .L_3ad50
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	ldrb	r0, [r1, #30]
	add	r2, r1, #0
	cmp	r0, #42	@ 0x2a
	bne	.L_3adb8
	ldrb	r0, [r1, #29]
	cmp	r0, #9
	bhi	.L_3adb0
	lsl	r0, r0, #2
	ldr	r1, .L_3ad54
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_3ad50:
	.4byte	gCurrentSprite
.L_3ad54:
	.4byte	.L_3ad58
.L_3ad58:
	.4byte	.L_3ad80
	.4byte	.L_3ad80
	.4byte	.L_3ad80
	.4byte	.L_3ad80
	.4byte	.L_3ad8c
	.4byte	.L_3ad8c
	.4byte	.L_3ad98
	.4byte	.L_3ad98
	.4byte	.L_3ada4
	.4byte	.L_3ada4
.L_3ad80:
	ldr	r0, .L_3ad88
	str	r0, [r2, #4]
	b	.L_3ae28
	.align	2, 0
.L_3ad88:
	.4byte	sUnk_83C2FAC
.L_3ad8c:
	ldr	r0, .L_3ad94
	str	r0, [r2, #4]
	b	.L_3ae28
	.align	2, 0
.L_3ad94:
	.4byte	sUnk_83C2ED4
.L_3ad98:
	ldr	r0, .L_3ada0
	str	r0, [r2, #4]
	b	.L_3ae28
	.align	2, 0
.L_3ada0:
	.4byte	sUnk_83C2DFC
.L_3ada4:
	ldr	r0, .L_3adac
	str	r0, [r2, #4]
	b	.L_3ae28
	.align	2, 0
.L_3adac:
	.4byte	sUnk_83C2D24
.L_3adb0:
	ldr	r0, .L_3adb4
	b	.L_3ae26
.L_3adb4:
	.4byte	sUnk_83C2C4C
.L_3adb8:
	ldrb	r0, [r1, #29]
	cmp	r0, #9
	bhi	.L_3ae24
	lsl	r0, r0, #2
	ldr	r1, .L_3adc8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_3adc8:
	.4byte	.L_3adcc
.L_3adcc:
	.4byte	.L_3adf4
	.4byte	.L_3adf4
	.4byte	.L_3adf4
	.4byte	.L_3adf4
	.4byte	.L_3ae00
	.4byte	.L_3ae00
	.4byte	.L_3ae0c
	.4byte	.L_3ae0c
	.4byte	.L_3ae18
	.4byte	.L_3ae18
.L_3adf4:
	ldr	r0, .L_3adfc
	str	r0, [r2, #4]
	b	.L_3ae28
	.align	2, 0
.L_3adfc:
	.4byte	sUnk_83C2F74
.L_3ae00:
	ldr	r0, .L_3ae08
	str	r0, [r2, #4]
	b	.L_3ae28
	.align	2, 0
.L_3ae08:
	.4byte	sUnk_83C2E9C
.L_3ae0c:
	ldr	r0, .L_3ae14
	str	r0, [r2, #4]
	b	.L_3ae28
	.align	2, 0
.L_3ae14:
	.4byte	sUnk_83C2DC4
.L_3ae18:
	ldr	r0, .L_3ae20
	str	r0, [r2, #4]
	b	.L_3ae28
	.align	2, 0
.L_3ae20:
	.4byte	sUnk_83C2CEC
.L_3ae24:
	ldr	r0, .L_3ae2c
.L_3ae26:
	str	r0, [r1, #4]
.L_3ae28:
	bx	lr
	.align	2, 0
.L_3ae2c:
	.4byte	sUnk_83C2C14


thumb_func_start func_803AE30
func_803AE30:
	push	{r4, r5, r6, r7, lr}
	bl	func_8023B88
	ldr	r4, .L_3aea4
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_3aeb6
	ldr	r0, .L_3aea8
	ldrb	r1, [r0, #0]
	mov	r5, #240	@ 0xf0
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_3ae92
	ldrh	r0, [r4, #8]
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r7, .L_3aeac
	ldrb	r1, [r7, #0]
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_3af06
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	add	r1, #160	@ 0xa0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r7, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_3af06
.L_3ae92:
	ldr	r0, .L_3aea4
	ldrb	r1, [r0, #30]
	add	r2, r0, #0
	cmp	r1, #42	@ 0x2a
	bne	.L_3aeb0
	ldrh	r0, [r2, #10]
	add	r0, #2
	b	.L_3af2c
	.align	2, 0
.L_3aea4:
	.4byte	gCurrentSprite
.L_3aea8:
	.4byte	gSpriteCollisionResult
.L_3aeac:
	.4byte	gSpriteCollisionTileType
.L_3aeb0:
	ldrh	r0, [r2, #10]
	add	r0, #1
	b	.L_3af2c
.L_3aeb6:
	ldr	r0, .L_3af0c
	ldrb	r1, [r0, #0]
	mov	r5, #240	@ 0xf0
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_3af14
	ldrh	r0, [r4, #8]
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r7, .L_3af10
	ldrb	r1, [r7, #0]
	add	r0, r5, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_3af06
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
	sub	r1, #160	@ 0xa0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r7, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_3af14
.L_3af06:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_3af40
.L_3af0c:
	.4byte	gSpriteCollisionResult
.L_3af10:
	.4byte	gSpriteCollisionTileType
.L_3af14:
	ldr	r0, .L_3af24
	ldrb	r1, [r0, #30]
	add	r2, r0, #0
	cmp	r1, #42	@ 0x2a
	bne	.L_3af28
	ldrh	r0, [r2, #10]
	sub	r0, #2
	b	.L_3af2c
.L_3af24:
	.4byte	gCurrentSprite
.L_3af28:
	ldrh	r0, [r2, #10]
	sub	r0, #1
.L_3af2c:
	strh	r0, [r2, #10]
	ldr	r0, [r2, #20]
	ldr	r1, .L_3af48
	and	r0, r1
	ldr	r1, .L_3af4c
	cmp	r0, r1
	bne	.L_3af40
	mov	r0, #156	@ 0x9c
	bl	m4aSongNumStart
.L_3af40:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3af48:
	.4byte	0xFFFFFF
.L_3af4c:
	.4byte	0x10005


thumb_func_start func_803AF50
func_803AF50:
	ldr	r1, .L_3af78
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #18
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #13
	strb	r0, [r2, #0]
	ldrb	r0, [r1, #29]
	add	r2, r1, #0
	cmp	r0, #9
	bhi	.L_3afd8
	lsl	r0, r0, #2
	ldr	r1, .L_3af7c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_3af78:
	.4byte	gCurrentSprite
.L_3af7c:
	.4byte	.L_3af80
.L_3af80:
	.4byte	.L_3afa8
	.4byte	.L_3afa8
	.4byte	.L_3afa8
	.4byte	.L_3afa8
	.4byte	.L_3afb4
	.4byte	.L_3afb4
	.4byte	.L_3afc0
	.4byte	.L_3afc0
	.4byte	.L_3afcc
	.4byte	.L_3afcc
.L_3afa8:
	ldr	r0, .L_3afb0
	str	r0, [r2, #4]
	b	.L_3afdc
	.align	2, 0
.L_3afb0:
	.4byte	sUnk_83C2FE4
.L_3afb4:
	ldr	r0, .L_3afbc
	str	r0, [r2, #4]
	b	.L_3afdc
	.align	2, 0
.L_3afbc:
	.4byte	sUnk_83C2F0C
.L_3afc0:
	ldr	r0, .L_3afc8
	str	r0, [r2, #4]
	b	.L_3afdc
	.align	2, 0
.L_3afc8:
	.4byte	sUnk_83C2E34
.L_3afcc:
	ldr	r0, .L_3afd4
	str	r0, [r2, #4]
	b	.L_3afdc
	.align	2, 0
.L_3afd4:
	.4byte	sUnk_83C2D5C
.L_3afd8:
	ldr	r0, .L_3afe0
	str	r0, [r1, #4]
.L_3afdc:
	bx	lr
	.align	2, 0
.L_3afe0:
	.4byte	sUnk_83C2C84


thumb_func_start func_803AFE4
func_803AFE4:
	push	{r4, lr}
	ldr	r2, .L_3b028
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	add	r4, r2, #0
	cmp	r1, #0
	bne	.L_3b098
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	bne	.L_3b094
	mov	r0, #20
	strb	r0, [r2, #28]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #7
	strb	r0, [r3, #0]
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	ldrb	r0, [r2, #29]
	cmp	r0, #9
	bhi	.L_3b088
	lsl	r0, r0, #2
	ldr	r1, .L_3b02c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_3b028:
	.4byte	gCurrentSprite
.L_3b02c:
	.4byte	.L_3b030
.L_3b030:
	.4byte	.L_3b058
	.4byte	.L_3b058
	.4byte	.L_3b058
	.4byte	.L_3b058
	.4byte	.L_3b064
	.4byte	.L_3b064
	.4byte	.L_3b070
	.4byte	.L_3b070
	.4byte	.L_3b07c
	.4byte	.L_3b07c
.L_3b058:
	ldr	r0, .L_3b060
	str	r0, [r4, #4]
	b	.L_3b098
	.align	2, 0
.L_3b060:
	.4byte	sUnk_83C3004
.L_3b064:
	ldr	r0, .L_3b06c
	str	r0, [r4, #4]
	b	.L_3b098
	.align	2, 0
.L_3b06c:
	.4byte	sUnk_83C2F2C
.L_3b070:
	ldr	r0, .L_3b078
	str	r0, [r4, #4]
	b	.L_3b098
	.align	2, 0
.L_3b078:
	.4byte	sUnk_83C2E54
.L_3b07c:
	ldr	r0, .L_3b084
	str	r0, [r4, #4]
	b	.L_3b098
	.align	2, 0
.L_3b084:
	.4byte	sUnk_83C2D7C
.L_3b088:
	ldr	r0, .L_3b090
	str	r0, [r2, #4]
	b	.L_3b098
	.align	2, 0
.L_3b090:
	.4byte	sUnk_83C2CA4
.L_3b094:
	mov	r0, #23
	strb	r0, [r2, #28]
.L_3b098:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_803B0A0
func_803B0A0:
	ldr	r2, .L_3b0cc
	mov	r1, #0
	mov	r0, #41	@ 0x29
	strb	r0, [r2, #30]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #24
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #20
	strb	r0, [r1, #0]
	ldrb	r0, [r2, #29]
	add	r3, r2, #0
	cmp	r0, #9
	bhi	.L_3b130
	lsl	r0, r0, #2
	ldr	r1, .L_3b0d0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_3b0cc:
	.4byte	gCurrentSprite
.L_3b0d0:
	.4byte	.L_3b0d4
.L_3b0d4:
	.4byte	.L_3b0fc
	.4byte	.L_3b0fc
	.4byte	.L_3b0fc
	.4byte	.L_3b0fc
	.4byte	.L_3b10c
	.4byte	.L_3b10c
	.4byte	.L_3b118
	.4byte	.L_3b118
	.4byte	.L_3b124
	.4byte	.L_3b124
.L_3b0fc:
	mov	r0, #43	@ 0x2b
	strb	r0, [r3, #30]
	ldr	r0, .L_3b108
	str	r0, [r3, #4]
	b	.L_3b134
	.align	2, 0
.L_3b108:
	.4byte	sUnk_83C306C
.L_3b10c:
	ldr	r0, .L_3b114
	str	r0, [r3, #4]
	b	.L_3b134
	.align	2, 0
.L_3b114:
	.4byte	sUnk_83C305C
.L_3b118:
	ldr	r0, .L_3b120
	str	r0, [r3, #4]
	b	.L_3b134
	.align	2, 0
.L_3b120:
	.4byte	sUnk_83C304C
.L_3b124:
	ldr	r0, .L_3b12c
	str	r0, [r3, #4]
	b	.L_3b134
	.align	2, 0
.L_3b12c:
	.4byte	sUnk_83C303C
.L_3b130:
	ldr	r0, .L_3b138
	str	r0, [r2, #4]
.L_3b134:
	bx	lr
	.align	2, 0
.L_3b138:
	.4byte	sUnk_83C302C


thumb_func_start func_803B13C
func_803B13C:
	ldr	r2, .L_3b15c
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3b15a
	mov	r0, #15
	strb	r0, [r2, #28]
	ldrh	r1, [r2, #0]
	ldr	r0, .L_3b160
	and	r0, r1
	strh	r0, [r2, #0]
.L_3b15a:
	bx	lr
.L_3b15c:
	.4byte	gCurrentSprite
.L_3b160:
	.4byte	0xFDFF


thumb_func_start func_803B164
func_803B164:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	ldr	r4, .L_3b1e8
	ldr	r5, .L_3b1ec
	ldr	r2, .L_3b1f0
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #2
	add	r3, r2, r0
.L_3b174:
	ldrb	r0, [r2, #23]
	cmp	r0, #169	@ 0xa9
	bne	.L_3b190
	ldrh	r1, [r2, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_3b190
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
	ldrb	r0, [r2, #26]
	mov	r1, #128	@ 0x80
	orr	r0, r1
	strb	r0, [r2, #26]
.L_3b190:
	add	r2, #44	@ 0x2c
	cmp	r2, r3
	ble	.L_3b174
	mov	r1, #0
	mov	r0, #128	@ 0x80
	strb	r0, [r4, #26]
	mov	r0, #1
	strb	r0, [r4, #31]
	strb	r1, [r4, #29]
	strb	r1, [r4, #22]
	strh	r1, [r4, #20]
	str	r5, [r4, #4]
	mov	r0, #50	@ 0x32
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #31
	strb	r0, [r1, #0]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_3b1f4
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r2, #0
	bl	func_801E430
	ldrh	r0, [r4, #8]
	sub	r0, #128	@ 0x80
	strh	r0, [r4, #8]
	mov	r0, #155	@ 0x9b
	bl	m4aSongNumStart
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_3b1e8:
	.4byte	gCurrentSprite
.L_3b1ec:
	.4byte	sUnk_83C30F4
.L_3b1f0:
	.4byte	gSpriteData
.L_3b1f4:
	.4byte	0xFEFF


thumb_func_start func_803B1F8
func_803B1F8:
	push	{lr}
	sub	sp, #4
	ldr	r1, .L_3b220
	mov	r0, #1
	strb	r0, [r1, #31]
	add	r0, r1, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	add	r2, r1, #0
	cmp	r0, #0
	beq	.L_3b27e
	cmp	r0, #24
	bne	.L_3b224
	ldrb	r1, [r2, #24]
	ldrh	r3, [r2, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r2, #10]
	sub	r0, #96	@ 0x60
	b	.L_3b246
	.align	2, 0
.L_3b220:
	.4byte	gCurrentSprite
.L_3b224:
	cmp	r0, #17
	bne	.L_3b238
	ldrb	r1, [r2, #24]
	ldrh	r3, [r2, #8]
	sub	r3, #96	@ 0x60
	ldrh	r0, [r2, #10]
	add	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #12
	b	.L_3b24a
.L_3b238:
	cmp	r0, #10
	bne	.L_3b252
	ldrb	r1, [r2, #24]
	ldrh	r3, [r2, #8]
	sub	r3, #112	@ 0x70
	ldrh	r0, [r2, #10]
	add	r0, #96	@ 0x60
.L_3b246:
	str	r0, [sp, #0]
	mov	r0, #11
.L_3b24a:
	mov	r2, #0
	bl	func_801E430
	b	.L_3b26a
.L_3b252:
	cmp	r0, #3
	bne	.L_3b26a
	ldrb	r1, [r2, #24]
	ldrh	r3, [r2, #8]
	sub	r3, #144	@ 0x90
	ldrh	r0, [r2, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #12
	mov	r2, #0
	bl	func_801E430
.L_3b26a:
	ldr	r1, .L_3b29c
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	add	r2, r1, #0
	cmp	r0, #0
	bne	.L_3b296
.L_3b27e:
	ldrh	r1, [r2, #0]
	mov	r0, #4
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #109	@ 0x6d
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #70	@ 0x46
	strb	r0, [r1, #0]
	bl	SpriteUtilFadeBackgroundToBlack
.L_3b296:
	add	sp, #4
	pop	{r0}
	bx	r0
.L_3b29c:
	.4byte	gCurrentSprite


thumb_func_start func_803B2A0
func_803B2A0:
	ldr	r1, .L_3b2b8
	mov	r0, #1
	strb	r0, [r1, #31]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_3b2bc
	sub	r0, #1
	strb	r0, [r2, #0]
	b	.L_3b2d8
	.align	2, 0
.L_3b2b8:
	.4byte	gCurrentSprite
.L_3b2bc:
	ldr	r0, .L_3b2dc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_3b2d8
	mov	r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_3b2e0
	mov	r0, #6
	strh	r0, [r1, #0]
	ldr	r0, .L_3b2e4
	strb	r2, [r0, #0]
	ldr	r1, .L_3b2e8
	mov	r0, #5
	strb	r0, [r1, #0]
.L_3b2d8:
	bx	lr
	.align	2, 0
.L_3b2dc:
	.4byte	gUnk_30000FC
.L_3b2e0:
	.4byte	gSubGameMode
.L_3b2e4:
	.4byte	gUnk_3000021
.L_3b2e8:
	.4byte	gStageExitType


thumb_func_start func_803B2EC
func_803B2EC:
	push	{r4, lr}
	ldr	r0, .L_3b300
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	beq	.L_3b30e
	cmp	r0, #3
	bgt	.L_3b304
	cmp	r0, #2
	beq	.L_3b30a
	b	.L_3b316
.L_3b300:
	.4byte	gCurrentShopItem
.L_3b304:
	cmp	r0, #4
	beq	.L_3b312
	b	.L_3b316
.L_3b30a:
	mov	r0, #7
	b	.L_3b318
.L_3b30e:
	mov	r0, #4
	b	.L_3b318
.L_3b312:
	mov	r0, #2
	b	.L_3b318
.L_3b316:
	mov	r0, #8
.L_3b318:
	ldr	r4, .L_3b358
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r2, #0
	strb	r0, [r1, #0]
	ldr	r0, .L_3b35c
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	mov	r1, #0
	strh	r2, [r4, #20]
	add	r0, r4, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	mov	r0, #117	@ 0x75
	strb	r0, [r4, #28]
	ldrb	r0, [r4, #29]
	cmp	r0, #0
	beq	.L_3b34a
	sub	r0, #1
	strb	r0, [r4, #29]
	bl	UpdateBossHealthGauge
	mov	r0, #122	@ 0x7a
	bl	m4aSongNumStart
.L_3b34a:
	ldrb	r0, [r4, #29]
	cmp	r0, #2
	bls	.L_3b360
	mov	r0, #16
	bl	VoiceSetPlay
	b	.L_3b366
.L_3b358:
	.4byte	gCurrentSprite
.L_3b35c:
	.4byte	sUnk_83C301C
.L_3b360:
	mov	r0, #160	@ 0xa0
	bl	m4aSongNumStart
.L_3b366:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_803B36C
func_803B36C:
	push	{r4, r5, lr}
	ldr	r2, .L_3b39c
	add	r4, r2, #0
	add	r4, #40	@ 0x28
	ldrb	r0, [r4, #0]
	add	r1, r0, #1
	strb	r1, [r4, #0]
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	lsl	r1, r1, #24
	lsr	r1, r1, #24
	cmp	r1, #32
	bne	.L_3b3b6
	add	r0, r2, #0
	add	r0, #41	@ 0x29
	ldrb	r3, [r2, #29]
	add	r1, r3, #0
	ldrb	r0, [r0, #0]
	cmp	r1, r0
	bne	.L_3b3a0
	mov	r0, #118	@ 0x76
	strb	r0, [r2, #28]
	b	.L_3b3b6
	.align	2, 0
.L_3b39c:
	.4byte	gCurrentSprite
.L_3b3a0:
	mov	r0, #0
	strb	r0, [r4, #0]
	cmp	r1, #0
	beq	.L_3b3b6
	sub	r0, r3, #1
	strb	r0, [r2, #29]
	bl	UpdateBossHealthGauge
	mov	r0, #122	@ 0x7a
	bl	m4aSongNumStart
.L_3b3b6:
	mov	r1, #7
	and	r1, r5
	cmp	r1, #0
	bne	.L_3b3d6
	mov	r0, #8
	and	r0, r5
	cmp	r0, #0
	beq	.L_3b3d0
	ldr	r0, .L_3b3cc
	strb	r1, [r0, #27]
	b	.L_3b3d6
.L_3b3cc:
	.4byte	gCurrentSprite
.L_3b3d0:
	ldr	r1, .L_3b3dc
	mov	r0, #4
	strb	r0, [r1, #27]
.L_3b3d6:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_3b3dc:
	.4byte	gCurrentSprite


thumb_func_start func_803B3E0
func_803B3E0:
	ldr	r0, .L_3b3f4
	ldrb	r1, [r0, #29]
	add	r2, r0, #0
	cmp	r1, #7
	bhi	.L_3b434
	lsl	r0, r1, #2
	ldr	r1, .L_3b3f8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_3b3f4:
	.4byte	gCurrentSprite
.L_3b3f8:
	.4byte	.L_3b3fc
.L_3b3fc:
	.4byte	.L_3b41c
	.4byte	.L_3b41c
	.4byte	.L_3b41c
	.4byte	.L_3b41c
	.4byte	.L_3b424
	.4byte	.L_3b424
	.4byte	.L_3b42c
	.4byte	.L_3b42c
.L_3b41c:
	ldr	r0, .L_3b420
	b	.L_3b436
.L_3b420:
	.4byte	sUnk_83C2F44
.L_3b424:
	ldr	r0, .L_3b428
	b	.L_3b436
.L_3b428:
	.4byte	sUnk_83C2E6C
.L_3b42c:
	ldr	r0, .L_3b430
	b	.L_3b436
.L_3b430:
	.4byte	sUnk_83C2D94
.L_3b434:
	ldr	r0, .L_3b450
.L_3b436:
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r0, #2
	strh	r0, [r2, #20]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	mov	r0, #119	@ 0x77
	strb	r0, [r2, #28]
	bx	lr
	.align	2, 0
.L_3b450:
	.4byte	sUnk_83C2CBC


thumb_func_start func_803B454
func_803B454:
	push	{lr}
	ldr	r2, .L_3b488
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3b498
	mov	r0, #2
	strb	r0, [r2, #28]
	ldr	r0, .L_3b48c
	ldrb	r0, [r0, #0]
	cmp	r0, #11
	bne	.L_3b494
	ldr	r1, .L_3b490
	mov	r2, #250	@ 0xfa
	lsl	r2, r2, #2
	add	r0, r2, #0
	strh	r0, [r1, #0]
	bl	SpriteUtilFadeBackgroundToBlack
	bl	func_803B164
	b	.L_3b498
.L_3b488:
	.4byte	gCurrentSprite
.L_3b48c:
	.4byte	gTimerState
.L_3b490:
	.4byte	gWarioPauseTimer
.L_3b494:
	bl	SpriteUtilStartBossTimer
.L_3b498:
	pop	{r0}
	bx	r0


thumb_func_start func_803B49C
func_803B49C:
	push	{lr}
	ldr	r2, .L_3b4d4
	ldr	r0, .L_3b4d8
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	mov	r0, #42	@ 0x2a
	strb	r0, [r2, #30]
	mov	r0, #32
	strb	r0, [r2, #28]
	ldr	r0, .L_3b4dc
	ldrh	r0, [r0, #14]
	cmp	r0, #32
	bne	.L_3b4e0
	ldrh	r0, [r2, #8]
	sub	r0, #32
	ldrh	r1, [r2, #10]
	add	r1, #96	@ 0x60
	mov	r2, #6
	bl	SpriteSpawnSecondary
	b	.L_3b4ee
	.align	2, 0
.L_3b4d4:
	.4byte	gCurrentSprite
.L_3b4d8:
	.4byte	sUnk_83C301C
.L_3b4dc:
	.4byte	gWarioData
.L_3b4e0:
	ldrh	r0, [r2, #8]
	sub	r0, #32
	ldrh	r1, [r2, #10]
	sub	r1, #96	@ 0x60
	mov	r2, #6
	bl	SpriteSpawnSecondary
.L_3b4ee:
	ldr	r1, .L_3b520
	ldrb	r0, [r1, #29]
	cmp	r0, #0
	beq	.L_3b50e
	sub	r0, #1
	strb	r0, [r1, #29]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3b50a
	ldr	r1, .L_3b524
	mov	r0, #11
	strb	r0, [r1, #0]
	bl	SpriteUtilSetWarioBossVictoryPose
.L_3b50a:
	bl	UpdateBossHealthGauge
.L_3b50e:
	ldr	r0, .L_3b520
	ldrb	r0, [r0, #29]
	cmp	r0, #2
	bls	.L_3b528
	mov	r0, #16
	bl	VoiceSetPlay
	b	.L_3b534
	.align	2, 0
.L_3b520:
	.4byte	gCurrentSprite
.L_3b524:
	.4byte	gTimerState
.L_3b528:
	mov	r0, #160	@ 0xa0
	bl	m4aSongNumStart
	mov	r0, #1
	bl	VoiceSetPlay
.L_3b534:
	pop	{r0}
	bx	r0


thumb_func_start func_803B538
func_803B538:
	push	{r4, r5, lr}
	ldr	r4, .L_3b580
	add	r2, r4, #0
	add	r2, #40	@ 0x28
	ldrb	r0, [r2, #0]
	add	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	ldr	r0, .L_3b584
	ldrh	r2, [r4, #10]
	ldrh	r0, [r0, #18]
	cmp	r2, r0
	bls	.L_3b58c
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r1, #38	@ 0x26
	ldrb	r1, [r1, #0]
	add	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_3b588
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_3b5b6
	ldrh	r0, [r4, #10]
	add	r0, #8
	b	.L_3b5b4
	.align	2, 0
.L_3b580:
	.4byte	gCurrentSprite
.L_3b584:
	.4byte	gWarioData
.L_3b588:
	.4byte	gSpriteCollisionTileType
.L_3b58c:
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r1, r4, #0
	add	r1, #37	@ 0x25
	ldrb	r1, [r1, #0]
	sub	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_3b5d0
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_3b5b6
	ldrh	r0, [r4, #10]
	sub	r0, #8
.L_3b5b4:
	strh	r0, [r4, #10]
.L_3b5b6:
	ldr	r1, .L_3b5d4
	add	r0, r1, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	cmp	r0, #32
	bne	.L_3b5dc
	ldrb	r0, [r1, #29]
	cmp	r0, #0
	beq	.L_3b5d8
	mov	r0, #120	@ 0x78
	strb	r0, [r1, #28]
	b	.L_3b5dc
	.align	2, 0
.L_3b5d0:
	.4byte	gSpriteCollisionTileType
.L_3b5d4:
	.4byte	gCurrentSprite
.L_3b5d8:
	bl	func_803B164
.L_3b5dc:
	mov	r1, #7
	and	r1, r5
	cmp	r1, #0
	bne	.L_3b5fe
	mov	r0, #8
	and	r0, r5
	cmp	r0, #0
	beq	.L_3b5f8
	ldr	r0, .L_3b5f4
	strb	r1, [r0, #27]
	b	.L_3b5fe
	.align	2, 0
.L_3b5f4:
	.4byte	gCurrentSprite
.L_3b5f8:
	ldr	r1, .L_3b604
	mov	r0, #4
	strb	r0, [r1, #27]
.L_3b5fe:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_3b604:
	.4byte	gCurrentSprite


thumb_func_start func_803B608
func_803B608:
	ldr	r0, .L_3b61c
	ldrb	r1, [r0, #29]
	add	r2, r0, #0
	cmp	r1, #7
	bhi	.L_3b660
	lsl	r0, r1, #2
	ldr	r1, .L_3b620
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_3b61c:
	.4byte	gCurrentSprite
.L_3b620:
	.4byte	.L_3b624
.L_3b624:
	.4byte	.L_3b644
	.4byte	.L_3b644
	.4byte	.L_3b644
	.4byte	.L_3b644
	.4byte	.L_3b650
	.4byte	.L_3b650
	.4byte	.L_3b658
	.4byte	.L_3b658
.L_3b644:
	mov	r0, #43	@ 0x2b
	strb	r0, [r2, #30]
	ldr	r0, .L_3b64c
	b	.L_3b662
.L_3b64c:
	.4byte	sUnk_83C2F44
.L_3b650:
	ldr	r0, .L_3b654
	b	.L_3b662
.L_3b654:
	.4byte	sUnk_83C2E6C
.L_3b658:
	ldr	r0, .L_3b65c
	b	.L_3b662
.L_3b65c:
	.4byte	sUnk_83C2D94
.L_3b660:
	ldr	r0, .L_3b67c
.L_3b662:
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r0, #2
	strh	r0, [r2, #20]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	mov	r0, #121	@ 0x79
	strb	r0, [r2, #28]
	bx	lr
	.align	2, 0
.L_3b67c:
	.4byte	sUnk_83C2CBC


thumb_func_start func_803B680
func_803B680:
	ldr	r2, .L_3b6ac
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3b6c6
	ldr	r1, .L_3b6b0
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_3b6b4
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_3b6c2
	mov	r0, #15
	b	.L_3b6c4
	.align	2, 0
.L_3b6ac:
	.4byte	gCurrentSprite
.L_3b6b0:
	.4byte	gWarioData
.L_3b6b4:
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_3b6c2
	mov	r0, #15
	b	.L_3b6c4
.L_3b6c2:
	mov	r0, #17
.L_3b6c4:
	strb	r0, [r2, #28]
.L_3b6c6:
	bx	lr


thumb_func_start func_803B6C8
func_803B6C8:
	push	{lr}
	ldr	r2, .L_3b6f4
	mov	r1, #0
	mov	r0, #24
	strb	r0, [r2, #28]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #30
	strb	r0, [r1, #0]
	ldrb	r0, [r2, #29]
	sub	r0, #4
	add	r3, r2, #0
	cmp	r0, #6
	bhi	.L_3b748
	lsl	r0, r0, #2
	ldr	r1, .L_3b6f8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_3b6f4:
	.4byte	gCurrentSprite
.L_3b6f8:
	.4byte	.L_3b6fc
.L_3b6fc:
	.4byte	.L_3b73c
	.4byte	.L_3b73c
	.4byte	.L_3b730
	.4byte	.L_3b730
	.4byte	.L_3b724
	.4byte	.L_3b724
	.4byte	.L_3b718
.L_3b718:
	ldr	r0, .L_3b720
	str	r0, [r3, #4]
	b	.L_3b74c
	.align	2, 0
.L_3b720:
	.4byte	sUnk_83C307C
.L_3b724:
	ldr	r0, .L_3b72c
	str	r0, [r3, #4]
	b	.L_3b74c
	.align	2, 0
.L_3b72c:
	.4byte	sUnk_83C3094
.L_3b730:
	ldr	r0, .L_3b738
	str	r0, [r3, #4]
	b	.L_3b74c
	.align	2, 0
.L_3b738:
	.4byte	sUnk_83C30AC
.L_3b73c:
	ldr	r0, .L_3b744
	str	r0, [r3, #4]
	b	.L_3b74c
	.align	2, 0
.L_3b744:
	.4byte	sUnk_83C30C4
.L_3b748:
	ldr	r0, .L_3b758
	str	r0, [r2, #4]
.L_3b74c:
	mov	r0, #158	@ 0x9e
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3b758:
	.4byte	sUnk_83C30DC


thumb_func_start SpriteSpoiledRotten
SpriteSpoiledRotten:
	push	{lr}
	ldr	r0, .L_3b774
	ldrb	r0, [r0, #28]
	cmp	r0, #121	@ 0x79
	bls	.L_3b768
	b	.L_3b9d0
.L_3b768:
	lsl	r0, r0, #2
	ldr	r1, .L_3b778
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_3b774:
	.4byte	gCurrentSprite
.L_3b778:
	.4byte	.L_3b77c
.L_3b77c:
	.4byte	.L_3b964
	.4byte	.L_3b96a
	.4byte	.L_3b970
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b976
	.4byte	.L_3b97a
	.4byte	.L_3b980
	.4byte	.L_3b984
	.4byte	.L_3b9d0
	.4byte	.L_3b984
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b98a
	.4byte	.L_3b98e
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9aa
	.4byte	.L_3b9ae
	.4byte	.L_3b9aa
	.4byte	.L_3b9d0
	.4byte	.L_3b9be
	.4byte	.L_3b9d0
	.4byte	.L_3b9be
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9c4
	.4byte	.L_3b9be
	.4byte	.L_3b9d0
	.4byte	.L_3b9be
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9aa
	.4byte	.L_3b9aa
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9ca
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b9d0
	.4byte	.L_3b994
	.4byte	.L_3b99a
	.4byte	.L_3b9a0
	.4byte	.L_3b9a4
	.4byte	.L_3b9b4
	.4byte	.L_3b9b8
.L_3b964:
	bl	func_803AB4C
	b	.L_3b9d4
.L_3b96a:
	bl	func_803ABD8
	b	.L_3b9d4
.L_3b970:
	bl	func_803AC38
	b	.L_3b9d4
.L_3b976:
	bl	func_803AD2C
.L_3b97a:
	bl	func_803AE30
	b	.L_3b9d4
.L_3b980:
	bl	func_803AF50
.L_3b984:
	bl	func_803AFE4
	b	.L_3b9d4
.L_3b98a:
	bl	func_803B0A0
.L_3b98e:
	bl	func_803B13C
	b	.L_3b9d4
.L_3b994:
	bl	func_803B2EC
	b	.L_3b9d4
.L_3b99a:
	bl	func_803B36C
	b	.L_3b9d4
.L_3b9a0:
	bl	func_803B3E0
.L_3b9a4:
	bl	func_803B454
	b	.L_3b9d4
.L_3b9aa:
	bl	func_803B49C
.L_3b9ae:
	bl	func_803B538
	b	.L_3b9d4
.L_3b9b4:
	bl	func_803B608
.L_3b9b8:
	bl	func_803B680
	b	.L_3b9d4
.L_3b9be:
	bl	func_803B6C8
	b	.L_3b9d4
.L_3b9c4:
	bl	func_803B1F8
	b	.L_3b9d4
.L_3b9ca:
	bl	func_803B2A0
	b	.L_3b9d4
.L_3b9d0:
	bl	func_803B164
.L_3b9d4:
	pop	{r0}
	bx	r0
