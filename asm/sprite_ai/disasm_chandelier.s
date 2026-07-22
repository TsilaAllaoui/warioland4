.include "macros.s.inc"


thumb_func_start func_8069734
func_8069734:
	push	{r4, lr}
	ldr	r0, .L_6979c
	mov	ip, r0
	ldrh	r1, [r0, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #14
	strb	r0, [r1, #30]
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #33	@ 0x21
	strb	r3, [r0, #0]
	add	r0, #1
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r1, #3
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #192	@ 0xc0
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #44	@ 0x2c
	strb	r0, [r1, #0]
	ldr	r0, .L_697a0
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	strb	r2, [r1, #28]
	add	r1, #39	@ 0x27
	mov	r0, #1
	strb	r0, [r1, #0]
	mov	r2, ip
	ldrh	r0, [r2, #10]
	add	r0, #32
	strh	r0, [r2, #10]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6979c:
	.4byte	gCurrentSprite
.L_697a0:
	.4byte	sUnk_83F0E4C


thumb_func_start func_80697A4
func_80697A4:
	ldr	r2, .L_697cc
	add	r3, r2, #0
	add	r3, #39	@ 0x27
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_697c8
	ldr	r0, .L_697d0
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	mov	r0, #96	@ 0x60
	strb	r0, [r3, #0]
	mov	r0, #18
	strb	r0, [r2, #28]
.L_697c8:
	bx	lr
	.align	2, 0
.L_697cc:
	.4byte	gCurrentSprite
.L_697d0:
	.4byte	sUnk_83F0E64


thumb_func_start func_80697D4
func_80697D4:
	push	{lr}
	ldr	r1, .L_697f8
	ldr	r2, [r1, #20]
	ldr	r0, .L_697fc
	and	r2, r0
	ldr	r0, .L_69800
	cmp	r2, r0
	bne	.L_69804
	ldrh	r1, [r1, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_6981a
	mov	r0, #63	@ 0x3f
	bl	m4aSongNumStart
	b	.L_6981a
	.align	2, 0
.L_697f8:
	.4byte	gCurrentSprite
.L_697fc:
	.4byte	0xFFFFFF
.L_69800:
	.4byte	0x60001
.L_69804:
	ldr	r0, .L_6985c
	cmp	r2, r0
	bne	.L_6981a
	ldrh	r1, [r1, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_6981a
	mov	r0, #63	@ 0x3f
	bl	m4aSongNumStart
.L_6981a:
	ldr	r1, .L_69860
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r0, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #0
	bne	.L_69856
	ldr	r0, .L_69864
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	mov	r0, #0
	strh	r2, [r1, #20]
	add	r2, r1, #0
	add	r2, #42	@ 0x2a
	strb	r0, [r2, #0]
	mov	r0, #20
	strb	r0, [r1, #28]
	mov	r0, #1
	strb	r0, [r1, #26]
	ldrh	r1, [r1, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_69856
	mov	r0, #64	@ 0x40
	bl	m4aSongNumStart
.L_69856:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6985c:
	.4byte	0x60009
.L_69860:
	.4byte	gCurrentSprite
.L_69864:
	.4byte	sUnk_83F0EEC


thumb_func_start func_8069868
func_8069868:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_69898
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r1, r0, #0
	ldr	r0, .L_6989c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_698a0
	strh	r1, [r4, #8]
	mov	r0, #49	@ 0x31
	strb	r0, [r4, #28]
	ldrh	r1, [r4, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	beq	.L_698dc
	mov	r0, #65	@ 0x41
	bl	m4aSongNumStart
	b	.L_698dc
	.align	2, 0
.L_69898:
	.4byte	gCurrentSprite
.L_6989c:
	.4byte	gSpriteAiCollisionResult
.L_698a0:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_698c8
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_698cc
	cmp	r1, r0
	bne	.L_698d0
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_698da
.L_698c8:
	.4byte	sUnk_83F1084
.L_698cc:
	.4byte	0x7FFF
.L_698d0:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_698da:
	strh	r0, [r4, #8]
.L_698dc:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_80698E4
func_80698E4:
	ldr	r2, .L_69930
	add	r3, r2, #0
	add	r3, #34	@ 0x22
	mov	r1, #0
	mov	r0, #56	@ 0x38
	strb	r0, [r3, #0]
	add	r3, #1
	mov	r0, #64	@ 0x40
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r1, [r0, #0]
	add	r3, #2
	mov	r0, #48	@ 0x30
	strb	r0, [r3, #0]
	add	r3, #1
	mov	r0, #44	@ 0x2c
	strb	r0, [r3, #0]
	ldr	r0, .L_69934
	str	r0, [r2, #4]
	strb	r1, [r2, #22]
	strh	r1, [r2, #20]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #255	@ 0xff
	strb	r0, [r1, #0]
	mov	r0, #50	@ 0x32
	strb	r0, [r2, #28]
	ldr	r1, .L_69938
	ldr	r0, .L_6993c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r2, [r2, #24]
	add	r0, r0, r2
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	bx	lr
.L_69930:
	.4byte	gCurrentSprite
.L_69934:
	.4byte	sUnk_83F0F04
.L_69938:
	.4byte	gPersistentSpriteData
.L_6993c:
	.4byte	gCurrentRoom


thumb_func_start func_8069940
func_8069940:
	ldr	r2, .L_6995c
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_6995a
	mov	r0, #25
	strb	r0, [r1, #0]
	mov	r0, #109	@ 0x6d
	strb	r0, [r2, #28]
.L_6995a:
	bx	lr
.L_6995c:
	.4byte	gCurrentSprite


thumb_func_start func_8069960
func_8069960:
	ldr	r2, .L_69978
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_69976
	strh	r0, [r2, #0]
.L_69976:
	bx	lr
.L_69978:
	.4byte	gCurrentSprite


thumb_func_start SpriteChandelier
SpriteChandelier:
	push	{lr}
	ldr	r0, .L_69994
	ldrb	r0, [r0, #28]
	cmp	r0, #18
	beq	.L_699b8
	cmp	r0, #18
	bgt	.L_69998
	cmp	r0, #0
	beq	.L_699ac
	cmp	r0, #16
	beq	.L_699b2
	b	.L_699d0
.L_69994:
	.4byte	gCurrentSprite
.L_69998:
	cmp	r0, #50	@ 0x32
	beq	.L_699c4
	cmp	r0, #50	@ 0x32
	bgt	.L_699a6
	cmp	r0, #20
	beq	.L_699be
	b	.L_699d0
.L_699a6:
	cmp	r0, #109	@ 0x6d
	beq	.L_699ca
	b	.L_699d0
.L_699ac:
	bl	func_8069734
	b	.L_699d4
.L_699b2:
	bl	func_80697A4
	b	.L_699d4
.L_699b8:
	bl	func_80697D4
	b	.L_699d4
.L_699be:
	bl	func_8069868
	b	.L_699d4
.L_699c4:
	bl	func_8069940
	b	.L_699d4
.L_699ca:
	bl	func_8069960
	b	.L_699d4
.L_699d0:
	bl	func_80698E4
.L_699d4:
	pop	{r0}
	bx	r0
