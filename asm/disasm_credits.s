.include "macros.s.inc"


thumb_func_start CreditsSubroutine
CreditsSubroutine:
	push	{r4, r5, lr}
	bl	func_8093084
	mov	r5, #0
	ldr	r4, .L_92ff4
	ldrb	r0, [r4, #0]
	cmp	r0, #1
	beq	.L_93004
	cmp	r0, #1
	bgt	.L_92ff8
	cmp	r0, #0
	beq	.L_92ffe
	b	.L_9303e
	.align	2, 0
.L_92ff4:
	.4byte	gUnk_3004B24
.L_92ff8:
	cmp	r0, #2
	beq	.L_9302e
	b	.L_9303e
.L_92ffe:
	bl	func_809329C
	b	.L_93036
.L_93004:
	ldr	r1, .L_9301c
	ldrb	r0, [r1, #5]
	cmp	r0, #29
	bls	.L_93028
	ldr	r2, .L_93020
	ldrh	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_93024
	sub	r0, #1
	strh	r0, [r2, #0]
	b	.L_93066
	.align	2, 0
.L_9301c:
	.4byte	gUnk_3004B04
.L_93020:
	.4byte	gBldy
.L_93024:
	strb	r5, [r1, #5]
	b	.L_93036
.L_93028:
	add	r0, #1
	strb	r0, [r1, #5]
	b	.L_93066
.L_9302e:
	bl	func_80946AC
	cmp	r0, #0
	beq	.L_93066
.L_93036:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	b	.L_93066
.L_9303e:
	ldr	r0, .L_93058
	ldrb	r0, [r0, #0]
	mov	r1, #3
	and	r1, r0
	cmp	r1, #0
	bne	.L_93066
	ldr	r2, .L_9305c
	ldrh	r0, [r2, #0]
	cmp	r0, #15
	bhi	.L_93060
	add	r0, #1
	strh	r0, [r2, #0]
	b	.L_93066
.L_93058:
	.4byte	gMainTimer
.L_9305c:
	.4byte	gBldy
.L_93060:
	ldr	r0, .L_93080
	strb	r1, [r0, #0]
	mov	r5, #1
.L_93066:
	ldr	r0, .L_93080
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_93076
	bl	func_80938EC
	bl	ResetFreeOam
.L_93076:
	add	r0, r5, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_93080:
	.4byte	gUnk_3004B24


thumb_func_start func_8093084
func_8093084:
	push	{lr}
	ldr	r0, .L_930a0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	blt	.L_930a8
	cmp	r0, #1
	ble	.L_93096
	cmp	r0, #3
	bne	.L_930a8
.L_93096:
	ldr	r0, .L_930a4
	bl	InterruptCallbackSetVBlank
	b	.L_930ae
	.align	2, 0
.L_930a0:
	.4byte	gUnk_3004B24
.L_930a4:
	.4byte	func_80930B8
.L_930a8:
	ldr	r0, .L_930b4
	bl	InterruptCallbackSetVBlank
.L_930ae:
	pop	{r0}
	bx	r0
	.align	2, 0
.L_930b4:
	.4byte	func_809315C


thumb_func_start func_80930B8
func_80930B8:
	push	{lr}
	bl	m4aSoundVSync
	ldr	r1, .L_9312c
	ldr	r0, .L_93130
	str	r0, [r1, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_93134
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #128	@ 0x80
	ldr	r0, .L_93138
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	ldr	r1, .L_9313c
	ldrh	r0, [r1, #0]
	add	r0, #4
	ldr	r3, .L_93140
	add	r2, r3, #0
	and	r0, r2
	strh	r0, [r1, #0]
	ldr	r0, .L_93144
	ldrb	r1, [r0, #0]
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	bne	.L_930fc
	ldr	r1, .L_93148
	ldrh	r0, [r1, #0]
	add	r0, #1
	and	r0, r2
	strh	r0, [r1, #0]
.L_930fc:
	ldr	r0, .L_9314c
	mov	r2, #0
	strh	r2, [r0, #0]
	ldr	r1, .L_93150
	ldr	r0, .L_93154
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, .L_93148
	ldrh	r3, [r0, #0]
	strh	r3, [r1, #0]
	ldr	r0, .L_93158
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r3, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_9312c:
	.4byte	0x040000d4
.L_93130:
	.4byte	gOamBuffer
.L_93134:
	.4byte	0x84000100
.L_93138:
	.4byte	gBldy
.L_9313c:
	.4byte	gUnk_3001876
.L_93140:
	.4byte	0x000001ff
.L_93144:
	.4byte	gMainTimer
.L_93148:
	.4byte	gBg1XPosition
.L_9314c:
	.4byte	0x04000010
.L_93150:
	.4byte	0x04000012
.L_93154:
	.4byte	gUnk_3001878
.L_93158:
	.4byte	0x04000016


thumb_func_start func_809315C
func_809315C:
	push	{r4, lr}
	bl	m4aSoundVSync
	ldr	r1, .L_93218
	ldr	r0, .L_9321c
	str	r0, [r1, #0]
	mov	r0, #224	@ 0xe0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_93220
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r4, .L_93224
	ldr	r2, .L_93228
	ldrb	r0, [r2, #4]
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_9322c
	str	r0, [r1, #4]
	ldr	r3, .L_93230
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	ldrb	r0, [r2, #4]
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldr	r0, [r0, #0]
	add	r0, #96	@ 0x60
	str	r0, [r1, #0]
	ldr	r0, .L_93234
	str	r0, [r1, #4]
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	ldrb	r0, [r2, #4]
	lsl	r0, r0, #2
	add	r0, r0, r4
	ldr	r0, [r0, #0]
	add	r0, #192	@ 0xc0
	str	r0, [r1, #0]
	ldr	r0, .L_93238
	str	r0, [r1, #4]
	str	r3, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_9323c
	ldr	r0, .L_93240
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #8
	ldr	r1, .L_93244
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_93248
	ldrh	r0, [r1, #0]
	add	r0, #4
	ldr	r3, .L_9324c
	add	r2, r3, #0
	and	r0, r2
	strh	r0, [r1, #0]
	ldr	r0, .L_93250
	ldrb	r1, [r0, #0]
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	bne	.L_931e8
	ldr	r1, .L_93254
	ldrh	r0, [r1, #0]
	add	r0, #1
	and	r0, r2
	strh	r0, [r1, #0]
.L_931e8:
	ldr	r0, .L_93258
	mov	r2, #0
	strh	r2, [r0, #0]
	ldr	r1, .L_9325c
	ldr	r0, .L_93260
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r0, .L_93254
	ldrh	r3, [r0, #0]
	strh	r3, [r1, #0]
	ldr	r0, .L_93264
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r3, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_93218:
	.4byte	0x040000d4
.L_9321c:
	.4byte	gOamBuffer
.L_93220:
	.4byte	0x84000100
.L_93224:
	.4byte	sUnk_87471E0
.L_93228:
	.4byte	gUnk_3004B04
.L_9322c:
	.4byte	0x06010720
.L_93230:
	.4byte	0x80000030
.L_93234:
	.4byte	0x06010b20
.L_93238:
	.4byte	0x06010f20
.L_9323c:
	.4byte	0x04000052
.L_93240:
	.4byte	gUnk_3001874
.L_93244:
	.4byte	gUnk_3001872
.L_93248:
	.4byte	gUnk_3001876
.L_9324c:
	.4byte	0x000001ff
.L_93250:
	.4byte	gMainTimer
.L_93254:
	.4byte	gBg1XPosition
.L_93258:
	.4byte	0x04000010
.L_9325c:
	.4byte	0x04000012
.L_93260:
	.4byte	gUnk_3001878
.L_93264:
	.4byte	0x04000016


thumb_func_start func_8093268
func_8093268:
	push	{r4, lr}
	ldr	r2, .L_93290
	ldrh	r1, [r2, #0]
	mov	r0, #2
	and	r0, r1
	ldr	r4, .L_93294
	cmp	r0, #0
	bne	.L_93284
	mov	r3, #2
.L_9327a:
	ldrh	r1, [r2, #0]
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_9327a
.L_93284:
	ldr	r1, .L_93298
	ldrh	r0, [r4, #0]
	strh	r0, [r1, #0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L_93290:
	.4byte	0x04000004
.L_93294:
	.4byte	gUnk_3001876
.L_93298:
	.4byte	0x04000014


thumb_func_start func_809329C
func_809329C:
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L_933a0
	ldrh	r0, [r2, #0]
	mov	r1, #1
	eor	r0, r1
	strh	r0, [r2, #0]
	bl	InitializeVideoMemory
	ldr	r3, .L_933a4
	ldr	r0, .L_933a8
	str	r0, [r3, #0]
	ldr	r2, .L_933ac
	str	r2, [r3, #4]
	ldr	r0, .L_933b0
	str	r0, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r0, .L_933b4
	str	r0, [r3, #0]
	ldr	r0, .L_933b8
	str	r0, [r3, #4]
	ldr	r0, .L_933bc
	str	r0, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r0, .L_933c0
	str	r0, [r3, #0]
	ldr	r0, .L_933c4
	str	r0, [r3, #4]
	ldr	r0, .L_933c8
	str	r0, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r0, .L_933cc
	str	r0, [r3, #0]
	ldr	r4, .L_933d0
	str	r4, [r3, #4]
	ldr	r1, .L_933d4
	str	r1, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r0, .L_933d8
	str	r0, [r3, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r3, #4]
	str	r1, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r0, .L_933dc
	str	r0, [r3, #0]
	ldr	r0, .L_933e0
	str	r0, [r3, #4]
	ldr	r1, .L_933e4
	str	r1, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r0, .L_933e8
	str	r0, [r3, #0]
	ldr	r0, .L_933ec
	str	r0, [r3, #4]
	ldr	r0, .L_933f0
	str	r0, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r0, .L_933f4
	str	r0, [r3, #0]
	ldr	r0, .L_933f8
	str	r0, [r3, #4]
	str	r1, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r0, .L_933fc
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	beq	.L_93326
	b	.L_93430
.L_93326:
	ldr	r1, .L_93400
	str	r1, [r3, #0]
	str	r2, [r3, #4]
	ldr	r2, .L_93404
	str	r2, [r3, #8]
	ldr	r0, [r3, #8]
	mov	r5, #184	@ 0xb8
	lsl	r5, r5, #2
	add	r0, r1, r5
	str	r0, [r3, #0]
	ldr	r0, .L_93408
	str	r0, [r3, #4]
	str	r2, [r3, #8]
	ldr	r0, [r3, #8]
	mov	r5, #184	@ 0xb8
	lsl	r5, r5, #3
	add	r0, r1, r5
	str	r0, [r3, #0]
	ldr	r0, .L_9340c
	str	r0, [r3, #4]
	str	r2, [r3, #8]
	ldr	r0, [r3, #8]
	mov	r0, #138	@ 0x8a
	lsl	r0, r0, #4
	add	r1, r1, r0
	str	r1, [r3, #0]
	ldr	r0, .L_93410
	str	r0, [r3, #4]
	str	r2, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r2, .L_93414
	str	r2, [r3, #0]
	ldr	r0, .L_93418
	str	r0, [r3, #4]
	ldr	r1, .L_9341c
	str	r1, [r3, #8]
	ldr	r0, [r3, #8]
	add	r0, r2, #0
	add	r0, #128	@ 0x80
	str	r0, [r3, #0]
	ldr	r0, .L_93420
	str	r0, [r3, #4]
	str	r1, [r3, #8]
	ldr	r0, [r3, #8]
	mov	r5, #128	@ 0x80
	lsl	r5, r5, #1
	add	r0, r2, r5
	str	r0, [r3, #0]
	ldr	r0, .L_93424
	str	r0, [r3, #4]
	str	r1, [r3, #8]
	ldr	r0, [r3, #8]
	add	r5, #128	@ 0x80
	add	r0, r2, r5
	str	r0, [r3, #0]
	ldr	r0, .L_93428
	str	r0, [r3, #4]
	str	r1, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r0, .L_9342c
	b	.L_93472
.L_933a0:
	.4byte	0x04000200
.L_933a4:
	.4byte	0x040000d4
.L_933a8:
	.4byte	sUnk_8781770
.L_933ac:
	.4byte	0x06010000
.L_933b0:
	.4byte	0x80002400
.L_933b4:
	.4byte	sUnk_8747470
.L_933b8:
	.4byte	0x06003c00
.L_933bc:
	.4byte	0x80001200
.L_933c0:
	.4byte	sUnk_8749870
.L_933c4:
	.4byte	0x06006800
.L_933c8:
	.4byte	0x800009a0
.L_933cc:
	.4byte	sUnk_8781570
.L_933d0:
	.4byte	0x05000200
.L_933d4:
	.4byte	0x80000100
.L_933d8:
	.4byte	sUnk_8747270
.L_933dc:
	.4byte	sUnk_874ABB0
.L_933e0:
	.4byte	0x06008000
.L_933e4:
	.4byte	0x80000400
.L_933e8:
	.4byte	sUnk_874B3B0
.L_933ec:
	.4byte	0x06008800
.L_933f0:
	.4byte	0x80000800
.L_933f4:
	.4byte	sUnk_8780D70
.L_933f8:
	.4byte	0x06009800
.L_933fc:
	.4byte	gDifficulty
.L_93400:
	.4byte	sUnk_87886AC
.L_93404:
	.4byte	0x80000170
.L_93408:
	.4byte	0x06010400
.L_9340c:
	.4byte	0x06010800
.L_93410:
	.4byte	0x06010c00
.L_93414:
	.4byte	sUnk_878922C
.L_93418:
	.4byte	0x06010380
.L_9341c:
	.4byte	0x80000040
.L_93420:
	.4byte	0x06010780
.L_93424:
	.4byte	0x06010b80
.L_93428:
	.4byte	0x06010f80
.L_9342c:
	.4byte	sUnk_878868C
.L_93430:
	cmp	r0, #1
	bls	.L_9347c
	ldr	r1, .L_93680
	str	r1, [r3, #0]
	str	r2, [r3, #4]
	ldr	r2, .L_93684
	str	r2, [r3, #8]
	ldr	r0, [r3, #8]
	mov	r5, #184	@ 0xb8
	lsl	r5, r5, #2
	add	r0, r1, r5
	str	r0, [r3, #0]
	ldr	r0, .L_93688
	str	r0, [r3, #4]
	str	r2, [r3, #8]
	ldr	r0, [r3, #8]
	mov	r5, #184	@ 0xb8
	lsl	r5, r5, #3
	add	r0, r1, r5
	str	r0, [r3, #0]
	ldr	r0, .L_9368c
	str	r0, [r3, #4]
	str	r2, [r3, #8]
	ldr	r0, [r3, #8]
	mov	r0, #138	@ 0x8a
	lsl	r0, r0, #4
	add	r1, r1, r0
	str	r1, [r3, #0]
	ldr	r0, .L_93690
	str	r0, [r3, #4]
	str	r2, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r0, .L_93694
.L_93472:
	str	r0, [r3, #0]
	str	r4, [r3, #4]
	ldr	r0, .L_93698
	str	r0, [r3, #8]
	ldr	r0, [r3, #8]
.L_9347c:
	ldr	r1, .L_9369c
	mov	r2, #209	@ 0xd1
	lsl	r2, r2, #6
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r3, .L_936a0
	add	r0, r3, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r5, .L_936a4
	add	r0, r5, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_936a8
	add	r0, r2, #0
	strh	r0, [r1, #0]
	sub	r1, #14
	mov	r3, #208	@ 0xd0
	lsl	r3, r3, #5
	add	r0, r3, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_936ac
	mov	r6, #0
	strh	r6, [r0, #0]
	ldr	r0, .L_936b0
	mov	r7, #16
	strh	r7, [r0, #0]
	ldr	r0, .L_936b4
	strh	r7, [r0, #0]
	add	r1, #82	@ 0x52
	lsl	r0, r7, #8
	strh	r0, [r1, #0]
	sub	r1, #2
	ldr	r5, .L_936b8
	add	r0, r5, #0
	strh	r0, [r1, #0]
	ldr	r2, .L_936bc
	ldrb	r1, [r2, #0]
	mov	r0, #252	@ 0xfc
	and	r0, r1
	strb	r0, [r2, #0]
	ldr	r0, .L_936c0
	strb	r6, [r0, #0]
	ldr	r0, .L_936c4
	strb	r6, [r0, #0]
	ldr	r1, .L_936c8
	ldr	r0, .L_936cc
	ldr	r2, [r0, #0]
	ldr	r3, [r0, #4]
	str	r2, [r1, #0]
	str	r3, [r1, #4]
	mov	r5, #0
	mov	r0, #144	@ 0x90
	lsl	r0, r0, #1
	strh	r0, [r1, #4]
	mov	r4, #160	@ 0xa0
	strh	r4, [r1, #6]
	ldr	r1, .L_936d0
	str	r2, [r1, #0]
	str	r3, [r1, #4]
	add	r0, #144	@ 0x90
	strh	r0, [r1, #4]
	mov	r0, #154	@ 0x9a
	strh	r0, [r1, #6]
	ldr	r1, .L_936d4
	str	r2, [r1, #0]
	str	r3, [r1, #4]
	mov	r0, #155	@ 0x9b
	strh	r0, [r1, #6]
	ldr	r0, .L_936d8
	str	r2, [r0, #0]
	str	r3, [r0, #4]
	ldr	r0, .L_936dc
	str	r2, [r0, #0]
	str	r3, [r0, #4]
	strh	r4, [r0, #4]
	mov	r1, #100	@ 0x64
	strh	r1, [r0, #6]
	ldr	r0, .L_936e0
	str	r2, [r0, #0]
	str	r3, [r0, #4]
	strh	r5, [r0, #4]
	mov	r1, #80	@ 0x50
	strh	r1, [r0, #6]
	ldr	r1, .L_936e4
	str	r2, [r1, #0]
	str	r3, [r1, #4]
	mov	r0, #168	@ 0xa8
	lsl	r0, r0, #1
	strh	r0, [r1, #4]
	mov	r0, #60	@ 0x3c
	strh	r0, [r1, #6]
	ldr	r0, .L_936e8
	str	r2, [r0, #0]
	str	r3, [r0, #4]
	mov	r1, #120	@ 0x78
	strh	r1, [r0, #4]
	strh	r1, [r0, #6]
	ldr	r0, .L_936ec
	str	r2, [r0, #0]
	str	r3, [r0, #4]
	ldr	r0, .L_936f0
	strb	r6, [r0, #0]
	strb	r6, [r0, #1]
	mov	r1, #1
	strh	r1, [r0, #2]
	strb	r6, [r0, #4]
	strb	r6, [r0, #5]
	strh	r5, [r0, #6]
	ldr	r1, .L_936f4
	strh	r5, [r1, #4]
	mov	r2, #1
	mov	r4, #0
	ldr	r0, .L_936f8
	ldrb	r0, [r0, #0]
	add	r3, r1, #0
	cmp	r0, #0
	beq	.L_9356e
	strh	r2, [r3, #4]
	mov	r4, #1
.L_9356e:
	ldr	r0, .L_936fc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_93580
	ldrh	r0, [r3, #4]
	mov	r1, #2
	orr	r0, r1
	strh	r0, [r3, #4]
	add	r4, #1
.L_93580:
	ldr	r0, .L_93700
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_93592
	ldrh	r0, [r3, #4]
	mov	r1, #4
	orr	r0, r1
	strh	r0, [r3, #4]
	add	r4, #1
.L_93592:
	ldr	r0, .L_93704
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_935a4
	ldrh	r0, [r3, #4]
	mov	r1, #8
	orr	r0, r1
	strh	r0, [r3, #4]
	add	r4, #1
.L_935a4:
	ldr	r0, .L_93708
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_935b4
	ldrh	r0, [r3, #4]
	orr	r0, r7
	strh	r0, [r3, #4]
	add	r4, #1
.L_935b4:
	ldr	r0, .L_9370c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_935c6
	ldrh	r0, [r3, #4]
	mov	r1, #32
	orr	r0, r1
	strh	r0, [r3, #4]
	add	r4, #1
.L_935c6:
	ldr	r0, .L_93710
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_935d8
	ldrh	r0, [r3, #4]
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strh	r0, [r3, #4]
	add	r4, #1
.L_935d8:
	mov	r2, #128	@ 0x80
	ldr	r0, .L_93714
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_935ec
	ldrh	r0, [r3, #4]
	mov	r1, #128	@ 0x80
	orr	r0, r1
	strh	r0, [r3, #4]
	add	r4, #1
.L_935ec:
	lsl	r2, r2, #1
	ldr	r0, .L_93718
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_93600
	ldrh	r1, [r3, #4]
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r3, #4]
	add	r4, #1
.L_93600:
	lsl	r2, r2, #1
	ldr	r0, .L_9371c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_93614
	ldrh	r1, [r3, #4]
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r3, #4]
	add	r4, #1
.L_93614:
	lsl	r2, r2, #1
	ldr	r0, .L_93720
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_93628
	ldrh	r1, [r3, #4]
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r3, #4]
	add	r4, #1
.L_93628:
	lsl	r2, r2, #1
	ldr	r0, .L_93724
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_9363c
	ldrh	r1, [r3, #4]
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r3, #4]
	add	r4, #1
.L_9363c:
	lsl	r2, r2, #1
	ldr	r0, .L_93728
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_93652
	cmp	r4, #11
	ble	.L_93652
	ldrh	r1, [r3, #4]
	add	r0, r2, #0
	orr	r0, r1
	strh	r0, [r3, #4]
.L_93652:
	lsl	r2, r2, #1
	ldr	r0, .L_93728
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bls	.L_93666
	cmp	r4, #11
	ble	.L_93666
	ldrh	r0, [r3, #4]
	orr	r2, r0
	strh	r2, [r3, #4]
.L_93666:
	cmp	r4, #0
	bne	.L_9373e
	ldr	r1, .L_936f4
	mov	r0, #4
	strb	r0, [r1, #0]
	ldr	r0, .L_9372c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_93734
	ldr	r0, .L_93730
	bl	m4aSongNumStartOrChange
	b	.L_937e6
.L_93680:
	.4byte	sUnk_878944C
.L_93684:
	.4byte	0x80000170
.L_93688:
	.4byte	0x06010400
.L_9368c:
	.4byte	0x06010800
.L_93690:
	.4byte	0x06010c00
.L_93694:
	.4byte	sUnk_878942C
.L_93698:
	.4byte	0x80000010
.L_9369c:
	.4byte	0x04000008
.L_936a0:
	.4byte	0x00007141
.L_936a4:
	.4byte	0x00001342
.L_936a8:
	.4byte	0x00003043
.L_936ac:
	.4byte	gUnk_3001872
.L_936b0:
	.4byte	gUnk_3001874
.L_936b4:
	.4byte	gBldy
.L_936b8:
	.4byte	0x00001fdf
.L_936bc:
	.4byte	gMainTimer
.L_936c0:
	.4byte	gUnk_3004B25
.L_936c4:
	.4byte	gVideoMode
.L_936c8:
	.4byte	gUnk_3004ABC
.L_936cc:
	.4byte	sUnk_87470E0
.L_936d0:
	.4byte	gUnk_3004AC4
.L_936d4:
	.4byte	gUnk_3004ACC
.L_936d8:
	.4byte	gUnk_3004AD4
.L_936dc:
	.4byte	gUnk_3004ADC
.L_936e0:
	.4byte	gUnk_3004AE4
.L_936e4:
	.4byte	gUnk_3004AEC
.L_936e8:
	.4byte	gUnk_3004AF4
.L_936ec:
	.4byte	gUnk_3004AFC
.L_936f0:
	.4byte	gUnk_3004B04
.L_936f4:
	.4byte	gUnk_3004B0C
.L_936f8:
	.4byte	gCollectedNEJewelPiece
.L_936fc:
	.4byte	gCollectedSEJewelPiece
.L_93700:
	.4byte	gCollectedSWJewelPiece
.L_93704:
	.4byte	gCollectedNWJewelPiece
.L_93708:
	.4byte	gHasGoldenDivaChest5
.L_9370c:
	.4byte	gHasGoldenDivaChest6
.L_93710:
	.4byte	gHasGoldenDivaChest7
.L_93714:
	.4byte	gHasGoldenDivaChest8
.L_93718:
	.4byte	gHasGoldenDivaChest9
.L_9371c:
	.4byte	gHasGoldenDivaChest10
.L_93720:
	.4byte	gHasGoldenDivaChest11
.L_93724:
	.4byte	gHasGoldenDivaChest12
.L_93728:
	.4byte	gDifficulty
.L_9372c:
	.4byte	gLanguage
.L_93730:
	.4byte	0x00000332
.L_93734:
	mov	r0, #203	@ 0xcb
	lsl	r0, r0, #2
	bl	m4aSongNumStartOrChange
	b	.L_937e6
.L_9373e:
	cmp	r4, #1
	bgt	.L_93770
	ldr	r1, .L_93758
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r0, .L_9375c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_93764
	ldr	r0, .L_93760
	bl	m4aSongNumStartOrChange
	b	.L_937e6
.L_93758:
	.4byte	gUnk_3004B0C
.L_9375c:
	.4byte	gLanguage
.L_93760:
	.4byte	0x00000331
.L_93764:
	ldr	r0, .L_9376c
	bl	m4aSongNumStartOrChange
	b	.L_937e6
.L_9376c:
	.4byte	0x00000329
.L_93770:
	cmp	r4, #5
	bgt	.L_9378c
	ldr	r1, .L_93784
	mov	r0, #1
	strb	r0, [r1, #0]
	ldr	r0, .L_93788
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_9379e
	b	.L_937b0
.L_93784:
	.4byte	gUnk_3004B0C
.L_93788:
	.4byte	gLanguage
.L_9378c:
	cmp	r4, #11
	bgt	.L_937bc
	ldr	r1, .L_937a8
	mov	r0, #2
	strb	r0, [r1, #0]
	ldr	r0, .L_937ac
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_937b0
.L_9379e:
	mov	r0, #204	@ 0xcc
	lsl	r0, r0, #2
	bl	m4aSongNumStartOrChange
	b	.L_937e6
.L_937a8:
	.4byte	gUnk_3004B0C
.L_937ac:
	.4byte	gLanguage
.L_937b0:
	ldr	r0, .L_937b8
	bl	m4aSongNumStartOrChange
	b	.L_937e6
.L_937b8:
	.4byte	0x00000326
.L_937bc:
	ldr	r1, .L_937d4
	mov	r0, #3
	strb	r0, [r1, #0]
	ldr	r0, .L_937d8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_937e0
	ldr	r0, .L_937dc
	bl	m4aSongNumStartOrChange
	b	.L_937e6
	.align	2, 0
.L_937d4:
	.4byte	gUnk_3004B0C
.L_937d8:
	.4byte	gLanguage
.L_937dc:
	.4byte	0x0000032f
.L_937e0:
	ldr	r0, .L_93834
	bl	m4aSongNumStartOrChange
.L_937e6:
	ldr	r4, .L_93838
	ldr	r2, .L_9383c
	ldrb	r1, [r4, #0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	ldrb	r1, [r4, #1]
	add	r0, r0, r1
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #6]
	ldr	r2, .L_93840
	ldrb	r1, [r4, #0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	ldrb	r3, [r4, #1]
	add	r0, r0, r3
.L_93808:
	.4byte	0x18800040
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #8]
	mov	r0, #56	@ 0x38
	strh	r0, [r4, #10]
	ldr	r3, .L_93844
	ldr	r2, .L_93848
	ldrb	r1, [r2, #0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	ldrb	r5, [r4, #0]
	add	r0, r0, r5
	lsl	r0, r0, #1
	add	r0, r0, r3
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #12]
	ldrb	r0, [r2, #0]
	cmp	r0, #1
	bne	.L_9384c
	mov	r0, #54	@ 0x36
	b	.L_93852
.L_93834:
	.4byte	0x00000323
.L_93838:
	.4byte	gUnk_3004B0C
.L_9383c:
	.4byte	sUnk_87471EC
.L_93840:
	.4byte	sUnk_874721E
.L_93844:
	.4byte	sUnk_8747250
.L_93848:
	.4byte	gDifficulty
.L_9384c:
	cmp	r0, #2
	bne	.L_93854
	mov	r0, #59	@ 0x3b
.L_93852:
	strh	r0, [r4, #10]
.L_93854:
	ldr	r0, .L_938b4
	mov	r4, #0
	strb	r4, [r0, #0]
	bl	func_80938EC
	bl	ResetFreeOam
	ldr	r0, .L_938b8
	strh	r4, [r0, #0]
	ldr	r0, .L_938bc
	strh	r4, [r0, #0]
	ldr	r0, .L_938c0
.L_9386c:
	.4byte	0x48158004
	strh	r4, [r0, #0]
	ldr	r0, .L_938c8
	strh	r4, [r0, #0]
	ldr	r0, .L_938cc
	strh	r4, [r0, #0]
	ldr	r0, .L_938d0
	strh	r4, [r0, #0]
	ldr	r0, .L_938d4
	strh	r4, [r0, #0]
	ldr	r0, .L_938d8
	bl	InterruptCallbackSetVBlank
	ldr	r0, .L_938dc
	bl	InterruptCallbackSetVCount
	ldr	r2, .L_938e0
	ldrh	r1, [r2, #0]
	mov	r0, #7
	and	r0, r1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #0]
	ldr	r3, .L_938e4
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r2, .L_938e8
	ldrh	r0, [r2, #0]
	mov	r1, #5
	orr	r0, r1
	strh	r0, [r2, #0]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_938b4:
	.4byte	gUnk_3004B1C
.L_938b8:
	.4byte	gUnk_3001876
.L_938bc:
	.4byte	gUnk_3001878
.L_938c0:
	.4byte	gBg1XPosition
.L_938c4:
	.4byte	gBg1YPosition
.L_938c8:
	.4byte	gUnk_300187E
.L_938cc:
	.4byte	gUnk_3001880
.L_938d0:
	.4byte	gUnk_3001882
.L_938d4:
	.4byte	gUnk_3001884
.L_938d8:
	.4byte	func_80930B8
.L_938dc:
	.4byte	func_8093268
.L_938e0:
	.4byte	0x04000004
.L_938e4:
	.4byte	0x00007e28
.L_938e8:
	.4byte	0x04000200


thumb_func_start func_80938EC
func_80938EC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #24
	ldr	r7, .L_93938
	mov	r0, #0
	str	r0, [sp, #8]
	ldr	r1, .L_9393c
	ldr	r2, .L_93940
	add	r0, r2, #0
	ldrh	r3, [r1, #4]
	add	r0, r0, r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	add	r2, r1, #0
	cmp	r0, #32
	bhi	.L_9392c
	ldrb	r0, [r2, #0]
	add	r0, #1
	mov	r1, #3
	and	r0, r1
	strb	r0, [r2, #0]
	mov	r0, #144	@ 0x90
	lsl	r0, r0, #1
	strh	r0, [r2, #4]
	ldr	r1, .L_93944
	ldrb	r0, [r2, #0]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	strb	r0, [r2, #2]
.L_9392c:
	ldrb	r0, [r2, #2]
	cmp	r0, #0
	beq	.L_93948
	sub	r0, #1
	strb	r0, [r2, #2]
	b	.L_93954
.L_93938:
	.4byte	gOamBuffer
.L_9393c:
	.4byte	gUnk_3004ABC
.L_93940:
	.4byte	0xfffffe40
.L_93944:
	.4byte	sUnk_87470E8
.L_93948:
	ldrh	r0, [r2, #4]
	sub	r0, #8
	ldr	r4, .L_93a0c
	add	r1, r4, #0
	and	r0, r1
	strh	r0, [r2, #4]
.L_93954:
	ldrh	r0, [r2, #4]
	mov	r8, r0
	ldrh	r1, [r2, #6]
	mov	r9, r1
	ldr	r5, .L_93a10
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #3
	add	r5, r0, r5
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r2, [sp, #8]
	add	r2, r2, r0
	str	r2, [sp, #8]
	add	r4, #2
	mov	r6, #0
	ldr	r3, .L_93a14
	mov	sl, r3
	ldr	r0, .L_93a18
	mov	ip, r0
	cmp	r6, r2
	bge	.L_939ca
	mov	r5, #13
	neg	r5, r5
	ldr	r3, .L_93a1c
	add	r6, r2, #0
.L_93986:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	ldr	r0, .L_93a0c
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_93a20
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_93986
	ldr	r6, [sp, #8]
.L_939ca:
	ldr	r1, .L_93a24
	ldrb	r0, [r1, #0]
	cmp	r0, #1
	bhi	.L_93a30
	ldr	r0, .L_93a28
	mov	r2, sl
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r0
	ldrb	r2, [r2, #1]
	add	r3, r0, #0
	ldrb	r1, [r1, #4]
	cmp	r2, r1
	bcc	.L_93a00
	mov	r0, #0
	mov	r4, sl
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_93a00
	strb	r0, [r4, #0]
.L_93a00:
	add	r5, r3, #0
	ldr	r1, .L_93a2c
	ldrh	r0, [r1, #4]
	sub	r0, #72	@ 0x48
	b	.L_93a66
	.align	2, 0
.L_93a0c:
	.4byte	0x000001ff
.L_93a10:
	.4byte	sUnk_878657C
.L_93a14:
	.4byte	gUnk_3004ACC
.L_93a18:
	.4byte	gUnk_3004AD4
.L_93a1c:
	.4byte	gOamBuffer
.L_93a20:
	.4byte	0xfffffe00
.L_93a24:
	.4byte	gDifficulty
.L_93a28:
	.4byte	sUnk_878667C
.L_93a2c:
	.4byte	gUnk_3004AC4
.L_93a30:
	ldr	r0, .L_93ca0
	mov	r2, sl
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r0
	ldrb	r2, [r2, #1]
	add	r3, r0, #0
	ldrb	r1, [r1, #4]
	cmp	r2, r1
	bcc	.L_93a5e
	mov	r0, #0
	mov	r4, sl
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_93a5e
	strb	r0, [r4, #0]
.L_93a5e:
	add	r5, r3, #0
	ldr	r1, .L_93ca4
	ldrh	r0, [r1, #4]
	sub	r0, #8
.L_93a66:
	mov	r8, r0
	mov	r2, sl
	ldrb	r0, [r2, #1]
	add	r0, #1
	strb	r0, [r2, #1]
	ldr	r3, .L_93ca4
	ldrh	r1, [r3, #4]
	ldr	r0, .L_93ca8
	cmp	r1, r0
	bhi	.L_93aea
	ldrh	r4, [r2, #6]
	mov	r9, r4
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #3
	add	r5, r5, r0
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	cmp	r6, r1
	bge	.L_93aea
	ldr	r1, .L_93cac
	ldr	r2, .L_93cb0
	mov	sl, r2
	mov	r5, #13
	neg	r5, r5
	lsl	r0, r6, #3
	add	r3, r0, r1
	ldr	r0, [sp, #8]
	sub	r6, r0, r6
.L_93aa6:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_93cb4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_93aa6
	ldr	r6, [sp, #8]
.L_93aea:
	mov	r1, ip
	ldrb	r0, [r1, #2]
	cmp	r0, #0
	beq	.L_93bac
	ldr	r2, .L_93cb8
	ldrb	r0, [r2, #0]
	cmp	r0, #1
	bhi	.L_93bac
	ldr	r0, .L_93cbc
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #3
	add	r1, r1, r0
	mov	r3, ip
	ldrb	r2, [r3, #1]
	add	r3, r0, #0
	ldrb	r1, [r1, #4]
	cmp	r2, r1
	bcc	.L_93b2c
	mov	r0, #0
	mov	r4, ip
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldrb	r2, [r4, #0]
	lsl	r0, r2, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #4]
	cmp	r1, #0
	bne	.L_93b2c
	sub	r0, r2, #1
	strb	r0, [r4, #0]
	strb	r1, [r4, #2]
.L_93b2c:
	mov	r1, ip
	ldrb	r0, [r1, #1]
	add	r0, #1
	strb	r0, [r1, #1]
	mov	r2, #50	@ 0x32
	mov	r8, r2
	mov	r4, #140	@ 0x8c
	mov	r9, r4
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #3
	add	r5, r0, r3
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	cmp	r6, r1
	bge	.L_93bac
	ldr	r1, .L_93cac
	ldr	r2, .L_93cb0
	mov	sl, r2
	ldr	r3, .L_93cb4
	mov	ip, r3
	mov	r5, #13
	neg	r5, r5
	lsl	r0, r6, #3
	add	r3, r0, r1
	ldr	r0, [sp, #8]
	sub	r6, r0, r6
.L_93b68:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_93b68
	ldr	r6, [sp, #8]
.L_93bac:
	ldr	r1, .L_93cc0
	ldrb	r0, [r1, #2]
	cmp	r0, #0
	beq	.L_93c66
	ldr	r0, .L_93cc4
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #3
	add	r1, r1, r0
	ldr	r3, .L_93cc0
	ldrb	r2, [r3, #1]
	add	r3, r0, #0
	ldrb	r1, [r1, #4]
	cmp	r2, r1
	bcc	.L_93be6
	mov	r0, #0
	ldr	r4, .L_93cc0
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldrb	r2, [r4, #0]
	lsl	r0, r2, #3
	add	r0, r0, r3
	ldrb	r1, [r0, #4]
	cmp	r1, #0
	bne	.L_93be6
	sub	r0, r2, #1
	strb	r0, [r4, #0]
	strb	r1, [r4, #2]
.L_93be6:
	ldr	r1, .L_93cc0
	ldrb	r0, [r1, #1]
	add	r0, #1
	strb	r0, [r1, #1]
	ldrh	r2, [r1, #4]
	mov	r8, r2
	ldrh	r4, [r1, #6]
	mov	r9, r4
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #3
	add	r5, r0, r3
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	cmp	r6, r1
	bge	.L_93c66
	ldr	r1, .L_93cac
	ldr	r2, .L_93cb0
	mov	sl, r2
	ldr	r3, .L_93cb4
	mov	ip, r3
	mov	r5, #13
	neg	r5, r5
	lsl	r0, r6, #3
	add	r3, r0, r1
	ldr	r0, [sp, #8]
	sub	r6, r0, r6
.L_93c22:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
.L_93c30:
	.4byte	0x80383402
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_93c22
	ldr	r6, [sp, #8]
.L_93c66:
	ldr	r1, .L_93cb8
	ldrb	r3, [r1, #0]
	cmp	r3, #0
	bne	.L_93ccc
	ldr	r0, .L_93cc8
	ldr	r2, .L_93ca4
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r0
	ldrb	r2, [r2, #1]
	add	r4, r0, #0
	ldrb	r1, [r1, #4]
	cmp	r2, r1
	bcc	.L_93c9c
	ldr	r0, .L_93ca4
	strb	r3, [r0, #1]
	ldrb	r0, [r0, #0]
	add	r0, #1
	ldr	r1, .L_93ca4
	strb	r0, [r1, #0]
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #3
	add	r0, r0, r4
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_93c9c
	strb	r3, [r1, #0]
.L_93c9c:
	add	r5, r4, #0
	b	.L_93d08
.L_93ca0:
	.4byte	sUnk_8786BF0
.L_93ca4:
	.4byte	gUnk_3004AC4
.L_93ca8:
	.4byte	0x0000013f
.L_93cac:
	.4byte	gOamBuffer
.L_93cb0:
	.4byte	0x000001ff
.L_93cb4:
	.4byte	0xfffffe00
.L_93cb8:
	.4byte	gDifficulty
.L_93cbc:
	.4byte	sUnk_87865A4
.L_93cc0:
	.4byte	gUnk_3004AFC
.L_93cc4:
	.4byte	sUnk_8786E3C
.L_93cc8:
	.4byte	sUnk_8786564
.L_93ccc:
	cmp	r3, #1
	bne	.L_93cd8
	ldr	r0, .L_93cd4
	b	.L_93cda
.L_93cd4:
	.4byte	sUnk_87868C0
.L_93cd8:
	ldr	r0, .L_93dac
.L_93cda:
	ldr	r2, .L_93db0
	ldrb	r1, [r2, #0]
	lsl	r1, r1, #3
	add	r1, r1, r0
	ldrb	r2, [r2, #1]
	add	r3, r0, #0
	ldrb	r1, [r1, #4]
	cmp	r2, r1
	bcc	.L_93d06
	mov	r0, #0
	ldr	r4, .L_93db0
	strb	r0, [r4, #1]
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #3
	add	r0, r0, r3
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_93d06
	strb	r0, [r4, #0]
.L_93d06:
	add	r5, r3, #0
.L_93d08:
	ldr	r1, .L_93db0
	ldrb	r0, [r1, #1]
	add	r0, #1
	strb	r0, [r1, #1]
	ldrh	r2, [r1, #4]
	mov	r8, r2
	ldrh	r3, [r1, #6]
	mov	r9, r3
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #3
	add	r5, r5, r0
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	cmp	r6, r1
	bge	.L_93d88
	ldr	r1, .L_93db4
	ldr	r2, .L_93db8
	mov	sl, r2
	ldr	r3, .L_93dbc
	mov	ip, r3
	mov	r5, #13
	neg	r5, r5
	lsl	r0, r6, #3
	add	r3, r0, r1
.L_93d40:
	.4byte	0x1b869802
.L_93d44:
	ldrh	r0, [r4, #0]
	add	r4, #2
.L_93d48:
	.4byte	0x37028038
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
.L_93d6c:
	.4byte	0x34028038
	ldrb	r1, [r3, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_93d44
	ldr	r6, [sp, #8]
.L_93d88:
	ldr	r1, .L_93dc0
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_93e68
	mov	r2, #144	@ 0x90
	mov	r9, r2
	ldr	r5, .L_93dc4
	ldr	r3, .L_93db0
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #3
	add	r5, r0, r5
	mov	r1, #0
.L_93da0:
	cmp	r1, #0
	bne	.L_93dc8
	ldr	r4, .L_93db0
	ldrh	r0, [r4, #4]
	add	r0, #16
	b	.L_93dce
.L_93dac:
	.4byte	sUnk_8786BA0
.L_93db0:
	.4byte	gUnk_3004AC4
.L_93db4:
	.4byte	gOamBuffer
.L_93db8:
	.4byte	0x000001ff
.L_93dbc:
	.4byte	0xfffffe00
.L_93dc0:
	.4byte	gDifficulty
.L_93dc4:
	.4byte	sUnk_878663C
.L_93dc8:
	ldr	r2, .L_93e58
	ldrh	r0, [r2, #4]
	sub	r0, #36	@ 0x24
.L_93dce:
	mov	r8, r0
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r3, [sp, #8]
	add	r3, r3, r0
	str	r3, [sp, #8]
	add	r4, #2
	add	r1, #1
	mov	sl, r1
	cmp	r6, r3
	bge	.L_93e50
	lsl	r0, r6, #3
	ldr	r1, .L_93e5c
	add	r3, r0, r1
	ldr	r2, .L_93e60
	mov	ip, r2
	ldr	r0, [sp, #8]
	sub	r6, r0, r6
.L_93df2:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrb	r1, [r3, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, ip
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_93e64
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_93df2
	ldr	r6, [sp, #8]
.L_93e50:
	mov	r1, sl
	cmp	r1, #1
	ble	.L_93da0
	b	.L_93fb8
.L_93e58:
	.4byte	gUnk_3004AC4
.L_93e5c:
	.4byte	gOamBuffer
.L_93e60:
	.4byte	0x000001ff
.L_93e64:
	.4byte	0xfffffe00
.L_93e68:
	cmp	r0, #1
	beq	.L_93e6e
	b	.L_93fb8
.L_93e6e:
	mov	r1, #144	@ 0x90
	mov	r9, r1
	ldr	r5, .L_93e8c
	ldr	r2, .L_93e90
	ldrb	r0, [r2, #0]
	lsl	r0, r0, #3
	add	r5, r0, r5
	mov	r1, #0
.L_93e7e:
	cmp	r1, #0
	bne	.L_93e94
	ldr	r3, .L_93e90
	ldrh	r0, [r3, #4]
	sub	r0, #25
	b	.L_93e9a
	.align	2, 0
.L_93e8c:
	.4byte	sUnk_87868D8
.L_93e90:
	.4byte	gUnk_3004AC4
.L_93e94:
	ldr	r4, .L_940a8
	ldrh	r0, [r4, #4]
	sub	r0, #47	@ 0x2f
.L_93e9a:
	mov	r8, r0
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r2, [sp, #8]
	add	r2, r2, r0
	str	r2, [sp, #8]
	add	r4, #2
	add	r1, #1
	mov	sl, r1
	cmp	r6, r2
	bge	.L_93f1c
	lsl	r0, r6, #3
	ldr	r1, .L_940ac
	add	r3, r0, r1
	ldr	r2, .L_940b0
	mov	ip, r2
	ldr	r0, [sp, #8]
	sub	r6, r0, r6
.L_93ebe:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrb	r1, [r3, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, ip
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_940b4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_93ebe
	ldr	r6, [sp, #8]
.L_93f1c:
	mov	r1, sl
	cmp	r1, #1
	ble	.L_93e7e
	ldr	r1, .L_940a8
	ldrh	r0, [r1, #4]
	add	r0, #42	@ 0x2a
	mov	r8, r0
	mov	r2, #144	@ 0x90
	mov	r9, r2
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #3
	ldr	r3, .L_940b8
	add	r5, r0, r3
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	cmp	r6, r1
	bge	.L_93fb8
	ldr	r1, .L_940ac
	lsl	r0, r6, #3
	add	r3, r0, r1
	ldr	r2, .L_940b0
	mov	sl, r2
	mov	r0, #15
	neg	r0, r0
	mov	ip, r0
	mov	r5, #13
	neg	r5, r5
	ldr	r1, [sp, #8]
	sub	r6, r1, r6
.L_93f5e:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrb	r1, [r3, #1]
	mov	r0, #4
	neg	r0, r0
	and	r0, r1
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_940b4
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, ip
	and	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_93f5e
	ldr	r6, [sp, #8]
.L_93fb8:
	ldr	r1, .L_940bc
	ldrb	r0, [r1, #0]
	cmp	r0, #1
	bhi	.L_94082
	ldr	r5, .L_940c0
	ldrh	r0, [r5, #0]
	add	r0, #16
	mov	r1, #255	@ 0xff
	and	r0, r1
	strh	r0, [r5, #0]
	ldr	r2, .L_940c4
	mov	r8, r2
	ldrh	r0, [r5, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r3, #0
	ldrsh	r4, [r0, r3]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldrh	r0, [r5, #0]
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	mov	r2, #2
	add	r2, sp
	mov	sl, r2
	strh	r0, [r2, #0]
	ldrh	r0, [r5, #0]
	lsl	r0, r0, #1
	add	r0, r8
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	add	r3, sp, #4
	mov	r9, r3
	strh	r0, [r3, #0]
	ldrh	r0, [r5, #0]
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	mov	r1, sp
	add	r1, #6
	strh	r0, [r1, #0]
	ldr	r2, .L_940ac
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #6]
	mov	r3, sl
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #14]
	mov	r4, r9
	ldrh	r1, [r4, #0]
	strh	r1, [r2, #22]
	strh	r0, [r2, #30]
.L_94082:
	ldr	r0, .L_940c8
	ldrb	r1, [r0, #0]
	mov	sl, r0
	cmp	r1, #3
	bls	.L_9408e
	b	.L_9421a
.L_9408e:
	ldr	r5, .L_940cc
	ldrh	r0, [r0, #12]
	mov	r9, r0
	ldr	r1, .L_940bc
	ldrb	r0, [r1, #0]
	cmp	r0, #1
	bhi	.L_940d0
	ldr	r1, .L_940a8
	ldrb	r0, [r1, #0]
	lsl	r0, r0, #3
	add	r5, r0, r5
	b	.L_940ec
	.align	2, 0
.L_940a8:
	.4byte	gUnk_3004AC4
.L_940ac:
	.4byte	gOamBuffer
.L_940b0:
	.4byte	0x000001ff
.L_940b4:
	.4byte	0xfffffe00
.L_940b8:
	.4byte	sUnk_87868F0
.L_940bc:
	.4byte	gDifficulty
.L_940c0:
	.4byte	gUnk_3001850
.L_940c4:
	.4byte	sSinCosTable
.L_940c8:
	.4byte	gUnk_3004B0C
.L_940cc:
	.4byte	sUnk_87866A4
.L_940d0:
	ldr	r0, .L_940e0
	ldrb	r2, [r0, #0]
	cmp	r2, #1
	bne	.L_940e4
	mov	r2, #1
	neg	r2, r2
	add	r9, r2
	b	.L_940ec
.L_940e0:
	.4byte	gUnk_3004AC4
.L_940e4:
	cmp	r2, #3
	bne	.L_940ec
	mov	r3, #1
	add	r9, r3
.L_940ec:
	ldr	r4, .L_94380
	ldrh	r0, [r4, #4]
	mov	r2, sl
	ldrh	r1, [r2, #10]
	sub	r0, r0, r1
	mov	r8, r0
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
.L_940fc:
	.4byte	0x181b9b02
	str	r3, [sp, #8]
	add	r4, #2
	mov	r0, sp
	add	r0, #2
	str	r0, [sp, #12]
	mov	r1, sp
	add	r1, #4
	str	r1, [sp, #16]
	mov	r2, sp
	add	r2, #6
	str	r2, [sp, #20]
	cmp	r6, r3
	bge	.L_94184
	ldr	r1, .L_94384
	lsl	r0, r6, #3
	add	r3, r0, r1
	ldr	r5, .L_94388
	mov	r0, #13
	neg	r0, r0
	mov	ip, r0
	ldr	r1, [sp, #8]
	sub	r6, r1, r6
.L_9412c:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrb	r0, [r3, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	and	r1, r5
	ldrh	r2, [r3, #2]
	ldr	r0, .L_9438c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	mov	r1, #2
	orr	r0, r1
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
.L_9416c:
	.4byte	0x46607959
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_9412c
	ldr	r6, [sp, #8]
.L_94184:
	ldr	r0, .L_94390
	add	r0, #128	@ 0x80
	mov	r3, #0
	ldrsh	r5, [r0, r3]
	mov	r4, sl
	mov	r1, #6
	ldrsh	r0, [r4, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	mov	r1, sp
.L_941a4:
	.4byte	0x4a7a8008
	mov	r3, #0
	ldrsh	r4, [r2, r3]
	mov	r1, sl
	mov	r2, #6
	ldrsh	r0, [r1, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #12]
	strh	r0, [r3, #0]
	ldr	r0, .L_94390
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r1, sl
	mov	r2, #8
	ldrsh	r0, [r1, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #16]
	strh	r0, [r3, #0]
	mov	r4, sl
	mov	r1, #8
	ldrsh	r0, [r4, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	ldr	r2, [sp, #20]
	strh	r0, [r2, #0]
	ldr	r2, .L_94384
	mov	r1, sp
	ldrh	r1, [r1, #0]
	strh	r1, [r2, #38]	@ 0x26
	ldr	r3, [sp, #12]
	ldrh	r1, [r3, #0]
	strh	r1, [r2, #46]	@ 0x2e
	ldr	r4, [sp, #16]
	ldrh	r1, [r4, #0]
	strh	r1, [r2, #54]	@ 0x36
	strh	r0, [r2, #62]	@ 0x3e
.L_9421a:
	ldr	r0, .L_94394
	ldrb	r1, [r0, #0]
	mov	sl, r0
	cmp	r1, #0
	bne	.L_94226
	b	.L_9436a
.L_94226:
	ldr	r0, .L_94380
	ldrh	r1, [r0, #4]
	ldr	r0, .L_94398
	ldrh	r0, [r0, #10]
	sub	r1, r1, r0
	mov	r8, r1
	mov	r0, sl
	ldrh	r0, [r0, #4]
	mov	r9, r0
	ldr	r5, .L_9439c
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	mov	r2, sp
	add	r2, #2
	str	r2, [sp, #12]
	mov	r3, sp
	add	r3, #4
	str	r3, [sp, #16]
	mov	r0, sp
	add	r0, #6
	str	r0, [sp, #20]
	cmp	r6, r1
	bge	.L_942c4
	ldr	r1, .L_94384
	mov	r5, #4
	lsl	r0, r6, #3
	add	r3, r0, r1
	ldr	r1, .L_94388
	mov	ip, r1
	ldr	r2, [sp, #8]
	sub	r6, r2, r6
.L_9426c:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrb	r0, [r3, #1]
	mov	r1, #3
	orr	r0, r1
	strb	r0, [r3, #1]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, ip
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_9438c
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrb	r1, [r3, #3]
	mov	r0, #15
	neg	r0, r0
	and	r0, r1
	orr	r0, r5
	strb	r0, [r3, #3]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, #13
	neg	r0, r0
	and	r0, r1
	orr	r0, r5
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_9426c
	ldr	r6, [sp, #8]
.L_942c4:
	ldr	r0, .L_94390
	add	r0, #128	@ 0x80
	mov	r1, #0
	ldrsh	r5, [r0, r1]
	mov	r2, sl
	mov	r3, #2
	ldrsh	r0, [r2, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	mov	r1, sp
	strh	r0, [r1, #0]
	ldr	r0, .L_94390
	mov	r1, #0
	ldrsh	r4, [r0, r1]
	mov	r2, sl
	mov	r3, #2
	ldrsh	r0, [r2, r3]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r4, [sp, #12]
	strh	r0, [r4, #0]
	ldr	r0, .L_94390
	ldrh	r4, [r0, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r1, sl
	mov	r2, #2
	ldrsh	r0, [r1, r2]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	ldr	r3, [sp, #16]
	strh	r0, [r3, #0]
	mov	r4, sl
	mov	r1, #2
	ldrsh	r0, [r4, r1]
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r5, #0
	bl	FixedMul
	ldr	r2, [sp, #20]
	strh	r0, [r2, #0]
	ldr	r2, .L_94384
	mov	r0, sp
	ldrh	r0, [r0, #0]
	add	r1, r2, #0
	add	r1, #70	@ 0x46
	strh	r0, [r1, #0]
	ldr	r3, [sp, #12]
	ldrh	r0, [r3, #0]
	add	r1, #8
	strh	r0, [r1, #0]
	ldr	r4, [sp, #16]
	ldrh	r0, [r4, #0]
	add	r1, #8
	strh	r0, [r1, #0]
	ldr	r0, [sp, #20]
	ldrh	r1, [r0, #0]
	add	r0, r2, #0
	add	r0, #94	@ 0x5e
	strh	r1, [r0, #0]
.L_9436a:
	ldr	r0, .L_943a0
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_943a8
	ldr	r5, .L_943a4
	ldr	r1, .L_94380
	ldrh	r0, [r1, #6]
	sub	r0, #2
	mov	r9, r0
	b	.L_943c8
	.align	2, 0
.L_94380:
	.4byte	gUnk_3004AC4
.L_94384:
	.4byte	gOamBuffer
.L_94388:
	.4byte	0x000001ff
.L_9438c:
	.4byte	0xfffffe00
.L_94390:
	.4byte	sSinCosTable
.L_94394:
	.4byte	gUnk_3004B1C
.L_94398:
	.4byte	gUnk_3004B0C
.L_9439c:
	.4byte	sUnk_87866BC
.L_943a0:
	.4byte	gDifficulty
.L_943a4:
	.4byte	sUnk_878654C
.L_943a8:
	cmp	r0, #1
	bne	.L_943c0
	ldr	r5, .L_943b8
	ldr	r0, .L_943bc
	ldrh	r1, [r0, #6]
	mov	r9, r1
	b	.L_943c8
	.align	2, 0
.L_943b8:
	.4byte	sUnk_8786908
.L_943bc:
	.4byte	gUnk_3004AC4
.L_943c0:
	ldr	r5, .L_94670
	ldr	r0, .L_94674
	ldrh	r2, [r0, #6]
	mov	r9, r2
.L_943c8:
	ldr	r3, .L_94674
	ldrh	r3, [r3, #4]
.L_943cc:
	.4byte	0x4ca94698
	ldrb	r0, [r4, #0]
	lsl	r0, r0, #3
	add	r5, r5, r0
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	ldr	r2, .L_94678
	mov	sl, r2
	ldr	r5, .L_9467c
	cmp	r6, r1
	bge	.L_94440
	ldr	r1, .L_94680
	mov	r3, #13
	neg	r3, r3
	mov	ip, r3
.L_943f4:
	.4byte	0x184300f0
	ldr	r0, [sp, #8]
	sub	r6, r0, r6
.L_943fc:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
.L_94408:
	.4byte	0x34028820
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	ldr	r0, .L_94684
	and	r1, r0
	ldrh	r2, [r3, #2]
	ldr	r0, .L_94688
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r1, [r3, #5]
	mov	r0, ip
	and	r0, r1
	mov	r1, #4
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_943fc
	ldr	r6, [sp, #8]
.L_94440:
	ldr	r2, .L_9468c
	ldrb	r1, [r2, #0]
	mov	r0, #7
	and	r0, r1
	cmp	r0, #0
	bne	.L_9446e
	mov	r3, sl
	ldrh	r0, [r3, #4]
	sub	r0, #1
	ldr	r4, .L_94684
	add	r1, r4, #0
	and	r0, r1
	strh	r0, [r3, #4]
	ldr	r2, .L_94690
	ldrh	r0, [r2, #4]
	sub	r0, #1
	and	r0, r1
	strh	r0, [r2, #4]
	ldr	r3, .L_94694
	ldrh	r0, [r3, #4]
	sub	r0, #1
	and	r0, r1
	strh	r0, [r3, #4]
.L_9446e:
	mov	r4, sl
	ldrh	r4, [r4, #4]
	mov	r8, r4
	mov	r0, sl
	ldrh	r0, [r0, #6]
	mov	r9, r0
	ldr	r1, .L_94698
	ldr	r4, [r1, #0]
	ldrh	r0, [r4, #0]
	ldr	r2, [sp, #8]
	add	r2, r2, r0
	str	r2, [sp, #8]
	add	r4, #2
	cmp	r6, r2
	bge	.L_944dc
	ldr	r1, .L_94680
	ldr	r3, .L_94684
	mov	sl, r3
	ldr	r0, .L_94688
	mov	ip, r0
	lsl	r0, r6, #3
	add	r3, r0, r1
	sub	r6, r2, r6
.L_9449c:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r0, [r3, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_9449c
	ldr	r6, [sp, #8]
.L_944dc:
	ldr	r1, .L_94690
	ldrh	r1, [r1, #4]
	mov	r8, r1
	ldr	r2, .L_94690
	ldrh	r2, [r2, #6]
	mov	r9, r2
	ldr	r3, .L_9469c
	ldr	r4, [r3, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	cmp	r6, r1
	bge	.L_9454c
	ldr	r1, .L_94680
	ldr	r2, .L_94684
	mov	sl, r2
	ldr	r3, .L_94688
	mov	ip, r3
	lsl	r0, r6, #3
	add	r3, r0, r1
	ldr	r0, [sp, #8]
	sub	r6, r0, r6
.L_9450c:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r0, [r3, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_9450c
	ldr	r6, [sp, #8]
.L_9454c:
	ldr	r1, .L_94694
	ldrh	r1, [r1, #4]
	mov	r8, r1
	ldr	r2, .L_94694
	ldrh	r2, [r2, #6]
	mov	r9, r2
	ldr	r3, .L_946a0
	ldr	r4, [r3, #0]
	ldrh	r0, [r4, #0]
	ldr	r1, [sp, #8]
	add	r1, r1, r0
	str	r1, [sp, #8]
	add	r4, #2
	cmp	r6, r1
	bge	.L_945bc
	ldr	r1, .L_94680
	ldr	r2, .L_94684
	mov	sl, r2
	ldr	r3, .L_94688
	mov	ip, r3
	lsl	r0, r6, #3
	add	r3, r0, r1
	ldr	r0, [sp, #8]
	sub	r6, r0, r6
.L_9457c:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	mov	r0, sl
	and	r1, r0
	ldrh	r2, [r3, #2]
	mov	r0, ip
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r0, [r3, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_9457c
	ldr	r6, [sp, #8]
.L_945bc:
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #3
	ldr	r1, .L_946a4
	add	r0, r0, r1
	ldrb	r1, [r5, #1]
	ldrb	r0, [r0, #4]
	cmp	r1, r0
	bcc	.L_945e6
	mov	r0, #0
	strb	r0, [r5, #1]
	ldrb	r0, [r5, #0]
	add	r0, #1
	strb	r0, [r5, #0]
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #3
	ldr	r2, .L_946a4
	add	r0, r0, r2
	ldrb	r0, [r0, #4]
	cmp	r0, #0
	bne	.L_945e6
	strb	r0, [r5, #0]
.L_945e6:
	ldrb	r0, [r5, #1]
	add	r0, #1
	strb	r0, [r5, #1]
	ldrh	r3, [r5, #4]
	mov	r8, r3
	ldrh	r4, [r5, #6]
	mov	r9, r4
	ldrb	r0, [r5, #0]
	lsl	r0, r0, #3
	ldr	r1, .L_946a4
	add	r5, r0, r1
	ldr	r4, [r5, #0]
	ldrh	r0, [r4, #0]
	ldr	r2, [sp, #8]
	add	r2, r2, r0
	str	r2, [sp, #8]
	add	r4, #2
	cmp	r6, r2
	bge	.L_94656
	ldr	r1, .L_94680
	ldr	r5, .L_94684
	ldr	r3, .L_94688
	mov	sl, r3
	lsl	r0, r6, #3
	add	r3, r0, r1
	sub	r6, r2, r6
.L_9461a:
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	add	r0, r9
	strb	r0, [r3, #0]
	ldrh	r0, [r4, #0]
	add	r4, #2
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, r8
	add	r1, r0, r2
	and	r1, r5
	ldrh	r2, [r3, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r3, #2]
	ldrh	r0, [r4, #0]
	strh	r0, [r7, #0]
	add	r4, #2
	ldrb	r0, [r3, #5]
	mov	r1, #12
	orr	r0, r1
	strb	r0, [r3, #5]
	add	r7, #4
	add	r3, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_9461a
.L_94656:
	mov	r3, sp
	ldrb	r4, [r3, #8]
	ldr	r3, .L_946a8
	strb	r4, [r3, #0]
	add	sp, #24
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_94670:
	.4byte	sUnk_8786BC8
.L_94674:
	.4byte	gUnk_3004AC4
.L_94678:
	.4byte	gUnk_3004ADC
.L_9467c:
	.4byte	gUnk_3004AF4
.L_94680:
	.4byte	gOamBuffer
.L_94684:
	.4byte	0x000001ff
.L_94688:
	.4byte	0xfffffe00
.L_9468c:
	.4byte	gMainTimer
.L_94690:
	.4byte	gUnk_3004AE4
.L_94694:
	.4byte	gUnk_3004AEC
.L_94698:
	.4byte	sUnk_87865EC
.L_9469c:
	.4byte	sUnk_87865FC
.L_946a0:
	.4byte	sUnk_878660C
.L_946a4:
	.4byte	sUnk_878661C
.L_946a8:
	.4byte	gOamSlotsUsed


thumb_func_start func_80946AC
func_80946AC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r0, #0
	mov	r8, r0
	ldr	r0, .L_946cc
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_946d0
	mov	r0, #201	@ 0xc9
	lsl	r0, r0, #2
	bl	m4aSongNumStartOrChange
	b	.L_9473a
	.align	2, 0
.L_946cc:
	.4byte	gMPlayMemAccArea
.L_946d0:
	cmp	r0, #2
	bne	.L_946e0
	ldr	r0, .L_946dc
	bl	m4aSongNumStartOrChange
	b	.L_9473a
.L_946dc:
	.4byte	0x00000325
.L_946e0:
	cmp	r0, #3
	bne	.L_946f0
	ldr	r0, .L_946ec
	bl	m4aSongNumStartOrChange
	b	.L_9473a
.L_946ec:
	.4byte	0x00000327
.L_946f0:
	cmp	r0, #4
	bne	.L_946fe
	mov	r0, #202	@ 0xca
	lsl	r0, r0, #2
	bl	m4aSongNumStartOrChange
	b	.L_9473a
.L_946fe:
	cmp	r0, #5
	bne	.L_94710
	ldr	r0, .L_9470c
	bl	m4aSongNumStartOrChange
	b	.L_9473a
	.align	2, 0
.L_9470c:
	.4byte	0x0000032a
.L_94710:
	cmp	r0, #6
	bne	.L_94720
	ldr	r0, .L_9471c
	bl	m4aSongNumStartOrChange
	b	.L_9473a
.L_9471c:
	.4byte	0x0000032b
.L_94720:
	cmp	r0, #7
	bne	.L_94730
	ldr	r0, .L_9472c
	bl	m4aSongNumStartOrChange
	b	.L_9473a
.L_9472c:
	.4byte	0x0000032d
.L_94730:
	cmp	r0, #8
	bne	.L_9473a
	ldr	r0, .L_94750
	bl	m4aSongNumStartOrChange
.L_9473a:
	ldr	r0, .L_94754
	ldrb	r1, [r0, #0]
	add	r4, r0, #0
	cmp	r1, #4
	bls	.L_94746
	b	.L_948be
.L_94746:
	lsl	r0, r1, #2
	ldr	r1, .L_94758
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_94750:
	.4byte	0x0000032e
.L_94754:
	.4byte	gUnk_3004B25
.L_94758:
	.4byte	.L_9475c
.L_9475c:
	.4byte	.L_94770
	.4byte	.L_94798
	.4byte	.L_947cc
	.4byte	.L_94844
	.4byte	.L_94884
.L_94770:
	ldr	r3, .L_94788
	ldrh	r2, [r3, #4]
	add	r0, r2, #0
	sub	r0, #81	@ 0x51
	lsl	r0, r0, #16
	mov	r1, #183	@ 0xb7
	lsl	r1, r1, #17
	cmp	r0, r1
	bls	.L_9478c
	add	r0, r2, #2
	b	.L_9485a
	.align	2, 0
.L_94788:
	.4byte	gUnk_3004AC4
.L_9478c:
	lsl	r0, r2, #16
	lsr	r0, r0, #16
	cmp	r0, #150	@ 0x96
	beq	.L_94876
	add	r0, r2, #1
	b	.L_9485a
.L_94798:
	ldr	r2, .L_947b8
	ldrh	r3, [r2, #4]
	cmp	r3, #120	@ 0x78
	beq	.L_947c6
	ldrb	r0, [r2, #2]
	cmp	r0, #30
	bls	.L_947c0
	ldr	r0, .L_947bc
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_947b4
	b	.L_948be
.L_947b4:
	sub	r0, r3, #1
	b	.L_948b6
.L_947b8:
	.4byte	gUnk_3004AC4
.L_947bc:
	.4byte	gMainTimer
.L_947c0:
	add	r0, #1
	strb	r0, [r2, #2]
	b	.L_948be
.L_947c6:
	mov	r0, #0
	strb	r0, [r2, #2]
	b	.L_94876
.L_947cc:
	ldr	r0, .L_947dc
	ldrb	r1, [r0, #5]
	add	r5, r0, #0
	cmp	r1, #59	@ 0x3b
	bhi	.L_947e0
	add	r0, r1, #1
	strb	r0, [r5, #5]
	b	.L_947ec
.L_947dc:
	.4byte	gUnk_3004B04
.L_947e0:
	ldr	r1, .L_94834
	ldrb	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_947ec
	add	r0, #1
	strb	r0, [r1, #0]
.L_947ec:
	ldr	r1, .L_94834
	ldrb	r0, [r1, #0]
.L_947f0:
	.4byte	0xd9642806
	mov	r0, #0
	strb	r0, [r1, #0]
	mov	r3, #0
	strb	r3, [r5, #0]
	ldrb	r2, [r5, #1]
	add	r2, #1
	strb	r2, [r5, #1]
	ldrh	r0, [r5, #2]
	lsl	r0, r0, #1
	mov	r1, #0
	strh	r0, [r5, #2]
	strb	r1, [r5, #5]
	strh	r3, [r5, #6]
	ldr	r3, .L_94838
	ldr	r0, .L_9483c
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #0]
	str	r0, [r3, #0]
	str	r1, [r3, #4]
	lsl	r2, r2, #24
	lsr	r2, r2, #24
	cmp	r2, #13
	bls	.L_948be
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	ldr	r0, .L_94840
	mov	r1, #20
	bl	m4aMPlayFadeOut
	b	.L_948be
	.align	2, 0
.L_94834:
	.4byte	gVideoMode
.L_94838:
	.4byte	gUnk_3004AFC
.L_9483c:
	.4byte	sUnk_87470E0
.L_94840:
	.4byte	gMPlayInfo_2
.L_94844:
	ldr	r3, .L_94864
	ldrh	r2, [r3, #4]
	cmp	r2, #90	@ 0x5a
	beq	.L_94870
	ldr	r0, .L_94868
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_948be
	sub	r0, r2, #1
.L_9485a:
	ldr	r2, .L_9486c
	add	r1, r2, #0
	and	r0, r1
	strh	r0, [r3, #4]
	b	.L_948be
.L_94864:
	.4byte	gUnk_3004AC4
.L_94868:
	.4byte	gMainTimer
.L_9486c:
	.4byte	0x000001ff
.L_94870:
	ldr	r1, .L_94880
	mov	r0, #1
	strb	r0, [r1, #2]
.L_94876:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
.L_9487c:
	.4byte	0x0000e01f
.L_94880:
	.4byte	gUnk_3004AD4
.L_94884:
	ldr	r2, .L_948a8
	ldrh	r1, [r2, #4]
	ldr	r0, .L_948ac
	cmp	r1, r0
	bls	.L_948b4
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r3, #208	@ 0xd0
	lsl	r3, r3, #5
	add	r0, r3, #0
	strh	r0, [r1, #0]
	add	r1, #80	@ 0x50
	ldr	r2, .L_948b0
	add	r0, r2, #0
	strh	r0, [r1, #0]
	mov	r3, #1
	mov	r8, r3
	b	.L_948be
.L_948a8:
	.4byte	gUnk_3004AC4
.L_948ac:
	.4byte	0x0000013f
.L_948b0:
	.4byte	0x00001fdf
.L_948b4:
	add	r0, r1, #3
.L_948b6:
	ldr	r3, .L_948ec
	add	r1, r3, #0
	and	r0, r1
	strh	r0, [r2, #4]
.L_948be:
	ldr	r0, .L_948f0
	ldrb	r1, [r0, #0]
	add	r6, r0, #0
	cmp	r1, #0
	beq	.L_94908
	ldr	r3, .L_948f4
	ldrh	r0, [r3, #6]
	add	r2, r0, #1
	strh	r2, [r3, #6]
	ldr	r0, .L_948f8
	ldrh	r1, [r0, #4]
	ldrh	r0, [r3, #2]
	and	r0, r1
	cmp	r0, #0
	beq	.L_94908
	lsl	r0, r2, #16
	lsr	r1, r0, #16
	cmp	r1, #176	@ 0xb0
	beq	.L_94904
	cmp	r1, #180	@ 0xb4
	bne	.L_948fc
	mov	r0, #2
	b	.L_94906
.L_948ec:
	.4byte	0x000001ff
.L_948f0:
	.4byte	gVideoMode
.L_948f4:
	.4byte	gUnk_3004B04
.L_948f8:
	.4byte	gUnk_3004B0C
.L_948fc:
	mov	r0, #222	@ 0xde
	lsl	r0, r0, #1
	cmp	r1, r0
	bne	.L_94908
.L_94904:
	mov	r0, #1
.L_94906:
	strb	r0, [r3, #4]
.L_94908:
	mov	r3, #0
	ldrb	r0, [r6, #0]
	sub	r0, #1
	cmp	r0, #5
	bls	.L_94914
	b	.L_94be2
.L_94914:
	lsl	r0, r0, #2
	ldr	r1, .L_94920
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_94920:
	.4byte	.L_94924
.L_94924:
	.4byte	.L_9493c
	.4byte	.L_949e8
.L_9492c:
	.4byte	.L_94a50
	ldr	r2, .L_94be4
	lsr	r1, r1, #32
	ldr	r3, .L_94ab8
	lsr	r1, r1, #32
	ldr	r3, .L_94bbc
	lsr	r1, r1, #32
.L_9493c:
	ldr	r0, .L_94950
	ldr	r2, .L_94954
	ldrh	r1, [r0, #4]
	ldrh	r0, [r2, #2]
	and	r0, r1
	cmp	r0, #0
	bne	.L_94958
	mov	r0, #4
	strb	r0, [r6, #0]
	b	.L_9496e
.L_94950:
	.4byte	gUnk_3004B0C
.L_94954:
	.4byte	gUnk_3004B04
.L_94958:
	ldrb	r0, [r2, #1]
	cmp	r0, #11
	bls	.L_94968
	ldrh	r0, [r2, #6]
	cmp	r0, #168	@ 0xa8
	bls	.L_9496e
	add	r3, #1
	b	.L_9496e
.L_94968:
	bl	func_8094C00
	add	r3, r0, #0
.L_9496e:
	cmp	r3, #0
	bne	.L_94974
	b	.L_94be2
.L_94974:
	ldr	r1, .L_949c4
	ldr	r2, .L_949c8
	ldr	r3, .L_949cc
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #2
	add	r0, r0, r2
.L_94980:
	.4byte	0x60086800
.L_94984:
	.4byte	0x04c020c0
	str	r0, [r1, #4]
	ldr	r0, .L_949d0
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_949d4
	ldrb	r0, [r3, #1]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_949d8
	str	r0, [r1, #4]
	ldr	r0, .L_949dc
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #212	@ 0xd4
	mov	r2, #240	@ 0xf0
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #80	@ 0x50
	ldr	r3, .L_949e0
.L_949b4:
	.4byte	0x80081c18
	ldr	r1, .L_949e4
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	b	.L_94be2
	.align	2, 0
.L_949c4:
	.4byte	0x040000d4
.L_949c8:
	.4byte	sUnk_8747140
.L_949cc:
	.4byte	gUnk_3004B04
.L_949d0:
	.4byte	0x80001e00
.L_949d4:
	.4byte	sUnk_8747178
.L_949d8:
	.4byte	0x050001e0
.L_949dc:
	.4byte	0x80000010
.L_949e0:
	.4byte	0x00001844
.L_949e4:
	.4byte	gVideoMode
.L_949e8:
	ldr	r0, .L_94a38
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_949f6
	b	.L_94be2
.L_949f6:
	ldr	r5, .L_94a3c
	ldr	r7, .L_94a40
	ldr	r1, .L_94a44
	ldrb	r0, [r1, #1]
	add	r0, r0, r7
	ldrh	r2, [r5, #0]
	ldrb	r0, [r0, #0]
	cmp	r2, r0
	bcs	.L_94a0c
	add	r0, r2, #1
	strh	r0, [r5, #0]
.L_94a0c:
	ldr	r3, .L_94a48
	ldr	r0, .L_94a4c
	ldrb	r1, [r1, #1]
	add	r0, r1, r0
	ldrh	r2, [r3, #0]
	ldrb	r4, [r0, #0]
.L_94a18:
	.4byte	0xd90142a2
	sub	r0, r2, #1
	strh	r0, [r3, #0]
.L_94a20:
	add	r1, r1, r7
	ldrh	r0, [r5, #0]
	ldrb	r1, [r1, #0]
	cmp	r0, r1
	beq	.L_94a2c
	b	.L_94be2
.L_94a2c:
	ldrh	r0, [r3, #0]
	cmp	r0, r4
	beq	.L_94a34
	b	.L_94be2
.L_94a34:
	b	.L_94bdc
	.align	2, 0
.L_94a38:
	.4byte	gMainTimer
.L_94a3c:
	.4byte	gUnk_3001872
.L_94a40:
	.4byte	sUnk_87470EC
.L_94a44:
	.4byte	gUnk_3004B04
.L_94a48:
	.4byte	gUnk_3001874
.L_94a4c:
	.4byte	sUnk_87470FA
.L_94a50:
	.4byte	0x88c24812
	.4byte	0x004921e0
.L_94a58:
	.4byte	0x428a1c05
	bhi	.L_94a60
	b	.L_94be2
.L_94a60:
	ldr	r0, .L_94aa0
	ldrb	r1, [r0, #0]
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	bne	.L_94a96
	ldr	r2, .L_94aa4
	ldrh	r0, [r2, #0]
.L_94a70:
	.4byte	0xd0012800
	sub	r0, #1
	strh	r0, [r2, #0]
.L_94a78:
	ldr	r1, .L_94aa8
	ldrh	r0, [r1, #0]
	cmp	r0, #15
	bhi	.L_94a84
	add	r0, #1
	strh	r0, [r1, #0]
.L_94a84:
	ldrh	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_94a96
	ldrh	r0, [r1, #0]
	cmp	r0, #16
	bne	.L_94a96
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
.L_94a96:
	mov	r0, #0
	strb	r0, [r5, #4]
	b	.L_94be2
.L_94a9c:
	.4byte	gUnk_3004B04
.L_94aa0:
	.4byte	gMainTimer
.L_94aa4:
	.4byte	gUnk_3001872
.L_94aa8:
	.4byte	gUnk_3001874
	ldr	r0, .L_94b04
	ldr	r2, .L_94b08
.L_94ab0:
	.4byte	0x88508881
	and	r0, r1
	mov	r1, #176	@ 0xb0
.L_94ab8:
	.4byte	0x28001c15
	beq	.L_94ac2
	mov	r1, #240	@ 0xf0
	lsl	r1, r1, #1
.L_94ac2:
	ldrh	r0, [r5, #6]
	cmp	r0, r1
	bgt	.L_94aca
	b	.L_94be2
.L_94aca:
	mov	r1, sp
.L_94acc:
	.4byte	0x80082000
	ldr	r1, .L_94b0c
	mov	r0, sp
	str	r0, [r1, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_94b10
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_94b14
	ldrb	r2, [r0, #0]
	cmp	r2, #0
	bne	.L_94b20
	ldrb	r0, [r5, #1]
	cmp	r0, #13
	bne	.L_94b20
	mov	r0, sp
	strh	r2, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_94b18
	str	r0, [r1, #4]
	ldr	r0, .L_94b1c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	b	.L_94bdc
	.align	2, 0
.L_94b04:
	.4byte	gUnk_3004B0C
.L_94b08:
	.4byte	gUnk_3004B04
.L_94b0c:
	.4byte	0x040000d4
.L_94b10:
	.4byte	0x81000010
.L_94b14:
	.4byte	gLanguage
.L_94b18:
	.4byte	0x0600a000
.L_94b1c:
	.4byte	0x81000280
.L_94b20:
	ldr	r1, .L_94b4c
	ldr	r2, .L_94b50
	ldrb	r0, [r5, #1]
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_94b54
	str	r0, [r1, #4]
	ldr	r0, .L_94b58
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_94b38:
	.4byte	0x22d839d4
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #80	@ 0x50
	ldr	r3, .L_94b5c
	add	r0, r3, #0
	strh	r0, [r1, #0]
	b	.L_94bdc
.L_94b4c:
	.4byte	0x040000d4
.L_94b50:
	.4byte	sUnk_8747108
.L_94b54:
	.4byte	0x0600a000
.L_94b58:
	.4byte	0x80000280
.L_94b5c:
	.4byte	0x00001a41
	ldr	r0, .L_94b94
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_94be2
	ldr	r2, .L_94b98
	ldrh	r0, [r2, #0]
	cmp	r0, #15
	bhi	.L_94b78
	add	r0, #1
	strh	r0, [r2, #0]
.L_94b78:
	ldr	r1, .L_94b9c
	ldrh	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_94b84
	sub	r0, #1
	strh	r0, [r1, #0]
.L_94b84:
	ldrh	r0, [r2, #0]
	cmp	r0, #16
	bne	.L_94be2
	ldrh	r0, [r1, #0]
	cmp	r0, #0
	bne	.L_94be2
	b	.L_94bdc
	.align	2, 0
.L_94b94:
	.4byte	gMainTimer
.L_94b98:
	.4byte	gUnk_3001872
.L_94b9c:
	.4byte	gUnk_3001874
	ldr	r0, .L_94bf0
	ldrh	r1, [r0, #6]
	mov	r0, #212	@ 0xd4
	lsl	r0, r0, #2
	cmp	r1, r0
	bls	.L_94be2
	ldr	r0, .L_94bf4
	ldrb	r1, [r0, #0]
	mov	r0, #3
	and	r0, r1
	cmp	r0, #0
	bne	.L_94be2
	ldr	r2, .L_94bf8
	ldrh	r0, [r2, #0]
.L_94bbc:
	.4byte	0xd0012800
	sub	r0, #1
	strh	r0, [r2, #0]
.L_94bc4:
	ldr	r1, .L_94bfc
	ldrh	r0, [r1, #0]
	cmp	r0, #15
	bhi	.L_94bd0
	add	r0, #1
	strh	r0, [r1, #0]
.L_94bd0:
	ldrh	r0, [r2, #0]
	cmp	r0, #0
.L_94bd4:
	.4byte	0x8808d105
	cmp	r0, #16
	bne	.L_94be2
.L_94bdc:
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
.L_94be2:
	mov	r0, r8
.L_94be4:
	.4byte	0xbc08b001
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L_94bf0:
	.4byte	gUnk_3004B04
.L_94bf4:
	.4byte	gMainTimer
.L_94bf8:
	.4byte	gUnk_3001872
.L_94bfc:
	.4byte	gUnk_3001874


thumb_func_start func_8094C00
func_8094C00:
	push	{r4, r5, r6, r7, lr}
	mov	r0, #0
	mov	ip, r0
	ldr	r5, .L_94ca8
	ldrb	r0, [r5, #0]
	ldr	r6, .L_94cac
	cmp	r0, #0
	bne	.L_94cfc
	ldr	r0, .L_94cb0
	ldrb	r1, [r0, #2]
	add	r4, r0, #0
	cmp	r1, #6
	bls	.L_94cd0
	ldrb	r0, [r4, #1]
	add	r0, #1
	strb	r0, [r4, #1]
	mov	r1, ip
	strb	r1, [r4, #2]
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	cmp	r0, #2
	bne	.L_94c96
	ldrb	r0, [r6, #0]
	add	r0, #1
	strb	r0, [r6, #0]
	mov	r0, #160	@ 0xa0
	strh	r0, [r6, #2]
	ldrh	r0, [r4, #12]
	strh	r0, [r6, #4]
	ldr	r1, .L_94cb4
	ldr	r3, .L_94cb8
	ldrb	r0, [r5, #1]
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldr	r0, [r0, #0]
	str	r0, [r1, #0]
	ldr	r0, .L_94cbc
	str	r0, [r1, #4]
	ldr	r2, .L_94cc0
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	ldrb	r0, [r5, #1]
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldr	r0, [r0, #0]
	add	r0, #128	@ 0x80
	str	r0, [r1, #0]
	ldr	r0, .L_94cc4
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	ldrb	r0, [r5, #1]
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldr	r0, [r0, #0]
	mov	r7, #128	@ 0x80
	lsl	r7, r7, #1
	add	r0, r0, r7
	str	r0, [r1, #0]
	ldr	r0, .L_94cc8
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	ldrb	r0, [r5, #1]
	lsl	r0, r0, #2
	add	r0, r0, r3
	ldr	r0, [r0, #0]
	mov	r3, #192	@ 0xc0
	lsl	r3, r3, #1
	add	r0, r0, r3
	str	r0, [r1, #0]
	ldr	r0, .L_94ccc
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
.L_94c96:
	ldrb	r0, [r4, #1]
	cmp	r0, #4
	bls	.L_94cd4
	mov	r7, ip
	strb	r7, [r4, #1]
	ldrb	r0, [r5, #0]
	add	r0, #1
	strb	r0, [r5, #0]
	b	.L_94cd4
.L_94ca8:
	.4byte	gUnk_3004B04
.L_94cac:
	.4byte	gUnk_3004B1C
.L_94cb0:
	.4byte	gUnk_3004B0C
.L_94cb4:
	.4byte	0x040000d4
.L_94cb8:
	.4byte	sGoldenTreasureGfx
.L_94cbc:
	.4byte	0x06011800
.L_94cc0:
	.4byte	0x80000040
.L_94cc4:
	.4byte	0x06011c00
.L_94cc8:
	.4byte	0x06012000
.L_94ccc:
	.4byte	0x06012400
.L_94cd0:
	add	r0, r1, #1
	strb	r0, [r4, #2]
.L_94cd4:
	ldr	r2, .L_94d20
	ldrb	r1, [r4, #0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	ldrb	r1, [r4, #1]
	add	r0, r0, r1
	lsl	r0, r0, #1
	add	r0, r0, r2
.L_94ce4:
	.4byte	0x80e08800
	ldr	r2, .L_94d24
	ldrb	r1, [r4, #0]
	lsl	r0, r1, #2
	add	r0, r0, r1
	ldrb	r3, [r4, #1]
	add	r0, r0, r3
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	strh	r0, [r4, #8]
.L_94cfc:
	ldrb	r0, [r6, #0]
	cmp	r0, #0
	beq	.L_94d0e
	ldrh	r1, [r6, #2]
	ldr	r0, .L_94d28
	cmp	r1, r0
	bhi	.L_94d0e
	add	r0, r1, #6
	strh	r0, [r6, #2]
.L_94d0e:
	ldrb	r0, [r6, #0]
	sub	r0, #1
	cmp	r0, #6
	bhi	.L_94dee
	lsl	r0, r0, #2
	ldr	r1, .L_94d2c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_94d20:
	.4byte	sUnk_87471EC
.L_94d24:
	.4byte	sUnk_874721E
.L_94d28:
	.4byte	0x000001ef
.L_94d2c:
	.4byte	.L_94d30
.L_94d30:
	.4byte	.L_94d4c
	.4byte	.L_94d56
	.4byte	.L_94d88
	.4byte	.L_94d56
	.4byte	.L_94d88
	.4byte	.L_94d56
	.4byte	.L_94d88
.L_94d4c:
	ldrh	r0, [r6, #4]
	cmp	r0, #28
	bls	.L_94d62
	sub	r0, #2
	b	.L_94dec
.L_94d56:
	ldrh	r2, [r6, #4]
	cmp	r2, #35	@ 0x23
	bls	.L_94d74
	ldrb	r0, [r6, #1]
	cmp	r0, #3
	bls	.L_94d6e
.L_94d62:
	ldrb	r0, [r6, #0]
	add	r0, #1
	mov	r1, #0
	strb	r0, [r6, #0]
	strb	r1, [r6, #1]
	b	.L_94dee
.L_94d6e:
	add	r0, #1
	strb	r0, [r6, #1]
	b	.L_94dee
.L_94d74:
	ldr	r0, .L_94d84
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_94dee
	add	r0, r2, #1
	b	.L_94dec
.L_94d84:
	.4byte	gMainTimer
.L_94d88:
	add	r2, r6, #0
	ldrh	r3, [r2, #4]
	cmp	r3, #28
	bhi	.L_94dde
	ldrb	r1, [r2, #0]
	cmp	r1, #7
	bne	.L_94dc8
	mov	r0, #0
	strb	r0, [r2, #0]
	ldr	r2, .L_94dbc
	ldrb	r0, [r2, #2]
	add	r0, #1
	strb	r0, [r2, #2]
	ldr	r0, .L_94dc0
	ldr	r1, .L_94dc4
	ldrh	r0, [r0, #4]
	ldrh	r1, [r1, #10]
	sub	r0, r0, r1
	add	r0, #16
	strh	r0, [r2, #4]
	add	r0, r3, #0
	add	r0, #16
	strh	r0, [r2, #6]
	mov	r7, #1
	mov	ip, r7
	b	.L_94dee
.L_94dbc:
	.4byte	gUnk_3004AFC
.L_94dc0:
	.4byte	gUnk_3004AC4
.L_94dc4:
	.4byte	gUnk_3004B0C
.L_94dc8:
	ldrb	r0, [r2, #1]
	cmp	r0, #3
	bls	.L_94dd8
	add	r0, r1, #1
	mov	r1, #0
	strb	r0, [r2, #0]
	strb	r1, [r2, #1]
	b	.L_94dee
.L_94dd8:
	add	r0, #1
	strb	r0, [r2, #1]
	b	.L_94dee
.L_94dde:
	ldr	r0, .L_94df8
	ldrb	r1, [r0, #0]
	mov	r0, #1
	and	r0, r1
	cmp	r0, #0
	beq	.L_94dee
	sub	r0, r3, #1
.L_94dec:
	strh	r0, [r6, #4]
.L_94dee:
	mov	r0, ip
.L_94df0:
	.4byte	0xbc02bcf0
	bx	r1
	.align	2, 0
.L_94df8:
	.4byte	gMainTimer
