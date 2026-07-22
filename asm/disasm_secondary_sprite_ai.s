.include "macros.s.inc"


thumb_func_start func_8076A54
func_8076A54:
	push	{r4, r5, lr}
	ldr	r2, .L_76a74
	ldrb	r3, [r2, #4]
	ldr	r1, .L_76a78
	lsl	r0, r3, #1
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	mov	r5, #0
	ldrsh	r1, [r0, r5]
	ldr	r0, .L_76a7c
	cmp	r1, r0
	bne	.L_76a80
	mov	r0, #0
	strb	r0, [r2, #0]
	b	.L_76a8a
	.align	2, 0
.L_76a74:
	.4byte	gCurrentSecondarySprite
.L_76a78:
	.4byte	sUnk_84165F4
.L_76a7c:
	.4byte	0x00007fff
.L_76a80:
	add	r0, r3, #1
	strb	r0, [r2, #4]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
.L_76a8a:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8076A90
func_8076A90:
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L_76ab4
	ldrb	r3, [r2, #4]
	ldr	r0, .L_76ab8
	lsl	r1, r3, #1
	add	r0, r1, r0
	ldrh	r4, [r0, #0]
	ldr	r0, .L_76abc
	add	r1, r1, r0
	mov	r0, #0
	ldrsh	r7, [r1, r0]
	ldr	r0, .L_76ac0
	cmp	r7, r0
	bne	.L_76ac4
	mov	r0, #0
	strb	r0, [r2, #0]
	b	.L_76b2e
	.align	2, 0
.L_76ab4:
	.4byte	gCurrentSecondarySprite
.L_76ab8:
	.4byte	sUnk_84165F4
.L_76abc:
	.4byte	sUnk_84167B4
.L_76ac0:
	.4byte	0x00007fff
.L_76ac4:
	ldrb	r1, [r2, #0]
	mov	r0, #2
	orr	r0, r1
	strb	r0, [r2, #0]
	add	r0, r3, #1
	strb	r0, [r2, #4]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
	ldr	r5, .L_76b34
	ldr	r4, .L_76b38
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r6, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r5, #0]
	ldr	r5, .L_76b3c
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #0]
	ldr	r5, .L_76b40
	neg	r4, r4
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #0]
	ldr	r4, .L_76b44
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r4, #0]
.L_76b2e:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_76b34:
	.4byte	gUnk_3000C14
.L_76b38:
	.4byte	sSinCosTable
.L_76b3c:
	.4byte	gUnk_3000C16
.L_76b40:
	.4byte	gUnk_3000C18
.L_76b44:
	.4byte	gUnk_3000C1A


thumb_func_start func_8076B48
func_8076B48:
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L_76b6c
	ldrb	r3, [r2, #4]
	ldr	r0, .L_76b70
	lsl	r1, r3, #1
	add	r0, r1, r0
	ldrh	r4, [r0, #0]
	ldr	r0, .L_76b74
	add	r1, r1, r0
	mov	r0, #0
	ldrsh	r7, [r1, r0]
	ldr	r0, .L_76b78
	cmp	r7, r0
	bne	.L_76b7c
	mov	r0, #0
	strb	r0, [r2, #0]
	b	.L_76be6
	.align	2, 0
.L_76b6c:
	.4byte	gCurrentSecondarySprite
.L_76b70:
	.4byte	sUnk_84165F4
.L_76b74:
	.4byte	sUnk_8416834
.L_76b78:
	.4byte	0x00007fff
.L_76b7c:
	ldrb	r1, [r2, #0]
	mov	r0, #2
	orr	r0, r1
	strb	r0, [r2, #0]
	add	r0, r3, #1
	strb	r0, [r2, #4]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
	ldr	r5, .L_76bec
	ldr	r4, .L_76bf0
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r6, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r5, #0]
	ldr	r5, .L_76bf4
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #0]
	ldr	r5, .L_76bf8
	neg	r4, r4
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #0]
	ldr	r4, .L_76bfc
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r4, #0]
.L_76be6:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_76bec:
	.4byte	gUnk_3000C14
.L_76bf0:
	.4byte	sSinCosTable
.L_76bf4:
	.4byte	gUnk_3000C16
.L_76bf8:
	.4byte	gUnk_3000C18
.L_76bfc:
	.4byte	gUnk_3000C1A


thumb_func_start func_8076C00
func_8076C00:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r4, .L_76c38
	ldrb	r1, [r4, #0]
	mov	r0, #2
	orr	r0, r1
	strb	r0, [r4, #0]
	ldr	r0, .L_76c3c
	bl	func_8076A0C
	ldrb	r3, [r4, #4]
	ldr	r2, .L_76c40
	lsl	r0, r3, #1
	add	r2, r0, r2
	ldr	r1, .L_76c44
	add	r0, r0, r1
	ldrh	r5, [r0, #0]
	ldrh	r6, [r2, #0]
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	ldr	r0, .L_76c48
	cmp	r1, r0
	bne	.L_76c4c
	mov	r0, #0
	strb	r0, [r4, #0]
	b	.L_76cba
	.align	2, 0
.L_76c38:
	.4byte	gCurrentSecondarySprite
.L_76c3c:
	.4byte	sUnk_8412080
.L_76c40:
	.4byte	sUnk_8416674
.L_76c44:
	.4byte	sUnk_84166F4
.L_76c48:
	.4byte	0x00007fff
.L_76c4c:
	add	r0, r3, #1
	strb	r0, [r4, #4]
	ldrh	r0, [r4, #8]
	sub	r0, #6
	strh	r0, [r4, #8]
	ldrh	r0, [r4, #10]
	add	r0, r0, r6
	strh	r0, [r4, #10]
	ldr	r6, .L_76cc4
	ldr	r4, .L_76cc8
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r8, r1
	lsl	r5, r5, #16
	asr	r5, r5, #16
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r6, .L_76ccc
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r6, .L_76cd0
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r4, .L_76cd4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r4, #0]
.L_76cba:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_76cc4:
	.4byte	gUnk_3000C14
.L_76cc8:
	.4byte	sSinCosTable
.L_76ccc:
	.4byte	gUnk_3000C16
.L_76cd0:
	.4byte	gUnk_3000C18
.L_76cd4:
	.4byte	gUnk_3000C1A


thumb_func_start func_8076CD8
func_8076CD8:
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L_76d04
	ldrb	r1, [r2, #0]
	mov	r0, #2
	orr	r0, r1
	strb	r0, [r2, #0]
	ldr	r1, .L_76d08
	ldr	r0, .L_76d0c
	str	r0, [r1, #0]
	ldrb	r3, [r2, #4]
	ldr	r1, .L_76d10
	lsl	r0, r3, #1
	add	r0, r0, r1
	mov	r1, #0
	ldrsh	r7, [r0, r1]
	ldr	r0, .L_76d14
	cmp	r7, r0
	bne	.L_76d18
	mov	r0, #0
	strb	r0, [r2, #0]
	b	.L_76d82
	.align	2, 0
.L_76d04:
	.4byte	gCurrentSecondarySprite
.L_76d08:
	.4byte	gUnk_3000C10
.L_76d0c:
	.4byte	sUnk_8414A5C
.L_76d10:
	.4byte	sUnk_8416774
.L_76d14:
	.4byte	0x00007fff
.L_76d18:
	add	r0, r3, #1
	strb	r0, [r2, #4]
	ldr	r1, .L_76d88
	ldrh	r0, [r1, #20]
	sub	r0, #72	@ 0x48
	strh	r0, [r2, #8]
	ldrh	r0, [r1, #18]
	sub	r0, #32
	strh	r0, [r2, #10]
	ldr	r5, .L_76d8c
	ldr	r4, .L_76d90
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r6, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r5, #0]
	ldr	r5, .L_76d94
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #0]
	ldr	r5, .L_76d98
	neg	r4, r4
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #0]
	ldr	r4, .L_76d9c
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r4, #0]
.L_76d82:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_76d88:
	.4byte	gWarioData
.L_76d8c:
	.4byte	gUnk_3000C14
.L_76d90:
	.4byte	sSinCosTable
.L_76d94:
	.4byte	gUnk_3000C16
.L_76d98:
	.4byte	gUnk_3000C18
.L_76d9c:
	.4byte	gUnk_3000C1A


thumb_func_start func_8076DA0
func_8076DA0:
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L_76dcc
	ldrb	r1, [r2, #0]
	mov	r0, #2
	orr	r0, r1
	strb	r0, [r2, #0]
	ldr	r1, .L_76dd0
	ldr	r0, .L_76dd4
	str	r0, [r1, #0]
	ldrb	r3, [r2, #4]
	ldr	r1, .L_76dd8
	lsl	r0, r3, #1
	add	r0, r0, r1
	mov	r1, #0
	ldrsh	r7, [r0, r1]
	ldr	r0, .L_76ddc
	cmp	r7, r0
	bne	.L_76de0
	mov	r0, #0
	strb	r0, [r2, #0]
	b	.L_76e4a
	.align	2, 0
.L_76dcc:
	.4byte	gCurrentSecondarySprite
.L_76dd0:
	.4byte	gUnk_3000C10
.L_76dd4:
	.4byte	sLittleHeartOam_Frame1
.L_76dd8:
	.4byte	sUnk_8416774
.L_76ddc:
	.4byte	0x00007fff
.L_76de0:
	add	r0, r3, #1
	strb	r0, [r2, #4]
	ldr	r1, .L_76e50
	ldrh	r0, [r1, #20]
	sub	r0, #40	@ 0x28
	strh	r0, [r2, #8]
	ldrh	r0, [r1, #18]
	sub	r0, #16
	strh	r0, [r2, #10]
	ldr	r5, .L_76e54
	ldr	r4, .L_76e58
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r6, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r5, #0]
	ldr	r5, .L_76e5c
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #0]
	ldr	r5, .L_76e60
	neg	r4, r4
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #0]
	ldr	r4, .L_76e64
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r4, #0]
.L_76e4a:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_76e50:
	.4byte	gWarioData
.L_76e54:
	.4byte	gUnk_3000C14
.L_76e58:
	.4byte	sSinCosTable
.L_76e5c:
	.4byte	gUnk_3000C16
.L_76e60:
	.4byte	gUnk_3000C18
.L_76e64:
	.4byte	gUnk_3000C1A


thumb_func_start func_8076E68
func_8076E68:
	push	{lr}
	ldr	r0, .L_76e78
	bl	func_8076A0C
	bl	func_8076A54
	pop	{r0}
	bx	r0
.L_76e78:
	.4byte	sUnk_840F248


thumb_func_start func_8076E7C
func_8076E7C:
	push	{lr}
	ldr	r0, .L_76e8c
	bl	func_8076A0C
	bl	func_8076B48
	pop	{r0}
	bx	r0
.L_76e8c:
	.4byte	sUnk_840F258


thumb_func_start func_8076E90
func_8076E90:
	push	{lr}
	ldr	r0, .L_76ea0
	bl	func_8076A0C
	bl	func_8076A90
	pop	{r0}
	bx	r0
.L_76ea0:
	.4byte	sUnk_840F268


thumb_func_start func_8076EA4
func_8076EA4:
	push	{lr}
	ldr	r0, .L_76eb4
	bl	func_8076A0C
	bl	func_8076A90
	pop	{r0}
	bx	r0
.L_76eb4:
	.4byte	sUnk_840F278


thumb_func_start func_8076EB8
func_8076EB8:
	push	{lr}
	ldr	r0, .L_76ec8
	bl	func_8076A0C
	bl	func_8076A90
	pop	{r0}
	bx	r0
.L_76ec8:
	.4byte	sUnk_840F288


thumb_func_start func_8076ECC
func_8076ECC:
	push	{r4, lr}
	ldr	r4, .L_76ef0
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_76ef4
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_76eea
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_76eea
	strb	r0, [r4, #0]
.L_76eea:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_76ef0:
	.4byte	gCurrentSecondarySprite
.L_76ef4:
	.4byte	sUnk_840FAD4


thumb_func_start func_8076EF8
func_8076EF8:
	push	{r4, lr}
	ldr	r4, .L_76f30
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_76f34
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_76f16
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_76f16
	strb	r0, [r4, #0]
.L_76f16:
	ldr	r4, .L_76f30
	ldrb	r0, [r4, #3]
	cmp	r0, #0
	bne	.L_76f2a
	mov	r0, #58	@ 0x3a
	bl	m4aSongNumStart
	ldrb	r0, [r4, #3]
	add	r0, #1
	strb	r0, [r4, #3]
.L_76f2a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_76f30:
	.4byte	gCurrentSecondarySprite
.L_76f34:
	.4byte	sUnk_840FB94


thumb_func_start func_8076F38
func_8076F38:
	push	{lr}
	ldr	r0, .L_76f60
	bl	func_8076A0C
	ldr	r1, .L_76f64
	ldrh	r0, [r1, #6]
	cmp	r0, #0
	bne	.L_76f50
	ldrb	r0, [r1, #1]
	cmp	r0, #0
	bne	.L_76f50
	strb	r0, [r1, #0]
.L_76f50:
	ldr	r1, .L_76f64
	ldrb	r0, [r1, #3]
	cmp	r0, #0
	bne	.L_76f5c
	add	r0, #1
	strb	r0, [r1, #3]
.L_76f5c:
	pop	{r0}
	bx	r0
.L_76f60:
	.4byte	sUnk_840FB94
.L_76f64:
	.4byte	gCurrentSecondarySprite


thumb_func_start func_8076F68
func_8076F68:
	push	{r4, lr}
	ldr	r4, .L_76f8c
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_76f90
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_76f86
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_76f86
	strb	r0, [r4, #0]
.L_76f86:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_76f8c:
	.4byte	gCurrentSecondarySprite
.L_76f90:
	.4byte	sUnk_8414614


thumb_func_start func_8076F94
func_8076F94:
	push	{r4, lr}
	ldr	r4, .L_76fb8
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_76fbc
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_76fb2
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_76fb2
	strb	r0, [r4, #0]
.L_76fb2:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_76fb8:
	.4byte	gCurrentSecondarySprite
.L_76fbc:
	.4byte	sGoldenDivaBlackChickFinalOam


thumb_func_start func_8076FC0
func_8076FC0:
	push	{r4, lr}
	ldr	r4, .L_76fe4
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_76fe8
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_76fde
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_76fde
	strb	r0, [r4, #0]
.L_76fde:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_76fe4:
	.4byte	gCurrentSecondarySprite
.L_76fe8:
	.4byte	sUnk_8414824


thumb_func_start func_8076FEC
func_8076FEC:
	push	{r4, lr}
	ldr	r4, .L_77010
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77014
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_7700a
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_7700a
	strb	r0, [r4, #0]
.L_7700a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77010:
	.4byte	gCurrentSecondarySprite
.L_77014:
	.4byte	sUnk_83D84D4


thumb_func_start func_8077018
func_8077018:
	push	{r4, lr}
	ldr	r4, .L_7703c
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77040
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77036
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77036
	strb	r0, [r4, #0]
.L_77036:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_7703c:
	.4byte	gCurrentSecondarySprite
.L_77040:
	.4byte	sUnk_83D853C


thumb_func_start func_8077044
func_8077044:
	push	{r4, lr}
	ldr	r4, .L_77068
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_7706c
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77062
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77062
	strb	r0, [r4, #0]
.L_77062:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77068:
	.4byte	gCurrentSecondarySprite
.L_7706c:
	.4byte	sUnk_840FC7C


thumb_func_start func_8077070
func_8077070:
	push	{r4, lr}
	ldr	r4, .L_77094
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77098
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_7708e
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_7708e
	strb	r0, [r4, #0]
.L_7708e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77094:
	.4byte	gCurrentSecondarySprite
.L_77098:
	.4byte	sUnk_840FE74


thumb_func_start func_807709C
func_807709C:
	push	{r4, lr}
	ldr	r4, .L_770c0
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_770c4
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_770ba
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_770ba
	strb	r0, [r4, #0]
.L_770ba:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_770c0:
	.4byte	gCurrentSecondarySprite
.L_770c4:
	.4byte	sUnk_840FEA4


thumb_func_start func_80770C8
func_80770C8:
	push	{r4, lr}
	ldr	r4, .L_770ec
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_770f0
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_770e6
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_770e6
	strb	r0, [r4, #0]
.L_770e6:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_770ec:
	.4byte	gCurrentSecondarySprite
.L_770f0:
	.4byte	sProfessorProjectileOam


thumb_func_start func_80770F4
func_80770F4:
	push	{r4, lr}
	ldr	r4, .L_77118
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_7711c
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77112
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77112
	strb	r0, [r4, #0]
.L_77112:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77118:
	.4byte	gCurrentSecondarySprite
.L_7711c:
	.4byte	sUnk_841000C


thumb_func_start func_8077120
func_8077120:
	push	{r4, lr}
	ldr	r4, .L_77144
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77148
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_7713e
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_7713e
	strb	r0, [r4, #0]
.L_7713e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77144:
	.4byte	gCurrentSecondarySprite
.L_77148:
	.4byte	sUnk_83D86C4


thumb_func_start func_807714C
func_807714C:
	push	{lr}
	ldr	r1, .L_7716c
	ldrb	r0, [r1, #4]
	add	r0, #1
	strb	r0, [r1, #4]
	ldr	r0, .L_77170
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #7
	bhi	.L_771d4
	lsl	r0, r0, #2
	ldr	r1, .L_77174
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_7716c:
	.4byte	gCurrentSecondarySprite
.L_77170:
	.4byte	gCurrentShopItem
.L_77174:
	.4byte	.L_77178
.L_77178:
	.4byte	.L_77198
	.4byte	.L_771a4
	.4byte	.L_771d4
	.4byte	.L_771d4
	.4byte	.L_771b0
	.4byte	.L_771d4
	.4byte	.L_771bc
	.4byte	.L_771c8
.L_77198:
	ldr	r0, .L_771a0
	bl	func_8076A0C
	b	.L_771da
.L_771a0:
	.4byte	sUnk_83D8B40
.L_771a4:
	ldr	r0, .L_771ac
	bl	func_8076A0C
	b	.L_771da
.L_771ac:
	.4byte	sUnk_83D8E3C
.L_771b0:
	ldr	r0, .L_771b8
	bl	func_8076A0C
	b	.L_771da
.L_771b8:
	.4byte	sUnk_83D9994
.L_771bc:
	ldr	r0, .L_771c4
	bl	func_8076A0C
	b	.L_771da
.L_771c4:
	.4byte	sUnk_83D9BC0
.L_771c8:
	ldr	r0, .L_771d0
	bl	func_8076A0C
	b	.L_771da
.L_771d0:
	.4byte	sUnk_83D9DB4
.L_771d4:
	ldr	r1, .L_771f0
	mov	r0, #0
	strb	r0, [r1, #0]
.L_771da:
	ldr	r1, .L_771f0
	ldrh	r0, [r1, #6]
	cmp	r0, #0
	bne	.L_771ea
	ldrb	r0, [r1, #1]
	cmp	r0, #0
	bne	.L_771ea
	strb	r0, [r1, #0]
.L_771ea:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_771f0:
	.4byte	gCurrentSecondarySprite


thumb_func_start func_80771F4
func_80771F4:
	push	{r4, r5, lr}
	ldr	r3, .L_77214
	ldr	r2, .L_77218
	ldrb	r1, [r2, #5]
	lsl	r1, r1, #24
	lsr	r5, r1, #24
	lsr	r1, r1, #27
	lsl	r1, r1, #1
	add	r1, r1, r3
	ldrh	r4, [r1, #0]
	ldrb	r3, [r2, #1]
	cmp	r3, #0
	beq	.L_7721c
	ldrh	r1, [r2, #10]
	add	r1, r1, r4
	b	.L_77220
.L_77214:
	.4byte	sUnk_8416AA4
.L_77218:
	.4byte	gCurrentSecondarySprite
.L_7721c:
	ldrh	r1, [r2, #10]
	sub	r1, r1, r4
.L_77220:
	strh	r1, [r2, #10]
	cmp	r5, #94	@ 0x5e
	bls	.L_77230
	mov	r1, #0
	strb	r1, [r2, #5]
	mov	r1, #1
	eor	r1, r3
	strb	r1, [r2, #1]
.L_77230:
	ldrb	r1, [r2, #5]
	add	r1, #1
	strb	r1, [r2, #5]
	ldrh	r1, [r2, #10]
	add	r1, #2
	strh	r1, [r2, #10]
	ldrh	r1, [r2, #8]
	sub	r1, #2
	strh	r1, [r2, #8]
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_8077248
func_8077248:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #59	@ 0x3b
	bhi	.L_7726c
	ldr	r1, .L_77268
	ldrb	r2, [r1, #0]
	mov	r0, #2
	orr	r0, r2
	strb	r0, [r1, #0]
	ldrh	r0, [r1, #6]
	add	r0, #4
	b	.L_77276
	.align	2, 0
.L_77268:
	.4byte	gCurrentSecondarySprite
.L_7726c:
	cmp	r0, #195	@ 0xc3
	bls	.L_77284
	ldr	r1, .L_77280
	ldrh	r0, [r1, #6]
	sub	r0, #4
.L_77276:
	strh	r0, [r1, #6]
	ldrh	r7, [r1, #6]
	mov	r8, r1
	b	.L_7728c
	.align	2, 0
.L_77280:
	.4byte	gCurrentSecondarySprite
.L_77284:
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #1
	ldr	r0, .L_77318
	mov	r8, r0
.L_7728c:
	ldr	r6, .L_7731c
	ldr	r5, .L_77320
	mov	r1, r8
	ldrb	r0, [r1, #4]
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
	strh	r0, [r6, #0]
	ldr	r6, .L_77324
	mov	r1, r8
	ldrb	r0, [r1, #4]
	lsl	r0, r0, #1
	add	r0, r0, r5
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r6, .L_77328
	mov	r1, r8
	ldrb	r0, [r1, #4]
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
	strh	r0, [r6, #0]
	ldr	r6, .L_7732c
	mov	r1, r8
	ldrb	r0, [r1, #4]
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
	add	r1, r0, #0
	strh	r1, [r6, #0]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L_77318:
	.4byte	gCurrentSecondarySprite
.L_7731c:
	.4byte	gUnk_3000C14
.L_77320:
	.4byte	sSinCosTable
.L_77324:
	.4byte	gUnk_3000C16
.L_77328:
	.4byte	gUnk_3000C18
.L_7732c:
	.4byte	gUnk_3000C1A


thumb_func_start func_8077330
func_8077330:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	add	r1, r0, #0
	cmp	r0, #59	@ 0x3b
	bhi	.L_77350
	ldr	r1, .L_7734c
	ldrb	r2, [r1, #0]
	mov	r0, #2
	orr	r0, r2
	strb	r0, [r1, #0]
	ldrh	r0, [r1, #6]
	add	r0, #4
	b	.L_7735a
.L_7734c:
	.4byte	gCurrentSecondarySprite
.L_77350:
	cmp	r0, #195	@ 0xc3
	bls	.L_77364
	ldr	r1, .L_77360
	ldrh	r0, [r1, #6]
	sub	r0, #4
.L_7735a:
	strh	r0, [r1, #6]
	ldrh	r7, [r1, #6]
	b	.L_77384
.L_77360:
	.4byte	gCurrentSecondarySprite
.L_77364:
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #1
	cmp	r1, #90	@ 0x5a
	bls	.L_77384
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #2
	cmp	r1, #120	@ 0x78
	bls	.L_77384
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #1
	cmp	r1, #150	@ 0x96
	bls	.L_77384
	cmp	r1, #180	@ 0xb4
	bhi	.L_77384
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #2
.L_77384:
	ldr	r5, .L_773e4
	ldr	r4, .L_773e8
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r6, [r0, r1]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r5, #0]
	ldr	r5, .L_773ec
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #0]
	ldr	r5, .L_773f0
	neg	r4, r4
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r5, #0]
	ldr	r4, .L_773f4
	add	r0, r7, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r6, #0
	bl	FixedMul
	add	r1, r0, #0
	strh	r1, [r4, #0]
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L_773e4:
	.4byte	gUnk_3000C14
.L_773e8:
	.4byte	sSinCosTable
.L_773ec:
	.4byte	gUnk_3000C16
.L_773f0:
	.4byte	gUnk_3000C18
.L_773f4:
	.4byte	gUnk_3000C1A


thumb_func_start func_80773F8
func_80773F8:
	push	{lr}
	ldr	r1, .L_77420
	ldrb	r2, [r1, #3]
	cmp	r2, #0
	bne	.L_7740e
	mov	r0, #4
	strh	r0, [r1, #6]
	mov	r0, #1
	strb	r0, [r1, #1]
	add	r0, r2, #1
	strb	r0, [r1, #3]
.L_7740e:
	ldrb	r0, [r1, #4]
	add	r0, #1
	strb	r0, [r1, #4]
	ldrb	r0, [r1, #4]
	cmp	r0, #255	@ 0xff
	bne	.L_77424
	mov	r0, #0
	strb	r0, [r1, #0]
	b	.L_77432
.L_77420:
	.4byte	gCurrentSecondarySprite
.L_77424:
	bl	func_8077248
	bl	func_80771F4
	ldr	r1, .L_77438
	ldr	r0, .L_7743c
	str	r0, [r1, #0]
.L_77432:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_77438:
	.4byte	gUnk_3000C10
.L_7743c:
	.4byte	sUnk_83D97BA


thumb_func_start func_8077440
func_8077440:
	push	{lr}
	ldr	r2, .L_77468
	ldrb	r3, [r2, #3]
	cmp	r3, #0
	bne	.L_77456
	mov	r0, #0
	mov	r1, #4
	strh	r1, [r2, #6]
	strb	r0, [r2, #1]
	add	r0, r3, #1
	strb	r0, [r2, #3]
.L_77456:
	ldrb	r0, [r2, #4]
	add	r0, #1
	strb	r0, [r2, #4]
	ldrb	r0, [r2, #4]
	cmp	r0, #255	@ 0xff
	bne	.L_7746c
	mov	r0, #0
	strb	r0, [r2, #0]
	b	.L_7747a
.L_77468:
	.4byte	gCurrentSecondarySprite
.L_7746c:
	bl	func_8077330
	bl	func_80771F4
	ldr	r1, .L_77480
	ldr	r0, .L_77484
	str	r0, [r1, #0]
.L_7747a:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_77480:
	.4byte	gUnk_3000C10
.L_77484:
	.4byte	sUnk_83D9792


thumb_func_start func_8077488
func_8077488:
	push	{lr}
	ldr	r1, .L_774b0
	ldrb	r2, [r1, #3]
	cmp	r2, #0
	bne	.L_7749e
	mov	r0, #4
	strh	r0, [r1, #6]
	mov	r0, #1
	strb	r0, [r1, #1]
	add	r0, r2, #1
	strb	r0, [r1, #3]
.L_7749e:
	ldrb	r0, [r1, #4]
	add	r0, #1
	strb	r0, [r1, #4]
	ldrb	r0, [r1, #4]
	cmp	r0, #255	@ 0xff
	bne	.L_774b4
	mov	r0, #0
	strb	r0, [r1, #0]
	b	.L_774c2
.L_774b0:
	.4byte	gCurrentSecondarySprite
.L_774b4:
	bl	func_8077248
	bl	func_80771F4
	ldr	r1, .L_774c8
	ldr	r0, .L_774cc
	str	r0, [r1, #0]
.L_774c2:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_774c8:
	.4byte	gUnk_3000C10
.L_774cc:
	.4byte	sUnk_83D97DA


thumb_func_start func_80774D0
func_80774D0:
	push	{lr}
	ldr	r2, .L_774f8
	ldrb	r3, [r2, #3]
	cmp	r3, #0
	bne	.L_774e6
	mov	r0, #0
	mov	r1, #4
	strh	r1, [r2, #6]
	strb	r0, [r2, #1]
	add	r0, r3, #1
	strb	r0, [r2, #3]
.L_774e6:
	ldrb	r0, [r2, #4]
	add	r0, #1
	strb	r0, [r2, #4]
	ldrb	r0, [r2, #4]
	cmp	r0, #255	@ 0xff
	bne	.L_774fc
	mov	r0, #0
	strb	r0, [r2, #0]
	b	.L_7750a
.L_774f8:
	.4byte	gCurrentSecondarySprite
.L_774fc:
	bl	func_8077330
	bl	func_80771F4
	ldr	r1, .L_77510
	ldr	r0, .L_77514
	str	r0, [r1, #0]
.L_7750a:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_77510:
	.4byte	gUnk_3000C10
.L_77514:
	.4byte	sUnk_83D979A


thumb_func_start func_8077518
func_8077518:
	push	{lr}
	ldr	r1, .L_77540
	ldrb	r2, [r1, #3]
	cmp	r2, #0
	bne	.L_7752e
	mov	r0, #4
	strh	r0, [r1, #6]
	mov	r0, #1
	strb	r0, [r1, #1]
	add	r0, r2, #1
	strb	r0, [r1, #3]
.L_7752e:
	ldrb	r0, [r1, #4]
	add	r0, #1
	strb	r0, [r1, #4]
	ldrb	r0, [r1, #4]
	cmp	r0, #255	@ 0xff
	bne	.L_77544
	mov	r0, #0
	strb	r0, [r1, #0]
	b	.L_77552
.L_77540:
	.4byte	gCurrentSecondarySprite
.L_77544:
	bl	func_8077248
	bl	func_80771F4
	ldr	r1, .L_77558
	ldr	r0, .L_7755c
	str	r0, [r1, #0]
.L_77552:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_77558:
	.4byte	gUnk_3000C10
.L_7755c:
	.4byte	sUnk_83D97D2


thumb_func_start func_8077560
func_8077560:
	push	{lr}
	ldr	r2, .L_77588
	ldrb	r3, [r2, #3]
	cmp	r3, #0
	bne	.L_77576
	mov	r0, #0
	mov	r1, #4
	strh	r1, [r2, #6]
	strb	r0, [r2, #1]
	add	r0, r3, #1
	strb	r0, [r2, #3]
.L_77576:
	ldrb	r0, [r2, #4]
	add	r0, #1
	strb	r0, [r2, #4]
	ldrb	r0, [r2, #4]
	cmp	r0, #255	@ 0xff
	bne	.L_7758c
	mov	r0, #0
	strb	r0, [r2, #0]
	b	.L_7759a
.L_77588:
	.4byte	gCurrentSecondarySprite
.L_7758c:
	bl	func_8077330
	bl	func_80771F4
	ldr	r1, .L_775a0
	ldr	r0, .L_775a4
	str	r0, [r1, #0]
.L_7759a:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_775a0:
	.4byte	gUnk_3000C10
.L_775a4:
	.4byte	sUnk_83D97A2


thumb_func_start func_80775A8
func_80775A8:
	push	{lr}
	ldr	r1, .L_775d0
	ldrb	r2, [r1, #3]
	cmp	r2, #0
	bne	.L_775be
	mov	r0, #4
	strh	r0, [r1, #6]
	mov	r0, #1
	strb	r0, [r1, #1]
	add	r0, r2, #1
	strb	r0, [r1, #3]
.L_775be:
	ldrb	r0, [r1, #4]
	add	r0, #1
	strb	r0, [r1, #4]
	ldrb	r0, [r1, #4]
	cmp	r0, #255	@ 0xff
	bne	.L_775d4
	mov	r0, #0
	strb	r0, [r1, #0]
	b	.L_775e2
.L_775d0:
	.4byte	gCurrentSecondarySprite
.L_775d4:
	bl	func_8077248
	bl	func_80771F4
	ldr	r1, .L_775e8
	ldr	r0, .L_775ec
	str	r0, [r1, #0]
.L_775e2:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_775e8:
	.4byte	gUnk_3000C10
.L_775ec:
	.4byte	sUnk_83D97CA


thumb_func_start func_80775F0
func_80775F0:
	push	{lr}
	ldr	r2, .L_77618
	ldrb	r3, [r2, #3]
	cmp	r3, #0
	bne	.L_77606
	mov	r0, #0
	mov	r1, #4
	strh	r1, [r2, #6]
	strb	r0, [r2, #1]
	add	r0, r3, #1
	strb	r0, [r2, #3]
.L_77606:
	ldrb	r0, [r2, #4]
	add	r0, #1
	strb	r0, [r2, #4]
	ldrb	r0, [r2, #4]
	cmp	r0, #255	@ 0xff
	bne	.L_7761c
	mov	r0, #0
	strb	r0, [r2, #0]
	b	.L_7762a
.L_77618:
	.4byte	gCurrentSecondarySprite
.L_7761c:
	bl	func_8077330
	bl	func_80771F4
	ldr	r1, .L_77630
	ldr	r0, .L_77634
	str	r0, [r1, #0]
.L_7762a:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_77630:
	.4byte	gUnk_3000C10
.L_77634:
	.4byte	sUnk_83D97AA


thumb_func_start func_8077638
func_8077638:
	push	{lr}
	ldr	r1, .L_77660
	ldrb	r2, [r1, #3]
	cmp	r2, #0
	bne	.L_7764e
	mov	r0, #4
	strh	r0, [r1, #6]
	mov	r0, #1
	strb	r0, [r1, #1]
	add	r0, r2, #1
	strb	r0, [r1, #3]
.L_7764e:
	ldrb	r0, [r1, #4]
	add	r0, #1
	strb	r0, [r1, #4]
	ldrb	r0, [r1, #4]
	cmp	r0, #255	@ 0xff
	bne	.L_77664
	mov	r0, #0
	strb	r0, [r1, #0]
	b	.L_77672
.L_77660:
	.4byte	gCurrentSecondarySprite
.L_77664:
	bl	func_8077248
	bl	func_80771F4
	ldr	r1, .L_77678
	ldr	r0, .L_7767c
	str	r0, [r1, #0]
.L_77672:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_77678:
	.4byte	gUnk_3000C10
.L_7767c:
	.4byte	sUnk_83D97C2


thumb_func_start func_8077680
func_8077680:
	push	{lr}
	ldr	r2, .L_776a8
	ldrb	r3, [r2, #3]
	cmp	r3, #0
	bne	.L_77696
	mov	r0, #0
	mov	r1, #4
	strh	r1, [r2, #6]
	strb	r0, [r2, #1]
	add	r0, r3, #1
	strb	r0, [r2, #3]
.L_77696:
	ldrb	r0, [r2, #4]
	add	r0, #1
	strb	r0, [r2, #4]
	ldrb	r0, [r2, #4]
	cmp	r0, #255	@ 0xff
	bne	.L_776ac
	mov	r0, #0
	strb	r0, [r2, #0]
	b	.L_776ba
.L_776a8:
	.4byte	gCurrentSecondarySprite
.L_776ac:
	bl	func_8077330
	bl	func_80771F4
	ldr	r1, .L_776c0
	ldr	r0, .L_776c4
	str	r0, [r1, #0]
.L_776ba:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_776c0:
	.4byte	gUnk_3000C10
.L_776c4:
	.4byte	sUnk_83D97B2


thumb_func_start func_80776C8
func_80776C8:
	push	{r4, lr}
	ldr	r4, .L_776ec
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_776f0
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_776e6
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_776e6
	strb	r0, [r4, #0]
.L_776e6:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_776ec:
	.4byte	gCurrentSecondarySprite
.L_776f0:
	.4byte	sUnk_8410544


thumb_func_start func_80776F4
func_80776F4:
	push	{r4, lr}
	ldr	r4, .L_77718
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_7771c
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77712
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77712
	strb	r0, [r4, #0]
.L_77712:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77718:
	.4byte	gCurrentSecondarySprite
.L_7771c:
	.4byte	sUnk_84105A4


thumb_func_start func_8077720
func_8077720:
	push	{r4, lr}
	ldr	r4, .L_77744
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77748
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_7773e
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_7773e
	strb	r0, [r4, #0]
.L_7773e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77744:
	.4byte	gCurrentSecondarySprite
.L_77748:
	.4byte	sUnk_8410AB4


thumb_func_start func_807774C
func_807774C:
	push	{r4, lr}
	ldr	r4, .L_77770
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77774
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_7776a
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_7776a
	strb	r0, [r4, #0]
.L_7776a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77770:
	.4byte	gCurrentSecondarySprite
.L_77774:
	.4byte	sUnk_8410B14


thumb_func_start func_8077778
func_8077778:
	push	{r4, lr}
	ldr	r4, .L_7779c
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_777a0
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77796
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77796
	strb	r0, [r4, #0]
.L_77796:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_7779c:
	.4byte	gCurrentSecondarySprite
.L_777a0:
	.4byte	sUnk_84110B8


thumb_func_start func_80777A4
func_80777A4:
	push	{r4, lr}
	ldr	r4, .L_777c8
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_777cc
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_777c2
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_777c2
	strb	r0, [r4, #0]
.L_777c2:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_777c8:
	.4byte	gCurrentSecondarySprite
.L_777cc:
	.4byte	sUnk_8411128


thumb_func_start func_80777D0
func_80777D0:
	push	{r4, lr}
	ldr	r4, .L_777f4
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_777f8
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_777ee
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_777ee
	strb	r0, [r4, #0]
.L_777ee:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_777f4:
	.4byte	gCurrentSecondarySprite
.L_777f8:
	.4byte	sUnk_8410D90


thumb_func_start func_80777FC
func_80777FC:
	push	{r4, lr}
	ldr	r4, .L_77820
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77824
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_7781a
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_7781a
	strb	r0, [r4, #0]
.L_7781a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77820:
	.4byte	gCurrentSecondarySprite
.L_77824:
	.4byte	sUnk_8410E00


thumb_func_start func_8077828
func_8077828:
	push	{r4, lr}
	ldr	r4, .L_7784c
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77850
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77846
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77846
	strb	r0, [r4, #0]
.L_77846:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_7784c:
	.4byte	gCurrentSecondarySprite
.L_77850:
	.4byte	sUnk_8410484


thumb_func_start func_8077854
func_8077854:
	push	{r4, lr}
	ldr	r4, .L_77878
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_7787c
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77872
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77872
	strb	r0, [r4, #0]
.L_77872:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77878:
	.4byte	gCurrentSecondarySprite
.L_7787c:
	.4byte	sUnk_84104E4


thumb_func_start func_8077880
func_8077880:
	push	{r4, lr}
	ldr	r4, .L_778a4
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_778a8
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_7789e
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_7789e
	strb	r0, [r4, #0]
.L_7789e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_778a4:
	.4byte	gCurrentSecondarySprite
.L_778a8:
	.4byte	sUnk_84109F4


thumb_func_start func_80778AC
func_80778AC:
	push	{r4, lr}
	ldr	r4, .L_778d0
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_778d4
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_778ca
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_778ca
	strb	r0, [r4, #0]
.L_778ca:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_778d0:
	.4byte	gCurrentSecondarySprite
.L_778d4:
	.4byte	sUnk_8410A54


thumb_func_start func_80778D8
func_80778D8:
	push	{r4, lr}
	ldr	r4, .L_778fc
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77900
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_778f6
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_778f6
	strb	r0, [r4, #0]
.L_778f6:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_778fc:
	.4byte	gCurrentSecondarySprite
.L_77900:
	.4byte	sUnk_8412538


thumb_func_start func_8077904
func_8077904:
	push	{r4, lr}
	ldr	r4, .L_77928
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_7792c
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77922
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77922
	strb	r0, [r4, #0]
.L_77922:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77928:
	.4byte	gCurrentSecondarySprite
.L_7792c:
	.4byte	sUnk_8412598


thumb_func_start func_8077930
func_8077930:
	push	{r4, lr}
	ldr	r4, .L_77954
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77958
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_7794e
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_7794e
	strb	r0, [r4, #0]
.L_7794e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77954:
	.4byte	gCurrentSecondarySprite
.L_77958:
	.4byte	sUnk_8412AA8


thumb_func_start func_807795C
func_807795C:
	push	{r4, lr}
	ldr	r4, .L_77980
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77984
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_7797a
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_7797a
	strb	r0, [r4, #0]
.L_7797a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77980:
	.4byte	gCurrentSecondarySprite
.L_77984:
	.4byte	sUnk_8412B08


thumb_func_start func_8077988
func_8077988:
	push	{r4, lr}
	ldr	r4, .L_779ac
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_779b0
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_779a6
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_779a6
	strb	r0, [r4, #0]
.L_779a6:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_779ac:
	.4byte	gCurrentSecondarySprite
.L_779b0:
	.4byte	sUnk_841317C


thumb_func_start func_80779B4
func_80779B4:
	push	{r4, lr}
	ldr	r4, .L_779d8
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_779dc
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_779d2
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_779d2
	strb	r0, [r4, #0]
.L_779d2:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_779d8:
	.4byte	gCurrentSecondarySprite
.L_779dc:
	.4byte	sUnk_84131EC


thumb_func_start func_80779E0
func_80779E0:
	push	{r4, lr}
	ldr	r4, .L_77a04
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77a08
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_779fe
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_779fe
	strb	r0, [r4, #0]
.L_779fe:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77a04:
	.4byte	gCurrentSecondarySprite
.L_77a08:
	.4byte	sUnk_8412D84


thumb_func_start func_8077A0C
func_8077A0C:
	push	{r4, lr}
	ldr	r4, .L_77a30
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77a34
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77a2a
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77a2a
	strb	r0, [r4, #0]
.L_77a2a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77a30:
	.4byte	gCurrentSecondarySprite
.L_77a34:
	.4byte	sUnk_8412DF4


thumb_func_start func_8077A38
func_8077A38:
	push	{r4, lr}
	ldr	r4, .L_77a5c
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77a60
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77a56
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77a56
	strb	r0, [r4, #0]
.L_77a56:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77a5c:
	.4byte	gCurrentSecondarySprite
.L_77a60:
	.4byte	sUnk_8412478


thumb_func_start func_8077A64
func_8077A64:
	push	{r4, lr}
	ldr	r4, .L_77a88
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77a8c
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77a82
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77a82
	strb	r0, [r4, #0]
.L_77a82:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77a88:
	.4byte	gCurrentSecondarySprite
.L_77a8c:
	.4byte	sUnk_84124D8


thumb_func_start func_8077A90
func_8077A90:
	push	{r4, lr}
	ldr	r4, .L_77ab4
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77ab8
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77aae
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77aae
	strb	r0, [r4, #0]
.L_77aae:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77ab4:
	.4byte	gCurrentSecondarySprite
.L_77ab8:
	.4byte	sUnk_84129E8


thumb_func_start func_8077ABC
func_8077ABC:
	push	{r4, lr}
	ldr	r4, .L_77ae0
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77ae4
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77ada
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77ada
	strb	r0, [r4, #0]
.L_77ada:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77ae0:
	.4byte	gCurrentSecondarySprite
.L_77ae4:
	.4byte	sUnk_8412A48


thumb_func_start func_8077AE8
func_8077AE8:
	push	{r4, lr}
	ldr	r4, .L_77b0c
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77b10
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77b06
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77b06
	strb	r0, [r4, #0]
.L_77b06:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77b0c:
	.4byte	gCurrentSecondarySprite
.L_77b10:
	.4byte	sUnk_84137E4


thumb_func_start func_8077B14
func_8077B14:
	push	{r4, lr}
	ldr	r4, .L_77b38
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77b3c
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77b32
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77b32
	strb	r0, [r4, #0]
.L_77b32:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77b38:
	.4byte	gCurrentSecondarySprite
.L_77b3c:
	.4byte	sUnk_8413844


thumb_func_start func_8077B40
func_8077B40:
	push	{r4, lr}
	ldr	r4, .L_77b64
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77b68
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77b5e
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77b5e
	strb	r0, [r4, #0]
.L_77b5e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77b64:
	.4byte	gCurrentSecondarySprite
.L_77b68:
	.4byte	sUnk_8413D54


thumb_func_start func_8077B6C
func_8077B6C:
	push	{r4, lr}
	ldr	r4, .L_77b90
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77b94
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77b8a
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77b8a
	strb	r0, [r4, #0]
.L_77b8a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77b90:
	.4byte	gCurrentSecondarySprite
.L_77b94:
	.4byte	sUnk_8413DB4


thumb_func_start func_8077B98
func_8077B98:
	push	{r4, lr}
	ldr	r4, .L_77bbc
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77bc0
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77bb6
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77bb6
	strb	r0, [r4, #0]
.L_77bb6:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77bbc:
	.4byte	gCurrentSecondarySprite
.L_77bc0:
	.4byte	sUnk_8414428


thumb_func_start func_8077BC4
func_8077BC4:
	push	{r4, lr}
	ldr	r4, .L_77be8
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77bec
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77be2
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77be2
	strb	r0, [r4, #0]
.L_77be2:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77be8:
	.4byte	gCurrentSecondarySprite
.L_77bec:
	.4byte	sUnk_8414498


thumb_func_start func_8077BF0
func_8077BF0:
	push	{r4, lr}
	ldr	r4, .L_77c14
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77c18
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77c0e
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77c0e
	strb	r0, [r4, #0]
.L_77c0e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77c14:
	.4byte	gCurrentSecondarySprite
.L_77c18:
	.4byte	sUnk_8414030


thumb_func_start func_8077C1C
func_8077C1C:
	push	{r4, lr}
	ldr	r4, .L_77c40
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77c44
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77c3a
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77c3a
	strb	r0, [r4, #0]
.L_77c3a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77c40:
	.4byte	gCurrentSecondarySprite
.L_77c44:
	.4byte	sUnk_84140A0


thumb_func_start func_8077C48
func_8077C48:
	push	{r4, lr}
	ldr	r4, .L_77c6c
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77c70
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77c66
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77c66
	strb	r0, [r4, #0]
.L_77c66:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77c6c:
	.4byte	gCurrentSecondarySprite
.L_77c70:
	.4byte	sUnk_8413724


thumb_func_start func_8077C74
func_8077C74:
	push	{r4, lr}
	ldr	r4, .L_77c98
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77c9c
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77c92
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77c92
	strb	r0, [r4, #0]
.L_77c92:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77c98:
	.4byte	gCurrentSecondarySprite
.L_77c9c:
	.4byte	sUnk_8413784


thumb_func_start func_8077CA0
func_8077CA0:
	push	{r4, lr}
	ldr	r4, .L_77cc4
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77cc8
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77cbe
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77cbe
	strb	r0, [r4, #0]
.L_77cbe:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77cc4:
	.4byte	gCurrentSecondarySprite
.L_77cc8:
	.4byte	sUnk_8413C94


thumb_func_start func_8077CCC
func_8077CCC:
	push	{r4, lr}
	ldr	r4, .L_77cf0
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77cf4
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77cea
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77cea
	strb	r0, [r4, #0]
.L_77cea:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77cf0:
	.4byte	gCurrentSecondarySprite
.L_77cf4:
	.4byte	sUnk_8413CF4


thumb_func_start func_8077CF8
func_8077CF8:
	push	{r4, lr}
	ldr	r4, .L_77d1c
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77d20
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77d16
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77d16
	strb	r0, [r4, #0]
.L_77d16:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77d1c:
	.4byte	gCurrentSecondarySprite
.L_77d20:
	.4byte	sUnk_841162C


thumb_func_start func_8077D24
func_8077D24:
	push	{r4, lr}
	ldr	r4, .L_77d48
	ldrb	r0, [r4, #4]
	add	r0, #1
	strb	r0, [r4, #4]
	ldr	r0, .L_77d4c
	bl	func_8076A0C
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	bne	.L_77d42
	ldrb	r0, [r4, #1]
	cmp	r0, #0
	bne	.L_77d42
	strb	r0, [r4, #0]
.L_77d42:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_77d48:
	.4byte	gCurrentSecondarySprite
.L_77d4c:
	.4byte	sUnk_84116DC


thumb_func_start func_8077D50
func_8077D50:
	ldr	r1, .L_77d58
	mov	r0, #0
	strb	r0, [r1, #0]
	bx	lr
.L_77d58:
	.4byte	gCurrentSecondarySprite


thumb_func_start func_8077D5C
func_8077D5C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r0, #0
	mov	r8, r0
	ldr	r1, .L_77d84
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_77d98
	ldrb	r1, [r1, #1]
	add	r0, r1, #0
	sub	r0, #40	@ 0x28
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #6
	bhi	.L_77d88
	mov	r1, #1
	mov	r8, r1
	b	.L_77d98
.L_77d84:
	.4byte	gWarioData
.L_77d88:
	add	r0, r1, #0
	sub	r0, #17
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_77d98
	mov	r3, #1
	mov	r8, r3
.L_77d98:
	ldr	r0, .L_77da8
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bls	.L_77dac
	bl	func_8076784
	b	.L_781ee
	.align	2, 0
.L_77da8:
	.4byte	gTimerState
.L_77dac:
	ldr	r0, .L_77dc0
	ldrb	r0, [r0, #3]
	cmp	r0, #18
	bls	.L_77db6
	b	.L_78014
.L_77db6:
	lsl	r0, r0, #2
	ldr	r1, .L_77dc4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_77dc0:
	.4byte	gCurrentSecondarySprite
.L_77dc4:
	.4byte	.L_77dc8
.L_77dc8:
	.4byte	.L_77e14
	.4byte	.L_77e38
	.4byte	.L_77e46
	.4byte	.L_77e84
	.4byte	.L_77e92
	.4byte	.L_77ed0
	.4byte	.L_77ee2
	.4byte	.L_77ef0
	.4byte	.L_77f02
	.4byte	.L_77f10
	.4byte	.L_77f22
	.4byte	.L_77f30
	.4byte	.L_77f42
	.4byte	.L_77f64
	.4byte	.L_77f72
	.4byte	.L_77fac
	.4byte	.L_77fbe
	.4byte	.L_77fe0
	.4byte	.L_77ff2
.L_77e14:
	ldr	r0, .L_77e30
	bl	func_8076A0C
	ldr	r1, .L_77e34
	ldrb	r0, [r1, #4]
	add	r0, #1
	strb	r0, [r1, #4]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #46	@ 0x2e
	bhi	.L_77e2c
	b	.L_7801a
.L_77e2c:
	b	.L_77fd2
	.align	2, 0
.L_77e30:
	.4byte	sKeyzerOam_83B49BC
.L_77e34:
	.4byte	gCurrentSecondarySprite
.L_77e38:
	ldr	r1, .L_77e5c
	mov	r2, #0
	mov	r0, #2
	strb	r0, [r1, #3]
	mov	r0, #0
	strh	r2, [r1, #6]
	strb	r0, [r1, #1]
.L_77e46:
	ldr	r0, .L_77e60
	bl	func_8076A0C
	mov	r0, r8
	cmp	r0, #0
	beq	.L_77e64
	ldr	r1, .L_77e5c
	mov	r0, #9
	strb	r0, [r1, #3]
	b	.L_7801a
	.align	2, 0
.L_77e5c:
	.4byte	gCurrentSecondarySprite
.L_77e60:
	.4byte	sKeyzerOam_83B47C4
.L_77e64:
	ldr	r0, .L_77e7c
	ldrh	r1, [r0, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	bne	.L_77e72
	b	.L_7801a
.L_77e72:
	ldr	r1, .L_77e80
	mov	r0, #5
	strb	r0, [r1, #3]
	b	.L_7801a
	.align	2, 0
.L_77e7c:
	.4byte	gWarioData
.L_77e80:
	.4byte	gCurrentSecondarySprite
.L_77e84:
	ldr	r1, .L_77ea8
	mov	r2, #0
	mov	r0, #4
	strb	r0, [r1, #3]
	mov	r0, #0
	strh	r2, [r1, #6]
	strb	r0, [r1, #1]
.L_77e92:
	ldr	r0, .L_77eac
	bl	func_8076A0C
	mov	r1, r8
	cmp	r1, #0
	beq	.L_77eb0
	ldr	r1, .L_77ea8
	mov	r0, #11
	strb	r0, [r1, #3]
	b	.L_7801a
	.align	2, 0
.L_77ea8:
	.4byte	gCurrentSecondarySprite
.L_77eac:
	.4byte	sKeyzerOam_83B47EC
.L_77eb0:
	ldr	r0, .L_77ec8
	ldrh	r1, [r0, #14]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	bne	.L_77ebe
	b	.L_7801a
.L_77ebe:
	ldr	r1, .L_77ecc
	mov	r0, #7
	strb	r0, [r1, #3]
	b	.L_7801a
	.align	2, 0
.L_77ec8:
	.4byte	gWarioData
.L_77ecc:
	.4byte	gCurrentSecondarySprite
.L_77ed0:
	ldr	r1, .L_77ee8
	mov	r2, #0
	mov	r0, #6
	strb	r0, [r1, #3]
	mov	r0, #24
	strb	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #6]
	strb	r0, [r1, #1]
.L_77ee2:
	ldr	r0, .L_77eec
	b	.L_77ff4
	.align	2, 0
.L_77ee8:
	.4byte	gCurrentSecondarySprite
.L_77eec:
	.4byte	sKeyzerOam_83B48DC
.L_77ef0:
	ldr	r1, .L_77f08
	mov	r2, #0
	mov	r0, #8
	strb	r0, [r1, #3]
	mov	r0, #24
	strb	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #6]
	strb	r0, [r1, #1]
.L_77f02:
	ldr	r0, .L_77f0c
	b	.L_77fc0
	.align	2, 0
.L_77f08:
	.4byte	gCurrentSecondarySprite
.L_77f0c:
	.4byte	sKeyzerOam_83B4904
.L_77f10:
	ldr	r1, .L_77f28
	mov	r2, #0
	mov	r0, #10
	strb	r0, [r1, #3]
	mov	r0, #9
	strb	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #6]
	strb	r0, [r1, #1]
.L_77f22:
	ldr	r0, .L_77f2c
	b	.L_77f44
	.align	2, 0
.L_77f28:
	.4byte	gCurrentSecondarySprite
.L_77f2c:
	.4byte	sKeyzerOam_83B4814
.L_77f30:
	ldr	r1, .L_77f5c
	mov	r2, #0
	mov	r0, #12
	strb	r0, [r1, #3]
	mov	r0, #9
	strb	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #6]
	strb	r0, [r1, #1]
.L_77f42:
	ldr	r0, .L_77f60
.L_77f44:
	bl	func_8076A0C
	ldr	r1, .L_77f5c
	ldrb	r0, [r1, #4]
	sub	r0, #1
	strb	r0, [r1, #4]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_7801a
	mov	r0, #13
	strb	r0, [r1, #3]
	b	.L_7801a
.L_77f5c:
	.4byte	gCurrentSecondarySprite
.L_77f60:
	.4byte	sKeyzerOam_83B483C
.L_77f64:
	ldr	r1, .L_77f94
	mov	r2, #0
	mov	r0, #14
	strb	r0, [r1, #3]
	mov	r0, #0
	strh	r2, [r1, #6]
	strb	r0, [r1, #1]
.L_77f72:
	ldr	r0, .L_77f98
	bl	func_8076A0C
	mov	r3, r8
	cmp	r3, #0
	bne	.L_7801a
	ldr	r0, .L_77f9c
	ldrh	r1, [r0, #14]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_77fa0
	ldr	r1, .L_77f94
	mov	r0, #15
	strb	r0, [r1, #3]
	b	.L_7801a
	.align	2, 0
.L_77f94:
	.4byte	gCurrentSecondarySprite
.L_77f98:
	.4byte	sKeyzerOam_83B4864
.L_77f9c:
	.4byte	gWarioData
.L_77fa0:
	ldr	r1, .L_77fa8
	mov	r0, #17
	strb	r0, [r1, #3]
	b	.L_7801a
.L_77fa8:
	.4byte	gCurrentSecondarySprite
.L_77fac:
	ldr	r1, .L_77fd8
	mov	r2, #0
	mov	r0, #16
	strb	r0, [r1, #3]
	mov	r0, #15
	strb	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #6]
	strb	r0, [r1, #1]
.L_77fbe:
	ldr	r0, .L_77fdc
.L_77fc0:
	bl	func_8076A0C
	ldr	r1, .L_77fd8
	ldrb	r0, [r1, #4]
	sub	r0, #1
	strb	r0, [r1, #4]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_7801a
.L_77fd2:
	mov	r0, #1
	strb	r0, [r1, #3]
	b	.L_7801a
.L_77fd8:
	.4byte	gCurrentSecondarySprite
.L_77fdc:
	.4byte	sKeyzerOam_83B488C
.L_77fe0:
	ldr	r1, .L_7800c
	mov	r2, #0
	mov	r0, #18
	strb	r0, [r1, #3]
	mov	r0, #15
	strb	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #6]
	strb	r0, [r1, #1]
.L_77ff2:
	ldr	r0, .L_78010
.L_77ff4:
	bl	func_8076A0C
	ldr	r1, .L_7800c
	ldrb	r0, [r1, #4]
	sub	r0, #1
	strb	r0, [r1, #4]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_7801a
	mov	r0, #3
	strb	r0, [r1, #3]
	b	.L_7801a
.L_7800c:
	.4byte	gCurrentSecondarySprite
.L_78010:
	.4byte	sKeyzerOam_83B48B4
.L_78014:
	ldr	r0, .L_78048
	bl	func_8076A0C
.L_7801a:
	ldr	r0, .L_7804c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_780f8
	ldr	r2, .L_78050
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	add	r1, r0, #0
	ldrh	r3, [r2, #10]
	add	r0, r1, r3
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldr	r0, .L_78054
	ldrh	r3, [r0, #0]
	add	r1, r1, r3
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	add	r7, r0, #0
	cmp	r4, r3
	bls	.L_78058
	sub	r0, r4, r3
	b	.L_7805a
	.align	2, 0
.L_78048:
	.4byte	sKeyzerOam_83B4864
.L_7804c:
	.4byte	gUnk_3000C0E
.L_78050:
	.4byte	gCurrentSecondarySprite
.L_78054:
	.4byte	gVortexXPosition
.L_78058:
	sub	r0, r3, r4
.L_7805a:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #8
	bhi	.L_78066
	mov	r6, #0
	b	.L_7806c
.L_78066:
	sub	r0, #8
	lsl	r0, r0, #13
	lsr	r6, r0, #16
.L_7806c:
	cmp	r4, r3
	bls	.L_78076
	ldrh	r0, [r2, #10]
	sub	r0, r0, r6
	b	.L_7807e
.L_78076:
	cmp	r4, r3
	bcs	.L_78080
	ldrh	r0, [r2, #10]
	add	r0, r6, r0
.L_7807e:
	strh	r0, [r2, #10]
.L_78080:
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #2
	add	r0, r1, #0
	ldrh	r3, [r2, #8]
	add	r1, r0, r3
	lsl	r1, r1, #16
	lsr	r4, r1, #16
	ldr	r1, .L_780a0
	ldrh	r3, [r1, #0]
	add	r0, r0, r3
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r4, r3
	bls	.L_780a4
	sub	r0, r4, r3
	b	.L_780a6
.L_780a0:
	.4byte	gVortexYPosition
.L_780a4:
	sub	r0, r3, r4
.L_780a6:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #8
	bhi	.L_780b2
	mov	r5, #0
	b	.L_780b8
.L_780b2:
	sub	r0, #8
	lsl	r0, r0, #13
	lsr	r5, r0, #16
.L_780b8:
	cmp	r4, r3
	bls	.L_780c2
	ldrh	r0, [r2, #8]
	sub	r0, r0, r5
	b	.L_780ca
.L_780c2:
	cmp	r4, r3
	bcs	.L_780cc
	ldrh	r0, [r2, #8]
	add	r0, r5, r0
.L_780ca:
	strh	r0, [r2, #8]
.L_780cc:
	cmp	r6, #0
	beq	.L_780d2
	b	.L_781ee
.L_780d2:
	cmp	r5, #0
	beq	.L_780d8
	b	.L_781ee
.L_780d8:
	ldr	r0, .L_780f0
	ldrb	r2, [r0, #0]
	ldrh	r3, [r1, #0]
	ldrh	r0, [r7, #0]
	str	r0, [sp, #0]
	mov	r0, #211	@ 0xd3
	mov	r1, #0
	bl	func_801E430
	ldr	r0, .L_780f4
	strb	r6, [r0, #0]
	b	.L_781ee
.L_780f0:
	.4byte	gVortexGfxSlot
.L_780f4:
	.4byte	gCurrentSecondarySprite
.L_780f8:
	ldr	r2, .L_78138
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	add	r1, r0, #0
	ldrh	r3, [r2, #10]
	add	r0, r1, r3
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldr	r0, .L_7813c
	ldrh	r3, [r0, #18]
	add	r1, r1, r3
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	mov	r5, #64	@ 0x40
	add	r7, r0, #0
	mov	r0, r8
	cmp	r0, #0
	beq	.L_7811e
	mov	r5, #4
.L_7811e:
	ldrh	r1, [r7, #14]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_78162
	add	r0, r3, r5
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r4, r3
	bls	.L_78140
	sub	r0, r4, r3
	b	.L_78142
	.align	2, 0
.L_78138:
	.4byte	gCurrentSecondarySprite
.L_7813c:
	.4byte	gWarioData
.L_78140:
	sub	r0, r3, r4
.L_78142:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #8
	bhi	.L_7814e
	mov	r6, #0
	b	.L_78154
.L_7814e:
	sub	r0, #8
	lsl	r0, r0, #13
	lsr	r6, r0, #16
.L_78154:
	cmp	r4, r3
	bhi	.L_78192
	cmp	r4, r3
	bcs	.L_78198
	ldrh	r0, [r2, #10]
	add	r0, r6, r0
	b	.L_78196
.L_78162:
	sub	r0, r3, r5
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r4, r3
	bls	.L_78170
	sub	r0, r4, r3
	b	.L_78172
.L_78170:
	sub	r0, r3, r4
.L_78172:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #8
	bhi	.L_7817e
	mov	r6, #0
	b	.L_78184
.L_7817e:
	sub	r0, #8
	lsl	r0, r0, #13
	lsr	r6, r0, #16
.L_78184:
	cmp	r4, r3
	bcs	.L_7818e
	ldrh	r0, [r2, #10]
	add	r0, r6, r0
	b	.L_78196
.L_7818e:
	cmp	r4, r3
	bls	.L_78198
.L_78192:
	ldrh	r0, [r2, #10]
	sub	r0, r0, r6
.L_78196:
	strh	r0, [r2, #10]
.L_78198:
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r1, r3, #0
	ldrh	r3, [r2, #8]
	add	r0, r1, r3
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	mov	r0, r8
	cmp	r0, #0
	beq	.L_781b2
	ldrh	r7, [r7, #20]
	add	r0, r1, r7
	b	.L_781ba
.L_781b2:
	ldrh	r0, [r7, #52]	@ 0x34
	ldrh	r7, [r7, #20]
	add	r0, r0, r7
	add	r0, r0, r1
.L_781ba:
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r4, r3
	bls	.L_781c6
	sub	r0, r4, r3
	b	.L_781c8
.L_781c6:
	sub	r0, r3, r4
.L_781c8:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #8
	bhi	.L_781d4
	mov	r6, #0
	b	.L_781da
.L_781d4:
	sub	r0, #8
	lsl	r0, r0, #13
	lsr	r6, r0, #16
.L_781da:
	cmp	r4, r3
	bls	.L_781e4
	ldrh	r0, [r2, #8]
	sub	r0, r0, r6
	b	.L_781ec
.L_781e4:
	cmp	r4, r3
	bcs	.L_781ee
	ldrh	r0, [r2, #8]
	add	r0, r6, r0
.L_781ec:
	strh	r0, [r2, #8]
.L_781ee:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_80781FA
func_80781FA:
	.align	2, 0
	push	{lr}
	ldr	r0, .L_78218
	bl	func_8076A0C
	ldr	r3, .L_7821c
	ldrb	r0, [r3, #3]
	cmp	r0, #1
	beq	.L_78254
	cmp	r0, #1
	bgt	.L_78220
	cmp	r0, #0
	beq	.L_78226
	b	.L_78294
	.align	2, 0
.L_78218:
	.4byte	sCoin50PointsOamData
.L_7821c:
	.4byte	gCurrentSecondarySprite
.L_78220:
	cmp	r0, #2
	beq	.L_78266
	b	.L_78294
.L_78226:
	ldr	r2, .L_78244
	ldrh	r0, [r2, #20]
	sub	r0, #90	@ 0x5a
	strh	r0, [r3, #8]
	ldrh	r1, [r2, #14]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_78248
	ldrh	r0, [r2, #18]
	add	r0, #32
	strh	r0, [r3, #10]
	mov	r0, #1
	strb	r0, [r3, #3]
	b	.L_7829a
.L_78244:
	.4byte	gWarioData
.L_78248:
	ldrh	r0, [r2, #18]
	sub	r0, #32
	strh	r0, [r3, #10]
	mov	r0, #2
	strb	r0, [r3, #3]
	b	.L_7829a
.L_78254:
	ldrb	r0, [r3, #4]
	add	r0, #1
	strb	r0, [r3, #4]
	ldrb	r2, [r3, #4]
	cmp	r2, #30
	bhi	.L_78272
	ldrh	r0, [r3, #10]
	add	r0, #4
	b	.L_7827c
.L_78266:
	ldrb	r0, [r3, #4]
	add	r0, #1
	strb	r0, [r3, #4]
	ldrb	r2, [r3, #4]
	cmp	r2, #30
	bls	.L_78278
.L_78272:
	mov	r0, #3
	strb	r0, [r3, #3]
	b	.L_7829a
.L_78278:
	ldrh	r0, [r3, #10]
	sub	r0, #4
.L_7827c:
	strh	r0, [r3, #10]
	ldr	r1, .L_78290
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldrh	r1, [r3, #8]
	add	r0, r0, r1
	strh	r0, [r3, #8]
	b	.L_7829a
	.align	2, 0
.L_78290:
	.4byte	sUnk_8416A06
.L_78294:
	ldr	r1, .L_782a0
	mov	r0, #0
	strb	r0, [r1, #0]
.L_7829a:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_782a0:
	.4byte	gCurrentSecondarySprite


thumb_func_start func_80782A4
func_80782A4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #2
	ldr	r0, .L_782c4
	ldrb	r0, [r0, #3]
	cmp	r0, #44	@ 0x2c
	bls	.L_782b8
	b	.L_789d8
.L_782b8:
	lsl	r0, r0, #2
	ldr	r1, .L_782c8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_782c4:
	.4byte	gCurrentSecondarySprite
.L_782c8:
	.4byte	.L_782cc
.L_782cc:
	.4byte	.L_78380
	.4byte	.L_783ca
	.4byte	.L_78402
	.4byte	.L_78476
	.4byte	.L_784d8
	.4byte	.L_78534
	.4byte	.L_78594
	.4byte	.L_785b0
	.4byte	.L_785f0
	.4byte	.L_789d8
	.4byte	.L_789d8
	.4byte	.L_786d8
	.4byte	.L_78728
	.4byte	.L_7873c
	.4byte	.L_78750
	.4byte	.L_78764
	.4byte	.L_78778
	.4byte	.L_7878c
	.4byte	.L_787a0
	.4byte	.L_787b4
	.4byte	.L_787c8
	.4byte	.L_787dc
	.4byte	.L_787f0
	.4byte	.L_78804
	.4byte	.L_788a8
	.4byte	.L_78818
	.4byte	.L_7882c
	.4byte	.L_7884c
	.4byte	.L_788a8
	.4byte	.L_78860
	.4byte	.L_78874
	.4byte	.L_789d8
	.4byte	.L_789d8
	.4byte	.L_789d8
	.4byte	.L_789d8
	.4byte	.L_789d8
	.4byte	.L_789d8
	.4byte	.L_789d8
	.4byte	.L_789d8
	.4byte	.L_78894
	.4byte	.L_788a8
	.4byte	.L_788c8
	.4byte	.L_788f8
	.4byte	.L_78984
	.4byte	.L_78998
.L_78380:
	ldr	r3, .L_783b0
	ldrb	r1, [r3, #0]
	mov	r0, #6
	orr	r0, r1
	strb	r0, [r3, #0]
	ldr	r1, .L_783b4
	ldr	r0, .L_783b8
	str	r0, [r1, #0]
	ldr	r1, .L_783bc
	ldrb	r2, [r3, #4]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r7, [r0, #0]
	mov	r4, #0
	ldrsh	r1, [r0, r4]
	ldr	r0, .L_783c0
	cmp	r1, r0
	bne	.L_783c4
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #2
	mov	r0, #1
	strb	r0, [r3, #3]
	b	.L_789ec
	.align	2, 0
.L_783b0:
	.4byte	gCurrentSecondarySprite
.L_783b4:
	.4byte	gUnk_3000C10
.L_783b8:
	.4byte	sUnk_840F1C8
.L_783bc:
	.4byte	sUnk_84168B4
.L_783c0:
	.4byte	0x00007fff
.L_783c4:
	add	r0, r2, #1
	strb	r0, [r3, #4]
	b	.L_789ec
.L_783ca:
	ldr	r2, .L_783ec
	ldrb	r1, [r2, #0]
	mov	r0, #6
	orr	r0, r1
	strb	r0, [r2, #0]
	ldr	r1, .L_783f0
	ldr	r0, .L_783f4
	str	r0, [r1, #0]
	ldrh	r1, [r2, #8]
	lsr	r0, r1, #2
	cmp	r0, #2
	bls	.L_783f8
	add	r0, r1, #0
	sub	r0, #16
	strh	r0, [r2, #8]
	b	.L_789ec
	.align	2, 0
.L_783ec:
	.4byte	gCurrentSecondarySprite
.L_783f0:
	.4byte	gUnk_3000C10
.L_783f4:
	.4byte	sUnk_840F1C8
.L_783f8:
	mov	r0, #8
	strh	r0, [r2, #8]
	mov	r0, #2
	strb	r0, [r2, #3]
	b	.L_789ec
.L_78402:
	ldr	r2, .L_78424
	ldrb	r1, [r2, #0]
	mov	r0, #6
	orr	r0, r1
	strb	r0, [r2, #0]
	ldr	r1, .L_78428
	ldr	r0, .L_7842c
	str	r0, [r1, #0]
	ldr	r0, .L_78430
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bne	.L_78434
	mov	r0, #3
	strb	r0, [r2, #3]
	mov	r0, #7
	strb	r0, [r2, #4]
	b	.L_789ec
.L_78424:
	.4byte	gCurrentSecondarySprite
.L_78428:
	.4byte	gUnk_3000C10
.L_7842c:
	.4byte	sUnk_840F1C8
.L_78430:
	.4byte	gTimerState
.L_78434:
	cmp	r0, #4
	bne	.L_78442
	mov	r0, #6
	strb	r0, [r2, #3]
	mov	r0, #30
	strb	r0, [r2, #4]
	b	.L_789ec
.L_78442:
	cmp	r0, #11
	beq	.L_78448
	b	.L_789ec
.L_78448:
	mov	r0, #44	@ 0x2c
	strb	r0, [r2, #3]
	mov	r0, #30
	strb	r0, [r2, #4]
	ldr	r1, .L_78468
	mov	r0, #1
	strb	r0, [r1, #0]
	bl	func_801E4D4
	ldr	r0, .L_7846c
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_78470
	bl	AutosaveFinalBoss
	b	.L_789ec
.L_78468:
	.4byte	gCollectedKeyzer
.L_7846c:
	.4byte	gCurrentPassage
.L_78470:
	bl	AutosaveBossClear
	b	.L_789ec
.L_78476:
	ldr	r2, .L_784c0
	ldrb	r0, [r2, #0]
	mov	r1, #6
	add	r3, r1, #0
	orr	r3, r0
	strb	r3, [r2, #0]
	ldr	r4, .L_784c4
	ldr	r0, .L_784c8
	str	r0, [r4, #0]
	ldrb	r0, [r2, #4]
	cmp	r0, #0
	beq	.L_78490
	b	.L_789ae
.L_78490:
	ldrh	r0, [r2, #8]
	sub	r0, #16
	strh	r0, [r2, #8]
	lsl	r0, r0, #16
	ldr	r1, .L_784cc
	cmp	r0, r1
	bls	.L_784a0
	b	.L_789ec
.L_784a0:
	mov	r0, #24
	strh	r0, [r2, #8]
	mov	r0, #207	@ 0xcf
	lsl	r0, r0, #2
	strh	r0, [r2, #10]
	mov	r0, #4
	strb	r0, [r2, #3]
	ldr	r0, .L_784d0
	str	r0, [r4, #0]
	mov	r0, #253	@ 0xfd
	and	r3, r0
	strb	r3, [r2, #0]
	ldr	r1, .L_784d4
	mov	r0, #3
	strb	r0, [r1, #0]
	b	.L_789ec
.L_784c0:
	.4byte	gCurrentSecondarySprite
.L_784c4:
	.4byte	gUnk_3000C10
.L_784c8:
	.4byte	sUnk_840F1C8
.L_784cc:
	.4byte	0xffb70000
.L_784d0:
	.4byte	sUnk_840F200
.L_784d4:
	.4byte	gTimerState
.L_784d8:
	ldr	r3, .L_78520
	ldrb	r1, [r3, #0]
	mov	r0, #4
	mov	r5, #0
	add	r2, r0, #0
	orr	r2, r1
	mov	r0, #253	@ 0xfd
	and	r2, r0
	strb	r2, [r3, #0]
	ldr	r4, .L_78524
	ldr	r0, .L_78528
	str	r0, [r4, #0]
	ldrh	r0, [r3, #10]
	sub	r0, #16
	strh	r0, [r3, #10]
	lsl	r0, r0, #16
	ldr	r1, .L_7852c
	cmp	r0, r1
	bls	.L_78500
	b	.L_789ec
.L_78500:
	mov	r0, #152	@ 0x98
	lsl	r0, r0, #2
	strh	r0, [r3, #10]
	mov	r0, #5
	strb	r0, [r3, #3]
	ldr	r0, .L_78530
	str	r0, [r4, #0]
	mov	r1, #2
	add	r0, r2, #0
	orr	r0, r1
	strb	r0, [r3, #0]
	mov	r0, #226	@ 0xe2
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_789ec
.L_78520:
	.4byte	gCurrentSecondarySprite
.L_78524:
	.4byte	gUnk_3000C10
.L_78528:
	.4byte	sUnk_840F200
.L_7852c:
	.4byte	0x025f0000
.L_78530:
	.4byte	sUnk_840F214
.L_78534:
	ldr	r4, .L_78578
	ldrb	r1, [r4, #0]
	mov	r0, #6
	orr	r0, r1
	strb	r0, [r4, #0]
	ldr	r1, .L_7857c
	ldr	r0, .L_78580
	str	r0, [r1, #0]
	ldr	r1, .L_78584
	ldrb	r0, [r1, #0]
	cmp	r0, #4
	beq	.L_7856e
	ldr	r0, .L_78588
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_78556
	b	.L_789ec
.L_78556:
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r1, .L_7858c
	mov	r2, #250	@ 0xfa
	lsl	r2, r2, #2
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_78590
	mov	r0, #1
	strb	r0, [r1, #0]
	bl	func_8075974
.L_7856e:
	mov	r0, #7
	strb	r0, [r4, #3]
	mov	r0, #30
	strb	r0, [r4, #4]
	b	.L_789ec
.L_78578:
	.4byte	gCurrentSecondarySprite
.L_7857c:
	.4byte	gUnk_3000C10
.L_78580:
	.4byte	sUnk_840F214
.L_78584:
	.4byte	gTimerState
.L_78588:
	.4byte	gStageScore
.L_7858c:
	.4byte	gWarioPauseTimer
.L_78590:
	.4byte	gUnk_3000046
.L_78594:
	ldr	r2, .L_785a4
	ldrb	r1, [r2, #0]
	mov	r0, #6
	orr	r0, r1
	strb	r0, [r2, #0]
	ldr	r1, .L_785a8
	ldr	r0, .L_785ac
	b	.L_785be
.L_785a4:
	.4byte	gCurrentSecondarySprite
.L_785a8:
	.4byte	gUnk_3000C10
.L_785ac:
	.4byte	sUnk_840F1C8
.L_785b0:
	ldr	r2, .L_785e0
	ldrb	r1, [r2, #0]
	mov	r0, #6
	orr	r0, r1
	strb	r0, [r2, #0]
	ldr	r1, .L_785e4
	ldr	r0, .L_785e8
.L_785be:
	str	r0, [r1, #0]
	ldrb	r0, [r2, #4]
	cmp	r0, #0
	beq	.L_785c8
	b	.L_789ae
.L_785c8:
	ldrh	r0, [r2, #8]
	sub	r0, #16
	strh	r0, [r2, #8]
	lsl	r0, r0, #16
	ldr	r1, .L_785ec
	cmp	r0, r1
	bls	.L_785d8
	b	.L_789ec
.L_785d8:
	mov	r0, #8
	strb	r0, [r2, #3]
	b	.L_789ec
	.align	2, 0
.L_785e0:
	.4byte	gCurrentSecondarySprite
.L_785e4:
	.4byte	gUnk_3000C10
.L_785e8:
	.4byte	sUnk_840F214
.L_785ec:
	.4byte	0xffb70000
.L_785f0:
	.2byte	0x4923
	mov	r0, #5
	strb	r0, [r1, #0]
	ldr	r1, .L_78684
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r5, .L_78688
	ldrb	r1, [r5, #0]
	mov	r0, #251	@ 0xfb
	and	r0, r1
	strb	r0, [r5, #0]
	ldr	r0, .L_7868c
	ldr	r1, .L_78690
	str	r1, [r0, #0]
	ldr	r1, .L_78694
	str	r1, [r0, #4]
	ldr	r6, .L_78698
	str	r6, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r2, .L_7869c
	str	r2, [r0, #0]
	ldr	r1, .L_786a0
	str	r1, [r0, #4]
	ldr	r4, .L_786a4
	str	r4, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r3, .L_786a8
	str	r3, [r0, #0]
	ldr	r1, .L_786ac
	str	r1, [r0, #4]
	str	r4, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r4, .L_786b0
	add	r2, r2, r4
	str	r2, [r0, #0]
	ldr	r1, .L_786b4
	str	r1, [r0, #4]
	ldr	r2, .L_786b8
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	add	r3, r3, r4
	str	r3, [r0, #0]
	ldr	r1, .L_786bc
	str	r1, [r0, #4]
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r2, .L_786c0
	ldr	r1, .L_786c4
	str	r1, [r2, #0]
	mov	r7, #16
	mov	r1, #11
	strb	r1, [r5, #3]
	ldr	r1, .L_786c8
	str	r1, [r0, #0]
	ldr	r1, .L_786cc
	str	r1, [r0, #4]
	str	r6, [r0, #8]
	ldr	r0, [r0, #8]
	ldr	r1, .L_786d0
	ldrh	r0, [r1, #20]
	ldrh	r1, [r1, #18]
	mov	r2, #76	@ 0x4c
	bl	SpriteSpawnSecondary
	ldr	r0, .L_786d4
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	beq	.L_7867a
	b	.L_789ec
.L_7867a:
	bl	AutosaveDefeat
	b	.L_789ec
	lsl	r7, r0, #1
	lsl	r0, r0, #12
.L_78684:
	.4byte	gDisableWario
.L_78688:
	.4byte	gCurrentSecondarySprite
.L_7868c:
	.4byte	0x040000d4
.L_78690:
	.4byte	sTimeUpTextPal
.L_78694:
	.4byte	0x05000240
.L_78698:
	.4byte	0x80000010
.L_7869c:
	.4byte	sTimeUpGfx + 0x300
.L_786a0:
	.4byte	0x06010380
.L_786a4:
	.4byte	0x80000080
.L_786a8:
	.4byte	sTimeUpGfx + 0x700
.L_786ac:
	.4byte	0x06010780
.L_786b0:
	.4byte	0xfffffd00
.L_786b4:
	.4byte	0x06010800
.L_786b8:
	.4byte	0x80000200
.L_786bc:
	.4byte	0x06010c00
.L_786c0:
	.4byte	gUnk_3000C10
.L_786c4:
	.4byte	sUnk_8411AFC
.L_786c8:
	.4byte	sTimeUpWarioPal
.L_786cc:
	.4byte	0x05000200
.L_786d0:
	.4byte	gWarioData
.L_786d4:
	.4byte	gCurrentStageNumber
.L_786d8:
	ldr	r0, .L_78704
	ldrb	r0, [r0, #0]
	cmp	r0, #6
	bne	.L_78714
	ldr	r2, .L_78708
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #1
	strh	r0, [r2, #8]
	add	r0, #160	@ 0xa0
	strh	r0, [r2, #10]
	ldr	r1, .L_7870c
	ldr	r0, .L_78710
	str	r0, [r1, #0]
	mov	r7, #32
	ldrb	r0, [r2, #3]
	add	r0, #1
	strb	r0, [r2, #3]
	mov	r0, #8
	bl	func_80708DC
	b	.L_789ec
	.align	2, 0
.L_78704:
	.4byte	gTimerState
.L_78708:
	.4byte	gCurrentSecondarySprite
.L_7870c:
	.4byte	gUnk_3000C10
.L_78710:
	.4byte	sUnk_8411B48
.L_78714:
	ldr	r1, .L_78720
	ldr	r0, .L_78724
	str	r0, [r1, #0]
	mov	r7, #16
	b	.L_789ec
	.align	2, 0
.L_78720:
	.4byte	gUnk_3000C10
.L_78724:
	.4byte	sUnk_8411AFC
.L_78728:
	ldr	r1, .L_78734
	ldr	r0, .L_78738
	str	r0, [r1, #0]
	mov	r7, #64	@ 0x40
	b	.L_788b2
	.align	2, 0
.L_78734:
	.4byte	gUnk_3000C10
.L_78738:
	.4byte	sUnk_8411B94
.L_7873c:
	ldr	r1, .L_78748
	ldr	r0, .L_7874c
	str	r0, [r1, #0]
	mov	r7, #96	@ 0x60
	b	.L_788b2
	.align	2, 0
.L_78748:
	.4byte	gUnk_3000C10
.L_7874c:
	.4byte	sUnk_8411BE0
.L_78750:
	ldr	r1, .L_7875c
	ldr	r0, .L_78760
	str	r0, [r1, #0]
	mov	r7, #128	@ 0x80
	b	.L_788b2
	.align	2, 0
.L_7875c:
	.4byte	gUnk_3000C10
.L_78760:
	.4byte	sUnk_8411C2C
.L_78764:
	ldr	r1, .L_78770
	ldr	r0, .L_78774
	str	r0, [r1, #0]
	mov	r7, #160	@ 0xa0
	b	.L_788b2
	.align	2, 0
.L_78770:
	.4byte	gUnk_3000C10
.L_78774:
	.4byte	sUnk_8411C78
.L_78778:
	ldr	r1, .L_78784
	ldr	r0, .L_78788
	str	r0, [r1, #0]
	mov	r7, #192	@ 0xc0
	b	.L_788b2
	.align	2, 0
.L_78784:
	.4byte	gUnk_3000C10
.L_78788:
	.4byte	sUnk_8411CC4
.L_7878c:
	ldr	r1, .L_78798
	ldr	r0, .L_7879c
	str	r0, [r1, #0]
	mov	r7, #224	@ 0xe0
	b	.L_788b2
	.align	2, 0
.L_78798:
	.4byte	gUnk_3000C10
.L_7879c:
	.4byte	sUnk_8411D10
.L_787a0:
	ldr	r1, .L_787ac
	ldr	r0, .L_787b0
	str	r0, [r1, #0]
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #1
	b	.L_788b2
.L_787ac:
	.4byte	gUnk_3000C10
.L_787b0:
	.4byte	sUnk_8411D5C
.L_787b4:
	ldr	r1, .L_787c0
	ldr	r0, .L_787c4
	str	r0, [r1, #0]
	mov	r7, #144	@ 0x90
	lsl	r7, r7, #1
	b	.L_788b2
.L_787c0:
	.4byte	gUnk_3000C10
.L_787c4:
	.4byte	sUnk_8411DA8
.L_787c8:
	ldr	r1, .L_787d4
	ldr	r0, .L_787d8
	str	r0, [r1, #0]
	mov	r7, #160	@ 0xa0
	lsl	r7, r7, #1
	b	.L_788b2
.L_787d4:
	.4byte	gUnk_3000C10
.L_787d8:
	.4byte	sUnk_8411DF4
.L_787dc:
	ldr	r1, .L_787e8
	ldr	r0, .L_787ec
	str	r0, [r1, #0]
	mov	r7, #176	@ 0xb0
	lsl	r7, r7, #1
	b	.L_788b2
.L_787e8:
	.4byte	gUnk_3000C10
.L_787ec:
	.4byte	sUnk_8411E40
.L_787f0:
	ldr	r1, .L_787fc
	ldr	r0, .L_78800
	str	r0, [r1, #0]
	mov	r7, #192	@ 0xc0
	lsl	r7, r7, #1
	b	.L_788b2
.L_787fc:
	.4byte	gUnk_3000C10
.L_78800:
	.4byte	sUnk_8411E8C
.L_78804:
	ldr	r1, .L_78810
	ldr	r0, .L_78814
	str	r0, [r1, #0]
	mov	r7, #208	@ 0xd0
	lsl	r7, r7, #1
	b	.L_788b2
.L_78810:
	.4byte	gUnk_3000C10
.L_78814:
	.4byte	sUnk_8411ED8
.L_78818:
	ldr	r1, .L_78824
	ldr	r0, .L_78828
	str	r0, [r1, #0]
	mov	r7, #240	@ 0xf0
	lsl	r7, r7, #1
	b	.L_788b2
.L_78824:
	.4byte	gUnk_3000C10
.L_78828:
	.4byte	sUnk_8411F70
.L_7882c:
	ldr	r1, .L_78840
	mov	r0, #7
	strb	r0, [r1, #0]
	ldr	r1, .L_78844
	ldr	r0, .L_78848
	str	r0, [r1, #0]
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #2
	b	.L_788b2
	.align	2, 0
.L_78840:
	.4byte	gTimerState
.L_78844:
	.4byte	gUnk_3000C10
.L_78848:
	.4byte	sUnk_8411FBC
.L_7884c:
	ldr	r1, .L_78858
	ldr	r0, .L_7885c
	str	r0, [r1, #0]
	mov	r7, #240	@ 0xf0
	lsl	r7, r7, #1
	b	.L_788b2
.L_78858:
	.4byte	gUnk_3000C10
.L_7885c:
	.4byte	sUnk_8411F70
.L_78860:
	ldr	r1, .L_7886c
	ldr	r0, .L_78870
	str	r0, [r1, #0]
	mov	r7, #208	@ 0xd0
	lsl	r7, r7, #1
	b	.L_788b2
.L_7886c:
	.4byte	gUnk_3000C10
.L_78870:
	.4byte	sUnk_8411ED8
.L_78874:
	ldr	r1, .L_78888
	ldr	r0, .L_7888c
	str	r0, [r1, #0]
	mov	r7, #192	@ 0xc0
	lsl	r7, r7, #1
	ldr	r1, .L_78890
	mov	r0, #39	@ 0x27
	strb	r0, [r1, #3]
	b	.L_789ec
	.align	2, 0
.L_78888:
	.4byte	gUnk_3000C10
.L_7888c:
	.4byte	sUnk_8411E8C
.L_78890:
	.4byte	gCurrentSecondarySprite
.L_78894:
	ldr	r1, .L_788a0
	ldr	r0, .L_788a4
	str	r0, [r1, #0]
	mov	r7, #208	@ 0xd0
	lsl	r7, r7, #1
	b	.L_788b2
.L_788a0:
	.4byte	gUnk_3000C10
.L_788a4:
	.4byte	sUnk_8411ED8
.L_788a8:
	ldr	r1, .L_788bc
	ldr	r0, .L_788c0
	str	r0, [r1, #0]
	mov	r7, #224	@ 0xe0
	lsl	r7, r7, #1
.L_788b2:
	ldr	r1, .L_788c4
	ldrb	r0, [r1, #3]
	add	r0, #1
	strb	r0, [r1, #3]
	b	.L_789ec
.L_788bc:
	.4byte	gUnk_3000C10
.L_788c0:
	.4byte	sUnk_8411F24
.L_788c4:
	.4byte	gCurrentSecondarySprite
.L_788c8:
	ldr	r1, .L_788e8
	ldr	r0, .L_788ec
	str	r0, [r1, #0]
	mov	r7, #240	@ 0xf0
	lsl	r7, r7, #1
	ldr	r1, .L_788f0
	ldrb	r0, [r1, #3]
	add	r0, #1
	strb	r0, [r1, #3]
	mov	r0, #120	@ 0x78
	strb	r0, [r1, #4]
	ldr	r1, .L_788f4
	mov	r0, #8
	strb	r0, [r1, #0]
	b	.L_789ec
	.align	2, 0
.L_788e8:
	.4byte	gUnk_3000C10
.L_788ec:
	.4byte	sUnk_8411F70
.L_788f0:
	.4byte	gCurrentSecondarySprite
.L_788f4:
	.4byte	gTimerState
.L_788f8:
	ldr	r0, .L_78944
	ldr	r1, .L_78948
	str	r1, [r0, #0]
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #2
	ldr	r3, .L_7894c
	ldrb	r0, [r3, #4]
	cmp	r0, #50	@ 0x32
	bne	.L_78910
	ldr	r1, .L_78950
	mov	r0, #9
	strb	r0, [r1, #0]
.L_78910:
	ldrb	r0, [r3, #4]
	sub	r0, #1
	strb	r0, [r3, #4]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_789ec
	ldr	r1, .L_78950
	mov	r0, #10
	strb	r0, [r1, #0]
	ldrb	r0, [r3, #3]
	add	r0, #1
	strb	r0, [r3, #3]
	ldr	r0, .L_78954
	ldrb	r3, [r0, #0]
	cmp	r3, #4
	bne	.L_78964
	ldr	r1, .L_78958
	mov	r0, #6
	strh	r0, [r1, #0]
	ldr	r0, .L_7895c
	strb	r2, [r0, #0]
	ldr	r0, .L_78960
	strb	r3, [r0, #0]
	b	.L_789ec
	.align	2, 0
.L_78944:
	.4byte	gUnk_3000C10
.L_78948:
	.4byte	sUnk_8411FBC
.L_7894c:
	.4byte	gCurrentSecondarySprite
.L_78950:
	.4byte	gTimerState
.L_78954:
	.4byte	gCurrentStageNumber
.L_78958:
	.4byte	gSubGameMode
.L_7895c:
	.4byte	gSpriteAiDropTimer
.L_78960:
	.4byte	gStageExitType
.L_78964:
	ldr	r1, .L_78978
	mov	r0, #6
	strh	r0, [r1, #0]
	ldr	r0, .L_7897c
	strb	r2, [r0, #0]
	ldr	r1, .L_78980
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_789ec
	.align	2, 0
.L_78978:
	.4byte	gSubGameMode
.L_7897c:
	.4byte	gSpriteAiDropTimer
.L_78980:
	.4byte	gStageExitType
.L_78984:
	ldr	r1, .L_78990
	ldr	r0, .L_78994
	str	r0, [r1, #0]
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #2
	b	.L_789ec
.L_78990:
	.4byte	gUnk_3000C10
.L_78994:
	.4byte	sUnk_8411FBC
.L_78998:
	ldr	r2, .L_789b4
	ldrb	r1, [r2, #0]
	mov	r0, #6
	orr	r0, r1
	strb	r0, [r2, #0]
	ldr	r1, .L_789b8
	ldr	r0, .L_789bc
	str	r0, [r1, #0]
	ldrb	r0, [r2, #4]
	cmp	r0, #0
	beq	.L_789c0
.L_789ae:
	sub	r0, #1
	strb	r0, [r2, #4]
	b	.L_789ec
.L_789b4:
	.4byte	gCurrentSecondarySprite
.L_789b8:
	.4byte	gUnk_3000C10
.L_789bc:
	.4byte	sUnk_840F1C8
.L_789c0:
	ldrh	r0, [r2, #8]
	sub	r0, #16
	strh	r0, [r2, #8]
	lsl	r0, r0, #16
	ldr	r1, .L_789d4
	cmp	r0, r1
	bhi	.L_789ec
	mov	r0, #0
	strb	r0, [r2, #0]
	b	.L_789ec
.L_789d4:
	.4byte	0xffb70000
.L_789d8:
	.2byte	0x4a21
	ldrb	r1, [r2, #0]
	mov	r0, #253	@ 0xfd
	and	r0, r1
	mov	r1, #251	@ 0xfb
	and	r0, r1
	strb	r0, [r2, #0]
	ldr	r1, .L_78a64
	ldr	r0, .L_78a68
	str	r0, [r1, #0]
.L_789ec:
	ldr	r0, .L_78a60
	ldrb	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_78a56
	ldr	r6, .L_78a6c
	ldr	r4, .L_78a70
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r8, r1
	lsl	r5, r7, #16
	asr	r5, r5, #16
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r6, .L_78a74
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r6, .L_78a78
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r4, .L_78a7c
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r4, #0]
.L_78a56:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_78a60:
	.4byte	gCurrentSecondarySprite
.L_78a64:
	.4byte	gUnk_3000C10
.L_78a68:
	.4byte	sUnk_840F1C8
.L_78a6c:
	.4byte	gUnk_3000C14
.L_78a70:
	.4byte	sSinCosTable
.L_78a74:
	.4byte	gUnk_3000C16
.L_78a78:
	.4byte	gUnk_3000C18
.L_78a7c:
	.4byte	gUnk_3000C1A


thumb_func_start func_8078A80
func_8078A80:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, #0
	mov	r6, #0
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	ldr	r0, .L_78aac
	ldrb	r2, [r0, #0]
	mov	r1, #4
	orr	r1, r2
	strb	r1, [r0, #0]
	ldrb	r1, [r0, #3]
	add	r2, r0, #0
	cmp	r1, #6
	bls	.L_78aa2
	b	.L_78c88
.L_78aa2:
	lsl	r0, r1, #2
	ldr	r1, .L_78ab0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_78aac:
	.4byte	gCurrentSecondarySprite
.L_78ab0:
	.4byte	.L_78ab4
.L_78ab4:
	.4byte	.L_78ad0
	.4byte	.L_78afc
	.4byte	.L_78b80
	.4byte	.L_78bb8
	.4byte	.L_78c14
	.4byte	.L_78c88
	.4byte	.L_78c44
.L_78ad0:
	ldrb	r0, [r2, #4]
	add	r0, #8
	strb	r0, [r2, #4]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_78ae2
	ldrb	r0, [r2, #4]
	lsl	r5, r0, #1
	b	.L_78aea
.L_78ae2:
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #2
	mov	r0, #1
	strb	r0, [r2, #3]
.L_78aea:
	ldr	r1, .L_78af8
	ldrb	r7, [r1, #4]
	ldrb	r2, [r1, #0]
	mov	r0, #2
	orr	r0, r2
	strb	r0, [r1, #0]
	b	.L_78b6c
.L_78af8:
	.4byte	gCurrentSecondarySprite
.L_78afc:
	mov	r4, #2
	ldrb	r0, [r2, #4]
	add	r0, #16
	strb	r0, [r2, #4]
	ldrh	r3, [r2, #8]
	add	r0, r3, #0
	sub	r0, #9
	lsl	r0, r0, #16
	ldr	r1, .L_78b20
	cmp	r0, r1
	bls	.L_78b24
	mov	r0, #8
	strh	r0, [r2, #8]
	add	r0, r6, #1
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	mov	r4, #4
	b	.L_78b2a
.L_78b20:
	.4byte	0x02770000
.L_78b24:
	add	r0, r3, #0
	sub	r0, #8
	strh	r0, [r2, #8]
.L_78b2a:
	ldrh	r0, [r2, #10]
	lsr	r1, r0, #2
	cmp	r1, #80	@ 0x50
	bls	.L_78b38
	sub	r0, r0, r4
	strh	r0, [r2, #10]
	b	.L_78b4e
.L_78b38:
	cmp	r1, #79	@ 0x4f
	bhi	.L_78b42
	add	r0, r4, r0
	strh	r0, [r2, #10]
	b	.L_78b4e
.L_78b42:
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #1
	strh	r0, [r2, #10]
	add	r0, r6, #1
	lsl	r0, r0, #24
	lsr	r6, r0, #24
.L_78b4e:
	ldrb	r7, [r2, #4]
	cmp	r6, #2
	bne	.L_78b5e
	cmp	r7, #0
	bne	.L_78b5e
	strb	r6, [r2, #3]
	mov	r0, #10
	strb	r0, [r2, #4]
.L_78b5e:
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #2
	ldr	r2, .L_78b74
	ldrb	r1, [r2, #0]
	mov	r0, #2
	orr	r0, r1
	strb	r0, [r2, #0]
.L_78b6c:
	ldr	r1, .L_78b78
	ldr	r0, .L_78b7c
	str	r0, [r1, #0]
	b	.L_78cc0
.L_78b74:
	.4byte	gCurrentSecondarySprite
.L_78b78:
	.4byte	gUnk_3000C10
.L_78b7c:
	.4byte	sUnk_8411994
.L_78b80:
	mov	r7, #0
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #2
	ldr	r2, .L_78bac
	ldrb	r1, [r2, #0]
	mov	r0, #2
	orr	r0, r1
	strb	r0, [r2, #0]
	ldr	r1, .L_78bb0
	ldr	r0, .L_78bb4
	str	r0, [r1, #0]
	ldrb	r0, [r2, #4]
	sub	r0, #1
	strb	r0, [r2, #4]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_78ba4
	b	.L_78cc0
.L_78ba4:
	mov	r0, #3
	strb	r0, [r2, #3]
	b	.L_78cc0
	.align	2, 0
.L_78bac:
	.4byte	gCurrentSecondarySprite
.L_78bb0:
	.4byte	gUnk_3000C10
.L_78bb4:
	.4byte	sUnk_8411994
.L_78bb8:
	mov	r7, #0
	ldr	r1, .L_78bf0
	ldr	r0, .L_78bf4
	str	r0, [r1, #0]
	ldr	r2, .L_78bf8
	ldrb	r0, [r2, #4]
	sub	r0, #16
	strb	r0, [r2, #4]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_78bfc
	ldrb	r0, [r2, #0]
	mov	r1, #2
	orr	r0, r1
	strb	r0, [r2, #0]
	ldrh	r0, [r2, #8]
	sub	r0, #1
	strh	r0, [r2, #8]
	ldrh	r0, [r2, #10]
	sub	r0, #1
	strh	r0, [r2, #10]
	ldrb	r5, [r2, #4]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #1
	add	r0, r1, #0
	orr	r5, r0
	b	.L_78cc0
	.align	2, 0
.L_78bf0:
	.4byte	gUnk_3000C10
.L_78bf4:
	.4byte	sUnk_8411994
.L_78bf8:
	.4byte	gCurrentSecondarySprite
.L_78bfc:
	ldrb	r1, [r2, #0]
	mov	r0, #253	@ 0xfd
	and	r0, r1
	strb	r0, [r2, #0]
	mov	r0, #8
	strh	r0, [r2, #8]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #1
	strh	r0, [r2, #10]
	mov	r0, #4
	strb	r0, [r2, #3]
	b	.L_78cc0
.L_78c14:
	ldr	r2, .L_78c34
	ldrb	r1, [r2, #0]
	mov	r0, #253	@ 0xfd
	and	r0, r1
	strb	r0, [r2, #0]
	ldr	r1, .L_78c38
	ldr	r0, .L_78c3c
	str	r0, [r1, #0]
	ldr	r0, .L_78c40
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_78cc0
	mov	r0, #5
	strb	r0, [r2, #3]
	b	.L_78cc0
	.align	2, 0
.L_78c34:
	.4byte	gCurrentSecondarySprite
.L_78c38:
	.4byte	gUnk_3000C10
.L_78c3c:
	.4byte	sUnk_84118EC
.L_78c40:
	.4byte	gWarioPauseTimer
.L_78c44:
	ldr	r4, .L_78c68
	ldrb	r1, [r4, #0]
	mov	r0, #253	@ 0xfd
	and	r0, r1
	strb	r0, [r4, #0]
	ldrb	r0, [r4, #1]
	sub	r0, #1
	strb	r0, [r4, #1]
	ldr	r0, .L_78c6c
	bl	func_8076A0C
	ldrb	r0, [r4, #4]
	cmp	r0, #0
	beq	.L_78c70
	sub	r0, #1
	strb	r0, [r4, #4]
	b	.L_78cc0
	.align	2, 0
.L_78c68:
	.4byte	gCurrentSecondarySprite
.L_78c6c:
	.4byte	sUnk_8411A4C
.L_78c70:
	ldrh	r0, [r4, #8]
	sub	r0, #16
	strh	r0, [r4, #8]
	lsl	r0, r0, #16
	ldr	r1, .L_78c84
	cmp	r0, r1
	bhi	.L_78cc0
	mov	r0, #0
	strb	r0, [r4, #0]
	b	.L_78cc0
.L_78c84:
	.4byte	0xffb70000
.L_78c88:
	.2byte	0x4a2b
	ldrb	r1, [r2, #0]
	mov	r0, #253	@ 0xfd
	and	r0, r1
	strb	r0, [r2, #0]
	ldr	r0, .L_78d3c
	ldrb	r0, [r0, #0]
	cmp	r0, #11
	bne	.L_78ca2
	mov	r0, #6
	strb	r0, [r2, #3]
	mov	r0, #30
	strb	r0, [r2, #4]
.L_78ca2:
	ldr	r0, .L_78d40
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_78cb4
	ldr	r0, .L_78d44
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #2
	beq	.L_78cba
.L_78cb4:
	ldrb	r0, [r2, #1]
	sub	r0, #1
	strb	r0, [r2, #1]
.L_78cba:
	ldr	r0, .L_78d48
	bl	func_8076A0C
.L_78cc0:
	ldr	r0, .L_78d38
	ldrb	r1, [r0, #0]
	mov	r0, #2
	orr	r0, r1
	cmp	r0, #0
	beq	.L_78d2e
	ldr	r6, .L_78d4c
	ldr	r4, .L_78d50
	add	r0, r7, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r4
	mov	r1, #0
	ldrsh	r2, [r0, r1]
	mov	r8, r2
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r6, .L_78d54
	lsl	r0, r7, #1
	add	r0, r0, r4
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r6, .L_78d58
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r4, .L_78d5c
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r4, #0]
.L_78d2e:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_78d38:
	.4byte	gCurrentSecondarySprite
.L_78d3c:
	.4byte	gTimerState
.L_78d40:
	.4byte	gWarioPauseTimer
.L_78d44:
	.4byte	gSubGameMode
.L_78d48:
	.4byte	sUnk_8411A4C
.L_78d4c:
	.4byte	gUnk_3000C14
.L_78d50:
	.4byte	sSinCosTable
.L_78d54:
	.4byte	gUnk_3000C16
.L_78d58:
	.4byte	gUnk_3000C18
.L_78d5c:
	.4byte	gUnk_3000C1A


thumb_func_start func_8078D60
func_8078D60:
	push	{lr}
	ldr	r0, .L_78d88
	ldr	r1, .L_78d8c
	ldrb	r2, [r0, #0]
	ldrb	r0, [r1, #0]
	and	r0, r2
	ldr	r1, .L_78d90
	ldrb	r1, [r1, #0]
	and	r0, r1
	ldr	r1, .L_78d94
	ldrb	r1, [r1, #0]
	and	r0, r1
	cmp	r0, #0
	beq	.L_78d84
	mov	r0, #171	@ 0xab
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_78d84:
	pop	{r0}
	bx	r0
.L_78d88:
	.4byte	gCollectedNEJewelPiece
.L_78d8c:
	.4byte	gCollectedSEJewelPiece
.L_78d90:
	.4byte	gCollectedSWJewelPiece
.L_78d94:
	.4byte	gCollectedNWJewelPiece


thumb_func_start func_8078D98
func_8078D98:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r6, .L_78e18
	ldr	r4, .L_78e1c
	add	r0, r4, #0
	add	r0, #128	@ 0x80
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r8, r1
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #2
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r6, .L_78e20
	mov	r0, #0
	ldrsh	r4, [r4, r0]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r6, .L_78e24
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r4, .L_78e28
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r4, #0]
	ldr	r1, .L_78e2c
	ldrb	r0, [r1, #4]
	add	r0, #1
	strb	r0, [r1, #4]
	ldrb	r2, [r1, #0]
	mov	r0, #2
	orr	r0, r2
	strb	r0, [r1, #0]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_78e18:
	.4byte	gUnk_3000C14
.L_78e1c:
	.4byte	sSinCosTable
.L_78e20:
	.4byte	gUnk_3000C16
.L_78e24:
	.4byte	gUnk_3000C18
.L_78e28:
	.4byte	gUnk_3000C1A
.L_78e2c:
	.4byte	gCurrentSecondarySprite


thumb_func_start func_8078E30
func_8078E30:
	push	{r4, r5, r6, lr}
	ldr	r1, .L_78e58
	ldrb	r2, [r1, #0]
	mov	r0, #4
	orr	r0, r2
	strb	r0, [r1, #0]
	ldr	r2, .L_78e5c
	ldr	r0, .L_78e60
	str	r0, [r2, #0]
	ldrb	r0, [r1, #3]
	add	r2, r1, #0
	cmp	r0, #6
	bls	.L_78e4c
	b	.L_79064
.L_78e4c:
	lsl	r0, r0, #2
	ldr	r1, .L_78e64
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_78e58:
	.4byte	gCurrentSecondarySprite
.L_78e5c:
	.4byte	gUnk_3000C10
.L_78e60:
	.4byte	sUnk_8414A54
.L_78e64:
	.4byte	.L_78e68
.L_78e68:
	.4byte	.L_78e84
	.4byte	.L_78f14
	.4byte	.L_78f38
	.4byte	.L_78f5c
	.4byte	.L_78f80
	.4byte	.L_78fcc
	.4byte	.L_78fe6
.L_78e84:
	ldr	r3, .L_78e9c
	ldrb	r0, [r3, #0]
	add	r1, r0, #0
	cmp	r1, #1
	bne	.L_78ea0
	add	r0, #1
	strb	r0, [r3, #0]
	mov	r0, #0
	strb	r1, [r2, #3]
	strb	r0, [r2, #4]
	b	.L_79064
	.align	2, 0
.L_78e9c:
	.4byte	gCollectedNEJewelPiece
.L_78ea0:
	ldr	r3, .L_78eb4
	ldrb	r0, [r3, #0]
	add	r6, r0, #0
	cmp	r6, #1
	bne	.L_78eb8
	add	r0, #1
	strb	r0, [r3, #0]
	mov	r1, #0
	mov	r0, #2
	b	.L_78f08
.L_78eb4:
	.4byte	gCollectedSEJewelPiece
.L_78eb8:
	ldr	r3, .L_78ecc
	ldrb	r0, [r3, #0]
	add	r5, r0, #0
	cmp	r5, #1
	bne	.L_78ed0
	add	r0, #1
	strb	r0, [r3, #0]
	mov	r1, #0
	mov	r0, #3
	b	.L_78f08
.L_78ecc:
	.4byte	gCollectedSWJewelPiece
.L_78ed0:
	ldr	r3, .L_78ee4
	ldrb	r0, [r3, #0]
	add	r4, r0, #0
	cmp	r4, #1
	bne	.L_78ee8
	add	r0, #1
	strb	r0, [r3, #0]
	mov	r1, #0
	mov	r0, #4
	b	.L_78f08
.L_78ee4:
	.4byte	gCollectedNWJewelPiece
.L_78ee8:
	ldr	r0, .L_78f10
	ldrb	r0, [r0, #0]
	cmp	r0, #7
	bhi	.L_78ef2
	b	.L_79064
.L_78ef2:
	cmp	r1, #2
	beq	.L_78f04
	cmp	r6, #2
	beq	.L_78f04
	cmp	r5, #2
	beq	.L_78f04
	cmp	r4, #2
	beq	.L_78f04
	b	.L_79064
.L_78f04:
	mov	r1, #0
	mov	r0, #6
.L_78f08:
	strb	r0, [r2, #3]
	strb	r1, [r2, #4]
	b	.L_79064
	.align	2, 0
.L_78f10:
	.4byte	gTimerState
.L_78f14:
	ldrb	r0, [r2, #4]
	cmp	r0, #59	@ 0x3b
	bhi	.L_78f86
	cmp	r0, #20
	bne	.L_78fb6
	bl	func_8078D60
	ldr	r1, .L_78f2c
	ldr	r0, .L_78f30
	str	r0, [r1, #0]
	ldr	r0, .L_78f34
	b	.L_78fae
.L_78f2c:
	.4byte	0x040000d4
.L_78f30:
	.4byte	sJewelPieceIconPartialNEGfx
.L_78f34:
	.4byte	0x06011c20
.L_78f38:
	ldrb	r0, [r2, #4]
	cmp	r0, #59	@ 0x3b
	bhi	.L_78f86
	cmp	r0, #20
	bne	.L_78fb6
	bl	func_8078D60
	ldr	r1, .L_78f50
	ldr	r0, .L_78f54
	str	r0, [r1, #0]
	ldr	r0, .L_78f58
	b	.L_78fae
.L_78f50:
	.4byte	0x040000d4
.L_78f54:
	.4byte	sJewelPieceIconPartialSEGfx
.L_78f58:
	.4byte	0x06012020
.L_78f5c:
	ldrb	r0, [r2, #4]
	cmp	r0, #59	@ 0x3b
	bhi	.L_78f86
	cmp	r0, #20
	bne	.L_78fb6
	bl	func_8078D60
	ldr	r1, .L_78f74
	ldr	r0, .L_78f78
	str	r0, [r1, #0]
	ldr	r0, .L_78f7c
	b	.L_78fae
.L_78f74:
	.4byte	0x040000d4
.L_78f78:
	.4byte	sJewelPieceIconPartialSWGfx
.L_78f7c:
	.4byte	0x06012000
.L_78f80:
	ldrb	r0, [r2, #4]
	cmp	r0, #59	@ 0x3b
	bls	.L_78f9e
.L_78f86:
	mov	r0, #20
	strb	r0, [r2, #4]
	mov	r0, #5
	strb	r0, [r2, #3]
	ldrb	r1, [r2, #0]
	mov	r0, #253	@ 0xfd
	and	r0, r1
	strb	r0, [r2, #0]
	ldrh	r0, [r2, #10]
	add	r0, #32
	strh	r0, [r2, #10]
	b	.L_79064
.L_78f9e:
	cmp	r0, #20
	bne	.L_78fb6
	bl	func_8078D60
	ldr	r1, .L_78fbc
	ldr	r0, .L_78fc0
	str	r0, [r1, #0]
	ldr	r0, .L_78fc4
.L_78fae:
	str	r0, [r1, #4]
	ldr	r0, .L_78fc8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_78fb6:
	bl	func_8078D98
	b	.L_79064
.L_78fbc:
	.4byte	0x040000d4
.L_78fc0:
	.4byte	sJewelPieceIconPartialNWGfx
.L_78fc4:
	.4byte	0x06011c00
.L_78fc8:
	.4byte	0x80000010
.L_78fcc:
	ldrh	r0, [r2, #8]
	sub	r0, #4
	strh	r0, [r2, #8]
	ldrb	r0, [r2, #4]
	sub	r0, #1
	strb	r0, [r2, #4]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #255	@ 0xff
	bne	.L_79064
	mov	r0, #0
	strb	r0, [r2, #0]
	b	.L_79064
.L_78fe6:
	ldrb	r0, [r2, #4]
	cmp	r0, #119	@ 0x77
	bls	.L_78ffa
	mov	r0, #7
	strb	r0, [r2, #3]
	ldrb	r1, [r2, #0]
	mov	r0, #253	@ 0xfd
	and	r0, r1
	strb	r0, [r2, #0]
	b	.L_79064
.L_78ffa:
	cmp	r0, #20
	bne	.L_79014
	ldr	r1, .L_79008
	ldr	r0, .L_7900c
	str	r0, [r1, #0]
	ldr	r0, .L_79010
	b	.L_79058
.L_79008:
	.4byte	0x040000d4
.L_7900c:
	.4byte	sJewelPieceIconPartialNEGfx
.L_79010:
	.4byte	0x06011c20
.L_79014:
	cmp	r0, #40	@ 0x28
	bne	.L_79030
	ldr	r1, .L_79024
	ldr	r0, .L_79028
	str	r0, [r1, #0]
	ldr	r0, .L_7902c
	b	.L_79058
	.align	2, 0
.L_79024:
	.4byte	0x040000d4
.L_79028:
	.4byte	sJewelPieceIconPartialSEGfx
.L_7902c:
	.4byte	0x06012020
.L_79030:
	cmp	r0, #60	@ 0x3c
	bne	.L_7904c
	ldr	r1, .L_79040
	ldr	r0, .L_79044
	str	r0, [r1, #0]
	ldr	r0, .L_79048
	b	.L_79058
	.align	2, 0
.L_79040:
	.4byte	0x040000d4
.L_79044:
	.4byte	sJewelPieceIconPartialSWGfx
.L_79048:
	.4byte	0x06012000
.L_7904c:
	cmp	r0, #80	@ 0x50
	bne	.L_79060
	ldr	r1, .L_7906c
	ldr	r0, .L_79070
	str	r0, [r1, #0]
	ldr	r0, .L_79074
.L_79058:
	str	r0, [r1, #4]
	ldr	r0, .L_79078
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_79060:
	bl	func_8078D98
.L_79064:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7906c:
	.4byte	0x040000d4
.L_79070:
	.4byte	sJewelPieceIconPartialNWGfx
.L_79074:
	.4byte	0x06011c00
.L_79078:
	.4byte	0x80000010


thumb_func_start func_807907C
func_807907C:
	push	{r4, lr}
	ldr	r3, .L_790a0
	ldrb	r1, [r3, #0]
	mov	r0, #4
	add	r2, r0, #0
	orr	r2, r1
	strb	r2, [r3, #0]
	ldr	r1, .L_790a4
	ldr	r0, .L_790a8
	str	r0, [r1, #0]
	ldrb	r1, [r3, #3]
	cmp	r1, #1
	beq	.L_790e4
	cmp	r1, #1
	bgt	.L_790ac
	cmp	r1, #0
	beq	.L_790b6
	b	.L_79154
.L_790a0:
	.4byte	gCurrentSecondarySprite
.L_790a4:
	.4byte	gUnk_3000C10
.L_790a8:
	.4byte	sUnk_8414A4C
.L_790ac:
	cmp	r1, #2
	beq	.L_79100
	cmp	r1, #3
	beq	.L_7913c
	b	.L_79154
.L_790b6:
	ldr	r4, .L_790c8
	ldrb	r0, [r4, #0]
	add	r2, r0, #0
	cmp	r2, #1
	bne	.L_790cc
	add	r0, #1
	strb	r0, [r4, #0]
	b	.L_790d8
	.align	2, 0
.L_790c8:
	.4byte	gCollectedCD
.L_790cc:
	cmp	r2, #2
	bne	.L_79154
	ldr	r0, .L_790e0
	ldrb	r0, [r0, #0]
	cmp	r0, #8
	bls	.L_79154
.L_790d8:
	strb	r2, [r3, #3]
	strb	r1, [r3, #4]
	b	.L_79154
	.align	2, 0
.L_790e0:
	.4byte	gTimerState
.L_790e4:
	ldrb	r0, [r3, #4]
	cmp	r0, #59	@ 0x3b
	bls	.L_79112
	mov	r0, #20
	strb	r0, [r3, #4]
	mov	r0, #3
	strb	r0, [r3, #3]
	mov	r0, #253	@ 0xfd
	and	r2, r0
	strb	r2, [r3, #0]
	ldrh	r0, [r3, #10]
	add	r0, #16
	strh	r0, [r3, #10]
	b	.L_79154
.L_79100:
	ldrb	r0, [r3, #4]
	cmp	r0, #59	@ 0x3b
	bls	.L_79112
	mov	r0, #3
	strb	r0, [r3, #3]
	mov	r0, #253	@ 0xfd
	and	r2, r0
	strb	r2, [r3, #0]
	b	.L_79154
.L_79112:
	cmp	r0, #20
	bne	.L_79126
	ldr	r1, .L_7912c
	ldr	r0, .L_79130
	str	r0, [r1, #0]
	ldr	r0, .L_79134
	str	r0, [r1, #4]
	ldr	r0, .L_79138
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_79126:
	bl	func_8078D98
	b	.L_79154
.L_7912c:
	.4byte	0x040000d4
.L_79130:
	.4byte	sCDIconPartialGfx
.L_79134:
	.4byte	0x060114c0
.L_79138:
	.4byte	0x80000010
.L_7913c:
	ldrh	r0, [r3, #8]
	sub	r0, #4
	strh	r0, [r3, #8]
	ldrb	r0, [r3, #4]
	sub	r0, #1
	strb	r0, [r3, #4]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #255	@ 0xff
	bne	.L_79154
	mov	r0, #0
	strb	r0, [r3, #0]
.L_79154:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_807915C
func_807915C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #2
	mov	r0, #0
	mov	r9, r0
	ldr	r2, .L_7918c
	ldrb	r1, [r2, #0]
	mov	r0, #6
	orr	r1, r0
	strb	r1, [r2, #0]
	ldrb	r0, [r2, #3]
	add	r3, r2, #0
	cmp	r0, #10
	bls	.L_79180
	b	.L_794c8
.L_79180:
	lsl	r0, r0, #2
	ldr	r1, .L_79190
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_7918c:
	.4byte	gCurrentSecondarySprite
.L_79190:
	.4byte	.L_79194
.L_79194:
	.4byte	.L_791c0
	.4byte	.L_792c4
	.4byte	.L_79330
	.4byte	.L_7934c
	.4byte	.L_79368
	.4byte	.L_79384
	.4byte	.L_793a0
	.4byte	.L_793bc
	.4byte	.L_7941c
	.4byte	.L_7944c
	.4byte	.L_7948c
.L_791c0:
	ldrb	r0, [r3, #1]
	add	r0, #16
	strb	r0, [r3, #1]
	ldrb	r1, [r3, #1]
	mov	r9, r1
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #1
	ldr	r1, .L_79204
	ldr	r0, .L_79208
	str	r0, [r1, #0]
	ldrb	r6, [r3, #4]
	mov	r0, #1
	and	r0, r6
	mov	r8, r1
	cmp	r0, #0
	bne	.L_7922e
	ldr	r0, .L_7920c
	ldrh	r2, [r3, #8]
	ldrh	r4, [r0, #0]
	sub	r1, r2, r4
	add	r5, r7, #0
	add	r1, r1, r5
	lsl	r1, r1, #16
	mov	r0, #252	@ 0xfc
	lsl	r0, r0, #18
	and	r0, r1
	lsr	r1, r0, #16
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #2
	cmp	r1, r0
	bls	.L_79210
	add	r0, r2, #0
	sub	r0, #8
	b	.L_7922c
.L_79204:
	.4byte	gUnk_3000C10
.L_79208:
	.4byte	sUnk_8411FE2
.L_7920c:
	.4byte	gBg1YPosition
.L_79210:
	ldr	r0, .L_7921c
	cmp	r1, r0
	bhi	.L_79220
	add	r0, r2, #0
	add	r0, #8
	b	.L_7922c
.L_7921c:
	.4byte	0x0000027f
.L_79220:
	mov	r0, #1
	orr	r0, r6
	strb	r0, [r3, #4]
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #1
	add	r0, r4, r1
.L_7922c:
	strh	r0, [r3, #8]
.L_7922e:
	add	r4, r3, #0
	ldrb	r5, [r4, #4]
	mov	r0, #2
	and	r0, r5
	cmp	r0, #0
	bne	.L_7928a
	ldr	r0, .L_79264
	ldrh	r2, [r4, #10]
	ldrh	r6, [r0, #0]
	sub	r1, r2, r6
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #16
	mov	r0, #254	@ 0xfe
	lsl	r0, r0, #19
	and	r0, r1
	lsr	r1, r0, #16
	mov	r0, #184	@ 0xb8
	lsl	r0, r0, #2
	cmp	r1, r0
	bls	.L_79268
	add	r0, r2, #0
	sub	r0, #16
	strh	r0, [r4, #10]
	b	.L_7928a
	.align	2, 0
.L_79264:
	.4byte	gBg1XPosition
.L_79268:
	ldr	r0, .L_79278
	cmp	r1, r0
	bhi	.L_7927c
	add	r0, r2, #0
	add	r0, #16
	strh	r0, [r4, #10]
	b	.L_7928a
	.align	2, 0
.L_79278:
	.4byte	0x000002df
.L_7927c:
	mov	r0, #2
	orr	r0, r5
	strb	r0, [r3, #4]
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #1
	add	r0, r6, r1
	strh	r0, [r3, #10]
.L_7928a:
	ldr	r1, .L_792b8
	ldrb	r0, [r1, #4]
	cmp	r0, #3
	beq	.L_79294
	b	.L_794d4
.L_79294:
	mov	r2, r9
	cmp	r2, #0
	beq	.L_7929c
	b	.L_794d4
.L_7929c:
	ldrb	r0, [r1, #3]
	add	r0, #1
	strb	r0, [r1, #3]
	ldr	r1, .L_792bc
	mov	r0, #6
	strb	r0, [r1, #0]
	ldr	r0, .L_792c0
	mov	r5, r8
	str	r0, [r5, #0]
	mov	r0, #11
	bl	VoiceSetPlay
	b	.L_794d4
	.align	2, 0
.L_792b8:
	.4byte	gCurrentSecondarySprite
.L_792bc:
	.4byte	gTimerState
.L_792c0:
	.4byte	sUnk_8411FEA
.L_792c4:
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #1
	ldr	r0, .L_792f8
	ldrb	r0, [r0, #0]
	cmp	r0, #7
	bne	.L_79320
	ldr	r0, .L_792fc
	ldr	r1, .L_79300
	str	r1, [r0, #0]
	ldr	r1, .L_79304
	str	r1, [r0, #4]
	ldr	r2, .L_79308
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_7930c
	str	r1, [r0, #0]
	ldr	r1, .L_79310
	str	r1, [r0, #4]
	str	r2, [r0, #8]
	ldr	r0, [r0, #8]
	add	r7, #32
	ldr	r1, .L_79314
	ldr	r0, .L_79318
	str	r0, [r1, #0]
	ldr	r1, .L_7931c
	b	.L_79438
.L_792f8:
	.4byte	gTimerState
.L_792fc:
	.4byte	0x040000d4
.L_79300:
	.4byte	sTimeUpGfx + 0x800
.L_79304:
	.4byte	0x06010b00
.L_79308:
	.4byte	0x80000080
.L_7930c:
	.4byte	sTimeUpGfx + 0x900
.L_79310:
	.4byte	0x06010f00
.L_79314:
	.4byte	gUnk_3000C10
.L_79318:
	.4byte	sUnk_8411FF8
.L_7931c:
	.4byte	gCurrentSecondarySprite
.L_79320:
	ldr	r1, .L_79328
	ldr	r0, .L_7932c
	b	.L_794d2
	.align	2, 0
.L_79328:
	.4byte	gUnk_3000C10
.L_7932c:
	.4byte	sUnk_8411FEA
.L_79330:
	mov	r7, #160	@ 0xa0
	lsl	r7, r7, #1
	ldr	r1, .L_79340
	ldr	r0, .L_79344
	str	r0, [r1, #0]
	ldr	r1, .L_79348
	b	.L_79438
	.align	2, 0
.L_79340:
	.4byte	gUnk_3000C10
.L_79344:
	.4byte	sUnk_8412006
.L_79348:
	.4byte	gCurrentSecondarySprite
.L_7934c:
	mov	r7, #176	@ 0xb0
	lsl	r7, r7, #1
	ldr	r1, .L_7935c
	ldr	r0, .L_79360
	str	r0, [r1, #0]
	ldr	r1, .L_79364
	b	.L_79438
	.align	2, 0
.L_7935c:
	.4byte	gUnk_3000C10
.L_79360:
	.4byte	sUnk_8412014
.L_79364:
	.4byte	gCurrentSecondarySprite
.L_79368:
	mov	r7, #192	@ 0xc0
	lsl	r7, r7, #1
	ldr	r1, .L_79378
	ldr	r0, .L_7937c
	str	r0, [r1, #0]
	ldr	r1, .L_79380
	b	.L_79438
	.align	2, 0
.L_79378:
	.4byte	gUnk_3000C10
.L_7937c:
	.4byte	sUnk_8412022
.L_79380:
	.4byte	gCurrentSecondarySprite
.L_79384:
	mov	r7, #208	@ 0xd0
	lsl	r7, r7, #1
	ldr	r1, .L_79394
	ldr	r0, .L_79398
	str	r0, [r1, #0]
	ldr	r1, .L_7939c
	b	.L_79438
	.align	2, 0
.L_79394:
	.4byte	gUnk_3000C10
.L_79398:
	.4byte	sUnk_8412030
.L_7939c:
	.4byte	gCurrentSecondarySprite
.L_793a0:
	mov	r7, #224	@ 0xe0
	lsl	r7, r7, #1
	ldr	r1, .L_793b0
	ldr	r0, .L_793b4
	str	r0, [r1, #0]
	ldr	r1, .L_793b8
	b	.L_79438
	.align	2, 0
.L_793b0:
	.4byte	gUnk_3000C10
.L_793b4:
	.4byte	sUnk_841203E
.L_793b8:
	.4byte	gCurrentSecondarySprite
.L_793bc:
	mov	r7, #240	@ 0xf0
	lsl	r7, r7, #1
	ldr	r1, .L_793f8
	ldr	r0, .L_793fc
	str	r0, [r1, #0]
	ldr	r0, .L_79400
	ldr	r1, .L_79404
	str	r1, [r0, #0]
	ldr	r1, .L_79408
	str	r1, [r0, #4]
	ldr	r2, .L_7940c
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_79410
	str	r1, [r0, #0]
	ldr	r1, .L_79414
	str	r1, [r0, #4]
	str	r2, [r0, #8]
	ldr	r0, [r0, #8]
	ldr	r1, .L_79418
	mov	r0, #30
	strb	r0, [r1, #4]
	ldrb	r0, [r1, #3]
	add	r0, #1
	strb	r0, [r1, #3]
	mov	r0, #227	@ 0xe3
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_794d4
.L_793f8:
	.4byte	gUnk_3000C10
.L_793fc:
	.4byte	sUnk_841204C
.L_79400:
	.4byte	0x040000d4
.L_79404:
	.4byte	sTimeUpGfx + 0xA00
.L_79408:
	.4byte	0x06010b00
.L_7940c:
	.4byte	0x80000080
.L_79410:
	.4byte	sTimeUpGfx + 0xB00
.L_79414:
	.4byte	0x06010f00
.L_79418:
	.4byte	gCurrentSecondarySprite
.L_7941c:
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #2
	ldr	r1, .L_79440
	ldr	r0, .L_79444
	str	r0, [r1, #0]
	ldr	r1, .L_79448
	ldrb	r0, [r1, #4]
	sub	r0, #1
	strb	r0, [r1, #4]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_794d4
	strb	r0, [r1, #4]
.L_79438:
	ldrb	r0, [r1, #3]
	add	r0, #1
	strb	r0, [r1, #3]
	b	.L_794d4
.L_79440:
	.4byte	gUnk_3000C10
.L_79444:
	.4byte	sUnk_841205A
.L_79448:
	.4byte	gCurrentSecondarySprite
.L_7944c:
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #2
	ldr	r1, .L_79478
	ldr	r0, .L_7947c
	str	r0, [r1, #0]
	ldr	r2, .L_79480
	ldrb	r3, [r2, #4]
	ldr	r1, .L_79484
	lsl	r0, r3, #1
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	mov	r5, #0
	ldrsh	r1, [r0, r5]
	ldr	r0, .L_79488
	cmp	r1, r0
	beq	.L_794ac
	add	r0, r3, #1
	strb	r0, [r2, #4]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
	b	.L_794d4
.L_79478:
	.4byte	gUnk_3000C10
.L_7947c:
	.4byte	sUnk_841205A
.L_79480:
	.4byte	gCurrentSecondarySprite
.L_79484:
	.4byte	sUnk_8416A46
.L_79488:
	.4byte	0x00007fff
.L_7948c:
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #2
	ldr	r1, .L_794b4
	ldr	r0, .L_794b8
	str	r0, [r1, #0]
	ldr	r2, .L_794bc
	ldrh	r0, [r2, #8]
	add	r0, #6
	strh	r0, [r2, #8]
	ldr	r1, .L_794c0
	ldrh	r1, [r1, #0]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	ldr	r1, .L_794c4
	cmp	r0, r1
	bls	.L_794d4
.L_794ac:
	ldrb	r0, [r2, #3]
	add	r0, #1
	strb	r0, [r2, #3]
	b	.L_794d4
.L_794b4:
	.4byte	gUnk_3000C10
.L_794b8:
	.4byte	sUnk_841205A
.L_794bc:
	.4byte	gCurrentSecondarySprite
.L_794c0:
	.4byte	gBg1YPosition
.L_794c4:
	.4byte	0x037F0000
.L_794c8:
	mov	r0, #253	@ 0xfd
	and	r1, r0
	strb	r1, [r2, #0]
	ldr	r1, .L_79554
	ldr	r0, .L_79558
.L_794d2:
	str	r0, [r1, #0]
.L_794d4:
	ldr	r0, .L_7955c
	ldrb	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_79546
	ldr	r6, .L_79560
	ldr	r4, .L_79564
	mov	r0, r9
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r4
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r8, r1
	add	r5, r7, #0
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r6, .L_79568
	mov	r1, r9
	lsl	r0, r1, #1
	add	r0, r0, r4
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r6, .L_7956c
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r4, .L_79570
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r4, #0]
.L_79546:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_79554:
	.4byte	gUnk_3000C10
.L_79558:
	.4byte	sUnk_841205A
.L_7955c:
	.4byte	gCurrentSecondarySprite
.L_79560:
	.4byte	gUnk_3000C14
.L_79564:
	.4byte	sSinCosTable
.L_79568:
	.4byte	gUnk_3000C16
.L_7956c:
	.4byte	gUnk_3000C18
.L_79570:
	.4byte	gUnk_3000C1A


thumb_func_start func_8079574
func_8079574:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	mov	sl, r0
	mov	r1, #0
	mov	r9, r1
	ldr	r2, .L_795a8
	ldrb	r1, [r2, #0]
	mov	r0, #6
	mov	r7, #0
	orr	r0, r1
	strb	r0, [r2, #0]
	ldrb	r3, [r2, #3]
	add	r5, r2, #0
	cmp	r3, #1
	bne	.L_7959e
	b	.L_796b0
.L_7959e:
	cmp	r3, #1
	bgt	.L_795ac
	cmp	r3, #0
	beq	.L_795ba
	b	.L_79794
.L_795a8:
	.4byte	gCurrentSecondarySprite
.L_795ac:
	cmp	r3, #2
	bne	.L_795b2
	b	.L_796dc
.L_795b2:
	cmp	r3, #3
	bne	.L_795b8
	b	.L_7971c
.L_795b8:
	b	.L_79794
.L_795ba:
	ldrb	r0, [r2, #1]
	add	r0, #16
	strb	r0, [r2, #1]
	ldrb	r0, [r2, #1]
	mov	r9, r0
	ldr	r1, .L_795f8
	ldr	r0, .L_795fc
	str	r0, [r1, #0]
	ldrb	r6, [r2, #4]
	mov	r0, #1
	and	r0, r6
	mov	r8, r1
	cmp	r0, #0
	bne	.L_79622
	ldr	r0, .L_79600
	ldrh	r3, [r2, #8]
	ldrh	r4, [r0, #0]
	sub	r1, r3, r4
	add	r1, sl
	lsl	r1, r1, #16
	mov	r0, #252	@ 0xfc
	lsl	r0, r0, #18
	and	r0, r1
	lsr	r1, r0, #16
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #2
	cmp	r1, r0
	bls	.L_79604
	add	r0, r3, #0
	sub	r0, #8
	b	.L_79620
.L_795f8:
	.4byte	gUnk_3000C10
.L_795fc:
	.4byte	sUnk_8411FE2
.L_79600:
	.4byte	gBg1YPosition
.L_79604:
	ldr	r0, .L_79610
	cmp	r1, r0
	bhi	.L_79614
	add	r0, r3, #0
	add	r0, #8
	b	.L_79620
.L_79610:
	.4byte	0x0000027f
.L_79614:
	mov	r0, #1
	orr	r0, r6
	strb	r0, [r2, #4]
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #1
	add	r0, r4, r1
.L_79620:
	strh	r0, [r2, #8]
.L_79622:
	add	r3, r5, #0
	ldrb	r6, [r3, #4]
	mov	r0, #2
	and	r0, r6
	cmp	r0, #0
	bne	.L_7967e
	ldr	r0, .L_79658
	ldrh	r2, [r3, #10]
	ldrh	r4, [r0, #0]
	sub	r1, r2, r4
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #16
	mov	r0, #254	@ 0xfe
	lsl	r0, r0, #19
	and	r0, r1
	lsr	r1, r0, #16
	mov	r0, #184	@ 0xb8
	lsl	r0, r0, #2
	cmp	r1, r0
	bls	.L_7965c
	add	r0, r2, #0
	sub	r0, #16
	strh	r0, [r3, #10]
	b	.L_7967e
	.align	2, 0
.L_79658:
	.4byte	gBg1XPosition
.L_7965c:
	ldr	r0, .L_7966c
	cmp	r1, r0
	bhi	.L_79670
	add	r0, r2, #0
	add	r0, #16
	strh	r0, [r3, #10]
	b	.L_7967e
	.align	2, 0
.L_7966c:
	.4byte	0x000002df
.L_79670:
	mov	r0, #2
	orr	r0, r6
	strb	r0, [r5, #4]
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #1
	add	r0, r4, r1
	strh	r0, [r5, #10]
.L_7967e:
	ldr	r1, .L_796a8
	ldrb	r0, [r1, #4]
	cmp	r0, #3
	beq	.L_79688
	b	.L_7979a
.L_79688:
	mov	r2, r9
	cmp	r2, #0
	beq	.L_79690
	b	.L_7979a
.L_79690:
	ldrb	r0, [r1, #3]
	add	r0, #1
	strb	r0, [r1, #3]
	ldr	r0, .L_796ac
	mov	r5, r8
	str	r0, [r5, #0]
	mov	r0, #30
	strb	r0, [r1, #4]
	mov	r0, #23
	bl	m4aSongNumStart
	b	.L_7979a
.L_796a8:
	.4byte	gCurrentSecondarySprite
.L_796ac:
	.4byte	sUnk_8411FEA
.L_796b0:
	ldr	r1, .L_796d4
	ldr	r0, .L_796d8
	str	r0, [r1, #0]
	ldrb	r0, [r2, #4]
	sub	r0, #1
	strb	r0, [r2, #4]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_7979a
	mov	r0, r9
	strb	r0, [r2, #4]
	ldrb	r0, [r2, #3]
	add	r0, #1
	strb	r0, [r2, #3]
	mov	r0, #11
	bl	VoiceSetPlay
	b	.L_7979a
.L_796d4:
	.4byte	gUnk_3000C10
.L_796d8:
	.4byte	sUnk_8411FEA
.L_796dc:
	ldr	r1, .L_79700
	ldr	r0, .L_79704
	str	r0, [r1, #0]
	ldrb	r3, [r2, #4]
	ldr	r1, .L_79708
	lsl	r0, r3, #1
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	mov	r5, #0
	ldrsh	r1, [r0, r5]
	ldr	r0, .L_7970c
	cmp	r1, r0
	bne	.L_79710
	ldrb	r0, [r2, #3]
	add	r0, #1
	strb	r0, [r2, #3]
	b	.L_7979a
	.align	2, 0
.L_79700:
	.4byte	gUnk_3000C10
.L_79704:
	.4byte	sUnk_8411FEA
.L_79708:
	.4byte	sUnk_8416A88
.L_7970c:
	.4byte	0x00007fff
.L_79710:
	add	r0, r3, #1
	strb	r0, [r2, #4]
	ldrh	r0, [r2, #8]
	add	r0, r0, r4
	strh	r0, [r2, #8]
	b	.L_7979a
.L_7971c:
	ldr	r1, .L_79758
	ldr	r0, .L_7975c
	str	r0, [r1, #0]
	ldrh	r0, [r2, #8]
	add	r0, #16
	mov	r4, #0
	strh	r0, [r2, #8]
	ldr	r1, .L_79760
	ldrh	r1, [r1, #0]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	ldr	r1, .L_79764
	cmp	r0, r1
	bls	.L_7979a
	ldrb	r0, [r2, #3]
	add	r0, #1
	strb	r0, [r2, #3]
	ldr	r0, .L_79768
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bne	.L_79778
	ldr	r1, .L_7976c
	mov	r0, #6
	strh	r0, [r1, #0]
	ldr	r0, .L_79770
	strb	r4, [r0, #0]
	ldr	r0, .L_79774
	strb	r3, [r0, #0]
	b	.L_7979a
	.align	2, 0
.L_79758:
	.4byte	gUnk_3000C10
.L_7975c:
	.4byte	sUnk_8411FEA
.L_79760:
	.4byte	gBg1YPosition
.L_79764:
	.4byte	0x037F0000
.L_79768:
	.4byte	gCurrentStageNumber
.L_7976c:
	.4byte	gSubGameMode
.L_79770:
	.4byte	gSpriteAiDropTimer
.L_79774:
	.4byte	gStageExitType
.L_79778:
	ldr	r1, .L_79788
	mov	r0, #6
	strh	r0, [r1, #0]
	ldr	r0, .L_7978c
	strb	r4, [r0, #0]
	ldr	r0, .L_79790
	strb	r4, [r0, #0]
	b	.L_7979a
.L_79788:
	.4byte	gSubGameMode
.L_7978c:
	.4byte	gSpriteAiDropTimer
.L_79790:
	.4byte	gStageExitType
.L_79794:
	ldr	r1, .L_7981c
	ldr	r0, .L_79820
	str	r0, [r1, #0]
.L_7979a:
	ldr	r0, .L_79824
	ldrb	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_7980c
	ldr	r6, .L_79828
	ldr	r4, .L_7982c
	mov	r0, r9
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r4
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r8, r1
	mov	r5, sl
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r6, .L_79830
	mov	r1, r9
	lsl	r0, r1, #1
	add	r0, r0, r4
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r6, .L_79834
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r6, #0]
	ldr	r4, .L_79838
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	mov	r0, r8
	bl	FixedMul
	strh	r0, [r4, #0]
.L_7980c:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7981c:
	.4byte	gUnk_3000C10
.L_79820:
	.4byte	sUnk_8411FEA
.L_79824:
	.4byte	gCurrentSecondarySprite
.L_79828:
	.4byte	gUnk_3000C14
.L_7982c:
	.4byte	sSinCosTable
.L_79830:
	.4byte	gUnk_3000C16
.L_79834:
	.4byte	gUnk_3000C18
.L_79838:
	.4byte	gUnk_3000C1A


thumb_func_start func_807983C
func_807983C:
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldr	r2, .L_79864
	ldrh	r0, [r2, #8]
	lsr	r0, r0, #2
	mov	r1, #255	@ 0xff
	and	r0, r1
	sub	r0, #181	@ 0xb5
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #18
	bhi	.L_79862
	lsl	r0, r3, #2
	ldrh	r1, [r2, #10]
	add	r0, r0, r1
	strh	r0, [r2, #10]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #2
	strh	r0, [r2, #8]
.L_79862:
	bx	lr
.L_79864:
	.4byte	gCurrentSecondarySprite


thumb_func_start func_8079868
func_8079868:
	push	{lr}
	ldr	r1, .L_79888
	ldrb	r0, [r1, #4]
	add	r0, #1
	strb	r0, [r1, #4]
	ldrh	r0, [r1, #8]
	add	r0, #10
	strh	r0, [r1, #8]
	ldr	r0, .L_7988c
	bl	func_8076A0C
	mov	r0, #80	@ 0x50
	bl	func_807983C
	pop	{r0}
	bx	r0
.L_79888:
	.4byte	gCurrentSecondarySprite
.L_7988c:
	.4byte	sUnk_841497C


thumb_func_start func_8079890
func_8079890:
	push	{lr}
	ldr	r1, .L_798b0
	ldrb	r0, [r1, #4]
	add	r0, #1
	strb	r0, [r1, #4]
	ldrh	r0, [r1, #8]
	add	r0, #12
	strh	r0, [r1, #8]
	ldr	r0, .L_798b4
	bl	func_8076A0C
	mov	r0, #160	@ 0xa0
	bl	func_807983C
	pop	{r0}
	bx	r0
.L_798b0:
	.4byte	gCurrentSecondarySprite
.L_798b4:
	.4byte	sUnk_841497C


thumb_func_start func_80798B8
func_80798B8:
	push	{lr}
	ldr	r1, .L_798d8
	ldrb	r0, [r1, #4]
	add	r0, #1
	strb	r0, [r1, #4]
	ldrh	r0, [r1, #8]
	add	r0, #14
	strh	r0, [r1, #8]
	ldr	r0, .L_798dc
	bl	func_8076A0C
	mov	r0, #96	@ 0x60
	bl	func_807983C
	pop	{r0}
	bx	r0
.L_798d8:
	.4byte	gCurrentSecondarySprite
.L_798dc:
	.4byte	sUnk_841497C


thumb_func_start func_80798E0
func_80798E0:
	push	{lr}
	ldr	r1, .L_79900
	ldrb	r0, [r1, #4]
	add	r0, #1
	strb	r0, [r1, #4]
	ldrh	r0, [r1, #8]
	add	r0, #11
	strh	r0, [r1, #8]
	ldr	r0, .L_79904
	bl	func_8076A0C
	mov	r0, #16
	bl	func_807983C
	pop	{r0}
	bx	r0
.L_79900:
	.4byte	gCurrentSecondarySprite
.L_79904:
	.4byte	sUnk_841497C


thumb_func_start func_8079908
func_8079908:
	push	{lr}
	ldr	r1, .L_79928
	ldrb	r0, [r1, #4]
	add	r0, #1
	strb	r0, [r1, #4]
	ldrh	r0, [r1, #8]
	add	r0, #12
	strh	r0, [r1, #8]
	ldr	r0, .L_7992c
	bl	func_8076A0C
	mov	r0, #200	@ 0xc8
	bl	func_807983C
	pop	{r0}
	bx	r0
.L_79928:
	.4byte	gCurrentSecondarySprite
.L_7992c:
	.4byte	sUnk_8414A0C


thumb_func_start func_8079930
func_8079930:
	push	{lr}
	ldr	r1, .L_79950
	ldrb	r0, [r1, #4]
	add	r0, #1
	strb	r0, [r1, #4]
	ldrh	r0, [r1, #8]
	add	r0, #10
	strh	r0, [r1, #8]
	ldr	r0, .L_79954
	bl	func_8076A0C
	mov	r0, #120	@ 0x78
	bl	func_807983C
	pop	{r0}
	bx	r0
.L_79950:
	.4byte	gCurrentSecondarySprite
.L_79954:
	.4byte	sUnk_8414A1C


thumb_func_start func_8079958
func_8079958:
	push	{lr}
	ldr	r1, .L_79978
	ldrb	r0, [r1, #4]
	add	r0, #1
	strb	r0, [r1, #4]
	ldrh	r0, [r1, #8]
	add	r0, #14
	strh	r0, [r1, #8]
	ldr	r0, .L_7997c
	bl	func_8076A0C
	mov	r0, #100	@ 0x64
	bl	func_807983C
	pop	{r0}
	bx	r0
.L_79978:
	.4byte	gCurrentSecondarySprite
.L_7997c:
	.4byte	sUnk_8414A2C


thumb_func_start func_8079980
func_8079980:
	push	{lr}
	ldr	r1, .L_799a0
	ldrb	r0, [r1, #4]
	add	r0, #1
	strb	r0, [r1, #4]
	ldrh	r0, [r1, #8]
	add	r0, #16
	strh	r0, [r1, #8]
	ldr	r0, .L_799a4
	bl	func_8076A0C
	mov	r0, #160	@ 0xa0
	bl	func_807983C
	pop	{r0}
	bx	r0
.L_799a0:
	.4byte	gCurrentSecondarySprite
.L_799a4:
	.4byte	sUnk_8414A3C
