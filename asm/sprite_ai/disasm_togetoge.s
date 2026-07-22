.include "macros.s.inc"


thumb_func_start func_803ECFC
func_803ECFC:
	push	{r4, lr}
	ldr	r0, .L_3ed54
	mov	ip, r0
	add	r0, #32
	mov	r2, #0
	mov	r3, #32
	strb	r3, [r0, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r4, #16
	strb	r4, [r0, #0]
	mov	r1, ip
	add	r1, #35	@ 0x23
	mov	r0, #108	@ 0x6c
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #148	@ 0x94
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #37	@ 0x25
	strb	r3, [r0, #0]
	add	r1, #2
	mov	r0, #28
	strb	r0, [r1, #0]
	ldr	r0, .L_3ed58
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r2, [r1, #20]
	mov	r0, #12
	strb	r0, [r1, #30]
	add	r1, #39	@ 0x27
	mov	r0, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	strb	r4, [r0, #28]
	bl	SpriteUtilTurnTowardWario
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3ed54:
	.4byte	gCurrentSprite
.L_3ed58:
	.4byte	sUnk_83C4F68


thumb_func_start func_803ED5C
func_803ED5C:
	push	{lr}
	ldr	r1, .L_3ed84
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_3ed80
	add	r2, #3
	strb	r0, [r2, #0]
	mov	r0, #18
	strb	r0, [r1, #28]
	mov	r0, #101	@ 0x65
	bl	m4aSongNumStart
.L_3ed80:
	pop	{r0}
	bx	r0
.L_3ed84:
	.4byte	gCurrentSprite


thumb_func_start func_803ED88
func_803ED88:
	ldr	r2, .L_3eda4
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r1, #0
	mov	r0, #4
	strb	r0, [r3, #0]
	add	r3, #2
	mov	r0, #6
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_3eda4:
	.4byte	gCurrentSprite


thumb_func_start func_803EDA8
func_803EDA8:
	push	{lr}
	ldr	r1, .L_3edc0
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r2
	strh	r0, [r1, #0]
	bl	func_803ED88
	pop	{r0}
	bx	r0
.L_3edc0:
	.4byte	gCurrentSprite


thumb_func_start func_803EDC4
func_803EDC4:
	push	{lr}
	ldr	r1, .L_3eddc
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_3ede0
	and	r0, r2
	strh	r0, [r1, #0]
	bl	func_803ED88
	pop	{r0}
	bx	r0
.L_3eddc:
	.4byte	gCurrentSprite
.L_3ede0:
	.4byte	0xFFBF


thumb_func_start func_803EDE4
func_803EDE4:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_3ee30
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r3, r0, #0
	ldr	r0, .L_3ee34
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_3ee06
	ldrh	r1, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #4
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
.L_3ee06:
	ldr	r0, .L_3ee38
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_3ee46
	mov	r1, #0
	mov	r2, #0
	strh	r3, [r4, #8]
	ldr	r0, .L_3ee3c
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r2, [r4, #20]
	bl	SpriteUtilTurnTowardWario
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_3ee40
	bl	func_803EDA8
	b	.L_3ee84
.L_3ee30:
	.4byte	gCurrentSprite
.L_3ee34:
	.4byte	gUnk_30000A0
.L_3ee38:
	.4byte	gSpriteAiCollisionResult
.L_3ee3c:
	.4byte	sUnk_83C4F20
.L_3ee40:
	bl	func_803EDC4
	b	.L_3ee84
.L_3ee46:
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_3ee70
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_3ee74
	cmp	r1, r0
	bne	.L_3ee78
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_3ee82
	.align	2, 0
.L_3ee70:
	.4byte	sUnk_8352ADC
.L_3ee74:
	.4byte	0x7FFF
.L_3ee78:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_3ee82:
	strh	r0, [r4, #8]
.L_3ee84:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_803EE8C
func_803EE8C:
	push	{r4, lr}
	ldr	r4, .L_3eec4
	add	r2, r4, #0
	add	r2, #41	@ 0x29
	mov	r1, #0
	mov	r0, #4
	strb	r0, [r2, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	strb	r1, [r4, #26]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r4, #0]
	ldr	r0, .L_3eec8
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_3eec4:
	.4byte	gCurrentSprite
.L_3eec8:
	.4byte	0xFEFF


thumb_func_start func_803EECC
func_803EECC:
	push	{lr}
	ldr	r1, .L_3eedc
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_803EE8C
	pop	{r0}
	bx	r0
.L_3eedc:
	.4byte	gCurrentSprite


thumb_func_start func_803EEE0
func_803EEE0:
	push	{lr}
	ldr	r1, .L_3eef0
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_803EE8C
	pop	{r0}
	bx	r0
.L_3eef0:
	.4byte	gCurrentSprite


thumb_func_start SpriteTogetoge
SpriteTogetoge:
	push	{r4, lr}
	ldr	r2, .L_3ef20
	ldrh	r0, [r2, #0]
	ldr	r1, .L_3ef24
	and	r1, r0
	strh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_3ef0e
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_3ef0e:
	ldrb	r0, [r2, #28]
	cmp	r0, #106	@ 0x6a
	bls	.L_3ef16
	b	.L_3f1d2
.L_3ef16:
	lsl	r0, r0, #2
	ldr	r1, .L_3ef28
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_3ef20:
	.4byte	gCurrentSprite
.L_3ef24:
	.4byte	0xFFDF
.L_3ef28:
	.4byte	.L_3ef2c
.L_3ef2c:
	.4byte	.L_3f0d8
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f0de
	.4byte	.L_3f1d2
	.4byte	.L_3f0e4
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1be
	.4byte	.L_3f1c2
	.4byte	.L_3f1c8
	.4byte	.L_3f1cc
	.4byte	.L_3f110
	.4byte	.L_3f1d2
	.4byte	.L_3f116
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f0ea
	.4byte	.L_3f0ea
	.4byte	.L_3f0fc
	.4byte	.L_3f0fc
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f110
	.4byte	.L_3f166
	.4byte	.L_3f116
	.4byte	.L_3f136
	.4byte	.L_3f11c
	.4byte	.L_3f126
	.4byte	.L_3f12c
	.4byte	.L_3f136
	.4byte	.L_3f13c
	.4byte	.L_3f146
	.4byte	.L_3f14c
	.4byte	.L_3f156
	.4byte	.L_3f15c
	.4byte	.L_3f166
	.4byte	.L_3f16c
	.4byte	.L_3f176
	.4byte	.L_3f17c
	.4byte	.L_3f198
	.4byte	.L_3f19e
	.4byte	.L_3f1b8
	.4byte	.L_3f17c
	.4byte	.L_3f1d2
	.4byte	.L_3f19e
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1d2
	.4byte	.L_3f1c8
	.4byte	.L_3f1be
.L_3f0d8:
	bl	func_803ECFC
	b	.L_3f1f8
.L_3f0de:
	bl	func_803ED5C
	b	.L_3f1f8
.L_3f0e4:
	bl	func_803EDE4
	b	.L_3f1f8
.L_3f0ea:
	ldr	r0, .L_3f0f8
	add	r0, #41	@ 0x29
	mov	r1, #4
	strb	r1, [r0, #0]
	bl	func_8025E98
	b	.L_3f1f8
.L_3f0f8:
	.4byte	gCurrentSprite
.L_3f0fc:
	ldr	r0, .L_3f10c
	add	r0, #41	@ 0x29
	mov	r1, #4
	strb	r1, [r0, #0]
	bl	func_8025DE8
	b	.L_3f1f8
	.align	2, 0
.L_3f10c:
	.4byte	gCurrentSprite
.L_3f110:
	bl	func_803EDA8
	b	.L_3f166
.L_3f116:
	bl	func_803EDC4
	b	.L_3f136
.L_3f11c:
	bl	func_8024688
	mov	r0, #102	@ 0x66
	bl	m4aSongNumStart
.L_3f126:
	bl	func_80246B8
	b	.L_3f1f8
.L_3f12c:
	bl	func_802473C
	mov	r0, #102	@ 0x66
	bl	m4aSongNumStart
.L_3f136:
	bl	func_802476C
	b	.L_3f1f8
.L_3f13c:
	bl	func_80247F0
	mov	r0, #102	@ 0x66
	bl	m4aSongNumStart
.L_3f146:
	bl	func_8024820
	b	.L_3f1f8
.L_3f14c:
	bl	func_80248A4
	mov	r0, #102	@ 0x66
	bl	m4aSongNumStart
.L_3f156:
	bl	func_80248D4
	b	.L_3f1f8
.L_3f15c:
	bl	func_8024958
	mov	r0, #102	@ 0x66
	bl	m4aSongNumStart
.L_3f166:
	bl	func_8024988
	b	.L_3f1f8
.L_3f16c:
	bl	func_8024A0C
	mov	r0, #102	@ 0x66
	bl	m4aSongNumStart
.L_3f176:
	bl	func_8024A3C
	b	.L_3f1f8
.L_3f17c:
	ldr	r2, .L_3f190
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_3f194
	mov	r0, #49	@ 0x31
	strb	r0, [r2, #28]
	b	.L_3f198
	.align	2, 0
.L_3f190:
	.4byte	gCurrentSprite
.L_3f194:
	bl	func_8024AC0
.L_3f198:
	bl	func_8024AD4
	b	.L_3f1f8
.L_3f19e:
	ldr	r2, .L_3f1b0
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_3f1b4
	bl	func_8024BEC
	b	.L_3f1b8
.L_3f1b0:
	.4byte	gCurrentSprite
.L_3f1b4:
	mov	r0, #49	@ 0x31
	strb	r0, [r2, #28]
.L_3f1b8:
	bl	func_8024C00
	b	.L_3f1f8
.L_3f1be:
	bl	func_803EECC
.L_3f1c2:
	bl	SpriteUtilFallOffscreenRight
	b	.L_3f1f8
.L_3f1c8:
	bl	func_803EEE0
.L_3f1cc:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_3f1f8
.L_3f1d2:
	ldr	r4, .L_3f208
	mov	r0, #0
	strh	r0, [r4, #0]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #5
	bl	SpriteSpawnSecondary
	ldr	r1, .L_3f20c
	ldr	r0, .L_3f210
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r4, [r4, #24]
	add	r0, r0, r4
	add	r0, r0, r1
	ldrb	r1, [r0, #0]
	sub	r1, #1
	strb	r1, [r0, #0]
.L_3f1f8:
	ldr	r2, .L_3f208
	ldrh	r1, [r2, #0]
	mov	r0, #32
	orr	r0, r1
	strh	r0, [r2, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_3f208:
	.4byte	gCurrentSprite
.L_3f20c:
	.4byte	gPersistentSpriteData
.L_3f210:
	.4byte	gCurrentRoom
