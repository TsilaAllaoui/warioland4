.include "macros.s.inc"


thumb_func_start func_800FD28
func_800FD28:
	push	{r4, lr}
	ldr	r0, .L_fd84
	ldr	r4, .L_fd88
	add	r1, r4, #0
	mov	r2, #60	@ 0x3c
	bl	memcpy
	ldrb	r0, [r4, #3]
	cmp	r0, #0
	beq	.L_fd48
	ldrh	r0, [r4, #14]
	mov	r1, #48	@ 0x30
	eor	r0, r1
	mov	r1, #0
	strh	r0, [r4, #14]
	strb	r1, [r4, #3]
.L_fd48:
	mov	r0, #0
	strb	r0, [r4, #5]
	strb	r0, [r4, #8]
	strb	r0, [r4, #7]
	strb	r0, [r4, #9]
	strb	r0, [r4, #10]
	mov	r1, #0
	strh	r0, [r4, #12]
	strh	r0, [r4, #22]
	strh	r0, [r4, #24]
	strb	r1, [r4, #30]
	strb	r1, [r4, #31]
	add	r0, r4, #0
	add	r0, #58	@ 0x3a
	strb	r1, [r0, #0]
	add	r0, #1
	strb	r1, [r0, #0]
	ldrb	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_fd7e
	ldr	r0, .L_fd8c
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_fd7e
	mov	r0, #43	@ 0x2b
	bl	m4aSongNumStart
.L_fd7e:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_fd84:
	.4byte	gWarioDataCopy
.L_fd88:
	.4byte	gWarioData
.L_fd8c:
	.4byte	gUnk_3001938


thumb_func_start func_800FD90
func_800FD90:
	push	{r4, lr}
	add	r4, r0, #0
	add	r3, r1, #0
	add	r2, r3, r2
	cmp	r3, r2
	bge	.L_fdb2
	ldr	r1, .L_fdb8
	lsl	r0, r3, #1
	add	r1, r0, r1
	sub	r3, r2, r3
.L_fda4:
	ldrh	r0, [r4, #0]
	strh	r0, [r1, #0]
	add	r4, #2
	add	r1, #2
	sub	r3, #1
	cmp	r3, #0
	bne	.L_fda4
.L_fdb2:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_fdb8:
	.4byte	gWarioPalette


thumb_func_start func_800FDBC
func_800FDBC:
	push	{r4, lr}
	ldr	r2, .L_fe08
	ldrh	r3, [r2, #22]
	add	r4, r3, #0
	ldr	r0, .L_fe0c
	ldrb	r1, [r0, #1]
	mov	r0, #15
	and	r0, r1
	cmp	r0, #1
	bls	.L_fde8
	lsl	r0, r3, #16
	asr	r0, r0, #16
	cmp	r0, #40	@ 0x28
	ble	.L_fdda
	mov	r3, #40	@ 0x28
.L_fdda:
	lsl	r0, r4, #16
	asr	r0, r0, #16
	mov	r1, #40	@ 0x28
	neg	r1, r1
	cmp	r0, r1
	bge	.L_fde8
	ldr	r3, .L_fe10
.L_fde8:
	ldrh	r0, [r2, #14]
	ldrh	r2, [r2, #28]
	and	r0, r2
	cmp	r0, #0
	beq	.L_fe24
	mov	r0, #1
	and	r0, r2
	cmp	r0, #0
	beq	.L_fe14
	lsl	r1, r3, #16
	asr	r1, r1, #16
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #14
	lsr	r3, r0, #16
	b	.L_fe4a
.L_fe08:
	.4byte	gWarioData
.L_fe0c:
	.4byte	gCurrentCarriedSprite
.L_fe10:
	.4byte	0xFFD8
.L_fe14:
	lsl	r0, r3, #16
	asr	r0, r0, #14
	mov	r1, #5
	bl	__divsi3
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	b	.L_fe4a
.L_fe24:
	ldr	r1, .L_fe3c
	lsl	r0, r3, #16
	asr	r0, r0, #16
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	asr	r1, r0, #16
	cmp	r1, #128	@ 0x80
	ble	.L_fe40
	mov	r3, #128	@ 0x80
	b	.L_fe4a
.L_fe3c:
	.4byte	gUnk_30031C8
.L_fe40:
	mov	r0, #128	@ 0x80
	neg	r0, r0
	cmp	r1, r0
	bge	.L_fe4a
	ldr	r3, .L_fe54
.L_fe4a:
	lsl	r0, r3, #16
	asr	r0, r0, #16
	pop	{r4}
	pop	{r1}
	bx	r1
.L_fe54:
	.4byte	0xFF80


thumb_func_start func_800FE58
func_800FE58:
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L_fe90
	ldr	r7, .L_fe94
	ldr	r5, .L_fe98
	ldrb	r1, [r5, #8]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #1
	add	r0, r0, r7
	ldrh	r1, [r0, #0]
	ldrh	r0, [r4, #18]
	add	r1, r1, r0
	ldrh	r0, [r4, #20]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	GetBackgroundCollisionAtPosition
	asr	r0, r0, #16
	mov	r6, #255	@ 0xff
	and	r0, r6
	cmp	r0, #6
	bne	.L_fea0
	ldr	r1, .L_fe9c
	mov	r0, #32
	b	.L_ff00
.L_fe90:
	.4byte	gWarioData
.L_fe94:
	.4byte	sUnk_82DEB60
.L_fe98:
	.4byte	gUnk_3001918
.L_fe9c:
	.4byte	gUnk_30031C8
.L_fea0:
	cmp	r0, #5
	bne	.L_feb4
	ldr	r1, .L_feb0
	mov	r2, #32
	neg	r2, r2
	add	r0, r2, #0
	b	.L_ff00
	.align	2, 0
.L_feb0:
	.4byte	gUnk_30031C8
.L_feb4:
	ldrb	r1, [r5, #8]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #1
	add	r1, r7, #2
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	ldrh	r0, [r4, #18]
	add	r1, r1, r0
	ldrh	r0, [r4, #20]
	add	r0, #1
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	bl	GetBackgroundCollisionAtPosition
	asr	r0, r0, #16
	and	r0, r6
	cmp	r0, #6
	bne	.L_fee8
	ldr	r1, .L_fee4
	mov	r0, #32
	b	.L_ff00
.L_fee4:
	.4byte	gUnk_30031C8
.L_fee8:
	cmp	r0, #5
	bne	.L_fefc
	ldr	r1, .L_fef8
	mov	r2, #32
	neg	r2, r2
	add	r0, r2, #0
	b	.L_ff00
	.align	2, 0
.L_fef8:
	.4byte	gUnk_30031C8
.L_fefc:
	ldr	r1, .L_ff08
	mov	r0, #0
.L_ff00:
	strh	r0, [r1, #0]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_ff08:
	.4byte	gUnk_30031C8


thumb_func_start func_800FF0C
func_800FF0C:
	ldr	r0, .L_ff28
	ldrh	r1, [r0, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_ff34
	ldr	r1, .L_ff2c
	ldr	r2, .L_ff30
	ldrb	r0, [r1, #0]
	sub	r0, #1
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	b	.L_ff44
.L_ff28:
	.4byte	gWarioData
.L_ff2c:
	.4byte	gCurrentCarriedSprite
.L_ff30:
	.4byte	sUnk_82DEC40
.L_ff34:
	ldr	r1, .L_ff58
	ldr	r2, .L_ff5c
	ldrb	r0, [r1, #0]
	sub	r0, #1
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	neg	r0, r0
.L_ff44:
	strh	r0, [r1, #2]
	add	r2, r1, #0
	ldr	r0, .L_ff60
	ldrb	r1, [r2, #0]
	sub	r1, #1
	lsl	r1, r1, #1
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	strh	r0, [r2, #4]
	bx	lr
.L_ff58:
	.4byte	gCurrentCarriedSprite
.L_ff5c:
	.4byte	sUnk_82DEC40
.L_ff60:
	.4byte	sUnk_82DEC58


thumb_func_start func_800FF64
func_800FF64:
	push	{r4, r5, lr}
	ldr	r1, .L_ffa8
	ldrb	r0, [r1, #1]
	add	r2, r0, #0
	cmp	r2, #0
	beq	.L_ffc0
	sub	r0, #1
	strb	r0, [r1, #1]
	ldr	r5, .L_ffac
	ldrh	r2, [r5, #0]
	mov	r0, #31
	and	r0, r2
	ldr	r3, .L_ffb0
	lsl	r0, r0, #1
	add	r4, r0, r3
	ldr	r1, .L_ffb4
	ldrh	r1, [r1, #0]
	strh	r1, [r4, #0]
	add	r3, #64	@ 0x40
	add	r0, r0, r3
	ldr	r1, .L_ffb8
	ldrh	r1, [r1, #0]
	strh	r1, [r0, #0]
	add	r2, #1
	strh	r2, [r5, #0]
	lsl	r2, r2, #16
	asr	r2, r2, #16
	cmp	r2, #31
	ble	.L_ffcc
	ldr	r1, .L_ffbc
	mov	r0, #1
	strb	r0, [r1, #0]
	b	.L_ffcc
	.align	2, 0
.L_ffa8:
	.4byte	gUnk_3001938
.L_ffac:
	.4byte	gUnk_30031B8
.L_ffb0:
	.4byte	gUnk_3003138
.L_ffb4:
	.4byte	gPreviousXPosition
.L_ffb8:
	.4byte	gPreviousYPosition
.L_ffbc:
	.4byte	gUnk_30031BA
.L_ffc0:
	strb	r2, [r1, #0]
	ldr	r0, .L_ffd4
	mov	r1, #0
	strh	r2, [r0, #0]
	ldr	r0, .L_ffd8
	strb	r1, [r0, #0]
.L_ffcc:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_ffd4:
	.4byte	gUnk_30031B8
.L_ffd8:
	.4byte	gUnk_30031BA


thumb_func_start WarioProcessControls
WarioProcessControls:
	push	{r4, r5, lr}
	ldr	r1, .L_1006c
	mov	r0, #0
	strb	r0, [r1, #14]
	strb	r0, [r1, #15]
	strb	r0, [r1, #16]
	ldr	r0, .L_10070
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	ldr	r5, .L_10074
	cmp	r0, #1
	ble	.L_10002
	ldrb	r0, [r5, #30]
	add	r0, #1
	strb	r0, [r5, #30]
	ldr	r1, .L_10078
	ldrb	r0, [r1, #1]
	add	r0, #1
	strb	r0, [r1, #1]
.L_10002:
	ldr	r1, .L_1007c
	add	r4, r5, #0
	ldrb	r0, [r4, #0]
	strb	r0, [r1, #0]
	ldr	r1, .L_10080
	ldrh	r0, [r4, #18]
	strh	r0, [r1, #0]
	ldr	r1, .L_10084
	ldrh	r0, [r4, #20]
	strh	r0, [r1, #0]
	ldr	r1, .L_10088
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	lsl	r0, r0, #24
	lsr	r2, r0, #24
	cmp	r2, #255	@ 0xff
	beq	.L_1003c
	ldr	r0, .L_1008c
	ldrb	r1, [r4, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r1, [r1, #0]
	add	r0, r2, #0
	bl	_call_via_r1
.L_1003c:
	ldr	r1, .L_10090
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	ldr	r1, .L_10094
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	ldr	r0, .L_10098
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_10064
	bl	func_800FF0C
.L_10064:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1006c:
	.4byte	gUnk_3001918
.L_10070:
	.4byte	gSubGameMode
.L_10074:
	.4byte	gWarioData
.L_10078:
	.4byte	gUnk_3001930
.L_1007c:
	.4byte	gUnk_30019F1
.L_10080:
	.4byte	gPreviousXPosition
.L_10084:
	.4byte	gPreviousYPosition
.L_10088:
	.4byte	sWarioPoseHandlerTable
.L_1008c:
	.4byte	sWarioPoseRequestFuncTable
.L_10090:
	.4byte	sUnk_82DED90
.L_10094:
	.4byte	sUnk_82DECD0
.L_10098:
	.4byte	gCurrentCarriedSprite


thumb_func_start WarioProcessCollision
WarioProcessCollision:
	push	{r4, r5, r6, lr}
	ldr	r1, .L_100d0
	mov	r5, #0
	mov	r0, #0
	strh	r0, [r1, #0]
	strh	r0, [r1, #2]
	strb	r5, [r1, #18]
	strb	r5, [r1, #19]
	strb	r5, [r1, #20]
	ldr	r0, .L_100d4
	strb	r5, [r0, #0]
	ldr	r2, .L_100d8
	ldr	r0, .L_100dc
	ldrh	r4, [r2, #18]
	ldrh	r0, [r0, #0]
	add	r3, r1, #0
	add	r6, r2, #0
	cmp	r4, r0
	bls	.L_100e4
	mov	r0, #16
	strh	r0, [r3, #0]
	mov	r0, #1
	strb	r0, [r3, #4]
	strb	r5, [r3, #5]
	ldr	r0, .L_100e0
	b	.L_1010c
.L_100d0:
	.4byte	gUnk_3001918
.L_100d4:
	.4byte	gUnk_30031BB
.L_100d8:
	.4byte	gWarioData
.L_100dc:
	.4byte	gPreviousXPosition
.L_100e0:
	.4byte	0xFFFF
.L_100e4:
	cmp	r4, r0
	bcc	.L_10100
	ldrh	r1, [r6, #14]
	mov	r0, #16
	and	r0, r1
	cmp	r0, #0
	beq	.L_10104
	mov	r0, #1
	strb	r0, [r3, #4]
	strb	r5, [r3, #5]
	ldr	r0, .L_100fc
	b	.L_1010c
.L_100fc:
	.4byte	0xFFFF
.L_10100:
	mov	r0, #32
	strh	r0, [r3, #0]
.L_10104:
	strb	r5, [r3, #4]
	mov	r0, #1
	strb	r0, [r3, #5]
	mov	r0, #64	@ 0x40
.L_1010c:
	strh	r0, [r3, #6]
	ldr	r0, .L_1011c
	ldrh	r1, [r6, #20]
	ldrh	r0, [r0, #0]
	cmp	r1, r0
	bls	.L_10120
	mov	r0, #128	@ 0x80
	b	.L_10126
.L_1011c:
	.4byte	gPreviousYPosition
.L_10120:
	cmp	r1, r0
	bcs	.L_10128
	mov	r0, #64	@ 0x40
.L_10126:
	strh	r0, [r3, #2]
.L_10128:
	ldr	r1, .L_1014c
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	ldr	r1, .L_10150
	ldrb	r0, [r6, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_1014c:
	.4byte	sUnk_82DED00
.L_10150:
	.4byte	sUnk_82DED90


thumb_func_start func_8010154
func_8010154:
	push	{r4, r5, lr}
	ldr	r2, .L_10178
	ldrb	r1, [r2, #0]
	ldr	r5, .L_1017c
	cmp	r1, #0
	bne	.L_10182
	ldrb	r0, [r5, #1]
	sub	r0, #36	@ 0x24
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #1
	bhi	.L_10180
	ldrb	r1, [r2, #1]
	mov	r0, #128	@ 0x80
	and	r0, r1
	strb	r0, [r2, #1]
	b	.L_10182
	.align	2, 0
.L_10178:
	.4byte	gCurrentCarriedSprite
.L_1017c:
	.4byte	gWarioData
.L_10180:
	strb	r1, [r2, #1]
.L_10182:
	add	r4, r5, #0
	ldrh	r1, [r4, #14]
	mov	r0, #16
	and	r0, r1
	mov	r2, #1
	cmp	r0, #0
	beq	.L_10192
	mov	r2, #0
.L_10192:
	ldr	r1, .L_101b8
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r1, [r0, #0]
	add	r0, r2, #0
	bl	_call_via_r1
	ldrb	r0, [r4, #0]
	cmp	r0, #1
	bne	.L_101c0
	ldr	r0, .L_101bc
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0
	bne	.L_101ca
	strh	r0, [r4, #28]
	b	.L_101ca
.L_101b8:
	.4byte	sUnk_82DED30
.L_101bc:
	.4byte	gUnk_30031BD
.L_101c0:
	ldrb	r0, [r5, #26]
	cmp	r0, #2
	bne	.L_101ca
	mov	r0, #0
	strh	r0, [r5, #28]
.L_101ca:
	pop	{r4, r5}
	pop	{r0}
	bx	r0


thumb_func_start func_80101D0
func_80101D0:
	push	{lr}
	ldr	r0, .L_1021c
	ldrb	r0, [r0, #0]
	ldr	r1, .L_10220
	cmp	r0, #0
	beq	.L_101e2
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_101f0
.L_101e2:
	ldr	r0, .L_10224
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	ldr	r0, [r1, #0]
	bl	_call_via_r0
.L_101f0:
	ldr	r0, .L_10228
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	blt	.L_10204
	cmp	r0, #1
	ble	.L_10218
	cmp	r0, #6
	bgt	.L_10204
	cmp	r0, #4
	bge	.L_10218
.L_10204:
	ldr	r0, .L_10220
	ldrb	r0, [r0, #4]
	cmp	r0, #95	@ 0x5f
	bne	.L_10218
	ldr	r0, .L_1022c
	bl	m4aSongNumStart
	mov	r0, #0
	bl	VoiceSetPlay
.L_10218:
	pop	{r0}
	bx	r0
.L_1021c:
	.4byte	gSwitchPressed
.L_10220:
	.4byte	gWarioData
.L_10224:
	.4byte	sUnk_82DED60
.L_10228:
	.4byte	gUnk_30019F1
.L_1022c:
	.4byte	0x15F


thumb_func_start func_8010230
func_8010230:
	push	{lr}
	bl	func_800FD28
	ldr	r2, .L_10268
	ldr	r0, .L_1026c
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	str	r1, [r2, #4]
	ldr	r2, .L_10270
	ldr	r0, .L_10274
	ldr	r1, [r0, #4]
.L_10248:
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	str	r1, [r2, #4]
	ldr	r1, .L_10278
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r0, .L_1027c
	ldrb	r0, [r0, #1]
	sub	r0, #23
	cmp	r0, #16
	bhi	.L_102d0
	lsl	r0, r0, #2
.L_10260:
	ldr	r1, .L_10280
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_10268:
	.4byte	gUnk_3001930
.L_1026c:
	.4byte	sUnk_82DD0EC
.L_10270:
	.4byte	gCurrentWarioEffect
.L_10274:
	.4byte	sStartingWarioEffect
.L_10278:
	.4byte	gCurrentCarriedSprite
.L_1027c:
	.4byte	gWarioDataCopy
.L_10280:
	.4byte	.L_10284
.L_10284:
	.4byte	.L_102c8
	.4byte	.L_102d0
	.4byte	.L_102c8
	.4byte	.L_102d0
	.4byte	.L_102c8
	.4byte	.L_102c8
	.4byte	.L_102d0
	.4byte	.L_102d0
	.4byte	.L_102d0
	.4byte	.L_102d0
	.4byte	.L_102d0
	.4byte	.L_102d0
	.4byte	.L_102c8
	.4byte	.L_102d0
	.4byte	.L_102d0
	.4byte	.L_102d0
	.4byte	.L_102c8
.L_102c8:
	ldr	r0, .L_102d4
	ldr	r0, [r0, #36]	@ 0x24
	bl	MPlayStop
.L_102d0:
	pop	{r0}
	bx	r0
.L_102d4:
	.4byte	gMPlayTable
