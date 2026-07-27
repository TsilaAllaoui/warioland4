.include "macros.s.inc"


thumb_func_start func_8080A6C
func_8080A6C:
	push	{r4, r5, lr}
	mov	r2, #0
	ldr	r0, .L_80a88
	ldrb	r0, [r0, #0]
	sub	r0, #1
	cmp	r0, #8
	bls	.L_80a7c
	b	.L_80d44
.L_80a7c:
	lsl	r0, r0, #2
	ldr	r1, .L_80a8c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_80a88:
	.4byte	gStageEntrySequenceStep
.L_80a8c:
	.4byte	.L_80a90
.L_80a90:
	.4byte	.L_80ab4
	.4byte	.L_80aba
	.4byte	.L_80b14
	.4byte	.L_80b6c
	.4byte	.L_80c24
	.4byte	.L_80c28
	.4byte	.L_80c2e
	.4byte	.L_80cd8
	.4byte	.L_80cf0
.L_80ab4:
	bl	func_8080D4C
	b	.L_80ce2
.L_80aba:
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #19
	ldr	r2, .L_80ae0
	add	r1, r2, #0
	strh	r1, [r0, #0]
	mov	r0, #30
	bl	func_8081060
	cmp	r0, #0
	bne	.L_80ad0
	b	.L_80d44
.L_80ad0:
	ldr	r0, .L_80ae4
	ldrb	r0, [r0, #6]
	cmp	r0, #4
	bls	.L_80aec
	ldr	r1, .L_80ae8
	mov	r0, #4
	strb	r0, [r1, #0]
	b	.L_80d44
.L_80ae0:
	.4byte	0x1701
.L_80ae4:
	.4byte	gUnk_3003D98
.L_80ae8:
	.4byte	gStageEntrySequenceStep
.L_80aec:
	ldr	r4, .L_80af8
	ldr	r0, [r4, #0]
	cmp	r0, #1
	bne	.L_80b00
	ldr	r0, .L_80afc
	b	.L_80b0a
.L_80af8:
	.4byte	gUnk_3003DD8
.L_80afc:
	.4byte	0x1CF
.L_80b00:
	cmp	r0, #2
	beq	.L_80b06
	b	.L_80ce2
.L_80b06:
	mov	r0, #232	@ 0xe8
	lsl	r0, r0, #1
.L_80b0a:
	bl	m4aSongNumStart
	mov	r0, #0
	str	r0, [r4, #0]
	b	.L_80ce2
.L_80b14:
	ldr	r4, .L_80b24
	ldr	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_80b28
	bl	func_8080FFC
	b	.L_80d44
	.align	2, 0
.L_80b24:
	.4byte	gUnk_3003DE0
.L_80b28:
	mov	r0, #15
	bl	func_8081060
	cmp	r0, #0
	bne	.L_80b34
	b	.L_80d44
.L_80b34:
	mov	r5, #0
	str	r5, [r4, #0]
	ldr	r4, .L_80b44
	ldr	r0, [r4, #0]
	cmp	r0, #1
	bne	.L_80b4c
	ldr	r0, .L_80b48
	b	.L_80b54
.L_80b44:
	.4byte	gUnk_3003DD8
.L_80b48:
	.4byte	0x1CF
.L_80b4c:
	cmp	r0, #2
	bne	.L_80b5a
	mov	r0, #232	@ 0xe8
	lsl	r0, r0, #1
.L_80b54:
	bl	m4aSongNumStart
	str	r5, [r4, #0]
.L_80b5a:
	ldr	r0, .L_80b68
	ldrb	r0, [r0, #6]
	cmp	r0, #4
	bhi	.L_80b64
	b	.L_80d44
.L_80b64:
	b	.L_80ce2
	.align	2, 0
.L_80b68:
	.4byte	gUnk_3003D98
.L_80b6c:
	ldr	r4, .L_80b7c
	ldr	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_80b80
	bl	func_808115C
	b	.L_80d44
	.align	2, 0
.L_80b7c:
	.4byte	gUnk_3003DE0
.L_80b80:
	mov	r0, #15
	bl	func_8081060
	cmp	r0, #0
	bne	.L_80b8c
	b	.L_80d44
.L_80b8c:
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r0, .L_80bac
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	beq	.L_80b9a
	b	.L_80d44
.L_80b9a:
	ldr	r0, .L_80bb0
	ldr	r1, [r0, #0]
	ldr	r0, .L_80bb4
	cmp	r1, r0
	ble	.L_80bbc
	ldr	r1, .L_80bb8
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_80bf0
.L_80bac:
	.4byte	gUnk_3003DDC
.L_80bb0:
	.4byte	gStageScore
.L_80bb4:
	.4byte	0x3E7
.L_80bb8:
	.4byte	gUnk_3003DE4
.L_80bbc:
	ldr	r0, .L_80bcc
	cmp	r1, r0
	ble	.L_80bd4
	ldr	r1, .L_80bd0
	mov	r0, #2
	strb	r0, [r1, #0]
	b	.L_80bf0
	.align	2, 0
.L_80bcc:
	.4byte	0x31F
.L_80bd0:
	.4byte	gUnk_3003DE4
.L_80bd4:
	ldr	r0, .L_80be4
	cmp	r1, r0
	ble	.L_80bec
	ldr	r1, .L_80be8
	mov	r0, #3
	strb	r0, [r1, #0]
	b	.L_80bf0
	.align	2, 0
.L_80be4:
	.4byte	0x257
.L_80be8:
	.4byte	gUnk_3003DE4
.L_80bec:
	ldr	r0, .L_80c10
	strb	r2, [r0, #0]
.L_80bf0:
	ldr	r1, .L_80c14
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_80c18
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_80c02
	b	.L_80d44
.L_80c02:
	ldr	r0, .L_80c1c
	mov	r1, #1
	strb	r1, [r0, #4]
	ldr	r0, .L_80c20
	bl	m4aSongNumStart
	b	.L_80d44
.L_80c10:
	.4byte	gUnk_3003DE4
.L_80c14:
	.4byte	gStageEntrySequenceStep
.L_80c18:
	.4byte	gNewHighScore
.L_80c1c:
	.4byte	gUnk_3003DC8
.L_80c20:
	.4byte	0x252
.L_80c24:
	mov	r0, #75	@ 0x4b
	b	.L_80cda
.L_80c28:
	bl	func_80810C0
	b	.L_80cde
.L_80c2e:
	ldr	r0, .L_80c50
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_80c3c
	mov	r2, #1
.L_80c3c:
	cmp	r2, #0
	bne	.L_80c54
	mov	r0, #120	@ 0x78
	bl	func_8081060
	cmp	r0, #0
	bne	.L_80c4c
	b	.L_80d44
.L_80c4c:
	b	.L_80c5c
	.align	2, 0
.L_80c50:
	.4byte	gButtonsPressed
.L_80c54:
	mov	r0, #147	@ 0x93
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_80c5c:
	ldr	r0, .L_80cb0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_80d02
	ldr	r0, .L_80cb4
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_80d02
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	ldr	r2, .L_80cb8
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_80cbc
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r2, .L_80cc0
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_80c96
	ldr	r1, .L_80cc4
	ldr	r0, .L_80cc8
	str	r0, [r1, #0]
	ldr	r0, .L_80ccc
	str	r0, [r1, #4]
	ldr	r0, .L_80cd0
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_80c96:
	ldrb	r0, [r2, #0]
	cmp	r0, #1
	bne	.L_80d44
	ldr	r1, .L_80cc4
	ldr	r0, .L_80cd4
	str	r0, [r1, #0]
	ldr	r0, .L_80ccc
	str	r0, [r1, #4]
	ldr	r0, .L_80cd0
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	b	.L_80d44
	.align	2, 0
.L_80cb0:
	.4byte	gCurrentPassage
.L_80cb4:
	.4byte	gCollectedKeyzer
.L_80cb8:
	.4byte	0x701
.L_80cbc:
	.4byte	gStageEntrySequenceStep
.L_80cc0:
	.4byte	gLanguage
.L_80cc4:
	.4byte	0x40000D4
.L_80cc8:
	.4byte	sUnk_868B15C
.L_80ccc:
	.4byte	0x600C000
.L_80cd0:
	.4byte	0x80000400
.L_80cd4:
	.4byte	sUnk_868A95C
.L_80cd8:
	mov	r0, #120	@ 0x78
.L_80cda:
	bl	func_8081060
.L_80cde:
	cmp	r0, #0
	beq	.L_80d44
.L_80ce2:
	ldr	r1, .L_80cec
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	b	.L_80d44
.L_80cec:
	.4byte	gStageEntrySequenceStep
.L_80cf0:
	ldr	r0, .L_80d28
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_80d44
	ldr	r0, .L_80d2c
	bl	m4aSongNumStart
.L_80d02:
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	ldr	r2, .L_80d30
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_80d34
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r1, .L_80d38
	ldr	r2, .L_80d3c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_80d40
	ldr	r0, [r0, #24]
	mov	r1, #8
	bl	m4aMPlayFadeOut
	mov	r0, #1
	b	.L_80d46
.L_80d28:
	.4byte	gButtonsPressed
.L_80d2c:
	.4byte	0x125
.L_80d30:
	.4byte	0x401
.L_80d34:
	.4byte	gColorFading
.L_80d38:
	.4byte	0x4000050
.L_80d3c:
	.4byte	0x3FFF
.L_80d40:
	.4byte	gMPlayTable
.L_80d44:
	mov	r0, #0
.L_80d46:
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_8080D4C
func_8080D4C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r1, .L_80e44
	ldr	r2, .L_80e48
	ldr	r0, .L_80e4c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	mov	r2, #0
	strh	r0, [r1, #0]
	mov	r0, #112	@ 0x70
	strh	r0, [r1, #2]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #3
	strh	r0, [r1, #4]
	strb	r2, [r1, #6]
	ldr	r5, .L_80e50
	ldr	r1, .L_80e54
	ldr	r6, .L_80e58
	ldr	r7, .L_80e5c
	ldr	r0, .L_80e60
	mov	ip, r0
	ldr	r2, .L_80e64
	mov	r8, r2
	ldr	r0, .L_80e68
	mov	sl, r0
	mov	r4, #0
	mov	r3, #0
	add	r0, r5, #0
	mov	r2, #4
.L_80d90:
	strh	r3, [r0, #0]
	strh	r3, [r0, #2]
	strb	r4, [r0, #4]
	add	r0, #8
	sub	r2, #1
	cmp	r2, #0
	bge	.L_80d90
	mov	r2, #0
	mov	r9, r2
	mov	r4, #0
	strh	r4, [r1, #0]
	strh	r4, [r1, #2]
	mov	r0, r9
	strb	r0, [r1, #4]
	ldrb	r0, [r6, #0]
	cmp	r0, #3
	bne	.L_80db6
	mov	r0, #1
	strb	r0, [r5, #4]
.L_80db6:
	ldrb	r0, [r7, #0]
	cmp	r0, #3
	bne	.L_80dc0
	mov	r0, #1
	strb	r0, [r5, #12]
.L_80dc0:
	mov	r1, ip
	ldrb	r0, [r1, #0]
	cmp	r0, #3
	bne	.L_80dcc
	mov	r0, #1
	strb	r0, [r5, #20]
.L_80dcc:
	mov	r2, r8
	ldrb	r0, [r2, #0]
	cmp	r0, #3
	bne	.L_80dd8
	mov	r0, #1
	strb	r0, [r5, #28]
.L_80dd8:
	mov	r1, sl
	ldrb	r0, [r1, #0]
	cmp	r0, #3
	bne	.L_80de8
	add	r1, r5, #0
	add	r1, #36	@ 0x24
	mov	r0, #1
	strb	r0, [r1, #0]
.L_80de8:
	ldr	r2, .L_80e6c
	str	r4, [r2, #0]
	bl	func_8080E94
	bl	func_8080ED4
	ldr	r0, .L_80e70
	strh	r4, [r0, #0]
	bl	func_8081080
	ldr	r0, .L_80e74
	str	r4, [r0, #0]
	ldr	r2, .L_80e78
	ldr	r1, .L_80e7c
	ldrb	r0, [r1, #1]
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #8
	bls	.L_80e18
	mov	r0, #8
	strb	r0, [r2, #0]
.L_80e18:
	ldr	r0, .L_80e80
	bl	m4aSongNumStart
	ldr	r0, .L_80e84
	mov	r1, r9
	strb	r1, [r0, #0]
	ldr	r1, .L_80e88
	ldr	r2, .L_80e8c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_80e90
	add	r0, r2, #0
	strh	r0, [r1, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_80e44:
	.4byte	gUnk_3003D98
.L_80e48:
	.4byte	sUnk_863A490
.L_80e4c:
	.4byte	gUnk_3003C4A
.L_80e50:
	.4byte	gUnk_3003DA0
.L_80e54:
	.4byte	gUnk_3003DC8
.L_80e58:
	.4byte	gCollectedNEJewelPiece
.L_80e5c:
	.4byte	gCollectedSEJewelPiece
.L_80e60:
	.4byte	gCollectedSWJewelPiece
.L_80e64:
	.4byte	gCollectedNWJewelPiece
.L_80e68:
	.4byte	gCollectedCD
.L_80e6c:
	.4byte	gUnk_3003DD8
.L_80e70:
	.4byte	gUnk_3003DD4
.L_80e74:
	.4byte	gUnk_3003DE0
.L_80e78:
	.4byte	gUnk_3003DDC
.L_80e7c:
	.4byte	gHeartMeter
.L_80e80:
	.4byte	0x282
.L_80e84:
	.4byte	gUnk_3003C56
.L_80e88:
	.4byte	0x4000050
.L_80e8c:
	.4byte	0x442
.L_80e90:
	.4byte	0x907


thumb_func_start func_8080E94
func_8080E94:
	ldr	r1, .L_80ec0
	ldrb	r0, [r1, #4]
	cmp	r0, #0
	beq	.L_80ec8
	ldrb	r0, [r1, #12]
	cmp	r0, #0
	beq	.L_80ec8
	ldrb	r0, [r1, #20]
	cmp	r0, #0
	beq	.L_80ec8
	ldrb	r0, [r1, #28]
	cmp	r0, #0
	beq	.L_80ec8
	mov	r0, #0
	strb	r0, [r1, #4]
	strb	r0, [r1, #12]
	strb	r0, [r1, #20]
	strb	r0, [r1, #28]
	ldr	r1, .L_80ec4
	mov	r0, #1
	b	.L_80ecc
	.align	2, 0
.L_80ec0:
	.4byte	gUnk_3003DA0
.L_80ec4:
	.4byte	gUnk_3003DD0
.L_80ec8:
	ldr	r1, .L_80ed0
	mov	r0, #0
.L_80ecc:
	strb	r0, [r1, #0]
	bx	lr
.L_80ed0:
	.4byte	gUnk_3003DD0


thumb_func_start func_8080ED4
func_8080ED4:
	push	{r4, lr}
	ldr	r0, .L_80eec
	ldrb	r1, [r0, #6]
	add	r2, r0, #0
	cmp	r1, #4
	bls	.L_80ee2
	b	.L_80fee
.L_80ee2:
	lsl	r0, r1, #2
	ldr	r1, .L_80ef0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_80eec:
	.4byte	gUnk_3003D98
.L_80ef0:
	.4byte	.L_80ef4
.L_80ef4:
	.4byte	.L_80f08
	.4byte	.L_80f2a
	.4byte	.L_80f4a
	.4byte	.L_80f6a
	.4byte	.L_80f8c
.L_80f08:
	ldr	r0, .L_80f1c
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_80f24
	ldr	r1, .L_80f20
	b	.L_80fea
	.align	2, 0
.L_80f1c:
	.4byte	gCollectedNEJewelPiece
.L_80f20:
	.4byte	gUnk_3003DD8
.L_80f24:
	ldrb	r0, [r2, #6]
	add	r0, #1
	strb	r0, [r2, #6]
.L_80f2a:
	ldr	r0, .L_80f3c
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_80f44
	ldr	r1, .L_80f40
	b	.L_80fea
.L_80f3c:
	.4byte	gCollectedSEJewelPiece
.L_80f40:
	.4byte	gUnk_3003DD8
.L_80f44:
	ldrb	r0, [r2, #6]
	add	r0, #1
	strb	r0, [r2, #6]
.L_80f4a:
	ldr	r0, .L_80f5c
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_80f64
	ldr	r1, .L_80f60
	b	.L_80fea
.L_80f5c:
	.4byte	gCollectedSWJewelPiece
.L_80f60:
	.4byte	gUnk_3003DD8
.L_80f64:
	ldrb	r0, [r2, #6]
	add	r0, #1
	strb	r0, [r2, #6]
.L_80f6a:
	ldr	r0, .L_80f7c
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_80f84
	ldr	r1, .L_80f80
	b	.L_80fea
.L_80f7c:
	.4byte	gCollectedNWJewelPiece
.L_80f80:
	.4byte	gUnk_3003DD8
.L_80f84:
	ldr	r1, .L_80fcc
	ldrb	r0, [r1, #6]
	add	r0, #1
	strb	r0, [r1, #6]
.L_80f8c:
	ldr	r4, .L_80fd0
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_80faa
	bl	func_8080E94
	ldrb	r4, [r4, #0]
	cmp	r4, #1
	bne	.L_80faa
	mov	r0, #171	@ 0xab
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r0, .L_80fd4
	strb	r4, [r0, #0]
.L_80faa:
	ldr	r0, .L_80fd8
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_80fe0
	ldr	r1, .L_80fdc
	mov	r0, #2
	str	r0, [r1, #0]
	ldr	r1, .L_80fcc
	mov	r0, #112	@ 0x70
	strh	r0, [r1, #2]
	mov	r0, #144	@ 0x90
	strh	r0, [r1, #0]
	b	.L_80fee
	.align	2, 0
.L_80fcc:
	.4byte	gUnk_3003D98
.L_80fd0:
	.4byte	gUnk_3003DD0
.L_80fd4:
	.4byte	gUnk_3003C56
.L_80fd8:
	.4byte	gCollectedCD
.L_80fdc:
	.4byte	gUnk_3003DD8
.L_80fe0:
	ldr	r1, .L_80ff4
	ldrb	r0, [r1, #6]
	add	r0, #1
	strb	r0, [r1, #6]
	ldr	r1, .L_80ff8
.L_80fea:
	mov	r0, #1
	str	r0, [r1, #0]
.L_80fee:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_80ff4:
	.4byte	gUnk_3003D98
.L_80ff8:
	.4byte	gUnk_3003DE0


thumb_func_start func_8080FFC
func_8080FFC:
	push	{lr}
	ldr	r2, .L_81030
	ldrh	r0, [r2, #4]
	sub	r0, #30
	strh	r0, [r2, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #255	@ 0xff
	bhi	.L_81050
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #3
	strh	r0, [r2, #4]
	ldr	r1, .L_81034
	ldrb	r0, [r2, #6]
	lsl	r0, r0, #3
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #4]
	ldrb	r0, [r2, #6]
	cmp	r0, #4
	bne	.L_81038
	mov	r0, #233	@ 0xe9
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_8103e
.L_81030:
	.4byte	gUnk_3003D98
.L_81034:
	.4byte	gUnk_3003DA0
.L_81038:
	ldr	r0, .L_81054
	bl	m4aSongNumStart
.L_8103e:
	ldr	r1, .L_81058
	ldrb	r0, [r1, #6]
	add	r0, #1
	strb	r0, [r1, #6]
	bl	func_8080ED4
	ldr	r1, .L_8105c
	mov	r0, #1
	str	r0, [r1, #0]
.L_81050:
	pop	{r0}
	bx	r0
.L_81054:
	.4byte	0x1D1
.L_81058:
	.4byte	gUnk_3003D98
.L_8105c:
	.4byte	gUnk_3003DE0


thumb_func_start func_8081060
func_8081060:
	ldr	r2, .L_81074
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r1, [r2, #0]
	cmp	r1, r0
	bgt	.L_81078
	mov	r0, #0
	b	.L_8107e
	.align	2, 0
.L_81074:
	.4byte	gUnk_3003DD2
.L_81078:
	mov	r0, #0
	strh	r0, [r2, #0]
	mov	r0, #1
.L_8107e:
	bx	lr


thumb_func_start func_8081080
func_8081080:
	push	{r4, lr}
	ldr	r0, .L_810a8
	ldr	r0, [r0, #0]
	ldr	r4, .L_810ac
	ldr	r2, .L_810b0
	add	r1, r4, #0
	bl	func_807AA4C
	ldr	r0, .L_810b4
	ldr	r0, [r0, #0]
	ldr	r1, .L_810b8
	add	r4, r4, r1
	ldr	r2, .L_810bc
	add	r1, r4, #0
	bl	func_807A824
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_810a8:
	.4byte	gStageScore
.L_810ac:
	.4byte	sUnk_86872DC
.L_810b0:
	.4byte	0x8740
.L_810b4:
	.4byte	gTotalScoreTemp
.L_810b8:
	.4byte	0xFFFFFD40
.L_810bc:
	.4byte	0x8980


thumb_func_start func_80810C0
func_80810C0:
	push	{r4, r5, lr}
	ldr	r0, .L_81120
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_810e6
	mov	r0, #147	@ 0x93
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	ldr	r2, .L_81124
	ldr	r3, .L_81128
	ldr	r0, [r2, #0]
	ldr	r1, [r3, #0]
	add	r0, r0, r1
	str	r0, [r2, #0]
	mov	r0, #0
	str	r0, [r3, #0]
.L_810e6:
	ldr	r4, .L_81124
	ldr	r3, .L_81128
	add	r5, r3, #0
	add	r2, r4, #0
	mov	r1, #3
.L_810f0:
	ldr	r0, [r5, #0]
	cmp	r0, #0
	ble	.L_81100
	sub	r0, #1
	str	r0, [r3, #0]
	ldr	r0, [r2, #0]
	add	r0, #1
	str	r0, [r2, #0]
.L_81100:
	sub	r1, #1
	cmp	r1, #0
	bge	.L_810f0
	ldr	r0, [r4, #0]
	ldr	r1, .L_8112c
	cmp	r0, r1
	ble	.L_81110
	str	r1, [r4, #0]
.L_81110:
	bl	func_8081080
	ldr	r0, .L_81128
	ldr	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_81130
	mov	r0, #1
	b	.L_8114e
.L_81120:
	.4byte	gButtonsPressed
.L_81124:
	.4byte	gTotalScoreTemp
.L_81128:
	.4byte	gStageScore
.L_8112c:
	.4byte	0x1869F
.L_81130:
	ldr	r4, .L_81154
	ldrh	r0, [r4, #0]
	mov	r1, #5
	bl	__umodsi3
	lsl	r0, r0, #16
	cmp	r0, #0
	bne	.L_81146
	ldr	r0, .L_81158
	bl	m4aSongNumStart
.L_81146:
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	mov	r0, #0
.L_8114e:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L_81154:
	.4byte	gUnk_3003DD4
.L_81158:
	.4byte	0x222


thumb_func_start func_808115C
func_808115C:
	push	{lr}
	ldr	r1, .L_8118c
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_81190
	bl	m4aSongNumStart
	ldr	r1, .L_81194
	ldr	r0, [r1, #0]
	add	r0, #5
	str	r0, [r1, #0]
	ldr	r2, .L_81198
	cmp	r0, r2
	ble	.L_8117c
	str	r2, [r1, #0]
.L_8117c:
	bl	func_8081080
	ldr	r1, .L_8119c
	mov	r0, #1
	str	r0, [r1, #0]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8118c:
	.4byte	gUnk_3003DDC
.L_81190:
	.4byte	0x1D3
.L_81194:
	.4byte	gStageScore
.L_81198:
	.4byte	0x1869F
.L_8119c:
	.4byte	gUnk_3003DE0
