.include "macros.s.inc"


thumb_func_start func_8074808
func_8074808:
	push	{r4, lr}
	mov	r4, #0
	ldr	r2, .L_74828
	strb	r4, [r2, #2]
	ldrb	r3, [r2, #1]
	add	r1, r3, #0
	cmp	r1, #0
	beq	.L_74868
	ldrb	r0, [r2, #3]
	cmp	r0, #0
	bne	.L_74864
	cmp	r1, #128	@ 0x80
	bne	.L_7482c
	strb	r4, [r2, #0]
	strb	r4, [r2, #1]
	b	.L_74868
.L_74828:
	.4byte	gHeartGauge
.L_7482c:
	cmp	r1, #255	@ 0xff
	bne	.L_74834
	mov	r4, #8
	b	.L_74868
.L_74834:
	mov	r0, #1
	strb	r0, [r2, #3]
	ldrb	r0, [r2, #0]
	add	r0, #1
	strb	r0, [r2, #0]
	ldrb	r4, [r2, #0]
	sub	r0, r3, #1
	strb	r0, [r2, #1]
	ldr	r1, .L_74860
	ldrh	r0, [r1, #20]
	sub	r0, #40	@ 0x28
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r1, #18]
	sub	r1, #16
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r2, #63	@ 0x3f
	bl	SpriteSpawnSecondary
	b	.L_74868
	.align	2, 0
.L_74860:
	.4byte	gWarioData
.L_74864:
	sub	r0, #1
	strb	r0, [r2, #3]
.L_74868:
	ldr	r2, .L_74894
	ldr	r1, .L_74898
	ldr	r3, .L_7489c
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
	cmp	r4, #8
	bne	.L_748c8
	ldr	r2, .L_748a0
	ldrb	r0, [r2, #0]
	ldrb	r1, [r2, #1]
	add	r0, r0, r1
	cmp	r0, #7
	ble	.L_748a4
	mov	r0, #255	@ 0xff
	strb	r0, [r3, #1]
	mov	r0, #0
	strb	r0, [r3, #3]
	b	.L_748c8
	.align	2, 0
.L_74894:
	.4byte	gCurrentHeartGaugeGfx
.L_74898:
	.4byte	sHeartGaugeGfx
.L_7489c:
	.4byte	gHeartGauge
.L_748a0:
	.4byte	gHeartMeter
.L_748a4:
	mov	r0, #128	@ 0x80
	strb	r0, [r3, #1]
	strb	r4, [r3, #3]
	ldrb	r0, [r2, #1]
	add	r0, #1
	strb	r0, [r2, #1]
	ldrb	r1, [r2, #0]
	ldrb	r0, [r2, #1]
	add	r0, r1, r0
	cmp	r0, #8
	ble	.L_748c0
	mov	r0, #8
	sub	r0, r0, r1
	strb	r0, [r2, #1]
.L_748c0:
	ldrb	r0, [r2, #1]
	lsl	r0, r0, #3
	strb	r0, [r2, #2]
	strb	r4, [r2, #3]
.L_748c8:
	ldr	r1, .L_74900
	ldrb	r2, [r1, #1]
	cmp	r2, #0
	beq	.L_7490c
	ldrb	r0, [r1, #3]
	cmp	r0, #0
	bne	.L_74908
	mov	r0, #8
	strb	r0, [r1, #3]
	ldrb	r0, [r1, #0]
	add	r0, #1
	strb	r0, [r1, #0]
	sub	r0, r2, #1
	strb	r0, [r1, #1]
	ldr	r1, .L_74904
	ldrh	r0, [r1, #20]
	sub	r0, #72	@ 0x48
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldrh	r1, [r1, #18]
	sub	r1, #32
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	mov	r2, #62	@ 0x3e
	bl	SpriteSpawnSecondary
	b	.L_7490c
	.align	2, 0
.L_74900:
	.4byte	gHeartMeter
.L_74904:
	.4byte	gWarioData
.L_74908:
	sub	r0, #1
	strb	r0, [r1, #3]
.L_7490c:
	ldr	r3, .L_74954
	ldrb	r0, [r3, #2]
	cmp	r0, #0
	beq	.L_74918
	sub	r0, #1
	strb	r0, [r3, #2]
.L_74918:
	ldrb	r0, [r3, #0]
	cmp	r0, #1
	bne	.L_7496c
	ldr	r0, .L_74958
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bhi	.L_7496c
	ldr	r0, .L_7495c
	ldrb	r1, [r0, #0]
	mov	r0, #32
	and	r0, r1
	cmp	r0, #0
	beq	.L_7496c
	mov	r0, #63	@ 0x3f
	and	r0, r1
	cmp	r0, #32
	bne	.L_7494a
	ldr	r0, .L_74960
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_7494a
	mov	r0, #228	@ 0xe4
	lsl	r0, r0, #1
	bl	m4aSongNumStart
.L_7494a:
	ldr	r0, .L_74964
	ldr	r1, .L_74968
	ldr	r1, [r1, #36]	@ 0x24
	str	r1, [r0, #0]
	b	.L_7497a
.L_74954:
	.4byte	gHeartMeter
.L_74958:
	.4byte	gTimerState
.L_7495c:
	.4byte	gMainTimer
.L_74960:
	.4byte	gWarioPauseTimer
.L_74964:
	.4byte	gCurrentHeartMeterGfx
.L_74968:
	.4byte	sHeartMeterGfx
.L_7496c:
	ldr	r2, .L_74980
	ldr	r1, .L_74984
	ldrb	r0, [r3, #0]
	lsl	r0, r0, #2
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	str	r0, [r2, #0]
.L_7497a:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_74980:
	.4byte	gCurrentHeartMeterGfx
.L_74984:
	.4byte	sHeartMeterGfx


thumb_func_start func_8074988
func_8074988:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r7, .L_74ad0
	mov	r0, #0
	mov	ip, r0
	ldr	r0, .L_74ad4
	ldrb	r1, [r0, #0]
	mov	sl, r7
	cmp	r1, #3
	bhi	.L_749a4
	b	.L_74ae8
.L_749a4:
	ldr	r0, .L_74ad8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_749ae
	b	.L_74bdc
.L_749ae:
	ldr	r0, .L_74adc
	ldrb	r0, [r0, #0]
	cmp	r0, #11
	bne	.L_749b8
	b	.L_74bdc
.L_749b8:
	mov	r1, ip
	strh	r1, [r7, #0]
	add	r7, #2
	mov	r0, #6
	mov	r2, sl
	strb	r0, [r2, #0]
	ldrb	r1, [r2, #1]
	mov	r6, #63	@ 0x3f
	add	r0, r6, #0
	and	r0, r1
	mov	r1, #64	@ 0x40
	mov	r8, r1
	mov	r2, r8
	orr	r0, r2
	mov	r1, sl
	strb	r0, [r1, #1]
	mov	r2, ip
	strh	r2, [r7, #0]
	add	r7, #2
	ldrh	r1, [r1, #2]
	ldr	r5, .L_74ae0
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #161	@ 0xa1
	orr	r0, r1
	mov	r1, sl
	strh	r0, [r1, #2]
	ldrb	r1, [r1, #3]
	add	r0, r6, #0
	and	r0, r1
	mov	r2, r8
	orr	r0, r2
	mov	r1, sl
	strb	r0, [r1, #3]
	mov	r2, ip
	strh	r2, [r7, #0]
	ldrh	r1, [r1, #4]
	ldr	r4, .L_74ae4
	add	r0, r4, #0
	and	r0, r1
	mov	r2, #176	@ 0xb0
	lsl	r2, r2, #1
	add	r1, r2, #0
	orr	r0, r1
	mov	r1, sl
	strh	r0, [r1, #4]
	ldrb	r1, [r1, #5]
	mov	r3, #15
	add	r0, r3, #0
	and	r0, r1
	mov	r2, #224	@ 0xe0
	orr	r0, r2
	mov	r1, sl
	strb	r0, [r1, #5]
	add	r7, #4
	mov	r2, #0
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r2, sl
	add	r2, #8
	mov	r0, #6
	strb	r0, [r1, #8]
	ldrb	r1, [r2, #1]
	add	r0, r6, #0
	and	r0, r1
	mov	r1, r8
	orr	r0, r1
	strb	r0, [r2, #1]
	mov	r0, #0
	strh	r0, [r7, #0]
	add	r7, #2
	ldrh	r1, [r2, #2]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #193	@ 0xc1
	orr	r0, r1
	strh	r0, [r2, #2]
	ldrb	r1, [r2, #3]
	add	r0, r6, #0
	and	r0, r1
	mov	r1, r8
	orr	r0, r1
	strb	r0, [r2, #3]
	mov	r0, #0
	strh	r0, [r7, #0]
	ldrh	r1, [r2, #4]
	add	r0, r4, #0
	and	r0, r1
	mov	r1, #178	@ 0xb2
	lsl	r1, r1, #1
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	add	r0, r3, #0
	and	r0, r1
	mov	r1, #224	@ 0xe0
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r7, #4
	mov	r2, #0
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r1, sl
	add	r1, #16
	mov	r2, #6
	mov	r0, sl
	strb	r2, [r0, #16]
	ldrb	r2, [r1, #1]
	add	r0, r6, #0
	and	r0, r2
	mov	r2, r8
	orr	r0, r2
	strb	r0, [r1, #1]
	mov	r0, #0
	strh	r0, [r7, #0]
	add	r7, #2
	ldrh	r0, [r1, #2]
	and	r5, r0
	mov	r0, #225	@ 0xe1
	orr	r5, r0
	strh	r5, [r1, #2]
	ldrb	r0, [r1, #3]
	and	r6, r0
	strb	r6, [r1, #3]
	mov	r2, #0
	strh	r2, [r7, #0]
	ldrh	r0, [r1, #4]
	and	r4, r0
	mov	r2, #180	@ 0xb4
	lsl	r2, r2, #1
	add	r0, r2, #0
	orr	r4, r0
	strh	r4, [r1, #4]
	ldrb	r0, [r1, #5]
	and	r3, r0
	mov	r0, #224	@ 0xe0
	orr	r3, r0
	strb	r3, [r1, #5]
	b	.L_74bd6
	.align	2, 0
.L_74ad0:
	.4byte	gOamBuffer
.L_74ad4:
	.4byte	gCurrentStageNumber
.L_74ad8:
	.4byte	gCurrentRoom
.L_74adc:
	.4byte	gTimerState
.L_74ae0:
	.4byte	0xfffffe00
.L_74ae4:
	.4byte	0xfffffc00
.L_74ae8:
	ldr	r0, .L_74cac
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bhi	.L_74bdc
	mov	r2, ip
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r1, #6
	mov	r0, sl
	strb	r1, [r0, #0]
	strh	r2, [r7, #0]
	add	r7, #2
	ldrh	r1, [r0, #2]
	ldr	r4, .L_74cb0
	add	r0, r4, #0
	and	r0, r1
	mov	r1, #179	@ 0xb3
	orr	r0, r1
	mov	r2, sl
	strh	r0, [r2, #2]
	mov	r0, ip
	strh	r0, [r7, #0]
	ldrh	r1, [r2, #4]
	ldr	r6, .L_74cb4
	add	r0, r6, #0
	and	r0, r1
	mov	r1, #203	@ 0xcb
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	mov	r5, #15
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #96	@ 0x60
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r7, #4
	mov	r1, #0
	strh	r1, [r7, #0]
	add	r7, #2
	add	r2, #8
	mov	r1, #6
	mov	r0, sl
	strb	r1, [r0, #8]
	ldrb	r1, [r2, #1]
	mov	r3, #63	@ 0x3f
	add	r0, r3, #0
	and	r0, r1
	mov	r1, #64	@ 0x40
	mov	r8, r1
	mov	r1, r8
	orr	r0, r1
	strb	r0, [r2, #1]
	mov	r0, #0
	strh	r0, [r7, #0]
	add	r7, #2
	ldrh	r1, [r2, #2]
	add	r0, r4, #0
	and	r0, r1
	mov	r1, #188	@ 0xbc
	orr	r0, r1
	strh	r0, [r2, #2]
	ldrb	r1, [r2, #3]
	add	r0, r3, #0
	and	r0, r1
	strb	r0, [r2, #3]
	mov	r1, #0
	strh	r1, [r7, #0]
	ldrh	r1, [r2, #4]
	add	r0, r6, #0
	and	r0, r1
	mov	r1, #132	@ 0x84
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	add	r0, r5, #0
	and	r0, r1
	mov	r1, r8
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r7, #4
	mov	r2, #0
	strh	r2, [r7, #0]
	add	r7, #2
	mov	r1, sl
	add	r1, #16
	mov	r2, #6
	mov	r0, sl
	strb	r2, [r0, #16]
	ldrb	r2, [r1, #1]
	add	r0, r3, #0
	and	r0, r2
	mov	r2, r8
	orr	r0, r2
	strb	r0, [r1, #1]
	mov	r0, #0
	strh	r0, [r7, #0]
	add	r7, #2
	ldrh	r0, [r1, #2]
	and	r4, r0
	mov	r0, #204	@ 0xcc
	orr	r4, r0
	strh	r4, [r1, #2]
	ldrb	r0, [r1, #3]
	and	r3, r0
	orr	r3, r2
	strb	r3, [r1, #3]
	mov	r2, #0
	strh	r2, [r7, #0]
	ldrh	r0, [r1, #4]
	and	r6, r0
	mov	r0, #134	@ 0x86
	orr	r6, r0
	strh	r6, [r1, #4]
	ldrb	r0, [r1, #5]
	and	r5, r0
	mov	r0, r8
	orr	r5, r0
	strb	r5, [r1, #5]
.L_74bd6:
	add	r7, #4
	mov	r1, #3
	mov	ip, r1
.L_74bdc:
	ldr	r2, .L_74cb8
	ldrb	r0, [r2, #0]
	cmp	r0, #3
	bls	.L_74cc0
	ldr	r0, .L_74cbc
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_74bee
	b	.L_74d7a
.L_74bee:
	mov	r0, #0
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r0, ip
	lsl	r2, r0, #3
	add	r2, sl
	mov	r1, #0
	mov	r8, r1
	mov	r0, #6
	strb	r0, [r2, #0]
	ldrb	r1, [r2, #1]
	mov	r6, #63	@ 0x3f
	add	r0, r6, #0
	and	r0, r1
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strb	r0, [r2, #1]
	mov	r0, r8
	strh	r0, [r7, #0]
	add	r7, #2
	ldrh	r1, [r2, #2]
	ldr	r5, .L_74cb0
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #9
	orr	r0, r1
	strh	r0, [r2, #2]
	ldrb	r1, [r2, #3]
	add	r0, r6, #0
	and	r0, r1
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strb	r0, [r2, #3]
	mov	r0, r8
	strh	r0, [r7, #0]
	ldrh	r1, [r2, #4]
	ldr	r4, .L_74cb4
	add	r0, r4, #0
	and	r0, r1
	mov	r1, #144	@ 0x90
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	mov	r3, #15
	add	r0, r3, #0
	and	r0, r1
	mov	r1, #112	@ 0x70
	mov	r9, r1
	mov	r1, r9
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r7, #4
	mov	r2, #1
	add	ip, r2
	mov	r0, r8
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, ip
	lsl	r1, r2, #3
	add	r1, sl
	mov	r0, #6
	strb	r0, [r1, #0]
	ldrb	r2, [r1, #1]
	add	r0, r6, #0
	and	r0, r2
	mov	r2, #64	@ 0x40
	orr	r0, r2
	strb	r0, [r1, #1]
	mov	r0, r8
	strh	r0, [r7, #0]
	add	r7, #2
	ldrh	r0, [r1, #2]
	and	r5, r0
	mov	r0, #41	@ 0x29
	orr	r5, r0
	strh	r5, [r1, #2]
	ldrb	r0, [r1, #3]
	and	r6, r0
	orr	r6, r2
	strb	r6, [r1, #3]
	mov	r2, r8
	strh	r2, [r7, #0]
	ldrh	r0, [r1, #4]
	and	r4, r0
	mov	r0, #148	@ 0x94
	orr	r4, r0
	strh	r4, [r1, #4]
	ldrb	r0, [r1, #5]
	and	r3, r0
	mov	r0, r9
	orr	r3, r0
	strb	r3, [r1, #5]
	mov	r1, #1
	add	ip, r1
	b	.L_74d7a
.L_74cac:
	.4byte	gTimerState
.L_74cb0:
	.4byte	0xfffffe00
.L_74cb4:
	.4byte	0xfffffc00
.L_74cb8:
	.4byte	gCurrentStageNumber
.L_74cbc:
	.4byte	gCurrentRoom
.L_74cc0:
	mov	r0, #0
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r0, ip
	lsl	r2, r0, #3
	add	r2, sl
	mov	r1, #0
	mov	r8, r1
	mov	r0, #6
	strb	r0, [r2, #0]
	ldrb	r1, [r2, #1]
	mov	r6, #63	@ 0x3f
	add	r0, r6, #0
	and	r0, r1
	mov	r1, #64	@ 0x40
	orr	r0, r1
	strb	r0, [r2, #1]
	mov	r0, r8
	strh	r0, [r7, #0]
	add	r7, #2
	ldrh	r1, [r2, #2]
	ldr	r5, .L_74d90
	add	r0, r5, #0
	and	r0, r1
	mov	r1, #9
	orr	r0, r1
	strh	r0, [r2, #2]
	ldrb	r1, [r2, #3]
	add	r0, r6, #0
	and	r0, r1
	mov	r1, #128	@ 0x80
	orr	r0, r1
	strb	r0, [r2, #3]
	mov	r0, r8
	strh	r0, [r7, #0]
	ldrh	r1, [r2, #4]
	ldr	r4, .L_74d94
	add	r0, r4, #0
	and	r0, r1
	mov	r1, #144	@ 0x90
	orr	r0, r1
	strh	r0, [r2, #4]
	ldrb	r1, [r2, #5]
	mov	r3, #15
	add	r0, r3, #0
	and	r0, r1
	mov	r1, #112	@ 0x70
	orr	r0, r1
	strb	r0, [r2, #5]
	add	r7, #4
	mov	r2, #1
	add	ip, r2
	mov	r0, r8
	strh	r0, [r7, #0]
	add	r7, #2
	mov	r2, ip
	lsl	r1, r2, #3
	add	r1, sl
	mov	r0, #6
	strb	r0, [r1, #0]
	ldrb	r2, [r1, #1]
	add	r0, r6, #0
	and	r0, r2
	mov	r2, #64	@ 0x40
	orr	r0, r2
	strb	r0, [r1, #1]
	mov	r0, r8
	strh	r0, [r7, #0]
	add	r7, #2
	ldrh	r0, [r1, #2]
	and	r5, r0
	mov	r0, #41	@ 0x29
	orr	r5, r0
	strh	r5, [r1, #2]
	ldrb	r0, [r1, #3]
	and	r6, r0
	mov	r2, #128	@ 0x80
	orr	r6, r2
	strb	r6, [r1, #3]
	mov	r0, r8
	strh	r0, [r7, #0]
	ldrh	r0, [r1, #4]
	and	r4, r0
	mov	r0, #148	@ 0x94
	orr	r4, r0
	strh	r4, [r1, #4]
	ldrb	r0, [r1, #5]
	and	r3, r0
	mov	r2, #112	@ 0x70
	orr	r3, r2
	strb	r3, [r1, #5]
	mov	r0, #1
	add	ip, r0
.L_74d7a:
	ldr	r0, .L_74d98
	mov	r1, ip
	strb	r1, [r0, #0]
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_74d90:
	.4byte	0xfffffe00
.L_74d94:
	.4byte	0xfffffc00
.L_74d98:
	.4byte	gOamSlotsUsed


thumb_func_start func_8074D9C
func_8074D9C:
	push	{r4, lr}
	ldr	r0, .L_74db4
	ldrb	r3, [r0, #3]
	add	r2, r0, #0
	cmp	r3, #5
	bls	.L_74daa
	b	.L_74ef2
.L_74daa:
	lsl	r0, r3, #2
	ldr	r1, .L_74db8
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_74db4:
	.4byte	gCurrentSecondarySprite
.L_74db8:
	.4byte	.L_74dbc
.L_74dbc:
	.4byte	.L_74dd4
	.4byte	.L_74de6
	.4byte	.L_74e38
	.4byte	.L_74e74
	.4byte	.L_74eaa
	.4byte	.L_74ef2
.L_74dd4:
	ldrb	r1, [r2, #0]
	mov	r0, #4
	orr	r0, r1
	strb	r0, [r2, #0]
	mov	r0, #8
	strb	r0, [r2, #4]
	mov	r0, #1
	strb	r0, [r2, #3]
	b	.L_74ef2
.L_74de6:
	ldrb	r0, [r2, #1]
	cmp	r0, #0
	bne	.L_74dee
	b	.L_74ef2
.L_74dee:
	ldrb	r0, [r2, #4]
	sub	r0, #1
	strb	r0, [r2, #4]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_74ef2
	ldrh	r0, [r2, #6]
	add	r3, r0, #1
	strh	r3, [r2, #6]
	mov	r1, #2
	strb	r1, [r2, #3]
	mov	r4, #4
	strb	r4, [r2, #4]
	sub	r0, #6
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #67	@ 0x43
	bls	.L_74ef2
	ldrh	r1, [r2, #10]
	add	r0, r1, #0
	add	r0, #64	@ 0x40
	strh	r0, [r2, #10]
	lsl	r0, r3, #16
	lsr	r0, r0, #16
	cmp	r0, #79	@ 0x4f
	bne	.L_74e2c
	add	r0, r1, #0
	add	r0, #80	@ 0x50
	strh	r0, [r2, #10]
	strb	r4, [r2, #3]
	b	.L_74ef2
.L_74e2c:
	cmp	r0, #1
	bne	.L_74ef2
	add	r0, r1, #0
	add	r0, #80	@ 0x50
	strh	r0, [r2, #10]
	b	.L_74ef2
.L_74e38:
	ldrh	r0, [r2, #6]
	sub	r0, #7
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #67	@ 0x43
	bhi	.L_74e4c
	ldr	r1, .L_74e70
	ldrh	r0, [r1, #0]
	add	r0, #16
	strh	r0, [r1, #0]
.L_74e4c:
	ldrb	r0, [r2, #4]
	sub	r0, #1
	strb	r0, [r2, #4]
	mov	r1, #255	@ 0xff
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_74ef2
	mov	r0, #1
	strb	r0, [r2, #3]
	mov	r0, #8
	strb	r0, [r2, #4]
	ldrb	r0, [r2, #1]
	sub	r0, #1
	strb	r0, [r2, #1]
	and	r0, r1
	cmp	r0, #0
	bne	.L_74ece
	b	.L_74ee0
.L_74e70:
	.4byte	gUnk_300003A
.L_74e74:
	ldrb	r0, [r2, #1]
	cmp	r0, #0
	beq	.L_74ef2
	ldrb	r0, [r2, #4]
	sub	r0, #1
	strb	r0, [r2, #4]
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_74ef2
	ldrh	r0, [r2, #6]
	sub	r0, #1
	strh	r0, [r2, #6]
	mov	r4, #4
	strb	r4, [r2, #3]
	strb	r4, [r2, #4]
	ldrh	r3, [r2, #10]
	add	r1, r3, #0
	sub	r1, #64	@ 0x40
	strh	r1, [r2, #10]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #78	@ 0x4e
	bne	.L_74ef2
	add	r0, r3, #0
	sub	r0, #80	@ 0x50
	strh	r0, [r2, #10]
	b .L_74ef2
.L_74eaa:
	add r1, r2, #0
	ldrb	r0, [r1, #4]
	sub	r0, #1
	strb	r0, [r1, #4]
	mov	r3, #255	@ 0xff
	lsl	r0, r0, #24
	cmp	r0, #0
	bne	.L_74ef2
	mov	r0, #3
	strb	r0, [r1, #3]
	mov	r0, #8
	strb	r0, [r1, #4]
	ldrb	r0, [r1, #1]
	sub	r0, #1
	strb	r0, [r1, #1]
	and	r0, r3
	cmp	r0, #0
	beq	.L_74ed6
.L_74ece:
	mov	r0, #224	@ 0xe0
	bl	m4aSongNumStart
	b	.L_74ef2
.L_74ed6:
	ldrh	r0, [r1, #6]
	cmp	r0, #79	@ 0x4f
	bne	.L_74ee8
	mov	r0, #5
	strb	r0, [r1, #3]
.L_74ee0:
	mov	r0, #225	@ 0xe1
	bl	m4aSongNumStart
	b	.L_74ef2
.L_74ee8:
	mov	r0, #1
	strb	r0, [r2, #3]
	mov	r0, #225	@ 0xe1
	bl	m4aSongNumStart
.L_74ef2:
	ldr	r0, .L_74f0c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_74f02
	ldr	r4, .L_74f10
	ldrb	r0, [r4, #3]
	cmp	r0, #2
	bne	.L_74f1c
.L_74f02:
	ldr	r1, .L_74f14
	ldr	r0, .L_74f18
	str	r0, [r1, #0]
	b	.L_74f30
	.align	2, 0
.L_74f0c:
	.4byte	gUnk_3000038
.L_74f10:
	.4byte	gCurrentSecondarySprite
.L_74f14:
	.4byte	gUnk_3000C10
.L_74f18:
	.4byte	sUnk_83BF986
.L_74f1c:
	ldr	r3, .L_74f38
	ldr	r2, .L_74f3c
	ldr	r1, .L_74f40
	ldrh	r0, [r4, #6]
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #3
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	str	r0, [r3, #0]
.L_74f30:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_74f38:
	.4byte	gUnk_3000C10
.L_74f3c:
	.4byte	sBigBoardSpaceSpriteTable
.L_74f40:
	.4byte	sBigBoardSpaces


thumb_func_start func_8074F44
func_8074F44:
	push	{r4, lr}
	ldr	r1, .L_74f6c
	mov	r0, #0
	ldrsb	r0, [r1, r0]
	cmp	r0, #0
	bne	.L_74fa0
	ldrb	r0, [r1, #1]
	ldrb	r2, [r1, #2]
	mov	r4, #2
	ldrsb	r4, [r1, r4]
	cmp	r4, #1
	bne	.L_74f74
	cmp	r0, #0
	bne	.L_74f74
	mov	r0, #0
	bl	func_806F650
	ldr	r0, .L_74f70
	strb	r4, [r0, #0]
	b	.L_74fa0
.L_74f6c:
	.4byte	gUnk_3000BF0
.L_74f70:
	.4byte	gCollectedNEJewelPiece
.L_74f74:
	cmp	r2, #0
	bne	.L_74fa0
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #4
	bne	.L_74f90
	mov	r0, #1
	bl	func_806F650
	ldr	r1, .L_74f8c
	b	.L_74f9c
	.align	2, 0
.L_74f8c:
	.4byte	gCollectedSEJewelPiece
.L_74f90:
	cmp	r0, #2
	bne	.L_74fa0
	mov	r0, #2
	bl	func_806F650
	ldr	r1, .L_74fa8
.L_74f9c:
	mov	r0, #1
	strb	r0, [r1, #0]
.L_74fa0:
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_74fa8:
	.4byte	gCollectedSWJewelPiece


thumb_func_start func_8074FAC
func_8074FAC:
	push	{r4, lr}
	ldr	r4, .L_74fbc
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_74fc0
	mov	r0, #0
	b	.L_7506a
	.align	2, 0
.L_74fbc:
	.4byte	gCollectedNEJewelPiece
.L_74fc0:
	ldr	r4, .L_74fcc
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_74fd0
	mov	r0, #3
	b	.L_7506a
.L_74fcc:
	.4byte	gCollectedNWJewelPiece
.L_74fd0:
	ldr	r4, .L_74fdc
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_74fe0
	mov	r0, #6
	b	.L_7506a
.L_74fdc:
	.4byte	gHasBossTreasure7
.L_74fe0:
	ldr	r4, .L_74fec
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_74ff0
	mov	r0, #9
	b	.L_7506a
.L_74fec:
	.4byte	gHasBossTreasure10
.L_74ff0:
	ldr	r4, .L_74ffc
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_75000
	mov	r0, #1
	b	.L_7506a
.L_74ffc:
	.4byte	gCollectedSEJewelPiece
.L_75000:
	ldr	r4, .L_7500c
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_75010
	mov	r0, #4
	b	.L_7506a
.L_7500c:
	.4byte	gHasBossTreasure5
.L_75010:
	ldr	r4, .L_7501c
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_75020
	mov	r0, #7
	b	.L_7506a
.L_7501c:
	.4byte	gHasBossTreasure8
.L_75020:
	ldr	r4, .L_7502c
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_75030
	mov	r0, #10
	b	.L_7506a
.L_7502c:
	.4byte	gHasBossTreasure11
.L_75030:
	ldr	r4, .L_7503c
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_75040
	mov	r0, #2
	b	.L_7506a
.L_7503c:
	.4byte	gCollectedSWJewelPiece
.L_75040:
	ldr	r4, .L_7504c
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_75050
	mov	r0, #5
	b	.L_7506a
.L_7504c:
	.4byte	gHasBossTreasure6
.L_75050:
	ldr	r4, .L_7505c
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_75060
	mov	r0, #8
	b	.L_7506a
.L_7505c:
	.4byte	gHasBossTreasure9
.L_75060:
	ldr	r4, .L_75078
	ldrb	r0, [r4, #0]
	cmp	r0, #2
	bne	.L_75072
	mov	r0, #11
.L_7506a:
	bl	func_806F650
	mov	r0, #1
	strb	r0, [r4, #0]
.L_75072:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_75078:
	.4byte	gHasBossTreasure12


thumb_func_start func_807507C
func_807507C:
	push	{lr}
	ldr	r1, .L_750b0
	mov	r0, #0
	ldrsb	r0, [r1, r0]
	cmp	r0, #0
	beq	.L_7508a
	b	.L_751f4
.L_7508a:
	ldrb	r0, [r1, #1]
	add	r2, r0, #0
	ldrb	r1, [r1, #2]
	lsl	r1, r1, #24
	asr	r1, r1, #24
	cmp	r1, #2
	bne	.L_750b8
	cmp	r0, #0
	beq	.L_7509e
	b	.L_751f4
.L_7509e:
	ldr	r0, .L_750b4
	ldrb	r0, [r0, #0]
	cmp	r0, #12
	beq	.L_750a8
	b	.L_751f4
.L_750a8:
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_750b0:
	.4byte	gUnk_3000BF0
.L_750b4:
	.4byte	gGoldenTreasureCount
.L_750b8:
	cmp	r1, #1
	bne	.L_75164
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #5
	bls	.L_750c6
	b	.L_751f4
.L_750c6:
	lsl	r0, r0, #2
	ldr	r1, .L_750d0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_750d0:
	.4byte	.L_750d4
.L_750d4:
	.4byte	.L_75150
	.4byte	.L_7513c
	.4byte	.L_75128
	.4byte	.L_75114
	.4byte	.L_75100
	.4byte	.L_750ec
.L_750ec:
	ldr	r0, .L_750fc
	ldrb	r0, [r0, #0]
	cmp	r0, #10
	bhi	.L_750f6
	b	.L_751f4
.L_750f6:
	bl	func_8074FAC
	b	.L_751f4
.L_750fc:
	.4byte	gGoldenTreasureCount
.L_75100:
	ldr	r0, .L_75110
	ldrb	r0, [r0, #0]
	cmp	r0, #9
	bhi	.L_7510a
	b	.L_751f4
.L_7510a:
	bl	func_8074FAC
	b	.L_751f4
.L_75110:
	.4byte	gGoldenTreasureCount
.L_75114:
	ldr	r0, .L_75124
	ldrb	r0, [r0, #0]
	cmp	r0, #8
	bls	.L_751f4
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_75124:
	.4byte	gGoldenTreasureCount
.L_75128:
	ldr	r0, .L_75138
	ldrb	r0, [r0, #0]
	cmp	r0, #7
	bls	.L_751f4
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_75138:
	.4byte	gGoldenTreasureCount
.L_7513c:
	ldr	r0, .L_7514c
	ldrb	r0, [r0, #0]
	cmp	r0, #6
	bls	.L_751f4
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_7514c:
	.4byte	gGoldenTreasureCount
.L_75150:
	ldr	r0, .L_75160
	ldrb	r0, [r0, #0]
	cmp	r0, #5
	bls	.L_751f4
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_75160:
	.4byte	gGoldenTreasureCount
.L_75164:
	cmp	r1, #0
	bne	.L_751f4
	lsl	r0, r2, #24
	mov	r1, #255	@ 0xff
	lsl	r1, r1, #24
	add	r0, r0, r1
	asr	r0, r0, #24
	cmp	r0, #4
	bhi	.L_751f4
	lsl	r0, r0, #2
	ldr	r1, .L_75180
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_75180:
	.4byte	.L_75184
.L_75184:
	.4byte	.L_751e8
	.4byte	.L_751d4
	.4byte	.L_751c0
	.4byte	.L_751ac
	.4byte	.L_75198
.L_75198:
	ldr	r0, .L_751a8
	ldrb	r0, [r0, #0]
	cmp	r0, #4
	bls	.L_751f4
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_751a8:
	.4byte	gGoldenTreasureCount
.L_751ac:
	ldr	r0, .L_751bc
	ldrb	r0, [r0, #0]
	cmp	r0, #3
	bls	.L_751f4
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_751bc:
	.4byte	gGoldenTreasureCount
.L_751c0:
	ldr	r0, .L_751d0
	ldrb	r0, [r0, #0]
	cmp	r0, #2
	bls	.L_751f4
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_751d0:
	.4byte	gGoldenTreasureCount
.L_751d4:
	ldr	r0, .L_751e4
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bls	.L_751f4
	bl	func_8074FAC
	b	.L_751f4
	.align	2, 0
.L_751e4:
	.4byte	gGoldenTreasureCount
.L_751e8:
	ldr	r0, .L_751f8
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_751f4
	bl	func_8074FAC
.L_751f4:
	pop	{r0}
	bx	r0
.L_751f8:
	.4byte	gGoldenTreasureCount
