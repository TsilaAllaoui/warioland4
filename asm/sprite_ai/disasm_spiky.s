.include "macros.s.inc"


thumb_func_start func_80346F4
func_80346F4:
	push	{r4, r5, lr}
	ldr	r4, .L_34750
	mov	r2, #0
	mov	r0, #35	@ 0x23
	strb	r0, [r4, #30]
	add	r1, r4, #0
	add	r1, #32
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #20
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #0]
	ldr	r0, .L_34754
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	mov	r5, #0
	strh	r2, [r4, #20]
	mov	r0, #16
	strb	r0, [r4, #28]
	bl	SpriteUtilTurnTowardWario
	ldrb	r0, [r4, #23]
	cmp	r0, #29
	bne	.L_34758
	mov	r0, #1
	strb	r0, [r4, #27]
	ldrh	r0, [r4, #0]
	mov	r1, #32
	orr	r0, r1
	strh	r0, [r4, #0]
	b	.L_3475a
.L_34750:
	.4byte	gCurrentSprite
.L_34754:
	.4byte	sUnk_83BC570
.L_34758:
	strb	r5, [r4, #27]
.L_3475a:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8034760
func_8034760:
	ldr	r2, .L_3477c
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_34784
	ldr	r0, .L_34780
	ldrb	r0, [r0, #0]
	cmp	r0, #57	@ 0x39
	bhi	.L_3478c
	cmp	r0, #41	@ 0x29
	bls	.L_34790
	mov	r0, #23
	b	.L_3478e
.L_3477c:
	.4byte	gCurrentSprite
.L_34780:
	.4byte	gScreenShakeY
.L_34784:
	ldr	r0, .L_34794
	ldrb	r0, [r0, #0]
	cmp	r0, #41	@ 0x29
	bls	.L_34790
.L_3478c:
	mov	r0, #75	@ 0x4b
.L_3478e:
	strb	r0, [r2, #28]
.L_34790:
	bx	lr
	.align	2, 0
.L_34794:
	.4byte	gScreenShakeY


thumb_func_start func_8034798
func_8034798:
	ldr	r1, .L_347b0
	ldr	r0, .L_347b4
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #35	@ 0x23
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_347b0:
	.4byte	gCurrentSprite
.L_347b4:
	.4byte	sUnk_83BC570


thumb_func_start func_80347B8
func_80347B8:
	push	{r4, r5, r6, r7, lr}
	bl	func_8023B88
	ldr	r0, .L_347e8
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_3481c
	ldr	r3, .L_347ec
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_347f0
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_34804
.L_347e8:
	.4byte	gSpriteCollisionResult
.L_347ec:
	.4byte	gCurrentSprite
.L_347f0:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_34804:
	ldr	r0, .L_34814
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_348d0
	ldr	r1, .L_34818
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_348d4
.L_34814:
	.4byte	gUnk_3000A51
.L_34818:
	.4byte	gCurrentSprite
.L_3481c:
	ldr	r4, .L_3486c
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_34874
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_348d0
	ldrh	r1, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	and	r0, r1
	ldrb	r2, [r6, #0]
	add	r0, r0, r2
	cmp	r0, #63	@ 0x3f
	ble	.L_348d0
	ldrh	r0, [r4, #8]
	add	r1, #28
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_34870
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_348c6
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_348b4
.L_3486c:
	.4byte	gCurrentSprite
.L_34870:
	.4byte	gUnk_3000A51
.L_34874:
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_348d0
	ldrh	r1, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	and	r0, r1
	ldrb	r2, [r6, #0]
	cmp	r0, r2
	bcs	.L_348d0
	ldrh	r0, [r4, #8]
	sub	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_348cc
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_348c6
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_348b4:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_348d0
.L_348c6:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_348d4
.L_348cc:
	.4byte	gUnk_3000A51
.L_348d0:
	bl	func_80263AC
.L_348d4:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80348DC
func_80348DC:
	ldr	r1, .L_348fc
	ldr	r0, .L_34900
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #18
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #15
	strb	r0, [r2, #0]
	mov	r0, #35	@ 0x23
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_348fc:
	.4byte	gCurrentSprite
.L_34900:
	.4byte	sUnk_83BC5E0


thumb_func_start func_8034904
func_8034904:
	push	{lr}
	bl	func_8023B88
	ldr	r0, .L_3491c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_34924
	ldr	r1, .L_34920
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_34964
	.align	2, 0
.L_3491c:
	.4byte	gSpriteCollisionResult
.L_34920:
	.4byte	gCurrentSprite
.L_34924:
	ldr	r2, .L_34958
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_34964
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	bne	.L_34960
	ldr	r0, .L_3495c
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	strb	r0, [r3, #0]
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	b	.L_34964
	.align	2, 0
.L_34958:
	.4byte	gCurrentSprite
.L_3495c:
	.4byte	sUnk_83BC5F8
.L_34960:
	mov	r0, #15
	strb	r0, [r2, #28]
.L_34964:
	pop	{r0}
	bx	r0


thumb_func_start func_8034968
func_8034968:
	ldr	r1, .L_34984
	ldr	r0, .L_34988
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #24
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	strb	r0, [r2, #0]
	mov	r0, #35	@ 0x23
	strb	r0, [r1, #30]
	bx	lr
.L_34984:
	.4byte	gCurrentSprite
.L_34988:
	.4byte	sUnk_83BC6C0


thumb_func_start func_803498C
func_803498C:
	push	{lr}
	bl	func_8034760
	bl	func_8023B88
	ldr	r0, .L_349a8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_349b0
	ldr	r1, .L_349ac
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_349f6
	.align	2, 0
.L_349a8:
	.4byte	gSpriteCollisionResult
.L_349ac:
	.4byte	gCurrentSprite
.L_349b0:
	ldr	r2, .L_349dc
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_349f6
	ldr	r1, .L_349e0
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_349e4
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_349f2
	mov	r0, #15
	b	.L_349f4
	.align	2, 0
.L_349dc:
	.4byte	gCurrentSprite
.L_349e0:
	.4byte	gWarioData
.L_349e4:
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_349f2
	mov	r0, #15
	b	.L_349f4
.L_349f2:
	mov	r0, #17
.L_349f4:
	strb	r0, [r2, #28]
.L_349f6:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80349FC
func_80349FC:
	ldr	r0, .L_34a18
	ldr	r1, .L_34a1c
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #42	@ 0x2a
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_34a18:
	.4byte	gCurrentSprite
.L_34a1c:
	.4byte	sUnk_83BC670


thumb_func_start func_8034A20
func_8034A20:
	push	{r4, r5, lr}
	ldr	r0, .L_34a50
	add	r5, r0, #0
	add	r5, #39	@ 0x27
	ldrb	r2, [r5, #0]
	add	r1, r2, #0
	add	r4, r0, #0
	cmp	r2, #34	@ 0x22
	bls	.L_34a58
	bl	func_8023B88
	ldr	r0, .L_34a54
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_34a42
	mov	r0, #29
	strb	r0, [r4, #28]
.L_34a42:
	bl	func_80238E8
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	b	.L_34abe
	.align	2, 0
.L_34a50:
	.4byte	gCurrentSprite
.L_34a54:
	.4byte	gSpriteCollisionResult
.L_34a58:
	cmp	r2, #13
	bhi	.L_34a86
	bl	func_8023B88
	ldr	r0, .L_34a6c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_34a70
	mov	r0, #27
	b	.L_34a7e
.L_34a6c:
	.4byte	gSpriteCollisionResult
.L_34a70:
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_34abe
	mov	r0, #23
.L_34a7e:
	strb	r0, [r4, #28]
	bl	func_8034760
	b	.L_34abe
.L_34a86:
	cmp	r2, #34	@ 0x22
	bne	.L_34a90
	ldrh	r0, [r4, #8]
	sub	r0, #24
	b	.L_34ab2
.L_34a90:
	cmp	r2, #30
	bne	.L_34a9a
	ldrh	r0, [r4, #8]
	sub	r0, #24
	b	.L_34ab2
.L_34a9a:
	cmp	r2, #22
	bne	.L_34aaa
	ldrh	r0, [r4, #8]
	add	r0, #24
	strh	r0, [r4, #8]
	mov	r0, #35	@ 0x23
	strb	r0, [r4, #30]
	b	.L_34ab4
.L_34aaa:
	cmp	r1, #18
	bne	.L_34ab4
	ldrh	r0, [r4, #8]
	add	r0, #24
.L_34ab2:
	strh	r0, [r4, #8]
.L_34ab4:
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
.L_34abe:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_8034AC4
func_8034AC4:
	ldr	r0, .L_34adc
	ldr	r1, .L_34ae0
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
.L_34adc:
	.4byte	gCurrentSprite
.L_34ae0:
	.4byte	sUnk_83BC5A8


thumb_func_start func_8034AE4
func_8034AE4:
	ldr	r1, .L_34b04
	ldr	r0, .L_34b08
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
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_34b04:
	.4byte	gCurrentSprite
.L_34b08:
	.4byte	sUnk_83BC6E0


thumb_func_start func_8034B0C
func_8034B0C:
	push	{r4, lr}
	ldr	r2, .L_34b38
	ldr	r0, .L_34b3c
	str	r0, [r2, #4]
	mov	r1, #0
	strb	r1, [r2, #22]
	mov	r0, #0
	strh	r1, [r2, #20]
	strb	r0, [r2, #29]
	add	r1, r2, #0
	add	r1, #42	@ 0x2a
	strb	r0, [r1, #0]
	strb	r0, [r2, #26]
	ldrb	r0, [r2, #23]
	add	r4, r2, #0
	cmp	r0, #29
	bne	.L_34b40
	mov	r3, #30
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #4
	b	.L_34b48
.L_34b38:
	.4byte	gCurrentSprite
.L_34b3c:
	.4byte	sUnk_83BC730
.L_34b40:
	mov	r3, #10
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
.L_34b48:
	strb	r0, [r1, #0]
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	bl	func_807687C
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r4, #0]
	ldr	r0, .L_34b88
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldr	r1, .L_34b8c
	ldr	r0, .L_34b90
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
.L_34b88:
	.4byte	0xFEFF
.L_34b8c:
	.4byte	gPersistentSpriteData
.L_34b90:
	.4byte	gCurrentRoom


thumb_func_start func_8034B94
func_8034B94:
	push	{lr}
	ldr	r1, .L_34ba4
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8034B0C
	pop	{r0}
	bx	r0
.L_34ba4:
	.4byte	gCurrentSprite


thumb_func_start func_8034BA8
func_8034BA8:
	push	{lr}
	ldr	r1, .L_34bb8
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8034B0C
	pop	{r0}
	bx	r0
.L_34bb8:
	.4byte	gCurrentSprite


thumb_func_start func_8034BBC
func_8034BBC:
	push	{r4, lr}
	ldr	r2, .L_34be8
	ldr	r0, .L_34bec
	str	r0, [r2, #4]
	mov	r1, #0
	strb	r1, [r2, #22]
	mov	r0, #0
	strh	r1, [r2, #20]
	strb	r0, [r2, #29]
	add	r1, r2, #0
	add	r1, #42	@ 0x2a
	strb	r0, [r1, #0]
	strb	r0, [r2, #26]
	ldrb	r0, [r2, #23]
	add	r4, r2, #0
	cmp	r0, #29
	bne	.L_34bf0
	mov	r3, #30
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #3
	b	.L_34bf8
.L_34be8:
	.4byte	gCurrentSprite
.L_34bec:
	.4byte	sUnk_83BC730
.L_34bf0:
	mov	r3, #10
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #7
.L_34bf8:
	strb	r0, [r1, #0]
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	bl	func_807687C
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldr	r1, .L_34c28
	ldr	r0, .L_34c2c
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
.L_34c28:
	.4byte	gPersistentSpriteData
.L_34c2c:
	.4byte	gCurrentRoom


thumb_func_start func_8034C30
func_8034C30:
	push	{lr}
	ldr	r1, .L_34c40
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8034BBC
	pop	{r0}
	bx	r0
.L_34c40:
	.4byte	gCurrentSprite


thumb_func_start func_8034C44
func_8034C44:
	push	{lr}
	ldr	r1, .L_34c54
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8034BBC
	pop	{r0}
	bx	r0
.L_34c54:
	.4byte	gCurrentSprite


thumb_func_start func_8034C58
func_8034C58:
	ldr	r2, .L_34c88
	ldr	r0, .L_34c8c
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
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_34c90
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #6
	b	.L_34c96
	.align	2, 0
.L_34c88:
	.4byte	gCurrentSprite
.L_34c8c:
	.4byte	sUnk_83BC718
.L_34c90:
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
.L_34c96:
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0


thumb_func_start func_8034C9C
func_8034C9C:
	push	{lr}
	ldr	r1, .L_34cac
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_8034C58
	pop	{r0}
	bx	r0
.L_34cac:
	.4byte	gCurrentSprite


thumb_func_start func_8034CB0
func_8034CB0:
	push	{lr}
	ldr	r1, .L_34cc0
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_8034C58
	pop	{r0}
	bx	r0
.L_34cc0:
	.4byte	gCurrentSprite


thumb_func_start func_8034CC4
func_8034CC4:
	ldr	r2, .L_34cf4
	ldr	r0, .L_34cf8
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
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_34cfc
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #6
	b	.L_34d02
	.align	2, 0
.L_34cf4:
	.4byte	gCurrentSprite
.L_34cf8:
	.4byte	sUnk_83BC718
.L_34cfc:
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
.L_34d02:
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0


thumb_func_start func_8034D08
func_8034D08:
	push	{lr}
	ldr	r1, .L_34d18
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #28]
	bl	func_8034CC4
	pop	{r0}
	bx	r0
.L_34d18:
	.4byte	gCurrentSprite


thumb_func_start func_8034D1C
func_8034D1C:
	push	{lr}
	ldr	r1, .L_34d2c
	mov	r0, #42	@ 0x2a
	strb	r0, [r1, #28]
	bl	func_8034CC4
	pop	{r0}
	bx	r0
.L_34d2c:
	.4byte	gCurrentSprite


thumb_func_start func_8034D30
func_8034D30:
	ldr	r1, .L_34d4c
	ldr	r0, .L_34d50
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	mov	r2, #0
	strh	r0, [r1, #20]
	add	r0, r1, #0
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #30]
	bx	lr
	.align	2, 0
.L_34d4c:
	.4byte	gCurrentSprite
.L_34d50:
	.4byte	sUnk_83BC6E0


thumb_func_start func_8034D54
func_8034D54:
	push	{lr}
	ldr	r1, .L_34d64
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_8034D30
	pop	{r0}
	bx	r0
.L_34d64:
	.4byte	gCurrentSprite


thumb_func_start func_8034D68
func_8034D68:
	push	{lr}
	ldr	r1, .L_34d78
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_8034D30
	pop	{r0}
	bx	r0
.L_34d78:
	.4byte	gCurrentSprite


thumb_func_start func_8034D7C
func_8034D7C:
	push	{r4, lr}
	ldr	r4, .L_34dd0
	ldr	r0, .L_34dd4
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #7
	strb	r0, [r1, #0]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_34dd8
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldrb	r0, [r4, #23]
	mov	r3, #10
	cmp	r0, #29
	bne	.L_34db0
	mov	r3, #30
.L_34db0:
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	bl	func_807687C
	ldr	r1, .L_34ddc
	ldr	r0, .L_34de0
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
.L_34dd0:
	.4byte	gCurrentSprite
.L_34dd4:
	.4byte	sUnk_83BC730
.L_34dd8:
	.4byte	0xFEFF
.L_34ddc:
	.4byte	gPersistentSpriteData
.L_34de0:
	.4byte	gCurrentRoom


thumb_func_start func_8034DE4
func_8034DE4:
	push	{r4, lr}
	ldr	r4, .L_34e18
	ldrb	r0, [r4, #23]
	mov	r3, #10
	cmp	r0, #29
	bne	.L_34df2
	mov	r3, #30
.L_34df2:
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	bl	func_807687C
	bl	SpriteUtilDie
	ldr	r1, .L_34e1c
	ldr	r0, .L_34e20
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
.L_34e18:
	.4byte	gCurrentSprite
.L_34e1c:
	.4byte	gPersistentSpriteData
.L_34e20:
	.4byte	gCurrentRoom


thumb_func_start func_8034E24
func_8034E24:
	ldr	r2, .L_34e5c
	ldr	r0, .L_34e60
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	mov	r0, #4
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrb	r0, [r2, #30]
	cmp	r0, #36	@ 0x24
	beq	.L_34e4a
	mov	r0, #36	@ 0x24
	strb	r0, [r2, #30]
.L_34e4a:
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_34e64
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #6
	b	.L_34e6a
.L_34e5c:
	.4byte	gCurrentSprite
.L_34e60:
	.4byte	sUnk_83BC6E0
.L_34e64:
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
.L_34e6a:
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0


thumb_func_start func_8034E70
func_8034E70:
	push	{lr}
	ldr	r1, .L_34e80
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8034E24
	pop	{r0}
	bx	r0
.L_34e80:
	.4byte	gCurrentSprite


thumb_func_start func_8034E84
func_8034E84:
	push	{lr}
	ldr	r1, .L_34e94
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8034E24
	pop	{r0}
	bx	r0
.L_34e94:
	.4byte	gCurrentSprite


thumb_func_start func_8034E98
func_8034E98:
	ldr	r2, .L_34ec4
	ldr	r0, .L_34ec8
	str	r0, [r2, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r2, #20]
	strb	r1, [r2, #22]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	mov	r0, #36	@ 0x24
	strb	r0, [r2, #30]
	ldrh	r1, [r2, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_34ecc
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #6
	b	.L_34ed2
	.align	2, 0
.L_34ec4:
	.4byte	gCurrentSprite
.L_34ec8:
	.4byte	sUnk_83BC6E0
.L_34ecc:
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
.L_34ed2:
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0


thumb_func_start func_8034ED8
func_8034ED8:
	push	{lr}
	ldr	r1, .L_34ee8
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_8034E98
	pop	{r0}
	bx	r0
.L_34ee8:
	.4byte	gCurrentSprite


thumb_func_start func_8034EEC
func_8034EEC:
	push	{lr}
	ldr	r1, .L_34efc
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_8034E98
	pop	{r0}
	bx	r0
.L_34efc:
	.4byte	gCurrentSprite


thumb_func_start func_8034F00
func_8034F00:
	ldr	r0, .L_34f1c
	ldr	r1, .L_34f20
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #76	@ 0x4c
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #49	@ 0x31
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_34f1c:
	.4byte	gCurrentSprite
.L_34f20:
	.4byte	sUnk_83BC618


thumb_func_start func_8034F24
func_8034F24:
	ldr	r1, .L_34f4c
	add	r3, r1, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	beq	.L_34f74
	ldrb	r0, [r3, #0]
	add	r2, r0, #0
	cmp	r0, #38	@ 0x26
	beq	.L_34f44
	cmp	r0, #33	@ 0x21
	bne	.L_34f50
.L_34f44:
	ldrh	r0, [r1, #8]
	sub	r0, #16
	strh	r0, [r1, #8]
	b	.L_34f82
.L_34f4c:
	.4byte	gCurrentSprite
.L_34f50:
	cmp	r0, #29
	bne	.L_34f60
	ldrh	r0, [r1, #8]
	sub	r0, #16
	strh	r0, [r1, #8]
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #30]
	b	.L_34f82
.L_34f60:
	cmp	r0, #24
	beq	.L_34f6c
	cmp	r0, #20
	beq	.L_34f6c
	cmp	r2, #15
	bne	.L_34f82
.L_34f6c:
	ldrh	r0, [r1, #8]
	add	r0, #16
	strh	r0, [r1, #8]
	b	.L_34f82
.L_34f74:
	ldr	r0, .L_34f84
	str	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #20]
	strb	r0, [r1, #22]
	mov	r0, #47	@ 0x2f
	strb	r0, [r1, #28]
.L_34f82:
	bx	lr
.L_34f84:
	.4byte	sUnk_83BC6E0


thumb_func_start SpriteSpiky
SpriteSpiky:
	push	{lr}
	ldr	r2, .L_34fb0
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_34f9c
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_34f9c:
	ldrb	r0, [r2, #28]
	cmp	r0, #106	@ 0x6a
	bls	.L_34fa4
	b	.L_352a8
.L_34fa4:
	lsl	r0, r0, #2
	ldr	r1, .L_34fb4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_34fb0:
	.4byte	gCurrentSprite
.L_34fb4:
	.4byte	.L_34fb8
.L_34fb8:
	.4byte	.L_35164
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_3516a
	.4byte	.L_3516e
	.4byte	.L_35178
	.4byte	.L_3517c
	.4byte	.L_352a8
	.4byte	.L_3517c
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_35186
	.4byte	.L_3518a
	.4byte	.L_35190
	.4byte	.L_35194
	.4byte	.L_3519a
	.4byte	.L_3519e
	.4byte	.L_351a4
	.4byte	.L_351a8
	.4byte	.L_351ae
	.4byte	.L_351b2
	.4byte	.L_351b8
	.4byte	.L_351bc
	.4byte	.L_351c2
	.4byte	.L_351ee
	.4byte	.L_351ce
	.4byte	.L_3520c
	.4byte	.L_351da
	.4byte	.L_351ee
	.4byte	.L_351f8
	.4byte	.L_3520c
	.4byte	.L_35216
	.4byte	.L_3521a
	.4byte	.L_35220
	.4byte	.L_35224
	.4byte	.L_3522a
	.4byte	.L_3522e
	.4byte	.L_35234
	.4byte	.L_35238
	.4byte	.L_351e0
	.4byte	.L_351e4
	.4byte	.L_351fe
	.4byte	.L_35202
	.4byte	.L_3523e
	.4byte	.L_35242
	.4byte	.L_35248
	.4byte	.L_35202
	.4byte	.L_3524e
	.4byte	.L_35252
	.4byte	.L_35258
	.4byte	.L_3525c
	.4byte	.L_35262
	.4byte	.L_351e4
	.4byte	.L_35268
	.4byte	.L_3526c
	.4byte	.L_35272
	.4byte	.L_35282
	.4byte	.L_35278
	.4byte	.L_3528c
	.4byte	.L_3527e
	.4byte	.L_35282
	.4byte	.L_35288
	.4byte	.L_3528c
	.4byte	.L_35292
	.4byte	.L_35296
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_351ae
	.4byte	.L_351b8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_352a8
	.4byte	.L_3529c
	.4byte	.L_352a2
.L_35164:
	bl	func_80346F4
	b	.L_352ac
.L_3516a:
	bl	func_8034798
.L_3516e:
	bl	func_80347B8
	bl	func_8034760
	b	.L_352ac
.L_35178:
	bl	func_80348DC
.L_3517c:
	bl	func_8034904
	bl	func_8034760
	b	.L_352ac
.L_35186:
	bl	func_8034968
.L_3518a:
	bl	func_803498C
	b	.L_352ac
.L_35190:
	bl	func_80349FC
.L_35194:
	bl	func_8034A20
	b	.L_352ac
.L_3519a:
	bl	func_8034AC4
.L_3519e:
	bl	func_8023D48
	b	.L_352ac
.L_351a4:
	bl	func_8034AE4
.L_351a8:
	bl	func_8023EE0
	b	.L_352ac
.L_351ae:
	bl	func_8034B94
.L_351b2:
	bl	SpriteUtilFallOffscreenRight
	b	.L_352ac
.L_351b8:
	bl	func_8034BA8
.L_351bc:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_352ac
.L_351c2:
	ldrb	r0, [r2, #30]
	cmp	r0, #36	@ 0x24
	beq	.L_351e0
	bl	func_8034C9C
	b	.L_351ee
.L_351ce:
	ldrb	r0, [r2, #30]
	cmp	r0, #36	@ 0x24
	beq	.L_351fe
	bl	func_8034CB0
	b	.L_3520c
.L_351da:
	ldrb	r0, [r2, #30]
	cmp	r0, #36	@ 0x24
	bne	.L_351ea
.L_351e0:
	bl	func_8034E70
.L_351e4:
	bl	func_8024988
	b	.L_352ac
.L_351ea:
	bl	func_8034D08
.L_351ee:
	bl	SpriteUtilPushedRight
	bl	func_8034760
	b	.L_352ac
.L_351f8:
	ldrb	r0, [r2, #30]
	cmp	r0, #36	@ 0x24
	bne	.L_35208
.L_351fe:
	bl	func_8034E84
.L_35202:
	bl	func_802476C
	b	.L_352ac
.L_35208:
	bl	func_8034D1C
.L_3520c:
	bl	SpriteUtilPushedLeft
	bl	func_8034760
	b	.L_352ac
.L_35216:
	bl	func_8034D54
.L_3521a:
	bl	func_8024478
	b	.L_352ac
.L_35220:
	bl	func_8034D68
.L_35224:
	bl	func_802449C
	b	.L_352ac
.L_3522a:
	bl	func_80244C0
.L_3522e:
	bl	func_80244E0
	b	.L_352ac
.L_35234:
	bl	func_8034D7C
.L_35238:
	bl	SpriteUtilDieAfterDelay
	b	.L_352ac
.L_3523e:
	bl	func_8024688
.L_35242:
	bl	func_80246B8
	b	.L_352ac
.L_35248:
	bl	func_802473C
	b	.L_35202
.L_3524e:
	bl	func_80247F0
.L_35252:
	bl	func_8024820
	b	.L_352ac
.L_35258:
	bl	func_80248A4
.L_3525c:
	bl	func_80248D4
	b	.L_352ac
.L_35262:
	bl	func_8024958
	b	.L_351e4
.L_35268:
	bl	func_8024A0C
.L_3526c:
	bl	func_8024A3C
	b	.L_352ac
.L_35272:
	bl	func_8024AC0
	b	.L_35282
.L_35278:
	bl	func_8024BEC
	b	.L_3528c
.L_3527e:
	bl	func_8034ED8
.L_35282:
	bl	func_8024AD4
	b	.L_352ac
.L_35288:
	bl	func_8034EEC
.L_3528c:
	bl	func_8024C00
	b	.L_352ac
.L_35292:
	bl	func_8034F00
.L_35296:
	bl	func_8034F24
	b	.L_352ac
.L_3529c:
	bl	func_8034C44
	b	.L_352ac
.L_352a2:
	bl	func_8034C30
	b	.L_352ac
.L_352a8:
	bl	func_8034DE4
.L_352ac:
	pop	{r0}
	bx	r0
