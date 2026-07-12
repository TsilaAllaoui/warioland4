.include "macros.s.inc"


thumb_func_start BossPause
BossPause:
	push	{r4, r5, r6, r7, lr}
	mov	r7, #0
	ldr	r1, .L_743d8
	ldrb	r0, [r1, #0]
	sub	r0, #1
	add	r4, r1, #0
	cmp	r0, #9
	bls	.L_743ce
	b	.L_746b2
.L_743ce:
	lsl	r0, r0, #2
	ldr	r1, .L_743dc
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_743d8:
	.4byte	gUnk_300001A
.L_743dc:
	.4byte	.L_743e0
.L_743e0:
	.4byte	.L_74408
	.4byte	.L_74484
	.4byte	.L_744b8
	.4byte	.L_7451c
	.4byte	.L_74540
	.4byte	.L_7459c
	.4byte	.L_74614
	.4byte	.L_74664
	.4byte	.L_74690
	.4byte	.L_746a8
.L_74408:
	ldr	r4, .L_7446c
	ldr	r0, [r4, #0]
	ldr	r5, .L_74470
	ldr	r6, .L_74474
	ldrh	r2, [r6, #42]	@ 0x2a
	lsr	r2, r2, #2
	add	r1, r5, #0
	bl	m4aMPlayVolumeControl
	ldr	r0, [r4, #12]
	ldrh	r2, [r6, #42]	@ 0x2a
	lsr	r2, r2, #2
	add	r1, r5, #0
	bl	m4aMPlayVolumeControl
	ldr	r0, [r4, #24]
	add	r1, r5, #0
	mov	r2, #0
	bl	m4aMPlayVolumeControl
	ldr	r0, [r4, #36]	@ 0x24
	add	r1, r5, #0
	mov	r2, #0
	bl	m4aMPlayVolumeControl
	ldr	r0, [r4, #48]	@ 0x30
	add	r1, r5, #0
	mov	r2, #0
	bl	m4aMPlayVolumeControl
	ldr	r0, [r4, #60]	@ 0x3c
	add	r1, r5, #0
	mov	r2, #0
	bl	m4aMPlayVolumeControl
	ldr	r0, [r4, #72]	@ 0x48
	add	r1, r5, #0
	mov	r2, #0
	bl	m4aMPlayVolumeControl
	ldr	r1, .L_74478
	ldr	r2, .L_7447c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #4
	ldr	r3, .L_74480
	add	r0, r3, #0
	strh	r0, [r1, #0]
	b	.L_7463c
	.align	2, 0
.L_7446c:
	.4byte	gMPlayTable
.L_74470:
	.4byte	0x0000ffff
.L_74474:
	.4byte	gCurrentRoomHeader
.L_74478:
	.4byte	0x04000042
.L_7447c:
	.4byte	0x00007878
.L_74480:
	.4byte	0x00005050
.L_74484:
	ldr	r3, .L_744a4
	mov	r0, #0
	strh	r0, [r3, #0]
	ldr	r2, .L_744a8
	ldrh	r1, [r2, #0]
	ldr	r0, .L_744ac
	and	r0, r1
	strh	r0, [r2, #0]
	ldr	r2, .L_744b0
	ldrh	r1, [r2, #0]
	ldr	r0, .L_744b4
	and	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #1
	strh	r0, [r3, #0]
	b	.L_7469c
.L_744a4:
	.4byte	0x04000208
.L_744a8:
	.4byte	0x04000004
.L_744ac:
	.4byte	0x0000ffef
.L_744b0:
	.4byte	0x04000200
.L_744b4:
	.4byte	0x0000fffd
.L_744b8:
	ldr	r2, .L_744f8
	ldrh	r1, [r2, #0]
	ldr	r0, .L_744fc
	and	r0, r1
	mov	r3, #224	@ 0xe0
	lsl	r3, r3, #3
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #0
	bl	LoadBossPauseBackgroundTiles
	ldr	r1, .L_74500
	ldr	r0, .L_74504
	str	r0, [r1, #0]
	ldr	r0, .L_74508
	str	r0, [r1, #4]
	ldr	r0, .L_7450c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r2, .L_74510
	ldrb	r0, [r2, #0]
	mov	r1, #8
	orr	r0, r1
	strb	r0, [r2, #0]
	ldr	r1, .L_74514
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	ldr	r1, .L_74518
	b	.L_74534
	.align	2, 0
.L_744f8:
	.4byte	0x0400000e
.L_744fc:
	.4byte	0x0000e0ff
.L_74500:
	.4byte	0x040000d4
.L_74504:
	.4byte	0x0201f040
.L_74508:
	.4byte	0x06003800
.L_7450c:
	.4byte	0x80000400
.L_74510:
	.4byte	0x0400004a
.L_74514:
	.4byte	gUnk_300001A
.L_74518:
	.4byte	gUnk_300188E
.L_7451c:
	ldr	r1, .L_7453c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #29
	bhi	.L_7452e
	b	.L_746b2
.L_7452e:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
.L_74534:
	mov	r0, #0
	strh	r0, [r1, #0]
	b	.L_746b2
	.align	2, 0
.L_7453c:
	.4byte	gUnk_300188E
.L_74540:
	ldr	r3, .L_74560
	ldrh	r0, [r3, #0]
	add	r2, r0, #1
	strh	r2, [r3, #0]
	ldr	r0, .L_74564
	ldrh	r1, [r0, #0]
	mov	r0, #8
	and	r0, r1
	cmp	r0, #0
	beq	.L_74568
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	mov	r0, #0
	strh	r0, [r3, #0]
	b	.L_746b2
.L_74560:
	.4byte	gUnk_300188E
.L_74564:
	.4byte	gButtonsPressed
.L_74568:
	mov	r0, #31
	and	r0, r2
	cmp	r0, #0
	beq	.L_74572
	b	.L_746b2
.L_74572:
	mov	r0, #32
	and	r2, r0
	cmp	r2, #0
	beq	.L_7458c
	ldr	r2, .L_74588
	ldrb	r1, [r2, #0]
	mov	r0, #55	@ 0x37
	and	r0, r1
	strb	r0, [r2, #0]
	b	.L_746b2
	.align	2, 0
.L_74588:
	.4byte	0x0400004a
.L_7458c:
	ldr	r0, .L_74598
	ldrb	r1, [r0, #0]
	mov	r2, #8
	orr	r1, r2
	strb	r1, [r0, #0]
	b	.L_746b2
.L_74598:
	.4byte	0x0400004a
.L_7459c:
	ldr	r0, .L_74600
	bl	m4aSongNumStart
	ldr	r2, .L_74604
	ldrb	r1, [r2, #0]
	mov	r0, #55	@ 0x37
	and	r0, r1
	strb	r0, [r2, #0]
	ldr	r4, .L_74608
	ldr	r0, [r4, #0]
	ldr	r5, .L_7460c
	ldr	r6, .L_74610
	ldrh	r2, [r6, #42]	@ 0x2a
	add	r1, r5, #0
	bl	m4aMPlayVolumeControl
	ldr	r0, [r4, #12]
	ldrh	r2, [r6, #42]	@ 0x2a
	add	r1, r5, #0
	bl	m4aMPlayVolumeControl
	ldr	r0, [r4, #24]
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	add	r1, r5, #0
	add	r2, r6, #0
	bl	m4aMPlayVolumeControl
	ldr	r0, [r4, #36]	@ 0x24
	add	r1, r5, #0
	add	r2, r6, #0
	bl	m4aMPlayVolumeControl
	ldr	r0, [r4, #48]	@ 0x30
	add	r1, r5, #0
	add	r2, r6, #0
	bl	m4aMPlayVolumeControl
	ldr	r0, [r4, #60]	@ 0x3c
	add	r1, r5, #0
	add	r2, r6, #0
	bl	m4aMPlayVolumeControl
	ldr	r0, [r4, #72]	@ 0x48
	add	r1, r5, #0
	add	r2, r6, #0
	bl	m4aMPlayVolumeControl
	b	.L_7463c
	.align	2, 0
.L_74600:
	.4byte	0x00000123
.L_74604:
	.4byte	0x0400004a
.L_74608:
	.4byte	gMPlayTable
.L_7460c:
	.4byte	0x0000ffff
.L_74610:
	.4byte	gCurrentRoomHeader
.L_74614:
	ldr	r2, .L_74648
	ldrh	r1, [r2, #0]
	ldr	r0, .L_7464c
	and	r0, r1
	mov	r3, #192	@ 0xc0
	lsl	r3, r3, #3
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #1
	bl	LoadBossPauseBackgroundTiles
	ldr	r1, .L_74650
	ldr	r0, .L_74654
	str	r0, [r1, #0]
	ldr	r0, .L_74658
	str	r0, [r1, #4]
	ldr	r0, .L_7465c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
.L_7463c:
	ldr	r1, .L_74660
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	b	.L_746b2
	.align	2, 0
.L_74648:
	.4byte	0x0400000e
.L_7464c:
	.4byte	0x0000e0ff
.L_74650:
	.4byte	0x040000d4
.L_74654:
	.4byte	0x0201f840
.L_74658:
	.4byte	0x06003800
.L_7465c:
	.4byte	0x80000400
.L_74660:
	.4byte	gUnk_300001A
.L_74664:
	ldr	r0, .L_74684
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_7469c
	ldr	r2, .L_74688
	ldrh	r0, [r2, #0]
	mov	r1, #2
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r2, .L_7468c
	ldrh	r0, [r2, #0]
	mov	r1, #16
	orr	r0, r1
	strh	r0, [r2, #0]
	b	.L_7469c
	.align	2, 0
.L_74684:
	.4byte	gEnableHBlank
.L_74688:
	.4byte	0x04000200
.L_7468c:
	.4byte	0x04000004
.L_74690:
	ldr	r1, .L_746a4
	mov	r0, #240	@ 0xf0
	strh	r0, [r1, #0]
	add	r1, #4
	mov	r0, #160	@ 0xa0
	strh	r0, [r1, #0]
.L_7469c:
	ldrb	r0, [r4, #0]
	add	r0, #1
	strb	r0, [r4, #0]
	b	.L_746b2
.L_746a4:
	.4byte	0x04000042
.L_746a8:
	ldr	r1, .L_746bc
	mov	r0, #0
	strh	r0, [r1, #0]
	strb	r0, [r4, #0]
	mov	r7, #1
.L_746b2:
	add	r0, r7, #0
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_746bc:
	.4byte	gUnk_300188E
