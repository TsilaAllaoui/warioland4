.include "macros.s.inc"


thumb_func_start func_805ACC4
func_805ACC4:
	push	{r4, r5, r6, lr}
	add	r2, r0, #0
	ldr	r0, .L_5ace8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5acd2
	ldr	r2, .L_5acec
.L_5acd2:
	mov	r6, #0
	ldr	r1, .L_5acf0
	add	r5, r1, #0
	add	r5, #40	@ 0x28
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_5acf4
	sub	r0, #1
	strb	r0, [r5, #0]
	mov	r0, #0
	b	.L_5ad42
.L_5ace8:
	.4byte	gCuckooCondorPendulumLength
.L_5acec:
	.4byte	sUnk_83DFD8C
.L_5acf0:
	.4byte	gCurrentSprite
.L_5acf4:
	add	r4, r1, #0
	add	r4, #39	@ 0x27
	ldrb	r0, [r4, #0]
	add	r1, r0, #1
	strb	r1, [r4, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	lsl	r0, r1, #2
	add	r0, r0, r2
	ldrb	r3, [r0, #0]
	cmp	r3, #255	@ 0xff
	bne	.L_5ad16
	mov	r1, #0
	mov	r0, #1
	strb	r0, [r4, #0]
	ldrb	r3, [r2, #0]
	mov	r6, #1
.L_5ad16:
	lsl	r0, r1, #2
	add	r0, r0, r2
	ldrb	r0, [r0, #1]
	strb	r0, [r5, #0]
	ldr	r1, .L_5ad48
	ldr	r2, .L_5ad4c
	lsl	r0, r3, #2
	add	r0, r0, r2
	ldr	r2, [r0, #0]
	str	r2, [r1, #0]
	ldr	r0, .L_5ad50
	str	r0, [r1, #4]
	ldr	r3, .L_5ad54
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	add	r2, #224	@ 0xe0
	str	r2, [r1, #0]
	ldr	r0, .L_5ad58
	str	r0, [r1, #4]
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	add	r0, r6, #0
.L_5ad42:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L_5ad48:
	.4byte	0x40000D4
.L_5ad4c:
	.4byte	sUnk_878F170
.L_5ad50:
	.4byte	0x6014000
.L_5ad54:
	.4byte	0x80000070
.L_5ad58:
	.4byte	0x6014400


thumb_func_start func_805AD5C
func_805AD5C:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_5ad6c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5ad70
	mov	r6, #4
	mov	r7, #1
	b	.L_5ad74
.L_5ad6c:
	.4byte	gBossTookDamage
.L_5ad70:
	mov	r6, #8
	mov	r7, #2
.L_5ad74:
	ldr	r3, .L_5adb0
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	add	r1, r0, #0
	ldrh	r2, [r3, #10]
	add	r0, r1, r2
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	ldr	r4, .L_5adb4
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r2, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r4
	ldrh	r0, [r0, #10]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	sub	r0, r5, r1
	cmp	r0, #4
	ble	.L_5addc
	add	r0, r1, #4
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	cmp	r5, r1
	bls	.L_5adb8
	sub	r0, r5, r1
	b	.L_5adba
	.align	2, 0
.L_5adb0:
	.4byte	gCurrentSprite
.L_5adb4:
	.4byte	gSpriteData
.L_5adb8:
	sub	r0, r1, r5
.L_5adba:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, r6
	bgt	.L_5adc6
	mov	r2, #0
	b	.L_5adce
.L_5adc6:
	sub	r0, r0, r6
	asr	r0, r7
	lsl	r0, r0, #16
	lsr	r2, r0, #16
.L_5adce:
	cmp	r5, r1
	bhi	.L_5ae14
	cmp	r5, r1
	bcs	.L_5ae1a
	ldrh	r0, [r3, #10]
	add	r0, r2, r0
	b	.L_5ae18
.L_5addc:
	sub	r0, r1, r5
	cmp	r0, #4
	ble	.L_5ae1a
	sub	r0, r1, #4
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	cmp	r5, r1
	bls	.L_5adf0
	sub	r0, r5, r1
	b	.L_5adf2
.L_5adf0:
	sub	r0, r1, r5
.L_5adf2:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, r6
	bgt	.L_5adfe
	mov	r2, #0
	b	.L_5ae06
.L_5adfe:
	sub	r0, r0, r6
	asr	r0, r7
	lsl	r0, r0, #16
	lsr	r2, r0, #16
.L_5ae06:
	cmp	r5, r1
	bcs	.L_5ae10
	ldrh	r0, [r3, #10]
	add	r0, r2, r0
	b	.L_5ae18
.L_5ae10:
	cmp	r5, r1
	bls	.L_5ae1a
.L_5ae14:
	ldrh	r0, [r3, #10]
	sub	r0, r0, r2
.L_5ae18:
	strh	r0, [r3, #10]
.L_5ae1a:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_805AE20
func_805AE20:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_5ae70
	ldrb	r0, [r0, #0]
	mov	r6, #1
	cmp	r0, #0
	beq	.L_5ae34
	mov	r6, #2
	cmp	r0, #2
	bne	.L_5ae34
	mov	r6, #3
.L_5ae34:
	ldr	r0, .L_5ae74
	ldrb	r1, [r0, #24]
	mov	r2, #48	@ 0x30
	add	r5, r0, #0
	cmp	r1, #0
	bne	.L_5ae42
	mov	r2, #64	@ 0x40
.L_5ae42:
	ldrh	r0, [r5, #8]
	sub	r0, r0, r2
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #2
	add	r1, r2, #0
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldr	r3, .L_5ae78
	add	r0, r5, #0
	add	r0, #42	@ 0x2a
	ldrb	r2, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r3
	ldrh	r0, [r0, #8]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r4, r1
	bls	.L_5ae7c
	sub	r0, r4, r1
	b	.L_5ae7e
.L_5ae70:
	.4byte	gBossTookDamage
.L_5ae74:
	.4byte	gCurrentSprite
.L_5ae78:
	.4byte	gSpriteData
.L_5ae7c:
	sub	r0, r1, r4
.L_5ae7e:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #1
	bhi	.L_5ae8a
	mov	r2, #0
	b	.L_5ae98
.L_5ae8a:
	sub	r0, #2
	asr	r0, r6
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, #0
	bne	.L_5ae98
	mov	r2, #1
.L_5ae98:
	cmp	r4, r1
	bls	.L_5aea2
	ldrh	r0, [r5, #8]
	sub	r0, r0, r2
	b	.L_5aeaa
.L_5aea2:
	cmp	r4, r1
	bcs	.L_5aeac
	ldrh	r0, [r5, #8]
	add	r0, r2, r0
.L_5aeaa:
	strh	r0, [r5, #8]
.L_5aeac:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805AEB4
func_805AEB4:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_5aec4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5aec8
	mov	r6, #4
	mov	r7, #1
	b	.L_5aecc
.L_5aec4:
	.4byte	gBossTookDamage
.L_5aec8:
	mov	r6, #8
	mov	r7, #2
.L_5aecc:
	ldr	r3, .L_5af08
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #2
	add	r1, r0, #0
	ldrh	r2, [r3, #8]
	add	r0, r1, r2
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	ldr	r4, .L_5af0c
	add	r0, r3, #0
	add	r0, #42	@ 0x2a
	ldrb	r2, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r4
	ldrh	r0, [r0, #8]
	add	r1, r1, r0
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	sub	r0, r5, r1
	cmp	r0, #32
	ble	.L_5af34
	add	r0, r1, #0
	add	r0, #32
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	cmp	r5, r1
	bls	.L_5af10
	sub	r0, r5, r1
	b	.L_5af12
.L_5af08:
	.4byte	gCurrentSprite
.L_5af0c:
	.4byte	gSpriteData
.L_5af10:
	sub	r0, r1, r5
.L_5af12:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, r6
	bgt	.L_5af1e
	mov	r2, #0
	b	.L_5af26
.L_5af1e:
	sub	r0, r0, r6
	asr	r0, r7
	lsl	r0, r0, #16
	lsr	r2, r0, #16
.L_5af26:
	cmp	r5, r1
	bhi	.L_5af6e
	cmp	r5, r1
	bcs	.L_5af74
	ldrh	r0, [r3, #8]
	add	r0, r2, r0
	b	.L_5af72
.L_5af34:
	sub	r0, r1, r5
	cmp	r0, #32
	ble	.L_5af74
	add	r0, r1, #0
	sub	r0, #32
	lsl	r0, r0, #16
	lsr	r1, r0, #16
	cmp	r5, r1
	bls	.L_5af4a
	sub	r0, r5, r1
	b	.L_5af4c
.L_5af4a:
	sub	r0, r1, r5
.L_5af4c:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, r6
	bgt	.L_5af58
	mov	r2, #0
	b	.L_5af60
.L_5af58:
	sub	r0, r0, r6
	asr	r0, r7
	lsl	r0, r0, #16
	lsr	r2, r0, #16
.L_5af60:
	cmp	r5, r1
	bcs	.L_5af6a
	ldrh	r0, [r3, #8]
	add	r0, r2, r0
	b	.L_5af72
.L_5af6a:
	cmp	r5, r1
	bls	.L_5af74
.L_5af6e:
	ldrh	r0, [r3, #8]
	sub	r0, r0, r2
.L_5af72:
	strh	r0, [r3, #8]
.L_5af74:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805AF7C
func_805AF7C:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_5afb4
	ldr	r1, .L_5afb8
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	mov	r2, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r3
	ldrh	r4, [r0, #8]
	ldrh	r6, [r0, #10]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	ldrb	r0, [r0, #0]
	mul	r0, r2
	add	r0, r0, r3
	ldrh	r2, [r0, #8]
	ldrh	r5, [r0, #10]
	add	r3, r1, #0
	cmp	r2, r4
	bls	.L_5afbc
	sub	r0, r2, r4
	lsl	r0, r0, #16
	lsr	r0, r0, #18
	ldrb	r1, [r3, #24]
	mul	r0, r1
	sub	r0, r2, r0
	b	.L_5afc8
.L_5afb4:
	.4byte	gSpriteData
.L_5afb8:
	.4byte	gCurrentSprite
.L_5afbc:
	sub	r0, r4, r2
	lsl	r0, r0, #16
	lsr	r0, r0, #18
	ldrb	r1, [r3, #24]
	mul	r0, r1
	add	r0, r2, r0
.L_5afc8:
	strh	r0, [r3, #8]
	cmp	r5, r6
	bls	.L_5afdc
	sub	r0, r5, r6
	lsl	r0, r0, #16
	lsr	r0, r0, #18
	ldrb	r1, [r3, #24]
	mul	r0, r1
	sub	r0, r5, r0
	b	.L_5afe8
.L_5afdc:
	sub	r0, r6, r5
	lsl	r0, r0, #16
	lsr	r0, r0, #18
	ldrb	r1, [r3, #24]
	mul	r0, r1
	add	r0, r5, r0
.L_5afe8:
	strh	r0, [r3, #10]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_805AFF0
func_805AFF0:
	push	{r4, r5, lr}
	ldr	r3, .L_5b024
	ldr	r1, .L_5b028
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	mov	r2, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r3
	ldrh	r4, [r0, #8]
	ldrh	r5, [r0, #10]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	ldrb	r0, [r0, #0]
	mul	r0, r2
	add	r0, r0, r3
	ldrh	r2, [r0, #8]
	ldrh	r3, [r0, #10]
	cmp	r2, r4
	bls	.L_5b02c
	sub	r0, r2, r4
	lsl	r0, r0, #16
	lsr	r0, r0, #19
	add	r0, r4, r0
	b	.L_5b034
	.align	2, 0
.L_5b024:
	.4byte	gSpriteData
.L_5b028:
	.4byte	gCurrentSprite
.L_5b02c:
	sub	r0, r4, r2
	lsl	r0, r0, #16
	lsr	r0, r0, #19
	sub	r0, r4, r0
.L_5b034:
	strh	r0, [r1, #8]
	cmp	r3, r5
	bls	.L_5b044
	sub	r0, r3, r5
	lsl	r0, r0, #16
	lsr	r0, r0, #19
	add	r0, r5, r0
	b	.L_5b04c
.L_5b044:
	sub	r0, r5, r3
	lsl	r0, r0, #16
	lsr	r0, r0, #19
	sub	r0, r5, r0
.L_5b04c:
	strh	r0, [r1, #10]
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_805B054
func_805B054:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_5b08c
	ldr	r1, .L_5b090
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	mov	r2, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r3
	ldrh	r4, [r0, #8]
	ldrh	r5, [r0, #10]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	ldrb	r0, [r0, #0]
	mul	r0, r2
	add	r0, r0, r3
	ldrh	r2, [r0, #8]
	ldrh	r3, [r0, #10]
	add	r6, r1, #0
	cmp	r2, r4
	bls	.L_5b094
	sub	r1, r2, r4
	lsl	r1, r1, #16
	lsr	r1, r1, #19
	lsl	r0, r1, #1
	add	r0, r0, r1
	add	r0, r4, r0
	b	.L_5b0a0
.L_5b08c:
	.4byte	gSpriteData
.L_5b090:
	.4byte	gCurrentSprite
.L_5b094:
	sub	r1, r4, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #19
	lsl	r0, r1, #1
	add	r0, r0, r1
	sub	r0, r4, r0
.L_5b0a0:
	strh	r0, [r6, #8]
	cmp	r3, r5
	bls	.L_5b0b4
	sub	r1, r3, r5
	lsl	r1, r1, #16
	lsr	r1, r1, #19
	lsl	r0, r1, #1
	add	r0, r0, r1
	add	r0, r5, r0
	b	.L_5b0c0
.L_5b0b4:
	sub	r1, r5, r3
	lsl	r1, r1, #16
	lsr	r1, r1, #19
	lsl	r0, r1, #1
	add	r0, r0, r1
	sub	r0, r5, r0
.L_5b0c0:
	strh	r0, [r6, #10]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_805B0C8
func_805B0C8:
	push	{r4, r5, r6, lr}
	ldr	r3, .L_5b100
	ldr	r1, .L_5b104
	add	r0, r1, #0
	add	r0, #41	@ 0x29
	ldrb	r0, [r0, #0]
	mov	r2, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r3
	ldrh	r4, [r0, #8]
	ldrh	r5, [r0, #10]
	add	r0, r1, #0
	add	r0, #42	@ 0x2a
	ldrb	r0, [r0, #0]
	mul	r0, r2
	add	r0, r0, r3
	ldrh	r2, [r0, #8]
	ldrh	r3, [r0, #10]
	add	r6, r1, #0
	cmp	r2, r4
	bls	.L_5b108
	sub	r1, r2, r4
	lsl	r1, r1, #16
	lsr	r1, r1, #19
	lsl	r0, r1, #2
	add	r0, r0, r1
	add	r0, r4, r0
	b	.L_5b114
.L_5b100:
	.4byte	gSpriteData
.L_5b104:
	.4byte	gCurrentSprite
.L_5b108:
	sub	r1, r4, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #19
	lsl	r0, r1, #2
	add	r0, r0, r1
	sub	r0, r4, r0
.L_5b114:
	strh	r0, [r6, #8]
	cmp	r3, r5
	bls	.L_5b128
	sub	r1, r3, r5
	lsl	r1, r1, #16
	lsr	r1, r1, #19
	lsl	r0, r1, #2
	add	r0, r0, r1
	add	r0, r5, r0
	b	.L_5b134
.L_5b128:
	sub	r1, r5, r3
	lsl	r1, r1, #16
	lsr	r1, r1, #19
	lsl	r0, r1, #2
	add	r0, r0, r1
	sub	r0, r5, r0
.L_5b134:
	strh	r0, [r6, #10]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_805B13C
func_805B13C:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_5b150
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5b158
	ldr	r0, .L_5b154
	add	r0, #39	@ 0x27
	mov	r1, #0
	strb	r1, [r0, #0]
	b	.L_5b1d4
.L_5b150:
	.4byte	gBossHurtState
.L_5b154:
	.4byte	gCurrentSprite
.L_5b158:
	mov	r5, #0
	ldr	r1, .L_5b198
	ldrh	r4, [r1, #8]
	ldr	r2, .L_5b19c
	ldrh	r3, [r2, #20]
	add	r0, r4, #0
	add	r0, #64	@ 0x40
	add	r6, r1, #0
	cmp	r0, r3
	bge	.L_5b1a8
	ldrh	r1, [r6, #10]
	ldrh	r0, [r2, #18]
	add	r0, #128	@ 0x80
	cmp	r1, r0
	bge	.L_5b180
	add	r0, r6, #0
	add	r0, #39	@ 0x27
	ldrb	r0, [r0, #0]
	cmp	r0, #240	@ 0xf0
	beq	.L_5b1d4
.L_5b180:
	add	r0, r3, #0
	sub	r0, #64	@ 0x40
	sub	r0, r0, r4
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, #31
	bls	.L_5b1ce
	cmp	r2, #64	@ 0x40
	bls	.L_5b1a0
	mov	r5, #240	@ 0xf0
	b	.L_5b1ce
	.align	2, 0
.L_5b198:
	.4byte	gCurrentSprite
.L_5b19c:
	.4byte	gWarioData
.L_5b1a0:
	lsr	r1, r0, #18
	mov	r0, #255	@ 0xff
	sub	r0, r0, r1
	b	.L_5b1ca
.L_5b1a8:
	ldrh	r1, [r6, #10]
	ldrh	r0, [r2, #18]
	add	r0, #128	@ 0x80
	cmp	r1, r0
	blt	.L_5b1d4
	add	r0, r3, #0
	sub	r0, #64	@ 0x40
	sub	r0, r4, r0
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, #31
	bls	.L_5b1ce
	cmp	r2, #64	@ 0x40
	bls	.L_5b1c8
	mov	r5, #16
	b	.L_5b1ce
.L_5b1c8:
	lsr	r0, r0, #18
.L_5b1ca:
	lsl	r0, r0, #24
	lsr	r5, r0, #24
.L_5b1ce:
	add	r0, r6, #0
	add	r0, #39	@ 0x27
	strb	r5, [r0, #0]
.L_5b1d4:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805B1DC
func_805B1DC:
	ldr	r0, .L_5b1fc
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #8
	bne	.L_5b244
	ldr	r0, .L_5b200
	ldrh	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_5b208
	ldr	r1, .L_5b204
	ldrh	r0, [r1, #10]
	sub	r0, #16
	strh	r0, [r1, #10]
	b	.L_5b244
.L_5b1fc:
	.4byte	gSubGameMode
.L_5b200:
	.4byte	gButtonsHeld
.L_5b204:
	.4byte	gCurrentSprite
.L_5b208:
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_5b220
	ldr	r1, .L_5b21c
	ldrh	r0, [r1, #10]
	add	r0, #16
	strh	r0, [r1, #10]
	b	.L_5b244
	.align	2, 0
.L_5b21c:
	.4byte	gCurrentSprite
.L_5b220:
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_5b234
	ldr	r1, .L_5b230
	ldrh	r0, [r1, #8]
	sub	r0, #16
	b	.L_5b242
.L_5b230:
	.4byte	gCurrentSprite
.L_5b234:
	mov	r0, #128	@ 0x80
	and	r0, r1
	cmp	r0, #0
	beq	.L_5b244
	ldr	r1, .L_5b248
	ldrh	r0, [r1, #8]
	add	r0, #16
.L_5b242:
	strh	r0, [r1, #8]
.L_5b244:
	bx	lr
	.align	2, 0
.L_5b248:
	.4byte	gCurrentSprite


thumb_func_start func_805B24C
func_805B24C:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r1, .L_5b444
	mov	r0, #90	@ 0x5a
	strb	r0, [r1, #0]
	ldr	r1, .L_5b448
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_5b44c
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_5b450
	strb	r1, [r0, #0]
	ldr	r0, .L_5b454
	strb	r1, [r0, #0]
	ldr	r0, .L_5b458
	strb	r1, [r0, #0]
	ldr	r0, .L_5b45c
	strb	r1, [r0, #0]
	ldr	r1, .L_5b460
	mov	r0, #32
	strb	r0, [r1, #0]
	ldr	r1, .L_5b464
	mov	r0, #16
	strb	r0, [r1, #0]
	ldr	r1, .L_5b468
	mov	r0, #12
	strb	r0, [r1, #0]
	ldr	r5, .L_5b46c
	ldrh	r1, [r5, #0]
	mov	r2, #129	@ 0x81
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	strh	r0, [r5, #0]
	mov	r0, #26
	strb	r0, [r5, #30]
	add	r1, r5, #0
	add	r1, #32
	mov	r0, #32
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #33	@ 0x21
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #16
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #128	@ 0x80
	strb	r0, [r1, #0]
	add	r0, r5, #0
	add	r0, #36	@ 0x24
	strb	r2, [r0, #0]
	add	r1, #2
	mov	r0, #56	@ 0x38
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_5b470
	str	r0, [r5, #4]
	strb	r2, [r5, #22]
	strh	r3, [r5, #20]
	mov	r0, #1
	strb	r0, [r5, #28]
	add	r0, r5, #0
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	mov	r0, #12
	strb	r0, [r5, #29]
	bl	UpdateBossHealthGauge
	ldrh	r3, [r5, #8]
	sub	r3, #240	@ 0xf0
	ldrh	r0, [r5, #10]
	sub	r0, #32
	str	r0, [sp, #0]
	mov	r0, #220	@ 0xdc
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	ldr	r4, .L_5b474
	add	r3, r3, r4
	ldrh	r0, [r5, #10]
	sub	r0, #16
	str	r0, [sp, #0]
	mov	r0, #220	@ 0xdc
	mov	r1, #1
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	add	r3, r3, r4
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	mov	r0, #220	@ 0xdc
	mov	r1, #2
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	add	r3, r3, r4
	ldrh	r0, [r5, #10]
	add	r0, #16
	str	r0, [sp, #0]
	mov	r0, #220	@ 0xdc
	mov	r1, #3
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	add	r3, r3, r4
	ldrh	r0, [r5, #10]
	add	r0, #32
	str	r0, [sp, #0]
	mov	r0, #220	@ 0xdc
	mov	r1, #4
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	ldr	r0, .L_5b478
	add	r3, r3, r0
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	mov	r0, #216	@ 0xd8
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	ldr	r2, .L_5b47c
	add	r3, r3, r2
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	mov	r0, #217	@ 0xd9
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	sub	r3, #160	@ 0xa0
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	mov	r0, #218	@ 0xda
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	add	r3, r3, r4
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	mov	r0, #217	@ 0xd9
	mov	r1, #1
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	sub	r3, #224	@ 0xe0
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	mov	r0, #217	@ 0xd9
	mov	r1, #2
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	sub	r3, #176	@ 0xb0
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	mov	r0, #217	@ 0xd9
	mov	r1, #3
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	sub	r3, #128	@ 0x80
	ldrh	r0, [r5, #10]
	str	r0, [sp, #0]
	mov	r0, #217	@ 0xd9
	mov	r1, #4
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	add	r3, r3, r4
	ldrh	r0, [r5, #10]
	sub	r0, #32
	str	r0, [sp, #0]
	mov	r0, #219	@ 0xdb
	mov	r1, #4
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	add	r3, r3, r4
	ldrh	r0, [r5, #10]
	sub	r0, #48	@ 0x30
	str	r0, [sp, #0]
	mov	r0, #219	@ 0xdb
	mov	r1, #3
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	add	r3, r3, r4
	ldrh	r0, [r5, #10]
	sub	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #219	@ 0xdb
	mov	r1, #2
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	add	r3, r3, r4
	ldrh	r0, [r5, #10]
	sub	r0, #80	@ 0x50
	str	r0, [sp, #0]
	mov	r0, #219	@ 0xdb
	mov	r1, #1
	mov	r2, #0
	bl	func_801E430
	ldrh	r3, [r5, #8]
	sub	r3, #240	@ 0xf0
	ldrh	r0, [r5, #10]
	sub	r0, #96	@ 0x60
	str	r0, [sp, #0]
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	mov	r2, #0
	bl	func_801E430
	add	r1, r5, #0
	add	r1, #39	@ 0x27
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
	mov	r0, #131	@ 0x83
	mov	r1, #8
	mov	r2, #4
	bl	LoadBossSpriteGraphics
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5b444:
	.4byte	gUnk_3000A62
.L_5b448:
	.4byte	gBossTookDamage
.L_5b44c:
	.4byte	gCuckooCondorPendulumLength
.L_5b450:
	.4byte	gCuckooCondorMoveRight
.L_5b454:
	.4byte	gCuckooCondorHasCapturedWario
.L_5b458:
	.4byte	gBossHurtState
.L_5b45c:
	.4byte	gBossHurtTimer
.L_5b460:
	.4byte	gBossInitialHealth
.L_5b464:
	.4byte	gUnk_3000A5F
.L_5b468:
	.4byte	gUnk_3000A60
.L_5b46c:
	.4byte	gCurrentSprite
.L_5b470:
	.4byte	sUnk_83DF2D0
.L_5b474:
	.4byte	0xFFFFFEF0
.L_5b478:
	.4byte	0xFFFFFE80
.L_5b47c:
	.4byte	0xFFFFFEC0


thumb_func_start func_805B480
func_805B480:
	push	{r4, lr}
	ldr	r4, .L_5b4cc
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_5b49e
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_5b4c4
	ldr	r1, .L_5b4d0
	mov	r0, #7
	strb	r0, [r1, #0]
.L_5b49e:
	ldr	r0, .L_5b4d0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5b4c4
	ldr	r0, .L_5b4d4
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5b4c0
	ldr	r1, .L_5b4d8
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_5b4c4
	bl	SpriteUtilStartBossTimer
.L_5b4c0:
	mov	r0, #2
	strb	r0, [r4, #28]
.L_5b4c4:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5b4cc:
	.4byte	gCurrentSprite
.L_5b4d0:
	.4byte	gColorFadingState
.L_5b4d4:
	.4byte	gCurrentShopItem
.L_5b4d8:
	.4byte	gUnk_3000A62


thumb_func_start func_805B4DC
func_805B4DC:
	push	{lr}
	ldr	r0, .L_5b4fc
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5b4f8
	ldr	r0, .L_5b500
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_5b4f8
	bl	SpriteUtilUnsetAllSpritesHighPriority
	ldr	r1, .L_5b504
	mov	r0, #15
	strb	r0, [r1, #28]
.L_5b4f8:
	pop	{r0}
	bx	r0
.L_5b4fc:
	.4byte	gWarioPauseTimer
.L_5b500:
	.4byte	gTimerState
.L_5b504:
	.4byte	gCurrentSprite


thumb_func_start func_805B508
func_805B508:
	push	{r4, lr}
	ldr	r4, .L_5b55c
	mov	r1, #0
	mov	r0, #32
	strb	r0, [r4, #28]
	strb	r1, [r4, #22]
	mov	r2, #0
	strh	r1, [r4, #20]
	ldr	r0, .L_5b560
	str	r0, [r4, #4]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #62	@ 0x3e
	strb	r0, [r1, #0]
	strb	r2, [r4, #29]
	strb	r2, [r4, #26]
	ldrh	r0, [r4, #8]
	sub	r0, #32
	ldrh	r1, [r4, #10]
	mov	r2, #6
	bl	SpriteSpawnSecondary
	mov	r0, #216	@ 0xd8
	bl	SpriteUtilFindSpriteSlotWork3
	ldr	r2, .L_5b564
	add	r4, #42	@ 0x2a
	ldrb	r1, [r4, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	mov	r1, #110	@ 0x6e
	strb	r1, [r0, #28]
	mov	r0, #204	@ 0xcc
	bl	m4aSongNumStart
	mov	r0, #0
	bl	VoiceSetPlay
	pop	{r4}
	pop	{r0}
	bx	r0
.L_5b55c:
	.4byte	gCurrentSprite
.L_5b560:
	.4byte	sUnk_83DF278
.L_5b564:
	.4byte	gSpriteData


thumb_func_start func_805B568
func_805B568:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_5b5b8
	mov	r0, #1
	strb	r0, [r4, #31]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_5b5ae
	strh	r0, [r4, #0]
	ldrh	r3, [r4, #8]
	sub	r3, #210	@ 0xd2
	ldrh	r0, [r4, #10]
	add	r0, #160	@ 0xa0
	str	r0, [sp, #0]
	mov	r0, #221	@ 0xdd
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
	ldrh	r3, [r4, #8]
	sub	r3, #210	@ 0xd2
	ldrh	r0, [r4, #10]
	add	r0, #192	@ 0xc0
	str	r0, [sp, #0]
	mov	r0, #222	@ 0xde
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
.L_5b5ae:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5b5b8:
	.4byte	gCurrentSprite


thumb_func_start func_805B5BC
func_805B5BC:
	push	{r4, lr}
	ldr	r0, .L_5b630
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_5b634
	add	r0, r2, #0
	mov	r3, #0
	mov	r4, #0
	orr	r0, r1
	ldr	r1, .L_5b638
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #30]
	mov	r0, #12
	strb	r0, [r1, #29]
	mov	r0, ip
	add	r0, #32
	mov	r1, #24
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r2, #80	@ 0x50
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r1, ip
	add	r1, #37	@ 0x25
	mov	r0, #96	@ 0x60
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #38	@ 0x26
	strb	r2, [r0, #0]
	ldr	r0, .L_5b63c
	mov	r2, ip
	str	r0, [r2, #4]
	strb	r3, [r2, #22]
	strh	r4, [r2, #20]
	mov	r0, #1
	strb	r0, [r2, #28]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r3, [r0, #0]
	sub	r0, #3
	strb	r3, [r0, #0]
	add	r0, #1
	strb	r3, [r0, #0]
	ldr	r0, .L_5b640
	bl	func_805ACC4
	pop	{r4}
	pop	{r0}
	bx	r0
.L_5b630:
	.4byte	gCurrentSprite
.L_5b634:
	.4byte	0x8408
.L_5b638:
	.4byte	0xFFFB
.L_5b63c:
	.4byte	sUnk_83DF80C
.L_5b640:
	.4byte	sUnk_83DFD28


thumb_func_start func_805B644
func_805B644:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_5b694
	bl	func_805ACC4
	ldr	r3, .L_5b698
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_5b69c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_5b6a0
	cmp	r1, r0
	bne	.L_5b66c
	ldrh	r4, [r5, #0]
	mov	r2, #0
.L_5b66c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
	strh	r0, [r3, #8]
	ldr	r0, .L_5b6a4
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	bne	.L_5b68e
	ldr	r0, .L_5b6a8
	str	r0, [r3, #4]
	mov	r0, #0
	strb	r0, [r3, #22]
	strh	r1, [r3, #20]
	mov	r0, #24
	strb	r0, [r3, #28]
.L_5b68e:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_5b694:
	.4byte	sUnk_83DFD28
.L_5b698:
	.4byte	gCurrentSprite
.L_5b69c:
	.4byte	sUnk_83E028A
.L_5b6a0:
	.4byte	0x7FFF
.L_5b6a4:
	.4byte	gColorFadingState
.L_5b6a8:
	.4byte	sUnk_83DF7B4


thumb_func_start func_805B6AC
func_805B6AC:
	push	{r4, r5, r6, lr}
	ldr	r0, .L_5b6f8
	bl	func_805ACC4
	ldr	r3, .L_5b6fc
	mov	r0, #42	@ 0x2a
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_5b700
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_5b704
	cmp	r1, r0
	bne	.L_5b6d4
	ldrh	r4, [r5, #0]
	mov	r2, #0
.L_5b6d4:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #8]
	add	r0, r0, r4
	strh	r0, [r3, #8]
	ldr	r0, [r3, #20]
	ldr	r1, .L_5b708
	and	r0, r1
	ldr	r1, .L_5b70c
	cmp	r0, r1
	bne	.L_5b6f2
	mov	r0, #205	@ 0xcd
	bl	m4aSongNumStart
.L_5b6f2:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_5b6f8:
	.4byte	sUnk_83DFD28
.L_5b6fc:
	.4byte	gCurrentSprite
.L_5b700:
	.4byte	sUnk_83E028A
.L_5b704:
	.4byte	0x7FFF
.L_5b708:
	.4byte	0xFFFFFF
.L_5b70c:
	.4byte	0x10001


thumb_func_start func_805B710
func_805B710:
	ldr	r2, .L_5b730
	ldr	r0, .L_5b734
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
	mov	r0, #111	@ 0x6f
	strb	r0, [r2, #28]
	bx	lr
	.align	2, 0
.L_5b730:
	.4byte	gCurrentSprite
.L_5b734:
	.4byte	sUnk_83DF724


thumb_func_start func_805B738
func_805B738:
	push	{r4, r5, lr}
	ldr	r0, .L_5b778
	bl	func_805ACC4
	cmp	r0, #0
	beq	.L_5b772
	ldr	r5, .L_5b77c
	add	r0, r5, #0
	add	r0, #39	@ 0x27
	mov	r4, #0
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
	ldr	r0, .L_5b780
	bl	func_805ACC4
	mov	r0, #217	@ 0xd9
	mov	r1, #4
	bl	SpriteUtilFindSpriteWork3
	add	r2, r5, #0
	add	r2, #42	@ 0x2a
	ldrb	r0, [r2, #0]
	add	r1, r5, #0
	add	r1, #41	@ 0x29
	strb	r0, [r1, #0]
	strb	r4, [r2, #0]
	mov	r0, #113	@ 0x71
	strb	r0, [r5, #28]
.L_5b772:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_5b778:
	.4byte	sUnk_83DFD3C
.L_5b77c:
	.4byte	gCurrentSprite
.L_5b780:
	.4byte	sUnk_83DFD10


thumb_func_start func_805B784
func_805B784:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_5b7d0
	bl	func_805ACC4
	ldr	r7, .L_5b7d4
	add	r5, r7, #0
	add	r5, #42	@ 0x2a
	ldrb	r2, [r5, #0]
	ldr	r1, .L_5b7d8
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r3, [r0, #0]
	mov	r4, #0
	ldrsh	r1, [r0, r4]
	ldr	r0, .L_5b7dc
	cmp	r1, r0
	bne	.L_5b7e8
	add	r0, r7, #0
	add	r0, #39	@ 0x27
	mov	r4, #0
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
	ldr	r0, .L_5b7e0
	bl	func_805ACC4
	strb	r4, [r5, #0]
	add	r0, r7, #0
	add	r0, #41	@ 0x29
	strb	r4, [r0, #0]
	mov	r0, #112	@ 0x70
	strb	r0, [r7, #28]
	ldr	r1, .L_5b7e4
	mov	r0, #2
	strb	r0, [r1, #0]
	b	.L_5b886
.L_5b7d0:
	.4byte	sUnk_83DFD10
.L_5b7d4:
	.4byte	gCurrentSprite
.L_5b7d8:
	.4byte	sUnk_83E0116
.L_5b7dc:
	.4byte	0x7FFF
.L_5b7e0:
	.4byte	sUnk_83DFD18
.L_5b7e4:
	.4byte	gBossTookDamage
.L_5b7e8:
	add	r0, r2, #1
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	strb	r2, [r5, #0]
	ldrh	r0, [r7, #8]
	add	r0, r0, r3
	mov	r1, #0
	mov	r8, r1
	strh	r0, [r7, #8]
	add	r0, r2, #0
	cmp	r0, #72	@ 0x48
	bne	.L_5b87c
	ldr	r6, .L_5b870
	add	r2, r7, #0
	add	r2, #41	@ 0x29
	ldrb	r0, [r2, #0]
	mov	r5, #44	@ 0x2c
	mul	r0, r5
	add	r0, r0, r6
	mov	r4, r8
	strb	r4, [r0, #22]
	ldrb	r0, [r2, #0]
	mul	r0, r5
	add	r0, r0, r6
	mov	r1, #0
	strh	r1, [r0, #20]
	ldrb	r0, [r2, #0]
	mul	r0, r5
	add	r1, r6, #4
	add	r0, r0, r1
	ldr	r1, .L_5b874
	str	r1, [r0, #0]
	mov	r0, #220	@ 0xdc
	mov	r1, #0
	bl	SpriteUtilFindSprite
	add	r4, r0, #0
	lsl	r4, r4, #24
	lsr	r4, r4, #24
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	add	r1, r2, #0
	ldrh	r2, [r7, #10]
	add	r1, r1, r2
	strh	r1, [r7, #10]
	add	r2, r4, #0
	mul	r2, r5
	add	r2, r2, r6
	ldrh	r1, [r2, #10]
	add	r1, #128	@ 0x80
	strh	r1, [r2, #10]
	add	r1, r0, #0
	mul	r1, r5
	add	r1, r1, r6
	ldrh	r0, [r1, #10]
	add	r0, #128	@ 0x80
	strh	r0, [r1, #10]
	ldr	r0, .L_5b878
	mov	r4, r8
	strb	r4, [r0, #0]
	b	.L_5b886
	.align	2, 0
.L_5b870:
	.4byte	gSpriteData
.L_5b874:
	.4byte	sUnk_83DF948
.L_5b878:
	.4byte	gBossTookDamage
.L_5b87c:
	cmp	r0, #74	@ 0x4a
	bne	.L_5b886
	ldrh	r0, [r7, #10]
	sub	r0, #128	@ 0x80
	strh	r0, [r7, #10]
.L_5b886:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_805B890
func_805B890:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r0, .L_5b920
	bl	func_805ACC4
	ldr	r4, .L_5b924
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	r8, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_5b928
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	ldr	r0, .L_5b92c
	cmp	r1, r0
	bne	.L_5b8be
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_5b8be:
	add	r0, r2, #1
	mov	r1, #0
	mov	r9, r1
	mov	r6, r8
	strb	r0, [r6, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	mov	r7, #0
	strh	r0, [r4, #8]
	mov	r0, #220	@ 0xdc
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldrb	r1, [r1, #0]
	cmp	r1, #15
	bhi	.L_5b934
	ldr	r3, .L_5b930
	mov	r2, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #12
	strh	r0, [r1, #8]
	ldrh	r0, [r1, #10]
	add	r0, #4
	strh	r0, [r1, #10]
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #12
	strh	r0, [r1, #8]
	ldrh	r0, [r1, #10]
	add	r0, #4
	strh	r0, [r1, #10]
	b	.L_5ba86
.L_5b920:
	.4byte	sUnk_83DFD18
.L_5b924:
	.4byte	gCurrentSprite
.L_5b928:
	.4byte	sUnk_83E036C
.L_5b92c:
	.4byte	0x7FFF
.L_5b930:
	.4byte	gSpriteData
.L_5b934:
	add	r0, r1, #0
	sub	r0, #41	@ 0x29
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #58	@ 0x3a
	bhi	.L_5b9a8
	cmp	r1, #70	@ 0x46
	bls	.L_5b96c
	ldrh	r0, [r4, #10]
	sub	r0, #2
	strh	r0, [r4, #10]
	ldr	r3, .L_5b968
	mov	r2, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	sub	r0, #1
	strh	r0, [r1, #8]
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	sub	r0, #1
	strh	r0, [r1, #8]
	b	.L_5b980
.L_5b968:
	.4byte	gSpriteData
.L_5b96c:
	cmp	r1, #60	@ 0x3c
	bne	.L_5b980
	ldr	r0, .L_5b9a0
	str	r0, [r4, #4]
	strb	r7, [r4, #22]
	mov	r0, r9
	strh	r0, [r4, #20]
	mov	r0, #150	@ 0x96
	bl	m4aSongNumStart
.L_5b980:
	ldr	r3, .L_5b9a4
	mov	r2, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #10]
	sub	r0, #1
	strh	r0, [r1, #10]
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #10]
	sub	r0, #1
	strh	r0, [r1, #10]
	b	.L_5ba86
	.align	2, 0
.L_5b9a0:
	.4byte	sUnk_83DF77C
.L_5b9a4:
	.4byte	gSpriteData
.L_5b9a8:
	add	r0, r1, #0
	sub	r0, #101	@ 0x65
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #62	@ 0x3e
	bhi	.L_5b9f0
	ldrh	r0, [r4, #8]
	sub	r0, #1
	strh	r0, [r4, #8]
	ldrh	r0, [r4, #10]
	sub	r0, #10
	strh	r0, [r4, #10]
	ldr	r3, .L_5b9ec
	mov	r2, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	sub	r0, #3
	strh	r0, [r1, #8]
	ldrh	r0, [r1, #10]
	sub	r0, #12
	strh	r0, [r1, #10]
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	sub	r0, #3
	strh	r0, [r1, #8]
	ldrh	r0, [r1, #10]
	sub	r0, #12
	strh	r0, [r1, #10]
	b	.L_5ba86
	.align	2, 0
.L_5b9ec:
	.4byte	gSpriteData
.L_5b9f0:
	add	r0, r1, #0
	add	r0, #91	@ 0x5b
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #14
	bhi	.L_5ba24
	ldr	r3, .L_5ba20
	mov	r2, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #4
	strh	r0, [r1, #8]
	ldrh	r0, [r1, #10]
	add	r0, #2
	strh	r0, [r1, #10]
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #4
	b	.L_5ba50
	.align	2, 0
.L_5ba20:
	.4byte	gSpriteData
.L_5ba24:
	add	r0, r1, #0
	add	r0, #75	@ 0x4b
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #18
	bhi	.L_5ba60
	ldr	r3, .L_5ba5c
	mov	r2, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #2
	strh	r0, [r1, #8]
	ldrh	r0, [r1, #10]
	add	r0, #2
	strh	r0, [r1, #10]
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #2
.L_5ba50:
	strh	r0, [r1, #8]
	ldrh	r0, [r1, #10]
	add	r0, #2
	strh	r0, [r1, #10]
	b	.L_5ba86
	.align	2, 0
.L_5ba5c:
	.4byte	gSpriteData
.L_5ba60:
	cmp	r1, #200	@ 0xc8
	bne	.L_5ba86
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r7, [r0, #0]
	add	r0, #1
	strb	r7, [r0, #0]
	ldr	r0, .L_5ba94
	bl	func_805ACC4
	mov	r1, r8
	strb	r7, [r1, #0]
	mov	r0, #15
	strb	r0, [r4, #28]
	ldr	r0, .L_5ba98
	str	r0, [r4, #4]
	strb	r7, [r4, #22]
	mov	r6, r9
	strh	r6, [r4, #20]
.L_5ba86:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5ba94:
	.4byte	sUnk_83DFD68
.L_5ba98:
	.4byte	sUnk_83DF724


thumb_func_start func_805BA9C
func_805BA9C:
	push	{r4, r5, r6, lr}
	mov	r0, #220	@ 0xdc
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	ldr	r6, .L_5bae0
	mov	r5, #44	@ 0x2c
	mul	r0, r5
	add	r4, r0, r6
	ldrb	r0, [r4, #28]
	cmp	r0, #15
	bne	.L_5bae4
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mul	r0, r5
	add	r2, r0, r6
	ldrb	r0, [r2, #28]
	cmp	r0, #15
	bne	.L_5bae4
	add	r0, r4, #0
	add	r0, #40	@ 0x28
	mov	r1, #0
	strb	r1, [r0, #0]
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	mov	r0, #1
	b	.L_5baee
.L_5bae0:
	.4byte	gSpriteData
.L_5bae4:
	ldr	r0, .L_5baf4
	add	r0, #42	@ 0x2a
	mov	r1, #0
	strb	r1, [r0, #0]
	mov	r0, #0
.L_5baee:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L_5baf4:
	.4byte	gCurrentSprite


thumb_func_start func_805BAF8
func_805BAF8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r5, .L_5bb68
	add	r6, r5, #0
	add	r6, #42	@ 0x2a
	ldrb	r2, [r6, #0]
	ldr	r4, .L_5bb6c
	lsl	r0, r2, #1
	add	r0, r0, r4
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_5bb70
	cmp	r1, r0
	bne	.L_5bb1e
	ldrh	r3, [r4, #0]
	mov	r2, #0
.L_5bb1e:
	add	r0, r2, #1
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	strb	r2, [r6, #0]
	ldrh	r0, [r5, #8]
	add	r0, r0, r3
	mov	r7, #0
	strh	r0, [r5, #8]
	mov	r8, r2
	cmp	r2, #1
	bne	.L_5bc1c
	ldr	r0, .L_5bb74
	mov	r9, r0
	ldrb	r0, [r0, #0]
	ldr	r4, .L_5bb78
	cmp	r0, #0
	beq	.L_5bb42
	strb	r7, [r4, #0]
.L_5bb42:
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_5bb84
	ldr	r0, .L_5bb7c
	bl	func_805ACC4
	bl	func_805BA9C
	cmp	r0, #0
	beq	.L_5bc1c
	mov	r0, #19
	strb	r0, [r5, #28]
	strb	r7, [r6, #0]
	ldr	r0, .L_5bb80
	strb	r7, [r0, #0]
	mov	r0, #151	@ 0x97
	bl	m4aSongNumStart
	b	.L_5bc1c
.L_5bb68:
	.4byte	gCurrentSprite
.L_5bb6c:
	.4byte	sUnk_83E036C
.L_5bb70:
	.4byte	0x7FFF
.L_5bb74:
	.4byte	gWarioData
.L_5bb78:
	.4byte	gCuckooCondorHasCapturedWario
.L_5bb7c:
	.4byte	sUnk_83DFD68
.L_5bb80:
	.4byte	gBossTookDamage
.L_5bb84:
	ldr	r0, .L_5bbdc
	bl	func_805ACC4
	ldrb	r0, [r4, #0]
	sub	r0, #1
	strb	r0, [r4, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_5bba6
	add	r0, r5, #0
	add	r0, #39	@ 0x27
	strb	r7, [r0, #0]
	add	r0, #1
	strb	r7, [r0, #0]
	ldr	r0, .L_5bbe0
	bl	func_805ACC4
.L_5bba6:
	mov	r1, r9
	ldrh	r6, [r1, #18]
	ldrh	r4, [r5, #10]
	cmp	r6, r4
	bcs	.L_5bbf0
	ldrh	r0, [r5, #8]
	add	r1, r4, #0
	sub	r1, #128	@ 0x80
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_5bbe4
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_5bc1c
	sub	r0, r4, r6
	lsl	r0, r0, #16
	ldr	r1, .L_5bbe8
	cmp	r0, r1
	bls	.L_5bc1c
	mov	r0, #16
	strb	r0, [r5, #28]
	ldr	r0, .L_5bbec
	mov	r7, r8
	strb	r7, [r0, #0]
	b	.L_5bc1c
.L_5bbdc:
	.4byte	sUnk_83DFD9C
.L_5bbe0:
	.4byte	sUnk_83DFD68
.L_5bbe4:
	.4byte	gSpriteCollisionTileType
.L_5bbe8:
	.4byte	0x13F0000
.L_5bbec:
	.4byte	gBossTookDamage
.L_5bbf0:
	ldrh	r0, [r5, #8]
	add	r1, r4, #0
	sub	r1, #64	@ 0x40
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_5bc28
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_5bc1c
	bl	func_805BA9C
	cmp	r0, #0
	beq	.L_5bc1c
	mov	r0, #18
	strb	r0, [r5, #28]
	ldr	r0, .L_5bc2c
	strb	r7, [r0, #0]
	mov	r0, #167	@ 0xa7
	bl	m4aSongNumStart
.L_5bc1c:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_5bc28:
	.4byte	gSpriteCollisionTileType
.L_5bc2c:
	.4byte	gBossTookDamage


thumb_func_start func_805BC30
func_805BC30:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_5bc84
	bl	func_805ACC4
	ldr	r6, .L_5bc88
	add	r5, r6, #0
	add	r5, #42	@ 0x2a
	ldrb	r2, [r5, #0]
	ldr	r4, .L_5bc8c
	lsl	r0, r2, #1
	add	r0, r0, r4
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_5bc90
	cmp	r1, r0
	bne	.L_5bc56
	ldrh	r3, [r4, #0]
	mov	r2, #0
.L_5bc56:
	add	r0, r2, #1
	strb	r0, [r5, #0]
	ldrh	r0, [r6, #8]
	add	r0, r0, r3
	strh	r0, [r6, #8]
	ldrh	r0, [r6, #8]
	ldrh	r1, [r6, #10]
	sub	r1, #128	@ 0x80
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_5bc94
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_5bc7e
	ldr	r0, .L_5bc98
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5bc9c
.L_5bc7e:
	mov	r0, #15
	strb	r0, [r6, #28]
	b	.L_5bcd6
.L_5bc84:
	.4byte	sUnk_83DFD9C
.L_5bc88:
	.4byte	gCurrentSprite
.L_5bc8c:
	.4byte	sUnk_83E036C
.L_5bc90:
	.4byte	0x7FFF
.L_5bc94:
	.4byte	gSpriteCollisionTileType
.L_5bc98:
	.4byte	gCuckooCondorHasCapturedWario
.L_5bc9c:
	mov	r0, #220	@ 0xdc
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	ldr	r5, .L_5bcdc
	mov	r4, #44	@ 0x2c
	add	r1, r0, #0
	mul	r1, r4
	add	r1, r1, r5
	ldrh	r0, [r1, #10]
	sub	r0, #4
	strh	r0, [r1, #10]
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	add	r1, r0, #0
	mul	r1, r4
	add	r1, r1, r5
	ldrh	r0, [r1, #10]
	sub	r0, #4
	strh	r0, [r1, #10]
	ldrh	r0, [r6, #10]
	sub	r0, #4
	strh	r0, [r6, #10]
.L_5bcd6:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_5bcdc:
	.4byte	gSpriteData


thumb_func_start func_805BCE0
func_805BCE0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r0, .L_5bdb0
	bl	func_805ACC4
	mov	r0, #0
	mov	r9, r0
	mov	r0, #220	@ 0xdc
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	ip, r0
	ldr	r4, .L_5bdb4
	mov	r1, #42	@ 0x2a
	add	r1, r1, r4
	mov	r8, r1
	ldrb	r2, [r1, #0]
	ldr	r5, .L_5bdb8
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_5bdbc
	cmp	r1, r0
	bne	.L_5bd30
	ldrh	r3, [r5, #0]
	mov	r2, #0
	mov	r0, #1
	mov	r9, r0
.L_5bd30:
	add	r0, r2, #1
	mov	r1, r8
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	mov	r7, #0
	strh	r0, [r4, #8]
	ldr	r2, .L_5bdc0
	mov	r1, #44	@ 0x2c
	add	r0, r6, #0
	mul	r0, r1
	add	r6, r0, r2
	ldrh	r0, [r6, #8]
	add	r0, r0, r3
	strh	r0, [r6, #8]
	mov	r0, ip
	mul	r0, r1
	add	r5, r0, r2
	ldrh	r0, [r5, #8]
	add	r0, r0, r3
	strh	r0, [r5, #8]
	add	r0, r6, #0
	add	r0, #40	@ 0x28
	strb	r7, [r0, #0]
	add	r0, r5, #0
	add	r0, #40	@ 0x28
	strb	r7, [r0, #0]
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	sub	r1, #64	@ 0x40
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_5bdc4
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_5bd8e
	ldrh	r0, [r6, #10]
	add	r0, #4
	strh	r0, [r6, #10]
	ldrh	r0, [r5, #10]
	add	r0, #4
	strh	r0, [r5, #10]
	ldrh	r0, [r4, #10]
	add	r0, #4
	strh	r0, [r4, #10]
.L_5bd8e:
	mov	r0, r9
	cmp	r0, #0
	beq	.L_5bdd0
	mov	r1, r8
	strb	r7, [r1, #0]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #18
	strb	r0, [r1, #0]
	ldr	r0, .L_5bdc8
	ldrh	r0, [r0, #18]
	ldrh	r7, [r4, #10]
	cmp	r0, r7
	bcs	.L_5bdcc
	mov	r0, #17
	b	.L_5bdce
	.align	2, 0
.L_5bdb0:
	.4byte	sUnk_83DFD9C
.L_5bdb4:
	.4byte	gCurrentSprite
.L_5bdb8:
	.4byte	sUnk_83E0042
.L_5bdbc:
	.4byte	0x7FFF
.L_5bdc0:
	.4byte	gSpriteData
.L_5bdc4:
	.4byte	gSpriteCollisionTileType
.L_5bdc8:
	.4byte	gWarioData
.L_5bdcc:
	mov	r0, #15
.L_5bdce:
	strb	r0, [r4, #28]
.L_5bdd0:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0


thumb_func_start func_805BDDC
func_805BDDC:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_5be38
	bl	func_805ACC4
	ldr	r7, .L_5be3c
	add	r1, r7, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_5be44
	mov	r0, #220	@ 0xdc
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	ldr	r6, .L_5be40
	mov	r4, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r6
	ldrh	r1, [r0, #10]
	sub	r1, #4
	mov	r5, #0
	strh	r1, [r0, #10]
	add	r0, #40	@ 0x28
	strb	r5, [r0, #0]
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mul	r0, r4
	add	r0, r0, r6
	ldrh	r1, [r0, #10]
	sub	r1, #4
	strh	r1, [r0, #10]
	add	r0, #40	@ 0x28
	strb	r5, [r0, #0]
	ldrh	r0, [r7, #10]
	sub	r0, #4
	strh	r0, [r7, #10]
	b	.L_5be48
.L_5be38:
	.4byte	sUnk_83DFD9C
.L_5be3c:
	.4byte	gCurrentSprite
.L_5be40:
	.4byte	gSpriteData
.L_5be44:
	mov	r0, #15
	strb	r0, [r7, #28]
.L_5be48:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805BE50
func_805BE50:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r4, .L_5bec4
	mov	r0, #1
	strb	r0, [r4, #31]
	ldr	r0, .L_5bec8
	bl	func_805ACC4
	mov	r0, #220	@ 0xdc
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	add	r5, r4, #0
	add	r5, #42	@ 0x2a
	ldrb	r0, [r5, #0]
	cmp	r0, #255	@ 0xff
	beq	.L_5bf0c
	mov	r1, #230	@ 0xe6
	lsl	r1, r1, #2
	add	r0, r1, #0
	ldrh	r3, [r4, #8]
	add	r0, r0, r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_5becc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5bf0c
	ldrb	r2, [r5, #0]
	ldr	r0, .L_5bed0
	mov	r8, r0
	lsl	r0, r2, #1
	add	r0, r8
	ldrh	r4, [r0, #0]
	mov	r3, #0
	ldrsh	r1, [r0, r3]
	mov	ip, r1
	ldr	r0, .L_5bed4
	cmp	ip, r0
	bne	.L_5bed8
	sub	r0, r2, #1
	lsl	r0, r0, #1
	add	r0, r8
	ldrh	r4, [r0, #0]
	b	.L_5bedc
	.align	2, 0
.L_5bec4:
	.4byte	gCurrentSprite
.L_5bec8:
	.4byte	sUnk_83DFD68
.L_5becc:
	.4byte	gSpriteCollisionTileType
.L_5bed0:
	.4byte	sUnk_83E0258
.L_5bed4:
	.4byte	0x7FFF
.L_5bed8:
	add	r0, r2, #1
	strb	r0, [r5, #0]
.L_5bedc:
	ldr	r1, .L_5bf04
	ldrh	r0, [r1, #8]
	add	r0, r0, r4
	strh	r0, [r1, #8]
	ldr	r3, .L_5bf08
	mov	r2, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, r0, r4
	strh	r0, [r1, #8]
	add	r1, r7, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, r0, r4
	strh	r0, [r1, #8]
	b	.L_5c0c6
	.align	2, 0
.L_5bf04:
	.4byte	gCurrentSprite
.L_5bf08:
	.4byte	gSpriteData
.L_5bf0c:
	ldr	r5, .L_5bf50
	add	r4, r5, #0
	add	r4, #42	@ 0x2a
	mov	r0, #255	@ 0xff
	strb	r0, [r4, #0]
	ldrh	r0, [r5, #8]
	ldrh	r1, [r5, #10]
	sub	r1, #120	@ 0x78
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_5bf54
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_5bf5c
	ldr	r3, .L_5bf58
	mov	r2, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #10]
	add	r0, #16
	strh	r0, [r1, #10]
	add	r1, r7, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #10]
	add	r0, #16
	strh	r0, [r1, #10]
	ldrh	r0, [r5, #10]
	add	r0, #16
	strh	r0, [r5, #10]
	b	.L_5c0c6
.L_5bf50:
	.4byte	gCurrentSprite
.L_5bf54:
	.4byte	gSpriteCollisionTileType
.L_5bf58:
	.4byte	gSpriteData
.L_5bf5c:
	ldr	r0, .L_5bfc4
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	beq	.L_5bf66
	b	.L_5c064
.L_5bf66:
	ldrb	r0, [r0, #1]
	sub	r0, #43	@ 0x2b
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #2
	bhi	.L_5bfd8
	add	r2, r5, #0
	add	r2, #41	@ 0x29
	mov	r0, #32
	strb	r0, [r2, #0]
	strb	r1, [r4, #0]
	mov	r0, #114	@ 0x72
	strb	r0, [r5, #28]
	ldr	r0, .L_5bfc8
	str	r0, [r5, #4]
	strb	r1, [r5, #22]
	mov	r4, #0
	strh	r1, [r5, #20]
	ldr	r0, .L_5bfcc
	strb	r4, [r0, #0]
	ldr	r0, .L_5bfd0
	strb	r4, [r0, #0]
	ldr	r3, .L_5bfd4
	mov	r1, #44	@ 0x2c
	add	r2, r6, #0
	mul	r2, r1
	add	r2, r2, r3
	ldrh	r0, [r5, #8]
	add	r0, #192	@ 0xc0
	strh	r0, [r2, #8]
	mul	r1, r7
	add	r1, r1, r3
	ldrh	r0, [r5, #8]
	add	r0, #192	@ 0xc0
	strh	r0, [r1, #8]
	ldrh	r0, [r5, #10]
	add	r0, #64	@ 0x40
	strh	r0, [r2, #10]
	ldrh	r0, [r5, #10]
	sub	r0, #32
	strh	r0, [r1, #10]
	add	r2, #41	@ 0x29
	strb	r4, [r2, #0]
	add	r1, #41	@ 0x29
	strb	r4, [r1, #0]
	b	.L_5c0c6
	.align	2, 0
.L_5bfc4:
	.4byte	gWarioData
.L_5bfc8:
	.4byte	sUnk_83DF754
.L_5bfcc:
	.4byte	gCuckooCondorMoveRight
.L_5bfd0:
	.4byte	gBossTookDamage
.L_5bfd4:
	.4byte	gSpriteData
.L_5bfd8:
	add	r2, r5, #0
	add	r2, #41	@ 0x29
	mov	r0, #16
	strb	r0, [r2, #0]
	strb	r1, [r4, #0]
	mov	r0, #20
	strb	r0, [r5, #28]
	ldr	r0, .L_5c028
	str	r0, [r5, #4]
	strb	r1, [r5, #22]
	strh	r1, [r5, #20]
	ldr	r0, .L_5c02c
	mov	r1, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_5c030
	strb	r1, [r0, #0]
	ldr	r1, .L_5c034
	mov	r2, #44	@ 0x2c
	add	r0, r6, #0
	mul	r0, r2
	add	r3, r0, r1
	ldrh	r0, [r5, #10]
	add	r0, #32
	strh	r0, [r3, #10]
	add	r0, r7, #0
	mul	r0, r2
	add	r2, r0, r1
	ldrh	r0, [r5, #10]
	sub	r0, #96	@ 0x60
	strh	r0, [r2, #10]
	ldrb	r0, [r5, #29]
	add	r4, r1, #0
	cmp	r0, #6
	bhi	.L_5c038
	ldrh	r0, [r5, #8]
	add	r0, #160	@ 0xa0
	strh	r0, [r3, #8]
	ldrh	r0, [r5, #8]
	add	r0, #160	@ 0xa0
	b	.L_5c042
.L_5c028:
	.4byte	sUnk_83DF754
.L_5c02c:
	.4byte	gCuckooCondorMoveRight
.L_5c030:
	.4byte	gBossTookDamage
.L_5c034:
	.4byte	gSpriteData
.L_5c038:
	ldrh	r0, [r5, #8]
	add	r0, #64	@ 0x40
	strh	r0, [r3, #8]
	ldrh	r0, [r5, #8]
	add	r0, #64	@ 0x40
.L_5c042:
	strh	r0, [r2, #8]
	mov	r2, #44	@ 0x2c
	add	r0, r6, #0
	mul	r0, r2
	add	r0, r0, r4
	add	r0, #41	@ 0x29
	mov	r1, #0
	strb	r1, [r0, #0]
	add	r0, r7, #0
	mul	r0, r2
	add	r0, r0, r4
	add	r0, #41	@ 0x29
	strb	r1, [r0, #0]
	mov	r0, #149	@ 0x95
	bl	m4aSongNumStart
	b	.L_5c0c6
.L_5c064:
	add	r2, r5, #0
	add	r2, #41	@ 0x29
	mov	r1, #0
	mov	r0, #32
	strb	r0, [r2, #0]
	strb	r1, [r4, #0]
	mov	r0, #116	@ 0x74
	strb	r0, [r5, #28]
	ldr	r0, .L_5c0d0
	str	r0, [r5, #4]
	strb	r1, [r5, #22]
	mov	r4, #0
	strh	r1, [r5, #20]
	ldr	r0, .L_5c0d4
	mov	r1, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_5c0d8
	strb	r1, [r0, #0]
	ldr	r3, .L_5c0dc
	mov	r1, #44	@ 0x2c
	add	r2, r6, #0
	mul	r2, r1
	add	r2, r2, r3
	ldrh	r0, [r5, #8]
	add	r0, #92	@ 0x5c
	strh	r0, [r2, #8]
	mul	r1, r7
	add	r1, r1, r3
	ldrh	r0, [r5, #8]
	add	r0, #92	@ 0x5c
	strh	r0, [r1, #8]
	ldrh	r0, [r5, #10]
	add	r0, #32
	strh	r0, [r2, #10]
	ldrh	r0, [r5, #10]
	sub	r0, #96	@ 0x60
	strh	r0, [r1, #10]
	add	r2, #41	@ 0x29
	strb	r4, [r2, #0]
	add	r1, #41	@ 0x29
	strb	r4, [r1, #0]
	add	r0, r5, #0
	add	r0, #39	@ 0x27
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
	ldr	r0, .L_5c0e0
	bl	func_805ACC4
.L_5c0c6:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_5c0d0:
	.4byte	sUnk_83DF754
.L_5c0d4:
	.4byte	gCuckooCondorMoveRight
.L_5c0d8:
	.4byte	gBossTookDamage
.L_5c0dc:
	.4byte	gSpriteData
.L_5c0e0:
	.4byte	sUnk_83DFD8C


thumb_func_start func_805C0E4
func_805C0E4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	ldr	r4, .L_5c184
	mov	r0, #1
	strb	r0, [r4, #31]
	ldr	r0, [r4, #20]
	ldr	r1, .L_5c188
	and	r0, r1
	ldr	r1, .L_5c18c
	cmp	r0, r1
	bne	.L_5c114
	ldrh	r3, [r4, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r4, #10]
	sub	r0, #84	@ 0x54
	str	r0, [sp, #0]
	mov	r0, #223	@ 0xdf
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
.L_5c114:
	ldr	r0, .L_5c190
	bl	func_805ACC4
	mov	r0, #220	@ 0xdc
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r0, [r0, #0]
	cmp	r0, #255	@ 0xff
	beq	.L_5c19c
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #2
	add	r0, r1, #0
	ldrh	r1, [r4, #8]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #138	@ 0x8a
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_5c194
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_5c19c
	ldrh	r0, [r4, #8]
	add	r0, #8
	strh	r0, [r4, #8]
	ldr	r3, .L_5c198
	mov	r2, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #8
	strh	r0, [r1, #8]
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #8
	strh	r0, [r1, #8]
	b	.L_5c254
	.align	2, 0
.L_5c184:
	.4byte	gCurrentSprite
.L_5c188:
	.4byte	0xFFFFFF
.L_5c18c:
	.4byte	0x50003
.L_5c190:
	.4byte	sUnk_83DFD68
.L_5c194:
	.4byte	gSpriteCollisionTileType
.L_5c198:
	.4byte	gSpriteData
.L_5c19c:
	ldr	r4, .L_5c1f8
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	r9, r0
	mov	r1, #1
	neg	r1, r1
	add	r7, r1, #0
	mov	r0, #255	@ 0xff
	mov	r1, r9
	strb	r0, [r1, #0]
	ldr	r0, .L_5c1fc
	mov	r1, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_5c200
	mov	r8, r0
	strb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	sub	r1, #138	@ 0x8a
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_5c204
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_5c20c
	ldr	r3, .L_5c208
	mov	r2, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #10]
	sub	r0, #8
	strh	r0, [r1, #10]
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #10]
	sub	r0, #8
	strh	r0, [r1, #10]
	ldrh	r0, [r4, #10]
	sub	r0, #8
	strh	r0, [r4, #10]
	b	.L_5c254
	.align	2, 0
.L_5c1f8:
	.4byte	gCurrentSprite
.L_5c1fc:
	.4byte	gCuckooCondorMoveRight
.L_5c200:
	.4byte	gBossTookDamage
.L_5c204:
	.4byte	gSpriteCollisionTileType
.L_5c208:
	.4byte	gSpriteData
.L_5c20c:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	and	r0, r7
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_5c248
	ldrh	r0, [r4, #8]
	sub	r0, #12
	strh	r0, [r4, #8]
	ldr	r3, .L_5c244
	mov	r2, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	sub	r0, #12
	strh	r0, [r1, #8]
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	sub	r0, #12
	strh	r0, [r1, #8]
	b	.L_5c254
.L_5c244:
	.4byte	gSpriteData
.L_5c248:
	mov	r0, #19
	strb	r0, [r4, #28]
	mov	r0, r9
	strb	r1, [r0, #0]
	mov	r0, r8
	strb	r1, [r0, #0]
.L_5c254:
	add	sp, #4
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805C264
func_805C264:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_5c2dc
	mov	r0, #1
	strb	r0, [r4, #31]
	ldr	r0, .L_5c2e0
	bl	func_805ACC4
	mov	r0, #220	@ 0xdc
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r0, [r0, #0]
	cmp	r0, #255	@ 0xff
	beq	.L_5c2ec
	mov	r1, #200	@ 0xc8
	lsl	r1, r1, #1
	add	r0, r1, #0
	ldrh	r2, [r4, #8]
	add	r0, r0, r2
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r4, #10]
	sub	r1, #138	@ 0x8a
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_5c2e4
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_5c2ec
	ldrh	r0, [r4, #8]
	add	r0, #8
	strh	r0, [r4, #8]
	ldr	r3, .L_5c2e8
	mov	r2, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #8
	strh	r0, [r1, #8]
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #8
	strh	r0, [r1, #8]
	b	.L_5c3be
	.align	2, 0
.L_5c2dc:
	.4byte	gCurrentSprite
.L_5c2e0:
	.4byte	sUnk_83DFD8C
.L_5c2e4:
	.4byte	gSpriteCollisionTileType
.L_5c2e8:
	.4byte	gSpriteData
.L_5c2ec:
	ldr	r0, .L_5c350
	add	r0, #42	@ 0x2a
	mov	r1, #255	@ 0xff
	strb	r1, [r0, #0]
	ldr	r0, .L_5c354
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5c30e
	ldr	r0, .L_5c358
	ldrb	r1, [r0, #0]
	mov	r0, #63	@ 0x3f
	and	r0, r1
	cmp	r0, #0
	bne	.L_5c30e
	mov	r0, #203	@ 0xcb
	bl	m4aSongNumStart
.L_5c30e:
	ldr	r4, .L_5c350
	ldrh	r0, [r4, #8]
	ldr	r2, .L_5c35c
	add	r1, r2, #0
	ldrh	r2, [r4, #10]
	add	r1, r1, r2
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_5c360
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_5c368
	ldr	r3, .L_5c364
	mov	r2, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #10]
	sub	r0, #4
	strh	r0, [r1, #10]
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #10]
	sub	r0, #4
	strh	r0, [r1, #10]
	ldrh	r0, [r4, #10]
	sub	r0, #4
	strh	r0, [r4, #10]
	b	.L_5c3be
	.align	2, 0
.L_5c350:
	.4byte	gCurrentSprite
.L_5c354:
	.4byte	gWarioData
.L_5c358:
	.4byte	gMainTimer
.L_5c35c:
	.4byte	0xFFFFFD80
.L_5c360:
	.4byte	gSpriteCollisionTileType
.L_5c364:
	.4byte	gSpriteData
.L_5c368:
	ldr	r0, .L_5c3a8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5c3be
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_5c3b0
	ldrh	r0, [r4, #8]
	sub	r0, #12
	strh	r0, [r4, #8]
	ldr	r3, .L_5c3ac
	mov	r2, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	sub	r0, #12
	strh	r0, [r1, #8]
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	sub	r0, #12
	strh	r0, [r1, #8]
	b	.L_5c3be
	.align	2, 0
.L_5c3a8:
	.4byte	gWarioData
.L_5c3ac:
	.4byte	gSpriteData
.L_5c3b0:
	mov	r0, #19
	strb	r0, [r4, #28]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r1, [r0, #0]
	ldr	r0, .L_5c3c4
	strb	r1, [r0, #0]
.L_5c3be:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_5c3c4:
	.4byte	gBossTookDamage


thumb_func_start func_805C3C8
func_805C3C8:
	push	{r4, r5, r6, lr}
	ldr	r4, .L_5c420
	mov	r0, #1
	strb	r0, [r4, #31]
	ldr	r0, .L_5c424
	bl	func_805ACC4
	mov	r0, #220	@ 0xdc
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_5c42c
	sub	r0, #1
	strb	r0, [r1, #0]
	ldr	r3, .L_5c428
	mov	r2, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #10]
	sub	r0, #16
	strh	r0, [r1, #10]
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #10]
	sub	r0, #16
	strh	r0, [r1, #10]
	ldrh	r0, [r4, #10]
	sub	r0, #16
	strh	r0, [r4, #10]
	b	.L_5c502
.L_5c420:
	.4byte	gCurrentSprite
.L_5c424:
	.4byte	sUnk_83DFD68
.L_5c428:
	.4byte	gSpriteData
.L_5c42c:
	ldrb	r0, [r4, #29]
	cmp	r0, #6
	bhi	.L_5c438
	ldrh	r0, [r4, #8]
	add	r0, #224	@ 0xe0
	b	.L_5c43c
.L_5c438:
	ldrh	r0, [r4, #8]
	sub	r0, #140	@ 0x8c
.L_5c43c:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r4, .L_5c474
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_5c478
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	beq	.L_5c480
	ldrh	r0, [r4, #8]
	add	r0, #16
	strh	r0, [r4, #8]
	ldr	r3, .L_5c47c
	mov	r2, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #16
	strh	r0, [r1, #8]
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #16
	strh	r0, [r1, #8]
	b	.L_5c502
.L_5c474:
	.4byte	gCurrentSprite
.L_5c478:
	.4byte	gSpriteCollisionTileType
.L_5c47c:
	.4byte	gSpriteData
.L_5c480:
	mov	r1, #0
	mov	r0, #21
	strb	r0, [r4, #28]
	ldr	r0, .L_5c4a8
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	mov	r2, #0
	strh	r1, [r4, #20]
	ldrb	r0, [r4, #29]
	cmp	r0, #6
	bhi	.L_5c4b0
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	strb	r2, [r0, #0]
	ldr	r0, .L_5c4ac
	strb	r2, [r0, #0]
	mov	r0, #206	@ 0xce
	bl	m4aSongNumStart
	b	.L_5c4b8
.L_5c4a8:
	.4byte	sUnk_83DF77C
.L_5c4ac:
	.4byte	gCuckooCondorMoveRight
.L_5c4b0:
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	mov	r0, #60	@ 0x3c
	strb	r0, [r1, #0]
.L_5c4b8:
	ldr	r0, .L_5c4dc
	ldrb	r2, [r0, #29]
	cmp	r2, #9
	bhi	.L_5c502
	ldr	r1, .L_5c4e0
	mov	r0, #1
	strb	r0, [r1, #0]
	cmp	r2, #1
	bhi	.L_5c4e8
	ldr	r3, .L_5c4e4
	mov	r2, #44	@ 0x2c
	add	r0, r5, #0
	mul	r0, r2
	add	r0, r0, r3
	add	r0, #40	@ 0x28
	mov	r1, #30
	b	.L_5c4f6
	.align	2, 0
.L_5c4dc:
	.4byte	gCurrentSprite
.L_5c4e0:
	.4byte	gCuckooCondorHasCapturedWario
.L_5c4e4:
	.4byte	gSpriteData
.L_5c4e8:
	ldr	r3, .L_5c508
	mov	r2, #44	@ 0x2c
	add	r0, r5, #0
	mul	r0, r2
	add	r0, r0, r3
	add	r0, #40	@ 0x28
	mov	r1, #10
.L_5c4f6:
	strb	r1, [r0, #0]
	add	r0, r6, #0
	mul	r0, r2
	add	r0, r0, r3
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
.L_5c502:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_5c508:
	.4byte	gSpriteData


thumb_func_start func_805C50C
func_805C50C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	ldr	r2, .L_5c59c
	ldrb	r0, [r2, #29]
	cmp	r0, #6
	bhi	.L_5c53c
	ldr	r0, [r2, #20]
	ldr	r1, .L_5c5a0
	and	r0, r1
	ldr	r1, .L_5c5a4
	cmp	r0, r1
	bne	.L_5c53c
	ldrh	r3, [r2, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r2, #10]
	sub	r0, #84	@ 0x54
	str	r0, [sp, #0]
	mov	r0, #223	@ 0xdf
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
.L_5c53c:
	ldr	r0, .L_5c5a8
	bl	func_805ACC4
	mov	r0, #220	@ 0xdc
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	ldr	r4, .L_5c59c
	mov	r0, #41	@ 0x29
	add	r0, r0, r4
	mov	r8, r0
	ldrb	r0, [r0, #0]
	add	r5, r0, #0
	cmp	r5, #0
	beq	.L_5c5e8
	sub	r0, #1
	mov	r1, r8
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #20
	bls	.L_5c5b0
	ldrh	r0, [r4, #8]
	sub	r0, #8
	strh	r0, [r4, #8]
	ldr	r3, .L_5c5ac
	mov	r2, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	sub	r0, #8
	strh	r0, [r1, #8]
	add	r1, r7, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	sub	r0, #8
	strh	r0, [r1, #8]
	b	.L_5c68c
.L_5c59c:
	.4byte	gCurrentSprite
.L_5c5a0:
	.4byte	0xFFFFFF
.L_5c5a4:
	.4byte	0x10003
.L_5c5a8:
	.4byte	sUnk_83DFD68
.L_5c5ac:
	.4byte	gSpriteData
.L_5c5b0:
	ldrh	r0, [r4, #8]
	add	r0, #4
	strh	r0, [r4, #8]
	ldr	r3, .L_5c5e4
	mov	r2, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #4
	strh	r0, [r1, #8]
	add	r1, r7, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #4
	strh	r0, [r1, #8]
	mov	r2, r8
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_5c68c
	mov	r0, #206	@ 0xce
	bl	m4aSongNumStart
	b	.L_5c68c
	.align	2, 0
.L_5c5e4:
	.4byte	gSpriteData
.L_5c5e8:
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	sub	r1, #128	@ 0x80
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	func_8023BFC
	ldr	r0, .L_5c618
	ldrb	r0, [r0, #0]
	cmp	r0, #17
	bne	.L_5c624
	ldr	r0, .L_5c61c
	str	r0, [r4, #4]
	strb	r5, [r4, #22]
	mov	r1, #0
	strh	r5, [r4, #20]
	mov	r0, #22
	strb	r0, [r4, #28]
	mov	r0, #46	@ 0x2e
	mov	r2, r8
	strb	r0, [r2, #0]
	ldr	r0, .L_5c620
	strb	r1, [r0, #0]
	b	.L_5c68c
.L_5c618:
	.4byte	gSpriteCollisionTileType
.L_5c61c:
	.4byte	sUnk_83DF724
.L_5c620:
	.4byte	gCuckooCondorHasCapturedWario
.L_5c624:
	ldrb	r5, [r4, #29]
	cmp	r5, #3
	bls	.L_5c654
	ldr	r3, .L_5c650
	mov	r2, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #10]
	sub	r0, #4
	strh	r0, [r1, #10]
	add	r1, r7, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #10]
	sub	r0, #4
	strh	r0, [r1, #10]
	ldrh	r0, [r4, #10]
	sub	r0, #4
	strh	r0, [r4, #10]
	b	.L_5c68c
	.align	2, 0
.L_5c650:
	.4byte	gSpriteData
.L_5c654:
	ldr	r0, .L_5c698
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5c666
	ldr	r1, .L_5c69c
	ldrh	r0, [r4, #10]
	ldrh	r1, [r1, #18]
	cmp	r0, r1
	bcs	.L_5c668
.L_5c666:
	mov	r5, #6
.L_5c668:
	ldr	r3, .L_5c6a0
	mov	r2, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #10]
	sub	r0, r0, r5
	strh	r0, [r1, #10]
	add	r1, r7, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #10]
	sub	r0, r0, r5
	strh	r0, [r1, #10]
	ldr	r1, .L_5c6a4
	ldrh	r0, [r1, #10]
	sub	r0, r0, r5
	strh	r0, [r1, #10]
.L_5c68c:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_5c698:
	.4byte	gCuckooCondorHasCapturedWario
.L_5c69c:
	.4byte	gWarioData
.L_5c6a0:
	.4byte	gSpriteData
.L_5c6a4:
	.4byte	gCurrentSprite


thumb_func_start func_805C6A8
func_805C6A8:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r2, .L_5c728
	ldrb	r0, [r2, #29]
	cmp	r0, #6
	bhi	.L_5c6d4
	ldr	r0, [r2, #20]
	ldr	r1, .L_5c72c
	and	r0, r1
	ldr	r1, .L_5c730
	cmp	r0, r1
	bne	.L_5c6d4
	ldrh	r3, [r2, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r2, #10]
	sub	r0, #84	@ 0x54
	str	r0, [sp, #0]
	mov	r0, #223	@ 0xdf
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
.L_5c6d4:
	ldr	r0, .L_5c734
	bl	func_805ACC4
	mov	r0, #220	@ 0xdc
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r5, r0, #24
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	ldr	r2, .L_5c728
	add	r3, r2, #0
	add	r3, #41	@ 0x29
	ldrb	r0, [r3, #0]
	add	r1, r0, #0
	cmp	r1, #0
	beq	.L_5c73c
	sub	r0, #1
	strb	r0, [r3, #0]
	ldrh	r0, [r2, #8]
	sub	r0, #6
	strh	r0, [r2, #8]
	ldr	r3, .L_5c738
	mov	r2, #44	@ 0x2c
	add	r1, r5, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	sub	r0, #5
	strh	r0, [r1, #8]
	add	r1, r4, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	sub	r0, #5
	strh	r0, [r1, #8]
	b	.L_5c748
.L_5c728:
	.4byte	gCurrentSprite
.L_5c72c:
	.4byte	0xFFFFFF
.L_5c730:
	.4byte	0x50003
.L_5c734:
	.4byte	sUnk_83DFD68
.L_5c738:
	.4byte	gSpriteData
.L_5c73c:
	ldr	r0, .L_5c750
	strb	r1, [r0, #0]
	ldr	r0, .L_5c754
	strb	r1, [r0, #0]
	mov	r0, #15
	strb	r0, [r2, #28]
.L_5c748:
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_5c750:
	.4byte	gCuckooCondorMoveRight
.L_5c754:
	.4byte	gBossTookDamage


thumb_func_start func_805C758
func_805C758:
	push	{r4, r5, r6, r7, lr}
	mov	r0, #220	@ 0xdc
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	ldr	r1, .L_5c7f8
	ldrb	r0, [r1, #29]
	cmp	r0, #0
	beq	.L_5c792
	sub	r0, #1
	strb	r0, [r1, #29]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_5c78e
	ldr	r1, .L_5c7fc
	mov	r0, #11
	strb	r0, [r1, #0]
	bl	SpriteUtilSetWarioBossVictoryPose
.L_5c78e:
	bl	UpdateBossHealthGauge
.L_5c792:
	ldr	r0, .L_5c800
	mov	r1, #0
	strb	r1, [r0, #0]
	ldr	r0, .L_5c804
	strb	r1, [r0, #0]
	ldr	r5, .L_5c7f8
	ldr	r0, .L_5c808
	str	r0, [r5, #4]
	mov	r0, #0
	strb	r0, [r5, #22]
	mov	r4, #0
	strh	r0, [r5, #20]
	add	r0, r5, #0
	add	r0, #39	@ 0x27
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
	ldr	r0, .L_5c80c
	bl	func_805ACC4
	add	r0, r5, #0
	add	r0, #41	@ 0x29
	strb	r4, [r0, #0]
	add	r0, #1
	strb	r4, [r0, #0]
	ldr	r1, .L_5c810
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_5c814
	ldrh	r0, [r1, #20]
	ldrh	r1, [r1, #18]
	mov	r2, #5
	bl	SpriteSpawnSecondary
	mov	r1, #176	@ 0xb0
	lsl	r1, r1, #1
	add	r0, r1, #0
	ldrh	r1, [r5, #8]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r5, #10]
	bl	func_8023BFC
	ldr	r0, .L_5c818
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5c81c
	mov	r0, #50	@ 0x32
	b	.L_5c81e
	.align	2, 0
.L_5c7f8:
	.4byte	gCurrentSprite
.L_5c7fc:
	.4byte	gTimerState
.L_5c800:
	.4byte	gCuckooCondorMoveRight
.L_5c804:
	.4byte	gBossTookDamage
.L_5c808:
	.4byte	sUnk_83DF754
.L_5c80c:
	.4byte	sUnk_83DFDA4
.L_5c810:
	.4byte	gBossHurtState
.L_5c814:
	.4byte	gWarioData
.L_5c818:
	.4byte	gSpriteCollisionTileType
.L_5c81c:
	mov	r0, #109	@ 0x6d
.L_5c81e:
	strb	r0, [r5, #28]
	mov	r0, #15
	bl	VoiceSetPlay
	ldr	r1, .L_5c87c
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r4, .L_5c880
	mov	r3, #44	@ 0x2c
	add	r0, r6, #0
	mul	r0, r3
	add	r5, r0, r4
	ldr	r1, .L_5c884
	ldrh	r0, [r1, #8]
	add	r0, #64	@ 0x40
	mov	r2, #0
	strh	r0, [r5, #8]
	add	r0, r7, #0
	mul	r0, r3
	add	r3, r0, r4
	ldrh	r0, [r1, #8]
	add	r0, #64	@ 0x40
	strh	r0, [r3, #8]
	ldrh	r0, [r1, #10]
	add	r0, #32
	strh	r0, [r5, #10]
	ldrh	r0, [r1, #10]
	sub	r0, #96	@ 0x60
	strh	r0, [r3, #10]
	add	r0, r5, #0
	add	r0, #41	@ 0x29
	strb	r2, [r0, #0]
	add	r0, r3, #0
	add	r0, #41	@ 0x29
	strb	r2, [r0, #0]
	add	r0, r5, #0
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	add	r0, r3, #0
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
	mov	r0, #15
	strb	r0, [r5, #28]
	strb	r0, [r3, #28]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_5c87c:
	.4byte	gCuckooCondorHasCapturedWario
.L_5c880:
	.4byte	gSpriteData
.L_5c884:
	.4byte	gCurrentSprite


thumb_func_start func_805C888
func_805C888:
	push	{r4, lr}
	ldr	r4, .L_5c8b0
	mov	r3, #0
	strb	r3, [r4, #27]
	ldrb	r0, [r4, #29]
	cmp	r0, #0
	bne	.L_5c8bc
	mov	r0, #121	@ 0x79
	strb	r0, [r4, #28]
	ldr	r0, .L_5c8b4
	bl	func_805ACC4
	ldr	r1, .L_5c8b8
	mov	r0, #2
	strb	r0, [r1, #0]
	mov	r0, #148	@ 0x94
	bl	m4aSongNumStart
	b	.L_5c910
	.align	2, 0
.L_5c8b0:
	.4byte	gCurrentSprite
.L_5c8b4:
	.4byte	sUnk_83DFDA4
.L_5c8b8:
	.4byte	gBossHurtState
.L_5c8bc:
	cmp	r0, #5
	bhi	.L_5c8d0
	ldr	r0, .L_5c918
	mov	r2, #16
	strb	r2, [r0, #0]
	ldr	r1, .L_5c91c
	mov	r0, #20
	strb	r0, [r1, #0]
	ldr	r0, .L_5c920
	strb	r2, [r0, #0]
.L_5c8d0:
	ldr	r0, .L_5c924
	strb	r3, [r0, #0]
	ldr	r2, .L_5c928
	ldrb	r1, [r4, #29]
	mov	r0, #15
	sub	r0, r0, r1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #10
	bls	.L_5c8ea
	mov	r0, #10
	strb	r0, [r2, #0]
.L_5c8ea:
	mov	r0, #15
	strb	r0, [r4, #28]
	ldr	r0, .L_5c92c
	str	r0, [r4, #4]
	strb	r3, [r4, #22]
	mov	r1, #0
	strh	r3, [r4, #20]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_5c930
	bl	func_805ACC4
	add	r1, r4, #0
	add	r1, #42	@ 0x2a
	mov	r0, #2
	strb	r0, [r1, #0]
.L_5c910:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5c918:
	.4byte	gBossInitialHealth
.L_5c91c:
	.4byte	gUnk_3000A5F
.L_5c920:
	.4byte	gUnk_3000A60
.L_5c924:
	.4byte	gBossHurtState
.L_5c928:
	.4byte	gCuckooCondorHasCapturedWario
.L_5c92c:
	.4byte	sUnk_83DF724
.L_5c930:
	.4byte	sUnk_83DFD9C


thumb_func_start func_805C934
func_805C934:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #8
	ldr	r2, .L_5ca50
	mov	r0, #1
	strb	r0, [r2, #31]
	ldr	r0, [r2, #20]
	ldr	r1, .L_5ca54
	and	r0, r1
	ldr	r1, .L_5ca58
	cmp	r0, r1
	bne	.L_5c96a
	ldrb	r0, [r2, #29]
	cmp	r0, #0
	beq	.L_5c96a
	ldrh	r3, [r2, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r2, #10]
	sub	r0, #68	@ 0x44
	str	r0, [sp, #0]
	mov	r0, #223	@ 0xdf
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
.L_5c96a:
	ldr	r5, .L_5ca50
	add	r1, r5, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #2
	bne	.L_5c984
	mov	r0, #0
	bl	VoiceSetPlay
.L_5c984:
	mov	r0, #7
	and	r0, r4
	cmp	r0, #0
	bne	.L_5c99c
	mov	r0, #8
	and	r0, r4
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_5c99a
	mov	r0, #3
.L_5c99a:
	strb	r0, [r5, #27]
.L_5c99c:
	sub	r1, r4, #1
	mov	r0, #63	@ 0x3f
	and	r1, r0
	cmp	r1, #0
	bne	.L_5c9d6
	ldr	r4, .L_5ca50
	ldrh	r3, [r4, #8]
	add	r3, #28
	ldrh	r0, [r4, #10]
	sub	r0, #72	@ 0x48
	str	r0, [sp, #0]
	str	r1, [sp, #4]
	mov	r0, #249	@ 0xf9
	mov	r1, #0
	mov	r2, #0
	bl	SpawnPrimarySpriteWithStatus
	ldrh	r3, [r4, #8]
	add	r3, #32
	ldrh	r0, [r4, #10]
	add	r0, #64	@ 0x40
	str	r0, [sp, #0]
	mov	r0, #64	@ 0x40
	str	r0, [sp, #4]
	mov	r0, #249	@ 0xf9
	mov	r1, #0
	mov	r2, #0
	bl	SpawnPrimarySpriteWithStatus
.L_5c9d6:
	mov	r0, #220	@ 0xdc
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	ldr	r5, .L_5ca50
	add	r4, r5, #0
	add	r4, #42	@ 0x2a
	ldrb	r3, [r4, #0]
	ldr	r2, .L_5ca5c
	lsl	r0, r3, #1
	add	r2, r0, r2
	ldr	r1, .L_5ca60
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	mov	r9, r0
	ldrh	r0, [r2, #0]
	mov	r8, r0
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	ldr	r0, .L_5ca64
	cmp	r1, r0
	bne	.L_5caa0
	mov	r1, #176	@ 0xb0
	lsl	r1, r1, #1
	add	r0, r1, #0
	ldrh	r1, [r5, #8]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r5, #10]
	bl	func_8023BFC
	ldr	r0, .L_5ca68
	ldrb	r4, [r0, #0]
	cmp	r4, #0
	beq	.L_5ca70
	ldrh	r0, [r5, #8]
	sub	r0, #2
	strh	r0, [r5, #8]
	ldr	r3, .L_5ca6c
	mov	r2, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	sub	r0, #2
	strh	r0, [r1, #8]
	add	r1, r7, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	sub	r0, #2
	b	.L_5cafc
.L_5ca50:
	.4byte	gCurrentSprite
.L_5ca54:
	.4byte	0xFFFFFF
.L_5ca58:
	.4byte	0x50003
.L_5ca5c:
	.4byte	sUnk_83DFDCC
.L_5ca60:
	.4byte	sUnk_83DFECE
.L_5ca64:
	.4byte	0x7FFF
.L_5ca68:
	.4byte	gSpriteCollisionTileType
.L_5ca6c:
	.4byte	gSpriteData
.L_5ca70:
	bl	func_805C888
	ldr	r3, .L_5ca9c
	mov	r1, #44	@ 0x2c
	add	r2, r6, #0
	mul	r2, r1
	add	r2, r2, r3
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	strb	r4, [r0, #0]
	mul	r1, r7
	add	r1, r1, r3
	add	r0, r1, #0
	add	r0, #40	@ 0x28
	strb	r4, [r0, #0]
	ldrh	r0, [r5, #8]
	add	r0, #160	@ 0xa0
	strh	r0, [r2, #8]
	ldrh	r0, [r5, #8]
	add	r0, #160	@ 0xa0
	strh	r0, [r1, #8]
	b	.L_5cb04
.L_5ca9c:
	.4byte	gSpriteData
.L_5caa0:
	add	r0, r3, #1
	strb	r0, [r4, #0]
	mov	r1, #176	@ 0xb0
	lsl	r1, r1, #1
	add	r0, r1, #0
	ldrh	r1, [r5, #8]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r5, #10]
	bl	func_8023BFC
	ldr	r0, .L_5cb14
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5cae2
	ldrh	r0, [r5, #8]
	sub	r0, #2
	strh	r0, [r5, #8]
	ldr	r3, .L_5cb18
	mov	r2, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	sub	r0, #1
	strh	r0, [r1, #8]
	add	r1, r7, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	sub	r0, #1
	strh	r0, [r1, #8]
.L_5cae2:
	ldr	r3, .L_5cb18
	mov	r2, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, r8
	strh	r0, [r1, #8]
	add	r1, r7, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, r9
.L_5cafc:
	strh	r0, [r1, #8]
	ldr	r0, .L_5cb1c
	bl	func_805ACC4
.L_5cb04:
	add	sp, #8
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5cb14:
	.4byte	gSpriteCollisionTileType
.L_5cb18:
	.4byte	gSpriteData
.L_5cb1c:
	.4byte	sUnk_83DFDA4


thumb_func_start func_805CB20
func_805CB20:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	ldr	r2, .L_5cc08
	mov	r0, #1
	strb	r0, [r2, #31]
	ldr	r0, [r2, #20]
	ldr	r1, .L_5cc0c
	and	r0, r1
	ldr	r1, .L_5cc10
	cmp	r0, r1
	bne	.L_5cb58
	ldrb	r0, [r2, #29]
	cmp	r0, #0
	beq	.L_5cb58
	ldrh	r3, [r2, #8]
	add	r3, #128	@ 0x80
	ldrh	r0, [r2, #10]
	sub	r0, #68	@ 0x44
	str	r0, [sp, #0]
	mov	r0, #223	@ 0xdf
	mov	r1, #0
	mov	r2, #0
	bl	SpriteSpawnAsChild
.L_5cb58:
	ldr	r5, .L_5cc08
	add	r1, r5, #0
	add	r1, #41	@ 0x29
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	add	r4, r0, #0
	cmp	r4, #2
	bne	.L_5cb74
	mov	r0, #0
	bl	VoiceSetPlay
.L_5cb74:
	mov	r0, #7
	and	r0, r4
	cmp	r0, #0
	bne	.L_5cb8c
	mov	r0, #8
	and	r0, r4
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	beq	.L_5cb8a
	mov	r0, #3
.L_5cb8a:
	strb	r0, [r5, #27]
.L_5cb8c:
	mov	r0, #220	@ 0xdc
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r6, r0, #24
	mov	sl, r6
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r7, r0, #24
	mov	r9, r7
	ldr	r5, .L_5cc08
	add	r3, r5, #0
	add	r3, #42	@ 0x2a
	ldrb	r2, [r3, #0]
	ldr	r0, .L_5cc14
	lsl	r1, r2, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	add	r4, r0, #0
	ldr	r0, .L_5cc18
	add	r1, r1, r0
	ldrh	r1, [r1, #0]
	mov	r8, r1
	ldr	r0, .L_5cc1c
	cmp	r4, r0
	bne	.L_5cc5c
	mov	r1, #176	@ 0xb0
	lsl	r1, r1, #1
	add	r0, r1, #0
	ldrh	r1, [r5, #8]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r5, #10]
	bl	func_8023BFC
	ldr	r0, .L_5cc20
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5cc28
	ldrh	r0, [r5, #8]
	add	r0, #2
	strh	r0, [r5, #8]
	ldr	r3, .L_5cc24
	mov	r2, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #2
	strh	r0, [r1, #8]
	add	r1, r7, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #2
	b	.L_5ccb8
	.align	2, 0
.L_5cc08:
	.4byte	gCurrentSprite
.L_5cc0c:
	.4byte	0xFFFFFF
.L_5cc10:
	.4byte	0x50003
.L_5cc14:
	.4byte	sUnk_83DFDCC
.L_5cc18:
	.4byte	sUnk_83DFECE
.L_5cc1c:
	.4byte	0x7FFF
.L_5cc20:
	.4byte	gSpriteCollisionTileType
.L_5cc24:
	.4byte	gSpriteData
.L_5cc28:
	bl	func_805C888
	ldr	r4, .L_5cc58
	mov	r1, #44	@ 0x2c
	add	r2, r6, #0
	mul	r2, r1
	add	r2, r2, r4
	add	r0, r2, #0
	add	r0, #40	@ 0x28
	mov	r3, #0
	strb	r3, [r0, #0]
	mul	r1, r7
	add	r1, r1, r4
	add	r0, r1, #0
	add	r0, #40	@ 0x28
	strb	r3, [r0, #0]
	ldrh	r0, [r5, #8]
	add	r0, #160	@ 0xa0
	strh	r0, [r2, #8]
	ldrh	r0, [r5, #8]
	add	r0, #160	@ 0xa0
	strh	r0, [r1, #8]
	b	.L_5ccc0
	.align	2, 0
.L_5cc58:
	.4byte	gSpriteData
.L_5cc5c:
	add	r0, r2, #1
	strb	r0, [r3, #0]
	mov	r1, #176	@ 0xb0
	lsl	r1, r1, #1
	add	r0, r1, #0
	ldrh	r1, [r5, #8]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r5, #10]
	bl	func_8023BFC
	ldr	r0, .L_5ccd0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5cc9e
	ldrh	r0, [r5, #8]
	add	r0, #2
	strh	r0, [r5, #8]
	ldr	r3, .L_5ccd4
	mov	r2, #44	@ 0x2c
	add	r1, r6, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #1
	strh	r0, [r1, #8]
	add	r1, r7, #0
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, #1
	strh	r0, [r1, #8]
.L_5cc9e:
	ldr	r3, .L_5ccd4
	mov	r2, #44	@ 0x2c
	mov	r1, sl
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, r0, r4
	strh	r0, [r1, #8]
	mov	r1, r9
	mul	r1, r2
	add	r1, r1, r3
	ldrh	r0, [r1, #8]
	add	r0, r8
.L_5ccb8:
	strh	r0, [r1, #8]
	ldr	r0, .L_5ccd8
	bl	func_805ACC4
.L_5ccc0:
	add	sp, #4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_5ccd0:
	.4byte	gSpriteCollisionTileType
.L_5ccd4:
	.4byte	gSpriteData
.L_5ccd8:
	.4byte	sUnk_83DFDA4


thumb_func_start func_805CCDC
func_805CCDC:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_5cd30
	mov	r0, #1
	strb	r0, [r4, #31]
	ldr	r0, .L_5cd34
	bl	func_805ACC4
	ldr	r1, .L_5cd38
	ldrb	r0, [r1, #0]
	cmp	r0, #254	@ 0xfe
	bhi	.L_5cd44
	add	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #80	@ 0x50
	bne	.L_5cd3c
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	add	r3, #50	@ 0x32
	ldrh	r0, [r4, #10]
	sub	r0, #50	@ 0x32
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r2, #0
	bl	func_801E430
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	add	r3, #20
	ldrh	r0, [r4, #10]
	add	r0, #50	@ 0x32
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r2, #0
	bl	func_801E430
	ldrh	r1, [r4, #0]
	mov	r0, #4
	orr	r0, r1
	b	.L_5cd42
.L_5cd30:
	.4byte	gCurrentSprite
.L_5cd34:
	.4byte	sUnk_83DFDA4
.L_5cd38:
	.4byte	gBossHurtState
.L_5cd3c:
	cmp	r0, #239	@ 0xef
	bls	.L_5cd44
	mov	r0, #0
.L_5cd42:
	strh	r0, [r4, #0]
.L_5cd44:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_805CD4C
func_805CD4C:
	push	{lr}
	ldr	r0, .L_5cd64
	ldrb	r0, [r0, #0]
	sub	r0, #2
	cmp	r0, #6
	bhi	.L_5cda4
	lsl	r0, r0, #2
	ldr	r1, .L_5cd68
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_5cd64:
	.4byte	gCurrentShopItem
.L_5cd68:
	.4byte	.L_5cd6c
.L_5cd6c:
	.4byte	.L_5cd88
	.4byte	.L_5cd8c
	.4byte	.L_5cd90
	.4byte	.L_5cd94
	.4byte	.L_5cd98
	.4byte	.L_5cd9c
	.4byte	.L_5cda0
.L_5cd88:
	mov	r0, #9
	b	.L_5cda6
.L_5cd8c:
	mov	r0, #8
	b	.L_5cda6
.L_5cd90:
	mov	r0, #7
	b	.L_5cda6
.L_5cd94:
	mov	r0, #5
	b	.L_5cda6
.L_5cd98:
	mov	r0, #3
	b	.L_5cda6
.L_5cd9c:
	mov	r0, #4
	b	.L_5cda6
.L_5cda0:
	mov	r0, #2
	b	.L_5cda6
.L_5cda4:
	mov	r0, #10
.L_5cda6:
	ldr	r3, .L_5cdec
	add	r1, r3, #0
	add	r1, #41	@ 0x29
	mov	r2, #0
	strb	r0, [r1, #0]
	ldr	r0, .L_5cdf0
	str	r0, [r3, #4]
	strb	r2, [r3, #22]
	mov	r1, #0
	strh	r2, [r3, #20]
	add	r0, r3, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r1, .L_5cdf4
	mov	r0, #32
	strb	r0, [r1, #0]
	mov	r0, #123	@ 0x7b
	strb	r0, [r3, #28]
	ldrb	r0, [r3, #29]
	cmp	r0, #0
	beq	.L_5cde2
	sub	r0, #1
	strb	r0, [r3, #29]
	bl	UpdateBossHealthGauge
	mov	r0, #122	@ 0x7a
	bl	m4aSongNumStart
.L_5cde2:
	mov	r0, #15
	bl	VoiceSetPlay
	pop	{r0}
	bx	r0
.L_5cdec:
	.4byte	gCurrentSprite
.L_5cdf0:
	.4byte	sUnk_83DF754
.L_5cdf4:
	.4byte	gBossHurtTimer


thumb_func_start func_805CDF8
func_805CDF8:
	push	{r4, r5, lr}
	ldr	r0, .L_5ce30
	bl	func_805ACC4
	ldr	r5, .L_5ce34
	ldrb	r0, [r5, #0]
	add	r2, r0, #0
	cmp	r2, #0
	beq	.L_5ce48
	sub	r0, #1
	strb	r0, [r5, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_5cec2
	mov	r0, #8
	and	r0, r1
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	beq	.L_5ce3c
	ldr	r1, .L_5ce38
	mov	r0, #3
	strb	r0, [r1, #27]
	b	.L_5cec2
	.align	2, 0
.L_5ce30:
	.4byte	sUnk_83DFDA4
.L_5ce34:
	.4byte	gBossHurtTimer
.L_5ce38:
	.4byte	gCurrentSprite
.L_5ce3c:
	ldr	r0, .L_5ce44
	strb	r1, [r0, #27]
	b	.L_5cec2
	.align	2, 0
.L_5ce44:
	.4byte	gCurrentSprite
.L_5ce48:
	ldr	r4, .L_5ce94
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r3, [r4, #29]
	add	r1, r3, #0
	ldrb	r0, [r0, #0]
	cmp	r1, r0
	bne	.L_5ceac
	mov	r0, #24
	strb	r0, [r4, #28]
	ldr	r0, .L_5ce98
	str	r0, [r4, #4]
	strb	r2, [r4, #22]
	mov	r1, #0
	strh	r2, [r4, #20]
	add	r0, r4, #0
	add	r0, #39	@ 0x27
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_5ce9c
	bl	func_805ACC4
	bl	SpriteUtilStartBossTimer
	ldrb	r0, [r4, #29]
	cmp	r0, #5
	bhi	.L_5cec2
	ldr	r0, .L_5cea0
	mov	r2, #16
	strb	r2, [r0, #0]
	ldr	r1, .L_5cea4
	mov	r0, #20
	strb	r0, [r1, #0]
	ldr	r0, .L_5cea8
	strb	r2, [r0, #0]
	b	.L_5cec2
	.align	2, 0
.L_5ce94:
	.4byte	gCurrentSprite
.L_5ce98:
	.4byte	sUnk_83DF7B4
.L_5ce9c:
	.4byte	sUnk_83DFD28
.L_5cea0:
	.4byte	gBossInitialHealth
.L_5cea4:
	.4byte	gUnk_3000A5F
.L_5cea8:
	.4byte	gUnk_3000A60
.L_5ceac:
	mov	r0, #32
	strb	r0, [r5, #0]
	cmp	r1, #0
	beq	.L_5cec2
	sub	r0, r3, #1
	strb	r0, [r4, #29]
	bl	UpdateBossHealthGauge
	mov	r0, #122	@ 0x7a
	bl	m4aSongNumStart
.L_5cec2:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_805CEC8
func_805CEC8:
	push	{lr}
	ldr	r0, .L_5cf24
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_5cf28
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_5cf2c
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #30]
	add	r1, #32
	mov	r0, #40	@ 0x28
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #32
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
	ldrb	r0, [r1, #24]
	cmp	r0, #1
	beq	.L_5cf44
	cmp	r0, #1
	bgt	.L_5cf30
	cmp	r0, #0
	beq	.L_5cf3a
	b	.L_5cf5c
	.align	2, 0
.L_5cf24:
	.4byte	gCurrentSprite
.L_5cf28:
	.4byte	0x8408
.L_5cf2c:
	.4byte	0xFFFB
.L_5cf30:
	cmp	r0, #2
	beq	.L_5cf4c
	cmp	r0, #3
	beq	.L_5cf54
	b	.L_5cf5c
.L_5cf3a:
	ldr	r0, .L_5cf40
	b	.L_5cf5e
	.align	2, 0
.L_5cf40:
	.4byte	sUnk_83DF9D8
.L_5cf44:
	ldr	r0, .L_5cf48
	b	.L_5cf5e
.L_5cf48:
	.4byte	sUnk_83DF9A8
.L_5cf4c:
	ldr	r0, .L_5cf50
	b	.L_5cf5e
.L_5cf50:
	.4byte	sUnk_83DF9B8
.L_5cf54:
	ldr	r0, .L_5cf58
	b	.L_5cf5e
.L_5cf58:
	.4byte	sUnk_83DF9C8
.L_5cf5c:
	ldr	r0, .L_5cf70
.L_5cf5e:
	str	r0, [r1, #4]
	ldrb	r0, [r1, #24]
	cmp	r0, #0
	bne	.L_5cf74
	mov	r0, #216	@ 0xd8
	bl	SpriteUtilFindSpriteSlotWork3
	b	.L_5cf7c
	.align	2, 0
.L_5cf70:
	.4byte	sUnk_83DF998
.L_5cf74:
	ldrb	r0, [r1, #24]
	sub	r0, #1
	bl	SpriteUtilFindOwnSlot
.L_5cf7c:
	pop	{r0}
	bx	r0


thumb_func_start func_805CF80
func_805CF80:
	push	{r4, lr}
	sub	sp, #4
	ldr	r0, .L_5cfa4
	ldrb	r2, [r0, #0]
	add	r3, r0, #0
	cmp	r2, #1
	bls	.L_5d024
	ldr	r0, .L_5cfa8
	ldrb	r1, [r0, #24]
	add	r4, r0, #0
	cmp	r1, #2
	beq	.L_5cfc6
	cmp	r1, #2
	bgt	.L_5cfac
	cmp	r1, #1
	beq	.L_5cfb6
	b	.L_5d008
	.align	2, 0
.L_5cfa4:
	.4byte	gBossHurtState
.L_5cfa8:
	.4byte	gCurrentSprite
.L_5cfac:
	cmp	r1, #3
	beq	.L_5cfd6
	cmp	r1, #4
	beq	.L_5cfe6
	b	.L_5d008
.L_5cfb6:
	cmp	r2, #47	@ 0x2f
	bls	.L_5d040
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #1
	b	.L_5d018
.L_5cfc6:
	cmp	r2, #55	@ 0x37
	bls	.L_5d040
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #2
	b	.L_5d018
.L_5cfd6:
	cmp	r2, #63	@ 0x3f
	bls	.L_5d040
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #3
	b	.L_5d018
.L_5cfe6:
	cmp	r2, #71	@ 0x47
	bls	.L_5d040
	ldrh	r3, [r4, #8]
	add	r3, #32
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r1, #4
	mov	r2, #0
	bl	func_801E430
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	add	r3, #64	@ 0x40
	ldrh	r0, [r4, #10]
	add	r0, #100	@ 0x64
	b	.L_5d014
.L_5d008:
	ldrb	r0, [r3, #0]
	cmp	r0, #55	@ 0x37
	bls	.L_5d040
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
.L_5d014:
	str	r0, [sp, #0]
	mov	r0, #10
.L_5d018:
	mov	r2, #0
	bl	func_801E430
	mov	r0, #0
	strh	r0, [r4, #0]
	b	.L_5d040
.L_5d024:
	bl	func_805AD5C
	ldr	r0, .L_5d038
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5d03c
	bl	func_805AEB4
	b	.L_5d040
	.align	2, 0
.L_5d038:
	.4byte	gCuckooCondorMoveRight
.L_5d03c:
	bl	func_805AE20
.L_5d040:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_805D048
func_805D048:
	ldr	r0, .L_5d098
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_5d09c
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_5d0a0
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
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r1, ip
	add	r1, #38	@ 0x26
	mov	r0, #48	@ 0x30
	strb	r0, [r1, #0]
	mov	r0, ip
	strb	r2, [r0, #22]
	strh	r3, [r0, #20]
	mov	r0, #23
	mov	r1, ip
	strb	r0, [r1, #28]
	bx	lr
	.align	2, 0
.L_5d098:
	.4byte	gCurrentSprite
.L_5d09c:
	.4byte	0x8408
.L_5d0a0:
	.4byte	0xFFFB


thumb_func_start func_805D0A4
func_805D0A4:
	push	{lr}
	bl	func_805D048
	ldr	r1, .L_5d0bc
	ldrb	r0, [r1, #24]
	cmp	r0, #4
	bhi	.L_5d138
	lsl	r0, r0, #2
	ldr	r1, .L_5d0c0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_5d0bc:
	.4byte	gCurrentSprite
.L_5d0c0:
	.4byte	.L_5d0c4
.L_5d0c4:
	.4byte	.L_5d0d8
	.4byte	.L_5d0f8
	.4byte	.L_5d108
	.4byte	.L_5d118
	.4byte	.L_5d128
.L_5d0d8:
	ldr	r1, .L_5d0f0
	ldrh	r2, [r1, #0]
	mov	r0, #128	@ 0x80
	orr	r0, r2
	strh	r0, [r1, #0]
	ldr	r0, .L_5d0f4
	str	r0, [r1, #4]
	add	r1, #39	@ 0x27
	mov	r0, #224	@ 0xe0
	strb	r0, [r1, #0]
	b	.L_5d13c
	.align	2, 0
.L_5d0f0:
	.4byte	gCurrentSprite
.L_5d0f4:
	.4byte	sUnk_83DFAA8
.L_5d0f8:
	ldr	r1, .L_5d100
	ldr	r0, .L_5d104
	b	.L_5d13a
	.align	2, 0
.L_5d100:
	.4byte	gCurrentSprite
.L_5d104:
	.4byte	sUnk_83DFA78
.L_5d108:
	ldr	r1, .L_5d110
	ldr	r0, .L_5d114
	b	.L_5d13a
	.align	2, 0
.L_5d110:
	.4byte	gCurrentSprite
.L_5d114:
	.4byte	sUnk_83DFA88
.L_5d118:
	ldr	r1, .L_5d120
	ldr	r0, .L_5d124
	b	.L_5d13a
	.align	2, 0
.L_5d120:
	.4byte	gCurrentSprite
.L_5d124:
	.4byte	sUnk_83DFA98
.L_5d128:
	ldr	r1, .L_5d130
	ldr	r0, .L_5d134
	b	.L_5d13a
	.align	2, 0
.L_5d130:
	.4byte	gCurrentSprite
.L_5d134:
	.4byte	sUnk_83DFA98
.L_5d138:
	ldr	r0, .L_5d140
.L_5d13a:
	str	r0, [r1, #4]
.L_5d13c:
	pop	{r0}
	bx	r0
.L_5d140:
	.4byte	sUnk_83DFB98


thumb_func_start func_805D144
func_805D144:
	push	{lr}
	bl	func_805D048
	ldr	r1, .L_5d15c
	ldrb	r0, [r1, #24]
	cmp	r0, #4
	bhi	.L_5d1dc
	lsl	r0, r0, #2
	ldr	r1, .L_5d160
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_5d15c:
	.4byte	gCurrentSprite
.L_5d160:
	.4byte	.L_5d164
.L_5d164:
	.4byte	.L_5d178
	.4byte	.L_5d19c
	.4byte	.L_5d1ac
	.4byte	.L_5d1bc
	.4byte	.L_5d1cc
.L_5d178:
	ldr	r1, .L_5d194
	ldrh	r2, [r1, #0]
	mov	r0, #128	@ 0x80
	orr	r0, r2
	strh	r0, [r1, #0]
	ldr	r0, .L_5d198
	str	r0, [r1, #4]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #224	@ 0xe0
	strb	r0, [r2, #0]
	mov	r0, #13
	strb	r0, [r1, #30]
	b	.L_5d1e0
.L_5d194:
	.4byte	gCurrentSprite
.L_5d198:
	.4byte	sUnk_83DFA68
.L_5d19c:
	ldr	r1, .L_5d1a4
	ldr	r0, .L_5d1a8
	b	.L_5d1de
	.align	2, 0
.L_5d1a4:
	.4byte	gCurrentSprite
.L_5d1a8:
	.4byte	sUnk_83DFA38
.L_5d1ac:
	ldr	r1, .L_5d1b4
	ldr	r0, .L_5d1b8
	b	.L_5d1de
	.align	2, 0
.L_5d1b4:
	.4byte	gCurrentSprite
.L_5d1b8:
	.4byte	sUnk_83DFA48
.L_5d1bc:
	ldr	r1, .L_5d1c4
	ldr	r0, .L_5d1c8
	b	.L_5d1de
	.align	2, 0
.L_5d1c4:
	.4byte	gCurrentSprite
.L_5d1c8:
	.4byte	sUnk_83DFA58
.L_5d1cc:
	ldr	r1, .L_5d1d4
	ldr	r0, .L_5d1d8
	b	.L_5d1de
	.align	2, 0
.L_5d1d4:
	.4byte	gCurrentSprite
.L_5d1d8:
	.4byte	sUnk_83DFA58
.L_5d1dc:
	ldr	r0, .L_5d1e4
.L_5d1de:
	str	r0, [r1, #4]
.L_5d1e0:
	pop	{r0}
	bx	r0
.L_5d1e4:
	.4byte	sUnk_83DFB98


thumb_func_start func_805D1E8
func_805D1E8:
	push	{r4, lr}
	ldr	r4, .L_5d200
	mov	r0, #24
	strb	r0, [r4, #28]
	ldrb	r1, [r4, #24]
	cmp	r1, #3
	bgt	.L_5d204
	cmp	r1, #1
	bge	.L_5d21a
	cmp	r1, #0
	beq	.L_5d20a
	b	.L_5d23e
.L_5d200:
	.4byte	gCurrentSprite
.L_5d204:
	cmp	r1, #4
	beq	.L_5d236
	b	.L_5d23e
.L_5d20a:
	add	r2, r4, #0
	add	r2, #42	@ 0x2a
	mov	r0, #40	@ 0x28
	strb	r0, [r2, #0]
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	strb	r1, [r0, #0]
	b	.L_5d23e
.L_5d21a:
	mov	r0, #219	@ 0xdb
	mov	r1, #4
	bl	SpriteUtilFindSpriteWork3
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	sub	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #219	@ 0xdb
	mov	r1, #0
	bl	SpriteUtilFindSpriteWork3
	b	.L_5d23e
.L_5d236:
	mov	r0, #217	@ 0xd9
	mov	r1, #1
	bl	SpriteUtilFindSpriteWork3
.L_5d23e:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_805D244
func_805D244:
	push	{r4, lr}
	ldr	r4, .L_5d25c
	mov	r0, #24
	strb	r0, [r4, #28]
	ldrb	r1, [r4, #24]
	cmp	r1, #3
	bgt	.L_5d260
	cmp	r1, #1
	bge	.L_5d276
	cmp	r1, #0
	beq	.L_5d266
	b	.L_5d29a
.L_5d25c:
	.4byte	gCurrentSprite
.L_5d260:
	cmp	r1, #4
	beq	.L_5d292
	b	.L_5d29a
.L_5d266:
	add	r2, r4, #0
	add	r2, #42	@ 0x2a
	mov	r0, #30
	strb	r0, [r2, #0]
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	strb	r1, [r0, #0]
	b	.L_5d29a
.L_5d276:
	mov	r0, #220	@ 0xdc
	mov	r1, #4
	bl	SpriteUtilFindSpriteWork3
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	sub	r0, #1
	strb	r1, [r0, #0]
	mov	r0, #220	@ 0xdc
	mov	r1, #0
	bl	SpriteUtilFindSpriteWork3
	b	.L_5d29a
.L_5d292:
	mov	r0, #217	@ 0xd9
	mov	r1, #1
	bl	SpriteUtilFindSpriteWork3
.L_5d29a:
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_805D2A0
func_805D2A0:
	push	{r4, r5, r6, r7, lr}
	mov	r0, #216	@ 0xd8
	bl	SpriteUtilFindSpriteSlot
	add	r6, r0, #0
	ldr	r3, .L_5d2c0
	ldrb	r0, [r3, #23]
	cmp	r0, #219	@ 0xdb
	bne	.L_5d2c8
	mov	r0, #41	@ 0x29
	add	r0, r0, r3
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_5d2c4
	b	.L_5d2d2
	.align	2, 0
.L_5d2c0:
	.4byte	gCurrentSprite
.L_5d2c4:
	.4byte	sUnk_83E0526
.L_5d2c8:
	mov	r7, #41	@ 0x29
	add	r7, r7, r3
	mov	ip, r7
	ldrb	r2, [r7, #0]
	ldr	r5, .L_5d30c
.L_5d2d2:
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_5d310
	cmp	r1, r0
	bne	.L_5d2e6
	ldrh	r4, [r5, #0]
	mov	r2, #0
.L_5d2e6:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r3, #10]
	add	r0, r0, r4
	strh	r0, [r3, #10]
	ldr	r0, .L_5d314
	mov	r1, #44	@ 0x2c
	mul	r1, r6
	add	r0, r1, r0
	ldrb	r2, [r0, #28]
	cmp	r2, #111	@ 0x6f
	bgt	.L_5d318
	cmp	r2, #110	@ 0x6e
	bge	.L_5d378
	cmp	r2, #15
	beq	.L_5d330
	b	.L_5d34c
	.align	2, 0
.L_5d30c:
	.4byte	sUnk_83E05B8
.L_5d310:
	.4byte	0x7FFF
.L_5d314:
	.4byte	gSpriteData
.L_5d318:
	cmp	r2, #112	@ 0x70
	beq	.L_5d348
	cmp	r2, #113	@ 0x71
	bne	.L_5d34c
	ldr	r1, .L_5d32c
	ldrh	r0, [r0, #8]
	add	r0, #144	@ 0x90
	strh	r0, [r1, #8]
	b	.L_5d378
	.align	2, 0
.L_5d32c:
	.4byte	gCurrentSprite
.L_5d330:
	ldr	r0, .L_5d344
	mov	r1, #0
	strb	r2, [r0, #28]
	add	r2, r0, #0
	add	r2, #41	@ 0x29
	strb	r1, [r2, #0]
	add	r0, #40	@ 0x28
	strb	r1, [r0, #0]
	b	.L_5d378
	.align	2, 0
.L_5d344:
	.4byte	gCurrentSprite
.L_5d348:
	bl	func_805B13C
.L_5d34c:
	ldr	r4, .L_5d380
	mov	r6, #42	@ 0x2a
	add	r6, r6, r4
	mov	ip, r6
	ldrb	r2, [r6, #0]
	ldr	r5, .L_5d384
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_5d388
	cmp	r1, r0
	bne	.L_5d36c
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_5d36c:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
.L_5d378:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5d380:
	.4byte	gCurrentSprite
.L_5d384:
	.4byte	sUnk_83E028A
.L_5d388:
	.4byte	0x7FFF


thumb_func_start func_805D38C
func_805D38C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #216	@ 0xd8
	bl	SpriteUtilFindSpriteSlot
	add	r4, r0, #0
	ldr	r1, .L_5d3b4
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrb	r0, [r0, #28]
	cmp	r0, #116	@ 0x74
	bne	.L_5d3bc
	ldr	r1, .L_5d3b8
	ldrb	r0, [r1, #23]
	add	r1, #39	@ 0x27
	mov	r0, #176	@ 0xb0
	strb	r0, [r1, #0]
	b	.L_5d3c0
.L_5d3b4:
	.4byte	gSpriteData
.L_5d3b8:
	.4byte	gCurrentSprite
.L_5d3bc:
	bl	func_805B13C
.L_5d3c0:
	ldr	r1, .L_5d3e4
	ldrb	r0, [r1, #23]
	add	r3, r1, #0
	cmp	r0, #219	@ 0xdb
	bne	.L_5d424
	ldr	r1, .L_5d3e8
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrb	r0, [r0, #28]
	cmp	r0, #116	@ 0x74
	bne	.L_5d3f0
	add	r6, r3, #0
	add	r6, #41	@ 0x29
	ldrb	r2, [r6, #0]
	ldr	r5, .L_5d3ec
	b	.L_5d43a
	.align	2, 0
.L_5d3e4:
	.4byte	gCurrentSprite
.L_5d3e8:
	.4byte	gSpriteData
.L_5d3ec:
	.4byte	sUnk_83E0462
.L_5d3f0:
	add	r6, r3, #0
	add	r6, #41	@ 0x29
	ldrb	r2, [r6, #0]
	ldr	r5, .L_5d41c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_5d420
	cmp	r1, r0
	bne	.L_5d40c
	ldrh	r4, [r5, #0]
	mov	r2, #0
.L_5d40c:
	add	r0, r2, #1
	strb	r0, [r6, #0]
	ldrh	r0, [r3, #10]
	add	r0, r0, r4
	strh	r0, [r3, #10]
	mov	r5, #120	@ 0x78
	b	.L_5d490
	.align	2, 0
.L_5d41c:
	.4byte	sUnk_83E03BE
.L_5d420:
	.4byte	0x7FFF
.L_5d424:
	ldr	r1, .L_5d45c
	mov	r0, #44	@ 0x2c
	mul	r0, r4
	add	r0, r0, r1
	ldrb	r0, [r0, #28]
	cmp	r0, #116	@ 0x74
	bne	.L_5d468
	add	r6, r3, #0
	add	r6, #41	@ 0x29
	ldrb	r2, [r6, #0]
	ldr	r5, .L_5d460
.L_5d43a:
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_5d464
	cmp	r1, r0
	bne	.L_5d44e
	ldrh	r4, [r5, #0]
	mov	r2, #0
.L_5d44e:
	add	r0, r2, #1
	strb	r0, [r6, #0]
	ldrh	r0, [r3, #10]
	add	r0, r0, r4
	strh	r0, [r3, #10]
	mov	r5, #255	@ 0xff
	b	.L_5d490
.L_5d45c:
	.4byte	gSpriteData
.L_5d460:
	.4byte	sUnk_83E04C4
.L_5d464:
	.4byte	0x7FFF
.L_5d468:
	add	r6, r3, #0
	add	r6, #41	@ 0x29
	ldrb	r2, [r6, #0]
	ldr	r5, .L_5d500
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r4, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_5d504
	cmp	r1, r0
	bne	.L_5d484
	ldrh	r4, [r5, #0]
	mov	r2, #0
.L_5d484:
	add	r0, r2, #1
	strb	r0, [r6, #0]
	ldrh	r0, [r3, #10]
	add	r0, r0, r4
	strh	r0, [r3, #10]
	mov	r5, #52	@ 0x34
.L_5d490:
	ldr	r0, .L_5d508
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_5d49a
	b	.L_5d5a8
.L_5d49a:
	add	r2, r3, #0
	add	r2, #40	@ 0x28
	ldrb	r0, [r2, #0]
	add	r4, r0, #1
	strb	r4, [r2, #0]
	ldr	r1, .L_5d50c
	ldrb	r0, [r1, #1]
	sub	r0, #43	@ 0x2b
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	ip, r1
	cmp	r0, #2
	bls	.L_5d4ba
	ldrb	r0, [r3, #29]
	cmp	r0, #1
	bne	.L_5d4be
.L_5d4ba:
	add	r0, r4, #1
	strb	r0, [r2, #0]
.L_5d4be:
	mov	r0, #40	@ 0x28
	add	r0, r0, r3
	mov	r8, r0
	ldrb	r6, [r0, #0]
	cmp	r6, r5
	blt	.L_5d5a8
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	add	r1, r2, #0
	ldrh	r4, [r3, #8]
	add	r0, r1, r4
	lsl	r0, r0, #16
	lsr	r5, r0, #16
	mov	r7, ip
	ldrh	r7, [r7, #20]
	add	r0, r1, r7
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	ldrh	r2, [r3, #10]
	add	r0, r1, r2
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	mov	r7, ip
	ldrh	r7, [r7, #18]
	add	r1, r1, r7
	lsl	r1, r1, #16
	lsr	r0, r1, #16
	cmp	r2, r0
	bcs	.L_5d510
	sub	r0, r6, #1
	mov	r1, r8
	strb	r0, [r1, #0]
	b	.L_5d5a8
.L_5d500:
	.4byte	sUnk_83E0410
.L_5d504:
	.4byte	0x7FFF
.L_5d508:
	.4byte	gCuckooCondorHasCapturedWario
.L_5d50c:
	.4byte	gWarioData
.L_5d510:
	sub	r0, r2, r0
	lsl	r0, r0, #16
	lsr	r1, r0, #20
	ldr	r0, .L_5d528
	ldrb	r2, [r0, #0]
	add	r6, r0, #0
	cmp	r1, r2
	bls	.L_5d52c
	add	r0, r3, #0
	add	r0, #41	@ 0x29
	strb	r2, [r0, #0]
	b	.L_5d532
.L_5d528:
	.4byte	gUnk_3000A60
.L_5d52c:
	add	r0, r3, #0
	add	r0, #41	@ 0x29
	strb	r1, [r0, #0]
.L_5d532:
	cmp	r5, r4
	bls	.L_5d574
	sub	r0, r5, r4
	lsl	r0, r0, #16
	lsr	r2, r0, #20
	ldrb	r0, [r6, #0]
	cmp	r2, r0
	bls	.L_5d54a
	add	r1, r3, #0
	add	r1, #42	@ 0x2a
	strb	r0, [r1, #0]
	b	.L_5d550
.L_5d54a:
	add	r1, r3, #0
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
.L_5d550:
	ldr	r1, .L_5d56c
	ldr	r0, .L_5d570
	ldrb	r0, [r0, #0]
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	add	r1, r3, #0
	add	r1, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r0, #110	@ 0x6e
	strb	r0, [r3, #28]
	mov	r0, #163	@ 0xa3
	bl	m4aSongNumStart
	b	.L_5d5a8
.L_5d56c:
	.4byte	gUnk_3000A5F
.L_5d570:
	.4byte	gBossInitialHealth
.L_5d574:
	sub	r0, r4, r5
	lsl	r0, r0, #16
	lsr	r2, r0, #20
	ldrb	r0, [r6, #0]
	cmp	r2, r0
	bls	.L_5d588
	add	r1, r3, #0
	add	r1, #42	@ 0x2a
	strb	r0, [r1, #0]
	b	.L_5d58e
.L_5d588:
	add	r1, r3, #0
	add	r1, #42	@ 0x2a
	strb	r2, [r1, #0]
.L_5d58e:
	ldr	r1, .L_5d5b4
	ldr	r0, .L_5d5b8
	ldrb	r0, [r0, #0]
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	add	r1, r3, #0
	add	r1, #40	@ 0x28
	strb	r0, [r1, #0]
	mov	r0, #112	@ 0x70
	strb	r0, [r3, #28]
	mov	r0, #163	@ 0xa3
	bl	m4aSongNumStart
.L_5d5a8:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5d5b4:
	.4byte	gUnk_3000A5F
.L_5d5b8:
	.4byte	gBossInitialHealth


thumb_func_start func_805D5BC
func_805D5BC:
	push	{r4, lr}
	ldr	r4, .L_5d5fc
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	sub	r2, r0, #1
	strb	r2, [r1, #0]
	lsl	r0, r2, #24
	cmp	r0, #0
	beq	.L_5d626
	ldr	r1, .L_5d600
	lsr	r0, r0, #24
	ldrb	r1, [r1, #0]
	cmp	r0, r1
	bcc	.L_5d608
	cmp	r0, r1
	bne	.L_5d5e4
	mov	r0, #152	@ 0x98
	bl	m4aSongNumStart
.L_5d5e4:
	add	r4, #39	@ 0x27
	ldr	r0, .L_5d604
	ldrb	r1, [r0, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	bl	__divsi3
	ldrb	r1, [r4, #0]
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	b	.L_5d634
	.align	2, 0
.L_5d5fc:
	.4byte	gCurrentSprite
.L_5d600:
	.4byte	gUnk_3000A5F
.L_5d604:
	.4byte	gBossInitialHealth
.L_5d608:
	mov	r0, #13
	strb	r0, [r4, #30]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #8]
	sub	r0, r0, r1
	strh	r0, [r4, #8]
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #10]
	sub	r0, r0, r1
	strh	r0, [r4, #10]
	b	.L_5d630
.L_5d626:
	ldr	r0, .L_5d63c
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	mov	r0, #111	@ 0x6f
	strb	r0, [r4, #28]
.L_5d630:
	bl	func_805B13C
.L_5d634:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5d63c:
	.4byte	gUnk_3000A5F


thumb_func_start func_805D640
func_805D640:
	push	{r4, lr}
	ldr	r4, .L_5d66c
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_5d670
	add	r1, #2
	ldrh	r0, [r4, #8]
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrh	r0, [r4, #10]
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #10]
	b	.L_5d6d2
.L_5d66c:
	.4byte	gCurrentSprite
.L_5d670:
	ldrb	r0, [r4, #23]
	cmp	r0, #219	@ 0xdb
	bne	.L_5d6a0
	mov	r0, #219	@ 0xdb
	mov	r1, #4
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	ldr	r2, .L_5d69c
	mov	r0, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #8]
	add	r0, #36	@ 0x24
	mov	r2, #0
	strh	r0, [r4, #8]
	ldrh	r0, [r1, #10]
	sub	r0, #96	@ 0x60
	strh	r0, [r4, #10]
	strb	r2, [r4, #30]
	b	.L_5d6c0
.L_5d69c:
	.4byte	gSpriteData
.L_5d6a0:
	mov	r0, #220	@ 0xdc
	mov	r1, #4
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	ldr	r2, .L_5d6dc
	mov	r0, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #8]
	add	r0, #48	@ 0x30
	strh	r0, [r4, #8]
	ldrh	r0, [r1, #10]
	sub	r0, #64	@ 0x40
	strh	r0, [r4, #10]
.L_5d6c0:
	ldr	r0, .L_5d6e0
	mov	r2, #0
	mov	r1, #15
	strb	r1, [r0, #28]
	add	r1, r0, #0
	add	r1, #41	@ 0x29
	strb	r2, [r1, #0]
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
.L_5d6d2:
	bl	func_805B13C
	pop	{r4}
	pop	{r0}
	bx	r0
.L_5d6dc:
	.4byte	gSpriteData
.L_5d6e0:
	.4byte	gCurrentSprite


thumb_func_start func_805D6E4
func_805D6E4:
	push	{r4, lr}
	ldr	r4, .L_5d724
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	sub	r2, r0, #1
	strb	r2, [r1, #0]
	lsl	r0, r2, #24
	cmp	r0, #0
	beq	.L_5d74e
	ldr	r1, .L_5d728
	lsr	r0, r0, #24
	ldrb	r1, [r1, #0]
	cmp	r0, r1
	bcc	.L_5d730
	cmp	r0, r1
	bne	.L_5d70c
	mov	r0, #152	@ 0x98
	bl	m4aSongNumStart
.L_5d70c:
	add	r4, #39	@ 0x27
	ldr	r0, .L_5d72c
	ldrb	r1, [r0, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	bl	__divsi3
	ldrb	r1, [r4, #0]
	sub	r1, r1, r0
	strb	r1, [r4, #0]
	b	.L_5d75c
	.align	2, 0
.L_5d724:
	.4byte	gCurrentSprite
.L_5d728:
	.4byte	gUnk_3000A5F
.L_5d72c:
	.4byte	gBossInitialHealth
.L_5d730:
	mov	r0, #13
	strb	r0, [r4, #30]
	add	r1, r4, #0
	add	r1, #42	@ 0x2a
	ldrh	r0, [r4, #8]
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	add	r0, r4, #0
	add	r0, #41	@ 0x29
	ldrb	r1, [r0, #0]
	ldrh	r0, [r4, #10]
	sub	r0, r0, r1
	strh	r0, [r4, #10]
	b	.L_5d758
.L_5d74e:
	ldr	r0, .L_5d764
	ldrb	r0, [r0, #0]
	strb	r0, [r1, #0]
	mov	r0, #113	@ 0x71
	strb	r0, [r4, #28]
.L_5d758:
	bl	func_805B13C
.L_5d75c:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5d764:
	.4byte	gUnk_3000A5F


thumb_func_start func_805D768
func_805D768:
	push	{r4, lr}
	ldr	r4, .L_5d798
	add	r1, r4, #0
	add	r1, #40	@ 0x28
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L_5d79c
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	ldrb	r0, [r0, #0]
	ldrh	r1, [r4, #8]
	sub	r1, r1, r0
	strh	r1, [r4, #8]
	add	r1, r4, #0
	add	r1, #41	@ 0x29
	ldrh	r0, [r4, #10]
	ldrb	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #10]
	b	.L_5d7fe
	.align	2, 0
.L_5d798:
	.4byte	gCurrentSprite
.L_5d79c:
	ldrb	r0, [r4, #23]
	cmp	r0, #219	@ 0xdb
	bne	.L_5d7cc
	mov	r0, #219	@ 0xdb
	mov	r1, #4
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	ldr	r2, .L_5d7c8
	mov	r0, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #8]
	add	r0, #52	@ 0x34
	mov	r2, #0
	strh	r0, [r4, #8]
	ldrh	r0, [r1, #10]
	sub	r0, #96	@ 0x60
	strh	r0, [r4, #10]
	strb	r2, [r4, #30]
	b	.L_5d7ec
.L_5d7c8:
	.4byte	gSpriteData
.L_5d7cc:
	mov	r0, #220	@ 0xdc
	mov	r1, #4
	bl	SpriteUtilFindSprite
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	ldr	r2, .L_5d808
	mov	r0, #44	@ 0x2c
	mul	r1, r0
	add	r1, r1, r2
	ldrh	r0, [r1, #8]
	add	r0, #48	@ 0x30
	strh	r0, [r4, #8]
	ldrh	r0, [r1, #10]
	sub	r0, #64	@ 0x40
	strh	r0, [r4, #10]
.L_5d7ec:
	ldr	r0, .L_5d80c
	mov	r2, #0
	mov	r1, #15
	strb	r1, [r0, #28]
	add	r1, r0, #0
	add	r1, #41	@ 0x29
	strb	r2, [r1, #0]
	add	r0, #40	@ 0x28
	strb	r2, [r0, #0]
.L_5d7fe:
	bl	func_805B13C
	pop	{r4}
	pop	{r0}
	bx	r0
.L_5d808:
	.4byte	gSpriteData
.L_5d80c:
	.4byte	gCurrentSprite


thumb_func_start func_805D810
func_805D810:
	push	{lr}
	ldr	r0, .L_5d868
	mov	ip, r0
	ldrh	r1, [r0, #0]
	ldr	r2, .L_5d86c
	add	r0, r2, #0
	mov	r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_5d870
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r2, [r1, #30]
	add	r1, #32
	mov	r0, #8
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	add	r1, #1
	strb	r0, [r1, #0]
	mov	r0, ip
	add	r0, #35	@ 0x23
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_5d874
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #16
	strb	r0, [r1, #28]
	mov	r0, #217	@ 0xd9
	mov	r1, #4
	bl	SpriteUtilFindSpriteWork3
	pop	{r0}
	bx	r0
.L_5d868:
	.4byte	gCurrentSprite
.L_5d86c:
	.4byte	0x8408
.L_5d870:
	.4byte	0xFFFB
.L_5d874:
	.4byte	sUnk_83DF9E8


thumb_func_start func_805D878
func_805D878:
	push	{r4, lr}
	ldr	r0, .L_5d890
	ldrb	r0, [r0, #0]
	cmp	r0, #89	@ 0x59
	bls	.L_5d898
	ldr	r0, .L_5d894
	mov	r1, #0
	strb	r1, [r0, #28]
	mov	r1, #207	@ 0xcf
	strb	r1, [r0, #23]
	b	.L_5d8bc
	.align	2, 0
.L_5d890:
	.4byte	gBossHurtState
.L_5d894:
	.4byte	gCurrentSprite
.L_5d898:
	ldr	r1, .L_5d8c4
	ldr	r3, .L_5d8c8
	mov	r0, #42	@ 0x2a
	add	r0, r0, r1
	mov	ip, r0
	ldrb	r0, [r0, #0]
	mov	r2, #44	@ 0x2c
	mul	r0, r2
	add	r0, r0, r3
	ldrh	r0, [r0, #8]
	sub	r0, #32
	strh	r0, [r1, #8]
	mov	r4, ip
	ldrb	r0, [r4, #0]
	mul	r0, r2
	add	r0, r0, r3
	ldrh	r0, [r0, #10]
	strh	r0, [r1, #10]
.L_5d8bc:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5d8c4:
	.4byte	gCurrentSprite
.L_5d8c8:
	.4byte	gSpriteData


thumb_func_start func_805D8CC
func_805D8CC:
	ldr	r0, .L_5d930
	mov	ip, r0
	mov	r3, #0
	mov	r0, #1
	mov	r1, ip
	strb	r0, [r1, #26]
	ldrh	r1, [r1, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r2, #0
	orr	r0, r1
	ldr	r1, .L_5d934
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
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_5d938
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r2, [r1, #22]
	strh	r3, [r1, #20]
	mov	r0, #24
	strb	r0, [r1, #28]
	ldrh	r0, [r1, #10]
	add	r0, #128	@ 0x80
	strh	r0, [r1, #10]
	mov	r0, ip
	add	r0, #42	@ 0x2a
	strb	r2, [r0, #0]
	sub	r0, #3
	strb	r2, [r0, #0]
	bx	lr
.L_5d930:
	.4byte	gCurrentSprite
.L_5d934:
	.4byte	0xFFFB
.L_5d938:
	.4byte	sUnk_83DFB70


thumb_func_start func_805D93C
func_805D93C:
	ldr	r0, .L_5d94c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5d94a
	ldr	r1, .L_5d950
	mov	r0, #16
	strb	r0, [r1, #28]
.L_5d94a:
	bx	lr
.L_5d94c:
	.4byte	gWarioData
.L_5d950:
	.4byte	gCurrentSprite


thumb_func_start func_805D954
func_805D954:
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L_5d9ac
	add	r6, r4, #0
	add	r6, #39	@ 0x27
	ldrb	r1, [r6, #0]
	mov	r0, #63	@ 0x3f
	and	r0, r1
	cmp	r0, #0
	bne	.L_5d96c
	mov	r0, #154	@ 0x9a
	bl	m4aSongNumStart
.L_5d96c:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_5d9b0
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_5d9b4
	cmp	r1, r0
	bne	.L_5d98a
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_5d98a:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #200	@ 0xc8
	beq	.L_5d9b8
	ldrh	r0, [r4, #10]
	sub	r0, #2
	strh	r0, [r4, #10]
	b	.L_5d9c8
.L_5d9ac:
	.4byte	gCurrentSprite
.L_5d9b0:
	.4byte	sUnk_83DFFD0
.L_5d9b4:
	.4byte	0x7FFF
.L_5d9b8:
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #18
	strb	r0, [r4, #28]
	mov	r0, #0
	strb	r0, [r6, #0]
.L_5d9c8:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805D9D0
func_805D9D0:
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L_5da28
	add	r6, r4, #0
	add	r6, #39	@ 0x27
	ldrb	r1, [r6, #0]
	mov	r0, #63	@ 0x3f
	and	r0, r1
	cmp	r0, #0
	bne	.L_5d9e8
	mov	r0, #154	@ 0x9a
	bl	m4aSongNumStart
.L_5d9e8:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r5, .L_5da2c
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_5da30
	cmp	r1, r0
	bne	.L_5da06
	ldrh	r3, [r5, #0]
	mov	r2, #0
.L_5da06:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r4, #8]
	add	r0, r0, r3
	strh	r0, [r4, #8]
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #200	@ 0xc8
	beq	.L_5da34
	ldrh	r0, [r4, #10]
	add	r0, #2
	strh	r0, [r4, #10]
	b	.L_5da44
.L_5da28:
	.4byte	gCurrentSprite
.L_5da2c:
	.4byte	sUnk_83DFFD0
.L_5da30:
	.4byte	0x7FFF
.L_5da34:
	ldrh	r0, [r4, #0]
	mov	r1, #64	@ 0x40
	eor	r0, r1
	strh	r0, [r4, #0]
	mov	r0, #24
	strb	r0, [r4, #28]
	mov	r0, #0
	strb	r0, [r6, #0]
.L_5da44:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805DA4C
func_805DA4C:
	push	{r4, lr}
	ldr	r0, .L_5dab4
	mov	ip, r0
	mov	r4, #0
	mov	r0, #1
	mov	r1, ip
	strb	r0, [r1, #26]
	ldrh	r1, [r1, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_5dab8
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	mov	r0, #61	@ 0x3d
	strb	r0, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	mov	r1, ip
	add	r1, #37	@ 0x25
	mov	r0, #24
	strb	r0, [r1, #0]
	add	r1, #1
	mov	r0, #20
	strb	r0, [r1, #0]
	ldr	r0, .L_5dabc
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	strb	r2, [r1, #28]
	mov	r0, #221	@ 0xdd
	bl	SpriteUtilFindSpriteSlotWork3
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5dab4:
	.4byte	gCurrentSprite
.L_5dab8:
	.4byte	0xFFFB
.L_5dabc:
	.4byte	sUnk_83DFB98


thumb_func_start func_805DAC0
func_805DAC0:
	push	{r4, lr}
	ldr	r2, .L_5daec
	ldrh	r0, [r2, #0]
	mov	r1, #4
	eor	r0, r1
	strh	r0, [r2, #0]
	ldr	r3, .L_5daf0
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r4, r0, r3
	ldrh	r1, [r4, #0]
	mov	r0, #64	@ 0x40
	and	r0, r1
	cmp	r0, #0
	beq	.L_5daf4
	ldrh	r0, [r4, #10]
	sub	r0, #32
	b	.L_5daf8
	.align	2, 0
.L_5daec:
	.4byte	gCurrentSprite
.L_5daf0:
	.4byte	gSpriteData
.L_5daf4:
	ldrh	r0, [r4, #10]
	add	r0, #32
.L_5daf8:
	strh	r0, [r2, #10]
	add	r0, r2, #0
	add	r0, #42	@ 0x2a
	ldrb	r1, [r0, #0]
	mov	r0, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r3
	ldrh	r0, [r0, #8]
	strh	r0, [r2, #8]
	pop	{r4}
	pop	{r0}
	bx	r0


thumb_func_start func_805DB10
func_805DB10:
	push	{r4, r5, lr}
	ldr	r4, .L_5db7c
	ldrh	r1, [r4, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	mov	r5, #0
	orr	r0, r1
	ldr	r1, .L_5db80
	and	r0, r1
	strh	r0, [r4, #0]
	mov	r2, #16
	strb	r2, [r4, #30]
	add	r0, r4, #0
	add	r0, #32
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r2, [r0, #0]
	add	r0, #1
	mov	r1, #8
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_5db84
	str	r0, [r4, #4]
	strb	r3, [r4, #22]
	strh	r5, [r4, #20]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #7
	strb	r0, [r1, #0]
	add	r0, r4, #0
	add	r0, #42	@ 0x2a
	strb	r3, [r0, #0]
	strb	r2, [r4, #28]
	mov	r0, #1
	strb	r0, [r4, #26]
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023BFC
	ldr	r0, .L_5db88
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5db8c
	strh	r5, [r4, #0]
	b	.L_5db92
.L_5db7c:
	.4byte	gCurrentSprite
.L_5db80:
	.4byte	0xFFFB
.L_5db84:
	.4byte	sUnk_83DF0B0
.L_5db88:
	.4byte	gSpriteCollisionTileType
.L_5db8c:
	mov	r0, #116	@ 0x74
	bl	m4aSongNumStart
.L_5db92:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_805DB98
func_805DB98:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L_5dbf4
	add	r2, r0, #0
	add	r2, #39	@ 0x27
	ldrb	r1, [r2, #0]
	add	r5, r0, #0
	cmp	r1, #0
	beq	.L_5dbbc
	sub	r0, r1, #1
	strb	r0, [r2, #0]
	lsl	r0, r0, #24
	lsr	r1, r0, #24
	cmp	r1, #0
	bne	.L_5dbbc
	ldr	r0, .L_5dbf8
	str	r0, [r5, #4]
	strb	r1, [r5, #22]
	strh	r1, [r5, #20]
.L_5dbbc:
	add	r4, r5, #0
	ldrh	r0, [r4, #8]
	ldrh	r1, [r4, #10]
	bl	func_8023A60
	add	r3, r0, #0
	ldr	r0, .L_5dbfc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5dc04
	mov	r1, #0
	mov	r2, #0
	strh	r3, [r4, #8]
	ldr	r0, .L_5dc00
	str	r0, [r4, #4]
	strb	r1, [r4, #22]
	strh	r2, [r4, #20]
	add	r1, r4, #0
	add	r1, #39	@ 0x27
	mov	r0, #24
	strb	r0, [r1, #0]
	mov	r0, #50	@ 0x32
	strb	r0, [r4, #28]
	mov	r0, #17
	strb	r0, [r4, #30]
	mov	r0, #2
	strb	r0, [r4, #26]
	b	.L_5dc44
.L_5dbf4:
	.4byte	gCurrentSprite
.L_5dbf8:
	.4byte	sUnk_83DF0C0
.L_5dbfc:
	.4byte	gSpriteCollisionResult
.L_5dc00:
	.4byte	sUnk_83DF0D0
.L_5dc04:
	mov	r0, #42	@ 0x2a
	add	r0, r0, r4
	mov	ip, r0
	ldrb	r2, [r0, #0]
	ldr	r6, .L_5dc30
	lsl	r0, r2, #1
	add	r0, r0, r6
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	ldr	r0, .L_5dc34
	cmp	r1, r0
	bne	.L_5dc38
	sub	r1, r2, #1
	lsl	r1, r1, #1
	add	r1, r1, r6
	ldrh	r0, [r4, #8]
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #8]
	b	.L_5dc44
	.align	2, 0
.L_5dc30:
	.4byte	sUnk_83DFDAC
.L_5dc34:
	.4byte	0x7FFF
.L_5dc38:
	add	r0, r2, #1
	mov	r1, ip
	strb	r0, [r1, #0]
	ldrh	r0, [r5, #8]
	add	r0, r0, r3
	strh	r0, [r5, #8]
.L_5dc44:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_805DC4C
func_805DC4C:
	ldr	r1, .L_5dc6c
	ldr	r0, .L_5dc70
	str	r0, [r1, #4]
	mov	r0, #0
	strb	r0, [r1, #22]
	strh	r0, [r1, #20]
	add	r2, r1, #0
	add	r2, #39	@ 0x27
	mov	r0, #12
	strb	r0, [r2, #0]
	mov	r0, #50	@ 0x32
	strb	r0, [r1, #28]
	mov	r0, #1
	strb	r0, [r1, #26]
	bx	lr
	.align	2, 0
.L_5dc6c:
	.4byte	gCurrentSprite
.L_5dc70:
	.4byte	sUnk_83DF108


thumb_func_start func_805DC74
func_805DC74:
	ldr	r2, .L_5dc8c
	add	r1, r2, #0
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_5dc8a
	strh	r0, [r2, #0]
.L_5dc8a:
	bx	lr
.L_5dc8c:
	.4byte	gCurrentSprite


thumb_func_start SpriteUnknownDD
SpriteUnknownDD:
	push	{lr}
	ldr	r1, .L_5dca8
	mov	r0, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r1, #28]
	cmp	r0, #16
	beq	.L_5dcc2
	cmp	r0, #16
	bgt	.L_5dcac
	cmp	r0, #0
	beq	.L_5dcb6
	b	.L_5dccc
.L_5dca8:
	.4byte	gCurrentSprite
.L_5dcac:
	cmp	r0, #18
	beq	.L_5dcc8
	cmp	r0, #24
	beq	.L_5dcbc
	b	.L_5dccc
.L_5dcb6:
	bl	func_805D8CC
	b	.L_5dccc
.L_5dcbc:
	bl	func_805D93C
	b	.L_5dccc
.L_5dcc2:
	bl	func_805D954
	b	.L_5dccc
.L_5dcc8:
	bl	func_805D9D0
.L_5dccc:
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknownDE
SpriteUnknownDE:
	push	{lr}
	ldr	r0, .L_5dce8
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_5dcde
	bl	func_805DA4C
.L_5dcde:
	bl	func_805DAC0
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5dce8:
	.4byte	gCurrentSprite


thumb_func_start SpriteCractus
SpriteCractus:
	push	{lr}
	ldr	r0, .L_5dd00
	ldrb	r0, [r0, #28]
	cmp	r0, #33	@ 0x21
	bhi	.L_5ddaa
	lsl	r0, r0, #2
	ldr	r1, .L_5dd04
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_5dd00:
	.4byte	gCurrentSprite
.L_5dd04:
	.4byte	.L_5dd08
.L_5dd08:
	.4byte	.L_5dd90
	.4byte	.L_5dd96
	.4byte	.L_5dd9c
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5ddaa
	.4byte	.L_5dda2
	.4byte	.L_5dda6
	.4byte	.L_5dda2
.L_5dd90:
	bl	func_805B24C
	b	.L_5ddaa
.L_5dd96:
	bl	func_805B480
	b	.L_5ddaa
.L_5dd9c:
	bl	func_805B4DC
	b	.L_5ddaa
.L_5dda2:
	bl	func_805B508
.L_5dda6:
	bl	func_805B568
.L_5ddaa:
	bl	func_8026838
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownD8
SpriteUnknownD8:
	push	{lr}
	ldr	r0, .L_5ddf4
	ldrb	r1, [r0, #0]
	add	r3, r0, #0
	ldr	r2, .L_5ddf8
	cmp	r1, #0
	beq	.L_5dde0
	cmp	r1, #60	@ 0x3c
	beq	.L_5ddca
	cmp	r1, #1
	bne	.L_5ddda
.L_5ddca:
	ldr	r0, .L_5ddf8
	add	r1, r0, #0
	add	r1, #39	@ 0x27
	mov	r2, #0
	strb	r2, [r1, #0]
	add	r1, #1
	strb	r2, [r1, #0]
	add	r2, r0, #0
.L_5ddda:
	ldrb	r0, [r3, #0]
	sub	r0, #1
	strb	r0, [r3, #0]
.L_5dde0:
	ldrb	r0, [r2, #28]
	cmp	r0, #123	@ 0x7b
	bls	.L_5dde8
	b	.L_5e074
.L_5dde8:
	lsl	r0, r0, #2
	ldr	r1, .L_5ddfc
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_5ddf4:
	.4byte	gCuckooCondorPendulumLength
.L_5ddf8:
	.4byte	gCurrentSprite
.L_5ddfc:
	.4byte	.L_5de00
.L_5de00:
	.4byte	.L_5dff0
	.4byte	.L_5dff6
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e018
	.4byte	.L_5e01e
	.4byte	.L_5e02a
	.4byte	.L_5e024
	.4byte	.L_5e030
	.4byte	.L_5e036
	.4byte	.L_5e03c
	.4byte	.L_5e042
	.4byte	.L_5e074
	.4byte	.L_5dffc
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e048
	.4byte	.L_5e04e
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e054
	.4byte	.L_5e002
	.4byte	.L_5e006
	.4byte	.L_5e012
	.4byte	.L_5e00c
	.4byte	.L_5e05a
	.4byte	.L_5e074
	.4byte	.L_5e060
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e074
	.4byte	.L_5e066
	.4byte	.L_5e06c
	.4byte	.L_5e070
.L_5dff0:
	bl	func_805B5BC
	b	.L_5e074
.L_5dff6:
	bl	func_805B644
	b	.L_5e074
.L_5dffc:
	bl	func_805B6AC
	b	.L_5e074
.L_5e002:
	bl	func_805B710
.L_5e006:
	bl	func_805B738
	b	.L_5e074
.L_5e00c:
	bl	func_805B784
	b	.L_5e074
.L_5e012:
	bl	func_805B890
	b	.L_5e074
.L_5e018:
	bl	func_805BAF8
	b	.L_5e074
.L_5e01e:
	bl	func_805BC30
	b	.L_5e074
.L_5e024:
	bl	func_805BCE0
	b	.L_5e074
.L_5e02a:
	bl	func_805BDDC
	b	.L_5e074
.L_5e030:
	bl	func_805BE50
	b	.L_5e074
.L_5e036:
	bl	func_805C3C8
	b	.L_5e074
.L_5e03c:
	bl	func_805C50C
	b	.L_5e074
.L_5e042:
	bl	func_805C6A8
	b	.L_5e074
.L_5e048:
	bl	func_805C758
	b	.L_5e074
.L_5e04e:
	bl	func_805C934
	b	.L_5e074
.L_5e054:
	bl	func_805CB20
	b	.L_5e074
.L_5e05a:
	bl	func_805C0E4
	b	.L_5e074
.L_5e060:
	bl	func_805C264
	b	.L_5e074
.L_5e066:
	bl	func_805CCDC
	b	.L_5e074
.L_5e06c:
	bl	func_805CD4C
.L_5e070:
	bl	func_805CDF8
.L_5e074:
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknownD9
SpriteUnknownD9:
	push	{lr}
	ldr	r0, .L_5e08c
	mov	r1, #1
	strb	r1, [r0, #31]
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_5e090
	bl	func_805CEC8
	b	.L_5e094
.L_5e08c:
	.4byte	gCurrentSprite
.L_5e090:
	bl	func_805CF80
.L_5e094:
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknownDA
SpriteUnknownDA:
	push	{lr}
	ldr	r0, .L_5e0ac
	mov	r1, #1
	strb	r1, [r0, #31]
	ldrb	r0, [r0, #28]
	cmp	r0, #0
	bne	.L_5e0b0
	bl	func_805D810
	b	.L_5e0b4
.L_5e0ac:
	.4byte	gCurrentSprite
.L_5e0b0:
	bl	func_805D878
.L_5e0b4:
	pop	{r0}
	bx	r0


thumb_func_start func_805E0B8
func_805E0B8:
	push	{r4, lr}
	sub	sp, #4
	ldr	r0, .L_5e0dc
	ldrb	r2, [r0, #0]
	add	r3, r0, #0
	cmp	r2, #1
	bls	.L_5e14a
	ldr	r0, .L_5e0e0
	ldrb	r1, [r0, #24]
	add	r4, r0, #0
	cmp	r1, #2
	beq	.L_5e0fe
	cmp	r1, #2
	bgt	.L_5e0e4
	cmp	r1, #1
	beq	.L_5e0ee
	b	.L_5e12e
	.align	2, 0
.L_5e0dc:
	.4byte	gBossHurtState
.L_5e0e0:
	.4byte	gCurrentSprite
.L_5e0e4:
	cmp	r1, #3
	beq	.L_5e10e
	cmp	r1, #4
	beq	.L_5e11e
	b	.L_5e12e
.L_5e0ee:
	cmp	r2, #15
	bls	.L_5e19a
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #1
	b	.L_5e13e
.L_5e0fe:
	cmp	r2, #23
	bls	.L_5e19a
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #2
	b	.L_5e13e
.L_5e10e:
	cmp	r2, #31
	bls	.L_5e19a
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #11
	mov	r1, #3
	b	.L_5e13e
.L_5e11e:
	cmp	r2, #39	@ 0x27
	bls	.L_5e19a
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #10
	mov	r1, #4
	b	.L_5e13e
.L_5e12e:
	ldrb	r0, [r3, #0]
	cmp	r0, #7
	bls	.L_5e19a
	ldrb	r1, [r4, #24]
	ldrh	r3, [r4, #8]
	ldrh	r0, [r4, #10]
	str	r0, [sp, #0]
	mov	r0, #10
.L_5e13e:
	mov	r2, #0
	bl	func_801E430
	mov	r0, #0
	strh	r0, [r4, #0]
	b	.L_5e19a
.L_5e14a:
	ldr	r3, .L_5e15c
	ldrb	r0, [r3, #24]
	cmp	r0, #2
	beq	.L_5e170
	cmp	r0, #2
	bgt	.L_5e160
	cmp	r0, #1
	beq	.L_5e16a
	b	.L_5e19a
.L_5e15c:
	.4byte	gCurrentSprite
.L_5e160:
	cmp	r0, #3
	beq	.L_5e176
	cmp	r0, #4
	beq	.L_5e17c
	b	.L_5e19a
.L_5e16a:
	bl	func_805B0C8
	b	.L_5e19a
.L_5e170:
	bl	func_805B054
	b	.L_5e19a
.L_5e176:
	bl	func_805AFF0
	b	.L_5e19a
.L_5e17c:
	ldr	r2, .L_5e1a4
	add	r4, r3, #0
	add	r4, #42	@ 0x2a
	ldrb	r0, [r4, #0]
	mov	r1, #44	@ 0x2c
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #8]
	strh	r0, [r3, #8]
	ldrb	r0, [r4, #0]
	mul	r0, r1
	add	r0, r0, r2
	ldrh	r0, [r0, #10]
	add	r0, #32
	strh	r0, [r3, #10]
.L_5e19a:
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5e1a4:
	.4byte	gSpriteData


thumb_func_start SpriteUnknownDB
SpriteUnknownDB:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .L_5e1d8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5e1bc
	ldr	r1, .L_5e1dc
	mov	r0, #1
	strb	r0, [r1, #31]
.L_5e1bc:
	ldr	r1, .L_5e1dc
	ldrb	r0, [r1, #28]
	cmp	r0, #24
	beq	.L_5e222
	cmp	r0, #24
	bgt	.L_5e1e6
	cmp	r0, #15
	beq	.L_5e22e
	cmp	r0, #15
	bgt	.L_5e1e0
	cmp	r0, #0
	beq	.L_5e1fe
	b	.L_5e270
	.align	2, 0
.L_5e1d8:
	.4byte	gBossHurtState
.L_5e1dc:
	.4byte	gCurrentSprite
.L_5e1e0:
	cmp	r0, #23
	beq	.L_5e210
	b	.L_5e270
.L_5e1e6:
	cmp	r0, #111	@ 0x6f
	beq	.L_5e246
	cmp	r0, #111	@ 0x6f
	bgt	.L_5e1f4
	cmp	r0, #110	@ 0x6e
	beq	.L_5e23a
	b	.L_5e270
.L_5e1f4:
	cmp	r0, #112	@ 0x70
	beq	.L_5e252
	cmp	r0, #113	@ 0x71
	beq	.L_5e262
	b	.L_5e270
.L_5e1fe:
	ldrb	r0, [r1, #23]
	cmp	r0, #219	@ 0xdb
	bne	.L_5e20a
	bl	func_805D0A4
	b	.L_5e270
.L_5e20a:
	bl	func_805D144
	b	.L_5e270
.L_5e210:
	ldrb	r0, [r1, #23]
	cmp	r0, #219	@ 0xdb
	bne	.L_5e21c
	bl	func_805D1E8
	b	.L_5e25c
.L_5e21c:
	bl	func_805D244
	b	.L_5e25c
.L_5e222:
	ldrb	r0, [r1, #24]
	cmp	r0, #0
	bne	.L_5e25c
	bl	func_805D2A0
	b	.L_5e25c
.L_5e22e:
	ldrb	r0, [r1, #24]
	cmp	r0, #0
	bne	.L_5e25c
	bl	func_805D38C
	b	.L_5e25c
.L_5e23a:
	ldrb	r0, [r1, #24]
	cmp	r0, #0
	bne	.L_5e25c
	bl	func_805D5BC
	b	.L_5e25c
.L_5e246:
	ldrb	r0, [r1, #24]
	cmp	r0, #0
	bne	.L_5e25c
	bl	func_805D640
	b	.L_5e25c
.L_5e252:
	ldrb	r0, [r1, #24]
	cmp	r0, #0
	bne	.L_5e25c
	bl	func_805D6E4
.L_5e25c:
	bl	func_805E0B8
	b	.L_5e270
.L_5e262:
	ldrb	r0, [r1, #24]
	cmp	r0, #0
	bne	.L_5e26c
	bl	func_805D768
.L_5e26c:
	bl	func_805E0B8
.L_5e270:
	ldr	r7, .L_5e2fc
	ldrb	r0, [r7, #24]
	cmp	r0, #0
	bne	.L_5e304
	ldr	r6, .L_5e300
	mov	r0, #39	@ 0x27
	add	r0, r0, r7
	mov	r8, r0
	ldrb	r0, [r0, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
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
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #14]
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	neg	r4, r4
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #16]
	mov	r1, r8
	ldrb	r0, [r1, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #18]
	b	.L_5e308
	.align	2, 0
.L_5e2fc:
	.4byte	gCurrentSprite
.L_5e300:
	.4byte	sSinCosTable
.L_5e304:
	mov	r0, #1
	strb	r0, [r7, #31]
.L_5e308:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start SpriteUnknownDF
SpriteUnknownDF:
	push	{lr}
	ldr	r0, .L_5e334
	ldrb	r0, [r0, #0]
	ldr	r1, .L_5e338
	cmp	r0, #5
	bne	.L_5e324
	mov	r0, #1
	strb	r0, [r1, #31]
.L_5e324:
	ldrb	r0, [r1, #28]
	cmp	r0, #16
	beq	.L_5e348
	cmp	r0, #16
	bgt	.L_5e33c
	cmp	r0, #0
	beq	.L_5e342
	b	.L_5e354
.L_5e334:
	.4byte	gWarioData
.L_5e338:
	.4byte	gCurrentSprite
.L_5e33c:
	cmp	r0, #50	@ 0x32
	beq	.L_5e34e
	b	.L_5e354
.L_5e342:
	bl	func_805DB10
	b	.L_5e358
.L_5e348:
	bl	func_805DB98
	b	.L_5e358
.L_5e34e:
	bl	func_805DC74
	b	.L_5e358
.L_5e354:
	bl	func_805DC4C
.L_5e358:
	pop	{r0}
	bx	r0


thumb_func_start SpriteUnknownF9
SpriteUnknownF9:
	push	{r4, lr}
	ldr	r0, .L_5e3d8
	mov	ip, r0
	mov	r0, #1
	mov	r1, ip
	strb	r0, [r1, #31]
	ldrb	r4, [r1, #28]
	cmp	r4, #0
	bne	.L_5e3bc
	ldrh	r1, [r1, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #3
	add	r0, r2, #0
	mov	r3, #0
	orr	r0, r1
	ldr	r1, .L_5e3dc
	and	r0, r1
	mov	r1, ip
	strh	r0, [r1, #0]
	strb	r3, [r1, #30]
	mov	r0, ip
	add	r0, #32
	mov	r1, #32
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r2, #16
	strb	r2, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	mov	r1, #4
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldr	r0, .L_5e3e0
	mov	r1, ip
	str	r0, [r1, #4]
	strb	r3, [r1, #22]
	strh	r4, [r1, #20]
	add	r1, #39	@ 0x27
	mov	r0, #56	@ 0x38
	strb	r0, [r1, #0]
	mov	r0, ip
	strb	r2, [r0, #28]
.L_5e3bc:
	mov	r1, ip
	add	r1, #39	@ 0x27
	ldrb	r0, [r1, #0]
	sub	r0, #1
	strb	r0, [r1, #0]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #0
	bne	.L_5e3d2
	mov	r1, ip
	strh	r0, [r1, #0]
.L_5e3d2:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_5e3d8:
	.4byte	gCurrentSprite
.L_5e3dc:
	.4byte	0xFFFB
.L_5e3e0:
	.4byte	sUnk_83DFCD0
