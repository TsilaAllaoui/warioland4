.include "macros.s.inc"


thumb_func_start func_8056DB0
func_8056DB0:
	push	{r4, lr}
	ldr	r2, .L_56de8
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	add	r1, r0, #0
	ldrh	r3, [r2, #10]
	add	r0, r1, r3
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldr	r0, .L_56dec
	ldrh	r3, [r0, #18]
	add	r1, r1, r3
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	ldrh	r1, [r0, #14]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_56e1c
	ldr	r1, .L_56df0
	add	r0, r3, r1
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r4, r3
	bls	.L_56df4
	sub	r0, r4, r3
	b	.L_56df6
	.align	2, 0
.L_56de8:
	.4byte	gCurrentSprite
.L_56dec:
	.4byte	gWarioData
.L_56df0:
	.4byte	0xFFFFFE80
.L_56df4:
	sub	r0, r3, r4
.L_56df6:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #8
	bhi	.L_56e02
	mov	r1, #0
	b	.L_56e0e
.L_56e02:
	sub	r0, #8
	lsl	r0, r0, #14
	lsr	r1, r0, #16
	cmp	r1, #16
	bls	.L_56e0e
	mov	r1, #16
.L_56e0e:
	cmp	r4, r3
	bhi	.L_56e4e
	cmp	r4, r3
	bcs	.L_56e54
	ldrh	r0, [r2, #10]
	add	r0, r1, r0
	b	.L_56e52
.L_56e1c:
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #1
	add	r0, r3, r1
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r4, r3
	bls	.L_56e2e
	sub	r0, r4, r3
	b	.L_56e30
.L_56e2e:
	sub	r0, r3, r4
.L_56e30:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	sub	r0, #8
	lsl	r0, r0, #14
	lsr	r1, r0, #16
	cmp	r1, #16
	bls	.L_56e40
	mov	r1, #16
.L_56e40:
	cmp	r4, r3
	bcs	.L_56e4a
	ldrh	r0, [r2, #10]
	add	r0, r1, r0
	b	.L_56e52
.L_56e4a:
	cmp	r4, r3
	bls	.L_56e54
.L_56e4e:
	ldrh	r0, [r2, #10]
	sub	r0, r0, r1
.L_56e52:
	strh	r0, [r2, #10]
.L_56e54:
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r0, r3, #0
	ldrh	r1, [r2, #8]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldr	r1, .L_56e78
	add	r3, #170	@ 0xaa
	add	r0, r3, #0
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r4, r3
	bls	.L_56e7c
	sub	r0, r4, r3
	b	.L_56e7e
.L_56e78:
	.4byte	gBg1YPosition
.L_56e7c:
	sub	r0, r3, r4
.L_56e7e:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #8
	bhi	.L_56e8a
	mov	r1, #0
	b	.L_56e96
.L_56e8a:
	sub	r0, #8
	lsl	r0, r0, #11
	lsr	r1, r0, #16
	cmp	r1, #1
	bhi	.L_56e96
	mov	r1, #2
.L_56e96:
	cmp	r4, r3
	bls	.L_56ea0
	ldrh	r0, [r2, #8]
	sub	r0, r0, r1
	b	.L_56ea8
.L_56ea0:
	cmp	r4, r3
	bcs	.L_56eaa
	ldrh	r0, [r2, #8]
	add	r0, r1, r0
.L_56ea8:
	strh	r0, [r2, #8]
.L_56eaa:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_8056EB0
func_8056EB0:
	push	{r4, lr}
	mov	r0, #106	@ 0x6a
	bl	SpriteUtilDespawnIfSpriteExists
	add	r4, r0, #0
	cmp	r4, #0
	bne	.L_56f12
	ldr	r3, .L_56f18
	ldrh	r1, [r3, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	orr	r0, r1
	strh	r0, [r3, #0]
	strb	r2, [r3, #30]
	add	r0, r3, #0
	add	r0, #32
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r1, r3, #0
	add	r1, #34	@ 0x22
	mov	r0, #64	@ 0x40
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
	ldr	r0, .L_56f1c
	str	r0, [r3, #4]
	strb	r2, [r3, #22]
	strh	r4, [r3, #20]
	mov	r0, #15
	strb	r0, [r3, #28]
	add	r1, r3, #0
	add	r1, #40	@ 0x28
	mov	r0, #1
	strb	r0, [r1, #0]
	add	r0, r3, #0
	add	r0, #41	@ 0x29
	strb	r2, [r0, #0]
.L_56f12:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_56f18:
	.4byte	gCurrentSprite
.L_56f1c:
	.4byte	sUnk_83DC264


thumb_func_start func_8056F20
func_8056F20:
	ldr	r2, .L_56f4c
	ldr	r0, .L_56f50
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	mov	r0, #16
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	ldr	r1, .L_56f54
	ldrh	r0, [r2, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bls	.L_56f58
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #0
	b	.L_56f5e
	.align	2, 0
.L_56f4c:
	.4byte	gCurrentSprite
.L_56f50:
	.4byte	sUnk_83DC264
.L_56f54:
	.4byte	gWarioData
.L_56f58:
	add	r1, r2, #0
	add	r1, #41	@ 0x29
	mov	r0, #1
.L_56f5e:
	strb	r0, [r1, #0]
	bx	lr
	.align	2, 0


thumb_func_start func_8056F64
func_8056F64:
	push	{r4, r5, r6, lr}
	ldr	r5, .L_56f78
	add	r6, r5, #0
	add	r6, #39	@ 0x27
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	beq	.L_56f7c
	sub	r0, #1
	strb	r0, [r6, #0]
	b	.L_56fc4
.L_56f78:
	.4byte	gCurrentSprite
.L_56f7c:
	ldrh	r0, [r5, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r5, #10]
	add	r1, #96	@ 0x60
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_56fd0
	ldrb	r1, [r0, #0]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #0
	bne	.L_56fc4
	mov	r0, #107	@ 0x6b
	bl	SpriteUtilCountSpriteType
	add	r4, r0, #0
	mov	r0, #108	@ 0x6c
	bl	SpriteUtilCountSpriteType
	add	r4, r4, r0
	cmp	r4, #1
	bgt	.L_56fc4
	mov	r0, #17
	strb	r0, [r5, #28]
	mov	r0, #120	@ 0x78
	strb	r0, [r6, #0]
	add	r2, r5, #0
	add	r2, #40	@ 0x28
	ldrb	r0, [r2, #0]
	mov	r1, #1
	eor	r0, r1
	strb	r0, [r2, #0]
.L_56fc4:
	bl	func_8056DB0
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_56fd0:
	.4byte	gSpriteCollisionTileType


thumb_func_start func_8056FD4
func_8056FD4:
	push	{lr}
	ldr	r0, .L_56ff8
	ldr	r1, .L_56ffc
	str	r1, [r0, #4]
	mov	r1, #0
	strb	r1, [r0, #22]
	strh	r1, [r0, #20]
	mov	r1, #18
	strb	r1, [r0, #28]
	add	r0, #39	@ 0x27
	mov	r1, #160	@ 0xa0
	strb	r1, [r0, #0]
	mov	r0, #105	@ 0x69
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
	.align	2, 0
.L_56ff8:
	.4byte	gCurrentSprite
.L_56ffc:
	.4byte	sUnk_83DC28C


thumb_func_start func_8057000
func_8057000:
	push	{lr}
	ldr	r2, .L_57020
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_57018
	mov	r0, #19
	strb	r0, [r2, #28]
.L_57018:
	bl	func_8056DB0
	pop	{r0}
	bx	r0
.L_57020:
	.4byte	gCurrentSprite


thumb_func_start func_8057024
func_8057024:
	push	{lr}
	ldr	r0, .L_57038
	add	r1, r0, #0
	add	r1, #40	@ 0x28
	ldrb	r1, [r1, #0]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_57040
	ldr	r0, .L_5703c
	b	.L_57042
.L_57038:
	.4byte	gCurrentSprite
.L_5703c:
	.4byte	sUnk_83DC35C
.L_57040:
	ldr	r0, .L_57060
.L_57042:
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	mov	r0, #20
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r0, #106	@ 0x6a
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.L_57060:
	.4byte	sUnk_83DC394


thumb_func_start func_8057064
func_8057064:
	push	{lr}
	ldr	r2, .L_57084
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_5707c
	mov	r0, #21
	strb	r0, [r2, #28]
.L_5707c:
	bl	func_8056DB0
	pop	{r0}
	bx	r0
.L_57084:
	.4byte	gCurrentSprite


thumb_func_start func_8057088
func_8057088:
	ldr	r0, .L_5709c
	add	r1, r0, #0
	add	r1, #40	@ 0x28
	ldrb	r1, [r1, #0]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.L_570a4
	ldr	r0, .L_570a0
	b	.L_570a6
	.align	2, 0
.L_5709c:
	.4byte	gCurrentSprite
.L_570a0:
	.4byte	sUnk_83DC41C
.L_570a4:
	ldr	r0, .L_570bc
.L_570a6:
	str	r0, [r2, #4]
	mov	r0, #0
	strb	r0, [r2, #22]
	strh	r0, [r2, #20]
	mov	r0, #22
	strb	r0, [r2, #28]
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	bx	lr
.L_570bc:
	.4byte	sUnk_83DC444


thumb_func_start func_80570C0
func_80570C0:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r5, .L_57124
	ldrh	r0, [r5, #8]
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r5, #10]
	add	r1, #96	@ 0x60
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_57128
	ldrb	r1, [r0, #0]
	mov	r3, #15
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_57134
	add	r2, r5, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	cmp	r0, #0
	beq	.L_57134
	lsr	r0, r0, #24
	cmp	r0, #10
	bne	.L_57136
	add	r4, r5, #0
	add	r4, #40	@ 0x28
	ldrb	r1, [r4, #0]
	ldrb	r2, [r5, #25]
	ldrh	r3, [r5, #8]
	sub	r3, #32
	ldrh	r0, [r5, #10]
	add	r0, #96	@ 0x60
	str	r0, [sp, #0]
	mov	r0, #208	@ 0xd0
	bl	SpriteSpawnAsChild
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_5712c
	mov	r0, #108	@ 0x6c
	bl	m4aSongNumStart
	b	.L_57136
.L_57124:
	.4byte	gCurrentSprite
.L_57128:
	.4byte	gSpriteCollisionTileType
.L_5712c:
	mov	r0, #107	@ 0x6b
	bl	m4aSongNumStart
	b	.L_57136
.L_57134:
	strb	r3, [r5, #28]
.L_57136:
	bl	func_8056DB0
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8057144
func_8057144:
	ldr	r1, .L_57160
	ldr	r0, .L_57164
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	mov	r0, #111	@ 0x6f
	strb	r0, [r1, #28]
	ldrh	r2, [r1, #0]
	ldr	r0, .L_57168
	and	r0, r2
	strh	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_57160:
	.4byte	gCurrentSprite
.L_57164:
	.4byte	sUnk_83DC264
.L_57168:
	.4byte	0x7FFF


thumb_func_start func_805716C
func_805716C:
	ldr	r1, .L_57178
	ldrh	r0, [r1, #8]
	sub	r0, #8
	strh	r0, [r1, #8]
	bx	lr
	.align	2, 0
.L_57178:
	.4byte	gCurrentSprite


thumb_func_start func_805717C
func_805717C:
	push	{r4, lr}
	ldr	r0, .L_571dc
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r0, .L_571e0
	and	r0, r1
	mov	r2, #0
	mov	r3, #0
	mov	r4, #128	@ 0x80
	lsl	r4, r4, #3
	add	r1, r4, #0
	orr	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #26]
	strb	r2, [r1, #30]
	add	r1, #32
	mov	r0, #32
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
	ldr	r0, .L_571e4
	mov	r4, ip
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	strh	r3, [r4, #20]
	mov	r0, #15
	strb	r0, [r4, #28]
	mov	r1, ip
	add	r1, #39	@ 0x27
	mov	r0, #36	@ 0x24
	strb	r0, [r1, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_571dc:
	.4byte	gCurrentSprite
.L_571e0:
	.4byte	0xFFFB
.L_571e4:
	.4byte	sUnk_83DC3CC


thumb_func_start func_80571E8
func_80571E8:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_57224
	add	r2, r4, #0
	add	r2, #39	@ 0x27
	ldrb	r0, [r2, #0]
	sub	r1, r0, #1
	strb	r1, [r2, #0]
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_5723e
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #16
	bne	.L_57240
	ldrb	r0, [r4, #24]
	cmp	r0, #0
	bne	.L_57228
	add	r1, r0, #0
	ldrb	r2, [r4, #25]
	add	r2, #3
	ldrh	r3, [r4, #8]
	add	r3, #16
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #107	@ 0x6b
	bl	SpriteSpawnAsChild
	b	.L_57240
.L_57224:
	.4byte	gCurrentSprite
.L_57228:
	ldrb	r1, [r4, #24]
	ldrb	r2, [r4, #25]
	add	r2, #5
	ldrh	r3, [r4, #8]
	add	r3, #16
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #108	@ 0x6c
	bl	SpriteSpawnAsChild
	b	.L_57240
.L_5723e:
	strh	r0, [r4, #0]
.L_57240:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start SpriteHoggus
SpriteHoggus:
	push	{lr}
	ldr	r0, .L_5727c
	ldrb	r1, [r0, #28]
	add	r2, r0, #0
	cmp	r1, #110	@ 0x6e
	beq	.L_57260
	ldr	r0, .L_57280
	ldrb	r0, [r0, #0]
	cmp	r0, #16
	bne	.L_57260
	mov	r0, #110	@ 0x6e
	strb	r0, [r2, #28]
.L_57260:
	ldrb	r0, [r2, #28]
	cmp	r0, #19
	beq	.L_572c4
	cmp	r0, #19
	bgt	.L_5728e
	cmp	r0, #16
	beq	.L_572b4
	cmp	r0, #16
	bgt	.L_57284
	cmp	r0, #0
	beq	.L_572aa
	cmp	r0, #15
	beq	.L_572b0
	b	.L_572e0
.L_5727c:
	.4byte	gCurrentSprite
.L_57280:
	.4byte	gUnk_30000D8
.L_57284:
	cmp	r0, #17
	beq	.L_572ba
	cmp	r0, #18
	beq	.L_572be
	b	.L_572e0
.L_5728e:
	cmp	r0, #22
	beq	.L_572d2
	cmp	r0, #22
	bgt	.L_572a0
	cmp	r0, #20
	beq	.L_572c8
	cmp	r0, #21
	beq	.L_572ce
	b	.L_572e0
.L_572a0:
	cmp	r0, #110	@ 0x6e
	beq	.L_572d8
	cmp	r0, #111	@ 0x6f
	beq	.L_572dc
	b	.L_572e0
.L_572aa:
	bl	func_8056EB0
	b	.L_572e0
.L_572b0:
	bl	func_8056F20
.L_572b4:
	bl	func_8056F64
	b	.L_572e0
.L_572ba:
	bl	func_8056FD4
.L_572be:
	bl	func_8057000
	b	.L_572e0
.L_572c4:
	bl	func_8057024
.L_572c8:
	bl	func_8057064
	b	.L_572e0
.L_572ce:
	bl	func_8057088
.L_572d2:
	bl	func_80570C0
	b	.L_572e0
.L_572d8:
	bl	func_8057144
.L_572dc:
	bl	func_805716C
.L_572e0:
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknownD0
SpriteUnknownD0:
	push	{lr}
	ldr	r0, .L_57300
	mov	r1, #1
	strb	r1, [r0, #31]
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_572f6
	bl	func_805717C
.L_572f6:
	bl	func_80571E8
	pop	{r0}
	bx	r0
	.align	2, 0
.L_57300:
	.4byte	gCurrentSprite
