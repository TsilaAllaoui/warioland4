.include "macros.s.inc"


thumb_func_start func_800C470
func_800C470:
	push	{r4, lr}
	add	r4, r1, #0
	ldr	r1, .L_c484
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #49	@ 0x31
	bgt	.L_c48c
	ldr	r0, .L_c488
	b	.L_c54e
.L_c484:
	.4byte	0x149
.L_c488:
	.4byte	sUnk_82A34A4
.L_c48c:
	cmp	r1, #53	@ 0x35
	bgt	.L_c498
	ldr	r0, .L_c494
	b	.L_c54e
.L_c494:
	.4byte	sUnk_82A34B2
.L_c498:
	cmp	r1, #57	@ 0x39
	bgt	.L_c4a4
	ldr	r0, .L_c4a0
	b	.L_c54e
.L_c4a0:
	.4byte	sUnk_82A34C0
.L_c4a4:
	cmp	r1, #61	@ 0x3d
	bgt	.L_c4b0
	ldr	r0, .L_c4ac
	b	.L_c54e
.L_c4ac:
	.4byte	sUnk_82A34B2
.L_c4b0:
	cmp	r1, #111	@ 0x6f
	bgt	.L_c4bc
	ldr	r0, .L_c4b8
	b	.L_c54e
.L_c4b8:
	.4byte	sUnk_82A34A4
.L_c4bc:
	cmp	r1, #115	@ 0x73
	bgt	.L_c4c8
	ldr	r0, .L_c4c4
	b	.L_c54e
.L_c4c4:
	.4byte	sUnk_82A34B2
.L_c4c8:
	cmp	r1, #123	@ 0x7b
	bgt	.L_c4d4
	ldr	r0, .L_c4d0
	b	.L_c54e
.L_c4d0:
	.4byte	sUnk_82A34C0
.L_c4d4:
	cmp	r1, #127	@ 0x7f
	bgt	.L_c4e0
	ldr	r0, .L_c4dc
	b	.L_c54e
.L_c4dc:
	.4byte	sUnk_82A34B2
.L_c4e0:
	cmp	r1, #177	@ 0xb1
	bgt	.L_c4ec
	ldr	r0, .L_c4e8
	b	.L_c54e
.L_c4e8:
	.4byte	sUnk_82A34A4
.L_c4ec:
	cmp	r1, #192	@ 0xc0
	bgt	.L_c4f8
	ldr	r0, .L_c4f4
	b	.L_c54e
.L_c4f4:
	.4byte	sUnk_82A34CE
.L_c4f8:
	cmp	r1, #200	@ 0xc8
	bgt	.L_c504
	ldr	r0, .L_c500
	b	.L_c54e
.L_c500:
	.4byte	sUnk_82A34DC
.L_c504:
	cmp	r1, #208	@ 0xd0
	bgt	.L_c510
	ldr	r0, .L_c50c
	b	.L_c54e
.L_c50c:
	.4byte	sUnk_82A34F6
.L_c510:
	cmp	r1, #212	@ 0xd4
	bgt	.L_c51c
	ldr	r0, .L_c518
	b	.L_c54e
.L_c518:
	.4byte	sUnk_82A3510
.L_c51c:
	cmp	r1, #216	@ 0xd8
	bgt	.L_c528
	ldr	r0, .L_c524
	b	.L_c54e
.L_c524:
	.4byte	sUnk_82A352A
.L_c528:
	cmp	r1, #220	@ 0xdc
	bgt	.L_c534
	ldr	r0, .L_c530
	b	.L_c54e
.L_c530:
	.4byte	sUnk_82A3544
.L_c534:
	cmp	r1, #224	@ 0xe0
	bgt	.L_c540
	ldr	r0, .L_c53c
	b	.L_c54e
.L_c53c:
	.4byte	sUnk_82A355E
.L_c540:
	cmp	r1, #228	@ 0xe4
	bgt	.L_c54c
	ldr	r0, .L_c548
	b	.L_c54e
.L_c548:
	.4byte	sUnk_82A3578
.L_c54c:
	ldr	r0, .L_c564
.L_c54e:
	str	r0, [r4, #0]
	mov	r2, #0
	mov	r0, #164	@ 0xa4
	lsl	r0, r0, #1
	cmp	r1, r0
	bne	.L_c55c
	mov	r2, #1
.L_c55c:
	add	r0, r2, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.L_c564:
	.4byte	sUnk_82A3592


thumb_func_start func_800C568
func_800C568:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #24
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_c580
	ldr	r0, .L_c57c
	b	.L_c59a
.L_c57c:
	.4byte	sUnk_82A35AC
.L_c580:
	cmp	r1, #11
	bgt	.L_c58c
	ldr	r0, .L_c588
	b	.L_c59a
.L_c588:
	.4byte	sUnk_82A35C6
.L_c58c:
	cmp	r1, #17
	bgt	.L_c598
	ldr	r0, .L_c594
	b	.L_c59a
.L_c594:
	.4byte	sUnk_82A35E0
.L_c598:
	ldr	r0, .L_c5ac
.L_c59a:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #23
	bne	.L_c5a4
	mov	r0, #1
.L_c5a4:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_c5ac:
	.4byte	sUnk_82A35FA


thumb_func_start func_800C5B0
func_800C5B0:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #74	@ 0x4a
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #49	@ 0x31
	bgt	.L_c5c8
	ldr	r0, .L_c5c4
	b	.L_c5ee
.L_c5c4:
	.4byte	sUnk_82A3614
.L_c5c8:
	cmp	r1, #55	@ 0x37
	bgt	.L_c5d4
	ldr	r0, .L_c5d0
	b	.L_c5ee
.L_c5d0:
	.4byte	sUnk_82A3622
.L_c5d4:
	cmp	r1, #61	@ 0x3d
	bgt	.L_c5e0
	ldr	r0, .L_c5dc
	b	.L_c5ee
.L_c5dc:
	.4byte	sUnk_82A3636
.L_c5e0:
	cmp	r1, #67	@ 0x43
	bgt	.L_c5ec
	ldr	r0, .L_c5e8
	b	.L_c5ee
.L_c5e8:
	.4byte	sUnk_82A3650
.L_c5ec:
	ldr	r0, .L_c600
.L_c5ee:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #73	@ 0x49
	bne	.L_c5f8
	mov	r0, #1
.L_c5f8:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_c600:
	.4byte	sUnk_82A366A


thumb_func_start func_800C604
func_800C604:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #30
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_c61c
	ldr	r0, .L_c618
	b	.L_c642
.L_c618:
	.4byte	sUnk_82A3684
.L_c61c:
	cmp	r1, #11
	bgt	.L_c628
	ldr	r0, .L_c624
	b	.L_c642
.L_c624:
	.4byte	sUnk_82A368C
.L_c628:
	cmp	r1, #17
	bgt	.L_c634
	ldr	r0, .L_c630
	b	.L_c642
.L_c630:
	.4byte	sUnk_82A3694
.L_c634:
	cmp	r1, #23
	bgt	.L_c640
	ldr	r0, .L_c63c
	b	.L_c642
.L_c63c:
	.4byte	sUnk_82A369C
.L_c640:
	ldr	r0, .L_c654
.L_c642:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #29
	bne	.L_c64c
	mov	r0, #1
.L_c64c:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_c654:
	.4byte	sUnk_82A36A4


thumb_func_start func_800C658
func_800C658:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #22
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #3
	bgt	.L_c670
	ldr	r0, .L_c66c
	b	.L_c696
.L_c66c:
	.4byte	sUnk_82A3760
.L_c670:
	cmp	r1, #7
	bgt	.L_c67c
	ldr	r0, .L_c678
	b	.L_c696
.L_c678:
	.4byte	sUnk_82A3768
.L_c67c:
	cmp	r1, #11
	bgt	.L_c688
	ldr	r0, .L_c684
	b	.L_c696
.L_c684:
	.4byte	sUnk_82A3770
.L_c688:
	cmp	r1, #15
	bgt	.L_c694
	ldr	r0, .L_c690
	b	.L_c696
.L_c690:
	.4byte	sUnk_82A3778
.L_c694:
	mov	r0, #0
.L_c696:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #0
	bne	.L_c6a0
	mov	r0, #1
.L_c6a0:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_800C6A8
func_800C6A8:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #22
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #3
	bgt	.L_c6c0
	ldr	r0, .L_c6bc
	b	.L_c6e6
.L_c6bc:
	.4byte	sUnk_82A3780
.L_c6c0:
	cmp	r1, #7
	bgt	.L_c6cc
	ldr	r0, .L_c6c8
	b	.L_c6e6
.L_c6c8:
	.4byte	sUnk_82A3788
.L_c6cc:
	cmp	r1, #11
	bgt	.L_c6d8
	ldr	r0, .L_c6d4
	b	.L_c6e6
.L_c6d4:
	.4byte	sUnk_82A3790
.L_c6d8:
	cmp	r1, #15
	bgt	.L_c6e4
	ldr	r0, .L_c6e0
	b	.L_c6e6
.L_c6e0:
	.4byte	sUnk_82A3798
.L_c6e4:
	mov	r0, #0
.L_c6e6:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #0
	bne	.L_c6f0
	mov	r0, #1
.L_c6f0:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0


thumb_func_start func_800C6F8
func_800C6F8:
	ldr	r1, .L_c700
	str	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_c700:
	.4byte	sUnk_82A5310


thumb_func_start func_800C704
func_800C704:
	ldr	r3, .L_c714
	strb	r0, [r3, #0]
	strb	r1, [r3, #1]
	mov	r0, #0
	strh	r2, [r3, #14]
	strb	r0, [r3, #31]
	strb	r0, [r3, #30]
	bx	lr
.L_c714:
	.4byte	gWarioData


thumb_func_start func_800C718
func_800C718:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #12
	str	r0, [sp, #0]
	str	r1, [sp, #4]
	ldr	r0, [sp, #44]	@ 0x2c
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r2, [sp, #8]
	ldr	r5, .L_c808
	ldrh	r6, [r5, #0]
	ldr	r4, .L_c80c
	ldrh	r7, [r4, #0]
	strh	r0, [r5, #0]
	strh	r3, [r4, #0]
	ldr	r1, .L_c810
	ldr	r0, .L_c814
	mov	r8, r0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	bl	_call_via_r0
	strh	r6, [r5, #0]
	strh	r7, [r4, #0]
	mov	r2, r8
	ldrh	r1, [r2, #14]
	mov	r0, #16
	and	r0, r1
	mov	r2, #1
	cmp	r0, #0
	beq	.L_c762
	mov	r2, #0
.L_c762:
	ldr	r0, .L_c818
	mov	r3, r8
	ldrb	r1, [r3, #0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	add	r0, r2, #0
	ldr	r1, [r1, #0]
	bl	_call_via_r1
	ldr	r1, .L_c81c
	mov	r0, #0
	strb	r0, [r1, #0]
	ldr	r4, .L_c820
	mov	r0, r8
	ldr	r3, [r0, #32]
	ldrh	r7, [r3, #0]
	add	r3, #2
	cmp	r7, #0
	beq	.L_c7e8
	ldr	r1, .L_c824
	mov	r9, r1
	ldr	r2, .L_c828
	mov	sl, r2
	mov	r1, #3
	ldr	r0, [sp, #8]
	and	r0, r1
	lsl	r0, r0, #2
	mov	r8, r0
	add	r5, r4, #0
	mov	r0, #13
	neg	r0, r0
	mov	ip, r0
	add	r6, r7, #0
.L_c7a4:
	ldrh	r0, [r3, #0]
	add	r3, #2
	strh	r0, [r4, #0]
	add	r4, #2
	ldr	r1, [sp, #4]
	add	r0, r0, r1
	strb	r0, [r5, #0]
	ldrh	r1, [r3, #0]
	add	r3, #2
	strh	r1, [r4, #0]
	add	r4, #2
	ldr	r2, [sp, #0]
	add	r1, r1, r2
	mov	r0, r9
	and	r1, r0
	ldrh	r2, [r5, #2]
	mov	r0, sl
	and	r0, r2
	orr	r0, r1
	strh	r0, [r5, #2]
	ldrh	r0, [r3, #0]
	strh	r0, [r4, #0]
	add	r3, #2
	ldrb	r1, [r5, #5]
	mov	r0, ip
	and	r0, r1
	mov	r1, r8
	orr	r0, r1
	strb	r0, [r5, #5]
	add	r4, #4
	add	r5, #8
	sub	r6, #1
	cmp	r6, #0
	bne	.L_c7a4
.L_c7e8:
	ldr	r0, .L_c81c
	strb	r7, [r0, #0]
	ldr	r1, .L_c814
	ldrb	r0, [r1, #30]
	add	r0, #1
	strb	r0, [r1, #30]
	add	r0, r4, #0
	add	sp, #12
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_c808:
	.4byte	gButtonsPressed
.L_c80c:
	.4byte	gButtonsHeld
.L_c810:
	.4byte	sWarioPoseHandlerTable
.L_c814:
	.4byte	gWarioData
.L_c818:
	.4byte	sUnk_82DED30
.L_c81c:
	.4byte	gOamSlotsUsed
.L_c820:
	.4byte	gOamBuffer
.L_c824:
	.4byte	0x1FF
.L_c828:
	.4byte	0xFFFFFE00


thumb_func_start func_800C82C
func_800C82C:
	ldr	r3, .L_c86c
	ldrh	r0, [r3, #40]	@ 0x28
	cmp	r0, #0
	beq	.L_c84c
	ldr	r2, .L_c870
	ldr	r0, [r3, #36]	@ 0x24
	str	r0, [r2, #0]
	ldr	r0, .L_c874
	str	r0, [r2, #4]
	ldrh	r0, [r3, #40]	@ 0x28
	lsr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_c84c:
	ldrh	r0, [r3, #48]	@ 0x30
	cmp	r0, #0
	beq	.L_c86a
	ldr	r2, .L_c870
	ldr	r0, [r3, #44]	@ 0x2c
	str	r0, [r2, #0]
	ldr	r0, .L_c878
	str	r0, [r2, #4]
	ldrh	r0, [r3, #48]	@ 0x30
	lsr	r0, r0, #1
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #24
	orr	r0, r1
	str	r0, [r2, #8]
	ldr	r0, [r2, #8]
.L_c86a:
	bx	lr
.L_c86c:
	.4byte	gWarioData
.L_c870:
	.4byte	0x40000D4
.L_c874:
	.4byte	0x6010000
.L_c878:
	.4byte	0x6010400


thumb_func_start func_800C87C
func_800C87C:
	ldr	r1, .L_c890
	ldr	r0, .L_c894
	str	r0, [r1, #0]
	ldr	r0, .L_c898
	str	r0, [r1, #4]
	ldr	r0, .L_c89c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	bx	lr
	.align	2, 0
.L_c890:
	.4byte	0x40000D4
.L_c894:
	.4byte	sWarioDefaultPalette
.L_c898:
	.4byte	0x5000200
.L_c89c:
	.4byte	0x80000010
