.include "macros.s.inc"


thumb_func_start PauseScreenSubroutine
PauseScreenSubroutine:
	push	{r4, lr}
	bl	func_8088830
	ldr	r0, .L_8869c
	mov	r1, #0
	strb	r1, [r0, #0]
	mov	r4, #0
	ldr	r0, .L_886a0
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #7
	bls	.L_88692
	b	.L_88818
.L_88692:
	lsl	r0, r0, #2
	ldr	r1, .L_886a4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_8869c:
	.4byte	gOamSlotsUsed
.L_886a0:
	.4byte	gUnk_3000000
.L_886a4:
	.4byte	.L_886a8
.L_886a8:
	.4byte	.L_886c8
	.4byte	.L_886d8
	.4byte	.L_886f8
	.4byte	.L_88710
	.4byte	.L_88728
	.4byte	.L_8874c
	.4byte	.L_88760
	.4byte	.L_887b4
.L_886c8:
	bl	func_8088900
	ldr	r1, .L_886d4
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_88816
.L_886d4:
	.4byte	gUnk_3000000
.L_886d8:
	bl	func_80703DC
	mov	r0, #0
	mov	r1, #1
	bl	func_80710D8
	cmp	r0, #0
	bne	.L_886ea
	b	.L_88818
.L_886ea:
	ldr	r1, .L_886f4
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_88816
	.align	2, 0
.L_886f4:
	.4byte	gUnk_3000000
.L_886f8:
	bl	func_8089080
	cmp	r0, #0
	bne	.L_88702
	b	.L_88818
.L_88702:
	ldr	r1, .L_8870c
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_88816
	.align	2, 0
.L_8870c:
	.4byte	gUnk_3000000
.L_88710:
	bl	func_8088EA8
	cmp	r0, #0
	bne	.L_8871a
	b	.L_88818
.L_8871a:
	ldr	r1, .L_88724
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_88816
	.align	2, 0
.L_88724:
	.4byte	gUnk_3000000
.L_88728:
	ldr	r2, .L_88744
	ldrh	r0, [r2, #0]
	add	r1, r0, #1
	strh	r1, [r2, #0]
	lsl	r0, r1, #16
	lsr	r0, r0, #16
	cmp	r0, #30
	bls	.L_88818
	add	r0, r1, #1
	strh	r0, [r2, #0]
	ldr	r1, .L_88748
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_88816
.L_88744:
	.4byte	gStageEntrySequenceTimer
.L_88748:
	.4byte	gUnk_3000000
.L_8874c:
	bl	func_80890A0
	cmp	r0, #0
	beq	.L_88818
	ldr	r1, .L_8875c
	ldrh	r0, [r1, #0]
	add	r0, #1
	b	.L_88816
.L_8875c:
	.4byte	gUnk_3000000
.L_88760:
	bl	func_80703DC
	mov	r0, #1
	mov	r1, #1
	bl	func_80710D8
	cmp	r0, #0
	beq	.L_88818
	ldr	r1, .L_887a4
	mov	r0, #63	@ 0x3f
	strh	r0, [r1, #0]
	ldr	r1, .L_887a8
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_887ac
	ldrb	r0, [r0, #5]
	cmp	r0, #0
	bne	.L_8879e
	ldr	r4, .L_887b0
	ldr	r0, [r4, #36]	@ 0x24
	bl	m4aMPlayContinue
	ldr	r0, [r4, #48]	@ 0x30
	bl	m4aMPlayContinue
	ldr	r0, [r4, #60]	@ 0x3c
	bl	m4aMPlayContinue
	ldr	r0, [r4, #72]	@ 0x48
	bl	m4aMPlayContinue
.L_8879e:
	mov	r4, #1
	b	.L_88818
	.align	2, 0
.L_887a4:
	.4byte	0x0400004a
.L_887a8:
	.4byte	gUnk_3000000
.L_887ac:
	.4byte	gUnk_3004790
.L_887b0:
	.4byte	gMPlayTable
.L_887b4:
	bl	func_8088FF0
	cmp	r0, #1
	bne	.L_88808
	ldr	r1, .L_887f0
	mov	r0, #4
	strh	r0, [r1, #0]
	ldr	r1, .L_887f4
	ldr	r0, .L_887f8
	str	r0, [r1, #0]
	ldr	r2, .L_887fc
	mov	r0, #0
	strh	r0, [r2, #2]
	strh	r0, [r2, #0]
	ldrb	r0, [r2, #5]
	cmp	r0, #1
	bne	.L_887e4
	ldr	r1, .L_88800
	mov	r0, #3
	strb	r0, [r1, #0]
	ldr	r1, .L_88804
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_887e4:
	ldrb	r1, [r2, #5]
	cmp	r1, #2
	bne	.L_88818
	ldr	r0, .L_88800
	strb	r1, [r0, #0]
	b	.L_88818
.L_887f0:
	.4byte	gUnk_3000000
.L_887f4:
	.4byte	gUnk_3004788
.L_887f8:
	.4byte	sUnk_86D3F58
.L_887fc:
	.4byte	gUnk_3004790
.L_88800:
	.4byte	gPauseFlag
.L_88804:
	.4byte	gMainGameMode
.L_88808:
	cmp	r0, #2
	bne	.L_88818
	ldr	r1, .L_88828
	ldrb	r0, [r1, #5]
	strb	r0, [r1, #4]
	ldr	r1, .L_8882c
	mov	r0, #3
.L_88816:
	strh	r0, [r1, #0]
.L_88818:
	bl	func_80890C0
	bl	ResetFreeOam
	add	r0, r4, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.L_88828:
	.4byte	gUnk_3004790
.L_8882c:
	.4byte	gUnk_3000000


thumb_func_start func_8088830
func_8088830:
	push	{lr}
	ldr	r0, .L_8883c
	bl	InterruptCallbackSetVBlank
	pop	{r0}
	bx	r0
.L_8883c:
	.4byte	func_8088840


thumb_func_start func_8088840
func_8088840:
	push	{lr}
	bl	m4aSoundVSync
	ldr	r1, .L_8887c
	ldr	r0, .L_88880
	str	r0, [r1, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_88884
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_88888
	ldr	r0, .L_8888c
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #8
	ldr	r1, .L_88890
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_88894
	mov	r0, #240	@ 0xf0
	strh	r0, [r1, #0]
	ldr	r0, .L_88898
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_8889c
	cmp	r0, #1
	beq	.L_888cc
	b	.L_888ee
.L_8887c:
	.4byte	0x040000d4
.L_88880:
	.4byte	gOamBuffer
.L_88884:
	.4byte	0x84000100
.L_88888:
	.4byte	0x04000044
.L_8888c:
	.4byte	gStageEntryWindowTop
.L_88890:
	.4byte	gStageEntryWindowBottom
.L_88894:
	.4byte	0x04000040
.L_88898:
	.4byte	gLanguage
.L_8889c:
	ldr	r3, .L_888c0
	ldr	r0, .L_888c4
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_888c8
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldr	r0, [r1, #0]
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #7
	mov	r2, #26
	bl	Shop_DrawText
	b	.L_888ee
.L_888c0:
	.4byte	sUnk_863A3AC
.L_888c4:
	.4byte	gCurrentStageNumber
.L_888c8:
	.4byte	gCurrentPassage
.L_888cc:
	ldr	r3, .L_888f4
	ldr	r0, .L_888f8
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_888fc
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldr	r0, [r1, #0]
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #7
	mov	r2, #26
	bl	Shop_DrawText
.L_888ee:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_888f4:
	.4byte	sUnk_863A31C
.L_888f8:
	.4byte	gCurrentStageNumber
.L_888fc:
	.4byte	gCurrentPassage


thumb_func_start func_8088900
func_8088900:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, .L_88944
	ldrh	r0, [r3, #0]
	mov	r5, #1
	eor	r0, r5
	strh	r0, [r3, #0]
	ldr	r4, .L_88948
	mov	r6, #0
	strh	r6, [r4, #0]
	ldr	r2, .L_8894c
	ldrh	r1, [r2, #0]
	ldr	r0, .L_88950
	and	r0, r1
	strh	r0, [r2, #0]
	ldrh	r1, [r3, #0]
	ldr	r0, .L_88954
	and	r0, r1
	strh	r0, [r3, #0]
	strh	r5, [r4, #0]
	ldr	r0, .L_88958
	ldrb	r1, [r0, #0]
	add	r7, r0, #0
	cmp	r1, #0
	beq	.L_8893c
	cmp	r1, #5
	bne	.L_88960
.L_8893c:
	ldr	r0, .L_8895c
	strb	r5, [r0, #0]
	b	.L_88964
	.align	2, 0
.L_88944:
	.4byte	0x04000200
.L_88948:
	.4byte	0x04000208
.L_8894c:
	.4byte	0x04000004
.L_88950:
	.4byte	0x0000ffef
.L_88954:
	.4byte	0x0000fffd
.L_88958:
	.4byte	gCurrentPassage
.L_8895c:
	.4byte	gUnk_3003C4A
.L_88960:
	ldr	r0, .L_88a58
	strb	r6, [r0, #0]
.L_88964:
	mov	r8, r0
	ldr	r1, .L_88a5c
	ldr	r0, .L_88a60
	str	r0, [r1, #0]
	ldr	r0, .L_88a64
	str	r0, [r1, #4]
	ldr	r0, .L_88a68
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	ldr	r3, .L_88a6c
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r4, r3, r5
	ldr	r5, .L_88a70
	ldr	r6, .L_88a74
	mov	r9, r6
	ldr	r6, .L_88a78
	mov	sl, r6
	ldr	r6, .L_88a7c
	mov	ip, r6
	cmp	r0, #0
	bge	.L_8899e
.L_88996:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_88996
.L_8899e:
	ldr	r1, .L_88a5c
	ldr	r0, .L_88a60
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_88a68
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_889c2
.L_889ba:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_889ba
.L_889c2:
	ldr	r1, .L_88a5c
	str	r3, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_88a68
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_889e4
.L_889dc:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_889dc
.L_889e4:
	ldr	r1, .L_88a5c
	str	r4, [r1, #0]
	ldr	r0, .L_88a80
	str	r0, [r1, #4]
	ldr	r0, .L_88a84
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_88a04
.L_889fc:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_889fc
.L_88a04:
	ldr	r1, .L_88a5c
	str	r5, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_88a88
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_88a26
.L_88a1e:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_88a1e
.L_88a26:
	ldr	r1, .L_88a5c
	ldr	r0, .L_88a8c
	str	r0, [r1, #0]
	ldr	r0, .L_88a90
	str	r0, [r1, #4]
	ldr	r0, .L_88a94
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_88a48
.L_88a40:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_88a40
.L_88a48:
	mov	r1, r9
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_88a9c
	ldr	r1, .L_88a5c
	ldr	r0, .L_88a98
	b	.L_88aa0
	.align	2, 0
.L_88a58:
	.4byte	gUnk_3003C4A
.L_88a5c:
	.4byte	0x040000d4
.L_88a60:
	.4byte	0x02020600
.L_88a64:
	.4byte	0x05000200
.L_88a68:
	.4byte	0x80000100
.L_88a6c:
	.4byte	sUnk_86D7038
.L_88a70:
	.4byte	sUnk_86D4038
.L_88a74:
	.4byte	gLanguage
.L_88a78:
	.4byte	sUnk_86DD638
.L_88a7c:
	.4byte	gColorFading
.L_88a80:
	.4byte	0x05000300
.L_88a84:
	.4byte	0x80000080
.L_88a88:
	.4byte	0x80001800
.L_88a8c:
	.4byte	sUnk_86D7238
.L_88a90:
	.4byte	0x06012400
.L_88a94:
	.4byte	0x80002e00
.L_88a98:
	.4byte	sUnk_86DCE38
.L_88a9c:
	ldr	r1, .L_88af0
	ldr	r0, .L_88af4
.L_88aa0:
	str	r0, [r1, #0]
	ldr	r0, .L_88af8
	str	r0, [r1, #4]
	ldr	r0, .L_88afc
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_88af0
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_88ac0
.L_88ab8:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_88ab8
.L_88ac0:
	ldr	r1, .L_88af0
	mov	r2, sl
	str	r2, [r1, #0]
	ldr	r0, .L_88b00
	str	r0, [r1, #4]
	ldr	r0, .L_88afc
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_88ae2
.L_88ada:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_88ada
.L_88ae2:
	mov	r4, r8
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_88b08
	ldr	r1, .L_88af0
.L_88aec:
	ldr	r0, .L_88b04
	b	.L_88b0c
.L_88af0:
	.4byte	0x040000d4
.L_88af4:
	.4byte	sUnk_86E29F8
.L_88af8:
	.4byte	0x0600c000
.L_88afc:
	.4byte	0x80000400
.L_88b00:
	.4byte	0x0600d000
.L_88b04:
	udf	#56	@ 0x38
	lsr	r5, r5, #1
.L_88b08:
	ldr	r1, .L_88c0c
	ldr	r0, .L_88c10
.L_88b0c:
	str	r0, [r1, #0]
	ldr	r0, .L_88c14
	str	r0, [r1, #4]
	ldr	r0, .L_88c18
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_88c0c
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_88b2c
.L_88b24:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_88b24
.L_88b2c:
	mov	r5, r8
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_88b4c
	ldr	r2, .L_88c0c
	ldrb	r0, [r7, #0]
	sub	r0, #1
	lsl	r0, r0, #6
	ldr	r1, .L_88c1c
	add	r0, r0, r1
	str	r0, [r2, #0]
	ldr	r0, .L_88c20
	str	r0, [r2, #4]
	ldr	r0, .L_88c24
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_88b4c:
	ldr	r1, .L_88c0c
	ldrb	r0, [r7, #0]
	lsl	r0, r0, #6
	ldr	r6, .L_88c28
	add	r0, r0, r6
	str	r0, [r1, #0]
	ldr	r0, .L_88c2c
	str	r0, [r1, #4]
	ldr	r0, .L_88c24
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #24
	cmp	r0, #0
	bge	.L_88b74
.L_88b6c:
	ldr	r0, [r1, #8]
	and	r0, r2
	cmp	r0, #0
	bne	.L_88b6c
.L_88b74:
	ldr	r1, .L_88c0c
	ldr	r6, .L_88c30
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #5
	ldr	r2, .L_88c34
	add	r0, r0, r2
	str	r0, [r1, #0]
	ldr	r0, .L_88c38
	str	r0, [r1, #4]
	ldr	r0, .L_88c3c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	mov	r5, #0
	strh	r5, [r0, #0]
	sub	r1, #204	@ 0xcc
	mov	r4, #192	@ 0xc0
	lsl	r4, r4, #5
	add	r0, r4, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_88c40
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r4, .L_88c44
	add	r0, r4, #0
	strh	r0, [r1, #0]
	mov	r1, #250	@ 0xfa
	lsl	r1, r1, #2
	add	r0, r1, #0
	ldr	r2, .L_88c48
	strh	r0, [r2, #0]
	mov	r4, #0
	mov	r0, #2
	mov	r1, ip
	strb	r0, [r1, #0]
	mov	r0, #3
	strb	r0, [r1, #4]
	bl	func_8071260
	ldr	r1, .L_88c4c
	ldr	r0, .L_88c50
	str	r0, [r1, #0]
	ldr	r0, .L_88c54
	strh	r4, [r0, #0]
	strh	r4, [r0, #2]
	strb	r5, [r0, #4]
	ldr	r3, .L_88c58
	ldr	r0, .L_88c5c
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r6, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r1, [r1, #0]
	lsl	r0, r1, #31
	cmp	r0, #0
	beq	.L_88c64
	lsl	r0, r1, #30
	cmp	r0, #0
	bge	.L_88c64
	lsl	r0, r1, #29
	cmp	r0, #0
	bge	.L_88c64
	lsl	r0, r1, #28
	cmp	r0, #0
	bge	.L_88c64
	ldr	r1, .L_88c60
	mov	r0, #1
	b	.L_88c68
	.align	2, 0
.L_88c0c:
	.4byte	0x040000d4
.L_88c10:
	.4byte	sUnk_86DE638
.L_88c14:
	.4byte	0x0600e000
.L_88c18:
	lsl	r0, r0, #16
	strh	r0, [r0, #0]
.L_88c1c:
	.4byte	sUnk_86DF0F8
.L_88c20:
	.4byte	0x05000200
.L_88c24:
	.4byte	0x80000020
.L_88c28:
	.4byte	sUnk_86DEEF8
.L_88c2c:
	.4byte	0x05000240
.L_88c30:
	.4byte	gCurrentPassage
.L_88c34:
	.4byte	sUnk_86DEE38
.L_88c38:
	.4byte	0x05000160
.L_88c3c:
	.4byte	0x80000010
.L_88c40:
	.4byte	0x00001a01
.L_88c44:
	.4byte	0x00001c02
.L_88c48:
	.4byte	gUnk_3004A30
.L_88c4c:
	.4byte	gUnk_3004788
.L_88c50:
	.4byte	sUnk_86D3F40
.L_88c54:
	.4byte	gUnk_3004790
.L_88c58:
	.4byte	gCurrentCollection
.L_88c5c:
	.4byte	gCurrentStageNumber
.L_88c60:
	.4byte	gUnk_30047B4
.L_88c64:
	ldr	r1, .L_88ca4
	mov	r0, #0
.L_88c68:
	strb	r0, [r1, #0]
	ldr	r7, .L_88ca8
	ldr	r5, .L_88cac
	ldr	r4, .L_88cb0
	ldr	r0, .L_88cb4
	ldr	r6, .L_88cb8
	ldr	r2, .L_88cbc
	mov	ip, r2
	ldr	r1, .L_88cc0
	mov	sl, r1
	ldr	r2, .L_88cc4
	mov	r8, r2
	ldr	r1, .L_88cc8
	mov	r9, r1
	add	r3, r4, #0
	mov	r2, #0
	add	r1, r4, #3
.L_88c8a:
	strb	r2, [r1, #0]
	sub	r1, #1
	cmp	r1, r3
	bge	.L_88c8a
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_88ccc
	mov	r0, #1
	b	.L_88ce8
	.align	2, 0
.L_88ca4:
	.4byte	gUnk_30047B4
.L_88ca8:
	.4byte	gCurrentPassage
.L_88cac:
	.4byte	gCurrentStageNumber
.L_88cb0:
	.4byte	gUnk_30047B0
.L_88cb4:
	.4byte	gCollectedNEJewelPiece
.L_88cb8:
	.4byte	gCollectedSEJewelPiece
.L_88cbc:
	.4byte	gCollectedSWJewelPiece
.L_88cc0:
	.4byte	gCollectedNWJewelPiece
.L_88cc4:
	.4byte	gUnk_30047A8
.L_88cc8:
	.4byte	gUnk_30047AC
.L_88ccc:
	ldr	r3, .L_88cfc
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r7, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #31
	cmp	r0, #0
	beq	.L_88cea
	mov	r0, #2
.L_88ce8:
	strb	r0, [r4, #0]
.L_88cea:
	ldrb	r0, [r6, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_88d00
	mov	r0, #1
	b	.L_88d1c
	.align	2, 0
.L_88cfc:
	.4byte	gCurrentCollection
.L_88d00:
	ldr	r3, .L_88d30
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r7, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
.L_88d0c:
	.4byte	0x180900c0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #30
	cmp	r0, #0
	bge	.L_88d1e
	mov	r0, #2
.L_88d1c:
	strb	r0, [r4, #1]
.L_88d1e:
	mov	r2, ip
	ldrb	r0, [r2, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_88d34
	mov	r0, #1
	b	.L_88d50
.L_88d30:
	.4byte	gCurrentCollection
.L_88d34:
	ldr	r3, .L_88d64
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r7, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #29
	cmp	r0, #0
	bge	.L_88d52
	mov	r0, #2
.L_88d50:
	strb	r0, [r4, #2]
.L_88d52:
	mov	r6, sl
	ldrb	r0, [r6, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_88d68
	mov	r0, #1
	b	.L_88d84
.L_88d64:
	.4byte	gCurrentCollection
.L_88d68:
	ldr	r3, .L_88e68
	ldrb	r1, [r5, #0]
	lsl	r1, r1, #2
	ldrb	r2, [r7, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #28
	cmp	r0, #0
	bge	.L_88d86
	mov	r0, #2
.L_88d84:
	strb	r0, [r4, #3]
.L_88d86:
	mov	r0, #0
	ldr	r1, .L_88e6c
	strh	r0, [r1, #0]
	ldr	r2, .L_88e70
	strb	r0, [r2, #0]
	mov	r2, #0
	ldr	r0, .L_88e74
	mov	r1, #3
.L_88d96:
	strh	r2, [r0, #0]
	strh	r2, [r0, #2]
	add	r0, #4
	sub	r1, #1
	cmp	r1, #0
	bge	.L_88d96
	mov	r0, #0
	mov	r4, r8
	strh	r0, [r4, #0]
	strh	r0, [r4, #2]
	mov	r6, r9
	strh	r0, [r6, #0]
	strh	r0, [r6, #2]
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #2
	ldrb	r1, [r7, #0]
	lsl	r1, r1, #4
	add	r0, r0, r1
	ldr	r1, .L_88e78
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	r2, #170	@ 0xaa
	lsl	r2, r2, #6
	ldr	r1, .L_88e7c
	bl	func_807AA4C
	ldr	r2, .L_88e80
	ldr	r0, [r2, #8]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	cmp	r0, #0
	bge	.L_88dde
.L_88dd6:
	ldr	r0, [r2, #8]
	and	r0, r1
	cmp	r0, #0
	bne	.L_88dd6
.L_88dde:
	ldr	r0, .L_88e84
	ldr	r0, [r0, #0]
	ldr	r1, .L_88e88
	mov	r2, #166	@ 0xa6
	lsl	r2, r2, #6
	bl	func_807A824
	ldr	r0, .L_88e8c
	mov	r1, #160	@ 0xa0
	strh	r1, [r0, #0]
	ldr	r0, .L_88e90
	strh	r1, [r0, #0]
	ldr	r0, .L_88e94
	mov	r3, #0
	strh	r3, [r0, #0]
	sub	r0, #2
	strh	r3, [r0, #0]
	add	r0, #6
	strh	r3, [r0, #0]
	sub	r0, #2
	strh	r3, [r0, #0]
	add	r0, #6
	strh	r3, [r0, #0]
	sub	r0, #2
	strh	r3, [r0, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #19
	mov	r4, #184	@ 0xb8
	lsl	r4, r4, #5
	add	r0, r4, #0
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #0]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #6
	add	r1, r5, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_88e98
	mov	r0, #63	@ 0x3f
	strh	r0, [r1, #0]
	ldr	r0, .L_88e9c
	strh	r3, [r0, #0]
	add	r0, #6
	strh	r3, [r0, #0]
	ldr	r4, .L_88ea0
	ldr	r0, [r4, #36]	@ 0x24
	bl	MPlayStop
	ldr	r0, [r4, #48]	@ 0x30
	bl	MPlayStop
	ldr	r0, [r4, #60]	@ 0x3c
	bl	MPlayStop
	ldr	r0, [r4, #72]	@ 0x48
	bl	MPlayStop
	ldr	r2, .L_88ea4
	ldrh	r0, [r2, #0]
	mov	r1, #1
	orr	r0, r1
	strh	r0, [r2, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_88e68:
	.4byte	gCurrentCollection
.L_88e6c:
	.4byte	gStageEntrySequenceTimer
.L_88e70:
	.4byte	gStageEntrySequenceStep
.L_88e74:
	.4byte	gUnk_3004798
.L_88e78:
	.4byte	gHighScoreTable
.L_88e7c:
	.4byte	sUnk_86D6E78
.L_88e80:
	.4byte	0x040000d4
.L_88e84:
	.4byte	gTotalScore
.L_88e88:
	.4byte	sUnk_86D6838
.L_88e8c:
	.4byte	gStageEntryWindowTop
.L_88e90:
	.4byte	gStageEntryWindowBottom
.L_88e94:
	.4byte	0x04000012
.L_88e98:
	.4byte	0x04000048
.L_88e9c:
	.4byte	0x0400004a
.L_88ea0:
	.4byte	gMPlayTable
.L_88ea4:
	.4byte	0x04000200


thumb_func_start func_8088EA8
func_8088EA8:
	push	{r4, lr}
	ldr	r3, .L_88ebc
	ldrb	r2, [r3, #4]
	cmp	r2, #1
	beq	.L_88f0e
	cmp	r2, #1
	bgt	.L_88ec0
	cmp	r2, #0
	beq	.L_88ec6
	b	.L_88fc0
.L_88ebc:
	.4byte	gUnk_3004790
.L_88ec0:
	cmp	r2, #2
	beq	.L_88f48
	b	.L_88fc0
.L_88ec6:
	ldr	r0, .L_88ee4
	ldrh	r1, [r0, #0]
	mov	r4, #1
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_88ef4
	ldr	r1, .L_88ee8
	ldr	r0, .L_88eec
	str	r0, [r1, #0]
	strh	r2, [r3, #2]
	strh	r2, [r3, #0]
	ldr	r0, .L_88ef0
	strb	r4, [r0, #0]
	b	.L_88fda
.L_88ee4:
	.4byte	gButtonsPressed
.L_88ee8:
	.4byte	gUnk_3004788
.L_88eec:
	.4byte	sUnk_86D3F58
.L_88ef0:
	.4byte	gPauseFlag
.L_88ef4:
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_88f00
	strb	r4, [r3, #4]
	b	.L_88fa2
.L_88f00:
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_88fc0
	mov	r0, #2
	strb	r0, [r3, #4]
	b	.L_88fa2
.L_88f0e:
	ldr	r0, .L_88f20
	ldrh	r1, [r0, #0]
	and	r2, r1
	cmp	r2, #0
	beq	.L_88f2c
	ldr	r1, .L_88f24
	ldr	r0, .L_88f28
	b	.L_88f58
	.align	2, 0
.L_88f20:
	.4byte	gButtonsPressed
.L_88f24:
	.4byte	0x040000d4
.L_88f28:
	.4byte	sUnk_86DF1F8
.L_88f2c:
	mov	r0, #16
	and	r0, r1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, #0
	beq	.L_88f3e
	mov	r0, #2
	strb	r0, [r3, #4]
	b	.L_88fa2
.L_88f3e:
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_88fc0
	b	.L_88fa0
.L_88f48:
	ldr	r0, .L_88f7c
	ldrh	r1, [r0, #0]
	mov	r2, #1
	and	r2, r1
	cmp	r2, #0
	beq	.L_88f98
	ldr	r1, .L_88f80
	ldr	r0, .L_88f84
.L_88f58:
	str	r0, [r1, #0]
	ldr	r0, .L_88f88
	str	r0, [r1, #4]
	ldr	r0, .L_88f8c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r1, .L_88f90
	mov	r0, #7
	strh	r0, [r1, #0]
	ldrb	r0, [r3, #4]
	strb	r0, [r3, #5]
	mov	r0, #3
	strb	r0, [r3, #4]
	ldr	r0, .L_88f94
	bl	m4aSongNumStart
	mov	r0, #0
	b	.L_88fe2
.L_88f7c:
	.4byte	gButtonsPressed
.L_88f80:
	.4byte	0x040000d4
.L_88f84:
	.4byte	sUnk_86D9638
.L_88f88:
	.4byte	0x06014800
.L_88f8c:
	.4byte	0x80001c00
.L_88f90:
	.4byte	gUnk_3000000
.L_88f94:
	.4byte	0x00000125
.L_88f98:
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_88fac
.L_88fa0:
	strb	r2, [r3, #4]
.L_88fa2:
	mov	r0, #146	@ 0x92
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_88fc0
.L_88fac:
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_88fc0
	mov	r0, #1
	strb	r0, [r3, #4]
	mov	r0, #146	@ 0x92
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_88fc0:
	ldr	r0, .L_88fd0
	ldrh	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	bne	.L_88fd4
	mov	r0, #0
	b	.L_88fe2
.L_88fd0:
	.4byte	gButtonsPressed
.L_88fd4:
	ldr	r0, .L_88fe8
	mov	r1, #1
	strb	r1, [r0, #0]
.L_88fda:
	ldr	r0, .L_88fec
	bl	m4aSongNumStart
	mov	r0, #1
.L_88fe2:
	pop	{r4}
	pop	{r1}
	bx	r1
.L_88fe8:
	.4byte	gPauseFlag
.L_88fec:
	.4byte	0x00000123


thumb_func_start func_8088FF0
func_8088FF0:
	push	{lr}
	ldr	r2, .L_89000
	ldrb	r0, [r2, #4]
	cmp	r0, #3
	beq	.L_89004
	cmp	r0, #4
	beq	.L_8902c
	b	.L_8905c
.L_89000:
	.4byte	gUnk_3004790
.L_89004:
	ldr	r0, .L_89028
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_89070
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_8905c
	mov	r0, #4
	strb	r0, [r2, #4]
	mov	r0, #146	@ 0x92
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	b	.L_8905c
	.align	2, 0
.L_89028:
	.4byte	gButtonsPressed
.L_8902c:
	ldr	r0, .L_89044
	ldrh	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_89048
	mov	r0, #147	@ 0x93
	lsl	r0, r0, #1
	bl	m4aSongNumStart
	mov	r0, #1
	b	.L_89078
.L_89044:
	.4byte	gButtonsPressed
.L_89048:
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_8905c
	mov	r0, #3
	strb	r0, [r2, #4]
	mov	r0, #146	@ 0x92
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_8905c:
	ldr	r0, .L_8906c
	ldrh	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	cmp	r0, #0
	bne	.L_89070
	mov	r0, #0
	b	.L_89078
.L_8906c:
	.4byte	gButtonsPressed
.L_89070:
	ldr	r0, .L_8907c
	bl	m4aSongNumStart
	mov	r0, #2
.L_89078:
	pop	{r1}
	bx	r1
.L_8907c:
	.4byte	0x00000129


thumb_func_start func_8089080
func_8089080:
	ldr	r1, .L_89094
	ldrh	r0, [r1, #0]
	sub	r0, #17
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	cmp	r0, #0
	blt	.L_89098
	mov	r0, #0
	b	.L_8909e
	.align	2, 0
.L_89094:
	.4byte	gStageEntryWindowTop
.L_89098:
	mov	r0, #0
	strh	r0, [r1, #0]
	mov	r0, #1
.L_8909e:
	bx	lr


thumb_func_start func_80890A0
func_80890A0:
	ldr	r1, .L_890b4
	ldrh	r0, [r1, #0]
	add	r0, #17
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #160	@ 0xa0
	bgt	.L_890b8
	mov	r0, #0
	b	.L_890be
.L_890b4:
	.4byte	gStageEntryWindowTop
.L_890b8:
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
	mov	r0, #1
.L_890be:
	bx	lr


thumb_func_start func_80890C0
func_80890C0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #12
	mov	r6, #0
	ldr	r0, .L_891c4
	ldrb	r1, [r0, #0]
	mov	ip, r1
	lsl	r0, r1, #3
	ldr	r4, .L_891c8
	add	r7, r0, r4
	ldr	r2, .L_891cc
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	ldr	r3, .L_891d0
	ldr	r5, [r3, #0]
	mov	r8, r5
	lsl	r0, r0, #3
	add	r0, r8
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	add	r5, r2, #0
	cmp	r0, r1
	bcs	.L_8911a
	mov	r1, #1
	strh	r1, [r5, #0]
	ldrh	r0, [r5, #2]
	add	r0, #1
	strh	r0, [r5, #2]
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	add	r0, r8
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8911a
	strh	r6, [r5, #2]
	ldr	r0, .L_891d4
	cmp	r8, r0
	bne	.L_8911a
	strh	r1, [r5, #2]
.L_8911a:
	ldrh	r0, [r5, #2]
	ldr	r1, [r3, #0]
	lsl	r0, r0, #3
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	ip, r0
	add	r3, #2
	mov	r0, ip
	cmp	r0, #128	@ 0x80
	ble	.L_89132
	b	.L_898dc
.L_89132:
	cmp	r6, ip
	bge	.L_891a2
	ldr	r1, .L_891c8
	mov	r8, r5
	lsl	r0, r6, #3
	add	r4, r0, r1
	ldr	r1, .L_891d8
	mov	r9, r1
	mov	r2, #13
	neg	r2, r2
	mov	sl, r2
	mov	r0, ip
	sub	r6, r0, r6
.L_8914c:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r1, r8
	ldrb	r0, [r1, #4]
	lsl	r0, r0, #2
	ldr	r1, .L_891dc
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	add	r0, r0, r2
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r1, r8
	ldrb	r0, [r1, #4]
	lsl	r0, r0, #2
	ldr	r1, .L_891e0
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	mov	r2, r9
	and	r1, r2
	ldrh	r2, [r4, #2]
	ldr	r0, .L_891e4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, sl
	and	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_8914c
	mov	r6, ip
.L_891a2:
	add	r2, r5, #0
	ldrb	r0, [r2, #4]
	sub	r0, #3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_8926a
	ldr	r0, .L_891e8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_891f0
	ldr	r1, .L_891ec
	ldrb	r0, [r2, #4]
	sub	r0, #3
	lsl	r0, r0, #2
	b	.L_891fa
	.align	2, 0
.L_891c4:
	.4byte	gOamSlotsUsed
.L_891c8:
	.4byte	gOamBuffer
.L_891cc:
	.4byte	gUnk_3004790
.L_891d0:
	.4byte	gUnk_3004788
.L_891d4:
	.4byte	sUnk_86D3F58
.L_891d8:
	.4byte	0x000001ff
.L_891dc:
	.4byte	sUnk_86D36B8
.L_891e0:
	.4byte	sUnk_86D36A4
.L_891e4:
	.4byte	0xfffffe00
.L_891e8:
	.4byte	gLanguage
.L_891ec:
	.4byte	sUnk_86D370C
.L_891f0:
	ldr	r1, .L_895a0
	ldrb	r0, [r5, #4]
	sub	r0, #3
	lsl	r0, r0, #2
	add	r1, #8
.L_891fa:
	add	r0, r0, r1
	ldr	r3, [r0, #0]
	ldr	r3, [r3, #0]
	ldrh	r0, [r3, #0]
	add	ip, r0
	add	r3, #2
	mov	r5, ip
	cmp	r5, #128	@ 0x80
	ble	.L_8920e
	b	.L_898dc
.L_8920e:
	cmp	r6, ip
	bge	.L_8926a
	ldr	r1, .L_895a4
	ldr	r0, .L_895a8
	mov	r8, r0
	ldr	r2, .L_895ac
	mov	r9, r2
	mov	r5, #13
	neg	r5, r5
	lsl	r0, r6, #3
	add	r4, r0, r1
	mov	r0, ip
	sub	r6, r0, r6
.L_89228:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #80	@ 0x50
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r1, r2, #0
	add	r1, #120	@ 0x78
	mov	r2, r8
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, r9
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	add	r0, r5, #0
	and	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_89228
	mov	r6, ip
.L_8926a:
	mov	r0, #0
	strh	r0, [r7, #0]
	add	r7, #2
	lsl	r2, r6, #3
	ldr	r5, .L_895a4
	add	r2, r2, r5
	mov	r4, #0
	mov	r0, #32
	mov	sl, r0
	mov	r1, sl
	strb	r1, [r2, #0]
	strh	r4, [r7, #0]
	add	r7, #2
	ldrh	r1, [r2, #2]
	ldr	r5, .L_895ac
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #176	@ 0xb0
	orr	r0, r1
	strh	r0, [r2, #2]
	strh	r4, [r7, #0]
	ldrh	r1, [r2, #4]
	ldr	r0, .L_895b0
	mov	r8, r0
	and	r0, r1
	mov	r1, #203	@ 0xcb
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	mov	r0, #15
	and	r0, r1
	mov	r1, #96	@ 0x60
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r6, #1
	add	r7, #4
	strh	r4, [r7, #0]
	add	r7, #2
	lsl	r2, r6, #3
	ldr	r1, .L_895a4
	add	r2, r2, r1
	mov	r0, sl
	strb	r0, [r2, #0]
	ldrb	r1, [r2, #1]
	mov	r3, #63	@ 0x3f
	add	r0, r3, #0
	and	r0, r1
	mov	r1, #64	@ 0x40
	mov	r9, r1
	mov	r1, r9
	orr	r0, r1
	strb	r0, [r2, #1]
	strh	r4, [r7, #0]
	add	r7, #2
	ldrh	r1, [r2, #2]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #184	@ 0xb8
	orr	r0, r1
	strh	r0, [r2, #2]
	ldrb	r1, [r2, #3]
	add	r0, r3, #0
	and	r0, r1
	strb	r0, [r2, #3]
	strh	r4, [r7, #0]
	ldrh	r1, [r2, #4]
	mov	r0, r8
	and	r0, r1
	mov	r1, #132	@ 0x84
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	mov	r0, #15
	and	r0, r1
	mov	r1, r9
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r6, #1
	add	r7, #4
	strh	r4, [r7, #0]
	add	r7, #2
	lsl	r2, r6, #3
	ldr	r0, .L_895a4
	add	r2, r2, r0
	mov	r1, sl
	strb	r1, [r2, #0]
	ldrb	r1, [r2, #1]
	add	r0, r3, #0
	and	r0, r1
	mov	r1, r9
	orr	r0, r1
	strb	r0, [r2, #1]
	strh	r4, [r7, #0]
	add	r7, #2
	ldrh	r1, [r2, #2]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #200	@ 0xc8
	orr	r0, r1
	strh	r0, [r2, #2]
	ldrb	r1, [r2, #3]
	add	r0, r3, #0
	and	r0, r1
	mov	r1, r9
	orr	r0, r1
	strb	r0, [r2, #3]
	strh	r4, [r7, #0]
	ldrh	r1, [r2, #4]
	mov	r0, r8
	and	r0, r1
	mov	r1, #134	@ 0x86
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	mov	r0, #15
	and	r0, r1
	mov	r1, r9
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r6, #1
	add	r7, #4
	strh	r4, [r7, #0]
	add	r7, #2
	lsl	r2, r6, #3
	ldr	r0, .L_895a4
	add	r2, r2, r0
	mov	r1, sl
	strb	r1, [r2, #0]
	ldrb	r1, [r2, #1]
	add	r0, r3, #0
	and	r0, r1
	mov	r1, r9
	orr	r0, r1
	strb	r0, [r2, #1]
	strh	r4, [r7, #0]
	add	r7, #2
	ldrh	r1, [r2, #2]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #8
	orr	r0, r1
	strh	r0, [r2, #2]
	ldrb	r1, [r2, #3]
	add	r0, r3, #0
	and	r0, r1
	mov	r1, #128	@ 0x80
	orr	r0, r1
	strb	r0, [r2, #3]
	strh	r4, [r7, #0]
	ldrh	r1, [r2, #4]
	mov	r0, r8
	and	r0, r1
	mov	r1, #144	@ 0x90
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	mov	r0, #15
	and	r0, r1
	mov	r1, #112	@ 0x70
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r6, #1
	add	r7, #4
	mov	r2, #5
	add	ip, r2
	strh	r4, [r7, #0]
	add	r7, #2
	lsl	r1, r6, #3
	ldr	r0, .L_895a4
	add	r1, r1, r0
	mov	r2, sl
	strb	r2, [r1, #0]
	ldrb	r2, [r1, #1]
	add	r0, r3, #0
	and	r0, r2
	mov	r2, r9
	orr	r0, r2
	strb	r0, [r1, #1]
	strh	r4, [r7, #0]
	add	r7, #2
	ldrh	r0, [r1, #2]
	and	r5, r0
	mov	r0, #40	@ 0x28
	orr	r5, r0
	strh	r5, [r1, #2]
	ldrb	r0, [r1, #3]
	and	r3, r0
	mov	r5, #128	@ 0x80
	orr	r3, r5
	strb	r3, [r1, #3]
	strh	r4, [r7, #0]
	ldrh	r0, [r1, #4]
	mov	r2, r8
	and	r2, r0
	mov	r0, #148	@ 0x94
	orr	r2, r0
	strh	r2, [r1, #4]
	ldrb	r0, [r1, #5]
	mov	r5, #15
	and	r5, r0
	mov	r0, #112	@ 0x70
	orr	r5, r0
	strb	r5, [r1, #5]
	add	r6, #1
	add	r7, #4
	mov	r5, #0
	str	r5, [sp, #0]
	mov	r0, #0
	str	r0, [sp, #8]
.L_8940c:
	ldr	r1, [sp, #0]
	ldr	r2, .L_895b4
	add	r0, r1, r2
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bne	.L_894d2
	ldr	r0, .L_895b8
	ldr	r5, [sp, #8]
	add	r0, r5, r0
	ldr	r3, [r0, #0]
	ldr	r2, .L_895bc
	add	r5, r5, r2
	ldrh	r1, [r5, #0]
	add	r1, #1
	strh	r1, [r5, #0]
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_89452
	mov	r0, #1
	strh	r0, [r5, #0]
	ldrh	r0, [r5, #2]
	add	r0, #1
	strh	r0, [r5, #2]
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_89452
	strh	r0, [r5, #2]
.L_89452:
	ldr	r1, [sp, #8]
	add	r0, r1, r2
	ldrh	r0, [r0, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	ip, r0
	add	r3, #2
	mov	r2, ip
	cmp	r2, #128	@ 0x80
	ble	.L_8946c
	b	.L_898dc
.L_8946c:
	cmp	r6, ip
	bge	.L_894d2
	ldr	r5, .L_895c0
	mov	r9, r5
	ldr	r0, .L_895ac
	mov	sl, r0
	mov	r1, #13
	neg	r1, r1
	mov	r8, r1
	ldr	r4, .L_895c4
	lsl	r0, r6, #3
	ldr	r2, .L_895a4
	add	r5, r0, r2
	mov	r0, ip
	sub	r6, r0, r6
.L_8948a:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #88	@ 0x58
	strb	r0, [r5, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r9
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r2, .L_895a8
	and	r1, r2
	ldrh	r2, [r5, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, r8
	and	r0, r1
	strb	r0, [r5, #5]
	add	r7, #4
	add	r5, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_8948a
	mov	r6, ip
.L_894d2:
	ldr	r0, .L_895c8
	ldrb	r1, [r0, #0]
	cmp	r1, #0
	bne	.L_8956c
	ldr	r5, [sp, #0]
	ldr	r0, .L_895b4
	add	r1, r5, r0
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_8956c
	ldr	r0, .L_895cc
	ldrb	r1, [r1, #0]
	sub	r1, #1
	lsl	r1, r1, #4
	ldr	r2, [sp, #8]
	add	r1, r2, r1
	add	r1, r1, r0
	ldr	r3, [r1, #0]
	ldr	r3, [r3, #0]
	ldrh	r0, [r3, #0]
	add	ip, r0
	add	r3, #2
	mov	r5, ip
	cmp	r5, #128	@ 0x80
	ble	.L_89506
	b	.L_898dc
.L_89506:
	cmp	r6, ip
	bge	.L_8956c
	ldr	r0, .L_895c0
	mov	r9, r0
	ldr	r1, .L_895ac
	mov	sl, r1
	mov	r2, #13
	neg	r2, r2
	mov	r8, r2
	ldr	r4, .L_895c4
	lsl	r0, r6, #3
	ldr	r1, .L_895a4
	add	r5, r0, r1
	mov	r2, ip
	sub	r6, r2, r6
.L_89524:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #88	@ 0x58
	strb	r0, [r5, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r9
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	ldr	r0, .L_895a8
	and	r1, r0
	ldrh	r2, [r5, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, r8
	and	r0, r1
	strb	r0, [r5, #5]
	add	r7, #4
	add	r5, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_89524
	mov	r6, ip
.L_8956c:
	ldr	r1, [sp, #8]
	add	r1, #4
	str	r1, [sp, #8]
	ldr	r2, [sp, #0]
	add	r2, #1
	str	r2, [sp, #0]
	cmp	r2, #3
	bgt	.L_8957e
	b	.L_8940c
.L_8957e:
	ldr	r5, .L_895c8
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_8962c
	ldr	r0, .L_895d0
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	ip, r0
	add	r3, #2
	cmp	r6, ip
	bge	.L_8962c
	ldr	r1, .L_895a4
	ldr	r0, .L_895c0
	mov	sl, r0
	mov	r2, #13
	neg	r2, r2
	b	.L_895d4
.L_895a0:
	.4byte	sUnk_86D370C
.L_895a4:
	.4byte	gOamBuffer
.L_895a8:
	.4byte	0x000001ff
.L_895ac:
	.4byte	0xfffffe00
.L_895b0:
	.4byte	0xfffffc00
.L_895b4:
	.4byte	gUnk_30047B0
.L_895b8:
	.4byte	sUnk_86D36FC
.L_895bc:
	.4byte	gUnk_3004798
.L_895c0:
	.4byte	sUnk_86D36CC
.L_895c4:
	.4byte	gUnk_3003C4A
.L_895c8:
	.4byte	gUnk_30047B4
.L_895cc:
	.4byte	sUnk_86D36DC
.L_895d0:
	.4byte	sUnk_86D3DB0
.L_895d4:
	mov	r9, r2
	ldr	r5, .L_89808
	mov	r8, r5
	lsl	r0, r6, #3
	add	r4, r0, r1
	ldr	r5, .L_8980c
	mov	r0, ip
	sub	r6, r0, r6
.L_895e4:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #88	@ 0x58
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	add	r0, sl
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	and	r1, r5
	ldrh	r2, [r4, #2]
	ldr	r0, .L_89810
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_895e4
	mov	r6, ip
.L_8962c:
	ldr	r2, .L_89814
	ldrb	r4, [r2, #0]
	cmp	r4, #1
	beq	.L_89652
	ldr	r3, .L_89818
	ldr	r0, .L_8981c
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_89820
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #26
	cmp	r0, #0
	bge	.L_89706
.L_89652:
	ldr	r3, .L_89824
	cmp	r4, #1
	bne	.L_8965a
	ldr	r3, .L_89828
.L_8965a:
	ldr	r2, .L_8982c
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_8968a
	mov	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_8968a
	strh	r0, [r2, #2]
.L_8968a:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	ip, r0
	add	r3, #2
	mov	r5, ip
	cmp	r5, #128	@ 0x80
	ble	.L_896a0
	b	.L_898dc
.L_896a0:
	cmp	r6, ip
	bge	.L_89706
	ldr	r1, .L_89830
	ldr	r0, .L_89834
	mov	sl, r0
	mov	r2, #13
	neg	r2, r2
	mov	r9, r2
	ldr	r5, .L_89808
	mov	r8, r5
	lsl	r0, r6, #3
	add	r4, r0, r1
	ldr	r5, .L_8980c
	mov	r0, ip
	sub	r6, r0, r6
.L_896be:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #96	@ 0x60
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r1, r8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #2
	add	r0, sl
	ldr	r1, [r0, #0]
	add	r1, r2, r1
	and	r1, r5
	ldrh	r2, [r4, #2]
	ldr	r0, .L_89810
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	mov	r0, r9
	and	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_896be
	mov	r6, ip
.L_89706:
	ldr	r0, .L_89838
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r4, r0, #24
	cmp	r4, #1
	bls	.L_89732
	ldr	r3, .L_89818
	ldr	r0, .L_8981c
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_89820
	ldrb	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r1, r1, r3
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #27
	cmp	r0, #0
	bge	.L_897e2
.L_89732:
	ldr	r0, .L_89808
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_897e2
	ldr	r3, .L_8983c
	cmp	r4, #1
	bhi	.L_89742
	ldr	r3, .L_89840
.L_89742:
	ldr	r2, .L_89844
	ldrh	r1, [r2, #0]
	add	r1, #1
	strh	r1, [r2, #0]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r0, r1
	bcs	.L_89772
	mov	r0, #1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #2]
	add	r0, #1
	strh	r0, [r2, #2]
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_89772
	strh	r0, [r2, #2]
.L_89772:
	ldrh	r0, [r2, #2]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	ip, r0
	add	r3, #2
	mov	r2, ip
	cmp	r2, #128	@ 0x80
	ble	.L_89788
	b	.L_898dc
.L_89788:
	cmp	r6, ip
	bge	.L_897e2
	ldr	r1, .L_89830
	ldr	r5, .L_8980c
	mov	r8, r5
	ldr	r0, .L_89810
	mov	r9, r0
	mov	r5, #13
	neg	r5, r5
	lsl	r0, r6, #3
	add	r4, r0, r1
	sub	r6, r2, r6
.L_897a0:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #88	@ 0x58
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r1, r2, #0
	add	r1, #200	@ 0xc8
	mov	r2, r8
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, r9
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	add	r0, r5, #0
	and	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_897a0
	mov	r6, ip
.L_897e2:
	ldr	r2, .L_89848
	ldr	r0, .L_8981c
	ldrb	r1, [r0, #0]
	lsl	r1, r1, #2
	ldr	r0, .L_89820
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #4
	add	r1, r1, r0
	add	r1, r1, r2
	ldr	r1, [r1, #0]
	ldr	r0, .L_8984c
	cmp	r1, r0
	ble	.L_898d6
	ldr	r0, .L_89850
	cmp	r1, r0
	ble	.L_89858
	ldr	r0, .L_89854
	b	.L_8986e
	.align	2, 0
.L_89808:
	.4byte	gUnk_3003C4A
.L_8980c:
	.4byte	0x000001ff
.L_89810:
	.4byte	0xfffffe00
.L_89814:
	.4byte	gCollectedKeyzer
.L_89818:
	.4byte	gCurrentCollection
.L_8981c:
	.4byte	gCurrentStageNumber
.L_89820:
	.4byte	gCurrentPassage
.L_89824:
	.4byte	sUnk_86D3D08
.L_89828:
	.4byte	sUnk_86D3CF8
.L_8982c:
	.4byte	gUnk_30047AC
.L_89830:
	.4byte	gOamBuffer
.L_89834:
	.4byte	sUnk_86D36D4
.L_89838:
	.4byte	gCollectedCD
.L_8983c:
	.4byte	sUnk_86D3FD0
.L_89840:
	.4byte	sUnk_86D3F80
.L_89844:
	.4byte	gUnk_30047A8
.L_89848:
	.4byte	gHighScoreTable
.L_8984c:
	.4byte	0x00000257
.L_89850:
	.4byte	0x000003e7
.L_89854:
	.4byte	sUnk_86D4008
.L_89858:
	ldr	r0, .L_89864
	cmp	r1, r0
	ble	.L_8986c
	ldr	r0, .L_89868
	b	.L_8986e
	.align	2, 0
.L_89864:
	.4byte	0x0000031f
.L_89868:
	.4byte	sUnk_86D4018
.L_8986c:
	ldr	r0, .L_898ec
.L_8986e:
	ldr	r3, [r0, #0]
	ldrh	r0, [r3, #0]
	add	ip, r0
	add	r3, #2
	mov	r5, ip
	cmp	r5, #128	@ 0x80
	bgt	.L_898dc
	cmp	r6, ip
	bge	.L_898d6
	ldr	r1, .L_898f0
	ldr	r0, .L_898f4
	mov	r8, r0
	ldr	r2, .L_898f8
	mov	r9, r2
	mov	r5, #13
	neg	r5, r5
	lsl	r0, r6, #3
	add	r4, r0, r1
	mov	r0, ip
	sub	r6, r0, r6
.L_89896:
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r0, r2, #0
	add	r0, #48	@ 0x30
	strb	r0, [r4, #0]
	ldrh	r2, [r3, #0]
	add	r3, #2
	strh	r2, [r7, #0]
	add	r7, #2
	add	r1, r2, #0
	add	r1, #168	@ 0xa8
	mov	r2, r8
	and	r1, r2
	ldrh	r2, [r4, #2]
	mov	r0, r9
	and	r0, r2
	orr	r0, r1
	strh	r0, [r4, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r7, #0]
	add	r3, #2
	ldrb	r1, [r4, #5]
	add	r0, r5, #0
	and	r0, r1
	strb	r0, [r4, #5]
	add	r7, #4
	add	r4, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_89896
.L_898d6:
	mov	r0, ip
	ldr	r5, .L_898fc
	strb	r0, [r5, #0]
.L_898dc:
	add	sp, #12
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_898ec:
	.4byte	sUnk_86D4028
.L_898f0:
	.4byte	gOamBuffer
.L_898f4:
	.4byte	0x000001ff
.L_898f8:
	.4byte	0xfffffe00
.L_898fc:
	.4byte	gOamSlotsUsed
