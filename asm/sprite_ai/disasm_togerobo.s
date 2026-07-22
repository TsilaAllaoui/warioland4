.include "macros.s.inc"


thumb_func_start func_8035668
func_8035668:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r4, .L_35698
	ldrh	r1, [r4, #0]
	mov	r6, #64	@ 0x40
	add	r0, r6, #0
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L_3569c
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #60	@ 0x3c
	ldrh	r0, [r4, #10]
	add	r0, #32
	str	r0, [sp, #0]
	str	r6, [sp, #4]
	mov	r0, #156	@ 0x9c
	bl	func_801E3A8
	b	.L_356b2
	.align	2, 0
.L_35698:
	.4byte	gCurrentSprite
.L_3569c:
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	ldrh	r3, [r4, #8]
	sub	r3, #60	@ 0x3c
	ldrh	r0, [r4, #10]
	sub	r0, #32
	str	r0, [sp, #0]
	str	r5, [sp, #4]
	mov	r0, #156	@ 0x9c
	bl	func_801E3A8
.L_356b2:
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80356BC
func_80356BC:
	ldr	r2, .L_356d8
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_356dc
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #48	@ 0x30
	b	.L_356e8
	.align	2, 0
.L_356d8:
	.4byte	gCurrentSprite
.L_356dc:
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #28
.L_356e8:
	strb	r0, [r1, #0]
	bx	lr


thumb_func_start func_80356EC
func_80356EC:
	push	{lr}
	ldr	r1, .L_35724
	ldr	r0, .L_35728
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #5
	strb	r0, [r1, #30]
	add	r2, r1, #0
	add	r2, #37	@ 0x25
	mov	r0, #32
	strb	r0, [r2, #0]
	add	r2, #1
	mov	r0, #28
	strb	r0, [r2, #0]
	ldrb	r0, [r1, #29]
	cmp	r0, #2
	bne	.L_35720
	mov	r0, #1
	strb	r0, [r1, #29]
	add	r1, #35	@ 0x23
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	bl	func_8035668
.L_35720:
	pop	{r0}
	bx	r0
.L_35724:
	.4byte	gCurrentSprite
.L_35728:
	.4byte	sUnk_83BD04C


thumb_func_start func_803572C
func_803572C:
	push	{r4, lr}
	ldr	r2, .L_35774
	ldrh	r1, [r2, #0]
	mov	r0, #32
	mov	r4, #0
	add	r3, r0, #0
	orr	r3, r1
	strh	r3, [r2, #0]
	add	r1, r2, #0
	add	r1, #32
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	add	r0, r2, #0
	add	r0, #33	@ 0x21
	strb	r4, [r0, #0]
	add	r1, #2
	mov	r0, #20
	strb	r0, [r1, #0]
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r4, [r0, #0]
	add	r1, #1
	mov	r0, #112	@ 0x70
	strb	r0, [r1, #0]
	mov	r0, #2
	strb	r0, [r2, #29]
	mov	r0, #37	@ 0x25
	strb	r0, [r2, #30]
	ldr	r1, .L_35778
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_35780
	ldr	r0, .L_3577c
	and	r3, r0
	b	.L_35784
.L_35774:
	.4byte	gCurrentSprite
.L_35778:
	.4byte	gWarioData
.L_3577c:
	.4byte	0xFFBF
.L_35780:
	mov	r0, #64	@ 0x40
	orr	r3, r0
.L_35784:
	strh	r3, [r2, #0]
	bl	func_80356BC
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8035790
func_8035790:
	ldr	r0, .L_357b0
	ldr	r1, .L_357b4
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #16
	strb	r1, [r0, #28]
	add	r2, r0, #0
	add	r2, #39	@ 0x27
	mov	r1, #62	@ 0x3e
	strb	r1, [r2, #0]
	add	r0, #40	@ 0x28
	mov	r1, #50	@ 0x32
	strb	r1, [r0, #0]
	bx	lr
.L_357b0:
	.4byte	gCurrentSprite
.L_357b4:
	.4byte	sUnk_83BCF4C


thumb_func_start func_80357B8
func_80357B8:
	push	{r4, r5, r6, r7, lr}
	mov	r1, #200	@ 0xc8
	lsl	r1, r1, #1
	mov	r0, #127	@ 0x7f
	bl	SpriteUtilWaitCheckWarioNearbyLeftRight
	add	r5, r0, #0
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_357f8
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_3582c
	ldr	r3, .L_357fc
	ldrh	r1, [r3, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_35800
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #37	@ 0x25
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	sub	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	b	.L_35814
.L_357f8:
	.4byte	gSpriteCollisionResult
.L_357fc:
	.4byte	gCurrentSprite
.L_35800:
	ldrh	r0, [r3, #8]
	add	r1, r3, #0
	add	r1, #38	@ 0x26
	ldrb	r2, [r1, #0]
	ldrh	r1, [r3, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
.L_35814:
	ldr	r0, .L_35824
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_358f0
	ldr	r1, .L_35828
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_35970
.L_35824:
	.4byte	gUnk_3000A51
.L_35828:
	.4byte	gCurrentSprite
.L_3582c:
	ldr	r4, .L_35880
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_35888
	cmp	r5, #8
	beq	.L_3588c
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_358f0
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	and	r0, r2
	add	r6, r4, #0
	add	r6, #38	@ 0x26
	ldrb	r1, [r6, #0]
	add	r0, r0, r1
	cmp	r0, #63	@ 0x3f
	ble	.L_358f0
	ldrh	r0, [r4, #8]
	add	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_35884
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_358e4
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	add	r1, r1, r2
	b	.L_358d2
.L_35880:
	.4byte	gCurrentSprite
.L_35884:
	.4byte	gUnk_3000A51
.L_35888:
	cmp	r5, #4
	bne	.L_35892
.L_3588c:
	mov	r0, #112	@ 0x70
	strb	r0, [r4, #28]
	b	.L_35970
.L_35892:
	mov	r7, #240	@ 0xf0
	add	r0, r7, #0
	and	r0, r2
	cmp	r0, #0
	beq	.L_358f0
	ldrh	r2, [r4, #10]
	mov	r0, #63	@ 0x3f
	add	r6, r4, #0
	add	r6, #37	@ 0x25
	ldrb	r1, [r6, #0]
	and	r0, r2
	cmp	r0, r1
	bcs	.L_358f0
	ldrh	r0, [r4, #8]
	sub	r1, r2, r1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r5, .L_358ec
	ldrb	r1, [r5, #0]
	add	r0, r7, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_358e4
	ldrh	r0, [r4, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrb	r2, [r6, #0]
	ldrh	r1, [r4, #10]
	sub	r1, r1, r2
.L_358d2:
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldrb	r1, [r5, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_358f0
.L_358e4:
	mov	r0, #17
	strb	r0, [r4, #28]
	b	.L_35970
	.align	2, 0
.L_358ec:
	.4byte	gUnk_3000A51
.L_358f0:
	ldr	r2, .L_35914
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	cmp	r0, #0
	beq	.L_3596c
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_3591c
	ldr	r0, .L_35918
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	b	.L_35970
	.align	2, 0
.L_35914:
	.4byte	gCurrentSprite
.L_35918:
	.4byte	sUnk_83BCEFC
.L_3591c:
	ldrb	r0, [r3, #0]
	cmp	r0, #55	@ 0x37
	bne	.L_3592e
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_35964
	b	.L_3595c
.L_3592e:
	cmp	r0, #48	@ 0x30
	bne	.L_3593e
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_35964
	b	.L_3595c
.L_3593e:
	cmp	r0, #34	@ 0x22
	bne	.L_3594e
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_3595c
	b	.L_35964
.L_3594e:
	cmp	r0, #20
	bne	.L_35970
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_35964
.L_3595c:
	ldrh	r0, [r2, #10]
	add	r0, #4
	strh	r0, [r2, #10]
	b	.L_35970
.L_35964:
	ldrh	r0, [r2, #10]
	sub	r0, #4
	strh	r0, [r2, #10]
	b	.L_35970
.L_3596c:
	bl	func_80263AC
.L_35970:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8035978
func_8035978:
	ldr	r0, .L_35990
	ldr	r1, .L_35994
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #11
	strb	r1, [r0, #0]
	bx	lr
.L_35990:
	.4byte	gCurrentSprite
.L_35994:
	.4byte	sUnk_83BCF94


thumb_func_start func_8035998
func_8035998:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_359b4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_359bc
	ldr	r1, .L_359b8
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_35a2c
	.align	2, 0
.L_359b4:
	.4byte	gSpriteCollisionResult
.L_359b8:
	.4byte	gCurrentSprite
.L_359bc:
	ldr	r2, .L_359e0
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_35a2c
	ldrb	r0, [r2, #28]
	cmp	r0, #18
	beq	.L_359e4
	cmp	r0, #20
	beq	.L_35a0c
	mov	r0, #15
	strb	r0, [r2, #28]
	b	.L_35a2c
.L_359e0:
	.4byte	gCurrentSprite
.L_359e4:
	ldr	r0, .L_35a08
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	mov	r0, #5
	strb	r0, [r3, #0]
	mov	r0, #33	@ 0x21
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #24
	strb	r0, [r1, #0]
	b	.L_35a2c
.L_35a08:
	.4byte	sUnk_83BCFAC
.L_35a0c:
	ldr	r0, .L_35a30
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #22
	strb	r0, [r2, #28]
	mov	r0, #9
	strb	r0, [r3, #0]
	mov	r0, #37	@ 0x25
	strb	r0, [r2, #30]
	ldrh	r0, [r2, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r2, #0]
	bl	func_80356BC
.L_35a2c:
	pop	{r0}
	bx	r0
.L_35a30:
	.4byte	sUnk_83BCFBC


thumb_func_start func_8035A34
func_8035A34:
	ldr	r1, .L_35a50
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #24
	strb	r0, [r1, #28]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	strb	r0, [r2, #0]
	ldrb	r0, [r1, #29]
	cmp	r0, #2
	bne	.L_35a58
	ldr	r0, .L_35a54
	b	.L_35a5a
.L_35a50:
	.4byte	gCurrentSprite
.L_35a54:
	.4byte	sUnk_83BD19C
.L_35a58:
	ldr	r0, .L_35a60
.L_35a5a:
	str	r0, [r1, #4]
	bx	lr
	.align	2, 0
.L_35a60:
	.4byte	sUnk_83BD18C


thumb_func_start func_8035A64
func_8035A64:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_35a80
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_35a88
	ldr	r1, .L_35a84
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_35ada
	.align	2, 0
.L_35a80:
	.4byte	gSpriteCollisionResult
.L_35a84:
	.4byte	gCurrentSprite
.L_35a88:
	ldr	r2, .L_35ab8
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_35ada
	ldrb	r0, [r2, #29]
	cmp	r0, #2
	bne	.L_35ad6
	ldr	r1, .L_35abc
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_35ac4
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_35ac0
	mov	r0, #17
	b	.L_35ad8
.L_35ab8:
	.4byte	gCurrentSprite
.L_35abc:
	.4byte	gWarioData
.L_35ac0:
	mov	r0, #15
	b	.L_35ad8
.L_35ac4:
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_35ad2
	mov	r0, #15
	b	.L_35ad8
.L_35ad2:
	mov	r0, #17
	b	.L_35ad8
.L_35ad6:
	mov	r0, #110	@ 0x6e
.L_35ad8:
	strb	r0, [r2, #28]
.L_35ada:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8035AE0
func_8035AE0:
	ldr	r0, .L_35af8
	ldr	r1, .L_35afc
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #111	@ 0x6f
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #43	@ 0x2b
	strb	r1, [r0, #0]
	bx	lr
.L_35af8:
	.4byte	gCurrentSprite
.L_35afc:
	.4byte	sUnk_83BCEB4


thumb_func_start func_8035B00
func_8035B00:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_35b1c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_35b24
	ldr	r1, .L_35b20
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_35b58
	.align	2, 0
.L_35b1c:
	.4byte	gSpriteCollisionResult
.L_35b20:
	.4byte	gCurrentSprite
.L_35b24:
	ldr	r2, .L_35b50
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r1, r0, #1
	strb	r1, [r3, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_35b54
	lsr	r0, r0, #24
	cmp	r0, #25
	bne	.L_35b58
	mov	r0, #37	@ 0x25
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #35	@ 0x23
	mov	r0, #112	@ 0x70
	strb	r0, [r1, #0]
	mov	r0, #2
	strb	r0, [r2, #29]
	b	.L_35b58
	.align	2, 0
.L_35b50:
	.4byte	gCurrentSprite
.L_35b54:
	mov	r0, #23
	strb	r0, [r2, #28]
.L_35b58:
	pop	{r0}
	bx	r0


thumb_func_start func_8035B5C
func_8035B5C:
	push	{lr}
	ldr	r0, .L_35b80
	ldr	r1, .L_35b84
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #113	@ 0x71
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #100	@ 0x64
	strb	r1, [r0, #0]
	mov	r0, #73	@ 0x49
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_35b80:
	.4byte	gCurrentSprite
.L_35b84:
	.4byte	sUnk_83BD01C


thumb_func_start func_8035B88
func_8035B88:
	push	{lr}
	bl	func_80238A4
	bl	func_8023B88
	ldr	r0, .L_35ba4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_35bac
	ldr	r1, .L_35ba8
	mov	r0, #27
	strb	r0, [r1, #28]
	b	.L_35be4
	.align	2, 0
.L_35ba4:
	.4byte	gSpriteCollisionResult
.L_35ba8:
	.4byte	gCurrentSprite
.L_35bac:
	ldr	r2, .L_35bdc
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r1, r0, #1
	strb	r1, [r3, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_35be0
	lsr	r0, r0, #24
	cmp	r0, #86	@ 0x56
	bne	.L_35be4
	mov	r0, #1
	strb	r0, [r2, #29]
	add	r1, r2, #0
	add	r1, #35	@ 0x23
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	mov	r0, #3
	strb	r0, [r2, #30]
	bl	func_8035668
	b	.L_35be4
	.align	2, 0
.L_35bdc:
	.4byte	gCurrentSprite
.L_35be0:
	mov	r0, #23
	strb	r0, [r2, #28]
.L_35be4:
	pop	{r0}
	bx	r0


thumb_func_start func_8035BE8
func_8035BE8:
	ldr	r0, .L_35c04
	ldr	r1, .L_35c08
	str	r1, [r0, #4]
	mov	r2, #0
	mov	r1, #0
	strh	r1, [r0, #20]
	strb	r2, [r0, #22]
	mov	r1, #26
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #40	@ 0x28
	strb	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_35c04:
	.4byte	gCurrentSprite
.L_35c08:
	.4byte	sUnk_83BD074


thumb_func_start func_8035C0C
func_8035C0C:
	push	{r4, r5, lr}
	ldr	r4, .L_35c38
	add	r5, r4, #0
	add	r5, #39	@ 0x27
	ldrb	r0, [r5, #0]
	add	r1, r0, #0
	cmp	r0, #25
	bls	.L_35c40
	bl	func_8023B88
	ldr	r0, .L_35c3c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_35c2c
	mov	r0, #29
	strb	r0, [r4, #28]
.L_35c2c:
	bl	func_80238E8
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	b	.L_35cc4
.L_35c38:
	.4byte	gCurrentSprite
.L_35c3c:
	.4byte	gSpriteCollisionResult
.L_35c40:
	cmp	r0, #4
	bhi	.L_35c6e
	bl	func_8023B88
	ldr	r0, .L_35c58
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_35c5c
	mov	r0, #27
	strb	r0, [r4, #28]
	b	.L_35cc4
	.align	2, 0
.L_35c58:
	.4byte	gSpriteCollisionResult
.L_35c5c:
	ldrb	r0, [r5, #0]
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_35cc4
	mov	r0, #23
	strb	r0, [r4, #28]
	b	.L_35cc4
.L_35c6e:
	cmp	r0, #25
	bne	.L_35c78
	ldrh	r0, [r4, #8]
	sub	r0, #24
	b	.L_35cb8
.L_35c78:
	cmp	r0, #20
	bne	.L_35c9c
	ldr	r0, .L_35c98
	str	r0, [r4, #4]
	mov	r1, #0
	mov	r0, #0
	strh	r0, [r4, #20]
	strb	r1, [r4, #22]
	ldrh	r0, [r4, #8]
	sub	r0, #24
	strh	r0, [r4, #8]
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r4, #0]
	b	.L_35cba
.L_35c98:
	.4byte	sUnk_83BD09C
.L_35c9c:
	cmp	r0, #10
	bne	.L_35cb0
	ldrh	r0, [r4, #8]
	add	r0, #24
	strh	r0, [r4, #8]
	mov	r0, #3
	strb	r0, [r4, #30]
	bl	func_80356BC
	b	.L_35cba
.L_35cb0:
	cmp	r1, #5
	bne	.L_35cba
	ldrh	r0, [r4, #8]
	add	r0, #24
.L_35cb8:
	strh	r0, [r4, #8]
.L_35cba:
	ldr	r1, .L_35ccc
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
.L_35cc4:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_35ccc:
	.4byte	gCurrentSprite


thumb_func_start func_8035CD0
func_8035CD0:
	push	{lr}
	ldr	r2, .L_35cf4
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r1, #0
	strh	r0, [r2, #20]
	mov	r0, #28
	strb	r0, [r2, #28]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldrb	r0, [r2, #29]
	cmp	r0, #2
	bne	.L_35cfc
	ldr	r0, .L_35cf8
	str	r0, [r2, #4]
	mov	r0, #37	@ 0x25
	b	.L_35d02
.L_35cf4:
	.4byte	gCurrentSprite
.L_35cf8:
	.4byte	sUnk_83BCF24
.L_35cfc:
	ldr	r0, .L_35d0c
	str	r0, [r2, #4]
	mov	r0, #3
.L_35d02:
	strb	r0, [r2, #30]
	bl	func_80356BC
	pop	{r0}
	bx	r0
.L_35d0c:
	.4byte	sUnk_83BD1AC


thumb_func_start func_8035D10
func_8035D10:
	push	{lr}
	bl	func_80356EC
	ldr	r0, .L_35d28
	mov	r2, #0
	mov	r1, #30
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_35d28:
	.4byte	gCurrentSprite


thumb_func_start func_8035D2C
func_8035D2C:
	push	{r4, r5, lr}
	ldr	r5, .L_35d98
	ldrb	r0, [r5, #29]
	cmp	r0, #2
	bne	.L_35d3a
	bl	func_8035668
.L_35d3a:
	ldr	r0, .L_35d9c
	str	r0, [r5, #4]
	mov	r0, #0
	strb	r0, [r5, #22]
	mov	r4, #0
	strh	r0, [r5, #20]
	strb	r4, [r5, #29]
	add	r1, r5, #0
	add	r1, #41	@ 0x29
	mov	r0, #4
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
	strb	r4, [r5, #26]
	ldrb	r0, [r5, #23]
	ldrh	r1, [r5, #8]
	ldrh	r2, [r5, #10]
	mov	r3, #20
	bl	func_807687C
	ldrh	r0, [r5, #8]
	sub	r0, #32
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldrh	r1, [r5, #0]
	ldr	r0, .L_35da0
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	ldr	r1, .L_35da4
	ldr	r0, .L_35da8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r5, [r5, #24]
	add	r0, r0, r5
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_35d98:
	.4byte	gCurrentSprite
.L_35d9c:
	.4byte	sUnk_83BD164
.L_35da0:
	.4byte	0xFEFF
.L_35da4:
	.4byte	gPersistentSpriteData
.L_35da8:
	.4byte	gCurrentRoom


thumb_func_start func_8035DAC
func_8035DAC:
	push	{lr}
	ldr	r1, .L_35dbc
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8035D2C
	pop	{r0}
	bx	r0
.L_35dbc:
	.4byte	gCurrentSprite


thumb_func_start func_8035DC0
func_8035DC0:
	push	{lr}
	ldr	r1, .L_35dd0
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8035D2C
	pop	{r0}
	bx	r0
.L_35dd0:
	.4byte	gCurrentSprite


thumb_func_start func_8035DD4
func_8035DD4:
	push	{r4, lr}
	ldr	r4, .L_35e30
	ldrb	r0, [r4, #29]
	cmp	r0, #2
	bne	.L_35de2
	bl	func_8035668
.L_35de2:
	ldr	r0, .L_35e34
	str	r0, [r4, #4]
	mov	r0, #0
	strb	r0, [r4, #22]
	mov	r1, #0
	strh	r0, [r4, #20]
	strb	r1, [r4, #29]
	add	r2, r4, #0
	add	r2, #41	@ 0x29
	mov	r0, #3
	strb	r0, [r2, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	strb	r1, [r4, #26]
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #20
	bl	func_807687C
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldr	r1, .L_35e38
	ldr	r0, .L_35e3c
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
.L_35e30:
	.4byte	gCurrentSprite
.L_35e34:
	.4byte	sUnk_83BD164
.L_35e38:
	.4byte	gPersistentSpriteData
.L_35e3c:
	.4byte	gCurrentRoom


thumb_func_start func_8035E40
func_8035E40:
	push	{lr}
	ldr	r1, .L_35e50
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_8035DD4
	pop	{r0}
	bx	r0
.L_35e50:
	.4byte	gCurrentSprite


thumb_func_start func_8035E54
func_8035E54:
	push	{lr}
	ldr	r1, .L_35e64
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_8035DD4
	pop	{r0}
	bx	r0
.L_35e64:
	.4byte	gCurrentSprite


thumb_func_start func_8035E68
func_8035E68:
	ldr	r2, .L_35e8c
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
	mov	r0, #6
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_35e8c:
	.4byte	gCurrentSprite


thumb_func_start func_8035E90
func_8035E90:
	push	{lr}
	ldr	r2, .L_35ec0
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_35ec8
	ldr	r0, .L_35ec4
	str	r0, [r2, #4]
	ldrb	r0, [r2, #29]
	cmp	r0, #2
	bne	.L_35edc
	mov	r0, #1
	strb	r0, [r2, #29]
	add	r1, r2, #0
	add	r1, #35	@ 0x23
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	mov	r0, #3
	strb	r0, [r2, #30]
	bl	func_8035668
	b	.L_35edc
	.align	2, 0
.L_35ec0:
	.4byte	gCurrentSprite
.L_35ec4:
	.4byte	sUnk_83BD10C
.L_35ec8:
	ldrb	r0, [r2, #29]
	cmp	r0, #2
	bne	.L_35ed8
	ldr	r0, .L_35ed4
	b	.L_35eda
	.align	2, 0
.L_35ed4:
	.4byte	sUnk_83BD14C
.L_35ed8:
	ldr	r0, .L_35eec
.L_35eda:
	str	r0, [r2, #4]
.L_35edc:
	ldr	r1, .L_35ef0
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #28]
	bl	func_8035E68
	pop	{r0}
	bx	r0
	.align	2, 0
.L_35eec:
	.4byte	sUnk_83BD134
.L_35ef0:
	.4byte	gCurrentSprite


thumb_func_start func_8035EF4
func_8035EF4:
	push	{lr}
	bl	func_80238A4
	ldr	r1, .L_35f0c
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bls	.L_35f10
	bl	func_80242C8
	b	.L_35f24
.L_35f0c:
	.4byte	gCurrentSprite
.L_35f10:
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_35f24
	mov	r0, #23
	strb	r0, [r1, #28]
.L_35f24:
	pop	{r0}
	bx	r0


thumb_func_start func_8035F28
func_8035F28:
	push	{lr}
	ldr	r2, .L_35f44
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_35f58
	ldrb	r0, [r2, #29]
	cmp	r0, #2
	bne	.L_35f4c
	ldr	r0, .L_35f48
	str	r0, [r2, #4]
	b	.L_35f76
	.align	2, 0
.L_35f44:
	.4byte	gCurrentSprite
.L_35f48:
	.4byte	sUnk_83BD14C
.L_35f4c:
	ldr	r0, .L_35f54
	str	r0, [r2, #4]
	b	.L_35f76
	.align	2, 0
.L_35f54:
	.4byte	sUnk_83BD134
.L_35f58:
	ldr	r0, .L_35f84
	str	r0, [r2, #4]
	ldrb	r0, [r2, #29]
	cmp	r0, #2
	bne	.L_35f76
	mov	r0, #1
	strb	r0, [r2, #29]
	add	r1, r2, #0
	add	r1, #35	@ 0x23
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	mov	r0, #3
	strb	r0, [r2, #30]
	bl	func_8035668
.L_35f76:
	ldr	r1, .L_35f88
	mov	r0, #38	@ 0x26
	strb	r0, [r1, #28]
	bl	func_8035E68
	pop	{r0}
	bx	r0
.L_35f84:
	.4byte	sUnk_83BD10C
.L_35f88:
	.4byte	gCurrentSprite


thumb_func_start func_8035F8C
func_8035F8C:
	push	{lr}
	bl	func_80238A4
	ldr	r1, .L_35fa4
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bls	.L_35fa8
	bl	func_8024180
	b	.L_35fbc
.L_35fa4:
	.4byte	gCurrentSprite
.L_35fa8:
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_35fbc
	mov	r0, #23
	strb	r0, [r1, #28]
.L_35fbc:
	pop	{r0}
	bx	r0


thumb_func_start func_8035FC0
func_8035FC0:
	ldr	r2, .L_35fec
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
	mov	r0, #6
	strb	r0, [r1, #0]
	ldrb	r0, [r2, #29]
	cmp	r0, #2
	bne	.L_35ff4
	ldr	r0, .L_35ff0
	b	.L_35ff6
	.align	2, 0
.L_35fec:
	.4byte	gCurrentSprite
.L_35ff0:
	.4byte	sUnk_83BD14C
.L_35ff4:
	ldr	r0, .L_35ffc
.L_35ff6:
	str	r0, [r2, #4]
	bx	lr
	.align	2, 0
.L_35ffc:
	.4byte	sUnk_83BD134


thumb_func_start func_8036000
func_8036000:
	push	{lr}
	ldr	r1, .L_36010
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #28]
	bl	func_8035FC0
	pop	{r0}
	bx	r0
.L_36010:
	.4byte	gCurrentSprite


thumb_func_start func_8036014
func_8036014:
	push	{lr}
	bl	func_80238A4
	ldr	r1, .L_3602c
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bls	.L_36030
	bl	func_80242C8
	b	.L_3604e
.L_3602c:
	.4byte	gCurrentSprite
.L_36030:
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_3604e
	ldrb	r0, [r1, #29]
	cmp	r0, #2
	bne	.L_3604a
	mov	r0, #17
	b	.L_3604c
.L_3604a:
	mov	r0, #23
.L_3604c:
	strb	r0, [r1, #28]
.L_3604e:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8036054
func_8036054:
	push	{lr}
	ldr	r1, .L_36064
	mov	r0, #42	@ 0x2a
	strb	r0, [r1, #28]
	bl	func_8035FC0
	pop	{r0}
	bx	r0
.L_36064:
	.4byte	gCurrentSprite


thumb_func_start func_8036068
func_8036068:
	push	{lr}
	bl	func_80238A4
	ldr	r1, .L_36080
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bls	.L_36084
	bl	func_8024180
	b	.L_360a2
.L_36080:
	.4byte	gCurrentSprite
.L_36084:
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_360a2
	ldrb	r0, [r1, #29]
	cmp	r0, #2
	bne	.L_3609e
	mov	r0, #17
	b	.L_360a0
.L_3609e:
	mov	r0, #23
.L_360a0:
	strb	r0, [r1, #28]
.L_360a2:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80360A8
func_80360A8:
	push	{lr}
	bl	func_80356EC
	ldr	r0, .L_360bc
	add	r0, #40	@ 0x28
	mov	r1, #0
	strb	r1, [r0, #0]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_360bc:
	.4byte	gCurrentSprite


thumb_func_start func_80360C0
func_80360C0:
	push	{lr}
	ldr	r1, .L_360d0
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #28]
	bl	func_80360A8
	pop	{r0}
	bx	r0
.L_360d0:
	.4byte	gCurrentSprite


thumb_func_start func_80360D4
func_80360D4:
	push	{lr}
	ldr	r1, .L_360e4
	mov	r0, #46	@ 0x2e
	strb	r0, [r1, #28]
	bl	func_80360A8
	pop	{r0}
	bx	r0
.L_360e4:
	.4byte	gCurrentSprite


thumb_func_start func_80360E8
func_80360E8:
	push	{r4, lr}
	ldr	r4, .L_36138
	mov	r0, #0
	strb	r0, [r4, #22]
	strh	r0, [r4, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r4, #28]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #9
	strb	r0, [r1, #0]
	ldrh	r1, [r4, #0]
	ldr	r0, .L_3613c
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #20
	bl	func_807687C
	ldr	r1, .L_36140
	ldr	r0, .L_36144
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r2, [r4, #24]
	add	r0, r0, r2
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	ldrb	r0, [r4, #30]
	cmp	r0, #5
	beq	.L_3614c
	ldr	r0, .L_36148
	b	.L_3614e
	.align	2, 0
.L_36138:
	.4byte	gCurrentSprite
.L_3613c:
	.4byte	0xFEFF
.L_36140:
	.4byte	gPersistentSpriteData
.L_36144:
	.4byte	gCurrentRoom
.L_36148:
	.4byte	sUnk_83BD0CC
.L_3614c:
	ldr	r0, .L_36158
.L_3614e:
	str	r0, [r4, #4]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_36158:
	.4byte	sUnk_83BD0EC


thumb_func_start func_803615C
func_803615C:
	push	{r4, lr}
	ldr	r4, .L_36188
	ldrb	r0, [r4, #23]
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #10]
	mov	r3, #20
	bl	func_807687C
	bl	SpriteUtilDie
	ldr	r1, .L_3618c
	ldr	r0, .L_36190
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
.L_36188:
	.4byte	gCurrentSprite
.L_3618c:
	.4byte	gPersistentSpriteData
.L_36190:
	.4byte	gCurrentRoom


thumb_func_start func_8036194
func_8036194:
	push	{lr}
	ldr	r2, .L_361b8
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
	bl	func_80356EC
	pop	{r0}
	bx	r0
	.align	2, 0
.L_361b8:
	.4byte	gCurrentSprite


thumb_func_start func_80361BC
func_80361BC:
	push	{lr}
	ldr	r1, .L_361cc
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	bl	func_8036194
	pop	{r0}
	bx	r0
.L_361cc:
	.4byte	gCurrentSprite


thumb_func_start func_80361D0
func_80361D0:
	push	{lr}
	ldr	r1, .L_361e0
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	bl	func_8036194
	pop	{r0}
	bx	r0
.L_361e0:
	.4byte	gCurrentSprite


thumb_func_start func_80361E4
func_80361E4:
	push	{lr}
	ldr	r0, .L_36200
	add	r2, r0, #0
	add	r2, #42	@ 0x2a
	mov	r1, #0
	strb	r1, [r2, #0]
	add	r0, #41	@ 0x29
	mov	r1, #6
	strb	r1, [r0, #0]
	bl	func_80356EC
	pop	{r0}
	bx	r0
	.align	2, 0
.L_36200:
	.4byte	gCurrentSprite


thumb_func_start func_8036204
func_8036204:
	push	{lr}
	ldr	r1, .L_36214
	mov	r0, #72	@ 0x48
	strb	r0, [r1, #28]
	bl	func_80361E4
	pop	{r0}
	bx	r0
.L_36214:
	.4byte	gCurrentSprite


thumb_func_start func_8036218
func_8036218:
	push	{lr}
	ldr	r1, .L_36228
	mov	r0, #74	@ 0x4a
	strb	r0, [r1, #28]
	bl	func_80361E4
	pop	{r0}
	bx	r0
.L_36228:
	.4byte	gCurrentSprite


thumb_func_start func_803622C
func_803622C:
	push	{lr}
	ldr	r2, .L_36258
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
	ldrb	r0, [r2, #29]
	cmp	r0, #2
	bne	.L_36260
	ldr	r0, .L_3625c
	str	r0, [r2, #4]
	mov	r0, #37	@ 0x25
	b	.L_36266
.L_36258:
	.4byte	gCurrentSprite
.L_3625c:
	.4byte	sUnk_83BD19C
.L_36260:
	ldr	r0, .L_36270
	str	r0, [r2, #4]
	mov	r0, #3
.L_36266:
	strb	r0, [r2, #30]
	bl	func_80356BC
	pop	{r0}
	bx	r0
.L_36270:
	.4byte	sUnk_83BD18C


thumb_func_start func_8036274
func_8036274:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_362ac
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_362f6
	add	r0, r4, #0
	add	r0, #35	@ 0x23
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_362b0
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	beq	.L_362b4
	mov	r0, #29
	b	.L_362f8
.L_362ac:
	.4byte	gCurrentSprite
.L_362b0:
	.4byte	gUnk_3000A51
.L_362b4:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_362e0
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_362e4
	cmp	r1, r0
	bne	.L_362e8
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_362fa
	.align	2, 0
.L_362e0:
	.4byte	sUnk_8352B2C
.L_362e4:
	.4byte	0x7FFF
.L_362e8:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	b	.L_362fa
.L_362f6:
	mov	r0, #27
.L_362f8:
	strb	r0, [r4, #28]
.L_362fa:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8036300
func_8036300:
	ldr	r1, .L_36310
	ldr	r0, .L_36314
	str	r0, [r1, #4]
	mov	r2, #0
	mov	r0, #0
	strh	r0, [r1, #20]
	strb	r2, [r1, #22]
	bx	lr
.L_36310:
	.4byte	gCurrentSprite
.L_36314:
	.4byte	sUnk_83BD04C


thumb_func_start func_8036318
func_8036318:
	push	{lr}
	ldr	r1, .L_36328
	mov	r0, #82	@ 0x52
	strb	r0, [r1, #28]
	bl	func_8036300
	pop	{r0}
	bx	r0
.L_36328:
	.4byte	gCurrentSprite


thumb_func_start func_803632C
func_803632C:
	push	{lr}
	ldr	r1, .L_3633c
	mov	r0, #84	@ 0x54
	strb	r0, [r1, #28]
	bl	func_8036300
	pop	{r0}
	bx	r0
.L_3633c:
	.4byte	gCurrentSprite


thumb_func_start func_8036340
func_8036340:
	ldr	r1, .L_36354
	mov	r2, #0
	mov	r0, #1
	strb	r0, [r1, #31]
	ldr	r0, .L_36358
	str	r0, [r1, #4]
	mov	r0, #0
	strh	r2, [r1, #20]
	strb	r0, [r1, #22]
	bx	lr
.L_36354:
	.4byte	gCurrentSprite
.L_36358:
	.4byte	sUnk_83BD04C


thumb_func_start func_803635C
func_803635C:
	push	{lr}
	ldr	r1, .L_3636c
	mov	r0, #88	@ 0x58
	strb	r0, [r1, #28]
	bl	func_8036340
	pop	{r0}
	bx	r0
.L_3636c:
	.4byte	gCurrentSprite


thumb_func_start func_8036370
func_8036370:
	push	{lr}
	ldr	r1, .L_36380
	mov	r0, #86	@ 0x56
	strb	r0, [r1, #28]
	bl	func_8036340
	pop	{r0}
	bx	r0
.L_36380:
	.4byte	gCurrentSprite


thumb_func_start func_8036384
func_8036384:
	push	{r4, lr}
	ldr	r0, .L_363e8
	mov	ip, r0
	ldrh	r0, [r0, #0]
	mov	r2, #160	@ 0xa0
	mov	r3, #0
	mov	r4, #0
	orr	r2, r0
	ldr	r0, .L_363ec
	and	r2, r0
	mov	r1, ip
	strh	r2, [r1, #0]
	add	r1, #32
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #2
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #80	@ 0x50
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #140	@ 0x8c
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	ldr	r0, .L_363f0
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	mov	r0, #9
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #40	@ 0x28
	strb	r3, [r0, #0]
	mov	r0, #64	@ 0x40
	and	r0, r2
	cmp	r0, #0
	beq	.L_363f4
	mov	r0, #51	@ 0x33
	b	.L_363f8
	.align	2, 0
.L_363e8:
	.4byte	gCurrentSprite
.L_363ec:
	.4byte	0xFFFB
.L_363f0:
	.4byte	sUnk_83BD00C
.L_363f4:
	mov	r0, #53	@ 0x35
	mov	r1, ip
.L_363f8:
	strb	r0, [r1, #28]
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8036400
func_8036400:
	ldr	r2, .L_3641c
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
.L_3641c:
	.4byte	gCurrentSprite


thumb_func_start func_8036420
func_8036420:
	push	{lr}
	ldr	r1, .L_36438
	mov	r0, #52	@ 0x34
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	mov	r0, #64	@ 0x40
	orr	r0, r2
	strh	r0, [r1, #0]
	bl	func_8036400
	pop	{r0}
	bx	r0
.L_36438:
	.4byte	gCurrentSprite


thumb_func_start func_803643C
func_803643C:
	push	{lr}
	ldr	r1, .L_36454
	mov	r0, #54	@ 0x36
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_36458
	and	r0, r2
	strh	r0, [r1, #0]
	bl	func_8036400
	pop	{r0}
	bx	r0
.L_36454:
	.4byte	gCurrentSprite
.L_36458:
	.4byte	0xFFBF


thumb_func_start func_803645C
func_803645C:
	push	{lr}
	ldr	r2, .L_36498
	ldr	r0, .L_3649c
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	mov	r3, #0
	strh	r0, [r2, #20]
	mov	r0, #50	@ 0x32
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #16
	strb	r0, [r1, #0]
	ldrh	r0, [r2, #0]
	ldr	r1, .L_364a0
	and	r1, r0
	mov	r0, #1
	strb	r0, [r2, #26]
	strb	r3, [r2, #30]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #3
	add	r0, r3, #0
	orr	r1, r0
	strh	r1, [r2, #0]
	mov	r0, #75	@ 0x4b
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_36498:
	.4byte	gCurrentSprite
.L_3649c:
	.4byte	sUnk_83BCFD4
.L_364a0:
	.4byte	0xFF7F


thumb_func_start func_80364A4
func_80364A4:
	ldr	r3, .L_364c8
	add	r2, r3, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_364cc
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #7
	bhi	.L_364ce
	mov	r0, #1
	strb	r0, [r3, #31]
	b	.L_364ce
	.align	2, 0
.L_364c8:
	.4byte	gCurrentSprite
.L_364cc:
	strh	r0, [r3, #0]
.L_364ce:
	bx	lr


thumb_func_start func_80364D0
func_80364D0:
	push	{r4, lr}
	ldr	r4, .L_3650c
	mov	r1, #0
	strb	r1, [r4, #29]
	add	r2, r4, #0
	add	r2, #41	@ 0x29
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
	ldr	r0, .L_36510
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r4, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3650c:
	.4byte	gCurrentSprite
.L_36510:
	.4byte	0xFEFF


thumb_func_start func_8036514
func_8036514:
	push	{lr}
	ldr	r1, .L_36524
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_80364D0
	pop	{r0}
	bx	r0
.L_36524:
	.4byte	gCurrentSprite


thumb_func_start func_8036528
func_8036528:
	push	{lr}
	ldr	r1, .L_36538
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_80364D0
	pop	{r0}
	bx	r0
.L_36538:
	.4byte	gCurrentSprite


thumb_func_start SpriteTogerobo
SpriteTogerobo:
	push	{lr}
	ldr	r2, .L_36564
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_36550
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_36550:
	ldrb	r0, [r2, #28]
	cmp	r0, #113	@ 0x71
	bls	.L_36558
	b	.L_368f0
.L_36558:
	lsl	r0, r0, #2
	ldr	r1, .L_36568
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_36564:
	.4byte	gCurrentSprite
.L_36568:
	.4byte	.L_3656c
.L_3656c:
	.4byte	.L_36734
	.4byte	.L_368f0
	.4byte	.L_368f0
	.4byte	.L_368f0
	.4byte	.L_368f0
	.4byte	.L_368f0
	.4byte	.L_368f0
	.4byte	.L_368f0
	.4byte	.L_368f0
	.4byte	.L_368f0
	.4byte	.L_368f0
	.4byte	.L_368f0
	.4byte	.L_368f0
	.4byte	.L_368f0
	.4byte	.L_368f0
	.4byte	.L_3673e
	.4byte	.L_36742
	.4byte	.L_36748
	.4byte	.L_3674c
	.4byte	.L_368f0
	.4byte	.L_3674c
	.4byte	.L_368f0
	.4byte	.L_3674c
	.4byte	.L_36752
	.4byte	.L_36756
	.4byte	.L_3675c
	.4byte	.L_36760
	.4byte	.L_36766
	.4byte	.L_3676a
	.4byte	.L_36770
	.4byte	.L_36774
	.4byte	.L_3677a
	.4byte	.L_3677e
	.4byte	.L_36784
	.4byte	.L_36788
	.4byte	.L_3678e
	.4byte	.L_36792
	.4byte	.L_36798
	.4byte	.L_3679c
	.4byte	.L_367a2
	.4byte	.L_367a6
	.4byte	.L_367ac
	.4byte	.L_367b0
	.4byte	.L_367b6
	.4byte	.L_367ba
	.4byte	.L_367c0
	.4byte	.L_367c4
	.4byte	.L_367ca
	.4byte	.L_367ce
	.4byte	.L_367d4
	.4byte	.L_367d8
	.4byte	.L_367de
	.4byte	.L_36816
	.4byte	.L_367e4
	.4byte	.L_367f8
	.4byte	.L_367ea
	.4byte	.L_367ee
	.4byte	.L_367f4
	.4byte	.L_367f8
	.4byte	.L_367fe
	.4byte	.L_36802
	.4byte	.L_36808
	.4byte	.L_3680c
	.4byte	.L_36812
	.4byte	.L_36816
	.4byte	.L_3681c
	.4byte	.L_36820
	.4byte	.L_36826
	.4byte	.L_36836
	.4byte	.L_3682c
	.4byte	.L_36840
	.4byte	.L_36832
	.4byte	.L_36836
	.4byte	.L_3683c
	.4byte	.L_36840
	.4byte	.L_36846
	.4byte	.L_3684a
	.4byte	.L_368f0
	.4byte	.L_368f0
	.4byte	.L_3677a
	.4byte	.L_36784
	.4byte	.L_36870
	.4byte	.L_36876
	.4byte	.L_3687c
	.4byte	.L_36882
	.4byte	.L_36894
	.4byte	.L_3689a
	.4byte	.L_36888
	.4byte	.L_3688e
	.4byte	.L_368a0
	.4byte	.L_368a4
	.4byte	.L_368c8
	.4byte	.L_368cc
	.4byte	.L_368aa
	.4byte	.L_368ae
	.4byte	.L_368d2
	.4byte	.L_368d6
	.4byte	.L_368b4
	.4byte	.L_368b8
	.4byte	.L_368dc
	.4byte	.L_368e0
	.4byte	.L_368be
	.4byte	.L_368c2
	.4byte	.L_368e6
	.4byte	.L_368ea
	.4byte	.L_36850
	.4byte	.L_36856
	.4byte	.L_368f0
	.4byte	.L_368f0
	.4byte	.L_368f0
	.4byte	.L_3685c
	.4byte	.L_36860
	.4byte	.L_36866
	.4byte	.L_3686a
.L_36734:
	bl	func_803572C
	bl	func_8035790
	b	.L_368f4
.L_3673e:
	bl	func_8035790
.L_36742:
	bl	func_80357B8
	b	.L_368f4
.L_36748:
	bl	func_8035978
.L_3674c:
	bl	func_8035998
	b	.L_368f4
.L_36752:
	bl	func_8035A34
.L_36756:
	bl	func_8035A64
	b	.L_368f4
.L_3675c:
	bl	func_8035BE8
.L_36760:
	bl	func_8035C0C
	b	.L_368f4
.L_36766:
	bl	func_8035CD0
.L_3676a:
	bl	func_8023D48
	b	.L_368f4
.L_36770:
	bl	func_8035D10
.L_36774:
	bl	func_8023EE0
	b	.L_368f4
.L_3677a:
	bl	func_8035DAC
.L_3677e:
	bl	SpriteUtilFallOffscreenRight
	b	.L_368f4
.L_36784:
	bl	func_8035DC0
.L_36788:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_368f4
.L_3678e:
	bl	func_8035E90
.L_36792:
	bl	func_8035EF4
	b	.L_368f4
.L_36798:
	bl	func_8035F28
.L_3679c:
	bl	func_8035F8C
	b	.L_368f4
.L_367a2:
	bl	func_8036000
.L_367a6:
	bl	func_8036014
	b	.L_368f4
.L_367ac:
	bl	func_8036054
.L_367b0:
	bl	func_8036068
	b	.L_368f4
.L_367b6:
	bl	func_80360C0
.L_367ba:
	bl	func_8024478
	b	.L_368f4
.L_367c0:
	bl	func_80360D4
.L_367c4:
	bl	func_802449C
	b	.L_368f4
.L_367ca:
	bl	func_80244C0
.L_367ce:
	bl	func_80244E0
	b	.L_368f4
.L_367d4:
	bl	func_80360E8
.L_367d8:
	bl	SpriteUtilDieAfterDelay
	b	.L_368f4
.L_367de:
	bl	func_80361BC
	b	.L_36816
.L_367e4:
	bl	func_80361D0
	b	.L_367f8
.L_367ea:
	bl	func_8024688
.L_367ee:
	bl	func_80246B8
	b	.L_368f4
.L_367f4:
	bl	func_802473C
.L_367f8:
	bl	func_802476C
	b	.L_368f4
.L_367fe:
	bl	func_80247F0
.L_36802:
	bl	func_8024820
	b	.L_368f4
.L_36808:
	bl	func_80248A4
.L_3680c:
	bl	func_80248D4
	b	.L_368f4
.L_36812:
	bl	func_8024958
.L_36816:
	bl	func_8024988
	b	.L_368f4
.L_3681c:
	bl	func_8024A0C
.L_36820:
	bl	func_8024A3C
	b	.L_368f4
.L_36826:
	bl	func_8024AC0
	b	.L_36836
.L_3682c:
	bl	func_8024BEC
	b	.L_36840
.L_36832:
	bl	func_8036204
.L_36836:
	bl	func_8024AD4
	b	.L_368f4
.L_3683c:
	bl	func_8036218
.L_36840:
	bl	func_8024C00
	b	.L_368f4
.L_36846:
	bl	func_803622C
.L_3684a:
	bl	func_8036274
	b	.L_368f4
.L_36850:
	bl	func_8035E54
	b	.L_368f4
.L_36856:
	bl	func_8035E40
	b	.L_368f4
.L_3685c:
	bl	func_8035AE0
.L_36860:
	bl	func_8035B00
	b	.L_368f4
.L_36866:
	bl	func_8035B5C
.L_3686a:
	bl	func_8035B88
	b	.L_368f4
.L_36870:
	bl	func_8036318
	b	.L_368f4
.L_36876:
	bl	SpriteUtilLiftingSpriteRight
	b	.L_368f4
.L_3687c:
	bl	func_803632C
	b	.L_368f4
.L_36882:
	bl	SpriteUtilLiftingSpriteLeft
	b	.L_368f4
.L_36888:
	bl	func_803635C
	b	.L_368f4
.L_3688e:
	bl	SpriteUtilCarryingSpriteRight
	b	.L_368f4
.L_36894:
	bl	func_8036370
	b	.L_368f4
.L_3689a:
	bl	SpriteUtilCarryingSpriteLeft
	b	.L_368f4
.L_368a0:
	mov	r0, #90	@ 0x5a
	strb	r0, [r2, #28]
.L_368a4:
	bl	SpriteUtilThrownLeftSoft
	b	.L_368f4
.L_368aa:
	mov	r0, #94	@ 0x5e
	strb	r0, [r2, #28]
.L_368ae:
	bl	SpriteUtilThrownLeftHard
	b	.L_368f4
.L_368b4:
	mov	r0, #98	@ 0x62
	strb	r0, [r2, #28]
.L_368b8:
	bl	SpriteUtilThrownUpLeftSoft
	b	.L_368f4
.L_368be:
	mov	r0, #102	@ 0x66
	strb	r0, [r2, #28]
.L_368c2:
	bl	SpriteUtilThrownUpLeftHard
	b	.L_368f4
.L_368c8:
	mov	r0, #92	@ 0x5c
	strb	r0, [r2, #28]
.L_368cc:
	bl	SpriteUtilThrownRightSoft
	b	.L_368f4
.L_368d2:
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #28]
.L_368d6:
	bl	SpriteUtilThrownRightHard
	b	.L_368f4
.L_368dc:
	mov	r0, #100	@ 0x64
	strb	r0, [r2, #28]
.L_368e0:
	bl	SpriteUtilThrownUpRightSoft
	b	.L_368f4
.L_368e6:
	mov	r0, #104	@ 0x68
	strb	r0, [r2, #28]
.L_368ea:
	bl	SpriteUtilThrownUpRightHard
	b	.L_368f4
.L_368f0:
	bl	func_803615C
.L_368f4:
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknown9C
SpriteUnknown9C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r2, .L_36924
	ldrh	r1, [r2, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #4
	and	r0, r1
	cmp	r0, #0
	beq	.L_36910
	mov	r0, #107	@ 0x6b
	strb	r0, [r2, #28]
.L_36910:
	ldrb	r0, [r2, #28]
	cmp	r0, #107	@ 0x6b
	bls	.L_36918
	b	.L_36bda
.L_36918:
	lsl	r0, r0, #2
	ldr	r1, .L_36928
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_36924:
	.4byte	gCurrentSprite
.L_36928:
	.4byte	.L_3692c
.L_3692c:
	.4byte	.L_36adc
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bba
	.4byte	.L_36bbe
	.4byte	.L_36bc4
	.4byte	.L_36bc8
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36ae2
	.4byte	.L_36ae2
	.4byte	.L_36af8
	.4byte	.L_36af8
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bd4
	.4byte	.L_36b10
	.4byte	.L_36b66
	.4byte	.L_36b16
	.4byte	.L_36b36
	.4byte	.L_36b1c
	.4byte	.L_36b26
	.4byte	.L_36b2c
	.4byte	.L_36b36
	.4byte	.L_36b3c
	.4byte	.L_36b46
	.4byte	.L_36b4c
	.4byte	.L_36b56
	.4byte	.L_36b5c
	.4byte	.L_36b66
	.4byte	.L_36b6c
	.4byte	.L_36b76
	.4byte	.L_36b7c
	.4byte	.L_36b8c
	.4byte	.L_36b98
	.4byte	.L_36bb4
	.4byte	.L_36b7c
	.4byte	.L_36bda
	.4byte	.L_36b98
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bba
	.4byte	.L_36bc4
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bda
	.4byte	.L_36bce
.L_36adc:
	bl	func_8036384
	b	.L_36bde
.L_36ae2:
	ldr	r0, .L_36af4
	add	r0, #41	@ 0x29
	mov	r1, #5
	strb	r1, [r0, #0]
	bl	func_80238E8
	bl	func_8025D34
	b	.L_36bde
.L_36af4:
	.4byte	gCurrentSprite
.L_36af8:
	ldr	r0, .L_36b0c
	add	r0, #41	@ 0x29
	mov	r1, #5
	strb	r1, [r0, #0]
	bl	func_80238E8
	bl	func_8025C80
	b	.L_36bde
	.align	2, 0
.L_36b0c:
	.4byte	gCurrentSprite
.L_36b10:
	bl	func_8036420
	b	.L_36b66
.L_36b16:
	bl	func_803643C
	b	.L_36b36
.L_36b1c:
	bl	func_8024688
	mov	r0, #74	@ 0x4a
	bl	m4aSongNumStart
.L_36b26:
	bl	func_80246B8
	b	.L_36bde
.L_36b2c:
	bl	func_802473C
	mov	r0, #74	@ 0x4a
	bl	m4aSongNumStart
.L_36b36:
	bl	func_802476C
	b	.L_36bde
.L_36b3c:
	bl	func_80247F0
	mov	r0, #74	@ 0x4a
	bl	m4aSongNumStart
.L_36b46:
	bl	func_8024820
	b	.L_36bde
.L_36b4c:
	bl	func_80248A4
	mov	r0, #74	@ 0x4a
	bl	m4aSongNumStart
.L_36b56:
	bl	func_80248D4
	b	.L_36bde
.L_36b5c:
	bl	func_8024958
	mov	r0, #74	@ 0x4a
	bl	m4aSongNumStart
.L_36b66:
	bl	func_8024988
	b	.L_36bde
.L_36b6c:
	bl	func_8024A0C
	mov	r0, #74	@ 0x4a
	bl	m4aSongNumStart
.L_36b76:
	bl	func_8024A3C
	b	.L_36bde
.L_36b7c:
	ldr	r2, .L_36b94
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_36ba4
	bl	func_8024AC0
.L_36b8c:
	bl	func_8024AD4
	b	.L_36bde
	.align	2, 0
.L_36b94:
	.4byte	gCurrentSprite
.L_36b98:
	ldr	r2, .L_36bac
	ldrh	r1, [r2, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	bne	.L_36bb0
.L_36ba4:
	mov	r0, #49	@ 0x31
	strb	r0, [r2, #28]
	b	.L_36bde
	.align	2, 0
.L_36bac:
	.4byte	gCurrentSprite
.L_36bb0:
	bl	func_8024BEC
.L_36bb4:
	bl	func_8024C00
	b	.L_36bde
.L_36bba:
	bl	func_8036514
.L_36bbe:
	bl	SpriteUtilFallOffscreenRight
	b	.L_36bde
.L_36bc4:
	bl	func_8036528
.L_36bc8:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_36bde
.L_36bce:
	bl	SpriteUtilDie
	b	.L_36bde
.L_36bd4:
	bl	func_80364A4
	b	.L_36bde
.L_36bda:
	bl	func_803645C
.L_36bde:
	ldr	r1, .L_36bfc
	ldrh	r2, [r1, #0]
	mov	r0, #128	@ 0x80
	and	r0, r2
	add	r7, r1, #0
	cmp	r0, #0
	beq	.L_36c84
	mov	r0, #64	@ 0x40
	and	r0, r2
	cmp	r0, #0
	beq	.L_36c00
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	add	r0, #5
	b	.L_36c08
.L_36bfc:
	.4byte	gCurrentSprite
.L_36c00:
	add	r1, r7, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	sub	r0, #5
.L_36c08:
	strb	r0, [r1, #0]
	ldr	r0, .L_36c90
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
.L_36c84:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_36c90:
	.4byte	sSinCosTable
