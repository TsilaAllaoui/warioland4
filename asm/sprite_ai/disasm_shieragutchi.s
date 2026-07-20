.include "macros.s.inc"


thumb_func_start func_8046548
func_8046548:
	ldr	r2, .L_46590
	ldrh	r1, [r2, #0]
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #3
	add	r0, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #78	@ 0x4e
	strb	r0, [r2, #30]
	add	r1, r2, #0
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r0, r2, #0
	add	r0, #33	@ 0x21
	mov	r1, #16
	strb	r1, [r0, #0]
	add	r3, r2, #0
	add	r3, #34	@ 0x22
	mov	r0, #8
	strb	r0, [r3, #0]
	add	r3, #1
	mov	r0, #48	@ 0x30
	strb	r0, [r3, #0]
	add	r0, r2, #0
	add	r0, #36	@ 0x24
	strb	r1, [r0, #0]
	add	r1, r2, #0
	add	r1, #37	@ 0x25
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_46590:
	.4byte	gCurrentSprite


thumb_func_start func_8046594
func_8046594:
	ldr	r0, .L_465ac
	ldr	r1, .L_465b0
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #16
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #45	@ 0x2d
	strb	r1, [r0, #0]
	bx	lr
.L_465ac:
	.4byte	gCurrentSprite
.L_465b0:
	.4byte	sUnk_83C9C20


thumb_func_start func_80465B4
func_80465B4:
	push	{lr}
	mov	r0, #180	@ 0xb4
	lsl	r0, r0, #1
	mov	r1, #150	@ 0x96
	lsl	r1, r1, #1
	bl	SpriteUtilCheckWarioNearbyAboveBelow
	cmp	r0, #1
	bne	.L_465e4
	ldr	r2, .L_465e0
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_465ec
	mov	r0, #110	@ 0x6e
	strb	r0, [r2, #28]
	b	.L_465ec
	.align	2, 0
.L_465e0:
	.4byte	gCurrentSprite
.L_465e4:
	ldr	r0, .L_465f0
	add	r0, #39	@ 0x27
	mov	r1, #45	@ 0x2d
	strb	r1, [r0, #0]
.L_465ec:
	pop	{r0}
	bx	r0
.L_465f0:
	.4byte	gCurrentSprite


thumb_func_start func_80465F4
func_80465F4:
	push	{lr}
	ldr	r0, .L_46618
	ldr	r1, .L_4661c
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	mov	r2, #0
	strh	r1, [r0, #20]
	mov	r1, #111	@ 0x6f
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	mov	r0, #71	@ 0x47
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_46618:
	.4byte	gCurrentSprite
.L_4661c:
	.4byte	sUnk_83C9C38


thumb_func_start func_8046620
func_8046620:
	push	{r4, r5, lr}
	ldr	r4, .L_46668
	ldrh	r0, [r4, #8]
	sub	r0, #160	@ 0xa0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_4666c
	ldrh	r0, [r0, #2]
	cmp	r0, #1
	bne	.L_46660
	ldr	r0, .L_46670
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_46660
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r1, .L_46674
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r3, [r0, #0]
	mov	r5, #0
	ldrsh	r1, [r0, r5]
	ldr	r0, .L_46678
	cmp	r1, r0
	bne	.L_4667c
.L_46660:
	mov	r0, #112	@ 0x70
	strb	r0, [r4, #28]
	b	.L_46688
	.align	2, 0
.L_46668:
	.4byte	gCurrentSprite
.L_4666c:
	.4byte	gUnk_30000A0
.L_46670:
	.4byte	gSpriteCollisionTileType
.L_46674:
	.4byte	sUnk_83C9CF0
.L_46678:
	.4byte	0x7FFF
.L_4667c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
.L_46688:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8046690
func_8046690:
	ldr	r0, .L_466a8
	ldr	r1, .L_466ac
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	mov	r2, #0
	strh	r1, [r0, #20]
	mov	r1, #113	@ 0x71
	strb	r1, [r0, #28]
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	bx	lr
.L_466a8:
	.4byte	gCurrentSprite
.L_466ac:
	.4byte	sUnk_83C9C20


thumb_func_start func_80466B0
func_80466B0:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_466d0
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_466d4
	ldrb	r1, [r0, #0]
	mov	r2, #15
	add	r0, r2, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_466d8
	strb	r2, [r4, #28]
	b	.L_46714
	.align	2, 0
.L_466d0:
	.4byte	gCurrentSprite
.L_466d4:
	.4byte	gSpriteCollisionTileType
.L_466d8:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_46700
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_46704
	cmp	r1, r0
	bne	.L_46708
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r5
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	b	.L_46712
.L_46700:
	.4byte	sUnk_83C9D58
.L_46704:
	.4byte	0x7FFF
.L_46708:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
.L_46712:
	strh	r0, [r4, #8]
.L_46714:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_804671C
func_804671C:
	push	{r4, r5, lr}
	ldr	r5, .L_46780
	ldr	r0, .L_46784
	str	r0, [r5, #4]
	mov	r0, #0
	strb	r0, [r5, #22]
	mov	r4, #0
	strh	r0, [r5, #20]
	strb	r4, [r5, #29]
	add	r1, r5, #0
	add	r1, #41	@ 0x29
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	strb	r4, [r0, #0]
	strb	r4, [r5, #26]
	ldrb	r0, [r5, #23]
	ldrh	r1, [r5, #8]
	ldrh	r2, [r5, #10]
	mov	r3, #1
	bl	func_807687C
	ldrh	r0, [r5, #8]
	sub	r0, #32
	ldrh	r1, [r5, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	ldr	r1, .L_46788
	ldr	r0, .L_4678c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #6
	ldrb	r2, [r5, #24]
	add	r0, r0, r2
	add	r0, r0, r1
	mov	r1, #2
	strb	r1, [r0, #0]
	ldrh	r1, [r5, #0]
	ldr	r0, .L_46790
	and	r0, r1
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_46780:
	.4byte	gCurrentSprite
.L_46784:
	.4byte	sUnk_83C9CC8
.L_46788:
	.4byte	gPersistentSpriteData
.L_4678c:
	.4byte	gCurrentRoom
.L_46790:
	.4byte	0xFEFF


thumb_func_start func_8046794
func_8046794:
	push	{lr}
	ldr	r1, .L_467a4
	mov	r0, #32
	strb	r0, [r1, #28]
	bl	func_804671C
	pop	{r0}
	bx	r0
.L_467a4:
	.4byte	gCurrentSprite


thumb_func_start func_80467A8
func_80467A8:
	push	{lr}
	ldr	r1, .L_467b8
	mov	r0, #34	@ 0x22
	strb	r0, [r1, #28]
	bl	func_804671C
	pop	{r0}
	bx	r0
.L_467b8:
	.4byte	gCurrentSprite


thumb_func_start func_80467BC
func_80467BC:
	ldr	r1, .L_467d4
	ldr	r0, .L_467d8
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #117	@ 0x75
	strb	r0, [r1, #28]
	mov	r0, #1
	strb	r0, [r1, #26]
	bx	lr
	.align	2, 0
.L_467d4:
	.4byte	gCurrentSprite
.L_467d8:
	.4byte	sUnk_83C9CB0


thumb_func_start func_80467DC
func_80467DC:
	push	{r4, r5, r6, lr}
	ldr	r6, .L_4680c
	ldrb	r4, [r6, #1]
	cmp	r4, #15
	bne	.L_46818
	ldr	r5, .L_46810
	ldrh	r0, [r5, #8]
	ldrh	r1, [r5, #10]
	bl	func_8023BFC
	ldr	r0, .L_46814
	ldrb	r0, [r0, #0]
	and	r4, r0
	cmp	r4, #0
	bne	.L_46822
	ldrh	r0, [r5, #8]
	add	r1, r0, #1
	strh	r1, [r5, #8]
	sub	r0, #31
	strh	r0, [r6, #20]
	ldrh	r0, [r5, #10]
	strh	r0, [r6, #18]
	b	.L_46822
	.align	2, 0
.L_4680c:
	.4byte	gWarioData
.L_46810:
	.4byte	gCurrentSprite
.L_46814:
	.4byte	gSpriteCollisionTileType
.L_46818:
	ldr	r0, .L_46828
	mov	r1, #112	@ 0x70
	strb	r1, [r0, #28]
	mov	r1, #2
	strb	r1, [r0, #26]
.L_46822:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_46828:
	.4byte	gCurrentSprite


thumb_func_start SpriteShieragutchi
SpriteShieragutchi:
	push	{lr}
	ldr	r0, .L_46844
	ldrb	r0, [r0, #28]
	cmp	r0, #117	@ 0x75
	bls	.L_46838
	b	.L_46a64
.L_46838:
	lsl	r0, r0, #2
	ldr	r1, .L_46848
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_46844:
	.4byte	gCurrentSprite
.L_46848:
	.4byte	.L_4684c
.L_4684c:
	.4byte	.L_46a24
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a28
	.4byte	.L_46a2c
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a46
	.4byte	.L_46a4a
	.4byte	.L_46a50
	.4byte	.L_46a54
	.4byte	.L_46a3c
	.4byte	.L_46a64
	.4byte	.L_46a3c
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a32
	.4byte	.L_46a36
	.4byte	.L_46a3c
	.4byte	.L_46a40
	.4byte	.L_46a64
	.4byte	.L_46a64
	.4byte	.L_46a5a
	.4byte	.L_46a5e
.L_46a24:
	bl	func_8046548
.L_46a28:
	bl	func_8046594
.L_46a2c:
	bl	func_80465B4
	b	.L_46a68
.L_46a32:
	bl	func_80465F4
.L_46a36:
	bl	func_8046620
	b	.L_46a68
.L_46a3c:
	bl	func_8046690
.L_46a40:
	bl	func_80466B0
	b	.L_46a68
.L_46a46:
	bl	func_8046794
.L_46a4a:
	bl	SpriteUtilFallOffscreenRight
	b	.L_46a68
.L_46a50:
	bl	func_80467A8
.L_46a54:
	bl	SpriteUtilFallOffscreenLeft
	b	.L_46a68
.L_46a5a:
	bl	func_80467BC
.L_46a5e:
	bl	func_80467DC
	b	.L_46a68
.L_46a64:
	bl	SpriteUtilDie
.L_46a68:
	pop	{r0}
	bx	r0
