.include "macros.s.inc"


thumb_func_start func_806DAC0
func_806DAC0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #20
	lsl	r3, r0, #16
	lsr	r0, r3, #16
	str	r0, [sp, #12]
	lsl	r4, r1, #16
	lsr	r1, r4, #16
	str	r1, [sp, #16]
	ldr	r1, .L_6db00
	mov	r0, #0
	strh	r0, [r1, #0]
	strh	r0, [r1, #2]
	ldr	r2, .L_6db04
	ldrh	r0, [r2, #14]
	lsl	r0, r0, #6
	add	r7, r1, #0
	mov	r9, r2
	ldr	r1, [sp, #12]
	cmp	r1, r0
	bge	.L_6dafa
	ldrh	r0, [r2, #12]
	lsl	r0, r0, #6
	ldr	r1, [sp, #16]
	cmp	r1, r0
	blt	.L_6db08
.L_6dafa:
	mov	r0, #0
	b	.L_6dd34
	.align	2, 0
.L_6db00:
	.4byte	gUnk_30000A0
.L_6db04:
	.4byte	gBackgroundInfo
.L_6db08:
	lsr	r3, r3, #22
	mov	r8, r3
	lsr	r4, r4, #22
	mov	ip, r4
	ldr	r3, .L_6db50
	mov	sl, r3
	ldr	r0, .L_6db54
	ldr	r5, [r0, #8]
	add	r6, sp, #4
	mov	r3, r9
	add	r3, #8
	mov	r4, #1
.L_6db20:
	ldrh	r0, [r3, #4]
	mov	r1, r8
	mul	r1, r0
	add	r0, r1, #0
	mov	r1, ip
	add	r2, r0, r1
	ldr	r1, [r3, #0]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r2, [r0, #0]
	lsl	r0, r2, #1
	add	r0, r0, r5
	ldrh	r0, [r0, #0]
	stmia	r6!, {r0}
	add	r3, #8
	sub	r4, #1
	cmp	r4, #0
	bge	.L_6db20
	mov	r2, #0
	ldr	r5, [sp, #4]
	cmp	r5, #106	@ 0x6a
	bne	.L_6db58
	mov	r2, #5
	b	.L_6dc40
.L_6db50:
	.4byte	gCurrentRoomHeader
.L_6db54:
	.4byte	gUnk_30031F4
.L_6db58:
	cmp	r5, #107	@ 0x6b
	bne	.L_6db60
	mov	r2, #6
	b	.L_6dc40
.L_6db60:
	cmp	r5, #104	@ 0x68
	beq	.L_6dbc4
	cmp	r5, #4
	bne	.L_6db6c
	mov	r2, #7
	b	.L_6dc40
.L_6db6c:
	cmp	r5, #5
	bne	.L_6db74
	mov	r2, #8
	b	.L_6dc40
.L_6db74:
	cmp	r5, #6
	bne	.L_6db7c
	mov	r2, #9
	b	.L_6dc40
.L_6db7c:
	cmp	r5, #7
	bne	.L_6db84
	mov	r2, #10
	b	.L_6dc40
.L_6db84:
	cmp	r5, #121	@ 0x79
	beq	.L_6dbb4
	cmp	r5, #123	@ 0x7b
	beq	.L_6dbbc
	cmp	r5, #2
	beq	.L_6dc08
	cmp	r5, #122	@ 0x7a
	beq	.L_6dbcc
	add	r0, r5, #0
	sub	r0, #89	@ 0x59
	cmp	r0, #4
	bhi	.L_6db9e
	mov	r2, #11
.L_6db9e:
	cmp	r2, #0
	bne	.L_6dc40
	mov	r3, sl
	ldrb	r0, [r3, #3]
	cmp	r0, #16
	bne	.L_6dc40
	ldr	r3, [sp, #8]
	cmp	r3, #2
	beq	.L_6dc08
	cmp	r3, #121	@ 0x79
	bne	.L_6dbb8
.L_6dbb4:
	mov	r2, #2
	b	.L_6dc40
.L_6dbb8:
	cmp	r3, #123	@ 0x7b
	bne	.L_6dbc0
.L_6dbbc:
	mov	r2, #4
	b	.L_6dc40
.L_6dbc0:
	cmp	r3, #104	@ 0x68
	bne	.L_6dbc8
.L_6dbc4:
	mov	r2, #11
	b	.L_6dc40
.L_6dbc8:
	cmp	r3, #122	@ 0x7a
	bne	.L_6dbd0
.L_6dbcc:
	mov	r2, #3
	b	.L_6dc40
.L_6dbd0:
	add	r0, r3, #0
	sub	r0, #56	@ 0x38
	cmp	r0, #7
	bhi	.L_6dc10
	add	r4, r3, #0
	sub	r4, #55	@ 0x37
	cmp	r4, #3
	bgt	.L_6dbf4
	ldr	r0, .L_6dbf0
	add	r0, r4, r0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6dc08
	cmp	r0, #3
	bne	.L_6dc40
	b	.L_6dc08
.L_6dbf0:
	.4byte	gSwitchStates
.L_6dbf4:
	ldr	r1, .L_6dc0c
	add	r0, r3, #0
	sub	r0, #59	@ 0x3b
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	sub	r0, #1
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_6dc40
.L_6dc08:
	mov	r2, #1
	b	.L_6dc40
.L_6dc0c:
	.4byte	gSwitchStates
.L_6dc10:
	add	r0, r3, #0
	sub	r0, #152	@ 0x98
	cmp	r0, #3
	bhi	.L_6dc40
	add	r4, r0, #0
	ldr	r0, .L_6dc34
	ldrb	r1, [r0, #1]
	mov	r6, #1
	add	r0, r6, #0
	and	r0, r1
	cmp	r0, #0
	bne	.L_6dc38
	cmp	r4, #1
	bgt	.L_6dc40
	add	r2, r3, #0
	sub	r2, #150	@ 0x96
	b	.L_6dc40
	.align	2, 0
.L_6dc34:
	.4byte	gSwitchStates
.L_6dc38:
	cmp	r4, #1
	ble	.L_6dc40
	and	r4, r6
	add	r2, r4, #2
.L_6dc40:
	strh	r2, [r7, #0]
	mov	r2, #0
	mov	r4, #0
	mov	r1, sl
	ldrb	r0, [r1, #26]
	cmp	r0, #7
	bls	.L_6dc54
	ldrb	r0, [r1, #1]
	cmp	r0, #16
	bls	.L_6dc60
.L_6dc54:
	add	r0, r5, #0
	sub	r0, #76	@ 0x4c
	cmp	r0, #12
	bhi	.L_6dd1a
	mov	r2, #1
	b	.L_6dd1a
.L_6dc60:
	cmp	r0, #0
	beq	.L_6dd1a
	mov	r1, r9
	ldrh	r0, [r1, #6]
	lsl	r0, r0, #6
	ldr	r3, [sp, #12]
	cmp	r3, r0
	bge	.L_6dc7a
	ldrh	r1, [r1, #4]
	lsl	r0, r1, #6
	ldr	r3, [sp, #16]
	cmp	r3, r0
	blt	.L_6dc80
.L_6dc7a:
	ldrh	r0, [r7, #0]
	lsl	r0, r0, #16
	b	.L_6dd34
.L_6dc80:
	mov	r0, r8
	mul	r0, r1
	add	r0, ip
	mov	r3, r9
	ldr	r1, [r3, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	ldr	r3, .L_6dcb0
	ldr	r1, [r3, #8]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	str	r1, [sp, #0]
	add	r0, r1, #0
	sub	r0, #76	@ 0x4c
	cmp	r0, #12
	bhi	.L_6dd1a
	mov	r2, #1
	cmp	r1, #81	@ 0x51
	bne	.L_6dcb4
	mov	r4, #12
	b	.L_6dcea
	.align	2, 0
.L_6dcb0:
	.4byte	gUnk_30031F4
.L_6dcb4:
	cmp	r1, #82	@ 0x52
	bne	.L_6dcbc
	mov	r4, #13
	b	.L_6dcea
.L_6dcbc:
	cmp	r1, #83	@ 0x53
	bne	.L_6dcc4
	mov	r4, #14
	b	.L_6dcea
.L_6dcc4:
	cmp	r1, #84	@ 0x54
	bne	.L_6dccc
	mov	r4, #15
	b	.L_6dcea
.L_6dccc:
	cmp	r1, #85	@ 0x55
	bne	.L_6dcd4
	mov	r4, #16
	b	.L_6dcea
.L_6dcd4:
	cmp	r1, #86	@ 0x56
	bne	.L_6dcdc
	mov	r4, #17
	b	.L_6dcea
.L_6dcdc:
	cmp	r1, #87	@ 0x57
	bne	.L_6dce4
	mov	r4, #18
	b	.L_6dcea
.L_6dce4:
	cmp	r1, #88	@ 0x58
	bne	.L_6dcea
	mov	r4, #19
.L_6dcea:
	ldr	r0, .L_6dd00
	ldrb	r1, [r0, #4]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_6dd1a
	ldr	r0, [sp, #0]
	cmp	r0, #76	@ 0x4c
	bne	.L_6dd04
	mov	r4, #12
	b	.L_6dd1a
.L_6dd00:
	.4byte	gSwitchStates
.L_6dd04:
	cmp	r0, #77	@ 0x4d
	bne	.L_6dd0c
	mov	r4, #17
	b	.L_6dd1a
.L_6dd0c:
	cmp	r0, #78	@ 0x4e
	bne	.L_6dd14
	mov	r4, #18
	b	.L_6dd1a
.L_6dd14:
	cmp	r0, #79	@ 0x4f
	bne	.L_6dd1a
	mov	r4, #19
.L_6dd1a:
	cmp	r2, #1
	bne	.L_6dd2a
	cmp	r4, #0
	bne	.L_6dd28
	ldrh	r0, [r7, #0]
	cmp	r0, #1
	beq	.L_6dd2a
.L_6dd28:
	strh	r4, [r7, #0]
.L_6dd2a:
	strh	r2, [r7, #2]
	ldrh	r0, [r7, #0]
	lsl	r0, r0, #16
	ldrh	r1, [r7, #2]
	orr	r0, r1
.L_6dd34:
	add	sp, #20
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_806DD44
func_806DD44:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r5, r0, #0
	lsl	r1, r1, #16
	lsr	r2, r1, #16
	add	r6, r2, #0
	ldr	r1, .L_6dd70
	mov	r0, #0
	strh	r0, [r1, #4]
	mov	r3, #0
	ldr	r4, .L_6dd74
	add	r7, r1, #0
	ldrh	r0, [r4, #14]
	cmp	r5, r0
	bcs	.L_6dd6a
	ldrh	r0, [r4, #12]
	cmp	r2, r0
	bcc	.L_6dd78
.L_6dd6a:
	mov	r0, #0
	b	.L_6dddc
	.align	2, 0
.L_6dd70:
	.4byte	gUnk_30000A0
.L_6dd74:
	.4byte	gBackgroundInfo
.L_6dd78:
	ldrh	r0, [r4, #20]
	mul	r0, r5
	add	r2, r0, r6
	ldr	r1, [r4, #16]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r2, [r0, #0]
	ldr	r0, .L_6ddc8
	ldr	r1, [r0, #8]
	lsl	r0, r2, #1
	add	r0, r0, r1
	ldrh	r2, [r0, #0]
	add	r0, r2, #0
	sub	r0, #96	@ 0x60
	cmp	r0, #7
	bhi	.L_6ddcc
	mov	r3, #1
	cmp	r2, #96	@ 0x60
	beq	.L_6ddd8
	mov	r3, #2
	cmp	r2, #97	@ 0x61
	beq	.L_6ddd8
	mov	r3, #3
	cmp	r2, #98	@ 0x62
	beq	.L_6ddd8
	mov	r3, #4
	cmp	r2, #99	@ 0x63
	beq	.L_6ddd8
	mov	r3, #5
	cmp	r2, #100	@ 0x64
	beq	.L_6ddd8
	mov	r3, #6
	cmp	r2, #101	@ 0x65
	beq	.L_6ddd8
	mov	r3, #8
	cmp	r2, #102	@ 0x66
	bne	.L_6ddd8
	mov	r3, #7
	b	.L_6ddd8
	.align	2, 0
.L_6ddc8:
	.4byte	gUnk_30031F4
.L_6ddcc:
	add	r0, r2, #0
	sub	r0, #132	@ 0x84
	cmp	r0, #10
	bhi	.L_6ddd8
	add	r3, r2, #0
	sub	r3, #123	@ 0x7b
.L_6ddd8:
	strh	r3, [r7, #4]
	add	r0, r3, #0
.L_6dddc:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_806DDE4
func_806DDE4:
	push	{r4, r5, r6, r7, lr}
	add	r2, r0, #0
	lsl	r2, r2, #16
	lsr	r4, r2, #16
	lsl	r1, r1, #16
	lsr	r3, r1, #16
	mov	r6, #0
	ldr	r1, .L_6de64
	mov	r5, #0
	ldrsh	r2, [r1, r5]
	add	r7, r1, #0
	cmp	r2, #2
	bne	.L_6de86
	ldr	r1, .L_6de68
	ldr	r0, .L_6de6c
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r2, [r0, #0]
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_6de84
	ldr	r5, .L_6de70
.L_6de12:
	cmp	r0, #2
	bne	.L_6de7c
	ldr	r1, .L_6de74
	ldrb	r0, [r2, #1]
	ldrb	r1, [r1, #0]
	cmp	r0, r1
	bne	.L_6de7c
	ldrb	r0, [r2, #2]
	cmp	r0, r3
	bhi	.L_6de7c
	ldrb	r0, [r2, #3]
	cmp	r3, r0
	bhi	.L_6de7c
	ldrb	r0, [r2, #4]
	cmp	r0, r4
	bhi	.L_6de7c
	ldrb	r0, [r2, #5]
	cmp	r4, r0
	bhi	.L_6de7c
	ldrb	r0, [r2, #6]
	strb	r0, [r5, #0]
	mov	r0, #3
	strh	r0, [r7, #0]
	mov	r0, #0
	bl	func_806DFD8
	mov	r0, #0
	bl	func_806DF3C
	mov	r0, #2
	bl	func_806E01C
	ldrb	r0, [r5, #0]
	cmp	r0, #0
	bne	.L_6de5e
	ldr	r1, .L_6de78
	mov	r0, #6
	strb	r0, [r1, #0]
.L_6de5e:
	mov	r6, #1
	b	.L_6de84
	.align	2, 0
.L_6de64:
	.4byte	gSubGameMode
.L_6de68:
	.4byte	sRoomStartDataTables
.L_6de6c:
	.4byte	gUnk_3000023
.L_6de70:
	.4byte	gUnk_3000025
.L_6de74:
	.4byte	gCurrentRoom
.L_6de78:
	.4byte	gStageExitType
.L_6de7c:
	add	r2, #12
	ldrb	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_6de12
.L_6de84:
	add	r0, r6, #0
.L_6de86:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1


thumb_func_start func_806DE8C
func_806DE8C:
	push	{r4, r5, r6, r7, lr}
	lsl	r2, r0, #16
	lsl	r3, r1, #16
	ldr	r0, .L_6deb0
	mov	r4, #0
	ldrsh	r1, [r0, r4]
	add	r7, r0, #0
	cmp	r1, #2
	bne	.L_6df34
	lsr	r5, r2, #22
	lsr	r2, r3, #22
	ldr	r1, .L_6deb4
	ldr	r0, .L_6deb8
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r4, [r0, #0]
	b	.L_6df2e
.L_6deb0:
	.4byte	gSubGameMode
.L_6deb4:
	.4byte	sRoomStartDataTables
.L_6deb8:
	.4byte	gUnk_3000023
.L_6debc:
	mov	r6, #0
	cmp	r0, #1
	beq	.L_6ded0
	cmp	r0, #3
	beq	.L_6ded0
	cmp	r0, #4
	beq	.L_6ded0
	cmp	r0, #5
	bne	.L_6df2c
	mov	r6, #1
.L_6ded0:
	ldr	r1, .L_6df20
	ldrb	r0, [r4, #1]
	ldrb	r1, [r1, #0]
	cmp	r0, r1
	bne	.L_6df2c
	ldrb	r0, [r4, #2]
	cmp	r0, r2
	bhi	.L_6df2c
	ldrb	r0, [r4, #3]
	cmp	r2, r0
	bhi	.L_6df2c
	ldrb	r0, [r4, #4]
	cmp	r0, r5
	bhi	.L_6df2c
	ldrb	r0, [r4, #5]
	cmp	r5, r0
	bhi	.L_6df2c
	ldr	r1, .L_6df24
	ldrb	r0, [r4, #6]
	strb	r0, [r1, #0]
	mov	r0, #3
	strh	r0, [r7, #0]
	mov	r0, #0
	bl	func_806DFD8
	mov	r0, #0
	bl	func_806DF3C
	ldrb	r0, [r4, #0]
	bl	func_806E01C
	cmp	r6, #0
	beq	.L_6df34
	bl	FadeOutMusicForPause
	ldr	r1, .L_6df28
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_6df34
	.align	2, 0
.L_6df20:
	.4byte	gCurrentRoom
.L_6df24:
	.4byte	gUnk_3000025
.L_6df28:
	.4byte	gUnk_3000C37
.L_6df2c:
	add	r4, #12
.L_6df2e:
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_6debc
.L_6df34:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_806DF3C
func_806DF3C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	mov	r8, r0
	ldr	r0, .L_6dfcc
	ldrb	r1, [r0, #0]
	mov	sl, r0
	cmp	r1, #0
	beq	.L_6dfbc
	add	r7, r1, #0
	cmp	r7, #0
	beq	.L_6dfb2
	ldr	r0, .L_6dfd0
	mov	r9, r0
	ldr	r1, [r0, #8]
	mov	ip, r1
	lsl	r0, r7, #1
	ldr	r1, .L_6dfd4
	add	r5, r0, r1
.L_6df6a:
	sub	r5, #2
	ldrh	r2, [r5, #0]
	sub	r5, #2
	sub	r7, #2
	ldrh	r3, [r5, #0]
	mov	r1, r9
	ldrh	r0, [r1, #12]
	add	r0, r3, r0
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	mov	r1, r8
	add	r0, r2, r1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	mov	r6, #1
.L_6df88:
	lsl	r0, r3, #1
	add	r0, ip
	strh	r2, [r0, #0]
	lsl	r0, r4, #1
	add	r0, ip
	add	r1, r2, #4
	strh	r1, [r0, #0]
	add	r0, r2, #2
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	add	r0, r3, #1
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	add	r0, r4, #1
	lsl	r0, r0, #16
	lsr	r4, r0, #16
	sub	r6, #1
	cmp	r6, #0
	bge	.L_6df88
	cmp	r7, #0
	bne	.L_6df6a
.L_6dfb2:
	mov	r0, r8
	cmp	r0, #0
	bne	.L_6dfbc
	mov	r1, sl
	strb	r0, [r1, #0]
.L_6dfbc:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6dfcc:
	.4byte	gUnk_300342C
.L_6dfd0:
	.4byte	gBackgroundInfo
.L_6dfd4:
	.4byte	0x2039F80


thumb_func_start func_806DFD8
func_806DFD8:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	ldr	r5, .L_6e014
	ldr	r6, .L_6e018
	mov	r4, #63	@ 0x3f
	mov	r0, #255	@ 0xff
	mov	ip, r0
.L_6dfe8:
	ldrh	r2, [r5, #0]
	lsl	r3, r2, #16
	cmp	r3, #0
	beq	.L_6e004
	ldrh	r1, [r6, #12]
	mov	r0, ip
	and	r0, r2
	mul	r0, r1
	lsr	r1, r3, #24
	add	r0, r0, r1
	ldr	r1, [r6, #8]
	lsl	r0, r0, #1
	add	r0, r0, r1
	strh	r7, [r0, #0]
.L_6e004:
	add	r5, #2
	sub	r4, #1
	cmp	r4, #0
	bge	.L_6dfe8
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6e014:
	.4byte	0x2039F00
.L_6e018:
	.4byte	gBackgroundInfo


thumb_func_start func_806E01C
func_806E01C:
	push	{r4, lr}
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	beq	.L_6e02a
	cmp	r0, #5
	bne	.L_6e040
.L_6e02a:
	ldr	r1, .L_6e038
	mov	r0, #0
	strb	r0, [r1, #4]
	ldr	r1, .L_6e03c
	mov	r0, #5
	strb	r0, [r1, #0]
	b	.L_6e082
.L_6e038:
	.4byte	gWindow
.L_6e03c:
	.4byte	gColorFading
.L_6e040:
	cmp	r0, #4
	bne	.L_6e074
	ldr	r1, .L_6e064
	mov	r4, #0
	strb	r4, [r1, #2]
	mov	r0, #2
	strb	r0, [r1, #0]
	bl	func_80701F4
	ldr	r1, .L_6e068
	mov	r0, #6
	strh	r0, [r1, #0]
	ldr	r0, .L_6e06c
	strb	r4, [r0, #0]
	ldr	r1, .L_6e070
	mov	r0, #128	@ 0x80
	strb	r0, [r1, #0]
	b	.L_6e082
.L_6e064:
	.4byte	gColorFading
.L_6e068:
	.4byte	gSubGameMode
.L_6e06c:
	.4byte	gUnk_3000021
.L_6e070:
	.4byte	gStageExitType
.L_6e074:
	ldr	r0, .L_6e088
	mov	r1, #0
	strb	r1, [r0, #2]
	mov	r1, #2
	strb	r1, [r0, #0]
	bl	func_80701F4
.L_6e082:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_6e088:
	.4byte	gColorFading
