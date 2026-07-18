.include "macros.s.inc"


thumb_func_start StageSelectSubroutine
StageSelectSubroutine:
	push	{r4, r5, r6, r7, lr}
	mov	r7, #0
	bl	func_807A4B4
	ldr	r0, .L_799cc
	strb	r7, [r0, #0]
	ldr	r0, .L_799d0
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #49	@ 0x31
	bls	.L_799c2
	bl	.L_7a36a
.L_799c2:
	lsl	r0, r0, #2
	ldr	r1, .L_799d4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_799cc:
	.4byte	gOamSlotsUsed
.L_799d0:
	.4byte	gSubGameMode
.L_799d4:
	.4byte	.L_799d8
.L_799d8:
	.4byte	.L_79aa0
	.4byte	.L_79ac0
	.4byte	.L_79ae0
	.4byte	.L_79af8
	.4byte	.L_79b3c
	.4byte	.L_79b5c
	.4byte	.L_79b7c
	.4byte	.L_79b9c
	.4byte	.L_79bcc
	.4byte	.L_79c14
	.4byte	.L_79c34
	.4byte	.L_79ca0
	.4byte	.L_79cc8
	.4byte	.L_79cf0
	.4byte	.L_79d18
	.4byte	.L_79d40
	.4byte	.L_79d84
	.4byte	.L_79db8
	.4byte	.L_79de8
	.4byte	.L_79e08
	.4byte	.L_79e4c
	.4byte	.L_79e84
	.4byte	.L_79ebc
	.4byte	.L_79ed4
	.4byte	.L_79eec
	.4byte	.L_79f04
	.4byte	.L_79f20
	.4byte	.L_79f38
	.4byte	.L_79f50
	.4byte	.L_79f68
	.4byte	.L_79f90
	.4byte	.L_79fac
	.4byte	.L_79fcc
	.4byte	.L_7a048
	.4byte	.L_7a070
	.4byte	.L_7a0b8
	.4byte	.L_7a0d8
	.4byte	.L_7a140
	.4byte	.L_7a168
	.4byte	.L_7a190
	.4byte	.L_7a1b8
	.4byte	.L_7a1d8
	.4byte	.L_7a200
	.4byte	.L_7a248
	.4byte	.L_7a260
	.4byte	.L_7a2cc
	.4byte	.L_7a2f4
	.4byte	.L_7a324
	.4byte	.L_7a33c
	.4byte	.L_7a350
.L_79aa0:
	ldr	r5, .L_79ab8
	ldrh	r0, [r5, #0]
	mov	r4, #1
	eor	r0, r4
	strh	r0, [r5, #0]
	ldr	r1, .L_79abc
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_807B354
	b	.L_79bb0
	.align	2, 0
.L_79ab8:
	.4byte	0x4000200
.L_79abc:
	.4byte	gColorFading
.L_79ac0:
	bl	func_80703DC
	bl	func_807A380
	cmp	r0, #0
	bne	.L_79ad0
	bl	.L_7a36a
.L_79ad0:
	ldr	r1, .L_79adc
	mov	r0, #2
	strh	r0, [r1, #0]
	bl	.L_7a36a
	.align	2, 0
.L_79adc:
	.4byte	gSubGameMode
.L_79ae0:
	bl	func_807ADFC
	cmp	r0, #0
	bne	.L_79aec
	bl	.L_7a36a
.L_79aec:
	ldr	r1, .L_79af4
	mov	r0, #3
	b	.L_79fba
	.align	2, 0
.L_79af4:
	.4byte	gSubGameMode
.L_79af8:
	bl	func_80703DC
	bl	func_807A3D4
	cmp	r0, #0
	bne	.L_79b08
	bl	.L_7a36a
.L_79b08:
	bl	func_807ACCC
	ldr	r0, .L_79b24
	ldrb	r0, [r0, #0]
	cmp	r0, #6
	bne	.L_79b2c
	ldr	r1, .L_79b28
	mov	r0, #46	@ 0x2e
	strh	r0, [r1, #0]
	bl	m4aMPlayAllStop
	bl	.L_7a36a
	.align	2, 0
.L_79b24:
	.4byte	gCurrentPassage
.L_79b28:
	.4byte	gSubGameMode
.L_79b2c:
	ldr	r1, .L_79b38
	mov	r0, #33	@ 0x21
	strh	r0, [r1, #0]
	bl	.L_7a36a
	.align	2, 0
.L_79b38:
	.4byte	gSubGameMode
.L_79b3c:
	ldr	r5, .L_79b54
	ldrh	r0, [r5, #0]
	mov	r4, #1
	eor	r0, r4
	strh	r0, [r5, #0]
	ldr	r1, .L_79b58
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_807B388
	b	.L_79bb0
	.align	2, 0
.L_79b54:
	.4byte	0x4000200
.L_79b58:
	.4byte	gColorFading
.L_79b5c:
	ldr	r5, .L_79b74
	ldrh	r0, [r5, #0]
	mov	r4, #1
	eor	r0, r4
	strh	r0, [r5, #0]
	ldr	r1, .L_79b78
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_807B3C0
	b	.L_79bb0
	.align	2, 0
.L_79b74:
	.4byte	0x4000200
.L_79b78:
	.4byte	gColorFading
.L_79b7c:
	ldr	r5, .L_79b94
	ldrh	r0, [r5, #0]
	mov	r4, #1
	eor	r0, r4
	strh	r0, [r5, #0]
	ldr	r1, .L_79b98
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_807B420
	b	.L_79bb0
	.align	2, 0
.L_79b94:
	.4byte	0x4000200
.L_79b98:
	.4byte	gColorFading
.L_79b9c:
	ldr	r5, .L_79bc0
	ldrh	r0, [r5, #0]
	mov	r4, #1
	eor	r0, r4
	strh	r0, [r5, #0]
	ldr	r1, .L_79bc4
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_807B4D4
.L_79bb0:
	ldr	r0, .L_79bc8
	strh	r4, [r0, #0]
	ldrh	r0, [r5, #0]
	orr	r0, r4
	strh	r0, [r5, #0]
	bl	.L_7a36a
	.align	2, 0
.L_79bc0:
	.4byte	0x4000200
.L_79bc4:
	.4byte	gColorFading
.L_79bc8:
	.4byte	gSubGameMode
.L_79bcc:
	bl	func_80703DC
	bl	func_807A380
	cmp	r0, #0
	bne	.L_79bdc
	bl	.L_7a36a
.L_79bdc:
	ldr	r2, .L_79c00
	ldr	r0, .L_79c04
	ldr	r1, .L_79c08
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	ldr	r1, .L_79c0c
	mov	r2, #150	@ 0x96
	bl	m4aMPlayVolumeControl
	ldr	r1, .L_79c10
	mov	r0, #9
	strh	r0, [r1, #0]
	b	.L_7a36a
.L_79c00:
	.4byte	gMPlayTable
.L_79c04:
	.4byte	gSongTable
.L_79c08:
	.4byte	0x13FC
.L_79c0c:
	.4byte	0xFFFF
.L_79c10:
	.4byte	gSubGameMode
.L_79c14:
	bl	func_807CAB8
	cmp	r0, #0
	bne	.L_79c1e
	b	.L_7a36a
.L_79c1e:
	bl	func_807A700
	cmp	r0, #0
	bne	.L_79c28
	b	.L_7a36a
.L_79c28:
	ldr	r1, .L_79c30
	mov	r0, #10
	strh	r0, [r1, #0]
	b	.L_7a36a
.L_79c30:
	.4byte	gSubGameMode
.L_79c34:
	bl	func_80703DC
	bl	func_807A3D4
	cmp	r0, #0
	bne	.L_79c42
	b	.L_7a36a
.L_79c42:
	bl	func_807ACCC
	ldr	r0, .L_79c58
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	beq	.L_79c60
	ldr	r1, .L_79c5c
	mov	r0, #45	@ 0x2d
	strh	r0, [r1, #0]
	b	.L_7a36a
	.align	2, 0
.L_79c58:
	.4byte	gUnk_3003C56
.L_79c5c:
	.4byte	gSubGameMode
.L_79c60:
	ldr	r0, .L_79c70
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_79c74
	cmp	r0, #1
	beq	.L_79c8c
	b	.L_7a36a
	.align	2, 0
.L_79c70:
	.4byte	gUnk_3003C08
.L_79c74:
	ldr	r0, .L_79c84
	strh	r1, [r0, #0]
	bl	m4aMPlayAllStop
	ldr	r1, .L_79c88
	mov	r0, #15
	strh	r0, [r1, #0]
	b	.L_7a36a
.L_79c84:
	.4byte	gUnk_3000000
.L_79c88:
	.4byte	gSubGameMode
.L_79c8c:
	ldr	r2, .L_79c9c
	ldrb	r0, [r2, #0]
	cmp	r0, #1
	beq	.L_79c96
	b	.L_7a2c0
.L_79c96:
	strb	r1, [r2, #0]
	b	.L_7a288
	.align	2, 0
.L_79c9c:
	.4byte	gCollectedKeyzer
.L_79ca0:
	ldr	r4, .L_79cbc
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_79cc0
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_807D10C
	ldr	r1, .L_79cc4
	mov	r0, #8
	b	.L_7a30c
	.align	2, 0
.L_79cbc:
	.4byte	0x4000200
.L_79cc0:
	.4byte	gColorFading
.L_79cc4:
	.4byte	gSubGameMode
.L_79cc8:
	ldr	r4, .L_79ce4
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_79ce8
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_807D294
	ldr	r1, .L_79cec
	mov	r0, #8
	b	.L_7a30c
	.align	2, 0
.L_79ce4:
	.4byte	0x4000200
.L_79ce8:
	.4byte	gColorFading
.L_79cec:
	.4byte	gSubGameMode
.L_79cf0:
	ldr	r4, .L_79d0c
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_79d10
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_807D364
	ldr	r1, .L_79d14
	mov	r0, #8
	b	.L_7a30c
	.align	2, 0
.L_79d0c:
	.4byte	0x4000200
.L_79d10:
	.4byte	gColorFading
.L_79d14:
	.4byte	gSubGameMode
.L_79d18:
	ldr	r4, .L_79d34
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_79d38
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_807D410
	ldr	r1, .L_79d3c
	mov	r0, #8
	b	.L_7a30c
	.align	2, 0
.L_79d34:
	.4byte	0x4000200
.L_79d38:
	.4byte	gColorFading
.L_79d3c:
	.4byte	gSubGameMode
.L_79d40:
	ldr	r4, .L_79d70
	ldrh	r0, [r4, #0]
	mov	r6, #1
	eor	r0, r6
	strh	r0, [r4, #0]
	ldr	r1, .L_79d74
	mov	r2, #0
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r0, .L_79d78
	mov	r5, #0
	strh	r2, [r0, #0]
	bl	func_807FAA4
	ldr	r0, .L_79d7c
	strb	r5, [r0, #0]
	ldr	r1, .L_79d80
	mov	r0, #16
	strh	r0, [r1, #0]
	ldrh	r0, [r4, #0]
	orr	r0, r6
	strh	r0, [r4, #0]
	b	.L_7a36a
	.align	2, 0
.L_79d70:
	.4byte	0x4000200
.L_79d74:
	.4byte	gColorFading
.L_79d78:
	.4byte	gUnk_3003C58
.L_79d7c:
	.4byte	gUnk_3003C34
.L_79d80:
	.4byte	gSubGameMode
.L_79d84:
	ldr	r4, .L_79db0
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	bl	func_807FFD8
	bl	func_80800EC
	ldrh	r0, [r4, #0]
	cmp	r0, #10
	bls	.L_79d9e
	bl	func_807FD94
.L_79d9e:
	bl	func_807A380
	cmp	r0, #0
	bne	.L_79da8
	b	.L_7a36a
.L_79da8:
	ldr	r1, .L_79db4
	mov	r0, #17
	strh	r0, [r1, #0]
	b	.L_7a36a
.L_79db0:
	.4byte	gUnk_3003C58
.L_79db4:
	.4byte	gSubGameMode
.L_79db8:
	ldr	r0, .L_79ddc
	ldrh	r1, [r0, #0]
	add	r1, #1
	strh	r1, [r0, #0]
	bl	func_807F8D0
	cmp	r0, #0
	bne	.L_79dca
	b	.L_7a36a
.L_79dca:
	ldr	r0, .L_79de0
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_79dfa
	ldr	r1, .L_79de4
	mov	r0, #18
	strh	r0, [r1, #0]
	b	.L_7a36a
	.align	2, 0
.L_79ddc:
	.4byte	gUnk_3003C58
.L_79de0:
	.4byte	gUnk_3003C34
.L_79de4:
	.4byte	gSubGameMode
.L_79de8:
	bl	func_807FFD8
	bl	func_80800EC
	bl	func_8080A6C
	cmp	r0, #0
	bne	.L_79dfa
	b	.L_7a36a
.L_79dfa:
	ldr	r1, .L_79e04
	mov	r0, #19
	strh	r0, [r1, #0]
	b	.L_7a36a
	.align	2, 0
.L_79e04:
	.4byte	gSubGameMode
.L_79e08:
	ldr	r0, .L_79e34
	ldrh	r1, [r0, #0]
	add	r1, #1
	strh	r1, [r0, #0]
	bl	func_807FFD8
	bl	func_80800EC
	bl	func_807A3D4
	cmp	r0, #0
	bne	.L_79e22
	b	.L_7a36a
.L_79e22:
	ldr	r0, .L_79e38
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	bne	.L_79e40
	mov	r7, #1
	ldr	r0, .L_79e3c
	strh	r1, [r0, #0]
	b	.L_7a36a
	.align	2, 0
.L_79e34:
	.4byte	gUnk_3003C58
.L_79e38:
	.4byte	gUnk_3003C34
.L_79e3c:
	.4byte	gSubGameMode
.L_79e40:
	ldr	r1, .L_79e48
	mov	r0, #11
	strh	r0, [r1, #0]
	b	.L_7a36a
.L_79e48:
	.4byte	gSubGameMode
.L_79e4c:
	ldr	r4, .L_79e70
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_79e74
	mov	r2, #0
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r0, .L_79e78
	strh	r2, [r0, #0]
	bl	func_807FB20
	ldr	r0, .L_79e7c
	strb	r5, [r0, #0]
	ldr	r1, .L_79e80
	mov	r0, #16
	b	.L_7a30c
.L_79e70:
	.4byte	0x4000200
.L_79e74:
	.4byte	gColorFading
.L_79e78:
	.4byte	gUnk_3003C58
.L_79e7c:
	.4byte	gUnk_3003C34
.L_79e80:
	.4byte	gSubGameMode
.L_79e84:
	ldr	r4, .L_79ea8
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_79eac
	mov	r2, #0
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r0, .L_79eb0
	strh	r2, [r0, #0]
	bl	func_80816A4
	ldr	r0, .L_79eb4
	strb	r5, [r0, #0]
	ldr	r1, .L_79eb8
	mov	r0, #22
	b	.L_7a30c
.L_79ea8:
	.4byte	0x4000200
.L_79eac:
	.4byte	gColorFading
.L_79eb0:
	.4byte	gUnk_3003C58
.L_79eb4:
	.4byte	gUnk_3003C34
.L_79eb8:
	.4byte	gSubGameMode
.L_79ebc:
	bl	func_807A380
	cmp	r0, #0
	bne	.L_79ec6
	b	.L_7a36a
.L_79ec6:
	ldr	r1, .L_79ed0
	mov	r0, #23
	strh	r0, [r1, #0]
	b	.L_7a36a
	.align	2, 0
.L_79ed0:
	.4byte	gSubGameMode
.L_79ed4:
	bl	func_808167C
	cmp	r0, #0
	bne	.L_79ede
	b	.L_7a36a
.L_79ede:
	ldr	r1, .L_79ee8
	mov	r0, #24
	strh	r0, [r1, #0]
	b	.L_7a36a
	.align	2, 0
.L_79ee8:
	.4byte	gSubGameMode
.L_79eec:
	bl	func_807A3D4
	cmp	r0, #0
	bne	.L_79ef6
	b	.L_7a36a
.L_79ef6:
	ldr	r1, .L_79f00
	mov	r0, #12
	strh	r0, [r1, #0]
	b	.L_7a36a
	.align	2, 0
.L_79f00:
	.4byte	gSubGameMode
.L_79f04:
	ldr	r1, .L_79f18
	mov	r0, #4
	strb	r0, [r1, #0]
	bl	func_8082428
	ldr	r1, .L_79f1c
	mov	r0, #26
	strh	r0, [r1, #0]
	b	.L_7a36a
	.align	2, 0
.L_79f18:
	.4byte	gColorFading
.L_79f1c:
	.4byte	gSubGameMode
.L_79f20:
	bl	func_807A380
	cmp	r0, #0
	bne	.L_79f2a
	b	.L_7a36a
.L_79f2a:
	ldr	r1, .L_79f34
	mov	r0, #27
	strh	r0, [r1, #0]
	b	.L_7a36a
	.align	2, 0
.L_79f34:
	.4byte	gSubGameMode
.L_79f38:
	bl	func_8082024
	cmp	r0, #0
	bne	.L_79f42
	b	.L_7a36a
.L_79f42:
	ldr	r1, .L_79f4c
	mov	r0, #28
	strh	r0, [r1, #0]
	b	.L_7a36a
	.align	2, 0
.L_79f4c:
	.4byte	gSubGameMode
.L_79f50:
	bl	func_807A3D4
	cmp	r0, #0
	bne	.L_79f5a
	b	.L_7a36a
.L_79f5a:
	ldr	r1, .L_79f64
	mov	r0, #29
	strh	r0, [r1, #0]
	b	.L_7a36a
	.align	2, 0
.L_79f64:
	.4byte	gSubGameMode
.L_79f68:
	ldr	r4, .L_79f84
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_79f88
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_80838E8
	ldr	r1, .L_79f8c
	mov	r0, #30
	b	.L_7a30c
	.align	2, 0
.L_79f84:
	.4byte	0x4000200
.L_79f88:
	.4byte	gColorFading
.L_79f8c:
	.4byte	gSubGameMode
.L_79f90:
	bl	func_80703DC
	bl	func_807A380
	cmp	r0, #0
	bne	.L_79f9e
	b	.L_7a36a
.L_79f9e:
	ldr	r1, .L_79fa8
	mov	r0, #31
	strh	r0, [r1, #0]
	b	.L_7a36a
	.align	2, 0
.L_79fa8:
	.4byte	gSubGameMode
.L_79fac:
	bl	func_8083798
	cmp	r0, #0
	bne	.L_79fb6
	b	.L_7a36a
.L_79fb6:
	ldr	r1, .L_79fc4
	mov	r0, #32
.L_79fba:
	strh	r0, [r1, #0]
	ldr	r1, .L_79fc8
	mov	r0, #2
	strb	r0, [r1, #0]
	b	.L_7a36a
.L_79fc4:
	.4byte	gSubGameMode
.L_79fc8:
	.4byte	gColorFading
.L_79fcc:
	bl	func_80703DC
	bl	func_807A3D4
	cmp	r0, #0
	bne	.L_79fda
	b	.L_7a36a
.L_79fda:
	ldr	r0, .L_79fec
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_79ff4
	ldr	r1, .L_79ff0
	mov	r0, #7
	strh	r0, [r1, #0]
	b	.L_7a36a
	.align	2, 0
.L_79fec:
	.4byte	gCurrentPassage
.L_79ff0:
	.4byte	gSubGameMode
.L_79ff4:
	ldr	r2, .L_7a040
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	ldrb	r1, [r0, #0]
	mov	r3, #32
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_7a008
	b	.L_7a1ca
.L_7a008:
	add	r0, r2, #0
	add	r0, #64	@ 0x40
	ldrb	r1, [r0, #0]
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_7a018
	b	.L_7a1ca
.L_7a018:
	add	r0, r2, #0
	add	r0, #88	@ 0x58
	ldrb	r1, [r0, #0]
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_7a028
	b	.L_7a1ca
.L_7a028:
	add	r0, r2, #0
	add	r0, #112	@ 0x70
	ldrb	r1, [r0, #0]
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_7a038
	b	.L_7a1ca
.L_7a038:
	ldr	r1, .L_7a044
	mov	r0, #6
	strh	r0, [r1, #0]
	b	.L_7a36a
.L_7a040:
	.4byte	gCurrentCollection
.L_7a044:
	.4byte	gSubGameMode
.L_7a048:
	ldr	r4, .L_7a064
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_7a068
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_8084BCC
	ldr	r1, .L_7a06c
	mov	r0, #34	@ 0x22
	b	.L_7a30c
	.align	2, 0
.L_7a064:
	.4byte	0x4000200
.L_7a068:
	.4byte	gColorFading
.L_7a06c:
	.4byte	gSubGameMode
.L_7a070:
	bl	func_80703DC
	bl	func_807A380
	cmp	r0, #0
	bne	.L_7a07e
	b	.L_7a36a
.L_7a07e:
	ldr	r2, .L_7a0a4
	ldr	r0, .L_7a0a8
	ldr	r1, .L_7a0ac
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	ldr	r1, .L_7a0b0
	mov	r2, #150	@ 0x96
	bl	m4aMPlayVolumeControl
	ldr	r1, .L_7a0b4
	mov	r0, #35	@ 0x23
	strh	r0, [r1, #0]
	b	.L_7a36a
	.align	2, 0
.L_7a0a4:
	.4byte	gMPlayTable
.L_7a0a8:
	.4byte	gSongTable
.L_7a0ac:
	.4byte	0x13FC
.L_7a0b0:
	.4byte	0xFFFF
.L_7a0b4:
	.4byte	gSubGameMode
.L_7a0b8:
	bl	func_80845F0
	cmp	r0, #0
	bne	.L_7a0c2
	b	.L_7a36a
.L_7a0c2:
	bl	func_807A700
	cmp	r0, #0
	bne	.L_7a0cc
	b	.L_7a36a
.L_7a0cc:
	ldr	r1, .L_7a0d4
	mov	r0, #36	@ 0x24
	strh	r0, [r1, #0]
	b	.L_7a36a
.L_7a0d4:
	.4byte	gSubGameMode
.L_7a0d8:
	bl	func_80703DC
	bl	func_807A3D4
	cmp	r0, #0
	bne	.L_7a0e6
	b	.L_7a36a
.L_7a0e6:
	bl	func_807ACCC
	ldr	r0, .L_7a0f8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_7a0fc
	cmp	r0, #1
	beq	.L_7a134
	b	.L_7a36a
.L_7a0f8:
	.4byte	gUnk_3003C08
.L_7a0fc:
	ldr	r0, .L_7a110
	ldrb	r0, [r0, #0]
	cmp	r0, #16
	bls	.L_7a108
	cmp	r0, #23
	bne	.L_7a118
.L_7a108:
	ldr	r1, .L_7a114
	mov	r0, #13
	strh	r0, [r1, #0]
	b	.L_7a36a
.L_7a110:
	.4byte	gUnk_3000023
.L_7a114:
	.4byte	gSubGameMode
.L_7a118:
	cmp	r0, #22
	bhi	.L_7a128
	ldr	r1, .L_7a124
	mov	r0, #41	@ 0x29
	strh	r0, [r1, #0]
	b	.L_7a36a
.L_7a124:
	.4byte	gSubGameMode
.L_7a128:
	ldr	r1, .L_7a130
	mov	r0, #40	@ 0x28
	strh	r0, [r1, #0]
	b	.L_7a36a
.L_7a130:
	.4byte	gSubGameMode
.L_7a134:
	ldr	r1, .L_7a13c
	mov	r0, #4
	strh	r0, [r1, #0]
	b	.L_7a36a
.L_7a13c:
	.4byte	gSubGameMode
.L_7a140:
	ldr	r4, .L_7a15c
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_7a160
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_8084C28
	ldr	r1, .L_7a164
	mov	r0, #34	@ 0x22
	b	.L_7a30c
	.align	2, 0
.L_7a15c:
	.4byte	0x4000200
.L_7a160:
	.4byte	gColorFading
.L_7a164:
	.4byte	gSubGameMode
.L_7a168:
	ldr	r4, .L_7a184
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_7a188
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_8084CBC
	ldr	r1, .L_7a18c
	mov	r0, #34	@ 0x22
	b	.L_7a30c
	.align	2, 0
.L_7a184:
	.4byte	0x4000200
.L_7a188:
	.4byte	gColorFading
.L_7a18c:
	.4byte	gSubGameMode
.L_7a190:
	ldr	r4, .L_7a1ac
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_7a1b0
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_8084CF4
	ldr	r1, .L_7a1b4
	mov	r0, #34	@ 0x22
	b	.L_7a30c
	.align	2, 0
.L_7a1ac:
	.4byte	0x4000200
.L_7a1b0:
	.4byte	gColorFading
.L_7a1b4:
	.4byte	gSubGameMode
.L_7a1b8:
	mov	r0, #10
	bl	MinigameWaitForFrames
	cmp	r0, #0
	bne	.L_7a1c4
	b	.L_7a36a
.L_7a1c4:
	bl	m4aMPlayAllStop
	mov	r7, #1
.L_7a1ca:
	ldr	r1, .L_7a1d4
	mov	r0, #0
	strh	r0, [r1, #0]
	b	.L_7a36a
	.align	2, 0
.L_7a1d4:
	.4byte	gSubGameMode
.L_7a1d8:
	ldr	r4, .L_7a1f4
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_7a1f8
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_8086354
	ldr	r1, .L_7a1fc
	mov	r0, #42	@ 0x2a
	b	.L_7a30c
	.align	2, 0
.L_7a1f4:
	.4byte	0x4000200
.L_7a1f8:
	.4byte	gColorFading
.L_7a1fc:
	.4byte	gSubGameMode
.L_7a200:
	bl	func_80703DC
	bl	func_807A380
	cmp	r0, #0
	bne	.L_7a20e
	b	.L_7a36a
.L_7a20e:
	ldr	r2, .L_7a234
	ldr	r0, .L_7a238
	ldr	r1, .L_7a23c
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	ldr	r1, .L_7a240
	mov	r2, #150	@ 0x96
	bl	m4aMPlayVolumeControl
	ldr	r1, .L_7a244
	mov	r0, #43	@ 0x2b
	strh	r0, [r1, #0]
	b	.L_7a36a
	.align	2, 0
.L_7a234:
	.4byte	gMPlayTable
.L_7a238:
	.4byte	gSongTable
.L_7a23c:
	.4byte	0x13FC
.L_7a240:
	.4byte	0xFFFF
.L_7a244:
	.4byte	gSubGameMode
.L_7a248:
	bl	func_8085E24
	cmp	r0, #0
	bne	.L_7a252
	b	.L_7a36a
.L_7a252:
	ldr	r1, .L_7a25c
	mov	r0, #44	@ 0x2c
	strh	r0, [r1, #0]
	b	.L_7a36a
	.align	2, 0
.L_7a25c:
	.4byte	gSubGameMode
.L_7a260:
	bl	func_80703DC
	bl	func_807A3D4
	cmp	r0, #0
	bne	.L_7a26e
	b	.L_7a36a
.L_7a26e:
	bl	func_807ACCC
	ldr	r1, .L_7a290
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_7a29c
	mov	r2, #0
	strb	r2, [r1, #0]
	ldr	r1, .L_7a294
	ldrb	r0, [r1, #0]
	cmp	r0, #1
	bne	.L_7a2c0
	strb	r2, [r1, #0]
.L_7a288:
	ldr	r1, .L_7a298
	mov	r0, #37	@ 0x25
	strh	r0, [r1, #0]
	b	.L_7a36a
.L_7a290:
	.4byte	gUnk_3003C56
.L_7a294:
	.4byte	gCollectedKeyzer
.L_7a298:
	.4byte	gSubGameMode
.L_7a29c:
	ldr	r0, .L_7a2ac
	ldrb	r4, [r0, #0]
	cmp	r4, #0
	beq	.L_7a2b0
	cmp	r4, #1
	beq	.L_7a2c0
	b	.L_7a36a
	.align	2, 0
.L_7a2ac:
	.4byte	gUnk_3003C08
.L_7a2b0:
	bl	m4aMPlayAllStop
	mov	r7, #1
	ldr	r0, .L_7a2bc
	strh	r4, [r0, #0]
	b	.L_7a36a
.L_7a2bc:
	.4byte	gSubGameMode
.L_7a2c0:
	ldr	r1, .L_7a2c8
	mov	r0, #39	@ 0x27
	strh	r0, [r1, #0]
	b	.L_7a36a
.L_7a2c8:
	.4byte	gSubGameMode
.L_7a2cc:
	ldr	r4, .L_7a2e8
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_7a2ec
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_80864B0
	ldr	r1, .L_7a2f0
	mov	r0, #42	@ 0x2a
	b	.L_7a30c
	.align	2, 0
.L_7a2e8:
	.4byte	0x4000200
.L_7a2ec:
	.4byte	gColorFading
.L_7a2f0:
	.4byte	gSubGameMode
.L_7a2f4:
	ldr	r4, .L_7a318
	ldrh	r0, [r4, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r4, #0]
	ldr	r1, .L_7a31c
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_80870D4
	ldr	r1, .L_7a320
	mov	r0, #47	@ 0x2f
.L_7a30c:
	strh	r0, [r1, #0]
	ldrh	r0, [r4, #0]
	orr	r0, r5
	strh	r0, [r4, #0]
	b	.L_7a36a
	.align	2, 0
.L_7a318:
	.4byte	0x4000200
.L_7a31c:
	.4byte	gColorFading
.L_7a320:
	.4byte	gSubGameMode
.L_7a324:
	bl	func_80703DC
	bl	func_807A380
	cmp	r0, #0
	beq	.L_7a36a
	ldr	r1, .L_7a338
	mov	r0, #48	@ 0x30
	strh	r0, [r1, #0]
	b	.L_7a36a
.L_7a338:
	.4byte	gSubGameMode
.L_7a33c:
	bl	func_808708C
	cmp	r0, #0
	beq	.L_7a36a
	ldr	r1, .L_7a34c
	mov	r0, #49	@ 0x31
	strh	r0, [r1, #0]
	b	.L_7a36a
.L_7a34c:
	.4byte	gSubGameMode
.L_7a350:
	bl	func_80703DC
	bl	func_807A3D4
	cmp	r0, #0
	beq	.L_7a36a
	bl	func_807ACCC
	ldr	r1, .L_7a37c
	mov	r0, #0
	strh	r0, [r1, #0]
	bl	m4aMPlayAllStop
.L_7a36a:
	bl	func_807ACDC
	bl	ResetFreeOam
	add	r0, r7, #0
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_7a37c:
	.4byte	gSubGameMode


thumb_func_start func_807A380
func_807A380:
	push	{lr}
	mov	r2, #0
	ldr	r0, .L_7a39c
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	blt	.L_7a3ce
	cmp	r0, #2
	bgt	.L_7a3a0
	mov	r0, #0
	mov	r1, #1
	bl	func_80710D8
	add	r2, r0, #0
	b	.L_7a3ce
.L_7a39c:
	.4byte	gColorFading
.L_7a3a0:
	cmp	r0, #4
	bgt	.L_7a3ce
	ldr	r1, .L_7a3c4
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldrh	r0, [r1, #0]
	mov	r1, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_7a3ce
	ldr	r1, .L_7a3c8
	ldrh	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_7a3cc
	sub	r0, #1
	strh	r0, [r1, #0]
	b	.L_7a3ce
.L_7a3c4:
	.4byte	gUnk_300188E
.L_7a3c8:
	.4byte	gBldy
.L_7a3cc:
	mov	r2, #1
.L_7a3ce:
	add	r0, r2, #0
	pop	{r1}
	bx	r1


thumb_func_start func_807A3D4
func_807A3D4:
	push	{lr}
	mov	r2, #0
	ldr	r0, .L_7a3f0
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	blt	.L_7a422
	cmp	r0, #2
	bgt	.L_7a3f4
	mov	r0, #1
	mov	r1, #1
	bl	func_80710D8
	add	r2, r0, #0
	b	.L_7a422
.L_7a3f0:
	.4byte	gColorFading
.L_7a3f4:
	cmp	r0, #4
	bgt	.L_7a422
	ldr	r1, .L_7a418
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldrh	r0, [r1, #0]
	mov	r1, #3
	and	r0, r1
	cmp	r0, #0
	bne	.L_7a422
	ldr	r1, .L_7a41c
	ldrh	r0, [r1, #0]
	cmp	r0, #15
	bhi	.L_7a420
	add	r0, #1
	strh	r0, [r1, #0]
	b	.L_7a422
.L_7a418:
	.4byte	gUnk_300188E
.L_7a41c:
	.4byte	gBldy
.L_7a420:
	mov	r2, #1
.L_7a422:
	add	r0, r2, #0
	pop	{r1}
	bx	r1


thumb_func_start InitMinigameScoreDisplay
InitMinigameScoreDisplay:
	push	{lr}
	ldr	r0, .L_7a440
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	beq	.L_7a44a
	cmp	r0, #3
	bgt	.L_7a444
	cmp	r0, #1
	blt	.L_7a454
	bl	func_807A458
	b	.L_7a454
.L_7a440:
	.4byte	gColorFading
.L_7a444:
	cmp	r0, #4
	beq	.L_7a450
	b	.L_7a454
.L_7a44a:
	bl	func_807A46C
	b	.L_7a454
.L_7a450:
	bl	func_807A490
.L_7a454:
	pop	{r0}
	bx	r0


thumb_func_start func_807A458
func_807A458:
	push	{lr}
	ldr	r1, .L_7a468
	mov	r0, #3
	strb	r0, [r1, #4]
	bl	func_8071260
	pop	{r0}
	bx	r0
.L_7a468:
	.4byte	gColorFading


thumb_func_start func_807A46C
func_807A46C:
	ldr	r0, .L_7a480
	mov	r1, #15
	strh	r1, [r0, #0]
	ldr	r0, .L_7a484
	strh	r1, [r0, #0]
	ldr	r1, .L_7a488
	ldr	r2, .L_7a48c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	bx	lr
.L_7a480:
	.4byte	gBldy
.L_7a484:
	.4byte	0x4000054
.L_7a488:
	.4byte	0x4000050
.L_7a48c:
	.4byte	0x3FBF


thumb_func_start func_807A490
func_807A490:
	ldr	r0, .L_7a4a4
	mov	r1, #15
	strh	r1, [r0, #0]
	ldr	r0, .L_7a4a8
	strh	r1, [r0, #0]
	ldr	r1, .L_7a4ac
	ldr	r2, .L_7a4b0
	add	r0, r2, #0
	strh	r0, [r1, #0]
	bx	lr
.L_7a4a4:
	.4byte	gBldy
.L_7a4a8:
	.4byte	0x4000054
.L_7a4ac:
	.4byte	0x4000050
.L_7a4b0:
	.4byte	0x3FFF


thumb_func_start func_807A4B4
func_807A4B4:
	push	{lr}
	ldr	r0, .L_7a4d0
	ldrh	r0, [r0, #0]
	sub	r0, #16
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #12
	bhi	.L_7a518
	lsl	r0, r0, #2
	ldr	r1, .L_7a4d4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_7a4d0:
	.4byte	gSubGameMode
.L_7a4d4:
	.4byte	.L_7a4d8
.L_7a4d8:
	.4byte	.L_7a50c
	.4byte	.L_7a518
	.4byte	.L_7a518
	.4byte	.L_7a50c
	.4byte	.L_7a518
	.4byte	.L_7a518
	.4byte	.L_7a50c
	.4byte	.L_7a518
	.4byte	.L_7a50c
	.4byte	.L_7a518
	.4byte	.L_7a50c
	.4byte	.L_7a518
	.4byte	.L_7a50c
.L_7a50c:
	ldr	r0, .L_7a514
	bl	InterruptCallbackSetVBlank
	b	.L_7a51e
.L_7a514:
	.4byte	func_807A668
.L_7a518:
	ldr	r0, .L_7a524
	bl	InterruptCallbackSetVBlank
.L_7a51e:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7a524:
	.4byte	func_807A528


thumb_func_start func_807A528
func_807A528:
	push	{lr}
	bl	m4aSoundVSync
	ldr	r1, .L_7a558
	ldr	r0, .L_7a55c
	str	r0, [r1, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_7a560
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_7a564
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #49	@ 0x31
	bls	.L_7a54c
	b	.L_7a662
.L_7a54c:
	lsl	r0, r0, #2
	ldr	r1, .L_7a568
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_7a558:
	.4byte	0x40000D4
.L_7a55c:
	.4byte	gOamBuffer
.L_7a560:
	.4byte	0x84000100
.L_7a564:
	.4byte	gSubGameMode
.L_7a568:
	.4byte	.L_7a56c
.L_7a56c:
	.4byte	.L_7a640
	.4byte	.L_7a640
	.4byte	.L_7a640
	.4byte	.L_7a640
	.4byte	.L_7a640
	.4byte	.L_7a662
	.4byte	.L_7a662
	.4byte	.L_7a662
	.4byte	.L_7a63a
	.4byte	.L_7a63a
	.4byte	.L_7a63a
	.4byte	.L_7a63a
	.4byte	.L_7a63a
	.4byte	.L_7a63a
	.4byte	.L_7a63a
	.4byte	.L_7a634
	.4byte	.L_7a662
	.4byte	.L_7a634
	.4byte	.L_7a634
	.4byte	.L_7a662
	.4byte	.L_7a634
	.4byte	.L_7a646
	.4byte	.L_7a662
	.4byte	.L_7a646
	.4byte	.L_7a662
	.4byte	.L_7a64c
	.4byte	.L_7a662
	.4byte	.L_7a64c
	.4byte	.L_7a662
	.4byte	.L_7a662
	.4byte	.L_7a662
	.4byte	.L_7a662
	.4byte	.L_7a662
	.4byte	.L_7a652
	.4byte	.L_7a652
	.4byte	.L_7a652
	.4byte	.L_7a652
	.4byte	.L_7a652
	.4byte	.L_7a652
	.4byte	.L_7a652
	.4byte	.L_7a662
	.4byte	.L_7a658
	.4byte	.L_7a658
	.4byte	.L_7a658
	.4byte	.L_7a658
	.4byte	.L_7a662
	.4byte	.L_7a65e
	.4byte	.L_7a65e
	.4byte	.L_7a65e
	.4byte	.L_7a65e
.L_7a634:
	bl	func_8080144
	b	.L_7a662
.L_7a63a:
	bl	func_807F838
	b	.L_7a662
.L_7a640:
	bl	func_807B758
	b	.L_7a662
.L_7a646:
	bl	func_8081FF4
	b	.L_7a662
.L_7a64c:
	bl	func_8083750
	b	.L_7a662
.L_7a652:
	bl	func_8085D68
	b	.L_7a662
.L_7a658:
	bl	func_80865A4
	b	.L_7a662
.L_7a65e:
	bl	func_8087388
.L_7a662:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_807A668
func_807A668:
	push	{lr}
	bl	m4aSoundVSync
	ldr	r1, .L_7a6a0
	ldr	r0, .L_7a6a4
	str	r0, [r1, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_7a6a8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #128	@ 0x80
	ldr	r0, .L_7a6ac
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	ldr	r0, .L_7a6b0
	ldrh	r0, [r0, #0]
	sub	r0, #16
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #12
	bhi	.L_7a6fc
	lsl	r0, r0, #2
	ldr	r1, .L_7a6b4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_7a6a0:
	.4byte	0x40000D4
.L_7a6a4:
	.4byte	gOamBuffer
.L_7a6a8:
	.4byte	0x84000100
.L_7a6ac:
	.4byte	gBldy
.L_7a6b0:
	.4byte	gSubGameMode
.L_7a6b4:
	.4byte	.L_7a6b8
.L_7a6b8:
	.4byte	.L_7a6ec
	.4byte	.L_7a6fc
	.4byte	.L_7a6fc
	.4byte	.L_7a6ec
	.4byte	.L_7a6fc
	.4byte	.L_7a6fc
	.4byte	.L_7a6f2
	.4byte	.L_7a6fc
	.4byte	.L_7a6f2
	.4byte	.L_7a6fc
	.4byte	.L_7a6f8
	.4byte	.L_7a6fc
	.4byte	.L_7a6f8
.L_7a6ec:
	bl	func_8080144
	b	.L_7a6fc
.L_7a6f2:
	bl	func_8081FF4
	b	.L_7a6fc
.L_7a6f8:
	bl	func_8083750
.L_7a6fc:
	pop	{r0}
	bx	r0


thumb_func_start func_807A700
func_807A700:
	push	{r4, r5, lr}
	ldr	r0, .L_7a710
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_7a714
	mov	r0, #1
	b	.L_7a81e
	.align	2, 0
.L_7a710:
	.4byte	gUnk_3003C08
.L_7a714:
	ldr	r5, .L_7a78c
	ldr	r3, .L_7a790
	ldr	r0, .L_7a794
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_7a798
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldr	r0, [r1, #0]
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #50	@ 0x32
	beq	.L_7a81c
	ldr	r4, .L_7a79c
	mov	r1, #0
	ldrsb	r1, [r5, r1]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r3, r0, #2
	add	r0, r4, #1
	add	r0, r3, r0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_7a81c
	ldr	r1, .L_7a7a0
	add	r0, r3, r4
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	ldr	r0, .L_7a7a4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_7a7ac
	ldr	r2, .L_7a7a8
	add	r0, r4, #0
	add	r0, #8
	add	r0, r3, r0
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #0]
	mov	r1, #0
	ldrsb	r1, [r5, r1]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r1, r4, #7
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #1]
	mov	r1, #0
	ldrsb	r1, [r5, r1]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r1, r4, #6
	b	.L_7a80e
	.align	2, 0
.L_7a78c:
	.4byte	gCurrentStageID
.L_7a790:
	.4byte	sUnk_86391C4
.L_7a794:
	.4byte	gCurrentStageNumber
.L_7a798:
	.4byte	gCurrentPassage
.L_7a79c:
	.4byte	sUnk_8639068
.L_7a7a0:
	.4byte	gUnk_3000023
.L_7a7a4:
	.4byte	gDifficulty
.L_7a7a8:
	.4byte	gUnk_3000BF0
.L_7a7ac:
	cmp	r0, #1
	bne	.L_7a7e0
	ldr	r2, .L_7a7dc
	add	r0, r4, #5
	add	r0, r3, r0
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #0]
	mov	r1, #0
	ldrsb	r1, [r5, r1]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r1, r4, #4
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #1]
	mov	r1, #0
	ldrsb	r1, [r5, r1]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r1, r4, #3
	b	.L_7a80e
	.align	2, 0
.L_7a7dc:
	.4byte	gUnk_3000BF0
.L_7a7e0:
	ldr	r2, .L_7a818
	add	r0, r4, #0
	add	r0, #11
	add	r0, r3, r0
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #0]
	mov	r1, #0
	ldrsb	r1, [r5, r1]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r1, r4, #0
	add	r1, #10
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #1]
	mov	r1, #0
	ldrsb	r1, [r5, r1]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r1, r4, #0
	add	r1, #9
.L_7a80e:
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #2]
	mov	r0, #1
	b	.L_7a81e
.L_7a818:
	.4byte	gUnk_3000BF0
.L_7a81c:
	mov	r0, #0
.L_7a81e:
	pop	{r4, r5}
	pop	{r1}
	bx	r1


thumb_func_start func_807A824
func_807A824:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r6, r2, #0
	ldr	r1, .L_7aa1c
	bl	__divsi3
	mov	r1, #10
	bl	__modsi3
	add	r7, r0, #0
	mov	r1, #250	@ 0xfa
	lsl	r1, r1, #2
	add	r0, r4, #0
	bl	__divsi3
	mov	r1, #10
	bl	__modsi3
	mov	sl, r0
	add	r0, r4, #0
	mov	r1, #100	@ 0x64
	bl	__divsi3
	mov	r1, #10
	bl	__modsi3
	mov	r9, r0
	add	r0, r4, #0
	mov	r1, #10
	bl	__divsi3
	mov	r1, #10
	bl	__modsi3
	mov	r8, r0
	add	r0, r4, #0
	mov	r1, #10
	bl	__modsi3
	add	r4, r0, #0
	ldr	r1, .L_7aa20
	lsl	r0, r7, #5
	add	r0, r5, r0
	str	r0, [r1, #0]
	mov	r2, #192	@ 0xc0
	lsl	r2, r2, #19
	add	r0, r6, r2
	str	r0, [r1, #4]
	ldr	r0, .L_7aa24
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7a8a6
.L_7a89e:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7a89e
.L_7a8a6:
	ldr	r1, .L_7aa20
	lsl	r0, r7, #5
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #3
	add	r0, r0, r7
	add	r0, r5, r0
	str	r0, [r1, #0]
	ldr	r2, .L_7aa28
	add	r0, r6, r2
	str	r0, [r1, #4]
	ldr	r0, .L_7aa24
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	mov	r7, sl
	lsl	r3, r7, #5
	mov	r7, r9
	lsl	r7, r7, #5
	mov	r9, r7
	mov	r7, r8
	lsl	r7, r7, #5
	mov	r8, r7
	lsl	r4, r4, #5
	cmp	r0, #0
	bge	.L_7a8e4
.L_7a8dc:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7a8dc
.L_7a8e4:
	ldr	r1, .L_7aa20
	add	r0, r5, r3
	str	r0, [r1, #0]
	ldr	r2, .L_7aa2c
	add	r0, r6, r2
	str	r0, [r1, #4]
	ldr	r0, .L_7aa24
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7a908
.L_7a900:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7a900
.L_7a908:
	ldr	r1, .L_7aa20
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #3
	add	r0, r3, r7
	add	r0, r5, r0
	str	r0, [r1, #0]
	ldr	r2, .L_7aa30
	add	r0, r6, r2
	str	r0, [r1, #4]
	ldr	r0, .L_7aa24
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7a932
.L_7a92a:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7a92a
.L_7a932:
	ldr	r1, .L_7aa20
	mov	r7, r9
	add	r0, r5, r7
	str	r0, [r1, #0]
	ldr	r2, .L_7aa34
	add	r0, r6, r2
	str	r0, [r1, #4]
	ldr	r0, .L_7aa24
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7a958
.L_7a950:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7a950
.L_7a958:
	ldr	r1, .L_7aa20
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #3
	add	r0, r9
	add	r0, r5, r0
	str	r0, [r1, #0]
	ldr	r7, .L_7aa38
	add	r0, r6, r7
	str	r0, [r1, #4]
	ldr	r0, .L_7aa24
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7a982
.L_7a97a:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7a97a
.L_7a982:
	ldr	r1, .L_7aa20
	mov	r2, r8
	add	r0, r5, r2
	str	r0, [r1, #0]
	ldr	r7, .L_7aa3c
	add	r0, r6, r7
	str	r0, [r1, #4]
	ldr	r0, .L_7aa24
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7a9a8
.L_7a9a0:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7a9a0
.L_7a9a8:
	ldr	r1, .L_7aa20
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #3
	add	r0, r8
	add	r0, r5, r0
	str	r0, [r1, #0]
	ldr	r2, .L_7aa40
	add	r0, r6, r2
	str	r0, [r1, #4]
	ldr	r0, .L_7aa24
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7a9d2
.L_7a9ca:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7a9ca
.L_7a9d2:
	ldr	r1, .L_7aa20
	add	r0, r5, r4
	str	r0, [r1, #0]
	ldr	r7, .L_7aa44
	add	r0, r6, r7
	str	r0, [r1, #4]
	ldr	r0, .L_7aa24
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7a9f6
.L_7a9ee:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7a9ee
.L_7a9f6:
	ldr	r1, .L_7aa20
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r4, r2
	add	r0, r5, r0
	str	r0, [r1, #0]
	ldr	r7, .L_7aa48
	add	r0, r6, r7
	str	r0, [r1, #4]
	ldr	r0, .L_7aa24
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_7aa1c:
	.4byte	0x2710
.L_7aa20:
	.4byte	0x40000D4
.L_7aa24:
	.4byte	0x80000010
.L_7aa28:
	.4byte	0x6000400
.L_7aa2c:
	.4byte	0x6000020
.L_7aa30:
	.4byte	0x6000420
.L_7aa34:
	.4byte	0x6000040
.L_7aa38:
	.4byte	0x6000440
.L_7aa3c:
	.4byte	0x6000060
.L_7aa40:
	.4byte	0x6000460
.L_7aa44:
	.4byte	0x6000080
.L_7aa48:
	.4byte	0x6000480


thumb_func_start func_807AA4C
func_807AA4C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	r5, r0, #0
	add	r6, r1, #0
	add	r7, r2, #0
	ldr	r1, .L_7ab70
	bl	__divsi3
	mov	r1, #10
	bl	__modsi3
	add	r4, r0, #0
	mov	r1, #250	@ 0xfa
	lsl	r1, r1, #2
	add	r0, r5, #0
	bl	__divsi3
	mov	r1, #10
	bl	__modsi3
	mov	r9, r0
	add	r0, r5, #0
	mov	r1, #100	@ 0x64
	bl	__divsi3
	mov	r1, #10
	bl	__modsi3
	mov	sl, r0
	add	r0, r5, #0
	mov	r1, #10
	bl	__divsi3
	mov	r1, #10
	bl	__modsi3
	mov	r8, r0
	add	r0, r5, #0
	mov	r1, #10
	bl	__modsi3
	mov	ip, r0
	ldr	r1, .L_7ab74
	lsl	r4, r4, #5
	add	r4, r6, r4
	str	r4, [r1, #0]
	mov	r2, #192	@ 0xc0
	lsl	r2, r2, #19
	add	r0, r7, r2
	str	r0, [r1, #4]
	ldr	r0, .L_7ab78
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7aace
.L_7aac6:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7aac6
.L_7aace:
	ldr	r1, .L_7ab74
	mov	r4, r9
	lsl	r0, r4, #5
	add	r0, r6, r0
	str	r0, [r1, #0]
	ldr	r5, .L_7ab7c
	add	r0, r7, r5
	str	r0, [r1, #4]
	ldr	r0, .L_7ab78
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	mov	r4, sl
	lsl	r3, r4, #5
	mov	r5, r8
	lsl	r5, r5, #5
	mov	r8, r5
	mov	r5, ip
	lsl	r4, r5, #5
	cmp	r0, #0
	bge	.L_7ab04
.L_7aafc:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7aafc
.L_7ab04:
	ldr	r1, .L_7ab74
	add	r0, r6, r3
	str	r0, [r1, #0]
	ldr	r2, .L_7ab80
	add	r0, r7, r2
	str	r0, [r1, #4]
	ldr	r0, .L_7ab78
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7ab28
.L_7ab20:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7ab20
.L_7ab28:
	ldr	r1, .L_7ab74
	mov	r5, r8
	add	r0, r6, r5
	str	r0, [r1, #0]
	ldr	r2, .L_7ab84
	add	r0, r7, r2
	str	r0, [r1, #4]
	ldr	r0, .L_7ab78
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7ab4e
.L_7ab46:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7ab46
.L_7ab4e:
	ldr	r1, .L_7ab74
	add	r0, r6, r4
	str	r0, [r1, #0]
	ldr	r4, .L_7ab88
	add	r0, r7, r4
	str	r0, [r1, #4]
	ldr	r0, .L_7ab78
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7ab70:
	.4byte	0x2710
.L_7ab74:
	.4byte	0x40000D4
.L_7ab78:
	.4byte	0x80000010
.L_7ab7c:
	.4byte	0x6000020
.L_7ab80:
	.4byte	0x6000040
.L_7ab84:
	.4byte	0x6000060
.L_7ab88:
	.4byte	0x6000080


thumb_func_start DrawMinigameNumber
DrawMinigameNumber:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r6, r2, #0
	mov	r1, #100	@ 0x64
	bl	__divsi3
	mov	r1, #10
	bl	__modsi3
	add	r7, r0, #0
	add	r0, r4, #0
	mov	r1, #10
	bl	__divsi3
	mov	r1, #10
	bl	__modsi3
	mov	r8, r0
	add	r0, r4, #0
	mov	r1, #10
	bl	__modsi3
	add	r4, r0, #0
	ldr	r1, .L_7acb0
	lsl	r0, r7, #5
	add	r0, r5, r0
	str	r0, [r1, #0]
	mov	r2, #192	@ 0xc0
	lsl	r2, r2, #19
	add	r0, r6, r2
	str	r0, [r1, #4]
	ldr	r0, .L_7acb4
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7abe8
.L_7abe0:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7abe0
.L_7abe8:
	ldr	r1, .L_7acb0
	lsl	r0, r7, #5
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #3
	add	r0, r0, r7
	add	r0, r5, r0
	str	r0, [r1, #0]
	ldr	r2, .L_7acb8
	add	r0, r6, r2
	str	r0, [r1, #4]
	ldr	r0, .L_7acb4
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	mov	r7, r8
	lsl	r3, r7, #5
	lsl	r4, r4, #5
	cmp	r0, #0
	bge	.L_7ac1a
.L_7ac12:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7ac12
.L_7ac1a:
	ldr	r1, .L_7acb0
	add	r0, r5, r3
	str	r0, [r1, #0]
	ldr	r2, .L_7acbc
	add	r0, r6, r2
	str	r0, [r1, #4]
	ldr	r0, .L_7acb4
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7ac3e
.L_7ac36:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7ac36
.L_7ac3e:
	ldr	r1, .L_7acb0
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #3
	add	r0, r3, r7
	add	r0, r5, r0
	str	r0, [r1, #0]
	ldr	r2, .L_7acc0
	add	r0, r6, r2
	str	r0, [r1, #4]
	ldr	r0, .L_7acb4
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7ac68
.L_7ac60:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7ac60
.L_7ac68:
	ldr	r1, .L_7acb0
	add	r0, r5, r4
	str	r0, [r1, #0]
	ldr	r7, .L_7acc4
	add	r0, r6, r7
	str	r0, [r1, #4]
	ldr	r0, .L_7acb4
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_7ac8c
.L_7ac84:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_7ac84
.L_7ac8c:
	ldr	r1, .L_7acb0
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r4, r2
	add	r0, r5, r0
	str	r0, [r1, #0]
	ldr	r7, .L_7acc8
	add	r0, r6, r7
	str	r0, [r1, #4]
	ldr	r0, .L_7acb4
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7acb0:
	.4byte	0x40000D4
.L_7acb4:
	.4byte	0x80000010
.L_7acb8:
	.4byte	0x6000400
.L_7acbc:
	.4byte	0x6000020
.L_7acc0:
	.4byte	0x6000420
.L_7acc4:
	.4byte	0x6000040
.L_7acc8:
	.4byte	0x6000440


thumb_func_start func_807ACCC
func_807ACCC:
	ldr	r0, .L_7acd8
	mov	r1, #63	@ 0x3f
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	bx	lr
.L_7acd8:
	.4byte	0x4000048


thumb_func_start func_807ACDC
func_807ACDC:
	push	{lr}
	ldr	r0, .L_7acf4
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #49	@ 0x31
	bls	.L_7acea
	b	.L_7adf8
.L_7acea:
	lsl	r0, r0, #2
	ldr	r1, .L_7acf8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_7acf4:
	.4byte	gSubGameMode
.L_7acf8:
	.4byte	.L_7acfc
.L_7acfc:
	.4byte	.L_7adc4
	.4byte	.L_7adc4
	.4byte	.L_7adc4
	.4byte	.L_7adc4
	.4byte	.L_7adc4
	.4byte	.L_7adf8
	.4byte	.L_7adf8
	.4byte	.L_7adf8
	.4byte	.L_7adca
	.4byte	.L_7adca
	.4byte	.L_7adca
	.4byte	.L_7adca
	.4byte	.L_7adca
	.4byte	.L_7adca
	.4byte	.L_7adca
	.4byte	.L_7add0
	.4byte	.L_7add0
	.4byte	.L_7add0
	.4byte	.L_7add0
	.4byte	.L_7add0
	.4byte	.L_7add0
	.4byte	.L_7add6
	.4byte	.L_7add6
	.4byte	.L_7add6
	.4byte	.L_7add6
	.4byte	.L_7addc
	.4byte	.L_7addc
	.4byte	.L_7addc
	.4byte	.L_7addc
	.4byte	.L_7ade2
	.4byte	.L_7ade2
	.4byte	.L_7ade2
	.4byte	.L_7ade2
	.4byte	.L_7ade8
	.4byte	.L_7ade8
	.4byte	.L_7ade8
	.4byte	.L_7ade8
	.4byte	.L_7ade8
	.4byte	.L_7ade8
	.4byte	.L_7ade8
	.4byte	.L_7adf8
	.4byte	.L_7adee
	.4byte	.L_7adee
	.4byte	.L_7adee
	.4byte	.L_7adee
	.4byte	.L_7adf8
	.4byte	.L_7adf8
	.4byte	.L_7adf4
	.4byte	.L_7adf4
	.4byte	.L_7adf4
.L_7adc4:
	bl	func_807C24C
	b	.L_7adf8
.L_7adca:
	bl	func_807E7B0
	b	.L_7adf8
.L_7add0:
	bl	func_808018C
	b	.L_7adf8
.L_7add6:
	bl	func_8081CE0
	b	.L_7adf8
.L_7addc:
	bl	func_8082F60
	b	.L_7adf8
.L_7ade2:
	bl	func_8083DDC
	b	.L_7adf8
.L_7ade8:
	bl	func_8085580
	b	.L_7adf8
.L_7adee:
	bl	func_8086720
	b	.L_7adf8
.L_7adf4:
	bl	func_8087DB0
.L_7adf8:
	pop	{r0}
	bx	r0
