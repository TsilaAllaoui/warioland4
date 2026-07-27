.include "macros.s.inc"

thumb_func_start func_807E7B0
func_807E7B0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #36	@ 0x24
	mov	r0, #0
	mov	r8, r0
	ldr	r0, .L_7e7f8
	ldrb	r0, [r0, #0]
	mov	sl, r0
	lsl	r1, r0, #3
	ldr	r0, .L_7e7fc
	add	r6, r1, r0
	ldr	r0, .L_7e800
	ldr	r2, [r0, #0]
	add	r4, r0, #0
	cmp	r2, #0
	bne	.L_7e7d8
	b	.L_7e982
.L_7e7d8:
	ldr	r0, .L_7e804
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_7e878
	ldr	r0, .L_7e808
	ldr	r1, [r0, #0]
	add	r3, r0, #0
	cmp	r1, #0
	bne	.L_7e81e
	cmp	r2, #1
	bne	.L_7e810
	ldr	r1, .L_7e80c
	ldrh	r0, [r1, #4]
	add	r0, #3
	b	.L_7e816
	.align	2, 0
.L_7e7f8:
	.4byte	gOamSlotsUsed
.L_7e7fc:
	.4byte	gOamBuffer
.L_7e800:
	.4byte	gStageEntryImpactEffectActive
.L_7e804:
	.4byte	gStageEntryMainSpriteFalling
.L_7e808:
	.4byte	gStageEntryImpactEffectState
.L_7e80c:
	.4byte	gStageEntryMainSpriteState
.L_7e810:
	ldr	r1, .L_7e860
	ldrh	r0, [r1, #4]
	add	r0, #6
.L_7e816:
	strh	r0, [r3, #4]
	add	r2, r1, #0
	ldrh	r0, [r2, #6]
	strh	r0, [r3, #6]
.L_7e81e:
	ldrh	r1, [r3, #0]
	add	r1, #1
	strh	r1, [r3, #0]
	ldr	r2, .L_7e864
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_7e8fe
	mov	r0, #1
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r1, [r0, #4]
	cmp	r1, #0
	bne	.L_7e8fe
	ldr	r0, [r4, #0]
	cmp	r0, #1
	bne	.L_7e868
	str	r1, [r4, #0]
	strh	r1, [r3, #2]
	ldr	r0, .L_7e860
	ldrh	r0, [r0, #4]
	add	r0, #3
	b	.L_7e8e4
	.align	2, 0
.L_7e860:
	.4byte	gStageEntryMainSpriteState
.L_7e864:
	.4byte	sUnk_863EFE0
.L_7e868:
	strh	r1, [r3, #2]
	ldr	r0, .L_7e874
	ldrh	r0, [r0, #4]
	add	r0, #6
	b	.L_7e8fc
	.align	2, 0
.L_7e874:
	.4byte	gStageEntryMainSpriteState
.L_7e878:
	ldr	r0, .L_7e890
	ldr	r1, [r0, #0]
	add	r3, r0, #0
	cmp	r1, #0
	bne	.L_7e8a6
	cmp	r2, #1
	bne	.L_7e898
	ldr	r1, .L_7e894
	ldrh	r0, [r1, #4]
	sub	r0, #3
	b	.L_7e89e
	.align	2, 0
.L_7e890:
	.4byte	gStageEntryImpactEffectState
.L_7e894:
	.4byte	gStageEntryMainSpriteState
.L_7e898:
	ldr	r1, .L_7e8ec
	ldrh	r0, [r1, #4]
	sub	r0, #6
.L_7e89e:
	strh	r0, [r3, #4]
	add	r2, r1, #0
	ldrh	r0, [r2, #6]
	strh	r0, [r3, #6]
.L_7e8a6:
	ldrh	r1, [r3, #0]
	add	r1, #1
	strh	r1, [r3, #0]
	ldr	r2, .L_7e8f0
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_7e8fe
	mov	r0, #0
	strh	r0, [r3, #0]
	ldrh	r0, [r3, #2]
	add	r0, #1
	strh	r0, [r3, #2]
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldrb	r1, [r0, #4]
	cmp	r1, #0
	bne	.L_7e8fe
	ldr	r0, [r4, #0]
	cmp	r0, #1
	bne	.L_7e8f4
	str	r1, [r4, #0]
	strh	r1, [r3, #2]
	ldr	r0, .L_7e8ec
	ldrh	r0, [r0, #4]
	sub	r0, #3
.L_7e8e4:
	strh	r0, [r3, #4]
	mov	r0, #200	@ 0xc8
	strh	r0, [r3, #6]
	b	.L_7e8fe
.L_7e8ec:
	.4byte	gStageEntryMainSpriteState
.L_7e8f0:
	.4byte	sUnk_863EFB0
.L_7e8f4:
	strh	r1, [r3, #2]
	ldr	r0, .L_7ea14
	ldrh	r0, [r0, #4]
	sub	r0, #6
.L_7e8fc:
	strh	r0, [r3, #4]
.L_7e8fe:
	ldrh	r0, [r3, #2]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r1, sl
	cmp	r1, #128	@ 0x80
	ble	.L_7e916
	bl	.L_7f66e
.L_7e916:
	cmp	r8, sl
	bge	.L_7e982
	ldr	r1, .L_7ea18
	ldr	r7, .L_7ea1c
	mov	r2, #13
	neg	r2, r2
	mov	ip, r2
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
	ldr	r0, .L_7ea20
	mov	r9, r0
	mov	r1, sl
	sub	r1, r1, r2
	mov	r8, r1
.L_7e934:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7ea24
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bne	.L_7e934
	mov	r8, sl
.L_7e982:
	ldr	r0, .L_7ea28
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_7e98c
	b	.L_7ead2
.L_7e98c:
	ldr	r2, .L_7ea14
	ldrh	r0, [r2, #2]
	ldr	r1, .L_7ea2c
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r0, sl
	cmp	r0, #128	@ 0x80
	ble	.L_7e9aa
	bl	.L_7f66e
.L_7e9aa:
	cmp	r8, sl
	blt	.L_7e9b0
	b	.L_7ead2
.L_7e9b0:
	ldr	r1, .L_7ea18
	add	r7, r2, #0
	ldr	r2, .L_7ea20
	mov	r9, r2
	ldr	r0, .L_7ea24
	mov	ip, r0
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
	mov	r0, sl
	sub	r0, r0, r2
	mov	r8, r0
.L_7e9c8:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldr	r1, .L_7ea30
	ldr	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_7e9ee
	ldrb	r0, [r5, #1]
	mov	r1, #4
	neg	r1, r1
	and	r1, r0
	mov	r0, #1
	orr	r1, r0
	strb	r1, [r5, #1]
.L_7e9ee:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldr	r2, .L_7ea34
	ldr	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_7ea38
	ldrh	r0, [r7, #4]
	add	r0, r4, r0
	mov	r1, r9
	and	r0, r1
	ldrh	r2, [r5, #2]
	mov	r1, ip
	and	r1, r2
	orr	r1, r0
	strh	r1, [r5, #2]
	b	.L_7eaa0
	.align	2, 0
.L_7ea14:
	.4byte	gStageEntryMainSpriteState
.L_7ea18:
	.4byte	gOamBuffer
.L_7ea1c:
	.4byte	gStageEntryImpactEffectState
.L_7ea20:
	.4byte	0x1FF
.L_7ea24:
	.4byte	0xFFFFFE00
.L_7ea28:
	.4byte	gStageEntryBlinkVisible
.L_7ea2c:
	.4byte	gStageEntryMainAnimation
.L_7ea30:
	.4byte	gStageEntryUseAffineMainSprite
.L_7ea34:
	.4byte	gStageEntryShowCollectionSparkle
.L_7ea38:
	ldr	r2, .L_7ea78
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_7ea84
	ldr	r1, .L_7ea7c
	ldr	r0, [r1, #0]
	cmp	r0, #1
	beq	.L_7ea84
	ldrh	r2, [r7, #4]
	sub	r2, r2, r4
	ldrb	r1, [r5, #3]
	lsr	r1, r1, #6
	lsl	r1, r1, #2
	ldrb	r0, [r5, #1]
	lsr	r0, r0, #6
	lsl	r0, r0, #4
	add	r1, r1, r0
	ldr	r0, .L_7ea80
	add	r1, r1, r0
	ldr	r0, [r1, #0]
	sub	r2, r2, r0
	mov	r1, r9
	and	r2, r1
	ldrh	r1, [r5, #2]
	mov	r0, ip
	and	r0, r1
	orr	r0, r2
	strh	r0, [r5, #2]
	ldrb	r0, [r5, #3]
	mov	r1, #16
	orr	r0, r1
	b	.L_7ea9e
.L_7ea78:
	.4byte	gStageEntryMainSpriteFalling
.L_7ea7c:
	.4byte	gStageEntryUseAffineMainSprite
.L_7ea80:
	.4byte	sUnk_863A2EC
.L_7ea84:
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r5, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrb	r1, [r5, #3]
	mov	r0, #17
	neg	r0, r0
	and	r0, r1
.L_7ea9e:
	strb	r0, [r5, #3]
.L_7eaa0:
	ldrb	r1, [r5, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	strb	r0, [r5, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	beq	.L_7ead0
	b	.L_7e9c8
.L_7ead0:
	mov	r8, sl
.L_7ead2:
	ldr	r0, .L_7ee7c
	ldr	r1, [r0, #0]
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L_7eb9a
	ldr	r2, .L_7ee80
	ldrh	r1, [r2, #2]
	add	r1, #1
	strh	r1, [r2, #2]
	ldr	r3, .L_7ee84
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_7eb12
	mov	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_7eb12
	strh	r0, [r2, #2]
	strh	r0, [r2, #0]
	str	r0, [r4, #0]
.L_7eb12:
	ldr	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_7eb9a
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r2, sl
	cmp	r2, #128	@ 0x80
	ble	.L_7eb30
	bl	.L_7f66e
.L_7eb30:
	cmp	r8, sl
	bge	.L_7eb9a
	ldr	r1, .L_7ee88
	ldr	r0, .L_7ee8c
	mov	r9, r0
	ldr	r2, .L_7ee90
	mov	ip, r2
	mov	r7, #13
	neg	r7, r7
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
	mov	r0, sl
	sub	r0, r0, r2
	mov	r8, r0
.L_7eb4e:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	add	r0, r4, #0
	add	r0, #120	@ 0x78
	strb	r0, [r5, #0]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	add	r1, r4, #0
	add	r1, #209	@ 0xd1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r5, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	add	r0, r7, #0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bne	.L_7eb4e
	mov	r8, sl
.L_7eb9a:
	ldr	r2, .L_7ee94
	str	r2, [sp, #8]
	add	r7, r2, #0
	mov	r0, #0
	str	r0, [sp, #32]
.L_7eba4:
	ldr	r1, [sp, #32]
	ldr	r0, .L_7ee98
	add	r2, r1, r0
	ldr	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_7ec76
	ldrh	r0, [r7, #2]
	add	r0, #1
	strh	r0, [r7, #2]
	ldr	r3, .L_7ee9c
	ldrh	r1, [r7, #0]
	lsl	r1, r1, #3
	add	r1, r1, r3
	ldrb	r1, [r1, #4]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, r0
	bcs	.L_7ebe4
	mov	r0, #1
	strh	r0, [r7, #2]
	ldrh	r0, [r7, #0]
	add	r0, #1
	strh	r0, [r7, #0]
	ldrh	r0, [r7, #0]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_7ebe4
	strh	r0, [r7, #2]
	strh	r0, [r7, #0]
	str	r0, [r2, #0]
.L_7ebe4:
	ldrh	r0, [r7, #0]
	lsl	r0, r0, #3
	ldr	r1, .L_7ee9c
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r2, sl
	cmp	r2, #128	@ 0x80
	ble	.L_7ebfe
	bl	.L_7f66e
.L_7ebfe:
	cmp	r8, sl
	bge	.L_7ec76
	ldr	r0, .L_7eea0
	ldr	r1, [sp, #32]
	add	r0, r1, r0
	ldr	r0, [r0, #0]
	mov	ip, r0
	mov	r2, r8
	lsl	r0, r2, #3
	ldr	r1, .L_7ee88
	add	r5, r0, r1
	ldr	r0, .L_7eea4
	ldr	r2, [sp, #32]
	add	r0, r2, r0
	ldr	r0, [r0, #0]
	mov	r9, r0
	mov	r0, sl
	mov	r1, r8
	sub	r0, r0, r1
	mov	r8, r0
.L_7ec26:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	mov	r2, ip
	add	r0, r2, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	mov	r0, r9
	add	r1, r4, r0
	ldr	r0, .L_7ee8c
	and	r1, r0
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7ee90
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L_7ec26
	mov	r8, sl
.L_7ec76:
	add	r7, #4
	ldr	r0, [sp, #32]
	add	r0, #4
	str	r0, [sp, #32]
	ldr	r0, [sp, #8]
	add	r0, #20
	cmp	r7, r0
	ble	.L_7eba4
	ldr	r0, .L_7eea8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_7ec90
	b	.L_7ee0a
.L_7ec90:
	ldr	r0, .L_7eeac
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	beq	.L_7ec9a
	b	.L_7efc4
.L_7ec9a:
	ldr	r2, .L_7eeb0
	ldrh	r0, [r2, #2]
	ldr	r1, .L_7eeb4
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r9, r2
	mov	r1, sl
	cmp	r1, #128	@ 0x80
	ble	.L_7ecba
	bl	.L_7f66e
.L_7ecba:
	mov	r2, sp
	add	r2, #2
	str	r2, [sp, #20]
	mov	r0, sp
	add	r0, #4
	str	r0, [sp, #24]
	mov	r1, sp
	add	r1, #6
	str	r1, [sp, #28]
	cmp	r8, sl
	bge	.L_7ed44
	mov	r7, r9
	ldr	r1, .L_7ee88
	mov	r2, #13
	neg	r2, r2
	mov	ip, r2
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
.L_7ece0:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrb	r1, [r5, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	ldr	r0, .L_7ee8c
	and	r1, r0
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7ee90
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrb	r1, [r5, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	mov	r1, #10
	orr	r0, r1
	strb	r0, [r5, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	add	r8, r0
	cmp	r8, sl
	blt	.L_7ece0
.L_7ed44:
	mov	r1, r9
	ldrb	r0, [r1, #8]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r2, .L_7eeb8
	add	r0, r0, r2
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	mov	r2, r9
	ldrb	r0, [r2, #8]
	lsl	r0, r0, #1
	ldr	r1, .L_7eeb8
	add	r0, r0, r1
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #20]
	strh	r0, [r1, #0]
	mov	r2, r9
	ldrb	r0, [r2, #8]
	lsl	r0, r0, #1
	ldr	r1, .L_7eeb8
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #24]
	strh	r0, [r2, #0]
	mov	r1, r9
	ldrb	r0, [r1, #8]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r2, .L_7eeb8
	add	r0, r0, r2
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #28]
	strh	r0, [r2, #0]
	ldr	r2, .L_7ee88
	mov	r0, sp
	ldrh	r0, [r0, #0]
	add	r1, r2, #0
	add	r1, #166	@ 0xa6
	strh	r0, [r1, #0]
	ldr	r1, [sp, #20]
	ldrh	r0, [r1, #0]
	add	r1, r2, #0
	add	r1, #174	@ 0xae
	strh	r0, [r1, #0]
	ldr	r1, [sp, #24]
	ldrh	r0, [r1, #0]
	add	r1, r2, #0
	add	r1, #182	@ 0xb6
	strh	r0, [r1, #0]
	ldr	r0, [sp, #28]
	ldrh	r1, [r0, #0]
	add	r0, r2, #0
	add	r0, #190	@ 0xbe
	strh	r1, [r0, #0]
.L_7ee0a:
	ldr	r0, .L_7eeac
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	beq	.L_7ee14
	b	.L_7efc4
.L_7ee14:
	ldr	r1, .L_7eebc
	ldr	r3, [r1, #4]
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r1, sl
	cmp	r1, #128	@ 0x80
	ble	.L_7ee28
	bl	.L_7f66e
.L_7ee28:
	mov	r2, sp
	add	r2, #2
	str	r2, [sp, #20]
	mov	r0, sp
	add	r0, #4
	str	r0, [sp, #24]
	mov	r1, sp
	add	r1, #6
	str	r1, [sp, #28]
	cmp	r8, sl
	bge	.L_7eefe
	ldr	r2, .L_7eebc
	mov	r9, r2
	mov	r7, #8
	ldr	r1, .L_7ee88
	mov	r0, #13
	neg	r0, r0
	mov	ip, r0
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
.L_7ee52:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	mov	r1, r9
	ldrb	r0, [r1, #2]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrb	r1, [r5, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	b	.L_7eec0
	.align	2, 0
.L_7ee7c:
	.4byte	gStageEntryKeyzerFlightFinished
.L_7ee80:
	.4byte	gStageEntrySparkleGroupState
.L_7ee84:
	.4byte	sUnk_863E1C4
.L_7ee88:
	.4byte	gOamBuffer
.L_7ee8c:
	.4byte	0x1FF
.L_7ee90:
	.4byte	0xFFFFFE00
.L_7ee94:
	.4byte	gStageEntrySparkleAnimStates
.L_7ee98:
	.4byte	gStageEntrySparkleFlags
.L_7ee9c:
	.4byte	sUnk_863E12C
.L_7eea0:
	.4byte	sUnk_8639ADC
.L_7eea4:
	.4byte	sUnk_8639AC4
.L_7eea8:
	.4byte	gStageEntrySequenceStep
.L_7eeac:
	.4byte	gStageEntrySequenceMode
.L_7eeb0:
	.4byte	gStageEntryFlyingKeyzerState
.L_7eeb4:
	.4byte	gStageEntryFlyingKeyzerAnimation
.L_7eeb8:
	.4byte	sSinCosTable
.L_7eebc:
	.4byte	gStageEntryCompanionSpriteState
.L_7eec0:
	add	r6, #2
	mov	r2, r9
	ldrh	r1, [r2, #0]
	add	r1, r4, r1
	ldr	r0, .L_7f268
	and	r1, r0
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7f26c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrb	r1, [r5, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	orr	r0, r7
	strb	r0, [r5, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	orr	r0, r7
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	add	r8, r0
	cmp	r8, sl
	blt	.L_7ee52
.L_7eefe:
	ldr	r1, .L_7f270
	ldrb	r0, [r1, #8]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r2, .L_7f274
	add	r0, r0, r2
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldr	r2, .L_7f270
	ldrb	r0, [r2, #8]
	lsl	r0, r0, #1
	ldr	r1, .L_7f274
	add	r0, r0, r1
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #20]
	strh	r0, [r1, #0]
	ldr	r2, .L_7f270
	ldrb	r0, [r2, #8]
	lsl	r0, r0, #1
	ldr	r1, .L_7f274
	add	r0, r0, r1
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #24]
	strh	r0, [r2, #0]
	ldr	r1, .L_7f270
	ldrb	r0, [r1, #8]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	ldr	r2, .L_7f274
	add	r0, r0, r2
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #28]
	strh	r0, [r2, #0]
	ldr	r2, .L_7f278
	mov	r0, sp
	ldrh	r0, [r0, #0]
	add	r1, r2, #0
	add	r1, #134	@ 0x86
	strh	r0, [r1, #0]
	ldr	r1, [sp, #20]
	ldrh	r0, [r1, #0]
	add	r1, r2, #0
	add	r1, #142	@ 0x8e
	strh	r0, [r1, #0]
	ldr	r1, [sp, #24]
	ldrh	r0, [r1, #0]
	add	r1, r2, #0
	add	r1, #150	@ 0x96
	strh	r0, [r1, #0]
	ldr	r0, [sp, #28]
	ldrh	r1, [r0, #0]
	add	r0, r2, #0
	add	r0, #158	@ 0x9e
	strh	r1, [r0, #0]
.L_7efc4:
	ldr	r0, .L_7f27c
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	bne	.L_7efd8
	ldr	r0, .L_7f280
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_7eff0
	cmp	r0, #5
	beq	.L_7eff0
.L_7efd8:
	sub	r0, r1, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #3
	bhi	.L_7f078
	ldr	r0, .L_7f280
	ldrb	r0, [r0, #0]
	sub	r0, #1
.L_7efe8:
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #3
	bhi	.L_7f078
.L_7eff0:
	ldr	r2, .L_7f284
	ldrh	r0, [r2, #2]
	ldr	r1, .L_7f288
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r1, sl
	cmp	r1, #128	@ 0x80
	ble	.L_7f00c
	b	.L_7f66e
.L_7f00c:
	cmp	r8, sl
	bge	.L_7f078
	ldr	r1, .L_7f278
	add	r7, r2, #0
	mov	r2, #13
	neg	r2, r2
	mov	ip, r2
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
	ldr	r0, .L_7f268
	mov	r9, r0
	mov	r1, sl
	sub	r1, r1, r2
	mov	r8, r1
.L_7f02a:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7f26c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bne	.L_7f02a
	mov	r8, sl
.L_7f078:
	ldr	r1, .L_7f28c
	ldrh	r0, [r1, #8]
	cmp	r0, #64	@ 0x40
	bhi	.L_7f082
	b	.L_7f226
.L_7f082:
	ldr	r3, .L_7f290
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r2, sl
	cmp	r2, #128	@ 0x80
	ble	.L_7f092
	b	.L_7f66e
.L_7f092:
	cmp	r8, sl
	bge	.L_7f10e
	add	r7, r1, #0
	ldr	r1, .L_7f278
	mov	r0, #15
	neg	r0, r0
	mov	ip, r0
	mov	r2, #13
	neg	r2, r2
	mov	r9, r2
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
.L_7f0ac:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrb	r1, [r5, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	ldr	r0, .L_7f268
	and	r1, r0
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7f26c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrb	r1, [r5, #3]
	mov	r0, ip
	and	r0, r1
	mov	r1, #2
	orr	r0, r1
	strb	r0, [r5, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
.L_7f0f8:
	mov	r0, r9
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	add	r8, r0
	cmp	r8, sl
	blt	.L_7f0ac
.L_7f10e:
	ldr	r3, .L_7f294
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r1, sl
	cmp	r1, #128	@ 0x80
	ble	.L_7f11e
	b	.L_7f66e
.L_7f11e:
	cmp	r8, sl
	bge	.L_7f19a
	ldr	r7, .L_7f28c
	ldr	r1, .L_7f278
	mov	r2, #15
	neg	r2, r2
	mov	ip, r2
	mov	r0, #13
	neg	r0, r0
	mov	r9, r0
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
.L_7f138:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrb	r1, [r5, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	ldr	r0, .L_7f268
	and	r1, r0
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7f26c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrb	r1, [r5, #3]
	mov	r0, ip
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r5, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, r9
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	add	r8, r0
	cmp	r8, sl
	blt	.L_7f138
.L_7f19a:
	ldr	r3, .L_7f298
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r1, sl
	cmp	r1, #128	@ 0x80
	ble	.L_7f1aa
	b	.L_7f66e
.L_7f1aa:
	cmp	r8, sl
	bge	.L_7f226
	ldr	r7, .L_7f28c
	ldr	r1, .L_7f278
	mov	r2, #15
	neg	r2, r2
	mov	ip, r2
	mov	r0, #13
	neg	r0, r0
	mov	r9, r0
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
.L_7f1c4:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrb	r1, [r5, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r5, #1]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	ldr	r0, .L_7f268
	and	r1, r0
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7f26c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrb	r1, [r5, #3]
	mov	r0, ip
	and	r0, r1
	mov	r1, #6
	orr	r0, r1
	strb	r0, [r5, #3]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
.L_7f210:
	mov	r0, r9
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	add	r8, r0
	cmp	r8, sl
	blt	.L_7f1c4
.L_7f226:
	ldr	r0, .L_7f29c
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_7f2fa
	ldr	r2, .L_7f2a0
	ldrh	r0, [r2, #2]
	ldr	r1, .L_7f2a4
	ldr	r1, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r1, sl
	cmp	r1, #128	@ 0x80
	ble	.L_7f24a
	b	.L_7f66e
.L_7f24a:
	cmp	r8, sl
	bge	.L_7f2fa
	ldr	r1, .L_7f278
	add	r7, r2, #0
	mov	r2, #13
	neg	r2, r2
	mov	ip, r2
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
	ldr	r0, .L_7f268
	mov	r9, r0
	mov	r1, sl
	b	.L_7f2a8
	.align	2, 0
.L_7f268:
	.4byte	0x1FF
.L_7f26c:
	.4byte	0xFFFFFE00
.L_7f270:
	.4byte	gStageEntryCompanionSpriteState
.L_7f274:
	.4byte	sSinCosTable
.L_7f278:
	.4byte	gOamBuffer
.L_7f27c:
	.4byte	gStageEntryStageGraphicIndex
.L_7f280:
	.4byte	gCurrentPassage
.L_7f284:
	.4byte	gStageEntrySecondarySpriteState
.L_7f288:
	.4byte	gStageEntrySecondaryAnimation
.L_7f28c:
	.4byte	gStageEntryKeyzerTargetState
.L_7f290:
	.4byte	sUnk_863ED00
.L_7f294:
	.4byte	sUnk_863ECF8
.L_7f298:
	.4byte	sUnk_863ECF0
.L_7f29c:
	.4byte	gStageEntrySequenceMode
.L_7f2a0:
	.4byte	gStageEntryCompanionKeyzerState
.L_7f2a4:
	.4byte	gStageEntryCompanionKeyzerAnimation
.L_7f2a8:
	sub	r1, r1, r2
	mov	r8, r1
.L_7f2ac:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7f680
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bne	.L_7f2ac
	mov	r8, sl
.L_7f2fa:
	ldr	r2, .L_7f684
	ldrh	r1, [r2, #4]
	ldr	r0, .L_7f688
	cmp	r1, r0
	bhi	.L_7f38c
	ldr	r0, .L_7f68c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_7f38c
	ldr	r3, .L_7f690
	cmp	r0, #5
	bne	.L_7f314
	ldr	r3, .L_7f694
.L_7f314:
	ldrh	r0, [r3, #0]
	add	sl, r0
	add	r3, #2
	mov	r0, sl
	cmp	r0, #128	@ 0x80
	ble	.L_7f322
	b	.L_7f66e
.L_7f322:
	cmp	r8, sl
	bge	.L_7f38c
	ldr	r1, .L_7f698
	add	r7, r2, #0
	mov	r2, #13
	neg	r2, r2
	mov	ip, r2
	mov	r2, r8
	lsl	r0, r2, #3
	add	r5, r0, r1
	ldr	r0, .L_7f69c
	mov	r9, r0
	mov	r1, sl
	sub	r1, r1, r2
	mov	r8, r1
.L_7f340:
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrb	r0, [r7, #6]
	add	r0, r0, r4
	sub	r0, #8
	strb	r0, [r5, #0]
	ldrh	r4, [r3, #0]
	add	r3, #2
	strh	r4, [r6, #0]
	add	r6, #2
	ldrh	r1, [r7, #4]
	add	r1, r4, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r5, #2]
	ldr	r0, .L_7f680
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r6, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r6, #4
	add	r5, #8
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bne	.L_7f340
.L_7f38c:
	ldr	r6, .L_7f6a0
	ldr	r5, .L_7f6a4
	ldrh	r0, [r5, #12]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	mov	r1, #14
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldrh	r0, [r5, #12]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	mov	r1, #14
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r2, sp
	add	r2, #2
	str	r2, [sp, #12]
	strh	r0, [r2, #0]
	ldrh	r0, [r5, #12]
	lsl	r0, r0, #1
	add	r0, r0, r6
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r1, #14
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	add	r2, sp, #4
	mov	r9, r2
	strh	r0, [r2, #0]
	ldrh	r0, [r5, #12]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, #14
	ldrsh	r0, [r5, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	add	r1, #6
	str	r1, [sp, #16]
	strh	r0, [r1, #0]
	ldr	r7, .L_7f698
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r7, #6]
	ldr	r2, [sp, #12]
	ldrh	r1, [r2, #0]
	strh	r1, [r7, #14]
	mov	r2, r9
	ldrh	r1, [r2, #0]
	strh	r1, [r7, #22]
	strh	r0, [r7, #30]
	ldr	r0, .L_7f6a8
	mov	r8, r0
	ldrb	r0, [r0, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	ldr	r5, .L_7f6ac
	mov	r2, #8
	ldrsh	r0, [r5, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	mov	r1, #8
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #12]
	strh	r0, [r2, #0]
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #1
	add	r0, r0, r6
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r2, #8
	ldrsh	r0, [r5, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, r9
	strh	r0, [r1, #0]
	mov	r2, r8
	ldrb	r0, [r2, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, #8
	ldrsh	r0, [r5, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #16]
	strh	r0, [r1, #0]
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r7, #38]	@ 0x26
	ldr	r2, [sp, #12]
	ldrh	r1, [r2, #0]
	strh	r1, [r7, #46]	@ 0x2e
	mov	r2, r9
	ldrh	r1, [r2, #0]
	strh	r1, [r7, #54]	@ 0x36
	strh	r0, [r7, #62]	@ 0x3e
	mov	r1, r8
	ldrb	r0, [r1, #1]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	mov	r1, #8
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	mov	r2, r8
	ldrb	r0, [r2, #1]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, #8
	ldrsh	r0, [r5, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #12]
	strh	r0, [r1, #0]
	mov	r2, r8
	ldrb	r0, [r2, #1]
	lsl	r0, r0, #1
	add	r0, r0, r6
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r1, #8
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r1, r8
	ldrb	r0, [r1, #1]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	mov	r1, #8
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #16]
	strh	r0, [r2, #0]
	mov	r1, sp
	ldrh	r1, [r1, #0]
	add	r2, r7, #0
	add	r2, #70	@ 0x46
	strh	r1, [r2, #0]
	ldr	r2, [sp, #12]
	ldrh	r1, [r2, #0]
	add	r2, r7, #0
	add	r2, #78	@ 0x4e
	strh	r1, [r2, #0]
	mov	r2, r9
	ldrh	r1, [r2, #0]
	add	r2, r7, #0
	add	r2, #86	@ 0x56
	strh	r1, [r2, #0]
	add	r1, r7, #0
	add	r1, #94	@ 0x5e
	strh	r0, [r1, #0]
	mov	r1, r8
	ldrb	r0, [r1, #2]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	mov	r1, #8
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	mov	r2, r8
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, #8
	ldrsh	r0, [r5, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r1, [sp, #12]
	strh	r0, [r1, #0]
	mov	r2, r8
	ldrb	r0, [r2, #2]
	lsl	r0, r0, #1
	add	r0, r0, r6
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r1, #8
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r1, r8
	ldrb	r0, [r1, #2]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r4, [r0, r2]
	mov	r1, #8
	ldrsh	r0, [r5, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r2, [sp, #16]
	strh	r0, [r2, #0]
	mov	r1, sp
	ldrh	r1, [r1, #0]
	add	r2, r7, #0
	add	r2, #102	@ 0x66
	strh	r1, [r2, #0]
	ldr	r2, [sp, #12]
	ldrh	r1, [r2, #0]
	add	r2, r7, #0
	add	r2, #110	@ 0x6e
	strh	r1, [r2, #0]
	mov	r2, r9
	ldrh	r1, [r2, #0]
	add	r2, r7, #0
	add	r2, #118	@ 0x76
	strh	r1, [r2, #0]
	add	r1, r7, #0
	add	r1, #126	@ 0x7e
	strh	r0, [r1, #0]
	ldr	r0, .L_7f6b0
	mov	r1, sl
	strb	r1, [r0, #0]
.L_7f66e:
	add	sp, #36	@ 0x24
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	b	UpdateStageEntryHorizontalShake  @ ?????
.L_7f680:
	.4byte	0xFFFFFE00
.L_7f684:
	.4byte	gStageEntryKeyzerPositionState
.L_7f688:
	.4byte	0x103
.L_7f68c:
	.4byte	gStageEntrySelectedStage
.L_7f690:
	.4byte	sUnk_863E4AA
.L_7f694:
	.4byte	sUnk_863E24C
.L_7f698:
	.4byte	gOamBuffer
.L_7f69c:
	.4byte	0x1FF
.L_7f6a0:
	.4byte	sSinCosTable
.L_7f6a4:
	.4byte	gStageEntryMainSpriteState
.L_7f6a8:
	.4byte	gStageEntryPaletteFadeCounters
.L_7f6ac:
	.4byte	gStageEntryKeyzerTargetState
.L_7f6b0:
	.4byte	gOamSlotsUsed
