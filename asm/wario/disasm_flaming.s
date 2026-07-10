.include "macros.s.inc"


thumb_func_start func_80176EC
func_80176EC:
	push	{lr}
	ldr	r1, .L_17708
	ldr	r0, .L_1770c
	ldrb	r0, [r0, #1]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	pop	{r1}
	bx	r1
	.align	2, 0
.L_17708:
	.4byte	sFlamingWarioPoseTable
.L_1770c:
	.4byte	gWarioData


thumb_func_start func_8017710
func_8017710:
	ldr	r0, .L_1772c
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	ldr	r2, .L_17730
	cmp	r0, #0
	bne	.L_17724
	ldrb	r0, [r2, #7]
	cmp	r0, #0
	beq	.L_17734
.L_17724:
	mov	r0, #1
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_17778
.L_1772c:
	.4byte	gButtonsPressed
.L_17730:
	.4byte	gWarioData
.L_17734:
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_17742
	mov	r0, #96	@ 0x60
	b	.L_17744
.L_17742:
	ldr	r0, .L_1777c
.L_17744:
	strh	r0, [r2, #22]
	ldr	r3, .L_17780
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_17776
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_17776
	strb	r0, [r2, #31]
.L_17776:
	mov	r0, #255	@ 0xff
.L_17778:
	bx	lr
	.align	2, 0
.L_1777c:
	.4byte	0xFFA0
.L_17780:
	.4byte	sUnk_834B0B4


thumb_func_start func_8017784
func_8017784:
	ldr	r0, .L_177a4
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	ldr	r2, .L_177a8
	cmp	r0, #0
	beq	.L_17796
	mov	r0, #1
	strb	r0, [r2, #7]
.L_17796:
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_177ac
	mov	r0, #96	@ 0x60
	b	.L_177ae
.L_177a4:
	.4byte	gButtonsPressed
.L_177a8:
	.4byte	gWarioData
.L_177ac:
	ldr	r0, .L_177e4
.L_177ae:
	strh	r0, [r2, #22]
	ldr	r3, .L_177e8
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_177e0
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_177e0
	strb	r0, [r2, #31]
.L_177e0:
	mov	r0, #255	@ 0xff
	bx	lr
.L_177e4:
	.4byte	0xFFA0
.L_177e8:
	.4byte	sUnk_834B0B4


thumb_func_start func_80177EC
func_80177EC:
	ldr	r0, .L_17808
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	ldr	r2, .L_1780c
	cmp	r0, #0
	bne	.L_17800
	ldrb	r0, [r2, #7]
	cmp	r0, #0
	beq	.L_17810
.L_17800:
	mov	r0, #1
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_17854
.L_17808:
	.4byte	gButtonsPressed
.L_1780c:
	.4byte	gWarioData
.L_17810:
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_1781e
	mov	r0, #96	@ 0x60
	b	.L_17820
.L_1781e:
	ldr	r0, .L_17858
.L_17820:
	strh	r0, [r2, #22]
	ldr	r3, .L_1785c
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_17852
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_17852
	strb	r0, [r2, #31]
.L_17852:
	mov	r0, #255	@ 0xff
.L_17854:
	bx	lr
	.align	2, 0
.L_17858:
	.4byte	0xFFA0
.L_1785c:
	.4byte	sUnk_834B264


thumb_func_start func_8017860
func_8017860:
	ldr	r0, .L_17880
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	ldr	r2, .L_17884
	cmp	r0, #0
	beq	.L_17872
	mov	r0, #1
	strb	r0, [r2, #7]
.L_17872:
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_17888
	mov	r0, #96	@ 0x60
	b	.L_1788a
.L_17880:
	.4byte	gButtonsPressed
.L_17884:
	.4byte	gWarioData
.L_17888:
	ldr	r0, .L_178c0
.L_1788a:
	strh	r0, [r2, #22]
	ldr	r3, .L_178c4
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_178bc
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_178bc
	strb	r0, [r2, #31]
.L_178bc:
	mov	r0, #255	@ 0xff
	bx	lr
.L_178c0:
	.4byte	0xFFA0
.L_178c4:
	.4byte	sUnk_834B264


thumb_func_start func_80178C8
func_80178C8:
	ldr	r0, .L_178e4
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	ldr	r2, .L_178e8
	cmp	r0, #0
	bne	.L_178dc
	ldrb	r0, [r2, #7]
	cmp	r0, #0
	beq	.L_178ec
.L_178dc:
	mov	r0, #1
	strb	r0, [r2, #8]
	mov	r0, #254	@ 0xfe
	b	.L_17930
.L_178e4:
	.4byte	gButtonsPressed
.L_178e8:
	.4byte	gWarioData
.L_178ec:
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_178fa
	mov	r0, #96	@ 0x60
	b	.L_178fc
.L_178fa:
	ldr	r0, .L_17934
.L_178fc:
	strh	r0, [r2, #22]
	ldr	r3, .L_17938
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_1792e
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_1792e
	strb	r0, [r2, #31]
.L_1792e:
	mov	r0, #255	@ 0xff
.L_17930:
	bx	lr
	.align	2, 0
.L_17934:
	.4byte	0xFFA0
.L_17938:
	.4byte	sUnk_834B120


thumb_func_start func_801793C
func_801793C:
	ldr	r0, .L_1795c
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	ldr	r2, .L_17960
	cmp	r0, #0
	beq	.L_1794e
	mov	r0, #1
	strb	r0, [r2, #7]
.L_1794e:
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_17964
	mov	r0, #96	@ 0x60
	b	.L_17966
.L_1795c:
	.4byte	gButtonsPressed
.L_17960:
	.4byte	gWarioData
.L_17964:
	ldr	r0, .L_1799c
.L_17966:
	strh	r0, [r2, #22]
	ldr	r3, .L_179a0
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_17998
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_17998
	strb	r0, [r2, #31]
.L_17998:
	mov	r0, #255	@ 0xff
	bx	lr
.L_1799c:
	.4byte	0xFFA0
.L_179a0:
	.4byte	sUnk_834B120


thumb_func_start func_80179A4
func_80179A4:
	push	{r4, lr}
	ldr	r2, .L_179b8
	ldrh	r1, [r2, #14]
	mov	r3, #16
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_179bc
	strh	r3, [r2, #22]
	b	.L_179c0
.L_179b8:
	.4byte	gWarioData
.L_179bc:
	ldr	r0, .L_179dc
	strh	r0, [r2, #22]
.L_179c0:
	ldr	r0, .L_179e0
	ldrh	r3, [r0, #0]
	ldrh	r1, [r2, #14]
	add	r4, r3, #0
	and	r4, r1
	cmp	r4, #0
	beq	.L_179f0
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_179e4
	mov	r0, #32
	strh	r0, [r2, #22]
	b	.L_17a02
.L_179dc:
	.4byte	0xFFF0
.L_179e0:
	.4byte	gButtonsHeld
.L_179e4:
	ldr	r0, .L_179ec
	strh	r0, [r2, #22]
	b	.L_17a02
	.align	2, 0
.L_179ec:
	.4byte	0xFFE0
.L_179f0:
	mov	r0, #48	@ 0x30
	eor	r1, r0
	add	r0, r1, #0
	and	r0, r3
	lsl	r0, r0, #16
	cmp	r0, #0
	beq	.L_17a02
	strh	r1, [r2, #14]
	strh	r4, [r2, #22]
.L_17a02:
	ldrh	r0, [r2, #12]
	cmp	r0, #179	@ 0xb3
	bls	.L_17a0c
	mov	r0, #9
	b	.L_17a42
.L_17a0c:
	add	r0, #1
	mov	r4, #0
	strh	r0, [r2, #12]
	ldr	r3, .L_17a48
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r1, [r2, #30]
	ldrb	r0, [r0, #8]
	cmp	r1, r0
	bcc	.L_17a40
	strb	r4, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_17a40
	strb	r4, [r2, #31]
.L_17a40:
	mov	r0, #255	@ 0xff
.L_17a42:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_17a48:
	.4byte	sUnk_834B15C


thumb_func_start func_8017A4C
func_8017A4C:
	ldr	r2, .L_17a8c
	ldrh	r0, [r2, #12]
	cmp	r0, #179	@ 0xb3
	bhi	.L_17a58
	add	r0, #1
	strh	r0, [r2, #12]
.L_17a58:
	ldr	r3, .L_17a90
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_17a88
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_17a88
	strb	r0, [r2, #31]
.L_17a88:
	mov	r0, #255	@ 0xff
	bx	lr
.L_17a8c:
	.4byte	gWarioData
.L_17a90:
	.4byte	sUnk_834B15C


thumb_func_start func_8017A94
func_8017A94:
	ldr	r2, .L_17ad0
	ldr	r3, .L_17ad4
	ldrb	r0, [r2, #31]
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	add	r1, r1, r3
	ldrb	r0, [r2, #30]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bcc	.L_17ad8
	mov	r0, #0
	strb	r0, [r2, #30]
	ldrb	r0, [r2, #31]
	add	r0, #1
	strb	r0, [r2, #31]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldrb	r0, [r0, #8]
	cmp	r0, #0
	bne	.L_17ad8
	strb	r0, [r2, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r2, #4]
	mov	r0, #2
	b	.L_17ada
	.align	2, 0
.L_17ad0:
	.4byte	gWarioData
.L_17ad4:
	.4byte	sUnk_834B198
.L_17ad8:
	mov	r0, #255	@ 0xff
.L_17ada:
	bx	lr


thumb_func_start func_8017ADC
func_8017ADC:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	add	r5, r4, #0
	ldr	r6, .L_17b20
	ldrb	r0, [r6, #1]
	cmp	r0, #9
	bne	.L_17af8
	add	r0, r4, #3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_17af8
	b	.L_17c34
.L_17af8:
	bl	func_8010230
	cmp	r4, #0
	bne	.L_17b28
	ldr	r1, .L_17b24
	ldrb	r0, [r1, #26]
	mov	r4, #1
	cmp	r0, #2
	bne	.L_17b0c
	mov	r4, #2
.L_17b0c:
	strb	r5, [r1, #7]
	strh	r5, [r1, #22]
	mov	r0, #175	@ 0xaf
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	mov	r0, #4
	bl	VoiceSetPlay
	b	.L_17b34
.L_17b20:
	.4byte	gWarioData
.L_17b24:
	.4byte	gWarioDataCopy
.L_17b28:
	ldr	r1, .L_17b50
	ldrb	r0, [r1, #1]
	cmp	r0, #6
	bls	.L_17b34
	ldrh	r0, [r1, #12]
	strh	r0, [r6, #12]
.L_17b34:
	cmp	r4, #6
	beq	.L_17bf0
	cmp	r4, #6
	bgt	.L_17b5e
	cmp	r4, #3
	beq	.L_17bdc
	cmp	r4, #3
	bgt	.L_17b54
	cmp	r4, #1
	beq	.L_17bdc
	cmp	r4, #2
	beq	.L_17bf0
	b	.L_17c30
	.align	2, 0
.L_17b50:
	.4byte	gWarioDataCopy
.L_17b54:
	cmp	r4, #4
	beq	.L_17bf0
	cmp	r4, #5
	beq	.L_17bdc
	b	.L_17c30
.L_17b5e:
	cmp	r4, #9
	beq	.L_17c28
	cmp	r4, #9
	blt	.L_17c08
	cmp	r4, #253	@ 0xfd
	beq	.L_17ba8
	cmp	r4, #254	@ 0xfe
	bne	.L_17c30
	ldr	r0, .L_17b9c
	ldr	r3, .L_17ba0
	ldrb	r2, [r3, #1]
	lsl	r1, r2, #3
	add	r0, #7
	add	r1, r1, r0
	ldrb	r0, [r1, #0]
	cmp	r0, #2
	beq	.L_17b84
	add	r0, r2, #1
	strb	r0, [r3, #1]
.L_17b84:
	ldr	r1, .L_17ba4
	ldrb	r0, [r1, #31]
	strb	r0, [r3, #31]
	ldrh	r0, [r1, #22]
	strh	r0, [r3, #22]
	ldrb	r0, [r1, #8]
	cmp	r0, #1
	bne	.L_17c34
	mov	r0, #168	@ 0xa8
	strh	r0, [r3, #24]
	b	.L_17c34
	.align	2, 0
.L_17b9c:
	.4byte	sUnk_82DD800
.L_17ba0:
	add	r0, r3, r2
	lsl	r0, r0, #12
.L_17ba4:
	.4byte	gWarioDataCopy
.L_17ba8:
	ldr	r0, .L_17bd0
	ldr	r2, .L_17bd4
	ldrb	r3, [r2, #1]
	lsl	r1, r3, #3
	add	r0, #7
	add	r1, r1, r0
	ldrb	r0, [r1, #0]
	cmp	r0, #2
	bne	.L_17bbe
	sub	r0, r3, #1
	strb	r0, [r2, #1]
.L_17bbe:
	ldr	r1, .L_17bd8
	ldrb	r0, [r1, #31]
	strb	r0, [r2, #31]
	ldrh	r0, [r1, #22]
	strh	r0, [r2, #22]
	ldrb	r0, [r1, #7]
	strb	r0, [r2, #7]
	b	.L_17c34
	.align	2, 0
.L_17bd0:
	.4byte	sUnk_82DD800
.L_17bd4:
	add	r0, r3, r2
	lsl	r0, r0, #12
.L_17bd8:
	.4byte	gWarioDataCopy
.L_17bdc:
	ldr	r0, .L_17be8
	strb	r4, [r0, #1]
	ldr	r1, .L_17bec
	ldrh	r1, [r1, #22]
	strh	r1, [r0, #22]
	b	.L_17c34
.L_17be8:
	.4byte	gWarioData
.L_17bec:
	.4byte	gWarioDataCopy
.L_17bf0:
	ldr	r1, .L_17c00
	strb	r4, [r1, #1]
	ldr	r2, .L_17c04
	ldrh	r0, [r2, #22]
	strh	r0, [r1, #22]
	ldrh	r0, [r2, #24]
	strh	r0, [r1, #24]
	b	.L_17c34
.L_17c00:
	.4byte	gWarioData
.L_17c04:
	.4byte	gWarioDataCopy
.L_17c08:
	ldr	r1, .L_17c1c
	strb	r4, [r1, #1]
	ldr	r0, .L_17c20
	ldrh	r0, [r0, #22]
	strh	r0, [r1, #22]
	ldr	r0, .L_17c24
	bl	m4aSongNumStart
	b	.L_17c34
	.align	2, 0
.L_17c1c:
	.4byte	gWarioData
.L_17c20:
	.4byte	gWarioDataCopy
.L_17c24:
	.4byte	0x163
.L_17c28:
	mov	r0, #178	@ 0xb2
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_17c30:
	ldr	r0, .L_17c3c
	strb	r4, [r0, #1]
.L_17c34:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_17c3c:
	.4byte	gWarioData


thumb_func_start func_8017C40
func_8017C40:
	push	{r4, lr}
	ldr	r3, .L_17ca8
	ldr	r2, .L_17cac
	ldr	r4, .L_17cb0
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r1, r2, #1
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #8]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r1, r2, #2
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #9]
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r2, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r3, #10]
	bl	func_800FE58
	mov	r2, #0
	ldrb	r0, [r4, #26]
	cmp	r0, #2
	bne	.L_17c86
	ldrh	r1, [r4, #24]
	lsl	r0, r1, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	sub	r1, #8
	strh	r1, [r4, #24]
.L_17c86:
	mov	r1, #24
	ldrsh	r0, [r4, r1]
	mov	r1, #128	@ 0x80
	neg	r1, r1
	cmp	r0, r1
	bge	.L_17c94
	strh	r1, [r4, #24]
.L_17c94:
	ldrh	r0, [r4, #20]
	sub	r0, r0, r2
	strh	r0, [r4, #20]
	ldrb	r0, [r4, #26]
	cmp	r0, #0
	bne	.L_17cb4
	bl	func_800FDBC
	b	.L_17cb6
	.align	2, 0
.L_17ca8:
	.4byte	gWarioCollisionData
.L_17cac:
	.4byte	sUnk_82DD800
.L_17cb0:
	add	r0, r3, r2
	lsl	r0, r0, #12
.L_17cb4:
	ldrh	r0, [r4, #22]
.L_17cb6:
	lsl	r0, r0, #16
	asr	r0, r0, #19
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	ldr	r1, .L_17ccc
	ldrh	r0, [r1, #18]
	add	r0, r0, r2
	strh	r0, [r1, #18]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_17ccc:
	.4byte	gWarioData


thumb_func_start func_8017CD0
func_8017CD0:
	push	{r4, r5, lr}
	ldr	r4, .L_17d28
	ldr	r2, .L_17d2c
	ldr	r3, .L_17d30
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #4
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #11]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #5
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #12]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r1, r2, #6
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #13]
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #3
	add	r2, #7
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strb	r0, [r4, #17]
	mov	r1, #24
	ldrsh	r0, [r3, r1]
	cmp	r0, #47	@ 0x2f
	bgt	.L_17d14
	mov	r0, #0
	strb	r0, [r4, #12]
.L_17d14:
	mov	r5, #255	@ 0xff
	ldrh	r1, [r4, #2]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_17d34
	bl	func_8014C4C
	b	.L_17d64
	.align	2, 0
.L_17d28:
	.4byte	gWarioCollisionData
.L_17d2c:
	.4byte	sUnk_82DD800
.L_17d30:
	add	r0, r3, r2
	lsl	r0, r0, #12
.L_17d34:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_17d42
	bl	func_8014930
	b	.L_17d64
.L_17d42:
	ldrh	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_17d5a
	ldrb	r0, [r4, #17]
	cmp	r0, #2
	bne	.L_17d54
	bl	func_8014930
	b	.L_17d64
.L_17d54:
	bl	func_80143D8
	b	.L_17d64
.L_17d5a:
	ldrb	r0, [r4, #17]
	cmp	r0, #0
	bne	.L_17d68
	bl	func_8014758
.L_17d64:
	lsl	r0, r0, #24
	lsr	r5, r0, #24
.L_17d68:
	ldr	r4, .L_17d90
	ldrh	r0, [r4, #20]
	sub	r0, #48	@ 0x30
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #18]
	bl	func_806DAC0
	add	r1, r0, #0
	mov	r0, #255	@ 0xff
	and	r1, r0
	cmp	r1, #1
	bne	.L_17d94
	strb	r1, [r4, #0]
	mov	r0, #96	@ 0x60
	strb	r0, [r4, #4]
	mov	r0, #0
	bl	func_8016614
	b	.L_17dc0
.L_17d90:
	.4byte	gWarioData
.L_17d94:
	ldrb	r0, [r4, #1]
	cmp	r0, #6
	bgt	.L_17db6
	cmp	r0, #1
	blt	.L_17db6
	ldr	r0, .L_17dc8
	ldrb	r0, [r0, #18]
	cmp	r0, #0
	beq	.L_17db6
	ldrh	r0, [r4, #14]
	mov	r1, #48	@ 0x30
	eor	r0, r1
	strh	r0, [r4, #14]
	ldrb	r0, [r4, #1]
	add	r0, #2
	lsl	r0, r0, #24
	lsr	r5, r0, #24
.L_17db6:
	cmp	r5, #255	@ 0xff
	beq	.L_17dc0
	add	r0, r5, #0
	bl	func_8017ADC
.L_17dc0:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_17dc8:
	.4byte	gWarioCollisionData


thumb_func_start func_8017DCC
func_8017DCC:
	push	{r4, r5, lr}
	add	r4, r0, #0
	lsl	r4, r4, #24
	lsr	r4, r4, #24
	bl	func_800FF64
.L_17dd8:
	ldr	r1, .L_17e28
	lsl	r4, r4, #2
	ldr	r2, .L_17e2c
	ldrb	r0, [r2, #1]
	lsl	r0, r0, #3
	add	r4, r4, r0
	add	r4, r4, r1
	ldr	r3, [r4, #0]
	ldrb	r1, [r2, #31]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r3, r3, r0
	ldr	r1, [r3, #0]
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	strh	r0, [r2, #40]	@ 0x28
	add	r1, #1
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #5
	strh	r0, [r2, #48]	@ 0x30
	add	r1, #1
	str	r1, [r2, #36]	@ 0x24
	ldrh	r0, [r2, #40]	@ 0x28
	add	r1, r1, r0
	str	r1, [r2, #44]	@ 0x2c
	ldr	r0, [r3, #4]
	str	r0, [r2, #32]
	ldr	r1, .L_17e30
	mov	r0, #64	@ 0x40
	strh	r0, [r1, #0]
	ldrb	r0, [r2, #1]
	cmp	r0, #9
	bhi	.L_17eb4
	lsl	r0, r0, #2
	ldr	r1, .L_17e34
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_17e28:
	.4byte	sUnk_82DD7B0
.L_17e2c:
	.4byte	gWarioData
.L_17e30:
	.4byte	gWarioPaletteSize
.L_17e34:
	.4byte	.L_17e38
.L_17e38:
	.4byte	.L_17e60
	.4byte	.L_17e60
	.4byte	.L_17e60
	.4byte	.L_17e68
	.4byte	.L_17e68
	.4byte	.L_17e78
	.4byte	.L_17e78
	.4byte	.L_17e70
	.4byte	.L_17e70
	.4byte	.L_17ea8
.L_17e60:
	ldr	r5, .L_17e64
	b	.L_17eb4
.L_17e64:
	.4byte	sUnk_82DE618
.L_17e68:
	ldr	r5, .L_17e6c
	b	.L_17eb4
.L_17e6c:
	.4byte	sUnk_82DE658
.L_17e70:
	ldr	r0, .L_17e7c
	ldrh	r0, [r0, #12]
	cmp	r0, #99	@ 0x63
	bhi	.L_17e84
.L_17e78:
	ldr	r5, .L_17e80
	b	.L_17eb4
.L_17e7c:
	add	r0, r3, r2
	lsl	r0, r0, #12
.L_17e80:
	.4byte	sUnk_82DE698
.L_17e84:
	cmp	r0, #119	@ 0x77
	bhi	.L_17e90
	ldr	r5, .L_17e8c
	b	.L_17eb4
.L_17e8c:
	.4byte	sUnk_82DE6D8
.L_17e90:
	cmp	r0, #139	@ 0x8b
	bhi	.L_17e9c
	ldr	r5, .L_17e98
	b	.L_17eb4
.L_17e98:
	.4byte	sUnk_82DE718
.L_17e9c:
	ldr	r5, .L_17ea4
	cmp	r0, #159	@ 0x9f
	bhi	.L_17eb4
	b	.L_17eb2
.L_17ea4:
	.4byte	sUnk_82DE798
.L_17ea8:
	ldr	r0, .L_17ec4
	ldrb	r0, [r0, #31]
	ldr	r5, .L_17ec8
	cmp	r0, #1
	bhi	.L_17eb4
.L_17eb2:
	sub	r5, #64	@ 0x40
.L_17eb4:
	add	r0, r5, #0
	mov	r1, #0
	mov	r2, #32
	bl	func_800FD90
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_17ec4:
	.4byte	gWarioData
.L_17ec8:
	.4byte	sUnk_82DE7D8


thumb_func_start func_8017ECC
func_8017ECC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, .L_17f44
	mov	r0, #0
	ldrsb	r0, [r7, r0]
	cmp	r0, #6
	beq	.L_17f3a
	ldr	r4, .L_17f48
	ldr	r0, [r4, #0]
	mov	r8, r0
	mov	r5, #175	@ 0xaf
	lsl	r5, r5, #1
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r6, [r4, #12]
	add	r0, r6, #0
	add	r1, r5, #0
	bl	m4aMPlayTempoControl
	ldr	r4, .L_17f4c
	sub	r5, #94	@ 0x5e
	mov	r0, r8
	add	r1, r4, #0
	add	r2, r5, #0
	bl	m4aMPlayPitchControl
	add	r0, r6, #0
	add	r1, r4, #0
	add	r2, r5, #0
	bl	m4aMPlayPitchControl
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayModDepthSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayModDepthSet
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayLFOSpeedSet
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #20
	bl	m4aMPlayLFOSpeedSet
	mov	r0, #6
	strb	r0, [r7, #0]
.L_17f3a:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_17f44:
	.4byte	gWarioMusicState
.L_17f48:
	.4byte	gMPlayTable
.L_17f4c:
	.4byte	0xFFFF


thumb_func_start func_8017F50
func_8017F50:
	push	{r4, lr}
	ldr	r3, .L_17f94
	ldr	r4, .L_17f98
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #0]
	ldr	r2, .L_17f9c
	lsl	r1, r1, #3
	add	r0, r1, r2
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #50]	@ 0x32
	add	r0, r2, #2
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #52]	@ 0x34
	add	r0, r2, #4
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #54]	@ 0x36
	add	r2, #6
	add	r1, r1, r2
	ldrh	r0, [r1, #0]
	strh	r0, [r4, #56]	@ 0x38
	ldrb	r0, [r4, #1]
	lsl	r0, r0, #3
	add	r3, #7
	add	r0, r0, r3
	ldrb	r0, [r0, #0]
	add	r1, r0, #0
	cmp	r0, #2
	bne	.L_17fa0
	strb	r0, [r4, #26]
	b	.L_17fa8
.L_17f94:
	.4byte	sUnk_82DD800
.L_17f98:
	add	r0, r3, r2
	lsl	r0, r0, #12
.L_17f9c:
	.4byte	sWarioHitboxes
.L_17fa0:
	ldrb	r0, [r4, #26]
	cmp	r0, #1
	beq	.L_17fa8
	strb	r1, [r4, #26]
.L_17fa8:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
