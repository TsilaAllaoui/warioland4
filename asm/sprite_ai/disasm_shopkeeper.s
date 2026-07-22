.include "macros.s.inc"


thumb_func_start func_804EA88
func_804EA88:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	ldr	r0, .L_4eaa0
	add	r1, r0, #0
	add	r1, #40	@ 0x28
	ldrb	r2, [r1, #0]
	add	r6, r0, #0
	cmp	r2, #0
	beq	.L_4eaa4
	sub	r0, r2, #1
	strb	r0, [r1, #0]
	b	.L_4eb12
.L_4eaa0:
	.4byte	gCurrentSprite
.L_4eaa4:
	add	r2, r6, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	add	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	lsl	r0, r4, #2
	add	r0, r0, r5
	ldrb	r3, [r0, #0]
	cmp	r3, #255	@ 0xff
	bne	.L_4eac4
	mov	r4, #0
	mov	r0, #1
	strb	r0, [r2, #0]
	ldrb	r3, [r5, #0]
.L_4eac4:
	mov	r0, #128	@ 0x80
	and	r0, r3
	cmp	r0, #0
	beq	.L_4ead4
	ldrh	r1, [r6, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r1
	b	.L_4eada
.L_4ead4:
	ldrh	r1, [r6, #0]
	ldr	r0, .L_4eb18
	and	r0, r1
.L_4eada:
	strh	r0, [r6, #0]
	mov	r0, #127	@ 0x7f
	and	r3, r0
	lsl	r0, r4, #2
	add	r0, r0, r5
	ldrb	r1, [r0, #1]
	add	r0, r6, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	ldr	r1, .L_4eb1c
	ldr	r2, .L_4eb20
	lsl	r0, r3, #2
	add	r0, r0, r2
	ldr	r2, [r0, #0]
	str	r2, [r1, #0]
	ldr	r0, .L_4eb24
	str	r0, [r1, #4]
	ldr	r3, .L_4eb28
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #3
	add	r2, r2, r0
	str	r2, [r1, #0]
	ldr	r0, .L_4eb2c
	str	r0, [r1, #4]
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
.L_4eb12:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_4eb18:
	.4byte	0xFFBF
.L_4eb1c:
	.4byte	0x40000D4
.L_4eb20:
	.4byte	sUnk_878F104
.L_4eb24:
	.4byte	0x6012400
.L_4eb28:
	.4byte	0x80000080
.L_4eb2c:
	.4byte	0x6012800


thumb_func_start func_804EB30
func_804EB30:
	push	{lr}
	ldr	r1, .L_4eb54
	add	r0, r1, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bne	.L_4eb50
	add	r0, r1, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	cmp	r0, #6
	bne	.L_4eb50
	mov	r0, #250	@ 0xfa
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_4eb50:
	pop	{r0}
	bx	r0
.L_4eb54:
	.4byte	gCurrentSprite


thumb_func_start func_804EB58
func_804EB58:
	push	{lr}
	ldr	r1, .L_4eb7c
	add	r0, r1, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #6
	bne	.L_4eb76
	add	r0, r1, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	cmp	r0, #60	@ 0x3c
	bne	.L_4eb76
	ldr	r0, .L_4eb80
	bl	m4aSongNumStart
.L_4eb76:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4eb7c:
	.4byte	gCurrentSprite
.L_4eb80:
	.4byte	0x1F5


thumb_func_start func_804EB84
func_804EB84:
	push	{r4, r5, lr}
	ldr	r3, .L_4ebb8
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	add	r1, r0, #0
	ldrh	r2, [r3, #10]
	add	r0, r1, r2
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldr	r2, .L_4ebbc
	ldrh	r0, [r2, #18]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	sub	r0, r4, r1
	add	r5, r2, #0
	cmp	r0, #64	@ 0x40
	ble	.L_4ebe2
	add	r0, r1, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	cmp	r4, r1
	bls	.L_4ebc0
	sub	r0, r4, r1
	b	.L_4ebc2
.L_4ebb8:
	.4byte	gCurrentSprite
.L_4ebbc:
	.4byte	gWarioData
.L_4ebc0:
	sub	r0, r1, r4
.L_4ebc2:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #8
	bhi	.L_4ebce
	mov	r2, #0
	b	.L_4ebd4
.L_4ebce:
	sub	r0, #8
	lsl	r0, r0, #13
	lsr	r2, r0, #16
.L_4ebd4:
	cmp	r4, r1
	bhi	.L_4ec1a
	cmp	r4, r1
	bcs	.L_4ec20
	ldrh	r0, [r3, #10]
	add	r0, r2, r0
	b	.L_4ec1e
.L_4ebe2:
	sub	r0, r1, r4
	cmp	r0, #64	@ 0x40
	ble	.L_4ec20
	add	r0, r1, #0
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	cmp	r4, r1
	bls	.L_4ebf8
	sub	r0, r4, r1
	b	.L_4ebfa
.L_4ebf8:
	sub	r0, r1, r4
.L_4ebfa:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #8
	bhi	.L_4ec06
	mov	r2, #0
	b	.L_4ec0c
.L_4ec06:
	sub	r0, #8
	lsl	r0, r0, #13
	lsr	r2, r0, #16
.L_4ec0c:
	cmp	r4, r1
	bcs	.L_4ec16
	ldrh	r0, [r3, #10]
	add	r0, r2, r0
	b	.L_4ec1e
.L_4ec16:
	cmp	r4, r1
	bls	.L_4ec20
.L_4ec1a:
	ldrh	r0, [r3, #10]
	sub	r0, r0, r2
.L_4ec1e:
	strh	r0, [r3, #10]
.L_4ec20:
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #2
	add	r0, r1, #0
	ldrh	r2, [r3, #8]
	add	r0, r0, r2
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	add	r1, #4
	add	r0, r1, #0
	ldrh	r5, [r5, #20]
	add	r0, r0, r5
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	cmp	r4, r1
	bls	.L_4ec42
	sub	r0, r4, r1
	b	.L_4ec44
.L_4ec42:
	sub	r0, r1, r4
.L_4ec44:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #3
	bhi	.L_4ec50
	mov	r2, #0
	b	.L_4ec5c
.L_4ec50:
	sub	r0, #4
	lsl	r0, r0, #14
	lsr	r2, r0, #16
	cmp	r2, #0
	bne	.L_4ec5c
	mov	r2, #2
.L_4ec5c:
	cmp	r4, r1
	bls	.L_4ec66
	ldrh	r0, [r3, #8]
	sub	r0, r0, r2
	b	.L_4ec6e
.L_4ec66:
	cmp	r4, r1
	bcs	.L_4ec70
	ldrh	r0, [r3, #8]
	add	r0, r2, r0
.L_4ec6e:
	strh	r0, [r3, #8]
.L_4ec70:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_804EC78
func_804EC78:
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r5, #0
	ldr	r0, .L_4ecf4
	ldrb	r1, [r0, #23]
	add	r6, r0, #0
	cmp	r1, #9
	bne	.L_4ec92
	ldrh	r1, [r6, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_4ecb6
.L_4ec92:
	add	r5, #1
	cmp	r5, #23
	bgt	.L_4ecb0
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r1, r0, r6
	ldrb	r0, [r1, #23]
	cmp	r0, #9
	bne	.L_4ec92
	ldrh	r1, [r1, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_4ec92
	add	r2, #1
.L_4ecb0:
	cmp	r2, #0
	bne	.L_4ecb6
	b	.L_4edc2
.L_4ecb6:
	ldr	r2, .L_4ecf8
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	add	r1, r0, #0
	ldrh	r3, [r2, #10]
	add	r0, r1, r3
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r6
	ldrh	r0, [r0, #10]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	sub	r0, r4, r3
	cmp	r0, #64	@ 0x40
	ble	.L_4ed1e
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	orr	r1, r0
	strh	r1, [r2, #0]
	add	r0, r3, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r4, r3
	bls	.L_4ecfc
	sub	r0, r4, r3
	b	.L_4ecfe
	.align	2, 0
.L_4ecf4:
	.4byte	gSpriteData
.L_4ecf8:
	.4byte	gCurrentSprite
.L_4ecfc:
	sub	r0, r3, r4
.L_4ecfe:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #8
	bhi	.L_4ed0a
	mov	r1, #0
	b	.L_4ed10
.L_4ed0a:
	sub	r0, #8
	lsl	r0, r0, #13
	lsr	r1, r0, #16
.L_4ed10:
	cmp	r4, r3
	bhi	.L_4ed62
	cmp	r4, r3
	bcs	.L_4ed68
	ldrh	r0, [r2, #10]
	add	r0, r1, r0
	b	.L_4ed66
.L_4ed1e:
	sub	r0, r3, r4
	cmp	r0, #64	@ 0x40
	ble	.L_4ed68
	ldrh	r0, [r2, #0]
	ldr	r1, .L_4ed3c
	and	r1, r0
	strh	r1, [r2, #0]
	add	r0, r3, #0
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r4, r3
	bls	.L_4ed40
	sub	r0, r4, r3
	b	.L_4ed42
.L_4ed3c:
	.4byte	0xFFBF
.L_4ed40:
	sub	r0, r3, r4
.L_4ed42:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #8
	bhi	.L_4ed4e
	mov	r1, #0
	b	.L_4ed54
.L_4ed4e:
	sub	r0, #8
	lsl	r0, r0, #13
	lsr	r1, r0, #16
.L_4ed54:
	cmp	r4, r3
	bcs	.L_4ed5e
	ldrh	r0, [r2, #10]
	add	r0, r1, r0
	b	.L_4ed66
.L_4ed5e:
	cmp	r4, r3
	bls	.L_4ed68
.L_4ed62:
	ldrh	r0, [r2, #10]
	sub	r0, r0, r1
.L_4ed66:
	strh	r0, [r2, #10]
.L_4ed68:
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #2
	add	r0, r1, #0
	ldrh	r3, [r2, #8]
	add	r0, r0, r3
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	mov	r0, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r0
	add	r1, r1, r6
	mov	r3, #129	@ 0x81
	lsl	r3, r3, #2
	add	r0, r3, #0
	ldrh	r1, [r1, #8]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r4, r3
	bls	.L_4ed94
	sub	r0, r4, r3
	b	.L_4ed96
.L_4ed94:
	sub	r0, r3, r4
.L_4ed96:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #3
	bhi	.L_4eda2
	mov	r1, #0
	b	.L_4edae
.L_4eda2:
	sub	r0, #4
	lsl	r0, r0, #14
	lsr	r1, r0, #16
	cmp	r1, #0
	bne	.L_4edae
	mov	r1, #2
.L_4edae:
	cmp	r4, r3
	bls	.L_4edb8
	ldrh	r0, [r2, #8]
	sub	r0, r0, r1
	b	.L_4edc0
.L_4edb8:
	cmp	r4, r3
	bcs	.L_4edc2
	ldrh	r0, [r2, #8]
	add	r0, r1, r0
.L_4edc0:
	strh	r0, [r2, #8]
.L_4edc2:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_804EDC8
func_804EDC8:
	push	{r4, lr}
	ldr	r4, .L_4ede4
	ldrh	r1, [r4, #0]
	mov	r0, #4
	orr	r0, r1
	strh	r0, [r4, #0]
	ldr	r0, .L_4ede8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4edec
	mov	r0, #2
	strb	r0, [r4, #28]
	b	.L_4ee4a
	.align	2, 0
.L_4ede4:
	.4byte	gCurrentSprite
.L_4ede8:
	.4byte	gCurrentRoom
.L_4edec:
	bl	func_801E518
	ldrb	r1, [r4, #26]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	strb	r0, [r4, #26]
	mov	r0, #1
	strb	r0, [r4, #28]
	ldrh	r0, [r4, #10]
	sub	r0, #160	@ 0xa0
	strh	r0, [r4, #10]
	ldr	r0, .L_4ee28
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	beq	.L_4ee12
	ldr	r0, .L_4ee2c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_4ee38
.L_4ee12:
	ldr	r1, .L_4ee30
	ldr	r0, .L_4ee34
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #55	@ 0x37
	bl	_call_via_r1
	b	.L_4ee4a
	.align	2, 0
.L_4ee28:
	.4byte	gCurrentPassage
.L_4ee2c:
	.4byte	gCurrentShopItem
.L_4ee30:
	.4byte	sWarioPoseRequestFuncTable
.L_4ee34:
	.4byte	gWarioData
.L_4ee38:
	ldr	r1, .L_4ee50
	ldr	r0, .L_4ee54
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	mov	r0, #56	@ 0x38
	bl	_call_via_r1
.L_4ee4a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_4ee50:
	.4byte	sWarioPoseRequestFuncTable
.L_4ee54:
	.4byte	gWarioData


thumb_func_start func_804EE58
func_804EE58:
	ldr	r0, .L_4ee68
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4ee66
	ldr	r1, .L_4ee6c
	mov	r0, #2
	strb	r0, [r1, #28]
.L_4ee66:
	bx	lr
.L_4ee68:
	.4byte	gGoldenDivaDefeatTimer
.L_4ee6c:
	.4byte	gCurrentSprite


thumb_func_start func_804EE70
func_804EE70:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	ldr	r4, .L_4eeec
	ldrh	r0, [r4, #0]
	ldr	r2, .L_4eef0
	and	r2, r0
	mov	r3, #0
	mov	r5, #0
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #3
	add	r0, r1, #0
	orr	r2, r0
	orr	r2, r3
	strh	r2, [r4, #0]
	strb	r3, [r4, #30]
	add	r1, r4, #0
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #33	@ 0x21
	strb	r3, [r0, #0]
	add	r0, #1
	mov	r6, #16
	strb	r6, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_4eef4
	str	r0, [r4, #4]
	strb	r3, [r4, #22]
	strh	r5, [r4, #20]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r3, [r0, #0]
	add	r0, #1
	strb	r3, [r0, #0]
	ldr	r0, .L_4eef8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4ef80
	strb	r6, [r4, #28]
	ldr	r0, .L_4eefc
	bl	func_804EA88
	ldr	r0, .L_4ef00
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #7
	bhi	.L_4ef7c
	lsl	r0, r0, #2
	ldr	r1, .L_4ef04
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_4eeec:
	.4byte	gCurrentSprite
.L_4eef0:
	.4byte	0xFFFB
.L_4eef4:
	.4byte	sUnk_83D7AEC
.L_4eef8:
	.4byte	gCurrentRoom
.L_4eefc:
	.4byte	sUnk_83DA1F4
.L_4ef00:
	.4byte	gCurrentShopItem
.L_4ef04:
	.4byte	.L_4ef08
.L_4ef08:
	.4byte	.L_4ef28
	.4byte	.L_4ef3c
	.4byte	.L_4ef50
	.4byte	.L_4ef64
	.4byte	.L_4f136
	.4byte	.L_4f136
	.4byte	.L_4f136
	.4byte	.L_4f136
.L_4ef28:
	ldr	r0, .L_4ef38
	ldrb	r1, [r0, #24]
	ldrh	r3, [r0, #8]
	ldrh	r0, [r0, #10]
	str	r0, [sp, #0]
	mov	r0, #188	@ 0xbc
	b	.L_4ef70
	.align	2, 0
.L_4ef38:
	.4byte	gCurrentSprite
.L_4ef3c:
	ldr	r0, .L_4ef4c
	ldrb	r1, [r0, #24]
	ldrh	r3, [r0, #8]
	ldrh	r0, [r0, #10]
	str	r0, [sp, #0]
	mov	r0, #190	@ 0xbe
	b	.L_4ef70
	.align	2, 0
.L_4ef4c:
	.4byte	gCurrentSprite
.L_4ef50:
	ldr	r0, .L_4ef60
	ldrb	r1, [r0, #24]
	ldrh	r3, [r0, #8]
	ldrh	r0, [r0, #10]
	str	r0, [sp, #0]
	mov	r0, #191	@ 0xbf
	b	.L_4ef70
	.align	2, 0
.L_4ef60:
	.4byte	gCurrentSprite
.L_4ef64:
	ldr	r0, .L_4ef78
	ldrb	r1, [r0, #24]
	ldrh	r3, [r0, #8]
	ldrh	r0, [r0, #10]
	str	r0, [sp, #0]
	mov	r0, #192	@ 0xc0
.L_4ef70:
	mov	r2, #0
	bl	SpriteSpawnAsChild
	b	.L_4f136
.L_4ef78:
	.4byte	gCurrentSprite
.L_4ef7c:
	strh	r5, [r4, #0]
	b	.L_4f136
.L_4ef80:
	ldr	r0, .L_4ef98
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #7
	bls	.L_4ef8c
	b	.L_4f0b8
.L_4ef8c:
	lsl	r0, r0, #2
	ldr	r1, .L_4ef9c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_4ef98:
	.4byte	gCurrentShopItem
.L_4ef9c:
	.4byte	.L_4efa0
.L_4efa0:
	.4byte	.L_4efc0
	.4byte	.L_4eff0
	.4byte	.L_4f028
	.4byte	.L_4f060
	.4byte	.L_4f098
	.4byte	.L_4f098
	.4byte	.L_4f098
	.4byte	.L_4f098
.L_4efc0:
	ldr	r4, .L_4efe8
	mov	r0, #17
	strb	r0, [r4, #28]
	ldr	r0, .L_4efec
	bl	func_804EA88
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	sub	r3, #84	@ 0x54
	ldrh	r0, [r4, #10]
	add	r0, #48	@ 0x30
	str	r0, [sp, #0]
	mov	r0, #188	@ 0xbc
	mov	r2, #0
	bl	func_801E430
	mov	r0, #188	@ 0xbc
	bl	SpriteUtilFindSpriteSlotWork3
	b	.L_4f102
.L_4efe8:
	.4byte	gCurrentSprite
.L_4efec:
	.4byte	sUnk_83DA238
.L_4eff0:
	ldr	r4, .L_4f020
	ldrh	r1, [r4, #0]
	mov	r0, #8
	orr	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #19
	strb	r0, [r4, #28]
	ldr	r0, .L_4f024
	bl	func_804EA88
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #80	@ 0x50
	str	r0, [sp, #0]
	mov	r0, #190	@ 0xbe
	mov	r2, #0
	bl	func_801E430
	mov	r0, #190	@ 0xbe
	bl	SpriteUtilFindSpriteSlotWork3
	b	.L_4f102
	.align	2, 0
.L_4f020:
	.4byte	gCurrentSprite
.L_4f024:
	.4byte	sUnk_83DA274
.L_4f028:
	ldr	r4, .L_4f058
	ldrh	r1, [r4, #0]
	mov	r0, #8
	orr	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #110	@ 0x6e
	strb	r0, [r4, #28]
	ldr	r0, .L_4f05c
	bl	func_804EA88
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, #96	@ 0x60
	str	r0, [sp, #0]
	mov	r0, #191	@ 0xbf
	mov	r2, #0
	bl	func_801E430
	mov	r0, #191	@ 0xbf
	bl	SpriteUtilFindSpriteSlotWork3
	b	.L_4f102
	.align	2, 0
.L_4f058:
	.4byte	gCurrentSprite
.L_4f05c:
	.4byte	sUnk_83DA24C
.L_4f060:
	ldr	r4, .L_4f090
	ldrh	r1, [r4, #0]
	mov	r0, #8
	orr	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #114	@ 0x72
	strb	r0, [r4, #28]
	ldr	r0, .L_4f094
	bl	func_804EA88
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #100	@ 0x64
	str	r0, [sp, #0]
	mov	r0, #192	@ 0xc0
	mov	r2, #0
	bl	func_801E430
	mov	r0, #192	@ 0xc0
	bl	SpriteUtilFindSpriteSlotWork3
	b	.L_4f102
	.align	2, 0
.L_4f090:
	.4byte	gCurrentSprite
.L_4f094:
	.4byte	sUnk_83DA274
.L_4f098:
	ldr	r1, .L_4f0b0
	ldrh	r2, [r1, #0]
	mov	r0, #8
	orr	r0, r2
	strh	r0, [r1, #0]
	mov	r0, #118	@ 0x76
	strb	r0, [r1, #28]
	ldr	r0, .L_4f0b4
	bl	func_804EA88
	b	.L_4f102
	.align	2, 0
.L_4f0b0:
	.4byte	gCurrentSprite
.L_4f0b4:
	.4byte	sUnk_83DA29C
.L_4f0b8:
	ldr	r0, .L_4f0e8
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_4f100
	ldr	r1, .L_4f0ec
	ldr	r0, .L_4f0f0
	str	r0, [r1, #0]
	ldr	r0, .L_4f0f4
	str	r0, [r1, #4]
	ldr	r0, .L_4f0f8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #8
	orr	r2, r0
	strh	r2, [r4, #0]
	ldr	r0, .L_4f0fc
	str	r0, [r4, #4]
	mov	r0, #55	@ 0x37
	strb	r0, [r4, #28]
	mov	r0, #191	@ 0xbf
	bl	m4aSongNumStart
	b	.L_4f102
	.align	2, 0
.L_4f0e8:
	.4byte	gCurrentPassage
.L_4f0ec:
	.4byte	0x40000D4
.L_4f0f0:
	.4byte	sUnk_83D6ADC
.L_4f0f4:
	.4byte	0x6013000
.L_4f0f8:
	.4byte	0x80000800
.L_4f0fc:
	.4byte	sUnk_83DA03C
.L_4f100:
	strh	r5, [r4, #0]
.L_4f102:
	ldr	r0, .L_4f124
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_4f136
	ldr	r0, .L_4f128
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	beq	.L_4f136
	ldr	r0, .L_4f12c
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_4f130
	mov	r0, #171	@ 0xab
	lsl	r0, r0, #2
	bl	m4aSongNumStart
	b	.L_4f136
.L_4f124:
	.4byte	gCurrentSprite
.L_4f128:
	.4byte	gCurrentPassage
.L_4f12c:
	.4byte	gCurrentShopItem
.L_4f130:
	ldr	r0, .L_4f140
	bl	m4aSongNumStart
.L_4f136:
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4f140:
	.4byte	0x2AB


thumb_func_start func_804F144
func_804F144:
	push	{r4, lr}
	sub	sp, #4
	ldr	r1, .L_4f19c
	ldr	r0, .L_4f1a0
	str	r0, [r1, #0]
	ldr	r0, .L_4f1a4
	str	r0, [r1, #4]
	ldr	r0, .L_4f1a8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r4, .L_4f1ac
	ldrh	r1, [r4, #0]
	mov	r0, #8
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldr	r0, .L_4f1b0
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #66	@ 0x42
	strb	r0, [r4, #28]
	ldrh	r0, [r4, #8]
	sub	r0, #64	@ 0x40
	ldrh	r1, [r4, #10]
	mov	r2, #64	@ 0x40
	bl	SpriteSpawnSecondary
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
.L_4f19c:
	.4byte	0x40000D4
.L_4f1a0:
	.4byte	sUnk_83D6ADC
.L_4f1a4:
	.4byte	0x6013000
.L_4f1a8:
	.4byte	0x80000800
.L_4f1ac:
	.4byte	gCurrentSprite
.L_4f1b0:
	.4byte	sUnk_83DA0AC


thumb_func_start func_804F1B4
func_804F1B4:
	push	{r4, lr}
	ldr	r4, .L_4f1fc
	ldrh	r0, [r4, #10]
	sub	r0, #4
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	add	r0, #8
	strh	r0, [r4, #8]
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r1, r0, #0
	ldr	r0, .L_4f200
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_4f1f6
	strh	r1, [r4, #8]
	ldr	r0, .L_4f204
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	mov	r0, #0
	strh	r0, [r4, #20]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #160	@ 0xa0
	strb	r0, [r1, #0]
	mov	r0, #64	@ 0x40
	strb	r0, [r4, #28]
	mov	r0, #27
	bl	m4aSongNumStart
.L_4f1f6:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_4f1fc:
	.4byte	gCurrentSprite
.L_4f200:
	.4byte	gSpriteAiCollisionResult
.L_4f204:
	.4byte	sUnk_83DA0CC


thumb_func_start func_804F208
func_804F208:
	push	{r4, lr}
	sub	sp, #4
	ldr	r1, .L_4f264
	ldr	r0, .L_4f268
	str	r0, [r1, #0]
	ldr	r0, .L_4f26c
	str	r0, [r1, #4]
	ldr	r0, .L_4f270
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r4, .L_4f274
	ldrh	r1, [r4, #0]
	mov	r0, #8
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldr	r0, .L_4f278
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #160	@ 0xa0
	strb	r0, [r1, #0]
	mov	r0, #64	@ 0x40
	strb	r0, [r4, #28]
	ldrh	r0, [r4, #8]
	sub	r0, #64	@ 0x40
	ldrh	r1, [r4, #10]
	mov	r2, #64	@ 0x40
	bl	SpriteSpawnSecondary
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4f264:
	.4byte	0x40000D4
.L_4f268:
	.4byte	sUnk_83D6ADC
.L_4f26c:
	.4byte	0x6013000
.L_4f270:
	.4byte	0x80000800
.L_4f274:
	.4byte	gCurrentSprite
.L_4f278:
	.4byte	sUnk_83DA0CC


thumb_func_start func_804F27C
func_804F27C:
	ldr	r2, .L_4f2a0
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_4f29c
	ldr	r0, .L_4f2a4
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #55	@ 0x37
	strb	r0, [r2, #28]
.L_4f29c:
	bx	lr
	.align	2, 0
.L_4f2a0:
	.4byte	gCurrentSprite
.L_4f2a4:
	.4byte	sUnk_83DA03C


thumb_func_start func_804F2A8
func_804F2A8:
	push	{r4, lr}
	ldr	r0, .L_4f2e4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_4f312
	ldr	r4, .L_4f2e8
	ldr	r0, [r4, #20]
	ldr	r1, .L_4f2ec
	and	r0, r1
	ldr	r1, .L_4f2f0
	cmp	r0, r1
	bne	.L_4f2c6
	mov	r0, #27
	bl	m4aSongNumStart
.L_4f2c6:
	ldrh	r2, [r4, #10]
	lsr	r0, r2, #2
	ldr	r1, .L_4f2f4
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	ldr	r1, .L_4f2f8
	add	r0, r0, r1
	lsr	r0, r0, #16
	cmp	r0, #112	@ 0x70
	bls	.L_4f2fc
	add	r0, r2, #4
	strh	r0, [r4, #10]
	b	.L_4f312
.L_4f2e4:
	.4byte	gSpriteAiAttackPhase
.L_4f2e8:
	.4byte	gCurrentSprite
.L_4f2ec:
	.4byte	0xFFFFFF
.L_4f2f0:
	.4byte	0x10002
.L_4f2f4:
	.4byte	gBg1XPosition
.L_4f2f8:
	.4byte	0xFF800000
.L_4f2fc:
	.2byte	0x4806
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
	mov	r0, #56	@ 0x38
	strb	r0, [r4, #28]
.L_4f312:
	pop	{r4}
	pop	{r0}
	bx	r0
	.4byte	sUnk_83DA1B4


thumb_func_start func_804F31C
func_804F31C:
	push	{lr}
	ldr	r3, .L_4f35c
	mov	r0, #39	@ 0x27
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	sub	r0, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_4f356
	ldr	r0, .L_4f360
	str	r0, [r3, #4]
	strb	r2, [r3, #22]
	mov	r1, #0
	strh	r2, [r3, #20]
	mov	r0, #14
	mov	r2, ip
	strb	r0, [r2, #0]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #57	@ 0x39
	strb	r0, [r3, #28]
	mov	r0, #13
	bl	m4aSongNumStart
.L_4f356:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4f35c:
	.4byte	gCurrentSprite
.L_4f360:
	.4byte	sUnk_83DA18C


thumb_func_start func_804F364
func_804F364:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_4f394
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r6, .L_4f398
	lsl	r0, r3, #1
	add	r0, r0, r6
	ldrh	r5, [r0, #0]
	mov	r4, #0
	ldrsh	r1, [r0, r4]
	ldr	r0, .L_4f39c
	add	r4, r2, #0
	cmp	r1, r0
	bne	.L_4f3a0
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r6
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_4f3aa
	.align	2, 0
.L_4f394:
	.4byte	gCurrentSprite
.L_4f398:
	.4byte	sUnk_83DA2F0
.L_4f39c:
	.4byte	0x7FFF
.L_4f3a0:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r5
.L_4f3aa:
	strh	r0, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, #12
	strh	r0, [r4, #10]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	cmp	r5, #0
	bne	.L_4f3ec
	ldrh	r0, [r4, #8]
	sub	r0, #42	@ 0x2a
	ldrh	r1, [r4, #10]
	add	r1, #42	@ 0x2a
	mov	r2, #70	@ 0x46
	bl	SpriteSpawnSecondary
	ldr	r0, .L_4f3f4
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r5, [r4, #20]
	mov	r0, #58	@ 0x3a
	strb	r0, [r4, #28]
	mov	r0, #197	@ 0xc5
	bl	m4aSongNumStart
	ldr	r1, .L_4f3f8
	mov	r0, #2
	strb	r0, [r1, #0]
.L_4f3ec:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4f3f4:
	.4byte	sUnk_83DA0AC
.L_4f3f8:
	.4byte	gSpriteAiAttackPhase


thumb_func_start func_804F3FC
func_804F3FC:
	push	{lr}
	ldr	r2, .L_4f424
	ldrh	r0, [r2, #10]
	sub	r0, #6
	strh	r0, [r2, #10]
	ldrh	r3, [r2, #8]
	lsr	r1, r3, #2
	ldr	r0, .L_4f428
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r1, #143	@ 0x8f
	bhi	.L_4f42c
	add	r0, r3, #0
	add	r0, #8
	strh	r0, [r2, #8]
	b	.L_4f44a
	.align	2, 0
.L_4f424:
	.4byte	gCurrentSprite
.L_4f428:
	.4byte	gBg1YPosition
.L_4f42c:
	ldr	r0, .L_4f450
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r0, #0
	strh	r0, [r2, #20]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #180	@ 0xb4
	strb	r0, [r1, #0]
	mov	r0, #59	@ 0x3b
	strb	r0, [r2, #28]
	mov	r0, #27
	bl	m4aSongNumStart
.L_4f44a:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4f450:
	.4byte	sUnk_83DA1D4


thumb_func_start func_804F454
func_804F454:
	push	{lr}
	ldr	r2, .L_4f47c
	mov	r0, #39	@ 0x27
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r0, [r0, #0]
	add	r3, r0, #0
	cmp	r3, #0
	beq	.L_4f4a4
	sub	r0, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #70	@ 0x46
	bne	.L_4f484
	ldr	r1, .L_4f480
	mov	r0, #3
	strb	r0, [r1, #0]
	b	.L_4f4d2
.L_4f47c:
	.4byte	gCurrentSprite
.L_4f480:
	.4byte	gSpriteAiAttackPhase
.L_4f484:
	cmp	r1, #60	@ 0x3c
	bne	.L_4f490
	mov	r0, #198	@ 0xc6
	bl	m4aSongNumStart
	b	.L_4f4d2
.L_4f490:
	cmp	r1, #0
	bne	.L_4f4d2
	ldr	r0, .L_4f4a0
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	b	.L_4f4d2
	.align	2, 0
.L_4f4a0:
	.4byte	sUnk_83DA0BC
.L_4f4a4:
	ldr	r0, .L_4f4d8
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bne	.L_4f4d2
	mov	r0, #60	@ 0x3c
	strb	r0, [r2, #28]
	ldr	r0, .L_4f4dc
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	mov	r1, #0
	strh	r3, [r2, #20]
	mov	r0, #240	@ 0xf0
	mov	r3, ip
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	ldrh	r0, [r2, #8]
	sub	r0, #36	@ 0x24
	strh	r0, [r2, #8]
	mov	r0, #192	@ 0xc0
	bl	m4aSongNumStart
.L_4f4d2:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4f4d8:
	.4byte	gSpriteAiAttackPhase
.L_4f4dc:
	.4byte	sUnk_83DA144


thumb_func_start func_804F4E0
func_804F4E0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, .L_4f5a0
	ldrh	r1, [r7, #0]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	strh	r0, [r7, #0]
	ldr	r0, .L_4f5a4
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
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
	ldrh	r0, [r7, #8]
	sub	r0, #1
	strh	r0, [r7, #8]
	ldrh	r0, [r7, #10]
	add	r0, #1
	strh	r0, [r7, #10]
	add	r1, r7, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4f594
	mov	r0, #61	@ 0x3d
	strb	r0, [r7, #28]
	mov	r0, #252	@ 0xfc
	strb	r0, [r1, #0]
.L_4f594:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4f5a0:
	.4byte	gCurrentSprite
.L_4f5a4:
	.4byte	sSinCosTable


thumb_func_start func_804F5A8
func_804F5A8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, .L_4f65c
	ldrh	r1, [r7, #0]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	strh	r0, [r7, #0]
	ldr	r6, .L_4f660
	add	r5, r7, #0
	add	r5, #40	@ 0x28
	ldrb	r0, [r5, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r0, #39	@ 0x27
	add	r0, r0, r7
	mov	r8, r0
	ldrb	r0, [r0, #0]
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #12]
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r1, r8
	ldrb	r0, [r1, #0]
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #14]
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	mov	r1, r8
	ldrb	r0, [r1, #0]
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #16]
	ldrb	r0, [r5, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r1, r8
	ldrb	r0, [r1, #0]
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #18]
	ldrb	r0, [r5, #0]
	add	r0, #1
	strb	r0, [r5, #0]
	mov	r1, r8
	ldrb	r0, [r1, #0]
	sub	r0, #4
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #8
	bls	.L_4f668
	cmp	r0, #152	@ 0x98
	bne	.L_4f67c
	ldr	r1, .L_4f664
	mov	r0, #5
	strb	r0, [r1, #0]
	b	.L_4f67c
	.align	2, 0
.L_4f65c:
	.4byte	gCurrentSprite
.L_4f660:
	.4byte	sSinCosTable
.L_4f664:
	.4byte	gSpriteAiAttackPhase
.L_4f668:
	mov	r0, #0
	strh	r0, [r7, #0]
	ldrh	r0, [r7, #8]
	ldrh	r1, [r7, #10]
	mov	r2, #67	@ 0x43
	bl	SpriteSpawnSecondary
	mov	r0, #119	@ 0x77
	bl	m4aSongNumStart
.L_4f67c:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_804F688
func_804F688:
	push	{r4, lr}
	ldr	r0, .L_4f6c8
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_4f69a
	ldr	r0, .L_4f6cc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_4f6fe
.L_4f69a:
	ldr	r4, .L_4f6d0
	ldrh	r0, [r4, #10]
	lsr	r0, r0, #2
	ldr	r1, .L_4f6d4
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	ldr	r1, .L_4f6d8
	add	r0, r0, r1
	lsr	r0, r0, #16
	cmp	r0, #133	@ 0x85
	bls	.L_4f6e0
	ldr	r0, .L_4f6dc
	bl	func_804EA88
	ldrh	r0, [r4, #10]
	add	r0, #2
	strh	r0, [r4, #10]
	bl	func_804EB30
	b	.L_4f6fe
	.align	2, 0
.L_4f6c8:
	.4byte	gCurrentPassage
.L_4f6cc:
	.4byte	gSpriteAiAttackPhase
.L_4f6d0:
	.4byte	gCurrentSprite
.L_4f6d4:
	.4byte	gBg1XPosition
.L_4f6d8:
	.4byte	0xFF950000
.L_4f6dc:
	.4byte	sUnk_83DA29C
.L_4f6e0:
	mov	r1, #0
	mov	r0, #119	@ 0x77
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_4f704
	bl	func_804EA88
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
.L_4f6fe:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_4f704:
	.4byte	sUnk_83DA2E4


thumb_func_start func_804F708
func_804F708:
	push	{lr}
	sub	sp, #4
	ldr	r0, .L_4f73c
	bl	func_804EA88
	ldr	r2, .L_4f740
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4f7c8
	mov	r0, #49	@ 0x31
	strb	r0, [r2, #28]
	ldr	r0, .L_4f744
	ldrb	r0, [r0, #0]
	cmp	r0, #6
	beq	.L_4f770
	cmp	r0, #6
	bgt	.L_4f748
	cmp	r0, #5
	beq	.L_4f752
	b	.L_4f7c8
	.align	2, 0
.L_4f73c:
	.4byte	sUnk_83DA2E4
.L_4f740:
	.4byte	gCurrentSprite
.L_4f744:
	.4byte	gCurrentShopItem
.L_4f748:
	cmp	r0, #7
	beq	.L_4f790
	cmp	r0, #8
	beq	.L_4f7b0
	b	.L_4f7c8
.L_4f752:
	ldrb	r1, [r2, #24]
	ldrh	r3, [r2, #8]
	ldrh	r0, [r2, #10]
	str	r0, [sp, #0]
	mov	r0, #193	@ 0xc1
	mov	r2, #0
	bl	func_801E430
	ldr	r0, .L_4f76c
	bl	m4aSongNumStart
	b	.L_4f7c8
	.align	2, 0
.L_4f76c:
	.4byte	0x1FD
.L_4f770:
	ldrb	r1, [r2, #24]
	ldrh	r3, [r2, #8]
	sub	r3, #12
	ldrh	r0, [r2, #10]
	add	r0, #20
	str	r0, [sp, #0]
	mov	r0, #194	@ 0xc2
	mov	r2, #0
	bl	func_801E430
	ldr	r0, .L_4f78c
	bl	m4aSongNumStart
	b	.L_4f7c8
.L_4f78c:
	.4byte	0x1FF
.L_4f790:
	ldrb	r1, [r2, #24]
	ldrh	r3, [r2, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r2, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #195	@ 0xc3
	mov	r2, #0
	bl	func_801E430
	ldr	r0, .L_4f7ac
	bl	m4aSongNumStart
	b	.L_4f7c8
.L_4f7ac:
	.4byte	0x202
.L_4f7b0:
	ldrb	r1, [r2, #24]
	ldrh	r3, [r2, #8]
	sub	r3, #64	@ 0x40
	ldrh	r0, [r2, #10]
	str	r0, [sp, #0]
	mov	r0, #196	@ 0xc4
	mov	r2, #0
	bl	func_801E430
	ldr	r0, .L_4f7d0
	bl	m4aSongNumStart
.L_4f7c8:
	add	sp, #4
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4f7d0:
	.4byte	0x205


thumb_func_start func_804F7D4
func_804F7D4:
	push	{r4, r5, lr}
	ldr	r0, .L_4f828
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_4f7e6
	ldr	r0, .L_4f82c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_4f862
.L_4f7e6:
	ldr	r4, .L_4f830
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r5, [r0, #0]
	ldrh	r0, [r4, #10]
	lsr	r0, r0, #2
	ldr	r1, .L_4f834
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	ldr	r1, .L_4f838
	add	r0, r0, r1
	lsr	r0, r0, #16
	cmp	r0, #133	@ 0x85
	bls	.L_4f844
	ldr	r0, .L_4f83c
	bl	func_804EA88
	ldrh	r0, [r4, #10]
	add	r0, #2
	strh	r0, [r4, #10]
	ldr	r2, .L_4f840
	mov	r0, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #10]
	add	r0, #2
	strh	r0, [r1, #10]
	bl	func_804EB30
	b	.L_4f862
.L_4f828:
	.4byte	gCurrentPassage
.L_4f82c:
	.4byte	gSpriteAiAttackPhase
.L_4f830:
	.4byte	gCurrentSprite
.L_4f834:
	.4byte	gBg1XPosition
.L_4f838:
	.4byte	0xFF950000
.L_4f83c:
	.4byte	sUnk_83DA274
.L_4f840:
	.4byte	gSpriteData
.L_4f844:
	mov	r1, #0
	mov	r0, #115	@ 0x73
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_4f868
	bl	func_804EA88
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #120	@ 0x78
	strb	r0, [r1, #0]
.L_4f862:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_4f868:
	.4byte	sUnk_83DA2C8


thumb_func_start func_804F86C
func_804F86C:
	push	{r4, r5, lr}
	ldr	r3, .L_4f8ac
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r5, [r0, #0]
	mov	r0, #41	@ 0x29
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	sub	r1, r0, #1
	mov	r0, ip
	strb	r1, [r0, #0]
	mov	r4, #255	@ 0xff
	lsl	r0, r1, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	beq	.L_4f8b8
	add	r0, r2, #0
	cmp	r0, #50	@ 0x32
	bne	.L_4f8a0
	ldr	r1, .L_4f8b0
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	mov	r1, #17
	strb	r1, [r0, #28]
.L_4f8a0:
	ldr	r0, .L_4f8b4
	bl	func_804EA88
	bl	func_804EB58
	b	.L_4f8d2
.L_4f8ac:
	.4byte	gCurrentSprite
.L_4f8b0:
	.4byte	gSpriteData
.L_4f8b4:
	.4byte	sUnk_83DA2C8
.L_4f8b8:
	mov	r0, #116	@ 0x74
	strb	r0, [r3, #28]
	orr	r1, r4
	mov	r0, ip
	strb	r1, [r0, #0]
	add	r0, r3, #0
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	ldr	r0, .L_4f8d8
	bl	func_804EA88
.L_4f8d2:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_4f8d8:
	.4byte	sUnk_83DA2E4


thumb_func_start func_804F8DC
func_804F8DC:
	push	{r4, r5, lr}
	ldr	r4, .L_4f8fc
	add	r5, r4, #0
	add	r5, #41	@ 0x29
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_4f904
	ldr	r0, .L_4f900
	bl	func_804EA88
	b	.L_4f93e
	.align	2, 0
.L_4f8fc:
	.4byte	gCurrentSprite
.L_4f900:
	.4byte	sUnk_83DA2E4
.L_4f904:
	ldr	r0, .L_4f918
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_4f920
	ldr	r0, .L_4f91c
	bl	func_804EA88
	mov	r0, #120	@ 0x78
	strb	r0, [r4, #28]
	b	.L_4f93e
.L_4f918:
	.4byte	gCurrentPassage
.L_4f91c:
	.4byte	sUnk_83DA2E4
.L_4f920:
	mov	r0, #117	@ 0x75
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_4f944
	bl	func_804EA88
	mov	r0, #250	@ 0xfa
	strb	r0, [r5, #0]
	ldr	r0, .L_4f948
	bl	m4aSongNumStart
.L_4f93e:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_4f944:
	.4byte	sUnk_83DA260
.L_4f948:
	.4byte	0x2AD


thumb_func_start func_804F94C
func_804F94C:
	push	{r4, r5, lr}
	ldr	r4, .L_4f998
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r5, [r0, #0]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	beq	.L_4f9e0
	ldr	r0, .L_4f99c
	bl	func_804EA88
	bl	func_804EB30
	ldr	r0, .L_4f9a0
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	beq	.L_4f9a8
	cmp	r0, #4
	beq	.L_4f9c4
	ldrh	r0, [r4, #10]
	sub	r0, #2
	strh	r0, [r4, #10]
	ldr	r2, .L_4f9a4
	mov	r0, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #10]
	sub	r0, #2
	strh	r0, [r1, #10]
	b	.L_4f9ec
	.align	2, 0
.L_4f998:
	.4byte	gCurrentSprite
.L_4f99c:
	.4byte	sUnk_83DA260
.L_4f9a0:
	.4byte	gCurrentPassage
.L_4f9a4:
	.4byte	gSpriteData
.L_4f9a8:
	ldrh	r0, [r4, #10]
	sub	r0, #3
	strh	r0, [r4, #10]
	ldr	r2, .L_4f9c0
	mov	r0, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #10]
	sub	r0, #3
	strh	r0, [r1, #10]
	b	.L_4f9ec
.L_4f9c0:
	.4byte	gSpriteData
.L_4f9c4:
	ldrh	r0, [r4, #10]
	sub	r0, #4
	strh	r0, [r4, #10]
	ldr	r2, .L_4f9dc
	mov	r0, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #10]
	sub	r0, #4
	strh	r0, [r1, #10]
	b	.L_4f9ec
.L_4f9dc:
	.4byte	gSpriteData
.L_4f9e0:
	strh	r2, [r4, #0]
	ldr	r1, .L_4f9f4
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strh	r2, [r0, #0]
.L_4f9ec:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4f9f4:
	.4byte	gSpriteData


thumb_func_start func_804F9F8
func_804F9F8:
	push	{r4, r5, r6, r7, lr}
	ldr	r7, .L_4fa40
	ldrb	r0, [r7, #0]
	cmp	r0, #5
	bne	.L_4fa0c
	ldr	r0, .L_4fa44
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4fa0c
	b	.L_4fb14
.L_4fa0c:
	ldr	r5, .L_4fa48
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	ldrb	r6, [r0, #0]
	ldrh	r1, [r5, #10]
	lsr	r1, r1, #2
	ldr	r0, .L_4fa4c
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r4, r1, #16
	ldr	r0, .L_4fa50
	bl	func_804EA88
	bl	func_804EB30
	ldrb	r0, [r7, #0]
	cmp	r0, #3
	beq	.L_4fa72
	cmp	r0, #3
	bgt	.L_4fa54
	cmp	r0, #2
	beq	.L_4fa5e
	b	.L_4fac4
	.align	2, 0
.L_4fa40:
	.4byte	gCurrentPassage
.L_4fa44:
	.4byte	gSpriteAiAttackPhase
.L_4fa48:
	.4byte	gCurrentSprite
.L_4fa4c:
	.4byte	gBg1XPosition
.L_4fa50:
	.4byte	sUnk_83DA24C
.L_4fa54:
	cmp	r0, #4
	beq	.L_4fa9c
	cmp	r0, #5
	beq	.L_4fab0
	b	.L_4fac4
.L_4fa5e:
	add	r0, r4, #0
	sub	r0, #48	@ 0x30
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #192	@ 0xc0
	bls	.L_4faf4
	ldrh	r0, [r5, #10]
	add	r0, #2
	strh	r0, [r5, #10]
	b	.L_4fad8
.L_4fa72:
	add	r0, r4, #0
	sub	r0, #127	@ 0x7f
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #113	@ 0x71
	bls	.L_4faf4
	ldrh	r0, [r5, #10]
	add	r0, #3
	strh	r0, [r5, #10]
	ldr	r2, .L_4fa98
	mov	r0, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #10]
	add	r0, #3
	strh	r0, [r1, #10]
	b	.L_4fb14
	.align	2, 0
.L_4fa98:
	.4byte	gSpriteData
.L_4fa9c:
	add	r0, r4, #0
	sub	r0, #96	@ 0x60
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #144	@ 0x90
	bls	.L_4faf4
	ldrh	r0, [r5, #10]
	add	r0, #2
	strh	r0, [r5, #10]
	b	.L_4fad8
.L_4fab0:
	add	r0, r4, #0
	sub	r0, #103	@ 0x67
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #137	@ 0x89
	bls	.L_4faf4
	ldrh	r0, [r5, #10]
	add	r0, #2
	strh	r0, [r5, #10]
	b	.L_4fad8
.L_4fac4:
	add	r0, r4, #0
	sub	r0, #87	@ 0x57
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #153	@ 0x99
	bls	.L_4faf4
	ldr	r1, .L_4faec
	ldrh	r0, [r1, #10]
	add	r0, #2
	strh	r0, [r1, #10]
.L_4fad8:
	ldr	r2, .L_4faf0
	mov	r0, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #10]
	add	r0, #2
	strh	r0, [r1, #10]
	b	.L_4fb14
	.align	2, 0
.L_4faec:
	.4byte	gCurrentSprite
.L_4faf0:
	.4byte	gSpriteData
.L_4faf4:
	ldr	r4, .L_4fb1c
	mov	r1, #0
	mov	r0, #111	@ 0x6f
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_4fb20
	bl	func_804EA88
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #120	@ 0x78
	strb	r0, [r1, #0]
.L_4fb14:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4fb1c:
	.4byte	gCurrentSprite
.L_4fb20:
	.4byte	sUnk_83DA2C8


thumb_func_start func_804FB24
func_804FB24:
	push	{r4, lr}
	ldr	r3, .L_4fb64
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r4, [r0, #0]
	mov	r0, #41	@ 0x29
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	sub	r1, r0, #1
	mov	r0, ip
	strb	r1, [r0, #0]
	lsl	r0, r1, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	beq	.L_4fb70
	add	r0, r2, #0
	cmp	r0, #50	@ 0x32
	bne	.L_4fb56
	ldr	r1, .L_4fb68
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #17
	strb	r1, [r0, #28]
.L_4fb56:
	ldr	r0, .L_4fb6c
	bl	func_804EA88
	bl	func_804EB58
	b	.L_4fb8a
	.align	2, 0
.L_4fb64:
	.4byte	gCurrentSprite
.L_4fb68:
	.4byte	gSpriteData
.L_4fb6c:
	.4byte	sUnk_83DA2C8
.L_4fb70:
	mov	r0, #112	@ 0x70
	strb	r0, [r3, #28]
	mov	r0, #210	@ 0xd2
	mov	r1, ip
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	ldr	r0, .L_4fb90
	bl	func_804EA88
.L_4fb8a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_4fb90:
	.4byte	sUnk_83DA2E4


thumb_func_start func_804FB94
func_804FB94:
	push	{r4, r5, lr}
	ldr	r4, .L_4fbb4
	add	r5, r4, #0
	add	r5, #41	@ 0x29
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_4fbbc
	ldr	r0, .L_4fbb8
	bl	func_804EA88
	b	.L_4fbf6
	.align	2, 0
.L_4fbb4:
	.4byte	gCurrentSprite
.L_4fbb8:
	.4byte	sUnk_83DA2E4
.L_4fbbc:
	ldr	r0, .L_4fbd0
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_4fbd8
	ldr	r0, .L_4fbd4
	bl	func_804EA88
	mov	r0, #120	@ 0x78
	strb	r0, [r4, #28]
	b	.L_4fbf6
.L_4fbd0:
	.4byte	gCurrentPassage
.L_4fbd4:
	.4byte	sUnk_83DA2E4
.L_4fbd8:
	mov	r0, #113	@ 0x71
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_4fbfc
	bl	func_804EA88
	mov	r0, #250	@ 0xfa
	strb	r0, [r5, #0]
	ldr	r0, .L_4fc00
	bl	m4aSongNumStart
.L_4fbf6:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_4fbfc:
	.4byte	sUnk_83DA274
.L_4fc00:
	.4byte	0x2AD


thumb_func_start func_804FC04
func_804FC04:
	push	{r4, r5, lr}
	ldr	r4, .L_4fc50
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r5, [r0, #0]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	beq	.L_4fc7c
	ldr	r0, .L_4fc54
	bl	func_804EA88
	bl	func_804EB30
	ldr	r0, .L_4fc58
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	beq	.L_4fc36
	cmp	r0, #4
	bne	.L_4fc60
.L_4fc36:
	ldrh	r0, [r4, #10]
	sub	r0, #4
	strh	r0, [r4, #10]
	ldr	r2, .L_4fc5c
	mov	r0, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #10]
	sub	r0, #4
	strh	r0, [r1, #10]
	b	.L_4fc88
	.align	2, 0
.L_4fc50:
	.4byte	gCurrentSprite
.L_4fc54:
	.4byte	sUnk_83DA288
.L_4fc58:
	.4byte	gCurrentPassage
.L_4fc5c:
	.4byte	gSpriteData
.L_4fc60:
	ldrh	r0, [r4, #10]
	sub	r0, #3
	strh	r0, [r4, #10]
	ldr	r2, .L_4fc78
	mov	r0, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #10]
	sub	r0, #3
	strh	r0, [r1, #10]
	b	.L_4fc88
.L_4fc78:
	.4byte	gSpriteData
.L_4fc7c:
	strh	r2, [r4, #0]
	ldr	r1, .L_4fc90
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strh	r2, [r0, #0]
.L_4fc88:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4fc90:
	.4byte	gSpriteData


thumb_func_start func_804FC94
func_804FC94:
	push	{r4, r5, lr}
	ldr	r0, .L_4fce8
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_4fca6
	ldr	r0, .L_4fcec
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_4fd22
.L_4fca6:
	ldr	r4, .L_4fcf0
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r5, [r0, #0]
	ldrh	r0, [r4, #10]
	lsr	r0, r0, #2
	ldr	r1, .L_4fcf4
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	ldr	r1, .L_4fcf8
	add	r0, r0, r1
	lsr	r0, r0, #16
	cmp	r0, #153	@ 0x99
	bls	.L_4fd04
	ldr	r0, .L_4fcfc
	bl	func_804EA88
	ldrh	r0, [r4, #10]
	add	r0, #2
	strh	r0, [r4, #10]
	ldr	r2, .L_4fd00
	mov	r0, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #10]
	add	r0, #2
	strh	r0, [r1, #10]
	bl	func_804EB30
	b	.L_4fd22
.L_4fce8:
	.4byte	gCurrentPassage
.L_4fcec:
	.4byte	gSpriteAiAttackPhase
.L_4fcf0:
	.4byte	gCurrentSprite
.L_4fcf4:
	.4byte	gBg1XPosition
.L_4fcf8:
	.4byte	0xFFA90000
.L_4fcfc:
	.4byte	sUnk_83DA274
.L_4fd00:
	.4byte	gSpriteData
.L_4fd04:
	mov	r1, #0
	mov	r0, #20
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_4fd28
	bl	func_804EA88
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #120	@ 0x78
	strb	r0, [r1, #0]
.L_4fd22:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_4fd28:
	.4byte	sUnk_83DA2C8


thumb_func_start func_804FD2C
func_804FD2C:
	push	{r4, lr}
	ldr	r2, .L_4fd5c
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	ldrb	r4, [r0, #0]
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	ldrb	r0, [r3, #0]
	sub	r1, r0, #1
	strb	r1, [r3, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_4fd64
	lsr	r0, r0, #24
	cmp	r0, #50	@ 0x32
	bne	.L_4fd78
	ldr	r1, .L_4fd60
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	mov	r1, #17
	strb	r1, [r0, #28]
	b	.L_4fd78
	.align	2, 0
.L_4fd5c:
	.4byte	gCurrentSprite
.L_4fd60:
	.4byte	gSpriteData
.L_4fd64:
	ldr	r0, .L_4fd70
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_4fd74
	mov	r0, #120	@ 0x78
	b	.L_4fd76
.L_4fd70:
	.4byte	gCurrentPassage
.L_4fd74:
	mov	r0, #21
.L_4fd76:
	strb	r0, [r2, #28]
.L_4fd78:
	ldr	r0, .L_4fd88
	bl	func_804EA88
	bl	func_804EB58
	pop	{r4}
	pop	{r0}
	bx	r0
.L_4fd88:
	.4byte	sUnk_83DA2C8


thumb_func_start func_804FD8C
func_804FD8C:
	push	{lr}
	ldr	r2, .L_4fdb4
	mov	r1, #0
	mov	r0, #22
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #250	@ 0xfa
	strb	r0, [r1, #0]
	ldr	r0, .L_4fdb8
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4fdb4:
	.4byte	gCurrentSprite
.L_4fdb8:
	.4byte	0x2AD


thumb_func_start func_804FDBC
func_804FDBC:
	push	{r4, r5, lr}
	ldr	r4, .L_4fdfc
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r5, [r0, #0]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	beq	.L_4fe08
	ldr	r0, .L_4fe00
	bl	func_804EA88
	ldrh	r0, [r4, #10]
	sub	r0, #2
	strh	r0, [r4, #10]
	ldr	r2, .L_4fe04
	mov	r0, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #10]
	sub	r0, #2
	strh	r0, [r1, #10]
	bl	func_804EB30
	b	.L_4fe14
	.align	2, 0
.L_4fdfc:
	.4byte	gCurrentSprite
.L_4fe00:
	.4byte	sUnk_83DA260
.L_4fe04:
	.4byte	gSpriteData
.L_4fe08:
	strh	r2, [r4, #0]
	ldr	r1, .L_4fe1c
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	strh	r2, [r0, #0]
.L_4fe14:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4fe1c:
	.4byte	gSpriteData


thumb_func_start func_804FE20
func_804FE20:
	push	{r4, r5, lr}
	ldr	r0, .L_4fe74
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_4fe32
	ldr	r0, .L_4fe78
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_4feba
.L_4fe32:
	ldr	r4, .L_4fe7c
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r5, [r0, #0]
	ldrh	r0, [r4, #10]
	lsr	r0, r0, #2
	ldr	r1, .L_4fe80
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	ldr	r1, .L_4fe84
	add	r0, r0, r1
	lsr	r0, r0, #16
	cmp	r0, #169	@ 0xa9
	bls	.L_4fe90
	ldr	r0, .L_4fe88
	bl	func_804EA88
	ldrh	r0, [r4, #10]
	add	r0, #2
	strh	r0, [r4, #10]
	ldr	r2, .L_4fe8c
	mov	r0, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #10]
	add	r0, #2
	strh	r0, [r1, #10]
	bl	func_804EB30
	b	.L_4feba
.L_4fe74:
	.4byte	gCurrentPassage
.L_4fe78:
	.4byte	gSpriteAiAttackPhase
.L_4fe7c:
	.4byte	gCurrentSprite
.L_4fe80:
	.4byte	gBg1XPosition
.L_4fe84:
	.4byte	0xFFB90000
.L_4fe88:
	.4byte	sUnk_83DA238
.L_4fe8c:
	.4byte	gSpriteData
.L_4fe90:
	mov	r1, #0
	mov	r0, #18
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_4fec0
	bl	func_804EA88
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #179	@ 0xb3
	strb	r0, [r1, #0]
	ldr	r1, .L_4fec4
	mov	r0, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r1
	mov	r1, #17
	strb	r1, [r0, #28]
.L_4feba:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_4fec0:
	.4byte	sUnk_83DA2B0
.L_4fec4:
	.4byte	gSpriteData


thumb_func_start func_804FEC8
func_804FEC8:
	push	{r4, lr}
	ldr	r1, .L_4fef0
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	ldrb	r4, [r0, #0]
	add	r2, r1, #0
	add	r2, #41	@ 0x29
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_4ff02
	ldr	r0, .L_4fef4
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_4fef8
	mov	r0, #120	@ 0x78
	strb	r0, [r1, #28]
	b	.L_4ff02
.L_4fef0:
	.4byte	gCurrentSprite
.L_4fef4:
	.4byte	gCurrentPassage
.L_4fef8:
	mov	r0, #25
	strb	r0, [r1, #28]
	ldr	r0, .L_4ff3c
	bl	m4aSongNumStart
.L_4ff02:
	ldr	r0, .L_4ff40
	mov	ip, r0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4ff92
	mov	r0, ip
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_4ff48
	mov	r1, ip
	ldrh	r2, [r1, #10]
	add	r0, r2, #0
	sub	r0, #28
	strh	r0, [r1, #10]
	ldr	r3, .L_4ff44
	mov	r0, #44	@ 0x2c
	add	r1, r4, #0
	mul	r1, r0
	add	r1, r1, r3
	sub	r2, #84	@ 0x54
	strh	r2, [r1, #10]
	mov	r2, ip
	ldrh	r0, [r2, #8]
	sub	r0, #64	@ 0x40
	strh	r0, [r1, #8]
	b	.L_4ff92
	.align	2, 0
.L_4ff3c:
	.4byte	0x2AD
.L_4ff40:
	.4byte	gCurrentSprite
.L_4ff44:
	.4byte	gSpriteData
.L_4ff48:
	cmp	r0, #2
	bne	.L_4ff78
	mov	r0, ip
	ldrh	r2, [r0, #10]
	add	r0, r2, #0
	add	r0, #52	@ 0x34
	mov	r1, ip
	strh	r0, [r1, #10]
	ldr	r3, .L_4ff74
	mov	r0, #44	@ 0x2c
	add	r1, r4, #0
	mul	r1, r0
	add	r1, r1, r3
	add	r2, #100	@ 0x64
	strh	r2, [r1, #10]
	mov	r2, ip
	ldrh	r0, [r2, #8]
	sub	r0, #96	@ 0x60
	strh	r0, [r1, #8]
	mov	r0, #19
	strb	r0, [r1, #28]
	b	.L_4ff92
.L_4ff74:
	.4byte	gSpriteData
.L_4ff78:
	cmp	r0, #3
	bne	.L_4ff86
	mov	r1, ip
	ldrh	r0, [r1, #10]
	add	r0, #12
	strh	r0, [r1, #10]
	b	.L_4ff92
.L_4ff86:
	cmp	r0, #4
	bne	.L_4ff92
	mov	r2, ip
	ldrh	r0, [r2, #10]
	add	r0, #4
	strh	r0, [r2, #10]
.L_4ff92:
	ldr	r0, .L_4ffa0
	bl	func_804EA88
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4ffa0:
	.4byte	sUnk_83DA2B0


thumb_func_start func_804FFA4
func_804FFA4:
	ldr	r2, .L_4ffb8
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #0
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, #121	@ 0x79
	strb	r0, [r2, #28]
	bx	lr
.L_4ffb8:
	.4byte	gCurrentSprite


thumb_func_start func_804FFBC
func_804FFBC:
	push	{lr}
	ldr	r0, .L_4ffc8
	bl	func_804EA88
	pop	{r0}
	bx	r0
.L_4ffc8:
	.4byte	sUnk_83DA2E4


thumb_func_start func_804FFCC
func_804FFCC:
	ldr	r2, .L_4ffe8
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	mov	r1, #0
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #250	@ 0xfa
	strb	r0, [r1, #0]
	mov	r0, #26
	strb	r0, [r2, #28]
	bx	lr
.L_4ffe8:
	.4byte	gCurrentSprite


thumb_func_start func_804FFEC
func_804FFEC:
	push	{lr}
	ldr	r2, .L_50010
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_50018
	ldrh	r0, [r2, #10]
	sub	r0, #2
	strh	r0, [r2, #10]
	ldr	r0, .L_50014
	bl	func_804EA88
	b	.L_5001a
.L_50010:
	.4byte	gCurrentSprite
.L_50014:
	.4byte	sUnk_83DA1F4
.L_50018:
	strh	r0, [r2, #0]
.L_5001a:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8050020
func_8050020:
	ldr	r2, .L_50034
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #0
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, #24
	strb	r0, [r2, #28]
	bx	lr
.L_50034:
	.4byte	gCurrentSprite


thumb_func_start func_8050038
func_8050038:
	push	{lr}
	ldr	r0, .L_50044
	bl	func_804EA88
	pop	{r0}
	bx	r0
.L_50044:
	.4byte	sUnk_83DA2E4


thumb_func_start func_8050048
func_8050048:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r4, .L_50074
	ldrh	r1, [r4, #0]
	mov	r0, #4
	mov	r5, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r2, #0
	bl	func_801E430
	strh	r5, [r4, #0]
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_50074:
	.4byte	gCurrentSprite


thumb_func_start func_8050078
func_8050078:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r1, .L_50100
	ldr	r0, .L_50104
	str	r0, [r1, #0]
	ldr	r0, .L_50108
	str	r0, [r1, #4]
	ldr	r0, .L_5010c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r3, .L_50110
	ldrh	r1, [r3, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r5, #0
	mov	r2, #0
	add	r4, r0, #0
	orr	r4, r1
	ldr	r0, .L_50114
	and	r4, r0
	strh	r4, [r3, #0]
	strb	r5, [r3, #30]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #33	@ 0x21
	strb	r5, [r0, #0]
	add	r1, #2
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_50118
	str	r0, [r3, #4]
	strb	r5, [r3, #22]
	strh	r2, [r3, #20]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r5, [r0, #0]
	mov	r0, #18
	strb	r0, [r3, #28]
	ldrh	r1, [r3, #10]
	lsr	r1, r1, #2
	ldr	r0, .L_5011c
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r2, r3, #0
	cmp	r1, #120	@ 0x78
	bls	.L_50120
	mov	r1, #64	@ 0x40
	add	r0, r4, #0
	orr	r0, r1
	b	.L_50124
	.align	2, 0
.L_50100:
	.4byte	0x40000D4
.L_50104:
	.4byte	sUnk_83D6ADC
.L_50108:
	.4byte	0x6013000
.L_5010c:
	.4byte	0x80000800
.L_50110:
	.4byte	gCurrentSprite
.L_50114:
	.4byte	0xFFFB
.L_50118:
	.4byte	sUnk_83DA17C
.L_5011c:
	.4byte	gBg1XPosition
.L_50120:
	ldr	r0, .L_50140
	and	r0, r4
.L_50124:
	strh	r0, [r2, #0]
	ldrh	r3, [r2, #8]
	sub	r3, #36	@ 0x24
	ldrh	r0, [r2, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_50140:
	.4byte	0xFFBF


thumb_func_start func_8050144
func_8050144:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_50174
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r6, .L_50178
	lsl	r0, r3, #1
	add	r0, r0, r6
	ldrh	r5, [r0, #0]
	mov	r4, #0
	ldrsh	r1, [r0, r4]
	ldr	r0, .L_5017c
	add	r4, r2, #0
	cmp	r1, r0
	bne	.L_50180
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r6
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_5018a
	.align	2, 0
.L_50174:
	.4byte	gCurrentSprite
.L_50178:
	.4byte	sUnk_83DA2FA
.L_5017c:
	.4byte	0x7FFF
.L_50180:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r5
.L_5018a:
	strh	r0, [r4, #8]
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_5019c
	ldrh	r0, [r4, #10]
	sub	r0, #8
	b	.L_501a0
.L_5019c:
	ldrh	r0, [r4, #10]
	add	r0, #8
.L_501a0:
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r3, r0, #0
	ldr	r0, .L_501dc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_501d4
	mov	r1, #0
	mov	r2, #0
	strh	r3, [r4, #8]
	mov	r0, #111	@ 0x6f
	strb	r0, [r4, #28]
	add	r3, r4, #0
	add	r3, #39	@ 0x27
	mov	r0, #8
	strb	r0, [r3, #0]
	ldr	r0, .L_501e0
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r2, [r4, #20]
	mov	r0, #27
	bl	m4aSongNumStart
.L_501d4:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_501dc:
	.4byte	gSpriteAiCollisionResult
.L_501e0:
	.4byte	sUnk_83DA1A4


thumb_func_start func_80501E4
func_80501E4:
	ldr	r2, .L_5020c
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_50208
	ldr	r0, .L_50210
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #60	@ 0x3c
	strb	r0, [r3, #0]
	mov	r0, #113	@ 0x71
	strb	r0, [r2, #28]
.L_50208:
	bx	lr
	.align	2, 0
.L_5020c:
	.4byte	gCurrentSprite
.L_50210:
	.4byte	sUnk_83DA0CC


thumb_func_start func_8050214
func_8050214:
	ldr	r2, .L_50254
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_50268
	ldr	r0, .L_50258
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #60	@ 0x3c
	strb	r0, [r3, #0]
	mov	r0, #115	@ 0x73
	strb	r0, [r2, #28]
	ldrh	r1, [r2, #10]
	lsr	r1, r1, #2
	ldr	r0, .L_5025c
	ldrh	r0, [r0, #0]
	lsr	r0, r0, #2
	sub	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r1, #120	@ 0x78
	bls	.L_50260
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	orr	r0, r1
	b	.L_50266
.L_50254:
	.4byte	gCurrentSprite
.L_50258:
	.4byte	sUnk_83DA05C
.L_5025c:
	.4byte	gBg1XPosition
.L_50260:
	ldrh	r1, [r2, #0]
	ldr	r0, .L_5026c
	and	r0, r1
.L_50266:
	strh	r0, [r2, #0]
.L_50268:
	bx	lr
	.align	2, 0
.L_5026c:
	.4byte	0xFFBF


thumb_func_start func_8050270
func_8050270:
	push	{r4, r5, lr}
	ldr	r2, .L_50288
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	add	r5, r2, #0
	cmp	r0, #0
	beq	.L_5028c
	ldrh	r0, [r5, #10]
	sub	r0, #4
	b	.L_50290
	.align	2, 0
.L_50288:
	.4byte	gCurrentSprite
.L_5028c:
	ldrh	r0, [r5, #10]
	add	r0, #4
.L_50290:
	strh	r0, [r5, #10]
	add	r4, r5, #0
	ldr	r0, [r4, #20]
	ldr	r1, .L_502e4
	and	r0, r1
	ldr	r1, .L_502e8
	cmp	r0, r1
	bne	.L_502a6
	mov	r0, #27
	bl	m4aSongNumStart
.L_502a6:
	ldrh	r0, [r4, #10]
	lsr	r0, r0, #2
	ldr	r1, .L_502ec
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	cmp	r1, #80	@ 0x50
	beq	.L_502be
	cmp	r1, #152	@ 0x98
	bne	.L_502fc
.L_502be:
	ldr	r0, .L_502f0
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	mov	r2, #0
	strh	r0, [r4, #20]
	mov	r0, #116	@ 0x74
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
	cmp	r1, #120	@ 0x78
	bls	.L_502f4
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strh	r0, [r4, #0]
	b	.L_502fc
	.align	2, 0
.L_502e4:
	.4byte	0xFFFFFF
.L_502e8:
	.4byte	0x10002
.L_502ec:
	.4byte	gBg1XPosition
.L_502f0:
	.4byte	sUnk_83DA07C
.L_502f4:
	ldrh	r1, [r5, #0]
	ldr	r0, .L_50304
	and	r0, r1
	strh	r0, [r5, #0]
.L_502fc:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_50304:
	.4byte	0xFFBF


thumb_func_start func_8050308
func_8050308:
	push	{lr}
	ldr	r2, .L_5032c
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r1, [r3, #0]
	cmp	r1, #0
	bne	.L_50338
	ldr	r0, .L_50330
	ldrb	r0, [r0, #1]
	cmp	r0, #65	@ 0x41
	bne	.L_50374
	add	r0, r1, #1
	strb	r0, [r3, #0]
	ldr	r0, .L_50334
	bl	m4aSongNumStart
	b	.L_50374
	.align	2, 0
.L_5032c:
	.4byte	gCurrentSprite
.L_50330:
	.4byte	gWarioData
.L_50334:
	.4byte	0x1E9
.L_50338:
	add	r0, r1, #1
	mov	r1, #0
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #89	@ 0x59
	bls	.L_50374
	ldr	r0, .L_50364
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #117	@ 0x75
	strb	r0, [r2, #28]
	ldr	r1, .L_50368
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_5036c
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	orr	r0, r1
	b	.L_50372
.L_50364:
	.4byte	sUnk_83DA164
.L_50368:
	.4byte	gWarioData
.L_5036c:
	ldrh	r1, [r2, #0]
	ldr	r0, .L_50378
	and	r0, r1
.L_50372:
	strh	r0, [r2, #0]
.L_50374:
	pop	{r0}
	bx	r0
.L_50378:
	.4byte	0xFFBF


thumb_func_start func_805037C
func_805037C:
	ldr	r0, .L_50398
	ldrb	r0, [r0, #0]
	cmp	r0, #15
	bls	.L_50394
	ldr	r1, .L_5039c
	ldr	r0, .L_503a0
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #119	@ 0x77
	strb	r0, [r1, #28]
.L_50394:
	bx	lr
	.align	2, 0
.L_50398:
	.4byte	gGoldenDivaDefeatState
.L_5039c:
	.4byte	gCurrentSprite
.L_503a0:
	.4byte	sUnk_83DA0CC


thumb_func_start func_80503A4
func_80503A4:
	ldr	r0, .L_503c4
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_503c2
	ldr	r0, .L_503c8
	ldr	r1, .L_503cc
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #121	@ 0x79
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #60	@ 0x3c
	strb	r1, [r0, #0]
.L_503c2:
	bx	lr
.L_503c4:
	.4byte	gGoldenDivaDefeatState
.L_503c8:
	.4byte	gCurrentSprite
.L_503cc:
	.4byte	sUnk_83DA07C


thumb_func_start func_80503D0
func_80503D0:
	push	{r4, r5, lr}
	ldr	r4, .L_50400
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	add	r5, r0, #0
	cmp	r5, #0
	beq	.L_5040c
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_5044e
	ldr	r0, .L_50404
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r1, [r4, #20]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_50408
	and	r0, r1
	strh	r0, [r4, #0]
	b	.L_5044e
	.align	2, 0
.L_50400:
	.4byte	gCurrentSprite
.L_50404:
	.4byte	sUnk_83DA03C
.L_50408:
	.4byte	0xFFBF
.L_5040c:
	ldr	r0, [r4, #20]
	ldr	r1, .L_50454
	and	r0, r1
	ldr	r1, .L_50458
	cmp	r0, r1
	bne	.L_5041e
	mov	r0, #27
	bl	m4aSongNumStart
.L_5041e:
	ldrh	r0, [r4, #10]
	add	r0, #6
	strh	r0, [r4, #10]
	lsl	r0, r0, #16
	lsr	r0, r0, #18
	ldr	r1, .L_5045c
	ldrh	r1, [r1, #0]
	lsr	r1, r1, #2
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #212	@ 0xd4
	bls	.L_5044e
	ldr	r0, .L_50460
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r5, [r4, #20]
	mov	r0, #123	@ 0x7b
	strb	r0, [r4, #28]
	mov	r0, #246	@ 0xf6
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_5044e:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_50454:
	.4byte	0xFFFFFF
.L_50458:
	.4byte	0x10002
.L_5045c:
	.4byte	gBg1XPosition
.L_50460:
	.4byte	sUnk_83DA12C


thumb_func_start func_8050464
func_8050464:
	push	{r4, r5, lr}
	ldr	r0, .L_504bc
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_504c0
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r4, #24
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
	add	r0, #1
	mov	r5, #16
	strb	r5, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_504c4
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	ldr	r0, .L_504c8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_504cc
	strb	r5, [r1, #28]
	b	.L_504d0
.L_504bc:
	.4byte	gCurrentSprite
.L_504c0:
	.4byte	0xFFFB
.L_504c4:
	.4byte	sUnk_83D8AD0
.L_504c8:
	.4byte	gCurrentRoom
.L_504cc:
	mov	r2, ip
	strb	r4, [r2, #28]
.L_504d0:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80504D8
func_80504D8:
	ldr	r1, .L_504f4
	ldr	r0, .L_504f8
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #58	@ 0x3a
	strb	r0, [r2, #0]
	mov	r0, #18
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_504f4:
	.4byte	gCurrentSprite
.L_504f8:
	.4byte	sUnk_83D8AE0


thumb_func_start func_80504FC
func_80504FC:
	push	{lr}
	ldr	r2, .L_50528
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_50534
	ldr	r0, [r2, #20]
	ldr	r1, .L_5052c
	and	r0, r1
	ldr	r1, .L_50530
	cmp	r0, r1
	bne	.L_50540
	mov	r0, #251	@ 0xfb
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_50540
.L_50528:
	.4byte	gCurrentSprite
.L_5052c:
	.4byte	0xFFFFFF
.L_50530:
	.4byte	0x10001
.L_50534:
	mov	r0, #24
	strb	r0, [r2, #28]
	ldr	r0, .L_50544
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
.L_50540:
	pop	{r0}
	bx	r0
.L_50544:
	.4byte	sUnk_83D8B20


thumb_func_start func_8050548
func_8050548:
	push	{lr}
	ldr	r2, .L_5056c
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r1, #0
	mov	r0, #31
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #20
	strb	r0, [r2, #28]
	ldr	r0, .L_50570
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5056c:
	.4byte	gCurrentSprite
.L_50570:
	.4byte	0x1F7


thumb_func_start func_8050574
func_8050574:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	ldr	r4, .L_505bc
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_50586
	b	.L_506f6
.L_50586:
	sub	r0, #1
	strb	r0, [r1, #0]
	mov	r1, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_505a4
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	sub	r3, #32
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #12
	mov	r2, #0
	bl	func_801E430
.L_505a4:
	ldr	r0, .L_505c0
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #4
	bls	.L_505b0
	b	.L_506ae
.L_505b0:
	lsl	r0, r0, #2
	ldr	r1, .L_505c4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_505bc:
	.4byte	gCurrentSprite
.L_505c0:
	.4byte	gCurrentPassage
.L_505c4:
	.4byte	.L_505c8
.L_505c8:
	.4byte	.L_505dc
	.4byte	.L_5060c
	.4byte	.L_50628
	.4byte	.L_50644
	.4byte	.L_50660
.L_505dc:
	ldr	r3, .L_50600
	ldrh	r0, [r3, #10]
	add	r0, #12
	strh	r0, [r3, #10]
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_50604
.L_505ee:
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_50608
	cmp	r1, r0
	beq	.L_50682
	b	.L_506a0
.L_50600:
	.4byte	gCurrentSprite
.L_50604:
	.4byte	sUnk_83DA372
.L_50608:
	.4byte	0x7FFF
.L_5060c:
	ldr	r3, .L_50620
	ldrh	r0, [r3, #10]
	add	r0, #12
	strh	r0, [r3, #10]
	mov	r6, #42	@ 0x2a
	add	r6, r6, r3
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_50624
	b	.L_505ee
.L_50620:
	.4byte	gCurrentSprite
.L_50624:
	.4byte	sUnk_83DA3B2
.L_50628:
	ldr	r3, .L_5063c
	ldrh	r0, [r3, #10]
	add	r0, #16
	strh	r0, [r3, #10]
	mov	r6, #42	@ 0x2a
	add	r6, r6, r3
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_50640
	b	.L_505ee
.L_5063c:
	.4byte	gCurrentSprite
.L_50640:
	.4byte	sUnk_83DA3F2
.L_50644:
	ldr	r3, .L_50658
	ldrh	r0, [r3, #10]
	add	r0, #12
	strh	r0, [r3, #10]
	mov	r6, #42	@ 0x2a
	add	r6, r6, r3
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_5065c
	b	.L_505ee
.L_50658:
	.4byte	gCurrentSprite
.L_5065c:
	.4byte	sUnk_83DA432
.L_50660:
	ldr	r3, .L_50694
	ldrh	r0, [r3, #10]
	add	r0, #12
	strh	r0, [r3, #10]
	mov	r6, #42	@ 0x2a
	add	r6, r6, r3
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_50698
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_5069c
	cmp	r1, r0
	bne	.L_506a0
.L_50682:
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r3, #8]
	b	.L_50714
	.align	2, 0
.L_50694:
	.4byte	gCurrentSprite
.L_50698:
	.4byte	sUnk_83DA472
.L_5069c:
	.4byte	0x7FFF
.L_506a0:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
	strh	r0, [r3, #8]
	b	.L_50714
.L_506ae:
	ldrh	r0, [r4, #10]
	add	r0, #12
	strh	r0, [r4, #10]
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_506e0
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_506e4
	cmp	r1, r0
	bne	.L_506e8
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_50714
	.align	2, 0
.L_506e0:
	.4byte	sUnk_83DA332
.L_506e4:
	.4byte	0x7FFF
.L_506e8:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_50714
.L_506f6:
	mov	r0, #21
	strb	r0, [r4, #28]
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	mov	r2, #51	@ 0x33
	bl	SpriteSpawnSecondary
	bl	func_8026E78
	mov	r0, #252	@ 0xfc
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_50714:
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_805071C
func_805071C:
	push	{lr}
	ldr	r3, .L_5074c
	mov	r0, #39	@ 0x27
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	add	r1, r0, #0
	add	r2, r3, #0
	cmp	r1, #0
	bne	.L_50732
	b	.L_50888
.L_50732:
	sub	r0, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrb	r0, [r1, #0]
	sub	r0, #10
	cmp	r0, #48	@ 0x30
	bls	.L_50742
	b	.L_5088a
.L_50742:
	lsl	r0, r0, #2
	ldr	r1, .L_50750
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_5074c:
	.4byte	gCurrentSprite
.L_50750:
	.4byte	.L_50754
.L_50754:
	.4byte	.L_50862
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_50854
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5084e
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_50840
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5083a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_50862
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5082c
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5084e
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5081e
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_50818
	.4byte	.L_5088a
	.4byte	.L_5088a
	.4byte	.L_50874
.L_50818:
	ldrh	r0, [r2, #8]
	sub	r0, #32
	b	.L_50866
.L_5081e:
	ldrh	r0, [r2, #8]
	add	r0, #32
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldrh	r0, [r2, #10]
	add	r0, #32
	b	.L_5086e
.L_5082c:
	ldrh	r0, [r2, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldrh	r0, [r2, #10]
	add	r0, #32
	b	.L_5086e
.L_5083a:
	ldrh	r0, [r2, #8]
	sub	r0, #32
	b	.L_50866
.L_50840:
	ldrh	r0, [r2, #8]
	add	r0, #32
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldrh	r0, [r2, #10]
	add	r0, #32
	b	.L_5086e
.L_5084e:
	ldrh	r3, [r2, #8]
	ldrh	r1, [r2, #10]
	b	.L_5087e
.L_50854:
	ldrh	r0, [r2, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldrh	r0, [r2, #10]
	add	r0, #32
	b	.L_5086e
.L_50862:
	ldrh	r0, [r2, #8]
	add	r0, #32
.L_50866:
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldrh	r0, [r2, #10]
	sub	r0, #32
.L_5086e:
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	b	.L_5087e
.L_50874:
	ldrh	r1, [r2, #0]
	mov	r0, #4
	orr	r0, r1
	strh	r0, [r2, #0]
	b	.L_5088a
.L_5087e:
	add	r0, r3, #0
	mov	r2, #51	@ 0x33
	bl	SpriteSpawnSecondary
	b	.L_5088a
.L_50888:
	strh	r1, [r3, #0]
.L_5088a:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8050890
func_8050890:
	push	{r4, lr}
	ldr	r0, .L_508f8
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_508fc
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r3, [r1, #30]
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
	strb	r3, [r0, #22]
	strh	r4, [r0, #20]
	strb	r2, [r0, #28]
	mov	r1, ip
	add	r1, #39	@ 0x27
	mov	r0, #19
	strb	r0, [r1, #0]
	ldr	r0, .L_50900
	ldrb	r0, [r0, #0]
	sub	r0, #1
	mov	r2, ip
	cmp	r0, #7
	bhi	.L_50964
	lsl	r0, r0, #2
	ldr	r1, .L_50904
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_508f8:
	.4byte	gCurrentSprite
.L_508fc:
	.4byte	0xFFFB
.L_50900:
	.4byte	gCurrentShopItem
.L_50904:
	.4byte	.L_50908
.L_50908:
	.4byte	.L_50928
	.4byte	.L_50934
	.4byte	.L_50964
	.4byte	.L_50964
	.4byte	.L_50940
	.4byte	.L_50964
	.4byte	.L_5094c
	.4byte	.L_50958
.L_50928:
	ldr	r0, .L_50930
	str	r0, [r2, #4]
	b	.L_50968
	.align	2, 0
.L_50930:
	.4byte	sUnk_83D8B40
.L_50934:
	ldr	r0, .L_5093c
	str	r0, [r2, #4]
	b	.L_50968
	.align	2, 0
.L_5093c:
	.4byte	sUnk_83D8E3C
.L_50940:
	ldr	r0, .L_50948
	str	r0, [r2, #4]
	b	.L_50968
	.align	2, 0
.L_50948:
	.4byte	sUnk_83D9994
.L_5094c:
	ldr	r0, .L_50954
	str	r0, [r2, #4]
	b	.L_50968
	.align	2, 0
.L_50954:
	.4byte	sUnk_83D9BC0
.L_50958:
	ldr	r0, .L_50960
	str	r0, [r2, #4]
	b	.L_50968
	.align	2, 0
.L_50960:
	.4byte	sUnk_83D9DB4
.L_50964:
	mov	r0, #0
	strh	r0, [r2, #0]
.L_50968:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteApple
SpriteApple:
	push	{lr}
	ldr	r1, .L_50988
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #21
	bhi	.L_50a0c
	lsl	r0, r0, #2
	ldr	r1, .L_5098c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_50988:
	.4byte	gCurrentSprite
.L_5098c:
	.4byte	.L_50990
.L_50990:
	.4byte	.L_509e8
	.4byte	.L_50a0c
	.4byte	.L_50a0c
	.4byte	.L_50a0c
	.4byte	.L_50a0c
	.4byte	.L_50a0c
	.4byte	.L_50a0c
	.4byte	.L_50a0c
	.4byte	.L_50a0c
	.4byte	.L_50a0c
	.4byte	.L_50a0c
	.4byte	.L_50a0c
	.4byte	.L_50a0c
	.4byte	.L_50a0c
	.4byte	.L_50a0c
	.4byte	.L_50a0c
	.4byte	.L_509ee
	.4byte	.L_509f4
	.4byte	.L_509f8
	.4byte	.L_509fe
	.4byte	.L_50a02
	.4byte	.L_50a08
.L_509e8:
	bl	func_8050464
	b	.L_50a0c
.L_509ee:
	bl	func_804EC78
	b	.L_50a0c
.L_509f4:
	bl	func_80504D8
.L_509f8:
	bl	func_80504FC
	b	.L_50a0c
.L_509fe:
	bl	func_8050548
.L_50a02:
	bl	func_8050574
	b	.L_50a0c
.L_50a08:
	bl	func_805071C
.L_50a0c:
	pop	{r0}
	bx	r0


thumb_func_start func_8050A10
func_8050A10:
	push	{r4, lr}
	ldr	r4, .L_50a3c
	mov	r0, #1
	strb	r0, [r4, #31]
	ldrb	r0, [r4, #28]
	cmp	r0, #0
	bne	.L_50a22
	bl	func_8050890
.L_50a22:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_50a36
	strh	r0, [r4, #0]
.L_50a36:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_50a3c:
	.4byte	gCurrentSprite


thumb_func_start func_8050A40
func_8050A40:
	push	{r4, r5, lr}
	ldr	r0, .L_50a98
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_50a9c
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r4, #24
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
	add	r0, #1
	mov	r5, #16
	strb	r5, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_50aa0
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	ldr	r0, .L_50aa4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_50aa8
	strb	r5, [r1, #28]
	b	.L_50aac
.L_50a98:
	.4byte	gCurrentSprite
.L_50a9c:
	.4byte	0xFFFB
.L_50aa0:
	.4byte	sUnk_83D8E9C
.L_50aa4:
	.4byte	gCurrentRoom
.L_50aa8:
	mov	r2, ip
	strb	r4, [r2, #28]
.L_50aac:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8050AB4
func_8050AB4:
	ldr	r1, .L_50ad0
	ldr	r0, .L_50ad4
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #64	@ 0x40
	strb	r0, [r2, #0]
	mov	r0, #18
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_50ad0:
	.4byte	gCurrentSprite
.L_50ad4:
	.4byte	sUnk_83D8DEC


thumb_func_start func_8050AD8
func_8050AD8:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_50b14
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	beq	.L_50b1c
	add	r0, r2, #0
	cmp	r0, #32
	bne	.L_50b28
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	sub	r3, #124	@ 0x7c
	ldrh	r0, [r4, #10]
	add	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #197	@ 0xc5
	mov	r2, #0
	bl	func_801E430
	ldr	r0, .L_50b18
	bl	m4aSongNumStart
	b	.L_50b28
	.align	2, 0
.L_50b14:
	.4byte	gCurrentSprite
.L_50b18:
	.4byte	0x1F9
.L_50b1c:
	mov	r0, #24
	strb	r0, [r4, #28]
	ldr	r0, .L_50b30
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r2, [r4, #20]
.L_50b28:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
.L_50b30:
	.4byte	sUnk_83D8E9C


thumb_func_start func_8050B34
func_8050B34:
	push	{r4, lr}
	ldr	r0, .L_50b94
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_50b98
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r3, [r1, #30]
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
	ldr	r0, .L_50b9c
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	add	r1, #39	@ 0x27
	mov	r0, #31
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r3, [r0, #0]
	mov	r0, ip
	strb	r2, [r0, #28]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_50b94:
	.4byte	gCurrentSprite
.L_50b98:
	.4byte	0xFFFB
.L_50b9c:
	.4byte	sUnk_83D8E5C


thumb_func_start func_8050BA0
func_8050BA0:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	ldr	r4, .L_50be8
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_50bb2
	b	.L_50d22
.L_50bb2:
	sub	r0, #1
	strb	r0, [r1, #0]
	mov	r1, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_50bd0
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	sub	r3, #32
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #12
	mov	r2, #0
	bl	func_801E430
.L_50bd0:
	ldr	r0, .L_50bec
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #4
	bls	.L_50bdc
	b	.L_50cda
.L_50bdc:
	lsl	r0, r0, #2
	ldr	r1, .L_50bf0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_50be8:
	.4byte	gCurrentSprite
.L_50bec:
	.4byte	gCurrentPassage
.L_50bf0:
	.4byte	.L_50bf4
.L_50bf4:
	.4byte	.L_50c08
	.4byte	.L_50c38
	.4byte	.L_50c54
	.4byte	.L_50c70
	.4byte	.L_50c8c
.L_50c08:
	ldr	r3, .L_50c2c
	ldrh	r0, [r3, #10]
	add	r0, #12
	strh	r0, [r3, #10]
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_50c30
.L_50c1a:
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_50c34
	cmp	r1, r0
	beq	.L_50cae
	b	.L_50ccc
.L_50c2c:
	.4byte	gCurrentSprite
.L_50c30:
	.4byte	sUnk_83DA4F2
.L_50c34:
	.4byte	0x7FFF
.L_50c38:
	ldr	r3, .L_50c4c
	ldrh	r0, [r3, #10]
	add	r0, #12
	strh	r0, [r3, #10]
	mov	r6, #42	@ 0x2a
	add	r6, r6, r3
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_50c50
	b	.L_50c1a
.L_50c4c:
	.4byte	gCurrentSprite
.L_50c50:
	.4byte	sUnk_83DA532
.L_50c54:
	ldr	r3, .L_50c68
	ldrh	r0, [r3, #10]
	add	r0, #16
	strh	r0, [r3, #10]
	mov	r6, #42	@ 0x2a
	add	r6, r6, r3
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_50c6c
	b	.L_50c1a
.L_50c68:
	.4byte	gCurrentSprite
.L_50c6c:
	.4byte	sUnk_83DA572
.L_50c70:
	ldr	r3, .L_50c84
	ldrh	r0, [r3, #10]
	add	r0, #12
	strh	r0, [r3, #10]
	mov	r6, #42	@ 0x2a
	add	r6, r6, r3
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_50c88
	b	.L_50c1a
.L_50c84:
	.4byte	gCurrentSprite
.L_50c88:
	.4byte	sUnk_83DA5B2
.L_50c8c:
	ldr	r3, .L_50cc0
	ldrh	r0, [r3, #10]
	add	r0, #12
	strh	r0, [r3, #10]
	mov	r6, #42	@ 0x2a
	add	r6, r6, r3
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_50cc4
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_50cc8
	cmp	r1, r0
	bne	.L_50ccc
.L_50cae:
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r3, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r3, #8]
	b	.L_50d40
	.align	2, 0
.L_50cc0:
	.4byte	gCurrentSprite
.L_50cc4:
	.4byte	sUnk_83DA5F2
.L_50cc8:
	.4byte	0x7FFF
.L_50ccc:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
	strh	r0, [r3, #8]
	b	.L_50d40
.L_50cda:
	ldrh	r0, [r4, #10]
	add	r0, #12
	strh	r0, [r4, #10]
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_50d0c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_50d10
	cmp	r1, r0
	bne	.L_50d14
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_50d40
	.align	2, 0
.L_50d0c:
	.4byte	sUnk_83DA4B2
.L_50d10:
	.4byte	0x7FFF
.L_50d14:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_50d40
.L_50d22:
	mov	r0, #18
	strb	r0, [r4, #28]
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	mov	r2, #51	@ 0x33
	bl	SpriteSpawnSecondary
	bl	func_8026E78
	mov	r0, #252	@ 0xfc
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_50d40:
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8050D48
func_8050D48:
	push	{lr}
	ldr	r3, .L_50d78
	mov	r0, #39	@ 0x27
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r0, [r0, #0]
	add	r1, r0, #0
	add	r2, r3, #0
	cmp	r1, #0
	bne	.L_50d5e
	b	.L_50eb4
.L_50d5e:
	sub	r0, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrb	r0, [r1, #0]
	sub	r0, #10
	cmp	r0, #48	@ 0x30
	bls	.L_50d6e
	b	.L_50eb6
.L_50d6e:
	lsl	r0, r0, #2
	ldr	r1, .L_50d7c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_50d78:
	.4byte	gCurrentSprite
.L_50d7c:
	.4byte	.L_50d80
.L_50d80:
	.4byte	.L_50e8e
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50e80
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50e7a
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50e6c
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50e66
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50e8e
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50e58
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50e7a
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50e4a
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50e44
	.4byte	.L_50eb6
	.4byte	.L_50eb6
	.4byte	.L_50ea0
.L_50e44:
	ldrh	r0, [r2, #8]
	sub	r0, #32
	b	.L_50e92
.L_50e4a:
	ldrh	r0, [r2, #8]
	add	r0, #32
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldrh	r0, [r2, #10]
	add	r0, #32
	b	.L_50e9a
.L_50e58:
	ldrh	r0, [r2, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldrh	r0, [r2, #10]
	add	r0, #32
	b	.L_50e9a
.L_50e66:
	ldrh	r0, [r2, #8]
	sub	r0, #32
	b	.L_50e92
.L_50e6c:
	ldrh	r0, [r2, #8]
	add	r0, #32
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldrh	r0, [r2, #10]
	add	r0, #32
	b	.L_50e9a
.L_50e7a:
	ldrh	r3, [r2, #8]
	ldrh	r1, [r2, #10]
	b	.L_50eaa
.L_50e80:
	ldrh	r0, [r2, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldrh	r0, [r2, #10]
	add	r0, #32
	b	.L_50e9a
.L_50e8e:
	ldrh	r0, [r2, #8]
	add	r0, #32
.L_50e92:
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldrh	r0, [r2, #10]
	sub	r0, #32
.L_50e9a:
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	b	.L_50eaa
.L_50ea0:
	ldrh	r1, [r2, #0]
	mov	r0, #4
	orr	r0, r1
	strh	r0, [r2, #0]
	b	.L_50eb6
.L_50eaa:
	add	r0, r3, #0
	mov	r2, #51	@ 0x33
	bl	SpriteSpawnSecondary
	b	.L_50eb6
.L_50eb4:
	strh	r1, [r3, #0]
.L_50eb6:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteBlastCannon
SpriteBlastCannon:
	push	{lr}
	ldr	r1, .L_50ed4
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #16
	beq	.L_50ee8
	cmp	r0, #16
	bgt	.L_50ed8
	cmp	r0, #0
	beq	.L_50ee2
	b	.L_50ef6
.L_50ed4:
	.4byte	gCurrentSprite
.L_50ed8:
	cmp	r0, #17
	beq	.L_50eee
	cmp	r0, #18
	beq	.L_50ef2
	b	.L_50ef6
.L_50ee2:
	bl	func_8050A40
	b	.L_50ef6
.L_50ee8:
	bl	func_804EC78
	b	.L_50ef6
.L_50eee:
	bl	func_8050AB4
.L_50ef2:
	bl	func_8050AD8
.L_50ef6:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownC5
SpriteUnknownC5:
	push	{lr}
	ldr	r0, .L_50f18
	mov	r1, #1
	strb	r1, [r0, #31]
	ldrb	r1, [r0, #28]
	add	r2, r0, #0
	cmp	r1, #16
	beq	.L_50f28
	cmp	r1, #16
	bgt	.L_50f1c
	cmp	r1, #0
	beq	.L_50f22
	b	.L_50f34
	.align	2, 0
.L_50f18:
	.4byte	gCurrentSprite
.L_50f1c:
	cmp	r1, #18
	beq	.L_50f2e
	b	.L_50f34
.L_50f22:
	bl	func_8050B34
	b	.L_50f48
.L_50f28:
	bl	func_8050BA0
	b	.L_50f48
.L_50f2e:
	bl	func_8050D48
	b	.L_50f48
.L_50f34:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_50f48
	strh	r0, [r2, #0]
.L_50f48:
	pop	{r0}
	bx	r0


thumb_func_start func_8050F4C
func_8050F4C:
	ldr	r0, .L_50f88
	ldrb	r0, [r0, #0]
	mov	r2, #1
	and	r2, r0
	cmp	r2, #0
	bne	.L_50f84
	ldr	r0, .L_50f8c
	add	r1, r0, #0
	add	r1, #42	@ 0x2a
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #6
	bls	.L_50f6e
	strb	r2, [r1, #0]
.L_50f6e:
	ldr	r2, .L_50f90
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	ldr	r1, .L_50f94
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_50f98
	str	r0, [r2, #4]
	ldr	r0, .L_50f9c
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_50f84:
	bx	lr
	.align	2, 0
.L_50f88:
	.4byte	gMainTimer
.L_50f8c:
	.4byte	gCurrentSprite
.L_50f90:
	.4byte	0x40000D4
.L_50f94:
	.4byte	sUnk_83DA632
.L_50f98:
	.4byte	0x50003A0
.L_50f9c:
	.4byte	0x80000010


thumb_func_start func_8050FA0
func_8050FA0:
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L_50ff4
	ldrh	r1, [r3, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r5, #0
	mov	r2, #0
	add	r4, r0, #0
	orr	r4, r1
	ldr	r0, .L_50ff8
	and	r4, r0
	strh	r4, [r3, #0]
	strb	r5, [r3, #30]
	add	r0, r3, #0
	add	r0, #32
	mov	r6, #24
	strb	r6, [r0, #0]
	add	r0, #1
	strb	r6, [r0, #0]
	add	r0, #1
	mov	r7, #16
	strb	r7, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_50ffc
	str	r0, [r3, #4]
	strb	r5, [r3, #22]
	strh	r2, [r3, #20]
	ldr	r0, .L_51000
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_51004
	strb	r7, [r3, #28]
	b	.L_5100e
.L_50ff4:
	.4byte	gCurrentSprite
.L_50ff8:
	.4byte	0xFFFB
.L_50ffc:
	.4byte	sUnk_83D95B8
.L_51000:
	.4byte	gCurrentRoom
.L_51004:
	strb	r6, [r3, #28]
	mov	r1, #8
	add	r0, r4, #0
	orr	r0, r1
	strh	r0, [r3, #0]
.L_5100e:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_8051014
func_8051014:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_51058
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	sub	r3, #112	@ 0x70
	ldrh	r0, [r4, #10]
	add	r0, #16
	str	r0, [sp, #0]
	mov	r0, #198	@ 0xc6
	mov	r2, #0
	bl	func_801E430
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	sub	r3, #112	@ 0x70
	ldrh	r0, [r4, #10]
	add	r0, #16
	str	r0, [sp, #0]
	mov	r0, #199	@ 0xc7
	mov	r2, #0
	bl	func_801E430
	mov	r0, #24
	strb	r0, [r4, #28]
	mov	r0, #253	@ 0xfd
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_51058:
	.4byte	gCurrentSprite


thumb_func_start func_805105C
func_805105C:
	ldr	r0, .L_510b8
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_510bc
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #30]
	add	r1, #32
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_510c0
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #18
	strb	r0, [r1, #28]
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_510b8:
	.4byte	gCurrentSprite
.L_510bc:
	.4byte	0xFFFB
.L_510c0:
	.4byte	sUnk_83D95E0


thumb_func_start func_80510C4
func_80510C4:
	ldr	r2, .L_510ec
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_510e8
	ldr	r0, .L_510f0
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #135	@ 0x87
	strb	r0, [r3, #0]
.L_510e8:
	bx	lr
	.align	2, 0
.L_510ec:
	.4byte	gCurrentSprite
.L_510f0:
	.4byte	sUnk_83D96A0


thumb_func_start func_80510F4
func_80510F4:
	ldr	r2, .L_5111c
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_51118
	ldr	r0, .L_51120
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #22
	strb	r0, [r2, #28]
	mov	r0, #60	@ 0x3c
	strb	r0, [r3, #0]
.L_51118:
	bx	lr
	.align	2, 0
.L_5111c:
	.4byte	gCurrentSprite
.L_51120:
	.4byte	sUnk_83D9608


thumb_func_start func_8051124
func_8051124:
	ldr	r2, .L_5113c
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_5113a
	strh	r0, [r2, #0]
.L_5113a:
	bx	lr
.L_5113c:
	.4byte	gCurrentSprite


thumb_func_start func_8051140
func_8051140:
	ldr	r0, .L_51194
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_51198
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #30]
	add	r1, #32
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_5119c
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #18
	strb	r0, [r1, #28]
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	bx	lr
.L_51194:
	.4byte	gCurrentSprite
.L_51198:
	.4byte	0xFFFB
.L_5119c:
	.4byte	sUnk_83D9660


thumb_func_start func_80511A0
func_80511A0:
	ldr	r1, .L_511c0
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_511e0
	ldr	r0, .L_511c4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_511cc
	ldr	r0, .L_511c8
	b	.L_511ce
	.align	2, 0
.L_511c0:
	.4byte	gCurrentSprite
.L_511c4:
	.4byte	gCurrentPassage
.L_511c8:
	.4byte	sUnk_83D96C8
.L_511cc:
	ldr	r0, .L_511e4
.L_511ce:
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #20
	strb	r0, [r1, #28]
	add	r1, #39	@ 0x27
	mov	r0, #150	@ 0x96
	strb	r0, [r1, #0]
.L_511e0:
	bx	lr
	.align	2, 0
.L_511e4:
	.4byte	sUnk_83D9718


thumb_func_start func_80511E8
func_80511E8:
	push	{lr}
	ldr	r3, .L_51214
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_5121c
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #115	@ 0x73
	bne	.L_5121e
	bl	func_8026E78
	ldr	r0, .L_51218
	bl	m4aSongNumStart
	b	.L_5121e
	.align	2, 0
.L_51214:
	.4byte	gCurrentSprite
.L_51218:
	.4byte	0x1FB
.L_5121c:
	strh	r0, [r3, #0]
.L_5121e:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteVizorman
SpriteVizorman:
	push	{lr}
	ldr	r1, .L_5123c
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #16
	beq	.L_5124c
	cmp	r0, #16
	bgt	.L_51240
	cmp	r0, #0
	beq	.L_51246
	b	.L_51256
.L_5123c:
	.4byte	gCurrentSprite
.L_51240:
	cmp	r0, #17
	beq	.L_51252
	b	.L_51256
.L_51246:
	bl	func_8050FA0
	b	.L_51256
.L_5124c:
	bl	func_804EC78
	b	.L_51256
.L_51252:
	bl	func_8051014
.L_51256:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownC6
SpriteUnknownC6:
	push	{lr}
	ldr	r1, .L_51274
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #18
	beq	.L_51288
	cmp	r0, #18
	bgt	.L_51278
	cmp	r0, #0
	beq	.L_51282
	b	.L_51298
.L_51274:
	.4byte	gCurrentSprite
.L_51278:
	cmp	r0, #20
	beq	.L_5128e
	cmp	r0, #22
	beq	.L_51294
	b	.L_51298
.L_51282:
	bl	func_805105C
	b	.L_51298
.L_51288:
	bl	func_80510C4
	b	.L_51298
.L_5128e:
	bl	func_80510F4
	b	.L_51298
.L_51294:
	bl	func_8051124
.L_51298:
	bl	func_8050F4C
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknownC7
SpriteUnknownC7:
	push	{lr}
	ldr	r1, .L_512b8
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #18
	beq	.L_512c8
	cmp	r0, #18
	bgt	.L_512bc
	cmp	r0, #0
	beq	.L_512c2
	b	.L_512d2
.L_512b8:
	.4byte	gCurrentSprite
.L_512bc:
	cmp	r0, #20
	beq	.L_512ce
	b	.L_512d2
.L_512c2:
	bl	func_8051140
	b	.L_512d2
.L_512c8:
	bl	func_80511A0
	b	.L_512d2
.L_512ce:
	bl	func_80511E8
.L_512d2:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80512D8
func_80512D8:
	push	{r4, r5, lr}
	ldr	r0, .L_51330
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_51334
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r4, #24
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
	add	r0, #1
	mov	r5, #16
	strb	r5, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_51338
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	ldr	r0, .L_5133c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_51340
	strb	r5, [r1, #28]
	b	.L_51344
.L_51330:
	.4byte	gCurrentSprite
.L_51334:
	.4byte	0xFFFB
.L_51338:
	.4byte	sUnk_83D97E4
.L_5133c:
	.4byte	gCurrentRoom
.L_51340:
	mov	r2, ip
	strb	r4, [r2, #28]
.L_51344:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805134C
func_805134C:
	push	{lr}
	ldr	r2, .L_51378
	ldr	r0, .L_5137c
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #18
	strb	r0, [r2, #28]
	mov	r0, #254	@ 0xfe
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_51378:
	.4byte	gCurrentSprite
.L_5137c:
	.4byte	sUnk_83D97F4


thumb_func_start func_8051380
func_8051380:
	push	{lr}
	ldr	r2, .L_513b0
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	ldrb	r1, [r0, #0]
	mov	r0, #31
	and	r0, r1
	add	r1, r2, #0
	cmp	r0, #0
	beq	.L_51396
	b	.L_514d4
.L_51396:
	add	r0, r1, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #8
	bls	.L_513a4
	b	.L_514b8
.L_513a4:
	lsl	r0, r0, #2
	ldr	r1, .L_513b4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_513b0:
	.4byte	gCurrentSprite
.L_513b4:
	.4byte	.L_513b8
.L_513b8:
	.4byte	.L_513dc
	.4byte	.L_513f4
	.4byte	.L_5140c
	.4byte	.L_51424
	.4byte	.L_5143c
	.4byte	.L_51458
	.4byte	.L_51470
	.4byte	.L_51488
	.4byte	.L_514a0
.L_513dc:
	ldr	r1, .L_513f0
	ldrh	r0, [r1, #8]
	sub	r0, #88	@ 0x58
	ldrh	r1, [r1, #10]
	sub	r1, #32
	mov	r2, #53	@ 0x35
	bl	SpriteSpawnSecondary
	b	.L_514c6
	.align	2, 0
.L_513f0:
	.4byte	gCurrentSprite
.L_513f4:
	ldr	r1, .L_51408
	ldrh	r0, [r1, #8]
	sub	r0, #88	@ 0x58
	ldrh	r1, [r1, #10]
	sub	r1, #32
	mov	r2, #54	@ 0x36
	bl	SpriteSpawnSecondary
	b	.L_514c6
	.align	2, 0
.L_51408:
	.4byte	gCurrentSprite
.L_5140c:
	ldr	r1, .L_51420
	ldrh	r0, [r1, #8]
	sub	r0, #88	@ 0x58
	ldrh	r1, [r1, #10]
	sub	r1, #32
	mov	r2, #55	@ 0x37
	bl	SpriteSpawnSecondary
	b	.L_514c6
	.align	2, 0
.L_51420:
	.4byte	gCurrentSprite
.L_51424:
	ldr	r1, .L_51438
	ldrh	r0, [r1, #8]
	sub	r0, #88	@ 0x58
	ldrh	r1, [r1, #10]
	sub	r1, #32
	mov	r2, #56	@ 0x38
	bl	SpriteSpawnSecondary
	b	.L_514c6
	.align	2, 0
.L_51438:
	.4byte	gCurrentSprite
.L_5143c:
	ldr	r1, .L_51454
	ldrh	r0, [r1, #8]
	sub	r0, #88	@ 0x58
	ldrh	r1, [r1, #10]
	sub	r1, #32
	mov	r2, #57	@ 0x39
	bl	SpriteSpawnSecondary
	bl	func_8026E78
	b	.L_514c6
	.align	2, 0
.L_51454:
	.4byte	gCurrentSprite
.L_51458:
	ldr	r1, .L_5146c
	ldrh	r0, [r1, #8]
	sub	r0, #88	@ 0x58
	ldrh	r1, [r1, #10]
	sub	r1, #32
	mov	r2, #58	@ 0x3a
	bl	SpriteSpawnSecondary
	b	.L_514c6
	.align	2, 0
.L_5146c:
	.4byte	gCurrentSprite
.L_51470:
	ldr	r1, .L_51484
	ldrh	r0, [r1, #8]
	sub	r0, #88	@ 0x58
	ldrh	r1, [r1, #10]
	sub	r1, #32
	mov	r2, #59	@ 0x3b
	bl	SpriteSpawnSecondary
	b	.L_514c6
	.align	2, 0
.L_51484:
	.4byte	gCurrentSprite
.L_51488:
	ldr	r1, .L_5149c
	ldrh	r0, [r1, #8]
	sub	r0, #88	@ 0x58
	ldrh	r1, [r1, #10]
	sub	r1, #32
	mov	r2, #60	@ 0x3c
	bl	SpriteSpawnSecondary
	b	.L_514c6
	.align	2, 0
.L_5149c:
	.4byte	gCurrentSprite
.L_514a0:
	ldr	r1, .L_514b4
	ldrh	r0, [r1, #8]
	sub	r0, #88	@ 0x58
	ldrh	r1, [r1, #10]
	sub	r1, #32
	mov	r2, #61	@ 0x3d
	bl	SpriteSpawnSecondary
	b	.L_514c6
	.align	2, 0
.L_514b4:
	.4byte	gCurrentSprite
.L_514b8:
	ldrh	r0, [r1, #8]
	sub	r0, #88	@ 0x58
	ldrh	r1, [r1, #10]
	sub	r1, #32
	mov	r2, #52	@ 0x34
	bl	SpriteSpawnSecondary
.L_514c6:
	ldr	r2, .L_514fc
	add	r1, r2, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	add	r1, r2, #0
.L_514d4:
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	add	r0, #1
	mov	r3, #0
	strb	r0, [r2, #0]
	add	r0, r1, #0
	add	r0, #40	@ 0x28
	ldrb	r0, [r0, #0]
	cmp	r0, #10
	bne	.L_514f6
	mov	r0, #24
	strb	r0, [r1, #28]
	ldr	r0, .L_51500
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r3, [r1, #20]
.L_514f6:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_514fc:
	.4byte	gCurrentSprite
.L_51500:
	.4byte	sUnk_83D97E4


thumb_func_start func_8051504
func_8051504:
	push	{r4, lr}
	ldr	r0, .L_5156c
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #144	@ 0x90
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r4, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_51570
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r4, [r1, #30]
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
	strb	r4, [r0, #22]
	strh	r3, [r0, #20]
	add	r0, #39	@ 0x27
	strb	r4, [r0, #0]
	add	r0, #2
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
	mov	r1, ip
	strb	r2, [r1, #28]
	ldrb	r0, [r1, #24]
	mov	r2, ip
	cmp	r0, #8
	bhi	.L_515fc
	lsl	r0, r0, #2
	ldr	r1, .L_51574
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_5156c:
	.4byte	gCurrentSprite
.L_51570:
	.4byte	0xFFFB
.L_51574:
	.4byte	.L_51578
.L_51578:
	.4byte	.L_5159c
	.4byte	.L_515a4
	.4byte	.L_515ac
	.4byte	.L_515b4
	.4byte	.L_515bc
	.4byte	.L_515c4
	.4byte	.L_515cc
	.4byte	.L_515d4
	.4byte	.L_515e8
.L_5159c:
	ldr	r0, .L_515a0
	b	.L_515ea
.L_515a0:
	.4byte	sUnk_83D986C
.L_515a4:
	ldr	r0, .L_515a8
	b	.L_515d6
.L_515a8:
	.4byte	sUnk_83D981C
.L_515ac:
	ldr	r0, .L_515b0
	b	.L_515ea
.L_515b0:
	.4byte	sUnk_83D98AC
.L_515b4:
	ldr	r0, .L_515b8
	b	.L_515d6
.L_515b8:
	.4byte	sUnk_83D982C
.L_515bc:
	ldr	r0, .L_515c0
	b	.L_515ea
.L_515c0:
	.4byte	sUnk_83D989C
.L_515c4:
	ldr	r0, .L_515c8
	b	.L_515d6
.L_515c8:
	.4byte	sUnk_83D983C
.L_515cc:
	ldr	r0, .L_515d0
	b	.L_515ea
.L_515d0:
	.4byte	sUnk_83D988C
.L_515d4:
	ldr	r0, .L_515e4
.L_515d6:
	str	r0, [r2, #4]
	add	r1, r2, #0
	add	r1, #40	@ 0x28
	mov	r0, #0
	strb	r0, [r1, #0]
	b	.L_51608
	.align	2, 0
.L_515e4:
	.4byte	sUnk_83D984C
.L_515e8:
	ldr	r0, .L_515f8
.L_515ea:
	str	r0, [r2, #4]
	add	r1, r2, #0
	add	r1, #40	@ 0x28
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_51608
	.align	2, 0
.L_515f8:
	.4byte	sUnk_83D987C
.L_515fc:
	ldr	r0, .L_51610
	mov	r2, ip
	str	r0, [r2, #4]
	mov	r0, ip
	add	r0, #40	@ 0x28
	strb	r4, [r0, #0]
.L_51608:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_51610:
	.4byte	sUnk_83D985C


thumb_func_start func_8051614
func_8051614:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, #0
	ldr	r3, .L_51634
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_51638
	strh	r7, [r3, #0]
	b	.L_517f2
.L_51634:
	.4byte	gCurrentSprite
.L_51638:
	cmp	r2, #195	@ 0xc3
	bls	.L_5164e
	ldrh	r1, [r3, #0]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	strh	r0, [r3, #0]
	add	r1, r3, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	add	r0, #4
	b	.L_51666
.L_5164e:
	cmp	r2, #59	@ 0x3b
	bhi	.L_51670
	ldrh	r1, [r3, #0]
	mov	r0, #128	@ 0x80
	orr	r0, r1
	ldr	r1, .L_5166c
	and	r0, r1
	strh	r0, [r3, #0]
	add	r1, r3, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #4
.L_51666:
	strb	r0, [r1, #0]
	ldrb	r7, [r1, #0]
	b	.L_516b8
.L_5166c:
	.4byte	0xBFFF
.L_51670:
	ldrb	r1, [r3, #24]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_516b4
	add	r0, r2, #0
	sub	r0, #60	@ 0x3c
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #104	@ 0x68
	bhi	.L_516a4
	cmp	r2, #74	@ 0x4a
	bhi	.L_51692
	cmp	r2, #44	@ 0x2c
	bhi	.L_516a4
	cmp	r2, #14
	bls	.L_516a4
.L_51692:
	ldrh	r1, [r3, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #7
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r3, #0]
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #2
	b	.L_516b8
.L_516a4:
	ldrh	r1, [r3, #0]
	ldr	r0, .L_516b0
	and	r0, r1
	strh	r0, [r3, #0]
	b	.L_516b8
	.align	2, 0
.L_516b0:
	.4byte	0xFF7F
.L_516b4:
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #1
.L_516b8:
	ldr	r6, .L_51710
	ldrb	r1, [r6, #24]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_51718
	ldr	r4, .L_51714
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r5, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r5, #0
	bl	FixedMul
	strh	r0, [r6, #12]
	mov	r2, #0
	ldrsh	r4, [r4, r2]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #14]
	neg	r4, r4
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #16]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r5, #0
	b	.L_5178e
.L_51710:
	.4byte	gCurrentSprite
.L_51714:
	.4byte	sSinCosTable
.L_51718:
	ldr	r5, .L_517b8
	mov	r0, #39	@ 0x27
	add	r0, r0, r6
	mov	r8, r0
	ldrb	r0, [r0, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r5
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #12]
	mov	r2, r8
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #1
	add	r0, r0, r5
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #14]
	mov	r2, r8
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #1
	add	r0, r0, r5
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #16]
	mov	r2, r8
	ldrb	r0, [r2, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r5
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
.L_5178e:
	bl	FixedMul
	strh	r0, [r6, #18]
	ldr	r2, .L_517bc
	ldr	r1, .L_517c0
	add	r5, r1, #0
	add	r5, #42	@ 0x2a
	ldrb	r0, [r5, #0]
	lsr	r0, r0, #3
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r3, [r0, #0]
	add	r4, r1, #0
	add	r4, #40	@ 0x28
	ldrb	r0, [r4, #0]
	add	r2, r1, #0
	cmp	r0, #0
	beq	.L_517c4
	ldrh	r0, [r2, #10]
	add	r0, r0, r3
	b	.L_517c8
.L_517b8:
	.4byte	sSinCosTable
.L_517bc:
	.4byte	sUnk_83DA712
.L_517c0:
	.4byte	gCurrentSprite
.L_517c4:
	ldrh	r0, [r2, #10]
	sub	r0, r0, r3
.L_517c8:
	strh	r0, [r2, #10]
	ldrb	r0, [r5, #0]
	cmp	r0, #94	@ 0x5e
	bls	.L_517dc
	mov	r0, #0
	strb	r0, [r5, #0]
	ldrb	r0, [r4, #0]
	mov	r1, #1
	eor	r0, r1
	strb	r0, [r4, #0]
.L_517dc:
	add	r1, r2, #0
	add	r1, #42	@ 0x2a
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #10]
	add	r0, #2
	strh	r0, [r2, #10]
	ldrh	r0, [r2, #8]
	sub	r0, #2
	strh	r0, [r2, #8]
.L_517f2:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start SpriteBugle
SpriteBugle:
	push	{lr}
	ldr	r1, .L_51814
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #16
	beq	.L_51828
	cmp	r0, #16
	bgt	.L_51818
	cmp	r0, #0
	beq	.L_51822
	b	.L_51836
.L_51814:
	.4byte	gCurrentSprite
.L_51818:
	cmp	r0, #17
	beq	.L_5182e
	cmp	r0, #18
	beq	.L_51832
	b	.L_51836
.L_51822:
	bl	func_80512D8
	b	.L_51836
.L_51828:
	bl	func_804EC78
	b	.L_51836
.L_5182e:
	bl	func_805134C
.L_51832:
	bl	func_8051380
.L_51836:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805183C
func_805183C:
	push	{lr}
	ldr	r1, .L_51854
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #0
	beq	.L_51858
	cmp	r0, #16
	beq	.L_5185c
	mov	r0, #0
	strh	r0, [r1, #0]
	b	.L_51860
.L_51854:
	.4byte	gCurrentSprite
.L_51858:
	bl	func_8051504
.L_5185c:
	bl	func_8051614
.L_51860:
	pop	{r0}
	bx	r0


thumb_func_start func_8051864
func_8051864:
	push	{r4, r5, lr}
	ldr	r3, .L_518bc
	ldrh	r1, [r3, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r4, #0
	mov	r2, #0
	orr	r0, r1
	ldr	r1, .L_518c0
	and	r0, r1
	strh	r0, [r3, #0]
	strb	r4, [r3, #30]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #33	@ 0x21
	mov	r5, #16
	strb	r5, [r0, #0]
	add	r1, #2
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_518c4
	str	r0, [r3, #4]
	strb	r4, [r3, #22]
	strh	r2, [r3, #20]
	ldr	r0, .L_518c8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_518cc
	strb	r5, [r3, #28]
	b	.L_518de
.L_518bc:
	.4byte	gCurrentSprite
.L_518c0:
	.4byte	0xFFFB
.L_518c4:
	.4byte	sUnk_83D996C
.L_518c8:
	.4byte	gCurrentRoom
.L_518cc:
	mov	r0, #18
	strb	r0, [r3, #28]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	mov	r0, #144	@ 0x90
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
.L_518de:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_80518E4
func_80518E4:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_51930
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_51934
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_51938
	cmp	r1, r0
	bne	.L_51906
	ldrh	r4, [r5, #0]
	mov	r3, #0
.L_51906:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #59	@ 0x3b
	bhi	.L_51980
	ldr	r0, .L_5193c
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #4
	bhi	.L_5198c
	lsl	r0, r0, #2
	ldr	r1, .L_51940
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_51930:
	.4byte	gCurrentSprite
.L_51934:
	.4byte	sUnk_83DA72A
.L_51938:
	.4byte	0x7FFF
.L_5193c:
	.4byte	gCurrentPassage
.L_51940:
	.4byte	.L_51944
.L_51944:
	.4byte	.L_51958
	.4byte	.L_5195e
	.4byte	.L_51964
	.4byte	.L_51972
	.4byte	.L_51972
.L_51958:
	ldrh	r0, [r2, #8]
	sub	r0, #5
	b	.L_51976
.L_5195e:
	ldrh	r0, [r2, #8]
	sub	r0, #7
	b	.L_51976
.L_51964:
	ldrh	r0, [r2, #8]
	sub	r0, #3
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #10]
	add	r0, #6
	strh	r0, [r2, #10]
	b	.L_5198c
.L_51972:
	ldrh	r0, [r2, #8]
	sub	r0, #3
.L_51976:
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #10]
	add	r0, #3
	strh	r0, [r2, #10]
	b	.L_5198c
.L_51980:
	cmp	r0, #60	@ 0x3c
	bne	.L_5198c
	ldrh	r1, [r2, #0]
	ldr	r0, .L_519c4
	and	r0, r1
	strh	r0, [r2, #0]
.L_5198c:
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_519be
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #120	@ 0x78
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	sub	r0, #64	@ 0x40
	ldrh	r1, [r2, #10]
	add	r1, #96	@ 0x60
	mov	r2, #51	@ 0x33
	bl	SpriteSpawnSecondary
	bl	func_8026E78
	mov	r0, #255	@ 0xff
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_519be:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_519c4:
	.4byte	0xFFF7


thumb_func_start func_80519C8
func_80519C8:
	push	{r4, r5, lr}
	ldr	r3, .L_51a04
	ldrh	r0, [r3, #8]
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldrh	r0, [r3, #10]
	add	r0, #96	@ 0x60
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	add	r5, r0, #0
	cmp	r5, #0
	bne	.L_519ea
	b	.L_51bd8
.L_519ea:
	sub	r0, #1
	strb	r0, [r1, #0]
	ldrb	r0, [r1, #0]
	sub	r0, #10
	cmp	r0, #90	@ 0x5a
	bls	.L_519f8
	b	.L_51bf8
.L_519f8:
	lsl	r0, r0, #2
	ldr	r1, .L_51a08
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_51a04:
	.4byte	gCurrentSprite
.L_51a08:
	.4byte	.L_51a0c
.L_51a0c:
	.4byte	.L_51bbc
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bae
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bcc
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51ba0
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51b9a
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bbc
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51b8c
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bcc
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51b7e
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51b78
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bbc
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bae
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bcc
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51ba0
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51b9a
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bbc
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51b8c
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bcc
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51bf8
	.4byte	.L_51b7e
.L_51b78:
	add	r0, r4, #0
	sub	r0, #32
	b	.L_51bc0
.L_51b7e:
	add	r0, r4, #0
	add	r0, #32
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	add	r0, r2, #0
	add	r0, #32
	b	.L_51bc8
.L_51b8c:
	add	r0, r4, #0
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	add	r0, r2, #0
	add	r0, #32
	b	.L_51bc8
.L_51b9a:
	add	r0, r4, #0
	sub	r0, #32
	b	.L_51bc0
.L_51ba0:
	add	r0, r4, #0
	add	r0, #32
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	add	r0, r2, #0
	add	r0, #32
	b	.L_51bc8
.L_51bae:
	add	r0, r4, #0
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	add	r0, r2, #0
	add	r0, #32
	b	.L_51bc8
.L_51bbc:
	add	r0, r4, #0
	add	r0, #32
.L_51bc0:
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	add	r0, r2, #0
	sub	r0, #32
.L_51bc8:
	lsl	r0, r0, #16
	lsr	r2, r0, #16
.L_51bcc:
	add	r0, r4, #0
	add	r1, r2, #0
	mov	r2, #51	@ 0x33
	bl	SpriteSpawnSecondary
	b	.L_51bf8
.L_51bd8:
	mov	r0, #21
	strb	r0, [r3, #28]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r5, [r0, #0]
	ldrh	r0, [r3, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r3, #0]
	ldr	r0, .L_51c00
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	beq	.L_51bf8
	ldr	r0, .L_51c04
	bl	m4aSongNumStart
.L_51bf8:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_51c00:
	.4byte	gCurrentPassage
.L_51c04:
	.4byte	0x2AD


thumb_func_start func_8051C08
func_8051C08:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_51c68
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_51c6c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_51c70
	cmp	r1, r0
	bne	.L_51c2a
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_51c2a:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	add	r0, #6
	strh	r0, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #6
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r1, r0, #0
	ldr	r0, .L_51c74
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_51c88
	strh	r1, [r4, #8]
	ldr	r0, .L_51c78
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_51c7c
	mov	r0, #111	@ 0x6f
	strb	r0, [r4, #28]
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r4, #0]
	b	.L_51c88
.L_51c68:
	.4byte	gCurrentSprite
.L_51c6c:
	.4byte	sUnk_83DA72A
.L_51c70:
	.4byte	0x7FFF
.L_51c74:
	.4byte	gSpriteAiCollisionResult
.L_51c78:
	.4byte	gCurrentPassage
.L_51c7c:
	mov	r0, #22
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
.L_51c88:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8051C90
func_8051C90:
	ldr	r2, .L_51cac
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_51cb0
	ldrh	r0, [r2, #10]
	sub	r0, #8
	strh	r0, [r2, #10]
	b	.L_51cb2
.L_51cac:
	.4byte	gCurrentSprite
.L_51cb0:
	strh	r0, [r2, #0]
.L_51cb2:
	bx	lr


thumb_func_start SpriteUnknownC1
SpriteUnknownC1:
	push	{lr}
	ldr	r1, .L_51cd4
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #20
	beq	.L_51cfa
	cmp	r0, #20
	bgt	.L_51cde
	cmp	r0, #16
	beq	.L_51cee
	cmp	r0, #16
	bgt	.L_51cd8
	cmp	r0, #0
	beq	.L_51ce8
	b	.L_51d0a
.L_51cd4:
	.4byte	gCurrentSprite
.L_51cd8:
	cmp	r0, #18
	beq	.L_51cf4
	b	.L_51d0a
.L_51cde:
	cmp	r0, #22
	beq	.L_51d06
	cmp	r0, #22
	blt	.L_51d00
	b	.L_51d0a
.L_51ce8:
	bl	func_8051864
	b	.L_51d0a
.L_51cee:
	bl	func_804EC78
	b	.L_51d0a
.L_51cf4:
	bl	func_80518E4
	b	.L_51d0a
.L_51cfa:
	bl	func_80519C8
	b	.L_51d0a
.L_51d00:
	bl	func_8051C08
	b	.L_51d0a
.L_51d06:
	bl	func_8051C90
.L_51d0a:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8051D10
func_8051D10:
	push	{r4, r5, lr}
	ldr	r3, .L_51d64
	ldrh	r1, [r3, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r4, #0
	mov	r2, #0
	orr	r0, r1
	ldr	r1, .L_51d68
	and	r0, r1
	strh	r0, [r3, #0]
	strb	r4, [r3, #30]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #33	@ 0x21
	mov	r5, #16
	strb	r5, [r0, #0]
	add	r0, #1
	strb	r5, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_51d6c
	str	r0, [r3, #4]
	strb	r4, [r3, #22]
	strh	r2, [r3, #20]
	ldr	r0, .L_51d70
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_51d74
	strb	r5, [r3, #28]
	b	.L_51d86
.L_51d64:
	.4byte	gCurrentSprite
.L_51d68:
	.4byte	0xFFFB
.L_51d6c:
	.4byte	sUnk_83D9A9C
.L_51d70:
	.4byte	gCurrentRoom
.L_51d74:
	mov	r0, #17
	strb	r0, [r3, #28]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	mov	r0, #128	@ 0x80
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
.L_51d86:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8051D8C
func_8051D8C:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_51dd8
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_51ddc
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_51de0
	cmp	r1, r0
	bne	.L_51dae
	ldrh	r4, [r5, #0]
	mov	r3, #0
.L_51dae:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #46	@ 0x2e
	bhi	.L_51e36
	ldr	r0, .L_51de4
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #4
	bhi	.L_51e42
	lsl	r0, r0, #2
	ldr	r1, .L_51de8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_51dd8:
	.4byte	gCurrentSprite
.L_51ddc:
	.4byte	sUnk_83DA772
.L_51de0:
	.4byte	0x7FFF
.L_51de4:
	.4byte	gCurrentPassage
.L_51de8:
	.4byte	.L_51dec
.L_51dec:
	.4byte	.L_51e00
	.4byte	.L_51e0e
	.4byte	.L_51e14
	.4byte	.L_51e22
	.4byte	.L_51e28
.L_51e00:
	ldrh	r0, [r2, #8]
	sub	r0, #6
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #10]
	add	r0, #4
	strh	r0, [r2, #10]
	b	.L_51e42
.L_51e0e:
	ldrh	r0, [r2, #8]
	sub	r0, #9
	b	.L_51e2c
.L_51e14:
	ldrh	r0, [r2, #8]
	sub	r0, #4
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #10]
	add	r0, #7
	strh	r0, [r2, #10]
	b	.L_51e42
.L_51e22:
	ldrh	r0, [r2, #8]
	sub	r0, #5
	b	.L_51e2c
.L_51e28:
	ldrh	r0, [r2, #8]
	sub	r0, #4
.L_51e2c:
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #10]
	add	r0, #5
	strh	r0, [r2, #10]
	b	.L_51e42
.L_51e36:
	cmp	r0, #50	@ 0x32
	bne	.L_51e42
	ldrh	r1, [r2, #0]
	ldr	r0, .L_51e68
	and	r0, r1
	strh	r0, [r2, #0]
.L_51e42:
	mov	r6, #39	@ 0x27
	add	r6, r6, r2
	ldrb	r0, [r6, #0]
	sub	r0, #1
	strb	r0, [r6, #0]
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #0
	bne	.L_51e62
	mov	r1, #18
	strb	r1, [r2, #28]
	ldr	r0, .L_51e6c
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r3, [r2, #20]
	strb	r1, [r6, #0]
.L_51e62:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_51e68:
	.4byte	0xFFF7
.L_51e6c:
	.4byte	sUnk_83D9B1C


thumb_func_start func_8051E70
func_8051E70:
	push	{lr}
	sub	sp, #4
	ldr	r2, .L_51ecc
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
	bne	.L_51ec4
	mov	r0, #19
	strb	r0, [r2, #28]
	ldr	r0, .L_51ed0
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	mov	r1, #0
	strh	r3, [r2, #20]
	mov	r0, #204	@ 0xcc
	mov	r3, ip
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #41	@ 0x29
	strb	r1, [r0, #0]
	ldrh	r3, [r2, #8]
	sub	r3, #128	@ 0x80
	ldrh	r0, [r2, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #201	@ 0xc9
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	bl	func_8026E78
	ldr	r0, .L_51ed4
	bl	m4aSongNumStart
.L_51ec4:
	add	sp, #4
	pop	{r0}
	bx	r0
	.align	2, 0
.L_51ecc:
	.4byte	gCurrentSprite
.L_51ed0:
	.4byte	sUnk_83D9B3C
.L_51ed4:
	.4byte	0x201


thumb_func_start func_8051ED8
func_8051ED8:
	push	{r4, lr}
	sub	sp, #4
	ldr	r2, .L_51f10
	add	r4, r2, #0
	add	r4, #41	@ 0x29
	ldrb	r0, [r4, #0]
	add	r1, r0, #1
	strb	r1, [r4, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	ldr	r0, .L_51f14
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	beq	.L_51f18
	cmp	r0, #1
	blt	.L_51f8e
	cmp	r0, #5
	bgt	.L_51f8e
	cmp	r1, #25
	bne	.L_51f58
	ldrh	r3, [r2, #8]
	sub	r3, #128	@ 0x80
	ldrh	r0, [r2, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #201	@ 0xc9
	mov	r1, #1
	b	.L_51f6a
.L_51f10:
	.4byte	gCurrentSprite
.L_51f14:
	.4byte	gCurrentPassage
.L_51f18:
	cmp	r1, #40	@ 0x28
	bne	.L_51f2c
	ldrh	r3, [r2, #8]
	sub	r3, #128	@ 0x80
	ldrh	r0, [r2, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #201	@ 0xc9
	mov	r1, #1
	b	.L_51f6a
.L_51f2c:
	cmp	r1, #80	@ 0x50
	beq	.L_51f5c
	cmp	r1, #120	@ 0x78
	bne	.L_51f44
	ldrh	r3, [r2, #8]
	sub	r3, #128	@ 0x80
	ldrh	r0, [r2, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #201	@ 0xc9
	mov	r1, #0
	b	.L_51f6a
.L_51f44:
	cmp	r1, #160	@ 0xa0
	bne	.L_51f8e
	ldrh	r3, [r2, #8]
	sub	r3, #128	@ 0x80
	ldrh	r0, [r2, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #201	@ 0xc9
	mov	r1, #1
	b	.L_51f6a
.L_51f58:
	cmp	r1, #50	@ 0x32
	bne	.L_51f72
.L_51f5c:
	ldrh	r3, [r2, #8]
	sub	r3, #128	@ 0x80
	ldrh	r0, [r2, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #201	@ 0xc9
	mov	r1, #2
.L_51f6a:
	mov	r2, #0
	bl	func_801E430
	b	.L_51f8e
.L_51f72:
	cmp	r1, #75	@ 0x4b
	bne	.L_51f8e
	ldrh	r3, [r2, #8]
	sub	r3, #128	@ 0x80
	ldrh	r0, [r2, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #201	@ 0xc9
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	mov	r0, #0
	strb	r0, [r4, #0]
.L_51f8e:
	ldr	r4, .L_51fdc
	add	r3, r4, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_51fd4
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r4, #0]
	mov	r0, #20
	strb	r0, [r4, #28]
	ldr	r0, .L_51fe0
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r2, [r4, #20]
	mov	r0, #112	@ 0x70
	strb	r0, [r3, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldr	r0, .L_51fe4
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_51fd4
	ldr	r0, .L_51fe8
	bl	m4aSongNumStart
	mov	r0, #110	@ 0x6e
	strb	r0, [r4, #28]
.L_51fd4:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
.L_51fdc:
	.4byte	gCurrentSprite
.L_51fe0:
	.4byte	sUnk_83D9A9C
.L_51fe4:
	.4byte	gCurrentPassage
.L_51fe8:
	.4byte	0x2AD


thumb_func_start func_8051FEC
func_8051FEC:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_5203c
	ldrh	r0, [r2, #10]
	sub	r0, #8
	strh	r0, [r2, #10]
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_52040
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_52044
	cmp	r1, r0
	bne	.L_52014
	ldrh	r4, [r5, #0]
	mov	r3, #0
.L_52014:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_52034
	strh	r0, [r2, #0]
.L_52034:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5203c:
	.4byte	gCurrentSprite
.L_52040:
	.4byte	sUnk_83DA772
.L_52044:
	.4byte	0x7FFF


thumb_func_start func_8052048
func_8052048:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_520a4
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_520a8
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_520ac
	cmp	r1, r0
	bne	.L_5206a
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_5206a:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	add	r0, #6
	strh	r0, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #6
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r1, r0, #0
	ldr	r0, .L_520b0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5209e
	strh	r1, [r4, #8]
	mov	r0, #111	@ 0x6f
	strb	r0, [r4, #28]
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r4, #0]
.L_5209e:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_520a4:
	.4byte	gCurrentSprite
.L_520a8:
	.4byte	sUnk_83DA772
.L_520ac:
	.4byte	0x7FFF
.L_520b0:
	.4byte	gSpriteAiCollisionResult


thumb_func_start func_80520B4
func_80520B4:
	push	{r4, lr}
	ldr	r0, .L_5211c
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #137	@ 0x89
	lsl	r2, r2, #7
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_52120
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r3, [r1, #30]
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
	strb	r3, [r0, #22]
	strh	r4, [r0, #20]
	mov	r1, ip
	add	r1, #39	@ 0x27
	mov	r0, #8
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #41	@ 0x29
	strb	r3, [r0, #0]
	mov	r1, ip
	strb	r2, [r1, #28]
	ldrb	r0, [r1, #24]
	cmp	r0, #1
	beq	.L_52128
	cmp	r0, #2
	beq	.L_52134
	ldr	r0, .L_52124
	b	.L_52138
	.align	2, 0
.L_5211c:
	.4byte	gCurrentSprite
.L_52120:
	.4byte	0xFFFB
.L_52124:
	.4byte	sUnk_83D9AEC
.L_52128:
	ldr	r0, .L_52130
	mov	r2, ip
	str	r0, [r2, #4]
	b	.L_5213a
.L_52130:
	.4byte	sUnk_83D9AFC
.L_52134:
	ldr	r0, .L_52140
	mov	r1, ip
.L_52138:
	str	r0, [r1, #4]
.L_5213a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_52140:
	.4byte	sUnk_83D9B0C


thumb_func_start func_8052144
func_8052144:
	ldr	r2, .L_5215c
	add	r0, r2, #0
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_52160
	ldrh	r1, [r2, #0]
	mov	r0, #4
	orr	r0, r1
	b	.L_52166
.L_5215c:
	.4byte	gCurrentSprite
.L_52160:
	ldrh	r1, [r2, #0]
	ldr	r0, .L_52174
	and	r0, r1
.L_52166:
	strh	r0, [r2, #0]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	bx	lr
.L_52174:
	.4byte	0xFFFB


thumb_func_start func_8052178
func_8052178:
	ldr	r2, .L_52190
	add	r0, r2, #0
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_52198
	ldrh	r1, [r2, #0]
	ldr	r0, .L_52194
	and	r0, r1
	b	.L_5219e
.L_52190:
	.4byte	gCurrentSprite
.L_52194:
	.4byte	0xFFFB
.L_52198:
	ldrh	r1, [r2, #0]
	mov	r0, #4
	orr	r0, r1
.L_5219e:
	strh	r0, [r2, #0]
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_80521AC
func_80521AC:
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L_5223c
	add	r3, r6, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	lsl	r7, r0, #1
	add	r2, r0, #4
	strb	r2, [r3, #0]
	ldrh	r0, [r6, #10]
	add	r0, #1
	strh	r0, [r6, #10]
	cmp	r7, #0
	bne	.L_521e2
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #2
	mov	r0, #18
	strb	r0, [r6, #28]
	add	r1, r6, #0
	add	r1, #40	@ 0x28
	mov	r0, #1
	strb	r0, [r1, #0]
	add	r1, #2
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	mov	r0, #255	@ 0xff
	orr	r2, r0
	strb	r2, [r3, #0]
.L_521e2:
	ldr	r4, .L_52240
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r5, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r5, #0
	bl	FixedMul
	strh	r0, [r6, #12]
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #14]
	neg	r4, r4
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #16]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r5, #0
	bl	FixedMul
	strh	r0, [r6, #18]
	bl	func_8052144
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_5223c:
	.4byte	gCurrentSprite
.L_52240:
	.4byte	sSinCosTable


thumb_func_start func_8052244
func_8052244:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r6, .L_5230c
	add	r1, r6, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	lsl	r7, r0, #1
	cmp	r0, #7
	bls	.L_5225c
	sub	r0, #1
	strb	r0, [r1, #0]
.L_5225c:
	mov	r0, #0
	mov	r8, r0
	mov	r1, #42	@ 0x2a
	add	r1, r1, r6
	mov	ip, r1
	ldrb	r2, [r1, #0]
	ldr	r3, .L_52310
	lsl	r0, r2, #2
	add	r0, r0, r3
	ldrh	r4, [r0, #0]
	mov	r5, #0
	ldrsh	r1, [r0, r5]
	ldr	r0, .L_52314
	cmp	r1, r0
	bne	.L_52282
	mov	r2, #0
	ldrh	r4, [r3, #0]
	mov	r0, #1
	mov	r8, r0
.L_52282:
	lsl	r0, r2, #2
	add	r1, r3, #2
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	add	r0, r2, #1
	mov	r2, ip
	strb	r0, [r2, #0]
	ldrh	r0, [r6, #8]
	add	r0, r0, r4
	strh	r0, [r6, #8]
	ldrh	r0, [r6, #10]
	add	r0, r0, r1
	strh	r0, [r6, #10]
	ldr	r4, .L_52318
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r5, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r5, #0
	bl	FixedMul
	strh	r0, [r6, #12]
	mov	r2, #0
	ldrsh	r4, [r4, r2]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #14]
	neg	r4, r4
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #16]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r5, #0
	bl	FixedMul
	strh	r0, [r6, #18]
	bl	func_8052144
	mov	r5, r8
	cmp	r5, #0
	beq	.L_52302
	mov	r0, #20
	strb	r0, [r6, #28]
	add	r1, r6, #0
	add	r1, #40	@ 0x28
	mov	r0, #1
	strb	r0, [r1, #0]
.L_52302:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_5230c:
	.4byte	gCurrentSprite
.L_52310:
	.4byte	sUnk_83B37FC
.L_52314:
	.4byte	0x7FFF
.L_52318:
	.4byte	sSinCosTable


thumb_func_start func_805231C
func_805231C:
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L_5233c
	add	r1, r6, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	lsl	r7, r0, #1
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #32
	bhi	.L_52340
	mov	r0, #0
	strh	r0, [r6, #0]
	b	.L_523e6
	.align	2, 0
.L_5233c:
	.4byte	gCurrentSprite
.L_52340:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r6
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r2, .L_523ec
	lsl	r0, r3, #2
	add	r0, r0, r2
	ldrh	r5, [r0, #0]
	mov	r4, #0
	ldrsh	r1, [r0, r4]
	ldr	r0, .L_523f0
	add	r4, r6, #0
	add	r4, #40	@ 0x28
	cmp	r1, r0
	bne	.L_52368
	mov	r3, #0
	ldrh	r5, [r2, #0]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
.L_52368:
	lsl	r0, r3, #2
	add	r1, r2, #2
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	ldrb	r2, [r4, #0]
	add	r0, r3, #1
	mov	r3, ip
	strb	r0, [r3, #0]
	lsl	r0, r5, #16
	asr	r0, r0, #16
	mul	r0, r2
	ldrh	r4, [r6, #8]
	add	r0, r0, r4
	strh	r0, [r6, #8]
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r1, #0
	mul	r0, r2
	ldrh	r1, [r6, #10]
	add	r0, r0, r1
	strh	r0, [r6, #10]
	ldr	r4, .L_523f4
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r3, #0
	ldrsh	r5, [r0, r3]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r5, #0
	bl	FixedMul
	strh	r0, [r6, #12]
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #14]
	neg	r4, r4
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #16]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r5, #0
	bl	FixedMul
	strh	r0, [r6, #18]
	bl	func_8052178
.L_523e6:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_523ec:
	.4byte	sUnk_83B37FC
.L_523f0:
	.4byte	0x7FFF
.L_523f4:
	.4byte	sSinCosTable


thumb_func_start SpriteUnknownC2
SpriteUnknownC2:
	push	{lr}
	ldr	r1, .L_52418
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #18
	beq	.L_5243c
	cmp	r0, #18
	bgt	.L_5241c
	cmp	r0, #16
	beq	.L_52430
	cmp	r0, #16
	bgt	.L_52436
	cmp	r0, #0
	beq	.L_5242a
	b	.L_52452
.L_52418:
	.4byte	gCurrentSprite
.L_5241c:
	cmp	r0, #20
	beq	.L_52448
	cmp	r0, #20
	blt	.L_52442
	cmp	r0, #110	@ 0x6e
	beq	.L_5244e
	b	.L_52452
.L_5242a:
	bl	func_8051D10
	b	.L_52452
.L_52430:
	bl	func_804EC78
	b	.L_52452
.L_52436:
	bl	func_8051D8C
	b	.L_52452
.L_5243c:
	bl	func_8051E70
	b	.L_52452
.L_52442:
	bl	func_8051ED8
	b	.L_52452
.L_52448:
	bl	func_8051FEC
	b	.L_52452
.L_5244e:
	bl	func_8052048
.L_52452:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownC9
SpriteUnknownC9:
	push	{lr}
	ldr	r0, .L_52474
	mov	r1, #1
	strb	r1, [r0, #31]
	ldrb	r1, [r0, #28]
	add	r2, r0, #0
	cmp	r1, #16
	beq	.L_52486
	cmp	r1, #16
	bgt	.L_52478
	cmp	r1, #0
	beq	.L_52482
	b	.L_52498
	.align	2, 0
.L_52474:
	.4byte	gCurrentSprite
.L_52478:
	cmp	r1, #18
	beq	.L_5248c
	cmp	r1, #20
	beq	.L_52492
	b	.L_52498
.L_52482:
	bl	func_80520B4
.L_52486:
	bl	func_80521AC
	b	.L_5249c
.L_5248c:
	bl	func_8052244
	b	.L_5249c
.L_52492:
	bl	func_805231C
	b	.L_5249c
.L_52498:
	mov	r0, #0
	strh	r0, [r2, #0]
.L_5249c:
	pop	{r0}
	bx	r0


thumb_func_start func_80524A0
func_80524A0:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, .L_524f8
	ldrh	r1, [r3, #0]
	ldr	r2, .L_524fc
	add	r0, r2, #0
	mov	r4, #0
	mov	r2, #0
	orr	r0, r1
	ldr	r1, .L_52500
	and	r0, r1
	strh	r0, [r3, #0]
	strb	r4, [r3, #30]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_52504
	str	r0, [r3, #4]
	strb	r4, [r3, #22]
	strh	r2, [r3, #20]
	ldr	r0, .L_52508
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5250c
	mov	r0, #16
	strb	r0, [r3, #28]
	b	.L_52524
.L_524f8:
	.4byte	gCurrentSprite
.L_524fc:
	.4byte	0x4488
.L_52500:
	.4byte	0xFFFB
.L_52504:
	.4byte	sUnk_83D9B98
.L_52508:
	.4byte	gCurrentRoom
.L_5250c:
	mov	r0, #18
	strb	r0, [r3, #28]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	mov	r0, #150	@ 0x96
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
	add	r1, #1
	mov	r0, #128	@ 0x80
	strb	r0, [r1, #0]
.L_52524:
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	ldr	r4, .L_52588
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r8, r1
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	ldr	r5, .L_5258c
	strh	r0, [r5, #12]
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #14]
	neg	r4, r4
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #16]
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r5, #18]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_52588:
	.4byte	sSinCosTable
.L_5258c:
	.4byte	gCurrentSprite


thumb_func_start func_8052590
func_8052590:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #4
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #1
	ldr	r2, .L_525ac
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	ldrb	r1, [r0, #0]
	cmp	r1, #120	@ 0x78
	bls	.L_525b0
	ldrh	r0, [r2, #8]
	sub	r0, #2
	strh	r0, [r2, #8]
	b	.L_52668
.L_525ac:
	.4byte	gCurrentSprite
.L_525b0:
	add	r2, #40	@ 0x28
	ldrb	r0, [r2, #0]
	cmp	r0, #223	@ 0xdf
	bls	.L_525be
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #2
	b	.L_525d6
.L_525be:
	cmp	r1, #23
	bhi	.L_525cc
	add	r0, #32
	strb	r0, [r2, #0]
	ldrb	r0, [r2, #0]
	lsl	r7, r0, #1
	b	.L_525d6
.L_525cc:
	cmp	r1, #24
	bne	.L_525d6
	ldr	r0, .L_525f8
	bl	m4aSongNumStart
.L_525d6:
	ldr	r3, .L_525fc
	add	r0, r3, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	add	r2, r3, #0
	cmp	r0, #7
	bhi	.L_5265c
	ldr	r0, .L_52600
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #4
	bhi	.L_52640
	lsl	r0, r0, #2
	ldr	r1, .L_52604
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_525f8:
	.4byte	0x203
.L_525fc:
	.4byte	gCurrentSprite
.L_52600:
	.4byte	gCurrentPassage
.L_52604:
	.4byte	.L_52608
.L_52608:
	.4byte	.L_5261c
	.4byte	.L_52622
	.4byte	.L_52628
	.4byte	.L_52634
	.4byte	.L_52634
.L_5261c:
	ldrh	r0, [r2, #8]
	sub	r0, #28
	b	.L_52638
.L_52622:
	ldrh	r0, [r2, #8]
	sub	r0, #40	@ 0x28
	b	.L_52638
.L_52628:
	ldrh	r0, [r2, #8]
	sub	r0, #24
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #10]
	add	r0, #48	@ 0x30
	b	.L_5263e
.L_52634:
	ldrh	r0, [r2, #8]
	sub	r0, #20
.L_52638:
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #10]
	add	r0, #40	@ 0x28
.L_5263e:
	strh	r0, [r2, #10]
.L_52640:
	ldr	r0, .L_52658
	ldrb	r1, [r0, #24]
	ldrh	r3, [r0, #8]
	add	r3, #64	@ 0x40
	ldrh	r0, [r0, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r2, #0
	bl	func_801E430
	b	.L_52668
.L_52658:
	.4byte	gCurrentSprite
.L_5265c:
	cmp	r0, #8
	bne	.L_52668
	ldrh	r1, [r3, #0]
	ldr	r0, .L_52708
	and	r0, r1
	strh	r0, [r3, #0]
.L_52668:
	ldr	r6, .L_5270c
	add	r1, r6, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_526b0
	mov	r0, #20
	strb	r0, [r6, #28]
	mov	r0, #110	@ 0x6e
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #240	@ 0xf0
	strb	r0, [r1, #0]
	ldrh	r0, [r6, #8]
	sub	r0, #64	@ 0x40
	ldrh	r1, [r6, #10]
	add	r1, #128	@ 0x80
	mov	r2, #51	@ 0x33
	bl	SpriteSpawnSecondary
	bl	func_8026E78
	mov	r0, #96	@ 0x60
	mov	r1, #129	@ 0x81
	bl	ScreenShakeRequestXWithAmplitude
	ldr	r1, .L_52710
	mov	r0, #5
	strb	r0, [r1, #0]
	mov	r0, #129	@ 0x81
	lsl	r0, r0, #2
	bl	m4aSongNumStart
.L_526b0:
	ldr	r4, .L_52714
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r5, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r5, #0
	bl	FixedMul
	strh	r0, [r6, #12]
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #14]
	neg	r4, r4
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #16]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r5, #0
	bl	FixedMul
	strh	r0, [r6, #18]
	add	sp, #4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_52708:
	.4byte	0xFFF7
.L_5270c:
	.4byte	gCurrentSprite
.L_52710:
	.4byte	gGoldenDivaShopItemState
.L_52714:
	.4byte	sSinCosTable


thumb_func_start func_8052718
func_8052718:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #4
	mov	r0, #1
	mov	ip, r0
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #2
	ldr	r4, .L_5276c
	ldrh	r0, [r4, #8]
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldrh	r0, [r4, #10]
	add	r0, #128	@ 0x80
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	add	r6, r4, #0
	add	r6, #39	@ 0x27
	ldrb	r5, [r6, #0]
	cmp	r5, #0
	bne	.L_52742
	b	.L_529ec
.L_52742:
	cmp	r5, #15
	bhi	.L_52752
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	lsl	r7, r0, #1
	sub	r0, #16
	strb	r0, [r1, #0]
.L_52752:
	ldrb	r0, [r6, #0]
	sub	r0, #1
	strb	r0, [r6, #0]
	ldrb	r0, [r6, #0]
	sub	r0, #10
	cmp	r0, #95	@ 0x5f
	bls	.L_52762
	b	.L_529d6
.L_52762:
	lsl	r0, r0, #2
	ldr	r1, .L_52770
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_5276c:
	.4byte	gCurrentSprite
.L_52770:
	.4byte	.L_52774
.L_52774:
	.4byte	.L_529c4
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529b6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529da
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529a8
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529a2
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529c4
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_52994
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529da
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_52986
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_52980
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_52972
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_52964
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_52956
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_52948
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_5293a
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_5292c
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_5291e
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_52910
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_52902
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_529d6
	.4byte	.L_528f4
.L_528f4:
	add	r0, r3, #0
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r0, r2, #0
	sub	r0, #64	@ 0x40
	b	.L_529d0
.L_52902:
	add	r0, r3, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r0, r2, #0
	add	r0, #64	@ 0x40
	b	.L_529d0
.L_52910:
	add	r0, r3, #0
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r0, r2, #0
	sub	r0, #64	@ 0x40
	b	.L_529d0
.L_5291e:
	add	r0, r3, #0
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r0, r2, #0
	add	r0, #64	@ 0x40
	b	.L_529d0
.L_5292c:
	add	r0, r3, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r0, r2, #0
	sub	r0, #64	@ 0x40
	b	.L_529d0
.L_5293a:
	add	r0, r3, #0
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r0, r2, #0
	sub	r0, #64	@ 0x40
	b	.L_529d0
.L_52948:
	add	r0, r3, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r0, r2, #0
	add	r0, #64	@ 0x40
	b	.L_529d0
.L_52956:
	add	r0, r3, #0
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r0, r2, #0
	sub	r0, #64	@ 0x40
	b	.L_529d0
.L_52964:
	add	r0, r3, #0
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r0, r2, #0
	add	r0, #64	@ 0x40
	b	.L_529d0
.L_52972:
	add	r0, r3, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r0, r2, #0
	sub	r0, #64	@ 0x40
	b	.L_529d0
.L_52980:
	add	r0, r3, #0
	sub	r0, #32
	b	.L_529c8
.L_52986:
	add	r0, r3, #0
	add	r0, #32
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r0, r2, #0
	add	r0, #32
	b	.L_529d0
.L_52994:
	add	r0, r3, #0
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r0, r2, #0
	add	r0, #32
	b	.L_529d0
.L_529a2:
	add	r0, r3, #0
	sub	r0, #32
	b	.L_529c8
.L_529a8:
	add	r0, r3, #0
	add	r0, #32
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r0, r2, #0
	add	r0, #32
	b	.L_529d0
.L_529b6:
	add	r0, r3, #0
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r0, r2, #0
	add	r0, #32
	b	.L_529d0
.L_529c4:
	add	r0, r3, #0
	add	r0, #32
.L_529c8:
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r0, r2, #0
	sub	r0, #32
.L_529d0:
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	b	.L_529da
.L_529d6:
	mov	r1, #0
	mov	ip, r1
.L_529da:
	mov	r0, ip
	cmp	r0, #0
	beq	.L_52a38
	add	r0, r3, #0
	add	r1, r2, #0
	mov	r2, #51	@ 0x33
	bl	SpriteSpawnSecondary
	b	.L_52a38
.L_529ec:
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #12
	mov	r2, #0
	bl	func_801E430
	ldr	r0, .L_52a2c
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_52a34
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	mov	r2, #0
	ldr	r1, .L_52a30
	and	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #110	@ 0x6e
	strb	r0, [r4, #28]
	ldrh	r0, [r4, #8]
	add	r0, #64	@ 0x40
	strh	r0, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, #64	@ 0x40
	strh	r0, [r4, #10]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	b	.L_52a8a
.L_52a2c:
	.4byte	gCurrentPassage
.L_52a30:
	.4byte	0xBF7F
.L_52a34:
	strh	r5, [r4, #0]
	b	.L_52a8a
.L_52a38:
	ldr	r4, .L_52a94
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r6, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	ldr	r5, .L_52a98
	strh	r0, [r5, #12]
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #14]
	neg	r4, r4
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #16]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r5, #18]
.L_52a8a:
	add	sp, #4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_52a94:
	.4byte	sSinCosTable
.L_52a98:
	.4byte	gCurrentSprite


thumb_func_start func_8052A9C
func_8052A9C:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_52acc
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r6, .L_52ad0
	lsl	r0, r3, #1
	add	r0, r0, r6
	ldrh	r5, [r0, #0]
	mov	r4, #0
	ldrsh	r1, [r0, r4]
	ldr	r0, .L_52ad4
	add	r4, r2, #0
	cmp	r1, r0
	bne	.L_52ad8
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r6
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_52ae2
	.align	2, 0
.L_52acc:
	.4byte	gCurrentSprite
.L_52ad0:
	.4byte	sUnk_83DA7BC
.L_52ad4:
	.4byte	0x7FFF
.L_52ad8:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r5
.L_52ae2:
	strh	r0, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #8
	strh	r0, [r4, #10]
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r1, r0, #0
	ldr	r0, .L_52b10
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_52b0a
	strh	r1, [r4, #8]
	mov	r0, #111	@ 0x6f
	strb	r0, [r4, #28]
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r4, #0]
.L_52b0a:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_52b10:
	.4byte	gSpriteAiCollisionResult


thumb_func_start SpriteUnknownC3
SpriteUnknownC3:
	push	{lr}
	ldr	r1, .L_52b30
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #18
	beq	.L_52b4a
	cmp	r0, #18
	bgt	.L_52b34
	cmp	r0, #0
	beq	.L_52b3e
	cmp	r0, #16
	beq	.L_52b44
	b	.L_52b5a
.L_52b30:
	.4byte	gCurrentSprite
.L_52b34:
	cmp	r0, #20
	beq	.L_52b50
	cmp	r0, #110	@ 0x6e
	beq	.L_52b56
	b	.L_52b5a
.L_52b3e:
	bl	func_80524A0
	b	.L_52b5a
.L_52b44:
	bl	func_804EC78
	b	.L_52b5a
.L_52b4a:
	bl	func_8052590
	b	.L_52b5a
.L_52b50:
	bl	func_8052718
	b	.L_52b5a
.L_52b56:
	bl	func_8052A9C
.L_52b5a:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8052B60
func_8052B60:
	push	{lr}
	ldr	r0, .L_52b7c
	ldr	r0, [r0, #20]
	ldr	r1, .L_52b80
	and	r0, r1
	ldr	r1, .L_52b84
	cmp	r0, r1
	bne	.L_52b76
	ldr	r0, .L_52b88
	bl	m4aSongNumStart
.L_52b76:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_52b7c:
	.4byte	gCurrentSprite
.L_52b80:
	.4byte	0xFFFFFF
.L_52b84:
	.4byte	0x20002
.L_52b88:
	.4byte	0x206


thumb_func_start func_8052B8C
func_8052B8C:
	push	{r4, r5, lr}
	ldr	r3, .L_52be4
	ldrh	r1, [r3, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r4, #0
	mov	r2, #0
	orr	r0, r1
	ldr	r1, .L_52be8
	and	r0, r1
	strh	r0, [r3, #0]
	strb	r4, [r3, #30]
	add	r1, r3, #0
	add	r1, #32
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #33	@ 0x21
	mov	r5, #16
	strb	r5, [r0, #0]
	add	r1, #2
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_52bec
	str	r0, [r3, #4]
	strb	r4, [r3, #22]
	strh	r2, [r3, #20]
	ldr	r0, .L_52bf0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_52bf4
	strb	r5, [r3, #28]
	b	.L_52c06
.L_52be4:
	.4byte	gCurrentSprite
.L_52be8:
	.4byte	0xFFFB
.L_52bec:
	.4byte	sUnk_83D9DD4
.L_52bf0:
	.4byte	gCurrentRoom
.L_52bf4:
	mov	r0, #17
	strb	r0, [r3, #28]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	mov	r0, #171	@ 0xab
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
.L_52c06:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8052C0C
func_8052C0C:
	push	{r4, r5, r6, lr}
	ldr	r2, .L_52c54
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r5, .L_52c58
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_52c5c
	cmp	r1, r0
	bne	.L_52c2e
	ldrh	r4, [r5, #0]
	mov	r3, #0
.L_52c2e:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r1, r0, r4
	strh	r1, [r2, #8]
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #110	@ 0x6e
	bls	.L_52c64
	cmp	r0, #120	@ 0x78
	bne	.L_52cb0
	ldrh	r1, [r2, #0]
	ldr	r0, .L_52c60
	and	r0, r1
	strh	r0, [r2, #0]
	b	.L_52cb0
	.align	2, 0
.L_52c54:
	.4byte	gCurrentSprite
.L_52c58:
	.4byte	sUnk_83DA7F4
.L_52c5c:
	.4byte	0x7FFF
.L_52c60:
	.4byte	0xFFF7
.L_52c64:
	cmp	r0, #60	@ 0x3c
	bls	.L_52ca0
	ldr	r0, .L_52c7c
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	beq	.L_52c90
	cmp	r0, #2
	bgt	.L_52c80
	cmp	r0, #1
	beq	.L_52c8a
	b	.L_52cb0
	.align	2, 0
.L_52c7c:
	.4byte	gCurrentPassage
.L_52c80:
	cmp	r0, #3
	beq	.L_52c8a
	cmp	r0, #5
	beq	.L_52c94
	b	.L_52cb0
.L_52c8a:
	ldrh	r0, [r2, #8]
	sub	r0, #2
	b	.L_52c96
.L_52c90:
	sub	r0, r1, #3
	b	.L_52c96
.L_52c94:
	sub	r0, r1, #1
.L_52c96:
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #10]
	add	r0, #1
	strh	r0, [r2, #10]
	b	.L_52cb0
.L_52ca0:
	cmp	r0, #60	@ 0x3c
	bne	.L_52cb0
	ldr	r0, .L_52cec
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r0, #0
	strh	r0, [r2, #20]
.L_52cb0:
	mov	r6, #39	@ 0x27
	add	r6, r6, r2
	ldrb	r0, [r6, #0]
	sub	r0, #1
	strb	r0, [r6, #0]
	lsl	r0, r0, #24
	lsr	r3, r0, #24
	cmp	r3, #0
	bne	.L_52ce6
	mov	r0, #18
	strb	r0, [r2, #28]
	ldr	r0, .L_52cf0
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	mov	r1, #0
	strh	r3, [r2, #20]
	strb	r1, [r6, #0]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_52cf4
	bl	m4aSongNumStart
.L_52ce6:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_52cec:
	.4byte	sUnk_83D9DFC
.L_52cf0:
	.4byte	sUnk_83D9D6C
.L_52cf4:
	.4byte	0x207


thumb_func_start func_8052CF8
func_8052CF8:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #4
	ldr	r2, .L_52d4c
	mov	r0, #39	@ 0x27
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r0, [r0, #0]
	cmp	r0, #49	@ 0x31
	bhi	.L_52d50
	add	r1, r0, #1
	mov	r4, ip
	strb	r1, [r4, #0]
	add	r4, r2, #0
	add	r4, #41	@ 0x29
	ldrb	r0, [r4, #0]
	cmp	r0, #9
	bhi	.L_52dc6
	mov	r0, #7
	and	r1, r0
	cmp	r1, #0
	bne	.L_52dc6
	ldrb	r1, [r4, #0]
	ldrh	r3, [r2, #8]
	sub	r3, #72	@ 0x48
	ldrh	r0, [r2, #10]
	add	r0, #48	@ 0x30
	str	r0, [sp, #0]
	mov	r0, #202	@ 0xca
	mov	r2, #0
	bl	func_801E430
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #5
	bne	.L_52dc6
	bl	func_8026E78
	b	.L_52dc6
	.align	2, 0
.L_52d4c:
	.4byte	gCurrentSprite
.L_52d50:
	add	r7, r2, #0
	add	r7, #42	@ 0x2a
	ldrb	r3, [r7, #0]
	ldr	r6, .L_52da8
	lsl	r0, r3, #1
	add	r0, r0, r6
	ldrh	r5, [r0, #0]
	mov	r4, #0
	ldrsh	r1, [r0, r4]
	ldr	r0, .L_52dac
	add	r4, r2, #0
	add	r4, #40	@ 0x28
	cmp	r1, r0
	bne	.L_52d76
	ldrh	r5, [r6, #0]
	mov	r3, #0
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
.L_52d76:
	add	r0, r3, #1
	strb	r0, [r7, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r5
	mov	r1, #0
	strh	r0, [r2, #8]
	ldrb	r0, [r4, #0]
	cmp	r0, #1
	bls	.L_52dc6
	mov	r0, #19
	strb	r0, [r2, #28]
	ldr	r0, .L_52db0
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r7, #0]
	ldr	r0, .L_52db4
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	beq	.L_52db8
	cmp	r0, #5
	beq	.L_52dc0
	mov	r0, #174	@ 0xae
	b	.L_52dc2
.L_52da8:
	.4byte	sUnk_83DA83E
.L_52dac:
	.4byte	0x7FFF
.L_52db0:
	.4byte	sUnk_83D9DD4
.L_52db4:
	.4byte	gCurrentPassage
.L_52db8:
	mov	r0, #88	@ 0x58
	mov	r4, ip
	strb	r0, [r4, #0]
	b	.L_52dc6
.L_52dc0:
	mov	r0, #48	@ 0x30
.L_52dc2:
	mov	r1, ip
	strb	r0, [r1, #0]
.L_52dc6:
	add	sp, #4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8052DD0
func_8052DD0:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_52e10
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	beq	.L_52e20
	cmp	r0, #5
	beq	.L_52e58
	ldr	r2, .L_52e14
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #144	@ 0x90
	bhi	.L_52ec4
	add	r3, r2, #0
	ldrh	r0, [r3, #10]
	sub	r0, #4
	strh	r0, [r3, #10]
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_52e18
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_52e1c
	cmp	r1, r0
	bne	.L_52eb6
	b	.L_52eb2
	.align	2, 0
.L_52e10:
	.4byte	gCurrentPassage
.L_52e14:
	.4byte	gCurrentSprite
.L_52e18:
	.4byte	sUnk_83DA7F4
.L_52e1c:
	.4byte	0x7FFF
.L_52e20:
	ldr	r2, .L_52e3c
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #71	@ 0x47
	bhi	.L_52e40
	ldrh	r0, [r2, #10]
	sub	r0, #8
	strh	r0, [r2, #10]
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	b	.L_52e72
.L_52e3c:
	.4byte	gCurrentSprite
.L_52e40:
	cmp	r0, #73	@ 0x49
	bne	.L_52ed6
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	ldr	r0, .L_52e54
	bl	m4aSongNumStart
	b	.L_52ed6
.L_52e54:
	.4byte	0x2AD
.L_52e58:
	ldr	r2, .L_52e98
	add	r0, r2, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #31
	bhi	.L_52ea4
	ldrh	r0, [r2, #10]
	sub	r0, #4
	strh	r0, [r2, #10]
	mov	r6, #42	@ 0x2a
	add	r6, r6, r2
	mov	ip, r6
	ldrb	r3, [r6, #0]
.L_52e72:
	ldr	r5, .L_52e9c
	lsl	r0, r3, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_52ea0
	cmp	r1, r0
	bne	.L_52e88
	ldrh	r4, [r5, #0]
	mov	r3, #0
.L_52e88:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
	b	.L_52ed6
	.align	2, 0
.L_52e98:
	.4byte	gCurrentSprite
.L_52e9c:
	.4byte	sUnk_83DA7F4
.L_52ea0:
	.4byte	0x7FFF
.L_52ea4:
	cmp	r0, #33	@ 0x21
	bne	.L_52ed6
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	b	.L_52ed6
.L_52eb2:
	ldrh	r4, [r5, #0]
	mov	r2, #0
.L_52eb6:
	add	r0, r2, #1
	mov	r6, ip
	strb	r0, [r6, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
	strh	r0, [r3, #8]
	b	.L_52ed6
.L_52ec4:
	cmp	r0, #145	@ 0x91
	bne	.L_52ed6
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	ldr	r0, .L_52f00
	bl	m4aSongNumStart
.L_52ed6:
	ldr	r2, .L_52f04
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_52f0e
	ldr	r0, .L_52f08
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_52f0c
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #20
	strb	r0, [r2, #28]
	b	.L_52f0e
.L_52f00:
	.4byte	0x2AD
.L_52f04:
	.4byte	gCurrentSprite
.L_52f08:
	.4byte	gCurrentPassage
.L_52f0c:
	strh	r1, [r2, #0]
.L_52f0e:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8052F14
func_8052F14:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_52f48
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_52f4c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_52f50
	cmp	r1, r0
	bne	.L_52f36
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_52f36:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_52f48:
	.4byte	gCurrentSprite
.L_52f4c:
	.4byte	sUnk_83DA7F4
.L_52f50:
	.4byte	0x7FFF


thumb_func_start func_8052F54
func_8052F54:
	push	{r4, lr}
	ldr	r0, .L_52fbc
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_52fc0
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r3, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r1, #34	@ 0x22
	mov	r0, #8
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_52fc4
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	strb	r2, [r1, #28]
	ldrb	r1, [r1, #24]
	lsl	r1, r1, #1
	mov	r0, #10
	sub	r0, r0, r1
	mov	r1, ip
	add	r1, #40	@ 0x28
	lsl	r0, r0, #2
	strb	r0, [r1, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_52fbc:
	.4byte	gCurrentSprite
.L_52fc0:
	.4byte	0xFFFB
.L_52fc4:
	.4byte	sUnk_83D9D94


thumb_func_start func_8052FC8
func_8052FC8:
	ldr	r1, .L_52fe0
	add	r2, r1, #0
	add	r2, #40	@ 0x28
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_52fe4
	sub	r0, #1
	strb	r0, [r2, #0]
	ldrh	r0, [r1, #10]
	add	r0, #10
	strh	r0, [r1, #10]
	b	.L_52fee
.L_52fe0:
	.4byte	gCurrentSprite
.L_52fe4:
	mov	r0, #18
	strb	r0, [r1, #28]
	add	r1, #39	@ 0x27
	mov	r0, #5
	strb	r0, [r1, #0]
.L_52fee:
	bx	lr


thumb_func_start func_8052FF0
func_8052FF0:
	push	{lr}
	ldr	r2, .L_53014
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_5302e
	ldrb	r0, [r2, #24]
	cmp	r0, #4
	bne	.L_53018
	mov	r0, #196	@ 0xc4
	bl	SpriteUtilFindSpriteSlotWork3
	b	.L_53022
	.align	2, 0
.L_53014:
	.4byte	gCurrentSprite
.L_53018:
	add	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	bl	SpriteUtilFindOwnSlot
.L_53022:
	ldr	r0, .L_53034
	mov	r2, #0
	mov	r1, #20
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	strb	r2, [r0, #0]
.L_5302e:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_53034:
	.4byte	gCurrentSprite


thumb_func_start func_8053038
func_8053038:
	push	{lr}
	ldr	r3, .L_53080
	ldr	r2, .L_53084
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #8]
	strh	r0, [r3, #8]
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	add	r1, r0, #1
	strb	r1, [r2, #0]
	mov	r0, #7
	and	r0, r1
	ldrb	r2, [r3, #24]
	cmp	r0, r2
	bne	.L_53096
	lsl	r0, r1, #24
	lsr	r0, r0, #27
	add	r0, r0, r2
	mov	r1, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_53088
	ldrh	r0, [r3, #8]
	add	r0, #32
	ldrh	r1, [r3, #10]
	sub	r1, #32
	mov	r2, #51	@ 0x33
	bl	SpriteSpawnSecondary
	b	.L_53096
.L_53080:
	.4byte	gCurrentSprite
.L_53084:
	.4byte	gSpriteData
.L_53088:
	ldrh	r0, [r3, #8]
	sub	r0, #32
	ldrh	r1, [r3, #10]
	add	r1, #32
	mov	r2, #51	@ 0x33
	bl	SpriteSpawnSecondary
.L_53096:
	ldr	r3, .L_530bc
	ldrb	r0, [r3, #24]
	cmp	r0, #4
	bne	.L_530c4
	ldrh	r0, [r3, #8]
	sub	r0, #72	@ 0x48
	strh	r0, [r3, #8]
	ldr	r2, .L_530c0
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrb	r0, [r0, #28]
	cmp	r0, #19
	bne	.L_530e2
	mov	r0, #22
	b	.L_530d8
.L_530bc:
	.4byte	gCurrentSprite
.L_530c0:
	.4byte	gSpriteData
.L_530c4:
	ldr	r2, .L_530e8
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrb	r0, [r0, #28]
	cmp	r0, #22
	bne	.L_530e2
.L_530d8:
	strb	r0, [r3, #28]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	mov	r0, #8
	strb	r0, [r1, #0]
.L_530e2:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_530e8:
	.4byte	gSpriteData


thumb_func_start func_80530EC
func_80530EC:
	ldr	r2, .L_5310c
	ldrh	r0, [r2, #0]
	mov	r1, #4
	eor	r0, r1
	strh	r0, [r2, #0]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_5310a
	strh	r0, [r2, #0]
.L_5310a:
	bx	lr
.L_5310c:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownC4
SpriteUnknownC4:
	push	{lr}
	ldr	r1, .L_53128
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #20
	bhi	.L_531a6
	lsl	r0, r0, #2
	ldr	r1, .L_5312c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_53128:
	.4byte	gCurrentSprite
.L_5312c:
	.4byte	.L_53130
.L_53130:
	.4byte	.L_53184
	.4byte	.L_531a6
	.4byte	.L_531a6
	.4byte	.L_531a6
	.4byte	.L_531a6
	.4byte	.L_531a6
	.4byte	.L_531a6
	.4byte	.L_531a6
	.4byte	.L_531a6
	.4byte	.L_531a6
	.4byte	.L_531a6
	.4byte	.L_531a6
	.4byte	.L_531a6
	.4byte	.L_531a6
	.4byte	.L_531a6
	.4byte	.L_531a6
	.4byte	.L_5318a
	.4byte	.L_53190
	.4byte	.L_53196
	.4byte	.L_5319c
	.4byte	.L_531a2
.L_53184:
	bl	func_8052B8C
	b	.L_531a6
.L_5318a:
	bl	func_804EC78
	b	.L_531a6
.L_53190:
	bl	func_8052C0C
	b	.L_531a6
.L_53196:
	bl	func_8052CF8
	b	.L_531a6
.L_5319c:
	bl	func_8052DD0
	b	.L_531a6
.L_531a2:
	bl	func_8052F14
.L_531a6:
	bl	func_8052B60
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownCA
SpriteUnknownCA:
	push	{lr}
	ldr	r1, .L_531c8
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #22
	bhi	.L_53248
	lsl	r0, r0, #2
	ldr	r1, .L_531cc
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_531c8:
	.4byte	gCurrentSprite
.L_531cc:
	.4byte	.L_531d0
.L_531d0:
	.4byte	.L_5322c
	.4byte	.L_53248
	.4byte	.L_53248
	.4byte	.L_53248
	.4byte	.L_53248
	.4byte	.L_53248
	.4byte	.L_53248
	.4byte	.L_53248
	.4byte	.L_53248
	.4byte	.L_53248
	.4byte	.L_53248
	.4byte	.L_53248
	.4byte	.L_53248
	.4byte	.L_53248
	.4byte	.L_53248
	.4byte	.L_53248
	.4byte	.L_53232
	.4byte	.L_53248
	.4byte	.L_53238
	.4byte	.L_53248
	.4byte	.L_5323e
	.4byte	.L_53248
	.4byte	.L_53244
.L_5322c:
	bl	func_8052F54
	b	.L_53248
.L_53232:
	bl	func_8052FC8
	b	.L_53248
.L_53238:
	bl	func_8052FF0
	b	.L_53248
.L_5323e:
	bl	func_8053038
	b	.L_53248
.L_53244:
	bl	func_80530EC
.L_53248:
	pop	{r0}
	bx	r0


thumb_func_start func_805324C
func_805324C:
	push	{r4, r5, lr}
	ldr	r0, .L_532b4
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r4, #0
	mov	r5, #0
	orr	r0, r1
	ldr	r1, .L_532b8
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r4, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r3, #64	@ 0x40
	strb	r3, [r0, #0]
	add	r0, #1
	mov	r1, #60	@ 0x3c
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r3, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_532bc
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r4, [r1, #22]
	strh	r5, [r1, #20]
	strb	r2, [r1, #28]
	add	r1, #39	@ 0x27
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #40	@ 0x28
	strb	r4, [r0, #0]
	mov	r0, #21
	bl	VoiceSetPlay
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_532b4:
	.4byte	gCurrentSprite
.L_532b8:
	.4byte	0xFFFB
.L_532bc:
	.4byte	sUnk_83D8644


thumb_func_start func_80532C0
func_80532C0:
	ldr	r2, .L_532ec
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_532e8
	ldr	r0, .L_532f0
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	mov	r0, #0
	strh	r1, [r2, #20]
	add	r1, r2, #0
	add	r1, #42	@ 0x2a
	strb	r0, [r1, #0]
	mov	r0, #18
	strb	r0, [r2, #28]
.L_532e8:
	bx	lr
	.align	2, 0
.L_532ec:
	.4byte	gCurrentSprite
.L_532f0:
	.4byte	sUnk_83D84FC


thumb_func_start func_80532F4
func_80532F4:
	push	{r4, r5, lr}
	ldr	r3, .L_53328
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r1, .L_5332c
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	mov	r5, #0
	ldrsh	r1, [r0, r5]
	ldr	r0, .L_53330
	cmp	r1, r0
	bne	.L_53334
	mov	r1, #0
	mov	r0, #24
	strb	r0, [r3, #28]
	mov	r0, ip
	strb	r1, [r0, #0]
	add	r1, r3, #0
	add	r1, #39	@ 0x27
	mov	r0, #240	@ 0xf0
	strb	r0, [r1, #0]
	b	.L_5334e
	.align	2, 0
.L_53328:
	.4byte	gCurrentSprite
.L_5332c:
	.4byte	sUnk_83DA9D2
.L_53330:
	.4byte	0x7FFF
.L_53334:
	add	r0, r2, #1
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	mov	r5, ip
	strb	r2, [r5, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
	strh	r0, [r3, #8]
	cmp	r2, #18
	bne	.L_5334e
	mov	r0, #19
	bl	VoiceSetPlay
.L_5334e:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8053354
func_8053354:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_533d0
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_533d4
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_533d8
	cmp	r1, r0
	bne	.L_53376
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_53376:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_5338e
	b	.L_5347a
.L_5338e:
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_5339c
	b	.L_5347a
.L_5339c:
	ldr	r0, .L_533dc
	ldrb	r0, [r0, #0]
	cmp	r0, #11
	bne	.L_533a6
	b	.L_5347a
.L_533a6:
	ldr	r0, .L_533e0
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r1, [r4, #20]
	mov	r0, #22
	strb	r0, [r4, #28]
	mov	r0, #48	@ 0x30
	strb	r0, [r2, #0]
	ldr	r0, .L_533e4
	bl	m4aSongNumStart
	ldrb	r0, [r4, #24]
	cmp	r0, #11
	bhi	.L_5347a
	lsl	r0, r0, #2
	ldr	r1, .L_533e8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_533d0:
	.4byte	gCurrentSprite
.L_533d4:
	.4byte	sUnk_83DA960
.L_533d8:
	.4byte	0x7FFF
.L_533dc:
	.4byte	gTimerState
.L_533e0:
	.4byte	sUnk_83D85FC
.L_533e4:
	.4byte	0x1D7
.L_533e8:
	.4byte	.L_533ec
.L_533ec:
	.4byte	.L_5341c
	.4byte	.L_53424
	.4byte	.L_5342c
	.4byte	.L_53434
	.4byte	.L_5343c
	.4byte	.L_53444
	.4byte	.L_5344c
	.4byte	.L_53454
	.4byte	.L_5345c
	.4byte	.L_53464
	.4byte	.L_5346c
	.4byte	.L_53474
.L_5341c:
	ldr	r1, .L_53420
	b	.L_53476
.L_53420:
	.4byte	gCollectedNEJewelPiece
.L_53424:
	ldr	r1, .L_53428
	b	.L_53476
.L_53428:
	.4byte	gCollectedSEJewelPiece
.L_5342c:
	ldr	r1, .L_53430
	b	.L_53476
.L_53430:
	.4byte	gCollectedSWJewelPiece
.L_53434:
	ldr	r1, .L_53438
	b	.L_53476
.L_53438:
	.4byte	gCollectedNWJewelPiece
.L_5343c:
	ldr	r1, .L_53440
	b	.L_53476
.L_53440:
	.4byte	gHasGoldenDivaChest5
.L_53444:
	ldr	r1, .L_53448
	b	.L_53476
.L_53448:
	.4byte	gHasGoldenDivaChest6
.L_5344c:
	ldr	r1, .L_53450
	b	.L_53476
.L_53450:
	.4byte	gHasGoldenDivaChest7
.L_53454:
	ldr	r1, .L_53458
	b	.L_53476
.L_53458:
	.4byte	gHasGoldenDivaChest8
.L_5345c:
	ldr	r1, .L_53460
	b	.L_53476
.L_53460:
	.4byte	gHasGoldenDivaChest9
.L_53464:
	ldr	r1, .L_53468
	b	.L_53476
.L_53468:
	.4byte	gHasGoldenDivaChest10
.L_5346c:
	ldr	r1, .L_53470
	b	.L_53476
.L_53470:
	.4byte	gHasGoldenDivaChest11
.L_53474:
	ldr	r1, .L_53480
.L_53476:
	mov	r0, #0
	strb	r0, [r1, #0]
.L_5347a:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_53480:
	.4byte	gHasGoldenDivaChest12


thumb_func_start func_8053484
func_8053484:
	push	{r4, lr}
	ldr	r2, .L_534c0
	ldrh	r1, [r2, #0]
	mov	r0, #2
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #0
	beq	.L_534c4
	ldrh	r0, [r2, #8]
	sub	r0, #8
	strh	r0, [r2, #8]
	add	r4, r2, #0
	add	r4, #40	@ 0x28
	ldrb	r1, [r4, #0]
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_534b6
	ldrh	r0, [r2, #8]
	add	r0, #32
	ldrh	r1, [r2, #10]
	mov	r2, #71	@ 0x47
	bl	SpriteSpawnSecondary
.L_534b6:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	b	.L_534c6
	.align	2, 0
.L_534c0:
	.4byte	gCurrentSprite
.L_534c4:
	strh	r0, [r2, #0]
.L_534c6:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_80534CC
func_80534CC:
	ldr	r2, .L_534e4
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_534e2
	strh	r0, [r2, #0]
.L_534e2:
	bx	lr
.L_534e4:
	.4byte	gCurrentSprite


thumb_func_start func_80534E8
func_80534E8:
	ldr	r0, .L_534f8
	mov	r2, #0
	mov	r1, #111	@ 0x6f
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
	.align	2, 0
.L_534f8:
	.4byte	gCurrentSprite


thumb_func_start func_80534FC
func_80534FC:
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L_5352c
	mov	r0, #42	@ 0x2a
	add	r0, r0, r2
	mov	ip, r0
	ldrb	r3, [r0, #0]
	ldr	r6, .L_53530
	lsl	r0, r3, #1
	add	r0, r0, r6
	ldrh	r5, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_53534
	add	r7, r2, #0
	cmp	r1, r0
	bne	.L_53538
	sub	r1, r3, #1
	lsl	r1, r1, #1
	add	r1, r1, r6
	ldrh	r0, [r7, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_53542
	.align	2, 0
.L_5352c:
	.4byte	gCurrentSprite
.L_53530:
	.4byte	sUnk_8352ADC
.L_53534:
	.4byte	0x7FFF
.L_53538:
	add	r0, r3, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r7, #8]
	add	r0, r0, r5
.L_53542:
	strh	r0, [r7, #8]
	ldrb	r0, [r7, #24]
	cmp	r0, #11
	bls	.L_5354c
	b	.L_53662
.L_5354c:
	lsl	r0, r0, #2
	ldr	r1, .L_53558
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_53558:
	.4byte	.L_5355c
.L_5355c:
	.4byte	.L_535b8
	.4byte	.L_5358c
	.4byte	.L_53660
	.4byte	.L_535e0
	.4byte	.L_53594
	.4byte	.L_53660
	.4byte	.L_53608
	.4byte	.L_5359c
	.4byte	.L_53660
	.4byte	.L_53630
	.4byte	.L_535a4
	.4byte	.L_53660
.L_5358c:
	ldr	r0, .L_53590
	b	.L_535a6
.L_53590:
	.4byte	gCollectedSWJewelPiece
.L_53594:
	ldr	r0, .L_53598
	b	.L_535a6
.L_53598:
	.4byte	gHasGoldenDivaChest6
.L_5359c:
	ldr	r0, .L_535a0
	b	.L_535a6
.L_535a0:
	.4byte	gHasGoldenDivaChest9
.L_535a4:
	ldr	r0, .L_535b4
.L_535a6:
	ldrb	r0, [r0, #0]
	mov	r4, #64	@ 0x40
	cmp	r0, #0
	beq	.L_53662
	mov	r4, #192	@ 0xc0
	b	.L_53662
	.align	2, 0
.L_535b4:
	.4byte	gHasGoldenDivaChest12
.L_535b8:
	ldr	r0, .L_535d8
	ldrb	r1, [r0, #0]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_535ca
	ldr	r0, .L_535dc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_53642
.L_535ca:
	ldrb	r0, [r2, #0]
	mov	r4, #192	@ 0xc0
	cmp	r0, #0
	bne	.L_53662
	ldr	r0, .L_535dc
	b	.L_5365a
	.align	2, 0
.L_535d8:
	.4byte	gCollectedSEJewelPiece
.L_535dc:
	.4byte	gCollectedSWJewelPiece
.L_535e0:
	ldr	r0, .L_53600
	ldrb	r1, [r0, #0]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_535f2
	ldr	r0, .L_53604
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_53642
.L_535f2:
	ldrb	r0, [r2, #0]
	mov	r4, #192	@ 0xc0
	cmp	r0, #0
	bne	.L_53662
	ldr	r0, .L_53604
	b	.L_5365a
	.align	2, 0
.L_53600:
	.4byte	gHasGoldenDivaChest5
.L_53604:
	.4byte	gHasGoldenDivaChest6
.L_53608:
	ldr	r0, .L_53628
	ldrb	r1, [r0, #0]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_5361a
	ldr	r0, .L_5362c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_53642
.L_5361a:
	ldrb	r0, [r2, #0]
	mov	r4, #192	@ 0xc0
	cmp	r0, #0
	bne	.L_53662
	ldr	r0, .L_5362c
	b	.L_5365a
	.align	2, 0
.L_53628:
	.4byte	gHasGoldenDivaChest8
.L_5362c:
	.4byte	gHasGoldenDivaChest9
.L_53630:
	ldr	r0, .L_53648
	ldrb	r1, [r0, #0]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_53650
	ldr	r0, .L_5364c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_53650
.L_53642:
	mov	r4, #160	@ 0xa0
	lsl	r4, r4, #1
	b	.L_53662
.L_53648:
	.4byte	gHasGoldenDivaChest11
.L_5364c:
	.4byte	gHasGoldenDivaChest12
.L_53650:
	ldrb	r0, [r2, #0]
	mov	r4, #192	@ 0xc0
	cmp	r0, #0
	bne	.L_53662
	ldr	r0, .L_5369c
.L_5365a:
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_53662
.L_53660:
	mov	r4, #64	@ 0x40
.L_53662:
	ldrh	r0, [r7, #8]
	add	r0, r0, r4
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r7, #10]
	bl	func_8023A60
	add	r1, r0, #0
	ldr	r0, .L_536a0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_53694
	sub	r0, r1, r4
	mov	r1, #0
	mov	r2, #0
	strh	r0, [r7, #8]
	mov	r0, #112	@ 0x70
	strb	r0, [r7, #28]
	ldr	r0, .L_536a4
	str	r0, [r7, #4]
	strb	r1, [r7, #22]
	strh	r2, [r7, #20]
	mov	r0, #22
	bl	VoiceSetPlay
.L_53694:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5369c:
	.4byte	gHasGoldenDivaChest12
.L_536a0:
	.4byte	gSpriteAiCollisionResult
.L_536a4:
	.4byte	sUnk_83D873C


thumb_func_start SpriteBossTreasureChest
SpriteBossTreasureChest:
	push	{lr}
	ldr	r1, .L_536c8
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r0, .L_536cc
	ldrb	r0, [r0, #0]
	sub	r0, #2
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #8
	bhi	.L_536d0
	ldrb	r0, [r1, #22]
	sub	r0, #1
	strb	r0, [r1, #22]
	b	.L_53732
	.align	2, 0
.L_536c8:
	.4byte	gCurrentSprite
.L_536cc:
	.4byte	gTimerState
.L_536d0:
	ldrb	r0, [r1, #28]
	cmp	r0, #20
	beq	.L_5371e
	cmp	r0, #20
	bgt	.L_536ee
	cmp	r0, #16
	beq	.L_5370c
	cmp	r0, #16
	bgt	.L_536e8
	cmp	r0, #0
	beq	.L_53706
	b	.L_53732
.L_536e8:
	cmp	r0, #18
	beq	.L_53712
	b	.L_53732
.L_536ee:
	cmp	r0, #24
	beq	.L_53718
	cmp	r0, #24
	bgt	.L_536fc
	cmp	r0, #22
	beq	.L_53724
	b	.L_53732
.L_536fc:
	cmp	r0, #110	@ 0x6e
	beq	.L_5372a
	cmp	r0, #111	@ 0x6f
	beq	.L_5372e
	b	.L_53732
.L_53706:
	bl	func_805324C
	b	.L_53732
.L_5370c:
	bl	func_80532C0
	b	.L_53732
.L_53712:
	bl	func_80532F4
	b	.L_53732
.L_53718:
	bl	func_8053354
	b	.L_53732
.L_5371e:
	bl	func_8053484
	b	.L_53732
.L_53724:
	bl	func_80534CC
	b	.L_53732
.L_5372a:
	bl	func_80534E8
.L_5372e:
	bl	func_80534FC
.L_53732:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteShopkeeper
SpriteShopkeeper:
	push	{lr}
	ldr	r1, .L_53754
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #121	@ 0x79
	bls	.L_53748
	b	.L_53a26
.L_53748:
	lsl	r0, r0, #2
	ldr	r1, .L_53758
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_53754:
	.4byte	gCurrentSprite
.L_53758:
	.4byte	.L_5375c
.L_5375c:
	.4byte	.L_53944
	.4byte	.L_5394a
	.4byte	.L_53950
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53956
	.4byte	.L_53968
	.4byte	.L_5396e
	.4byte	.L_53974
	.4byte	.L_5397a
	.4byte	.L_53980
	.4byte	.L_53984
	.4byte	.L_539d0
	.4byte	.L_539d4
	.4byte	.L_539c6
	.4byte	.L_539ca
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_539da
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_539ea
	.4byte	.L_539f0
	.4byte	.L_539f6
	.4byte	.L_539fc
	.4byte	.L_53a02
	.4byte	.L_53a08
	.4byte	.L_53a0e
	.4byte	.L_53a26
	.4byte	.L_53a14
	.4byte	.L_53a18
	.4byte	.L_53a1e
	.4byte	.L_53a22
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_53a26
	.4byte	.L_5398a
	.4byte	.L_53990
	.4byte	.L_53996
	.4byte	.L_5399c
	.4byte	.L_539a2
	.4byte	.L_539a8
	.4byte	.L_539ae
	.4byte	.L_539b4
	.4byte	.L_539ba
	.4byte	.L_539c0
	.4byte	.L_539e0
	.4byte	.L_539e4
.L_53944:
	bl	func_804EDC8
	b	.L_53a26
.L_5394a:
	bl	func_804EE58
	b	.L_53a26
.L_53950:
	bl	func_804EE70
	b	.L_53a26
.L_53956:
	ldr	r0, .L_53964
	bl	func_804EA88
	bl	func_804EB84
	b	.L_53a26
	.align	2, 0
.L_53964:
	.4byte	sUnk_83DA1F4
.L_53968:
	bl	func_804FE20
	b	.L_53a26
.L_5396e:
	bl	func_804FEC8
	b	.L_53a26
.L_53974:
	bl	func_804FC94
	b	.L_53a26
.L_5397a:
	bl	func_804FD2C
	b	.L_53a26
.L_53980:
	bl	func_804FD8C
.L_53984:
	bl	func_804FDBC
	b	.L_53a26
.L_5398a:
	bl	func_804F9F8
	b	.L_53a26
.L_53990:
	bl	func_804FB24
	b	.L_53a26
.L_53996:
	bl	func_804FB94
	b	.L_53a26
.L_5399c:
	bl	func_804FC04
	b	.L_53a26
.L_539a2:
	bl	func_804F7D4
	b	.L_53a26
.L_539a8:
	bl	func_804F86C
	b	.L_53a26
.L_539ae:
	bl	func_804F8DC
	b	.L_53a26
.L_539b4:
	bl	func_804F94C
	b	.L_53a26
.L_539ba:
	bl	func_804F688
	b	.L_53a26
.L_539c0:
	bl	func_804F708
	b	.L_53a26
.L_539c6:
	bl	func_804FFCC
.L_539ca:
	bl	func_804FFEC
	b	.L_53a26
.L_539d0:
	bl	func_8050020
.L_539d4:
	bl	func_8050038
	b	.L_53a26
.L_539da:
	bl	func_8050048
	b	.L_53a26
.L_539e0:
	bl	func_804FFA4
.L_539e4:
	bl	func_804FFBC
	b	.L_53a26
.L_539ea:
	bl	func_804F2A8
	b	.L_53a26
.L_539f0:
	bl	func_804F31C
	b	.L_53a26
.L_539f6:
	bl	func_804F364
	b	.L_53a26
.L_539fc:
	bl	func_804F3FC
	b	.L_53a26
.L_53a02:
	bl	func_804F454
	b	.L_53a26
.L_53a08:
	bl	func_804F4E0
	b	.L_53a26
.L_53a0e:
	bl	func_804F5A8
	b	.L_53a26
.L_53a14:
	bl	func_804F208
.L_53a18:
	bl	func_804F27C
	b	.L_53a26
.L_53a1e:
	bl	func_804F144
.L_53a22:
	bl	func_804F1B4
.L_53a26:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8053A2C
func_8053A2C:
	ldr	r0, .L_53a7c
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_53a80
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #30]
	add	r1, #32
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #32
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r0, ip
	strb	r2, [r0, #22]
	strh	r3, [r0, #20]
	mov	r0, #16
	mov	r1, ip
	strb	r0, [r1, #28]
	bx	lr
.L_53a7c:
	.4byte	gCurrentSprite
.L_53a80:
	.4byte	0xFFFB


thumb_func_start SpriteUnknown0C
SpriteUnknown0C:
	push	{r4, lr}
	ldr	r4, .L_53abc
	mov	r0, #1
	strb	r0, [r4, #31]
	ldrb	r0, [r4, #28]
	cmp	r0, #0
	bne	.L_53aa2
	bl	func_8053A2C
	ldr	r0, .L_53ac0
	str	r0, [r4, #4]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #25
	strb	r0, [r1, #0]
.L_53aa2:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_53ab6
	strh	r0, [r4, #0]
.L_53ab6:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_53abc:
	.4byte	gCurrentSprite
.L_53ac0:
	.4byte	sUnk_83D857C


thumb_func_start SpriteUnknown0B
SpriteUnknown0B:
	push	{r4, lr}
	ldr	r4, .L_53afc
	mov	r0, #1
	strb	r0, [r4, #31]
	ldrb	r0, [r4, #28]
	cmp	r0, #0
	bne	.L_53ae2
	bl	func_8053A2C
	ldr	r0, .L_53b00
	str	r0, [r4, #4]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #25
	strb	r0, [r1, #0]
.L_53ae2:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_53af6
	strh	r0, [r4, #0]
.L_53af6:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_53afc:
	.4byte	gCurrentSprite
.L_53b00:
	.4byte	sUnk_83D84D4


thumb_func_start SpriteUnknown0A
SpriteUnknown0A:
	push	{r4, lr}
	ldr	r4, .L_53b3c
	mov	r0, #1
	strb	r0, [r4, #31]
	ldrb	r0, [r4, #28]
	cmp	r0, #0
	bne	.L_53b22
	bl	func_8053A2C
	ldr	r0, .L_53b40
	str	r0, [r4, #4]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #43	@ 0x2b
	strb	r0, [r1, #0]
.L_53b22:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_53b36
	strh	r0, [r4, #0]
.L_53b36:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_53b3c:
	.4byte	gCurrentSprite
.L_53b40:
	.4byte	sUnk_83D853C


thumb_func_start SpriteUnknown0F
SpriteUnknown0F:
	push	{lr}
	ldr	r1, .L_53b64
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #115	@ 0x73
	beq	.L_53b9c
	cmp	r0, #115	@ 0x73
	bgt	.L_53b72
	cmp	r0, #18
	beq	.L_53b8a
	cmp	r0, #18
	bgt	.L_53b68
	cmp	r0, #0
	beq	.L_53b84
	b	.L_53bb8
.L_53b64:
	.4byte	gCurrentSprite
.L_53b68:
	cmp	r0, #111	@ 0x6f
	beq	.L_53b90
	cmp	r0, #113	@ 0x71
	beq	.L_53b96
	b	.L_53bb8
.L_53b72:
	cmp	r0, #117	@ 0x75
	beq	.L_53ba8
	cmp	r0, #117	@ 0x75
	blt	.L_53ba2
	cmp	r0, #119	@ 0x77
	beq	.L_53bae
	cmp	r0, #121	@ 0x79
	beq	.L_53bb4
	b	.L_53bb8
.L_53b84:
	bl	func_8050078
	b	.L_53bb8
.L_53b8a:
	bl	func_8050144
	b	.L_53bb8
.L_53b90:
	bl	func_80501E4
	b	.L_53bb8
.L_53b96:
	bl	func_8050214
	b	.L_53bb8
.L_53b9c:
	bl	func_8050270
	b	.L_53bb8
.L_53ba2:
	bl	func_8050308
	b	.L_53bb8
.L_53ba8:
	bl	func_805037C
	b	.L_53bb8
.L_53bae:
	bl	func_80503A4
	b	.L_53bb8
.L_53bb4:
	bl	func_80503D0
.L_53bb8:
	pop	{r0}
	bx	r0
