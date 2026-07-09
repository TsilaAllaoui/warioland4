.include "macros.s.inc"


thumb_func_start func_8003C90
func_8003C90:
	push	{r4, r5, lr}
	sub	sp, #12
	mov	r0, #0
	str	r0, [sp, #8]
	ldr	r1, .L_3d78
	add	r0, sp, #8
	str	r0, [r1, #0]
	ldr	r0, .L_3d7c
	str	r0, [r1, #4]
	ldr	r0, .L_3d80
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r0, #1
	neg	r0, r0
	str	r0, [sp, #8]
	add	r2, sp, #8
	str	r2, [r1, #0]
	ldr	r4, .L_3d84
	str	r4, [r1, #4]
	ldr	r0, .L_3d88
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_3d8c
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_3d90
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_3d94
	ldr	r1, .L_3d98
	mov	r2, #16
	str	r2, [sp, #0]
	mov	r2, #9
	mov	r3, #3
	bl	func_800B5A4
	ldr	r0, .L_3d9c
	add	r1, r4, #0
	bl	func_800B734
	ldr	r1, .L_3da0
	ldr	r5, .L_3da4
	add	r0, r5, #0
	strh	r0, [r1, #0]
	add	r1, #4
	mov	r2, #163	@ 0xa3
	lsl	r2, r2, #7
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_3da8
	mov	r0, #8
	strh	r0, [r1, #0]
	ldr	r2, .L_3dac
	mov	r5, #192	@ 0xc0
	lsl	r5, r5, #2
	add	r0, r5, #0
	strh	r0, [r2, #0]
	ldr	r1, .L_3db0
	mov	r0, #2
	strh	r0, [r1, #0]
	ldr	r4, .L_3db4
	ldr	r0, .L_3db8
	ldrh	r1, [r0, #0]
	ldrh	r2, [r2, #0]
	ldr	r0, .L_3dbc
	mov	r5, #0
	ldrsh	r3, [r0, r5]
	mov	r0, #120	@ 0x78
	sub	r0, r0, r3
	str	r0, [sp, #0]
	mov	r0, #72	@ 0x48
	str	r0, [sp, #4]
	add	r0, r4, #0
	mov	r3, #2
	bl	func_800B398
	ldr	r0, .L_3dc0
	ldrh	r1, [r4, #0]
	strh	r1, [r0, #0]
	add	r0, #2
	ldrh	r1, [r4, #2]
	strh	r1, [r0, #0]
	add	r4, #4
	add	r0, #2
	ldrh	r1, [r4, #0]
	strh	r1, [r0, #0]
	add	r4, #2
	add	r0, #2
	ldrh	r1, [r4, #0]
	strh	r1, [r0, #0]
	add	r4, #2
	add	r0, #2
	ldrh	r1, [r4, #0]
	strh	r1, [r0, #0]
	add	r4, #2
	add	r0, #2
	ldrh	r1, [r4, #0]
	strh	r1, [r0, #0]
	add	r4, #2
	add	r0, #2
	ldrh	r1, [r4, #0]
	strh	r1, [r0, #0]
	add	r0, #2
	ldrh	r1, [r4, #2]
	strh	r1, [r0, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r0, #1
	strh	r0, [r1, #0]
	add	sp, #12
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3d78:
	.4byte	0x40000D4
.L_3d7c:
	.4byte	0x6003FC0
.L_3d80:
	.4byte	0x85000010
.L_3d84:
	.4byte	0x6008000
.L_3d88:
	.4byte	0x85000400
.L_3d8c:
	.4byte	sUnk_8283F14
.L_3d90:
	.4byte	0x80000020
.L_3d94:
	.4byte	sUnk_82844B8
.L_3d98:
	.4byte	0x60088E8
.L_3d9c:
	.4byte	sUnk_82844EE
.L_3da0:
	.4byte	0x4000008
.L_3da4:
	.4byte	0x1001
.L_3da8:
	.4byte	gUnk_3002C2A
.L_3dac:
	.4byte	gUnk_3002C2E
.L_3db0:
	.4byte	gUnk_3002C30
.L_3db4:
	.4byte	gUnk_3002C32
.L_3db8:
	.4byte	gUnk_3002C2C
.L_3dbc:
	.4byte	gUnk_3002C28
.L_3dc0:
	.4byte	0x4000020


thumb_func_start func_8003DC4
func_8003DC4:
	push	{r4, r5, lr}
	add	r4, r0, #0
	ldr	r0, .L_3de0
	ldrh	r1, [r0, #0]
	add	r5, r0, #0
	cmp	r1, #4
	bls	.L_3dd4
	b	.L_3f78
.L_3dd4:
	lsl	r0, r1, #2
	ldr	r1, .L_3de4
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_3de0:
	.4byte	gUnk_3002C60
.L_3de4:
	.4byte	.L_3de8
.L_3de8:
	.4byte	.L_3dfc
	.4byte	.L_3e2c
	.4byte	.L_3e54
	.4byte	.L_3ec4
	.4byte	.L_3f5e
.L_3dfc:
	ldr	r0, .L_3e1c
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r1, .L_3e20
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_3e24
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r0, .L_3e28
	bl	m4aSongNumStartOrChange
	b	.L_3f78
.L_3e1c:
	.4byte	sUnk_8283F54
.L_3e20:
	.4byte	gUnk_3002C64
.L_3e24:
	.4byte	gUnk_3002C60
.L_3e28:
	.4byte	0x27B
.L_3e2c:
	ldr	r2, .L_3e4c
	ldr	r0, [r2, #0]
	add	r0, #1
	str	r0, [r2, #0]
	cmp	r0, #1
	beq	.L_3e3a
	b	.L_3f78
.L_3e3a:
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	ldr	r3, .L_3e50
	add	r0, r3, #0
	strh	r0, [r1, #0]
	mov	r0, #0
	str	r0, [r2, #0]
	b	.L_3eaa
	.align	2, 0
.L_3e4c:
	.4byte	gUnk_3002C64
.L_3e50:
	.4byte	0x501
.L_3e54:
	ldr	r1, .L_3e80
	ldrh	r0, [r1, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	cmp	r0, r2
	bls	.L_3e64
	sub	r0, #16
	strh	r0, [r1, #0]
.L_3e64:
	ldr	r0, .L_3e84
	ldr	r1, [r0, #0]
	add	r3, r0, #0
	cmp	r1, #27
	bhi	.L_3e8c
	mov	r0, #3
	and	r0, r4
	cmp	r0, #3
	bne	.L_3ebc
	ldr	r1, .L_3e88
	ldrh	r0, [r1, #0]
	lsl	r0, r0, #1
	b	.L_3eba
	.align	2, 0
.L_3e80:
	.4byte	gUnk_3002C2E
.L_3e84:
	.4byte	gUnk_3002C64
.L_3e88:
	.4byte	gUnk_3002C30
.L_3e8c:
	cmp	r1, #31
	bhi	.L_3e9c
	ldr	r1, .L_3e98
	ldrh	r0, [r1, #0]
	add	r0, #16
	b	.L_3eba
.L_3e98:
	.4byte	gUnk_3002C30
.L_3e9c:
	ldr	r1, .L_3eb4
	ldrh	r0, [r1, #0]
	cmp	r0, r2
	bhi	.L_3eb8
	strh	r2, [r1, #0]
	mov	r0, #0
	str	r0, [r3, #0]
.L_3eaa:
	ldrh	r0, [r5, #0]
	add	r0, #1
	strh	r0, [r5, #0]
	b	.L_3f78
	.align	2, 0
.L_3eb4:
	.4byte	gUnk_3002C30
.L_3eb8:
	sub	r0, #16
.L_3eba:
	strh	r0, [r1, #0]
.L_3ebc:
	ldr	r0, [r3, #0]
	add	r0, #1
	str	r0, [r3, #0]
	b	.L_3f78
.L_3ec4:
	ldr	r1, .L_3f38
	ldr	r0, [r1, #0]
	lsr	r4, r0, #1
	add	r0, #1
	str	r0, [r1, #0]
	cmp	r4, #31
	bgt	.L_3f4c
	lsl	r0, r4, #4
	sub	r0, r0, r4
	lsl	r0, r0, #1
	cmp	r0, #0
	bge	.L_3ede
	add	r0, #31
.L_3ede:
	asr	r3, r0, #5
	ldr	r2, .L_3f3c
	lsl	r0, r3, #10
	lsl	r1, r3, #5
	orr	r0, r1
	orr	r0, r3
	strh	r0, [r2, #0]
	lsl	r0, r4, #2
	add	r0, r0, r4
	lsl	r0, r0, #2
	cmp	r0, #0
	bge	.L_3ef8
	add	r0, #31
.L_3ef8:
	asr	r3, r0, #5
	ldr	r2, .L_3f40
	lsl	r0, r3, #10
	lsl	r1, r3, #5
	orr	r0, r1
	orr	r0, r3
	strh	r0, [r2, #0]
	lsl	r0, r4, #1
	add	r4, r0, r4
	lsl	r0, r4, #2
	cmp	r0, #0
	bge	.L_3f12
	add	r0, #31
.L_3f12:
	asr	r3, r0, #5
	ldr	r0, .L_3f44
	lsl	r1, r3, #10
	lsl	r2, r3, #5
	orr	r1, r2
	orr	r1, r3
	strh	r1, [r0, #0]
	lsl	r0, r4, #1
	cmp	r0, #0
	bge	.L_3f28
	add	r0, #31
.L_3f28:
	asr	r3, r0, #5
	ldr	r0, .L_3f48
	lsl	r1, r3, #10
	lsl	r2, r3, #5
	orr	r1, r2
	orr	r1, r3
	strh	r1, [r0, #0]
	b	.L_3f78
.L_3f38:
	.4byte	gUnk_3002C64
.L_3f3c:
	.4byte	0x500002A
.L_3f40:
	.4byte	0x500002C
.L_3f44:
	.4byte	0x500002E
.L_3f48:
	.4byte	0x5000032
.L_3f4c:
	mov	r0, #0
	str	r0, [r1, #0]
	ldrh	r0, [r5, #0]
	add	r0, #1
	strh	r0, [r5, #0]
	mov	r0, #37	@ 0x25
	bl	func_800B7BC
	b	.L_3f78
.L_3f5e:
	mov	r0, #3
	bl	func_800B84C
	ldr	r1, .L_3f80
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	cmp	r0, #51	@ 0x33
	bne	.L_3f78
	ldr	r1, .L_3f84
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_3f78:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_3f80:
	.4byte	gUnk_3002C64
.L_3f84:
	.4byte	gSubGameMode


thumb_func_start func_8003F88
func_8003F88:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	ldr	r4, .L_4018
	ldr	r2, .L_401c
	str	r2, [r4, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r4, #4]
	ldr	r1, .L_4020
	str	r1, [r4, #8]
	ldr	r0, [r4, #8]
	str	r2, [r4, #0]
	ldr	r0, .L_4024
	str	r0, [r4, #4]
	str	r1, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_4028
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r0, .L_402c
	ldr	r1, .L_4030
	bl	LZ77UnCompVram
	mov	r0, sp
	mov	r6, #0
	strh	r6, [r0, #0]
	str	r0, [r4, #0]
	ldr	r1, .L_4034
	str	r1, [r4, #4]
	ldr	r0, .L_4038
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_403c
	bl	func_800B734
	ldr	r5, .L_4040
	ldr	r0, [r5, #0]
	ldr	r2, .L_4044
	cmp	r0, #0
	beq	.L_3fde
	ldr	r2, .L_4048
.L_3fde:
	ldr	r1, .L_404c
	add	r0, r2, #0
	bl	func_800B734
	ldr	r0, .L_4050
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #5
	add	r4, r1, #0
	strh	r4, [r0, #0]
	ldr	r1, .L_4054
	mov	r2, #136	@ 0x88
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_4058
	strh	r6, [r0, #0]
	mov	r0, #19
	bl	func_800B7E0
	bl	func_800B580
	ldr	r0, [r5, #0]
	cmp	r0, #0
	beq	.L_405c
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #19
	strh	r4, [r0, #0]
	b	.L_4068
	.align	2, 0
.L_4018:
	.4byte	0x40000D4
.L_401c:
	.4byte	sUnk_82844FC
.L_4020:
	.4byte	0x80000030
.L_4024:
	.4byte	0x5000200
.L_4028:
	.4byte	sUnk_828455C
.L_402c:
	.4byte	sUnk_8285A40
.L_4030:
	.4byte	0x6010000
.L_4034:
	.4byte	0x6008000
.L_4038:
	.4byte	0x81000800
.L_403c:
	.4byte	sUnk_828566C
.L_4040:
	.4byte	gUnk_3002C7C
.L_4044:
	.4byte	sUnk_82856DE
.L_4048:
	.4byte	sUnk_828588C
.L_404c:
	.4byte	0x6008800
.L_4050:
	.4byte	0x4000008
.L_4054:
	.4byte	0x400000A
.L_4058:
	.4byte	gUnk_3002C48
.L_405c:
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #192	@ 0xc0
	lsl	r2, r2, #2
	add	r0, r2, #0
	strh	r0, [r1, #0]
.L_4068:
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0


thumb_func_start func_8004070
func_8004070:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	add	r5, r0, #0
	mov	r0, #0
	str	r0, [sp, #0]
	mov	r6, #0
	ldr	r0, .L_4094
	ldr	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_4134
	ldr	r4, .L_4098
	ldrh	r1, [r4, #0]
	cmp	r1, #0
	beq	.L_409c
	cmp	r1, #1
	beq	.L_40c0
	b	.L_422a
	.align	2, 0
.L_4094:
	.4byte	gUnk_3002C7C
.L_4098:
	.4byte	gUnk_3002C60
.L_409c:
	mov	r0, #3
	bl	func_800B888
	ldr	r2, .L_40bc
	ldr	r0, [r2, #0]
	add	r1, r0, #0
	add	r0, #1
	str	r0, [r2, #0]
	cmp	r1, #120	@ 0x78
	bhi	.L_40b2
	b	.L_422a
.L_40b2:
	str	r6, [r2, #0]
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	b	.L_422a
.L_40bc:
	.4byte	gUnk_3002C64
.L_40c0:
	ldr	r0, .L_40dc
	ldrh	r4, [r0, #0]
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	add	r3, r0, #0
	cmp	r2, #95	@ 0x5f
	bgt	.L_4110
	cmp	r2, #79	@ 0x4f
	bgt	.L_40e0
	and	r1, r5
	cmp	r1, #0
	beq	.L_40e0
	add	r0, r4, #1
	b	.L_4102
.L_40dc:
	.4byte	gUnk_3002C48
.L_40e0:
	ldrh	r1, [r3, #0]
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	cmp	r0, #89	@ 0x59
	bgt	.L_40f6
	mov	r0, #3
	and	r0, r5
	cmp	r0, #3
	bne	.L_40f6
	add	r0, r1, #1
	b	.L_4102
.L_40f6:
	mov	r0, #7
	and	r0, r5
	cmp	r0, #7
	bne	.L_4104
	ldrh	r0, [r3, #0]
	add	r0, #1
.L_4102:
	strh	r0, [r3, #0]
.L_4104:
	ldr	r1, .L_410c
	ldrh	r0, [r3, #0]
	strh	r0, [r1, #0]
	b	.L_422a
.L_410c:
	.4byte	0x4000016
.L_4110:
	ldr	r2, .L_412c
	ldr	r0, [r2, #0]
	add	r1, r0, #0
	add	r0, #1
	str	r0, [r2, #0]
	cmp	r1, #80	@ 0x50
	bhi	.L_4120
	b	.L_422a
.L_4120:
	str	r6, [r2, #0]
	ldr	r1, .L_4130
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	b	.L_422a
.L_412c:
	.4byte	gUnk_3002C64
.L_4130:
	.4byte	gSubGameMode
.L_4134:
	ldr	r4, .L_4148
	ldrh	r0, [r4, #0]
	cmp	r0, #1
	beq	.L_4174
	cmp	r0, #1
	bgt	.L_414c
	cmp	r0, #0
	beq	.L_4152
	b	.L_4218
	.align	2, 0
.L_4148:
	.4byte	gUnk_3002C60
.L_414c:
	cmp	r0, #2
	beq	.L_41c4
	b	.L_4218
.L_4152:
	mov	r0, #3
	bl	func_800B888
	ldr	r2, .L_4170
	ldr	r0, [r2, #0]
	add	r1, r0, #0
	add	r0, #1
	str	r0, [r2, #0]
	cmp	r1, #120	@ 0x78
	bls	.L_4218
	str	r6, [r2, #0]
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	b	.L_4218
.L_4170:
	.4byte	gUnk_3002C64
.L_4174:
	ldr	r0, .L_4190
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_4198
	ldr	r1, .L_4194
	ldr	r2, [r1, #0]
	add	r0, r2, #0
	add	r2, #1
	str	r2, [r1, #0]
	mov	r1, sp
	bl	func_800B9D0
	b	.L_41a8
	.align	2, 0
.L_4190:
	.4byte	gUnk_3002C78
.L_4194:
	.4byte	gUnk_3002C64
.L_4198:
	ldr	r1, .L_41b8
	ldr	r2, [r1, #0]
	add	r0, r2, #0
	add	r2, #1
	str	r2, [r1, #0]
	mov	r1, sp
	bl	func_800B8C4
.L_41a8:
	add	r6, r0, #0
	cmp	r6, #0
	beq	.L_4218
	ldr	r1, .L_41bc
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_41c0
	b	.L_4212
.L_41b8:
	.4byte	gUnk_3002C64
.L_41bc:
	.4byte	gUnk_3002C68
.L_41c0:
	.4byte	gUnk_3002C60
.L_41c4:
	ldr	r0, .L_41d8
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_41e0
	ldr	r0, .L_41dc
	ldr	r0, [r0, #0]
	mov	r1, sp
	bl	func_800B9D0
	b	.L_41ea
.L_41d8:
	.4byte	gUnk_3002C78
.L_41dc:
	.4byte	gUnk_3002C64
.L_41e0:
	ldr	r0, .L_4234
	ldr	r0, [r0, #0]
	mov	r1, sp
	bl	func_800B8C4
.L_41ea:
	ldr	r4, .L_4238
	ldr	r0, [r4, #0]
	cmp	r0, #65	@ 0x41
	bne	.L_41fa
	mov	r0, #159	@ 0x9f
	lsl	r0, r0, #2
	bl	m4aSongNumStartOrChange
.L_41fa:
	ldr	r0, [r4, #0]
	add	r1, r0, #0
	add	r0, #1
	str	r0, [r4, #0]
	cmp	r1, #120	@ 0x78
	bls	.L_4218
	mov	r0, #3
	bl	func_800B84C
	cmp	r0, #0
	beq	.L_4218
	ldr	r1, .L_423c
.L_4212:
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_4218:
	ldr	r1, .L_4240
	ldr	r0, [sp, #0]
	mov	r2, #120	@ 0x78
	mov	r3, #80	@ 0x50
	bl	func_800B5E4
	add	r1, r0, #0
	bl	func_800B684
.L_422a:
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4234:
	.4byte	gUnk_3002C64
.L_4238:
	.4byte	gUnk_3002C68
.L_423c:
	.4byte	gSubGameMode
.L_4240:
	.4byte	gOamBuffer


thumb_func_start func_8004244
func_8004244:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r4, .L_42bc
	ldr	r0, .L_42c0
	str	r0, [r4, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r4, #4]
	ldr	r0, .L_42c4
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_42c8
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	mov	r0, sp
	mov	r5, #0
	strh	r5, [r0, #0]
	str	r0, [r4, #0]
	ldr	r1, .L_42cc
	str	r1, [r4, #4]
	ldr	r0, .L_42d0
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_42d4
	bl	func_800B734
	ldr	r0, .L_42d8
	ldr	r1, .L_42dc
	bl	func_800B734
	ldr	r0, .L_42e0
	ldr	r1, .L_42e4
	bl	func_800B734
	ldr	r1, .L_42e8
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	mov	r2, #136	@ 0x88
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	mov	r2, #144	@ 0x90
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_42ec
	strh	r5, [r0, #0]
	sub	r0, #80	@ 0x50
	strh	r5, [r0, #0]
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_42bc:
	.4byte	0x40000D4
.L_42c0:
	.4byte	sUnk_8285FCC
.L_42c4:
	.4byte	0x80000030
.L_42c8:
	.4byte	sUnk_828602C
.L_42cc:
	.4byte	0x6008000
.L_42d0:
	.4byte	0x81000C00
.L_42d4:
	.4byte	sUnk_82873E4
.L_42d8:
	.4byte	sUnk_8287472
.L_42dc:
	.4byte	0x6008800
.L_42e0:
	.4byte	sUnk_828759C
.L_42e4:
	.4byte	0x6009000
.L_42e8:
	.4byte	0x4000008
.L_42ec:
	.4byte	0x4000050


thumb_func_start func_80042F0
func_80042F0:
	ldr	r0, .L_4308
	ldr	r1, [r0, #0]
	add	r2, r0, #0
	cmp	r1, #30
	bne	.L_430c
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #1
	add	r0, r3, #0
	b	.L_4342
	.align	2, 0
.L_4308:
	.4byte	gUnk_3002C64
.L_430c:
	cmp	r1, #32
	bne	.L_431c
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r0, r3, #0
	b	.L_4342
.L_431c:
	cmp	r1, #34	@ 0x22
	bne	.L_432c
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #3
	add	r0, r3, #0
	b	.L_4342
.L_432c:
	cmp	r1, #234	@ 0xea
	bne	.L_4338
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r0, #0
	b	.L_4342
.L_4338:
	cmp	r1, #236	@ 0xec
	bne	.L_4344
	ldr	r1, .L_434c
	ldrh	r0, [r1, #0]
	add	r0, #1
.L_4342:
	strh	r0, [r1, #0]
.L_4344:
	ldr	r0, [r2, #0]
	add	r0, #1
	str	r0, [r2, #0]
	bx	lr
.L_434c:
	.4byte	gSubGameMode


thumb_func_start func_8004350
func_8004350:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	ldr	r4, .L_4420
	ldr	r0, .L_4424
	str	r0, [r4, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r4, #4]
	ldr	r0, .L_4428
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	mov	r0, sp
	mov	r6, #0
	strh	r6, [r0, #0]
	str	r0, [r4, #0]
	ldr	r0, .L_442c
	str	r0, [r4, #4]
	ldr	r0, .L_4430
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_4434
	str	r0, [sp, #4]
	add	r0, sp, #4
	str	r0, [r4, #0]
	ldr	r1, .L_4438
	str	r1, [r4, #4]
	ldr	r0, .L_443c
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_4440
	bl	func_800B734
	ldr	r0, .L_4444
	ldr	r1, .L_4448
	bl	func_800B734
	mov	r0, sp
	mov	r5, #21
	strh	r5, [r0, #0]
	str	r0, [r4, #0]
	ldr	r0, .L_444c
	str	r0, [r4, #4]
	ldr	r1, .L_4450
	str	r1, [r4, #8]
	ldr	r0, [r4, #8]
	mov	r0, sp
	strh	r5, [r0, #0]
	str	r0, [r4, #0]
	ldr	r0, .L_4454
	str	r0, [r4, #4]
	str	r1, [r4, #8]
	ldr	r0, [r4, #8]
	mov	r0, #0
	bl	func_8004478
	mov	r0, sp
	strh	r5, [r0, #0]
	str	r0, [r4, #0]
	ldr	r0, .L_4458
	str	r0, [r4, #4]
	ldr	r0, .L_445c
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	mov	r1, sp
	ldr	r2, .L_4460
	add	r0, r2, #0
	strh	r0, [r1, #0]
	str	r1, [r4, #0]
	ldr	r0, .L_4464
	str	r0, [r4, #4]
	ldr	r0, .L_4468
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r1, .L_446c
	mov	r2, #160	@ 0xa0
	lsl	r2, r2, #7
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	mov	r2, #164	@ 0xa4
	lsl	r2, r2, #7
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	mov	r2, #160	@ 0xa0
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_4470
	mov	r2, #192	@ 0xc0
	neg	r2, r2
	add	r1, r2, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_4474
	strh	r1, [r0, #0]
	add	r0, #4
	strh	r1, [r0, #0]
	sub	r0, #20
	strh	r6, [r0, #0]
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4420:
	.4byte	0x40000D4
.L_4424:
	.4byte	sUnk_8287758
.L_4428:
	.4byte	0x80000030
.L_442c:
	.4byte	0x6007FE0
.L_4430:
	.4byte	0x81000010
.L_4434:
	.4byte	0x3FF03FF
.L_4438:
	.4byte	0x6008000
.L_443c:
	.4byte	0x85000800
.L_4440:
	.4byte	sUnk_8288D2E
.L_4444:
	.4byte	sUnk_8288C48
.L_4448:
	.4byte	0x6009000
.L_444c:
	.4byte	0x6009440
.L_4450:
	.4byte	0x81000060
.L_4454:
	.4byte	0x6009C40
.L_4458:
	.4byte	0x600A000
.L_445c:
	.4byte	0x81000220
.L_4460:
	.4byte	0x3FF
.L_4464:
	.4byte	0x600A440
.L_4468:
	.4byte	0x810001E0
.L_446c:
	.4byte	0x4000008
.L_4470:
	.4byte	gUnk_3002C46
.L_4474:
	.4byte	0x4000010


thumb_func_start func_8004478
func_8004478:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	add	r4, r0, #0
	mov	r0, #3
	and	r4, r0
	ldr	r0, .L_44e4
	lsl	r5, r4, #2
	add	r0, r5, r0
	ldr	r0, [r0, #0]
	ldr	r1, .L_44e8
	bl	func_800B734
	lsl	r0, r4, #4
	ldr	r1, .L_44ec
	add	r0, r0, r1
	ldr	r1, .L_44f0
	mov	r6, #32
	str	r6, [sp, #0]
	mov	r2, #2
	mov	r3, #4
	bl	func_800B5A4
	lsl	r0, r4, #3
	add	r0, r0, r4
	lsl	r0, r0, #3
	ldr	r1, .L_44f4
	add	r0, r0, r1
	ldr	r1, .L_44f8
	str	r6, [sp, #0]
	mov	r2, #4
	mov	r3, #9
	bl	func_800B5A4
	ldr	r0, .L_44fc
	add	r5, r5, r0
	ldr	r0, [r5, #0]
	ldr	r1, .L_4500
	bl	func_800B734
	ldr	r0, .L_4504
	lsl	r4, r4, #1
	add	r4, r4, r0
	ldrh	r2, [r4, #0]
	ldr	r1, .L_4508
	mov	r0, #23
.L_44d2:
	strh	r2, [r1, #0]
	sub	r1, #2
	sub	r0, #1
	cmp	r0, #0
	bge	.L_44d2
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_44e4:
	.4byte	sUnk_878E790
.L_44e8:
	.4byte	0x6008000
.L_44ec:
	.4byte	sUnk_8288E6C
.L_44f0:
	.4byte	0x600934E
.L_44f4:
	.4byte	sUnk_8288EAC
.L_44f8:
	.4byte	0x6009220
.L_44fc:
	.4byte	sUnk_878E780
.L_4500:
	.4byte	0x6009000
.L_4504:
	.4byte	sUnk_878E6CC
.L_4508:
	.4byte	0x6009C7E


thumb_func_start func_800450C
func_800450C:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	ldr	r4, .L_4524
	ldrh	r0, [r4, #0]
	cmp	r0, #1
	beq	.L_4568
	cmp	r0, #1
	bgt	.L_4528
	cmp	r0, #0
	beq	.L_452e
	b	.L_46c8
	.align	2, 0
.L_4524:
	.4byte	gUnk_3002C60
.L_4528:
	cmp	r0, #2
	beq	.L_45bc
	b	.L_46c8
.L_452e:
	ldr	r0, .L_4560
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	mov	r0, #39	@ 0x27
	bl	func_800B7E0
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #224	@ 0xe0
	lsl	r2, r2, #3
	add	r0, r2, #0
	strh	r0, [r1, #0]
	bl	func_800B580
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	ldr	r3, .L_4564
	add	r0, r3, #0
	strh	r0, [r1, #0]
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	b	.L_46c8
.L_4560:
	.4byte	sUnk_82877B8
.L_4564:
	.4byte	0x7FFF
.L_4568:
	mov	r0, #15
	bl	func_800B888
	ldr	r2, .L_45ac
	ldrh	r3, [r2, #0]
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	mov	r0, #24
	neg	r0, r0
	cmp	r1, r0
	bge	.L_4592
	mov	r0, #3
	and	r0, r5
	cmp	r0, #3
	bne	.L_4592
	add	r0, r3, #1
	strh	r0, [r2, #0]
	ldr	r1, .L_45b0
	strh	r0, [r1, #0]
	add	r1, #4
	strh	r0, [r1, #0]
.L_4592:
	mov	r0, #255	@ 0xff
	lsl	r0, r0, #1
	cmp	r5, r0
	beq	.L_459c
	b	.L_46c8
.L_459c:
	ldr	r1, .L_45b4
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_45b8
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	b	.L_46c8
.L_45ac:
	.4byte	gUnk_3002C46
.L_45b0:
	.4byte	0x4000010
.L_45b4:
	.4byte	gUnk_3002C64
.L_45b8:
	.4byte	gUnk_3002C60
.L_45bc:
	ldr	r0, .L_45d0
	ldr	r1, [r0, #0]
	cmp	r1, #64	@ 0x40
	beq	.L_45ea
	cmp	r1, #64	@ 0x40
	bhi	.L_45d4
	cmp	r1, #32
	beq	.L_45e2
	b	.L_4602
	.align	2, 0
.L_45d0:
	.4byte	gUnk_3002C64
.L_45d4:
	cmp	r1, #146	@ 0x92
	beq	.L_45f2
	mov	r0, #198	@ 0xc6
	lsl	r0, r0, #1
	cmp	r1, r0
	beq	.L_45fa
	b	.L_4602
.L_45e2:
	mov	r0, #1
	bl	func_8004478
	b	.L_4602
.L_45ea:
	mov	r0, #2
	bl	func_8004478
	b	.L_4602
.L_45f2:
	mov	r0, #3
	bl	func_8004478
	b	.L_4602
.L_45fa:
	ldr	r1, .L_4630
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_4602:
	ldr	r1, .L_4634
	ldr	r2, .L_4638
	ldr	r0, [r2, #0]
	lsr	r0, r0, #4
	strh	r0, [r1, #0]
	ldr	r0, .L_463c
	ldrh	r4, [r0, #0]
	mov	r3, #0
	ldrsh	r1, [r0, r3]
	add	r3, r0, #0
	add	r6, r2, #0
	cmp	r1, #15
	bgt	.L_4676
	mov	r0, #8
	neg	r0, r0
	cmp	r1, r0
	bge	.L_4640
	mov	r0, #7
	and	r0, r5
	cmp	r0, #7
	bne	.L_4640
	add	r0, r4, #1
	b	.L_4666
.L_4630:
	.4byte	gSubGameMode
.L_4634:
	.4byte	0x400001A
.L_4638:
	.4byte	gUnk_3002C64
.L_463c:
	.4byte	gUnk_3002C46
.L_4640:
	ldrh	r2, [r3, #0]
	mov	r0, #0
	ldrsh	r1, [r3, r0]
	mov	r0, #4
	neg	r0, r0
	cmp	r1, r0
	bge	.L_465a
	mov	r0, #15
	and	r0, r5
	cmp	r0, #15
	bne	.L_465a
	add	r0, r2, #1
	b	.L_4666
.L_465a:
	mov	r0, #31
	and	r0, r5
	cmp	r0, #31
	bne	.L_4668
	ldrh	r0, [r3, #0]
	add	r0, #1
.L_4666:
	strh	r0, [r3, #0]
.L_4668:
	ldr	r2, .L_468c
	ldrh	r1, [r3, #0]
	ldr	r0, .L_4690
	and	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_4694
	strh	r0, [r1, #0]
.L_4676:
	ldr	r4, [r6, #0]
	cmp	r4, #146	@ 0x92
	bls	.L_46a0
	ldr	r2, .L_4698
	ldr	r0, .L_469c
	mov	r1, #3
	and	r4, r1
	add	r0, r4, r0
	ldrb	r0, [r0, #0]
	strh	r0, [r2, #0]
	b	.L_46b4
.L_468c:
	.4byte	0x4000010
.L_4690:
	.4byte	0x1FF
.L_4694:
	.4byte	0x4000014
.L_4698:
	.4byte	0x4000012
.L_469c:
	.4byte	sUnk_878E6D8
.L_46a0:
	cmp	r4, #64	@ 0x40
	bls	.L_46b4
	ldr	r3, .L_46d0
	ldr	r2, .L_46d4
	lsr	r0, r4, #1
	mov	r1, #3
	and	r0, r1
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	strh	r0, [r3, #0]
.L_46b4:
	ldr	r0, [r6, #0]
	cmp	r0, #184	@ 0xb8
	bne	.L_46c2
	mov	r0, #159	@ 0x9f
	lsl	r0, r0, #2
	bl	m4aSongNumStartOrChange
.L_46c2:
	ldr	r0, [r6, #0]
	add	r0, #1
	str	r0, [r6, #0]
.L_46c8:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_46d0:
	.4byte	0x4000012
.L_46d4:
	.4byte	sUnk_878E6D4


thumb_func_start func_80046D8
func_80046D8:
	sub	sp, #4
	ldr	r0, .L_476c
	ldr	r1, .L_4770
	str	r1, [r0, #0]
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	str	r1, [r0, #4]
	ldr	r1, .L_4774
	str	r1, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_4778
	str	r1, [r0, #0]
	ldr	r1, .L_477c
	str	r1, [r0, #4]
	ldr	r1, .L_4780
	str	r1, [r0, #8]
	ldr	r1, [r0, #8]
	mov	r2, #0
	str	r2, [sp, #0]
	mov	r1, sp
	str	r1, [r0, #0]
	ldr	r1, .L_4784
	str	r1, [r0, #4]
	ldr	r1, .L_4788
	str	r1, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_478c
	str	r1, [sp, #0]
	mov	r3, sp
	str	r3, [r0, #0]
	ldr	r1, .L_4790
	str	r1, [r0, #4]
	ldr	r1, .L_4794
	str	r1, [r0, #8]
	ldr	r0, [r0, #8]
	ldr	r1, .L_4798
	mov	r3, #208	@ 0xd0
	lsl	r3, r3, #8
	add	r0, r3, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r3, .L_479c
	add	r0, r3, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r3, .L_47a0
	add	r0, r3, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_47a4
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #1
	add	r1, r3, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_47a8
	strh	r1, [r0, #0]
	add	r0, #4
	strh	r1, [r0, #0]
	sub	r0, #20
	strh	r2, [r0, #0]
	ldr	r1, .L_47ac
	mov	r0, #240	@ 0xf0
	strh	r0, [r1, #0]
	add	r1, #4
	ldr	r3, .L_47b0
	add	r0, r3, #0
	strh	r0, [r1, #0]
	add	r1, #4
	mov	r0, #55	@ 0x37
	strh	r0, [r1, #0]
	ldr	r0, .L_47b4
	strh	r2, [r0, #0]
	add	sp, #4
	bx	lr
	.align	2, 0
.L_476c:
	.4byte	0x40000D4
.L_4770:
	.4byte	sUnk_8289124
.L_4774:
	.4byte	0x80000100
.L_4778:
	.4byte	sUnk_828AEC6
.L_477c:
	.4byte	0x5000200
.L_4780:
	.4byte	0x80000010
.L_4784:
	.4byte	0x6007FE0
.L_4788:
	.4byte	0x85000008
.L_478c:
	.4byte	0x3FF03FF
.L_4790:
	.4byte	0x6008000
.L_4794:
	.4byte	0x85000C00
.L_4798:
	.4byte	0x4000008
.L_479c:
	.4byte	0xD401
.L_47a0:
	.4byte	0xD802
.L_47a4:
	.4byte	gUnk_3002C46
.L_47a8:
	.4byte	0x4000010
.L_47ac:
	.4byte	0x4000040
.L_47b0:
	.4byte	0x1090
.L_47b4:
	.4byte	0x400004A


thumb_func_start func_80047B8
func_80047B8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	add	r5, r0, #0
	ldr	r4, .L_47d4
	ldrh	r0, [r4, #0]
	cmp	r0, #1
	beq	.L_4824
	cmp	r0, #1
	bgt	.L_47d8
	cmp	r0, #0
	beq	.L_47de
	b	.L_4b06
.L_47d4:
	.4byte	gUnk_3002C60
.L_47d8:
	cmp	r0, #2
	beq	.L_4850
	b	.L_4b06
.L_47de:
	ldr	r0, .L_4808
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r0, .L_480c
	ldr	r1, .L_4810
	bl	func_800B734
	ldr	r0, .L_4814
	ldr	r1, .L_4818
	bl	func_800B734
	ldr	r0, .L_481c
	ldr	r1, .L_4820
	bl	func_800B734
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	b	.L_4b06
.L_4808:
	.4byte	sUnk_8289324
.L_480c:
	.4byte	sUnk_828AE70
.L_4810:
	.4byte	0x6008000
.L_4814:
	.4byte	sUnk_828AE1A
.L_4818:
	.4byte	0x600A000
.L_481c:
	.4byte	sUnk_828ACD8
.L_4820:
	.4byte	0x600C000
.L_4824:
	ldr	r0, .L_4848
	ldr	r1, .L_484c
	bl	LZ77UnCompVram
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #220	@ 0xdc
	lsl	r2, r2, #6
	add	r0, r2, #0
	strh	r0, [r1, #0]
	mov	r0, #55	@ 0x37
	bl	func_800B804
	b	.L_4b06
	.align	2, 0
.L_4848:
	.4byte	sUnk_828AEE8
.L_484c:
	.4byte	0x6010000
.L_4850:
	ldr	r0, .L_4884
	ldrh	r3, [r0, #0]
	mov	r1, #0
	ldrsh	r2, [r0, r1]
	add	r1, r0, #0
	cmp	r2, #0
	ble	.L_48ca
	cmp	r2, #80	@ 0x50
	ble	.L_4866
	sub	r0, r3, #2
	strh	r0, [r1, #0]
.L_4866:
	ldrh	r2, [r1, #0]
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	cmp	r0, #40	@ 0x28
	ble	.L_4874
	sub	r0, r2, #1
	strh	r0, [r1, #0]
.L_4874:
	ldrh	r2, [r1, #0]
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	cmp	r0, #16
	ble	.L_4888
	sub	r0, r2, #1
	b	.L_48ba
	.align	2, 0
.L_4884:
	.4byte	gUnk_3002C46
.L_4888:
	cmp	r0, #8
	ble	.L_4898
	mov	r0, #1
	and	r0, r5
	cmp	r0, #0
	beq	.L_4898
	sub	r0, r2, #1
	b	.L_48ba
.L_4898:
	ldrh	r2, [r1, #0]
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	cmp	r0, #4
	ble	.L_48ae
	mov	r0, #3
	and	r0, r5
	cmp	r0, #3
	bne	.L_48ae
	sub	r0, r2, #1
	b	.L_48ba
.L_48ae:
	mov	r0, #7
	and	r0, r5
	cmp	r0, #7
	bne	.L_48bc
	ldrh	r0, [r1, #0]
	sub	r0, #1
.L_48ba:
	strh	r0, [r1, #0]
.L_48bc:
	ldr	r2, .L_4924
	ldrh	r1, [r1, #0]
	ldr	r0, .L_4928
	and	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_492c
	strh	r0, [r1, #0]
.L_48ca:
	mov	r6, #3
	add	r0, r5, #0
	and	r0, r6
	ldr	r1, .L_4930
	add	r0, r0, r1
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	lsl	r0, r0, #16
	lsr	r7, r0, #16
	ldr	r0, .L_4934
	strh	r7, [r0, #0]
	ldr	r2, .L_492c
	ldr	r0, .L_4938
	mov	r8, r0
	ldrh	r4, [r0, #0]
	lsl	r0, r7, #16
	asr	r0, r0, #16
	sub	r0, r4, r0
	ldr	r3, .L_4928
	add	r1, r3, #0
	and	r0, r1
	strh	r0, [r2, #0]
	add	r0, r5, #0
	mov	r1, #13
	bl	__modsi3
	lsl	r0, r0, #5
	ldr	r1, .L_493c
	add	r0, r0, r1
	ldr	r1, .L_4940
	str	r0, [r1, #0]
	ldr	r0, .L_493c
	str	r0, [r1, #4]
	ldr	r0, .L_4944
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	lsl	r4, r4, #16
	asr	r4, r4, #16
	cmp	r4, #240	@ 0xf0
	bne	.L_4948
	sub	r1, #128	@ 0x80
	mov	r0, #1
	b	.L_4a44
	.align	2, 0
.L_4924:
	.4byte	0x4000010
.L_4928:
	.4byte	0x1FF
.L_492c:
	.4byte	0x4000014
.L_4930:
	.4byte	sUnk_878E6DC
.L_4934:
	.4byte	0x4000012
.L_4938:
	.4byte	gUnk_3002C46
.L_493c:
	.4byte	0x5000020
.L_4940:
	.4byte	0x40000D4
.L_4944:
	.4byte	0x84000008
.L_4948:
	cmp	r4, #238	@ 0xee
	bne	.L_4958
	ldr	r1, .L_4954
	mov	r0, #2
	b	.L_4a44
	.align	2, 0
.L_4954:
	.4byte	0x4000054
.L_4958:
	cmp	r4, #236	@ 0xec
	bne	.L_4968
	ldr	r0, .L_4964
	strh	r6, [r0, #0]
	b	.L_4a46
	.align	2, 0
.L_4964:
	.4byte	0x4000054
.L_4968:
	cmp	r4, #120	@ 0x78
	bne	.L_4978
	ldr	r1, .L_4974
	mov	r0, #16
	b	.L_4a44
	.align	2, 0
.L_4974:
	.4byte	0x4000054
.L_4978:
	cmp	r4, #116	@ 0x74
	bne	.L_4988
	ldr	r1, .L_4984
	mov	r0, #15
	b	.L_4a44
	.align	2, 0
.L_4984:
	.4byte	0x4000054
.L_4988:
	cmp	r4, #112	@ 0x70
	bne	.L_4998
	ldr	r1, .L_4994
	mov	r0, #14
	b	.L_4a44
	.align	2, 0
.L_4994:
	.4byte	0x4000054
.L_4998:
	cmp	r4, #108	@ 0x6c
	bne	.L_49a8
	ldr	r1, .L_49a4
	mov	r0, #13
	b	.L_4a44
	.align	2, 0
.L_49a4:
	.4byte	0x4000054
.L_49a8:
	cmp	r4, #104	@ 0x68
	bne	.L_49b8
	ldr	r1, .L_49b4
	mov	r0, #12
	b	.L_4a44
	.align	2, 0
.L_49b4:
	.4byte	0x4000054
.L_49b8:
	cmp	r4, #100	@ 0x64
	bne	.L_49c8
	ldr	r1, .L_49c4
	mov	r0, #11
	b	.L_4a44
	.align	2, 0
.L_49c4:
	.4byte	0x4000054
.L_49c8:
	cmp	r4, #96	@ 0x60
	bne	.L_49d8
	ldr	r1, .L_49d4
	mov	r0, #10
	b	.L_4a44
	.align	2, 0
.L_49d4:
	.4byte	0x4000054
.L_49d8:
	mov	r2, r8
	mov	r3, #0
	ldrsh	r4, [r2, r3]
	cmp	r4, #92	@ 0x5c
	bne	.L_49ec
	ldr	r1, .L_49e8
	mov	r0, #9
	b	.L_4a44
.L_49e8:
	.4byte	0x4000054
.L_49ec:
	cmp	r4, #88	@ 0x58
	bne	.L_49fc
	ldr	r1, .L_49f8
	mov	r0, #8
	b	.L_4a44
	.align	2, 0
.L_49f8:
	.4byte	0x4000054
.L_49fc:
	cmp	r4, #84	@ 0x54
	bne	.L_4a0c
	ldr	r1, .L_4a08
	mov	r0, #7
	b	.L_4a44
	.align	2, 0
.L_4a08:
	.4byte	0x4000054
.L_4a0c:
	cmp	r4, #80	@ 0x50
	bne	.L_4a1c
	ldr	r1, .L_4a18
	mov	r0, #6
	b	.L_4a44
	.align	2, 0
.L_4a18:
	.4byte	0x4000054
.L_4a1c:
	cmp	r4, #78	@ 0x4e
	bne	.L_4a2c
	ldr	r1, .L_4a28
	mov	r0, #5
	b	.L_4a44
	.align	2, 0
.L_4a28:
	.4byte	0x4000054
.L_4a2c:
	cmp	r4, #76	@ 0x4c
	bne	.L_4a3c
	ldr	r1, .L_4a38
	mov	r0, #4
	b	.L_4a44
	.align	2, 0
.L_4a38:
	.4byte	0x4000054
.L_4a3c:
	cmp	r4, #74	@ 0x4a
	bne	.L_4a46
	ldr	r1, .L_4a84
	mov	r0, #3
.L_4a44:
	strh	r0, [r1, #0]
.L_4a46:
	mov	r0, #175	@ 0xaf
	lsl	r0, r0, #1
	cmp	r5, r0
	bne	.L_4a56
	ldr	r1, .L_4a88
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_4a56:
	add	r0, r5, #0
	mov	r1, sp
	bl	func_800BA5C
	add	r0, r5, #0
	sub	r0, #140	@ 0x8c
	cmp	r0, #11
	bls	.L_4a6c
	sub	r0, #24
	cmp	r0, #11
	bhi	.L_4a70
.L_4a6c:
	mov	r0, #0
	str	r0, [sp, #0]
.L_4a70:
	ldr	r5, [sp, #0]
	cmp	r5, #0
	beq	.L_4a8c
	ldrh	r1, [r5, #0]
	mov	r0, #128	@ 0x80
	bl	__divsi3
	add	r4, r0, #0
	b	.L_4a8e
	.align	2, 0
.L_4a84:
	.4byte	0x4000054
.L_4a88:
	.4byte	gSubGameMode
.L_4a8c:
	mov	r4, #0
.L_4a8e:
	ldr	r0, .L_4ae4
	mov	r1, #0
	ldrsh	r2, [r0, r1]
	add	r0, r2, #0
	cmp	r2, #0
	bge	.L_4a9c
	add	r0, #15
.L_4a9c:
	asr	r0, r0, #4
	cmp	r4, r0
	ble	.L_4aa4
	add	r4, r0, #0
.L_4aa4:
	ldr	r6, .L_4ae8
	cmp	r4, #0
	beq	.L_4aec
	sub	r4, #1
	mov	r0, #1
	neg	r0, r0
	cmp	r4, r0
	beq	.L_4b00
	lsl	r0, r7, #16
	asr	r7, r0, #16
	lsl	r0, r4, #3
	add	r5, r0, #0
	sub	r5, #128	@ 0x80
.L_4abe:
	ldr	r0, [sp, #0]
	ldr	r1, .L_4ae4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	neg	r2, r2
	sub	r2, r2, r5
	add	r1, r6, #0
	add	r3, r7, #0
	add	r3, #64	@ 0x40
	bl	func_800B5E4
	add	r6, r0, #0
	sub	r5, #8
	sub	r4, #1
	mov	r0, #1
	neg	r0, r0
	cmp	r4, r0
	bne	.L_4abe
	b	.L_4b00
.L_4ae4:
	.4byte	gUnk_3002C46
.L_4ae8:
	.4byte	gOamBuffer
.L_4aec:
	neg	r2, r2
	add	r2, #128	@ 0x80
	lsl	r3, r7, #16
	asr	r3, r3, #16
	add	r3, #64	@ 0x40
	add	r0, r5, #0
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
.L_4b00:
	add	r0, r6, #0
	bl	func_800B684
.L_4b06:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_8004B14
func_8004B14:
	push	{r4, lr}
	sub	sp, #4
	ldr	r3, .L_4bb4
	ldr	r0, .L_4bb8
	str	r0, [r3, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r3, #4]
	ldr	r0, .L_4bbc
	str	r0, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r0, .L_4bc0
	str	r0, [r3, #0]
	ldr	r0, .L_4bc4
	str	r0, [r3, #4]
	ldr	r0, .L_4bc8
	str	r0, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r4, .L_4bcc
	ldr	r0, [r4, #0]
	cmp	r0, #1
	bne	.L_4b4e
	ldr	r0, .L_4bd0
	str	r0, [r3, #0]
	ldr	r0, .L_4bd4
	str	r0, [r3, #4]
	ldr	r0, .L_4bd8
	str	r0, [r3, #8]
	ldr	r0, [r3, #8]
.L_4b4e:
	mov	r0, sp
	mov	r2, #0
	strh	r2, [r0, #0]
	str	r0, [r3, #0]
	mov	r0, #192	@ 0xc0
	lsl	r0, r0, #19
	str	r0, [r3, #4]
	ldr	r1, .L_4bdc
	str	r1, [r3, #8]
	ldr	r0, [r3, #8]
	mov	r0, sp
	strh	r2, [r0, #0]
	str	r0, [r3, #0]
	ldr	r0, .L_4be0
	str	r0, [r3, #4]
	str	r1, [r3, #8]
	ldr	r0, [r3, #8]
	ldr	r1, .L_4be4
	mov	r0, #88	@ 0x58
	strh	r0, [r1, #0]
	ldr	r1, .L_4be8
	mov	r0, #120	@ 0x78
	strh	r0, [r1, #0]
	ldr	r2, .L_4bec
	ldr	r1, .L_4bf0
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #2
	add	r0, r3, #0
	strh	r0, [r1, #0]
	strh	r0, [r2, #0]
	ldr	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_4b9a
	ldr	r0, .L_4bf4
	ldr	r1, .L_4bf8
	mov	r2, #210	@ 0xd2
	bl	m4aMPlayVolumeControl
.L_4b9a:
	mov	r0, #220	@ 0xdc
	lsl	r0, r0, #1
	bl	m4aSongNumStartOrChange
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r0, #4
	strh	r0, [r1, #0]
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_4bb4:
	.4byte	0x40000D4
.L_4bb8:
	.4byte	sUnk_828B210
.L_4bbc:
	.4byte	0x80000011
.L_4bc0:
	.4byte	sUnk_828C570
.L_4bc4:
	.4byte	0x5000200
.L_4bc8:
	.4byte	0x800000D0
.L_4bcc:
	.4byte	gUnk_3002C7C
.L_4bd0:
	.4byte	sUnk_828C710
.L_4bd4:
	.4byte	0x5000240
.L_4bd8:
	.4byte	0x80000010
.L_4bdc:
	.4byte	0x81000780
.L_4be0:
	.4byte	0x6008700
.L_4be4:
	.4byte	gUnk_3002C4A
.L_4be8:
	.4byte	gUnk_3002C4C
.L_4bec:
	.4byte	gUnk_3002C52
.L_4bf0:
	.4byte	gUnk_3002C50
.L_4bf4:
	.4byte	gMPlayInfo_2
.L_4bf8:
	.4byte	0xFFFF


thumb_func_start func_8004BFC
func_8004BFC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r8, r0
	mov	r0, #0
	str	r0, [sp, #0]
	str	r0, [sp, #4]
	ldr	r7, .L_4c24
	ldr	r0, .L_4c28
	ldrh	r0, [r0, #0]
	cmp	r0, #10
	bls	.L_4c18
	b	.L_50e4
.L_4c18:
	lsl	r0, r0, #2
	ldr	r1, .L_4c2c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_4c24:
	.4byte	gOamBuffer
.L_4c28:
	.4byte	gUnk_3002C60
.L_4c2c:
	.4byte	.L_4c30
.L_4c30:
	.4byte	.L_4c5c
	.4byte	.L_4c90
	.4byte	.L_4ce8
	.4byte	.L_4ea0
	.4byte	.L_4eb8
	.4byte	.L_4ed0
	.4byte	.L_4f90
	.4byte	.L_501c
	.4byte	.L_5050
	.4byte	.L_508c
	.4byte	.L_50c0
.L_4c5c:
	ldr	r0, .L_4c78
	ldr	r1, .L_4c7c
	bl	LZ77UnCompVram
	ldr	r0, .L_4c80
	ldr	r1, .L_4c84
	bl	LZ77UnCompVram
	ldr	r1, .L_4c88
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_4c8c
	b	.L_50de
	.align	2, 0
.L_4c78:
	.4byte	sUnk_828B234
.L_4c7c:
	.4byte	0x6000F00
.L_4c80:
	.4byte	sUnk_828C730
.L_4c84:
	.4byte	0x6014000
.L_4c88:
	.4byte	gUnk_3002C64
.L_4c8c:
	.4byte	gUnk_3002C60
.L_4c90:
	bl	func_800B580
	ldr	r1, .L_4cd0
	mov	r2, #140	@ 0x8c
	lsl	r2, r2, #1
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_4cd4
	mov	r0, #144	@ 0x90
	strh	r0, [r1, #0]
	ldr	r1, .L_4cd8
	mov	r3, #8
	neg	r3, r3
	add	r0, r3, #0
	strh	r0, [r1, #0]
	mov	r0, #52	@ 0x34
	bl	func_800B7E0
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	ldr	r4, .L_4cdc
	add	r0, r4, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_4ce0
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_4ce4
	mov	r0, #0
	str	r0, [r1, #0]
	b	.L_50e4
	.align	2, 0
.L_4cd0:
	.4byte	gUnk_3002C98
.L_4cd4:
	.4byte	gUnk_3002C9A
.L_4cd8:
	.4byte	gUnk_3002C44
.L_4cdc:
	.4byte	0x1404
.L_4ce0:
	.4byte	gUnk_3002C60
.L_4ce4:
	.4byte	gUnk_3002C64
.L_4ce8:
	mov	r0, #15
	bl	func_800B888
	ldr	r4, .L_4d14
	ldr	r0, [r4, #0]
	add	r0, #1
	str	r0, [r4, #0]
	mov	r0, r8
	mov	r1, sp
	bl	func_800BA78
	ldr	r0, [r4, #0]
	sub	r0, #150	@ 0x96
	cmp	r0, #70	@ 0x46
	bls	.L_4d08
	b	.L_4e40
.L_4d08:
	lsl	r0, r0, #2
	ldr	r1, .L_4d18
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_4d14:
	.4byte	gUnk_3002C64
.L_4d18:
	.4byte	.L_4d1c
.L_4d1c:
	.4byte	.L_4e38
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e38
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e38
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e38
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e38
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e38
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e38
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e40
	.4byte	.L_4e38
.L_4e38:
	ldr	r1, .L_4e84
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_4e40:
	ldr	r2, .L_4e88
	ldr	r0, [r2, #0]
	mov	r1, #1
	and	r0, r1
	cmp	r0, #0
	bne	.L_4e4e
	b	.L_50e4
.L_4e4e:
	ldr	r1, .L_4e8c
	ldrh	r0, [r1, #0]
	sub	r0, #1
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #119	@ 0x77
	beq	.L_4e60
	b	.L_50e4
.L_4e60:
	ldr	r1, .L_4e90
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	mov	r4, #0
	str	r4, [r2, #0]
	ldr	r0, .L_4e94
	bl	m4aSongNumStartOrChange
	ldr	r0, .L_4e98
	str	r4, [r0, #0]
	ldr	r1, .L_4e9c
	mov	r0, #3
	strh	r0, [r1, #0]
	sub	r1, #4
	mov	r0, #180	@ 0xb4
	b	.L_50e2
	.align	2, 0
.L_4e84:
	.4byte	gUnk_3002C44
.L_4e88:
	.4byte	gUnk_3002C64
.L_4e8c:
	.4byte	gUnk_3002C98
.L_4e90:
	.4byte	gUnk_3002C60
.L_4e94:
	.4byte	0x1B9
.L_4e98:
	.4byte	gUnk_3002C68
.L_4e9c:
	.4byte	0x4000054
.L_4ea0:
	ldr	r4, .L_4eb4
	ldr	r1, [r4, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r4, #0]
	mov	r1, sp
	bl	func_800BB10
	b	.L_50a4
	.align	2, 0
.L_4eb4:
	.4byte	gUnk_3002C64
.L_4eb8:
	ldr	r4, .L_4ecc
	ldr	r1, [r4, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r4, #0]
	mov	r1, sp
	bl	func_800BB40
	b	.L_50a4
	.align	2, 0
.L_4ecc:
	.4byte	gUnk_3002C64
.L_4ed0:
	mov	r0, r8
	mov	r1, sp
	bl	func_800BE34
	ldr	r0, .L_4f08
	ldr	r0, [r0, #0]
	mov	r1, #3
	and	r0, r1
	cmp	r0, #3
	bne	.L_4ef0
	ldr	r1, .L_4f0c
	ldrh	r0, [r1, #0]
	cmp	r0, #4
	bls	.L_4ef0
	sub	r0, #1
	strh	r0, [r1, #0]
.L_4ef0:
	ldr	r1, .L_4f10
	ldrh	r0, [r1, #0]
	cmp	r0, #16
	bls	.L_4f18
	sub	r0, #16
	strh	r0, [r1, #0]
	ldr	r1, .L_4f14
	ldrh	r0, [r1, #0]
	sub	r0, #16
	strh	r0, [r1, #0]
	ldr	r2, .L_4f08
	b	.L_4f70
.L_4f08:
	.4byte	gUnk_3002C64
.L_4f0c:
	.4byte	gUnk_3002C56
.L_4f10:
	.4byte	gUnk_3002C50
.L_4f14:
	.4byte	gUnk_3002C52
.L_4f18:
	ldr	r0, .L_4f40
	mov	r1, #3
	strh	r1, [r0, #0]
	ldr	r3, .L_4f44
	ldrh	r4, [r3, #0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	cmp	r0, #127	@ 0x7f
	bgt	.L_4f4c
	ldr	r0, .L_4f48
	ldr	r1, [r0, #0]
	mov	r2, #7
	and	r1, r2
	add	r2, r0, #0
	cmp	r1, #7
	bne	.L_4f70
	add	r0, r4, #1
	strh	r0, [r3, #0]
	b	.L_4f70
	.align	2, 0
.L_4f40:
	.4byte	gUnk_3002C58
.L_4f44:
	.4byte	gUnk_3002C4C
.L_4f48:
	.4byte	gUnk_3002C64
.L_4f4c:
	ldr	r1, .L_4f78
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r2, .L_4f7c
	mov	r0, #1
	neg	r0, r0
	str	r0, [r2, #0]
	ldr	r1, .L_4f80
	ldr	r0, .L_4f84
	ldrh	r0, [r0, #0]
	sub	r0, #60	@ 0x3c
	strh	r0, [r1, #0]
	ldr	r1, .L_4f88
	ldr	r0, .L_4f8c
	ldrh	r0, [r0, #0]
	add	r0, #60	@ 0x3c
	strh	r0, [r1, #0]
.L_4f70:
	ldr	r0, [r2, #0]
	add	r0, #1
	str	r0, [r2, #0]
	b	.L_50e4
.L_4f78:
	.4byte	gUnk_3002C60
.L_4f7c:
	.4byte	gUnk_3002C64
.L_4f80:
	.4byte	gUnk_3002C9C
.L_4f84:
	.4byte	gUnk_3002C98
.L_4f88:
	.4byte	gUnk_3002C9E
.L_4f8c:
	.4byte	gUnk_3002C9A
.L_4f90:
	mov	r0, r8
	mov	r1, sp
	bl	func_800BE34
	ldr	r6, .L_5004
	ldr	r1, [r6, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r6, #0]
	add	r1, sp, #4
	bl	func_800BD8C
	ldr	r4, .L_5008
	ldr	r1, .L_500c
	ldrh	r2, [r4, #0]
	mov	r3, #0
	ldrsh	r0, [r4, r3]
	mov	r3, #0
	ldrsh	r5, [r1, r3]
	cmp	r0, r5
	bge	.L_4fbe
	add	r0, r2, #1
	strh	r0, [r4, #0]
.L_4fbe:
	ldr	r2, .L_5010
	ldr	r1, .L_5014
	ldrh	r0, [r2, #0]
	mov	ip, r0
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	mov	r3, #0
	ldrsh	r1, [r1, r3]
	cmp	r0, r1
	ble	.L_4fd8
	mov	r0, ip
	sub	r0, #1
	strh	r0, [r2, #0]
.L_4fd8:
	mov	r3, #0
	ldrsh	r0, [r4, r3]
	cmp	r0, r5
	beq	.L_4fe2
	b	.L_50e4
.L_4fe2:
	mov	r4, #0
	ldrsh	r0, [r2, r4]
	cmp	r0, r1
	beq	.L_4fec
	b	.L_50e4
.L_4fec:
	ldr	r1, .L_5018
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	mov	r0, #0
	str	r0, [r6, #0]
	mov	r0, #221	@ 0xdd
	lsl	r0, r0, #1
	bl	m4aSongNumStartOrChange
	b	.L_50e4
	.align	2, 0
.L_5004:
	.4byte	gUnk_3002C64
.L_5008:
	.4byte	gUnk_3002C9C
.L_500c:
	.4byte	gUnk_3002C98
.L_5010:
	.4byte	gUnk_3002C9E
.L_5014:
	.4byte	gUnk_3002C9A
.L_5018:
	.4byte	gUnk_3002C60
.L_501c:
	ldr	r4, .L_5044
	ldr	r1, [r4, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r4, #0]
	mov	r1, sp
	bl	func_800BCC4
	cmp	r0, #0
	beq	.L_50e4
	ldr	r1, .L_5048
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_504c
	ldrh	r0, [r1, #0]
	sub	r0, #2
	b	.L_50e2
.L_5044:
	.4byte	gUnk_3002C64
.L_5048:
	.4byte	gUnk_3002C60
.L_504c:
	.4byte	gUnk_3002C9E
.L_5050:
	ldr	r4, .L_5084
	ldr	r0, [r4, #0]
	cmp	r0, #54	@ 0x36
	bls	.L_505a
	mov	r0, #54	@ 0x36
.L_505a:
	add	r1, sp, #4
	bl	func_800BDE0
	ldr	r0, [r4, #0]
	mov	r1, #3
	and	r0, r1
	cmp	r0, #3
	bne	.L_5072
	ldr	r1, .L_5088
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_5072:
	ldr	r1, [r4, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r4, #0]
	mov	r1, sp
	bl	func_800BC04
	b	.L_50a4
	.align	2, 0
.L_5084:
	.4byte	gUnk_3002C64
.L_5088:
	.4byte	gUnk_3002C9E
.L_508c:
	add	r1, sp, #4
	mov	r0, #54	@ 0x36
	bl	func_800BDE0
	ldr	r4, .L_50b8
	ldr	r1, [r4, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r4, #0]
	mov	r1, sp
	bl	func_800BB90
.L_50a4:
	cmp	r0, #0
	beq	.L_50e4
	ldr	r0, .L_50bc
	ldrh	r1, [r0, #0]
	add	r1, #1
	strh	r1, [r0, #0]
	mov	r0, #0
	str	r0, [r4, #0]
	b	.L_50e4
	.align	2, 0
.L_50b8:
	.4byte	gUnk_3002C64
.L_50bc:
	.4byte	gUnk_3002C60
.L_50c0:
	add	r1, sp, #4
	mov	r0, #54	@ 0x36
	bl	func_800BDE0
	ldr	r2, .L_5128
	ldr	r1, [r2, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r2, #0]
	mov	r1, sp
	bl	func_800BC7C
	cmp	r0, #0
	beq	.L_50e4
	ldr	r1, .L_512c
.L_50de:
	ldrh	r0, [r1, #0]
	add	r0, #1
.L_50e2:
	strh	r0, [r1, #0]
.L_50e4:
	ldr	r0, .L_5130
	ldrh	r1, [r0, #0]
	add	r5, r0, #0
	cmp	r1, #4
	bls	.L_510e
	mov	r0, #15
	mov	r1, r8
	and	r0, r1
	cmp	r0, #15
	bne	.L_510e
	ldr	r2, .L_5134
	ldrh	r1, [r2, #0]
	ldr	r0, .L_5138
	cmp	r1, r0
	bhi	.L_510e
	add	r0, r1, #1
	strh	r0, [r2, #0]
	ldr	r1, .L_513c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_510e:
	ldrh	r0, [r5, #0]
	cmp	r0, #2
	bhi	.L_5116
	b	.L_5298
.L_5116:
	ldr	r1, .L_5140
	ldr	r0, [r1, #0]
	add	r2, r1, #0
	cmp	r0, #15
	bne	.L_5148
	ldr	r1, .L_5144
	mov	r0, #4
	b	.L_5290
	.align	2, 0
.L_5128:
	.4byte	gUnk_3002C64
.L_512c:
	.4byte	gSubGameMode
.L_5130:
	.4byte	gUnk_3002C60
.L_5134:
	.4byte	gUnk_3002C2E
.L_5138:
	.4byte	0x11F
.L_513c:
	.4byte	gUnk_3002C30
.L_5140:
	.4byte	gUnk_3002C68
.L_5144:
	.4byte	0x4000054
.L_5148:
	cmp	r0, #30
	bne	.L_5158
	ldr	r1, .L_5154
	mov	r0, #5
	b	.L_5290
	.align	2, 0
.L_5154:
	.4byte	0x4000054
.L_5158:
	cmp	r0, #45	@ 0x2d
	bne	.L_5168
	ldr	r1, .L_5164
	mov	r0, #6
	b	.L_5290
	.align	2, 0
.L_5164:
	.4byte	0x4000054
.L_5168:
	cmp	r0, #61	@ 0x3d
	bne	.L_5178
	ldr	r1, .L_5174
	mov	r0, #7
	b	.L_5290
	.align	2, 0
.L_5174:
	.4byte	0x4000054
.L_5178:
	cmp	r0, #77	@ 0x4d
	bne	.L_5188
	ldr	r1, .L_5184
	mov	r0, #8
	b	.L_5290
	.align	2, 0
.L_5184:
	.4byte	0x4000054
.L_5188:
	cmp	r0, #78	@ 0x4e
	bne	.L_5198
	ldr	r1, .L_5194
	mov	r0, #16
	b	.L_5290
	.align	2, 0
.L_5194:
	.4byte	0x4000054
.L_5198:
	cmp	r0, #81	@ 0x51
	bne	.L_51a8
	ldr	r1, .L_51a4
	mov	r0, #15
	b	.L_5290
	.align	2, 0
.L_51a4:
	.4byte	0x4000054
.L_51a8:
	cmp	r0, #84	@ 0x54
	bne	.L_51b8
	ldr	r1, .L_51b4
	mov	r0, #14
	b	.L_5290
	.align	2, 0
.L_51b4:
	.4byte	0x4000054
.L_51b8:
	cmp	r0, #87	@ 0x57
	bne	.L_51c8
	ldr	r1, .L_51c4
	mov	r0, #13
	b	.L_5290
	.align	2, 0
.L_51c4:
	.4byte	0x4000054
.L_51c8:
	cmp	r0, #90	@ 0x5a
	bne	.L_51d8
	ldr	r1, .L_51d4
	mov	r0, #12
	b	.L_5290
	.align	2, 0
.L_51d4:
	.4byte	0x4000054
.L_51d8:
	ldr	r0, [r1, #0]
	cmp	r0, #93	@ 0x5d
	bne	.L_51e8
	ldr	r1, .L_51e4
	mov	r0, #11
	b	.L_5290
.L_51e4:
	.4byte	0x4000054
.L_51e8:
	cmp	r0, #96	@ 0x60
	bne	.L_51f8
	ldr	r1, .L_51f4
	mov	r0, #10
	b	.L_5290
	.align	2, 0
.L_51f4:
	.4byte	0x4000054
.L_51f8:
	cmp	r0, #99	@ 0x63
	bne	.L_5208
	ldr	r1, .L_5204
	mov	r0, #9
	b	.L_5290
	.align	2, 0
.L_5204:
	.4byte	0x4000054
.L_5208:
	cmp	r0, #102	@ 0x66
	bne	.L_5218
	ldr	r1, .L_5214
	mov	r0, #8
	b	.L_5290
	.align	2, 0
.L_5214:
	.4byte	0x4000054
.L_5218:
	cmp	r0, #105	@ 0x69
	bne	.L_5228
	ldr	r1, .L_5224
	mov	r0, #7
	b	.L_5290
	.align	2, 0
.L_5224:
	.4byte	0x4000054
.L_5228:
	cmp	r0, #107	@ 0x6b
	bne	.L_5238
	ldr	r1, .L_5234
	mov	r0, #6
	b	.L_5290
	.align	2, 0
.L_5234:
	.4byte	0x4000054
.L_5238:
	cmp	r0, #109	@ 0x6d
	bne	.L_5248
	ldr	r1, .L_5244
	mov	r0, #5
	b	.L_5290
	.align	2, 0
.L_5244:
	.4byte	0x4000054
.L_5248:
	cmp	r0, #111	@ 0x6f
	bne	.L_5258
	ldr	r1, .L_5254
	mov	r0, #4
	b	.L_5290
	.align	2, 0
.L_5254:
	.4byte	0x4000054
.L_5258:
	cmp	r0, #113	@ 0x71
	bne	.L_5268
	ldr	r1, .L_5264
	mov	r0, #3
	b	.L_5290
	.align	2, 0
.L_5264:
	.4byte	0x4000054
.L_5268:
	cmp	r0, #115	@ 0x73
	bne	.L_5278
	ldr	r1, .L_5274
	mov	r0, #2
	b	.L_5290
	.align	2, 0
.L_5274:
	.4byte	0x4000054
.L_5278:
	cmp	r0, #117	@ 0x75
	bne	.L_5288
	ldr	r1, .L_5284
	mov	r0, #1
	b	.L_5290
	.align	2, 0
.L_5284:
	.4byte	0x4000054
.L_5288:
	cmp	r0, #119	@ 0x77
	bne	.L_5292
	ldr	r1, .L_5348
	mov	r0, #0
.L_5290:
	strh	r0, [r1, #0]
.L_5292:
	ldr	r0, [r2, #0]
	add	r0, #1
	str	r0, [r2, #0]
.L_5298:
	ldrh	r0, [r5, #0]
	cmp	r0, #1
	bls	.L_533c
	ldr	r0, .L_534c
	ldrh	r1, [r0, #0]
	ldr	r4, .L_5350
	ldrh	r2, [r4, #0]
	ldr	r0, .L_5354
	ldrh	r3, [r0, #0]
	mov	r0, #0
	bl	func_800B4C0
	ldrh	r0, [r5, #0]
	cmp	r0, #5
	bne	.L_52c4
	ldrh	r0, [r4, #0]
	cmp	r0, #128	@ 0x80
	bls	.L_52c4
	add	r0, r7, #0
	bl	func_8005374
	add	r7, r0, #0
.L_52c4:
	ldr	r0, .L_5358
	ldrh	r0, [r0, #0]
	cmp	r0, #5
	bls	.L_52e8
	ldr	r1, [sp, #4]
	cmp	r1, #0
	beq	.L_52e8
	ldr	r0, .L_535c
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	ldr	r0, .L_5360
	mov	r4, #0
	ldrsh	r3, [r0, r4]
	add	r0, r1, #0
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
.L_52e8:
	ldr	r1, [sp, #0]
	cmp	r1, #0
	beq	.L_530c
	ldr	r0, .L_5364
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	ldr	r0, .L_5368
	mov	r4, #0
	ldrsh	r3, [r0, r4]
	ldr	r0, .L_536c
	mov	r4, #0
	ldrsh	r0, [r0, r4]
	sub	r3, r3, r0
	add	r0, r1, #0
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
.L_530c:
	ldr	r0, .L_5358
	ldrh	r0, [r0, #0]
	cmp	r0, #5
	bne	.L_5324
	ldr	r0, .L_5350
	ldrh	r0, [r0, #0]
	cmp	r0, #127	@ 0x7f
	bhi	.L_5324
	add	r0, r7, #0
	bl	func_8005374
	add	r7, r0, #0
.L_5324:
	ldr	r0, .L_5370
	ldr	r1, .L_536c
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	add	r3, #96	@ 0x60
	add	r1, r7, #0
	mov	r2, #120	@ 0x78
	bl	func_800B5E4
	add	r7, r0, #0
	bl	func_800B684
.L_533c:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_5348:
	.4byte	0x4000054
.L_534c:
	.4byte	gUnk_3002C4E
.L_5350:
	.4byte	gUnk_3002C50
.L_5354:
	.4byte	gUnk_3002C52
.L_5358:
	.4byte	gUnk_3002C60
.L_535c:
	.4byte	gUnk_3002C9C
.L_5360:
	.4byte	gUnk_3002C9E
.L_5364:
	.4byte	gUnk_3002C98
.L_5368:
	.4byte	gUnk_3002C9A
.L_536c:
	.4byte	gUnk_3002C44
.L_5370:
	.4byte	sUnk_828E278


thumb_func_start func_8005374
func_8005374:
	push	{r4, r5, r6, lr}
	mov	r6, sl
	mov	r5, r9
	mov	r4, r8
	push	{r4, r5, r6}
	mov	r9, r0
	ldr	r0, .L_540c
	ldrh	r5, [r0, #0]
	lsl	r5, r5, #12
	ldr	r0, .L_5410
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #10
	orr	r5, r0
	lsl	r5, r5, #16
	lsr	r5, r5, #16
	ldr	r0, .L_5414
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r8, r1
	ldr	r0, .L_5418
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	sl, r1
	ldr	r0, .L_541c
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r0, #64	@ 0x40
	bl	FixedMul
	add	r6, r0, #0
	lsl	r6, r6, #16
	asr	r6, r6, #16
	mov	r1, #64	@ 0x40
	sub	r1, r1, r6
	lsr	r0, r1, #31
	add	r1, r1, r0
	asr	r1, r1, #1
	ldr	r0, .L_5420
	add	r8, r1
	mov	r1, r9
	mov	r2, r8
	mov	r3, sl
	bl	func_800B5E4
	add	r2, r0, #0
	mov	r0, r9
	ldrh	r1, [r0, #4]
	ldr	r4, .L_5424
	add	r0, r4, #0
	and	r0, r1
	orr	r0, r5
	mov	r1, r9
	strh	r0, [r1, #4]
	add	r0, r2, #4
	mov	r9, r0
	ldr	r0, .L_5428
	add	r8, r6
	add	r1, r2, #0
	mov	r2, r8
	mov	r3, sl
	bl	func_800B5E4
	add	r2, r0, #0
	mov	r1, r9
	ldrh	r0, [r1, #0]
	and	r4, r0
	orr	r4, r5
	strh	r4, [r1, #0]
	add	r0, r2, #0
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L_540c:
	.4byte	gUnk_3002C56
.L_5410:
	.4byte	gUnk_3002C58
.L_5414:
	.4byte	gUnk_3002C4A
.L_5418:
	.4byte	gUnk_3002C4C
.L_541c:
	.4byte	gUnk_3002C50
.L_5420:
	.4byte	sUnk_828E268
.L_5424:
	.4byte	0x3FF
.L_5428:
	.4byte	sUnk_828E270


thumb_func_start func_800542C
func_800542C:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r1, .L_54b8
	ldr	r0, .L_54bc
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_54c0
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	mov	r5, #0
	str	r5, [sp, #0]
	mov	r0, sp
	str	r0, [r1, #0]
	ldr	r0, .L_54c4
	str	r0, [r1, #4]
	ldr	r0, .L_54c8
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_54cc
	str	r0, [sp, #0]
	mov	r2, sp
	str	r2, [r1, #0]
	ldr	r4, .L_54d0
	str	r4, [r1, #4]
	ldr	r0, .L_54d4
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_54d8
	ldr	r1, .L_54dc
	bl	func_800B734
	ldr	r0, .L_54e0
	ldr	r1, .L_54e4
	bl	func_800B734
	ldr	r0, .L_54e8
	add	r1, r4, #0
	bl	func_800B734
	ldr	r1, .L_54ec
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r2, .L_54f0
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_54f4
	add	r0, r2, #0
	strh	r0, [r1, #0]
	mov	r0, #39	@ 0x27
	bl	func_800B7E0
	ldr	r1, .L_54f8
	ldr	r2, .L_54fc
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #4
	mov	r0, #16
	strh	r0, [r1, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #19
	strh	r5, [r0, #0]
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_54b8:
	.4byte	0x40000D4
.L_54bc:
	.4byte	sUnk_828E780
.L_54c0:
	.4byte	0x80000080
.L_54c4:
	.4byte	0x6007FE0
.L_54c8:
	.4byte	0x85000008
.L_54cc:
	.4byte	0x3FF03FF
.L_54d0:
	.4byte	0x6008000
.L_54d4:
	.4byte	0x85000800
.L_54d8:
	.4byte	sUnk_82940C8
.L_54dc:
	.4byte	0x6008800
.L_54e0:
	.4byte	sUnk_8293FBE
.L_54e4:
	.4byte	0x6009800
.L_54e8:
	.4byte	sUnk_8293FAC
.L_54ec:
	.4byte	0x400000A
.L_54f0:
	.4byte	0x9101
.L_54f4:
	.4byte	0x1302
.L_54f8:
	.4byte	0x4000016
.L_54fc:
	.4byte	0xFF70


thumb_func_start func_8005500
func_8005500:
	push	{r4, r5, r6, lr}
	add	r3, r0, #0
	ldr	r0, .L_551c
	ldrh	r1, [r0, #0]
	add	r5, r0, #0
	cmp	r1, #5
	bls	.L_5510
	b	.L_57a4
.L_5510:
	lsl	r0, r1, #2
	ldr	r1, .L_5520
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_551c:
	.4byte	gUnk_3002C60
.L_5520:
	.4byte	.L_5524
.L_5524:
	.4byte	.L_553c
	.4byte	.L_5564
	.4byte	.L_55ac
	.4byte	.L_55e4
	.4byte	.L_56f4
	.4byte	.L_5784
.L_553c:
	ldr	r0, .L_555c
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	bl	func_800B580
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #224	@ 0xe0
	lsl	r2, r2, #3
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_5560
	b	.L_579e
	.align	2, 0
.L_555c:
	.4byte	sUnk_828E880
.L_5560:
	.4byte	gUnk_3002C60
.L_5564:
	mov	r0, #3
	bl	func_800B888
	cmp	r0, #0
	bne	.L_5570
	b	.L_57a4
.L_5570:
	ldr	r1, .L_5594
	ldr	r2, .L_5598
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_559c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_55a0
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_55a4
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_55a8
	mov	r0, #16
	b	.L_57a2
.L_5594:
	.4byte	0x4000050
.L_5598:
	.4byte	0x442
.L_559c:
	.4byte	0x808
.L_55a0:
	.4byte	gUnk_3002C60
.L_55a4:
	.4byte	gUnk_3002C64
.L_55a8:
	.4byte	gUnk_3002C48
.L_55ac:
	mov	r0, #7
	and	r0, r3
	cmp	r0, #7
	beq	.L_55b6
	b	.L_57a4
.L_55b6:
	ldr	r2, .L_55cc
	ldrh	r3, [r2, #0]
	mov	r1, #0
	ldrsh	r0, [r2, r1]
	cmp	r0, #0
	ble	.L_55d4
	ldr	r1, .L_55d0
	sub	r0, r3, #1
	strh	r0, [r2, #0]
	b	.L_57a2
	.align	2, 0
.L_55cc:
	.4byte	gUnk_3002C48
.L_55d0:
	.4byte	0x400001A
.L_55d4:
	mov	r1, #144	@ 0x90
	neg	r1, r1
	add	r0, r1, #0
	strh	r0, [r2, #0]
	ldrh	r0, [r5, #0]
	add	r0, #1
	strh	r0, [r5, #0]
	b	.L_57a4
.L_55e4:
	ldr	r0, .L_5600
	ldrh	r4, [r0, #0]
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	add	r2, r0, #0
	cmp	r1, #0
	bge	.L_564c
	mov	r0, #40	@ 0x28
	neg	r0, r0
	cmp	r1, r0
	bge	.L_5604
	add	r0, r4, #1
	b	.L_563e
	.align	2, 0
.L_5600:
	.4byte	gUnk_3002C48
.L_5604:
	mov	r0, #20
	neg	r0, r0
	cmp	r1, r0
	bge	.L_5618
	mov	r0, #1
	and	r0, r3
	cmp	r0, #0
	beq	.L_5618
	add	r0, r4, #1
	b	.L_563e
.L_5618:
	ldrh	r4, [r2, #0]
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	mov	r0, #10
	neg	r0, r0
	cmp	r1, r0
	bge	.L_5632
	mov	r0, #3
	and	r0, r3
	cmp	r0, #3
	bne	.L_5632
	add	r0, r4, #1
	b	.L_563e
.L_5632:
	mov	r0, #7
	and	r0, r3
	cmp	r0, #7
	bne	.L_5640
	ldrh	r0, [r2, #0]
	add	r0, #1
.L_563e:
	strh	r0, [r2, #0]
.L_5640:
	ldr	r1, .L_5648
	ldrh	r0, [r2, #0]
	b	.L_57a2
	.align	2, 0
.L_5648:
	.4byte	0x4000016
.L_564c:
	ldr	r0, .L_5674
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5698
	ldr	r2, .L_5678
	ldr	r0, .L_567c
	str	r0, [r2, #0]
	ldr	r1, .L_5680
	ldr	r0, .L_5684
	str	r0, [r1, #0]
	ldr	r1, .L_5688
	ldr	r0, .L_568c
	str	r0, [r1, #0]
	ldr	r1, .L_5690
	mov	r0, #30
	strh	r0, [r1, #0]
	ldr	r1, .L_5694
	mov	r0, #24
	b	.L_56b4
	.align	2, 0
.L_5674:
	.4byte	gUnk_3002C78
.L_5678:
	.4byte	gUnk_3002C88
.L_567c:
	.4byte	0x6008386
.L_5680:
	.4byte	gUnk_3002C90
.L_5684:
	.4byte	sUnk_82941D2
.L_5688:
	.4byte	gUnk_3002C94
.L_568c:
	.4byte	sUnk_829420E
.L_5690:
	.4byte	gUnk_3002C98
.L_5694:
	.4byte	gUnk_3002C9A
.L_5698:
	ldr	r2, .L_56cc
	ldr	r0, .L_56d0
	str	r0, [r2, #0]
	ldr	r1, .L_56d4
	ldr	r0, .L_56d8
	str	r0, [r1, #0]
	ldr	r1, .L_56dc
	ldr	r0, .L_56e0
	str	r0, [r1, #0]
	ldr	r1, .L_56e4
	mov	r0, #44	@ 0x2c
	strh	r0, [r1, #0]
	ldr	r1, .L_56e8
	mov	r0, #28
.L_56b4:
	strh	r0, [r1, #0]
	ldr	r1, .L_56ec
	ldr	r0, [r2, #0]
	add	r0, #64	@ 0x40
	str	r0, [r1, #0]
	ldrh	r0, [r5, #0]
	add	r0, #1
	strh	r0, [r5, #0]
	ldr	r1, .L_56f0
	mov	r0, #0
	str	r0, [r1, #0]
	b	.L_57a4
.L_56cc:
	.4byte	gUnk_3002C88
.L_56d0:
	.4byte	0x6008382
.L_56d4:
	.4byte	gUnk_3002C90
.L_56d8:
	.4byte	sUnk_829424A
.L_56dc:
	.4byte	gUnk_3002C94
.L_56e0:
	.4byte	sUnk_82942A2
.L_56e4:
	.4byte	gUnk_3002C98
.L_56e8:
	.4byte	gUnk_3002C9A
.L_56ec:
	.4byte	gUnk_3002C8C
.L_56f0:
	.4byte	gUnk_3002C64
.L_56f4:
	mov	r0, #3
	and	r0, r3
	cmp	r0, #3
	bne	.L_57a4
	ldr	r4, .L_575c
	ldr	r0, .L_5760
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	ldr	r0, [r4, #0]
	cmp	r0, r1
	bcs	.L_5778
	ldr	r6, .L_5764
	ldr	r2, [r6, #0]
	ldr	r3, .L_5768
	ldr	r0, [r3, #0]
	ldrh	r1, [r0, #0]
	strh	r1, [r2, #0]
	add	r0, #2
	str	r0, [r3, #0]
	add	r2, #2
	str	r2, [r6, #0]
	ldr	r5, .L_576c
	ldr	r2, [r5, #0]
	ldr	r3, .L_5770
	ldr	r0, [r3, #0]
	ldrh	r1, [r0, #0]
	strh	r1, [r2, #0]
	add	r0, #2
	str	r0, [r3, #0]
	add	r2, #2
	str	r2, [r5, #0]
	ldr	r0, [r4, #0]
	add	r0, #1
	str	r0, [r4, #0]
	ldr	r1, .L_5774
	mov	r2, #0
	ldrsh	r4, [r1, r2]
	add	r1, r4, #0
	bl	__umodsi3
	cmp	r0, #0
	bne	.L_57a4
	mov	r1, #64	@ 0x40
	sub	r1, r1, r4
	lsl	r1, r1, #1
	ldr	r0, [r6, #0]
	add	r0, r0, r1
	str	r0, [r6, #0]
	add	r0, #64	@ 0x40
	str	r0, [r5, #0]
	b	.L_57a4
	.align	2, 0
.L_575c:
	.4byte	gUnk_3002C64
.L_5760:
	.4byte	gUnk_3002C98
.L_5764:
	.4byte	gUnk_3002C88
.L_5768:
	.4byte	gUnk_3002C90
.L_576c:
	.4byte	gUnk_3002C8C
.L_5770:
	.4byte	gUnk_3002C94
.L_5774:
	.4byte	gUnk_3002C9A
.L_5778:
	ldrh	r0, [r5, #0]
	add	r0, #1
	strh	r0, [r5, #0]
	mov	r0, #0
	str	r0, [r4, #0]
	b	.L_57a4
.L_5784:
	ldr	r1, .L_57ac
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	cmp	r0, #81	@ 0x51
	bne	.L_57a4
	ldr	r0, .L_57b0
	ldr	r1, .L_57b4
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	bl	m4aMPlayVolumeControl
	ldr	r1, .L_57b8
.L_579e:
	ldrh	r0, [r1, #0]
	add	r0, #1
.L_57a2:
	strh	r0, [r1, #0]
.L_57a4:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_57ac:
	.4byte	gUnk_3002C64
.L_57b0:
	.4byte	gMPlayInfo_2
.L_57b4:
	.4byte	0xFFFF
.L_57b8:
	.4byte	gSubGameMode


thumb_func_start func_80057BC
func_80057BC:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r0, .L_5858
	ldr	r1, .L_585c
	str	r1, [r0, #0]
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	str	r1, [r0, #4]
	ldr	r1, .L_5860
	str	r1, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_5864
	str	r1, [r0, #0]
	ldr	r1, .L_5868
	str	r1, [r0, #4]
	ldr	r1, .L_586c
	str	r1, [r0, #8]
	ldr	r1, [r0, #8]
	mov	r5, #0
	str	r5, [sp, #0]
	mov	r1, sp
	str	r1, [r0, #0]
	ldr	r1, .L_5870
	str	r1, [r0, #4]
	ldr	r1, .L_5874
	str	r1, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_5878
	str	r1, [sp, #0]
	mov	r2, sp
	str	r2, [r0, #0]
	ldr	r4, .L_587c
	str	r4, [r0, #4]
	ldr	r1, .L_5880
	str	r1, [r0, #8]
	ldr	r0, [r0, #8]
	ldr	r0, .L_5884
	ldr	r1, .L_5888
	bl	func_800B734
	ldr	r0, .L_588c
	ldr	r1, .L_5890
	bl	func_800B734
	ldr	r0, .L_5894
	add	r1, r4, #0
	bl	func_800B734
	ldr	r1, .L_5898
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r2, .L_589c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_58a0
	add	r0, r2, #0
	strh	r0, [r1, #0]
	mov	r0, #39	@ 0x27
	bl	func_800B7E0
	ldr	r1, .L_58a4
	ldr	r2, .L_58a8
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #4
	mov	r0, #16
	strh	r0, [r1, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #19
	strh	r5, [r0, #0]
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5858:
	.4byte	0x40000D4
.L_585c:
	.4byte	sUnk_82D40F4
.L_5860:
	.4byte	0x80000070
.L_5864:
	.4byte	sUnk_82D830E
.L_5868:
	.4byte	0x5000200
.L_586c:
	.4byte	0x80000040
.L_5870:
	.4byte	0x6007FE0
.L_5874:
	.4byte	0x85000008
.L_5878:
	.4byte	0x3FF03FF
.L_587c:
	.4byte	0x6008000
.L_5880:
	.4byte	0x85000800
.L_5884:
	.4byte	sUnk_82940C8
.L_5888:
	.4byte	0x6008800
.L_588c:
	.4byte	sUnk_82D820C
.L_5890:
	.4byte	0x6009800
.L_5894:
	.4byte	sUnk_8293FAC
.L_5898:
	.4byte	0x400000A
.L_589c:
	.4byte	0x9101
.L_58a0:
	.4byte	0x1302
.L_58a4:
	.4byte	0x4000016
.L_58a8:
	.4byte	0xFF70


thumb_func_start func_80058AC
func_80058AC:
	push	{r4, r5, r6, lr}
	sub	sp, #8
	add	r3, r0, #0
	mov	r0, #0
	str	r0, [sp, #0]
	str	r0, [sp, #4]
	ldr	r0, .L_58cc
	ldrh	r0, [r0, #0]
	cmp	r0, #8
	bls	.L_58c2
	b	.L_5c4e
.L_58c2:
	lsl	r0, r0, #2
	ldr	r1, .L_58d0
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_58cc:
	.4byte	gUnk_3002C60
.L_58d0:
	.4byte	.L_58d4
.L_58d4:
	.4byte	.L_58f8
	.4byte	.L_5930
	.4byte	.L_5978
	.4byte	.L_59b0
	.4byte	.L_5ac8
	.4byte	.L_5b64
	.4byte	.L_5b94
	.4byte	.L_5bb0
	.4byte	.L_5c08
.L_58f8:
	ldr	r0, .L_5920
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r0, .L_5924
	ldr	r1, .L_5928
	bl	LZ77UnCompVram
	bl	func_800B580
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #184	@ 0xb8
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_592c
	b	.L_5c48
	.align	2, 0
.L_5920:
	.4byte	sUnk_82D41D4
.L_5924:
	.4byte	sUnk_82D8390
.L_5928:
	.4byte	0x6010000
.L_592c:
	.4byte	gUnk_3002C60
.L_5930:
	mov	r0, #3
	bl	func_800B888
	cmp	r0, #0
	bne	.L_593c
	b	.L_5c4e
.L_593c:
	ldr	r1, .L_5960
	ldr	r2, .L_5964
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_5968
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_596c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_5970
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_5974
	mov	r0, #16
	b	.L_5c4c
.L_5960:
	.4byte	0x4000050
.L_5964:
	.4byte	0x442
.L_5968:
	.4byte	0x808
.L_596c:
	.4byte	gUnk_3002C60
.L_5970:
	.4byte	gUnk_3002C64
.L_5974:
	.4byte	gUnk_3002C48
.L_5978:
	mov	r0, #7
	and	r0, r3
	cmp	r0, #7
	beq	.L_5982
	b	.L_5c4e
.L_5982:
	ldr	r2, .L_5998
	ldrh	r3, [r2, #0]
	mov	r1, #0
	ldrsh	r0, [r2, r1]
	cmp	r0, #0
	ble	.L_59a0
	ldr	r1, .L_599c
	sub	r0, r3, #1
	strh	r0, [r2, #0]
	b	.L_5c4c
	.align	2, 0
.L_5998:
	.4byte	gUnk_3002C48
.L_599c:
	.4byte	0x400001A
.L_59a0:
	mov	r1, #144	@ 0x90
	neg	r1, r1
	add	r0, r1, #0
	strh	r0, [r2, #0]
	ldr	r1, .L_59ac
	b	.L_5c48
.L_59ac:
	.4byte	gUnk_3002C60
.L_59b0:
	ldr	r0, .L_59cc
	ldrh	r4, [r0, #0]
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	add	r2, r0, #0
	cmp	r1, #0
	bge	.L_5a18
	mov	r0, #40	@ 0x28
	neg	r0, r0
	cmp	r1, r0
	bge	.L_59d0
	add	r0, r4, #1
	b	.L_5a0a
	.align	2, 0
.L_59cc:
	.4byte	gUnk_3002C48
.L_59d0:
	mov	r0, #20
	neg	r0, r0
	cmp	r1, r0
	bge	.L_59e4
	mov	r0, #1
	and	r0, r3
	cmp	r0, #0
	beq	.L_59e4
	add	r0, r4, #1
	b	.L_5a0a
.L_59e4:
	ldrh	r4, [r2, #0]
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	mov	r0, #10
	neg	r0, r0
	cmp	r1, r0
	bge	.L_59fe
	mov	r0, #3
	and	r0, r3
	cmp	r0, #3
	bne	.L_59fe
	add	r0, r4, #1
	b	.L_5a0a
.L_59fe:
	mov	r0, #7
	and	r0, r3
	cmp	r0, #7
	bne	.L_5a0c
	ldrh	r0, [r2, #0]
	add	r0, #1
.L_5a0a:
	strh	r0, [r2, #0]
.L_5a0c:
	ldr	r1, .L_5a14
	ldrh	r0, [r2, #0]
	b	.L_5c4c
	.align	2, 0
.L_5a14:
	.4byte	0x4000016
.L_5a18:
	ldr	r0, .L_5a40
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5a64
	ldr	r2, .L_5a44
	ldr	r0, .L_5a48
	str	r0, [r2, #0]
	ldr	r1, .L_5a4c
	ldr	r0, .L_5a50
	str	r0, [r1, #0]
	ldr	r1, .L_5a54
	ldr	r0, .L_5a58
	str	r0, [r1, #0]
	ldr	r0, .L_5a5c
	mov	r1, #13
	strh	r1, [r0, #0]
	ldr	r0, .L_5a60
	strh	r1, [r0, #0]
	b	.L_5a82
	.align	2, 0
.L_5a40:
	.4byte	gUnk_3002C78
.L_5a44:
	.4byte	gUnk_3002C88
.L_5a48:
	.4byte	0x6008390
.L_5a4c:
	.4byte	gUnk_3002C90
.L_5a50:
	.4byte	sUnk_82D825E
.L_5a54:
	.4byte	gUnk_3002C94
.L_5a58:
	.4byte	sUnk_82D8278
.L_5a5c:
	.4byte	gUnk_3002C98
.L_5a60:
	.4byte	gUnk_3002C9A
.L_5a64:
	ldr	r2, .L_5a9c
	ldr	r0, .L_5aa0
	str	r0, [r2, #0]
	ldr	r1, .L_5aa4
	ldr	r0, .L_5aa8
	str	r0, [r1, #0]
	ldr	r1, .L_5aac
	ldr	r0, .L_5ab0
	str	r0, [r1, #0]
	ldr	r1, .L_5ab4
	mov	r0, #31
	strh	r0, [r1, #0]
	ldr	r1, .L_5ab8
	mov	r0, #22
	strh	r0, [r1, #0]
.L_5a82:
	ldr	r1, .L_5abc
	ldr	r0, [r2, #0]
	add	r0, #64	@ 0x40
	str	r0, [r1, #0]
	ldr	r1, .L_5ac0
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_5ac4
	mov	r0, #0
	str	r0, [r1, #0]
	b	.L_5c4e
	.align	2, 0
.L_5a9c:
	.4byte	gUnk_3002C88
.L_5aa0:
	.4byte	0x6008388
.L_5aa4:
	.4byte	gUnk_3002C90
.L_5aa8:
	.4byte	sUnk_82D8292
.L_5aac:
	.4byte	gUnk_3002C94
.L_5ab0:
	.4byte	sUnk_82D82D0
.L_5ab4:
	.4byte	gUnk_3002C98
.L_5ab8:
	.4byte	gUnk_3002C9A
.L_5abc:
	.4byte	gUnk_3002C8C
.L_5ac0:
	.4byte	gUnk_3002C60
.L_5ac4:
	.4byte	gUnk_3002C64
.L_5ac8:
	mov	r0, #3
	and	r0, r3
	cmp	r0, #3
	beq	.L_5ad2
	b	.L_5c4e
.L_5ad2:
	ldr	r4, .L_5b34
	ldr	r0, .L_5b38
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	ldr	r0, [r4, #0]
	cmp	r0, r1
	bcs	.L_5b50
	ldr	r6, .L_5b3c
	ldr	r2, [r6, #0]
	ldr	r3, .L_5b40
	ldr	r0, [r3, #0]
	ldrh	r1, [r0, #0]
	strh	r1, [r2, #0]
	add	r0, #2
	str	r0, [r3, #0]
	add	r2, #2
	str	r2, [r6, #0]
	ldr	r5, .L_5b44
	ldr	r2, [r5, #0]
	ldr	r3, .L_5b48
	ldr	r0, [r3, #0]
	ldrh	r1, [r0, #0]
	strh	r1, [r2, #0]
	add	r0, #2
	str	r0, [r3, #0]
	add	r2, #2
	str	r2, [r5, #0]
	ldr	r0, [r4, #0]
	add	r0, #1
	str	r0, [r4, #0]
	ldr	r1, .L_5b4c
	mov	r2, #0
	ldrsh	r4, [r1, r2]
	add	r1, r4, #0
	bl	__umodsi3
	cmp	r0, #0
	beq	.L_5b20
	b	.L_5c4e
.L_5b20:
	mov	r1, #64	@ 0x40
	sub	r1, r1, r4
	lsl	r1, r1, #1
	ldr	r0, [r6, #0]
	add	r0, r0, r1
	str	r0, [r6, #0]
	add	r0, #64	@ 0x40
	str	r0, [r5, #0]
	b	.L_5c4e
	.align	2, 0
.L_5b34:
	.4byte	gUnk_3002C64
.L_5b38:
	.4byte	gUnk_3002C98
.L_5b3c:
	.4byte	gUnk_3002C88
.L_5b40:
	.4byte	gUnk_3002C90
.L_5b44:
	.4byte	gUnk_3002C8C
.L_5b48:
	.4byte	gUnk_3002C94
.L_5b4c:
	.4byte	gUnk_3002C9A
.L_5b50:
	ldr	r0, .L_5b60
	ldrh	r1, [r0, #0]
	add	r1, #1
	strh	r1, [r0, #0]
	mov	r0, #0
	str	r0, [r4, #0]
	b	.L_5c4e
	.align	2, 0
.L_5b60:
	.4byte	gUnk_3002C60
.L_5b64:
	ldr	r4, .L_5b84
	ldr	r0, [r4, #0]
	add	r0, #1
	str	r0, [r4, #0]
	cmp	r0, #181	@ 0xb5
	bne	.L_5c4e
	ldr	r0, .L_5b88
	ldr	r1, .L_5b8c
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	bl	m4aMPlayVolumeControl
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_5b90
	b	.L_5c48
.L_5b84:
	.4byte	gUnk_3002C64
.L_5b88:
	.4byte	gMPlayInfo_2
.L_5b8c:
	.4byte	0xFFFF
.L_5b90:
	.4byte	gUnk_3002C60
.L_5b94:
	ldr	r1, .L_5ba8
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	cmp	r0, #181	@ 0xb5
	bne	.L_5c4e
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_5bac
	b	.L_5c48
.L_5ba8:
	.4byte	gUnk_3002C64
.L_5bac:
	.4byte	gUnk_3002C60
.L_5bb0:
	ldr	r0, .L_5bc4
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_5bcc
	ldr	r0, .L_5bc8
	ldr	r0, [r0, #0]
	mov	r1, sp
	bl	func_800FA3C
	b	.L_5bd6
.L_5bc4:
	.4byte	gTitleScreenStyle
.L_5bc8:
	.4byte	gUnk_3002C64
.L_5bcc:
	ldr	r0, .L_5bf8
	ldr	r0, [r0, #0]
	mov	r1, sp
	bl	func_800F9E0
.L_5bd6:
	ldr	r4, .L_5bf8
	ldr	r0, [r4, #0]
	add	r0, #1
	str	r0, [r4, #0]
	ldr	r0, .L_5bfc
	ldrh	r1, [r0, #0]
	mov	r0, #9
	and	r0, r1
	cmp	r0, #0
	beq	.L_5c4e
	ldr	r0, .L_5c00
	bl	m4aSongNumStartOrChange
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_5c04
	b	.L_5c48
.L_5bf8:
	.4byte	gUnk_3002C64
.L_5bfc:
	.4byte	gButtonsPressed
.L_5c00:
	.4byte	0x125
.L_5c04:
	.4byte	gUnk_3002C60
.L_5c08:
	ldr	r0, .L_5c1c
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_5c24
	ldr	r0, .L_5c20
	ldr	r0, [r0, #0]
	mov	r1, sp
	bl	func_800FA8C
	b	.L_5c2e
.L_5c1c:
	.4byte	gTitleScreenStyle
.L_5c20:
	.4byte	gUnk_3002C64
.L_5c24:
	ldr	r0, .L_5c8c
	ldr	r0, [r0, #0]
	mov	r1, sp
	bl	func_800FA28
.L_5c2e:
	add	r2, r0, #0
	ldr	r1, .L_5c8c
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	cmp	r2, #0
	beq	.L_5c4e
	ldr	r0, .L_5c90
	ldr	r1, .L_5c94
	mov	r2, #180	@ 0xb4
	bl	m4aMPlayVolumeControl
	ldr	r1, .L_5c98
.L_5c48:
	ldrh	r0, [r1, #0]
	add	r0, #1
.L_5c4c:
	strh	r0, [r1, #0]
.L_5c4e:
	ldr	r4, .L_5c9c
	ldr	r0, .L_5ca0
	ldrh	r0, [r0, #0]
	cmp	r0, #5
	bls	.L_5c70
	ldr	r0, .L_5c8c
	ldr	r0, [r0, #0]
	add	r1, sp, #4
	bl	func_800FAA0
	ldr	r0, [sp, #4]
	add	r1, r4, #0
	mov	r2, #120	@ 0x78
	mov	r3, #88	@ 0x58
	bl	func_800B5E4
	add	r4, r0, #0
.L_5c70:
	ldr	r0, [sp, #0]
	add	r1, r4, #0
	mov	r2, #108	@ 0x6c
	mov	r3, #160	@ 0xa0
	bl	func_800B5E4
	add	r4, r0, #0
	bl	func_800B684
	add	sp, #8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5c8c:
	.4byte	gUnk_3002C64
.L_5c90:
	.4byte	gMPlayInfo_2
.L_5c94:
	.4byte	0xFFFF
.L_5c98:
	.4byte	gSubGameMode
.L_5c9c:
	.4byte	gOamBuffer
.L_5ca0:
	.4byte	gUnk_3002C60


thumb_func_start func_8005CA4
func_8005CA4:
	ldr	r1, .L_5cb8
	mov	r0, #95	@ 0x5f
	strh	r0, [r1, #0]
	sub	r1, #2
	ldr	r0, .L_5cbc
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #3
	neg	r0, r0
	strh	r0, [r1, #0]
	bx	lr
.L_5cb8:
	.4byte	0x4000012
.L_5cbc:
	.4byte	gUnk_300188E


thumb_func_start func_8005CC0
func_8005CC0:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r0, .L_5ce8
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5cf4
	bl	SubGameClearGraphicsMemory
	ldr	r0, .L_5cec
	mov	r1, #12
	bl	m4aMPlayFadeOut
	ldr	r0, .L_5cf0
	bl	m4aSongNumStartOrChange
	mov	r0, #159	@ 0x9f
	lsl	r0, r0, #2
	bl	m4aSongNumStartOrChange
	b	.L_5d16
.L_5ce8:
	.4byte	gUnk_3002C74
.L_5cec:
	.4byte	gMPlayInfo_4
.L_5cf0:
	.4byte	0x12B
.L_5cf4:
	ldr	r3, .L_5d5c
	str	r3, [sp, #0]
	ldr	r0, .L_5d60
	mov	r1, sp
	str	r1, [r0, #0]
	ldr	r1, .L_5d64
	str	r1, [r0, #4]
	ldr	r2, .L_5d68
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	str	r3, [sp, #0]
	mov	r4, sp
	str	r4, [r0, #0]
	ldr	r1, .L_5d6c
	str	r1, [r0, #4]
	str	r2, [r0, #8]
	ldr	r0, [r0, #8]
.L_5d16:
	ldr	r1, .L_5d60
	ldr	r0, .L_5d70
	str	r0, [r1, #0]
	ldr	r0, .L_5d74
	str	r0, [r1, #4]
	ldr	r0, .L_5d78
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_5d7c
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_5d80
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_5d84
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5d98
	ldr	r0, .L_5d88
	ldr	r0, [r0, #0]
	ldr	r2, .L_5d8c
	cmp	r0, #0
	beq	.L_5d4a
	ldr	r2, .L_5d90
.L_5d4a:
	ldr	r1, .L_5d94
	add	r0, r2, #0
	bl	func_800B734
	mov	r0, #15
	bl	func_800C224
	b	.L_5dbe
	.align	2, 0
.L_5d5c:
	.4byte	0x3FF03FF
.L_5d60:
	.4byte	0x40000D4
.L_5d64:
	.4byte	0x600A000
.L_5d68:
	.4byte	0x85000100
.L_5d6c:
	.4byte	0x600A800
.L_5d70:
	.4byte	sUnk_8298990
.L_5d74:
	.4byte	0x5000200
.L_5d78:
	.4byte	0x80000060
.L_5d7c:
	.4byte	sUnk_82942FC
.L_5d80:
	.4byte	0x800000A0
.L_5d84:
	.4byte	gUnk_3002C74
.L_5d88:
	.4byte	gUnk_3002C78
.L_5d8c:
	.4byte	sUnk_829892E
.L_5d90:
	.4byte	sUnk_8298908
.L_5d94:
	.4byte	0x6008000
.L_5d98:
	ldr	r0, .L_5e54
	ldr	r4, .L_5e58
	add	r1, r4, #0
	bl	func_800B734
	ldr	r5, .L_5e5c
	add	r0, r5, #0
	add	r1, r4, #0
	bl	func_800B734
	ldr	r0, .L_5e60
	ldr	r4, .L_5e64
	add	r1, r4, #0
	bl	func_800B734
	add	r0, r5, #0
	add	r1, r4, #0
	bl	func_800B734
.L_5dbe:
	ldr	r0, .L_5e68
	ldr	r1, .L_5e6c
	bl	func_800B734
	ldr	r0, .L_5e70
	ldr	r1, .L_5e74
	bl	func_800B734
	ldr	r0, .L_5e78
	ldr	r1, .L_5e7c
	bl	func_800B734
	ldr	r0, .L_5e80
	ldr	r1, .L_5e84
	bl	func_800B734
	ldr	r0, .L_5e88
	ldr	r1, .L_5e8c
	bl	func_800B734
	ldr	r1, .L_5e90
	mov	r2, #160	@ 0xa0
	lsl	r2, r2, #7
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r4, .L_5e94
	add	r0, r4, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_5e98
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r4, .L_5e9c
	add	r0, r4, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_5ea0
	mov	r2, #0
	strh	r2, [r0, #0]
	ldr	r4, .L_5ea4
	ldr	r0, .L_5ea8
	ldr	r3, [r0, #0]
	mov	r1, #80	@ 0x50
	cmp	r3, #0
	beq	.L_5e20
	mov	r0, #2
	neg	r0, r0
	add	r1, r0, #0
.L_5e20:
	strh	r1, [r4, #0]
	ldr	r0, .L_5eac
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	ldr	r1, .L_5eb0
	ldr	r4, .L_5eb4
	add	r0, r4, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_5eb8
	mov	r0, #16
	strh	r0, [r1, #0]
	ldr	r0, .L_5ebc
	strh	r2, [r0, #0]
	ldr	r1, .L_5ec0
	mov	r0, #16
	strh	r0, [r1, #0]
	cmp	r3, #0
	beq	.L_5ecc
	ldr	r1, .L_5ec4
	mov	r0, #109	@ 0x6d
	strh	r0, [r1, #0]
	ldr	r1, .L_5ec8
	mov	r0, #148	@ 0x94
	b	.L_5ede
	.align	2, 0
.L_5e54:
	.4byte	sUnk_8295234
.L_5e58:
	.4byte	0x6008000
.L_5e5c:
	.4byte	sUnk_8295534
.L_5e60:
	.4byte	sUnk_82953CA
.L_5e64:
	.4byte	0x6008800
.L_5e68:
	.4byte	sUnk_82955A6
.L_5e6c:
	.4byte	0x6009000
.L_5e70:
	.4byte	sUnk_8295604
.L_5e74:
	.4byte	0x600A000
.L_5e78:
	.4byte	sUnk_829571E
.L_5e7c:
	.4byte	0x600A800
.L_5e80:
	.4byte	sUnk_8295864
.L_5e84:
	.4byte	0x600B000
.L_5e88:
	.4byte	sUnk_82958F2
.L_5e8c:
	.4byte	0x600B800
.L_5e90:
	.4byte	0x4000008
.L_5e94:
	.4byte	0x1201
.L_5e98:
	.4byte	0x5402
.L_5e9c:
	.4byte	0x5603
.L_5ea0:
	.4byte	gUnk_3002C46
.L_5ea4:
	.4byte	gUnk_3002C48
.L_5ea8:
	.4byte	gUnk_3002C74
.L_5eac:
	.4byte	0x4000010
.L_5eb0:
	.4byte	0x4000050
.L_5eb4:
	.4byte	0xE41
.L_5eb8:
	.4byte	gUnk_3002C5A
.L_5ebc:
	.4byte	gUnk_3002C5C
.L_5ec0:
	.4byte	0x4000052
.L_5ec4:
	.4byte	gUnk_3002C98
.L_5ec8:
	.4byte	gUnk_3002C9A
.L_5ecc:
	ldr	r1, .L_5f08
	mov	r2, #160	@ 0xa0
	lsl	r2, r2, #1
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_5f0c
	mov	r4, #174	@ 0xae
	lsl	r4, r4, #1
	add	r0, r4, #0
.L_5ede:
	strh	r0, [r1, #0]
	ldr	r1, .L_5f10
	mov	r0, #150	@ 0x96
	strh	r0, [r1, #0]
	ldr	r2, .L_5f14
	mov	r1, #0
	ldr	r0, .L_5f18
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_5ef4
	mov	r1, #1
.L_5ef4:
	strh	r1, [r2, #0]
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r0, #0
	strh	r0, [r1, #0]
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_5f08:
	.4byte	gUnk_3002C98
.L_5f0c:
	.4byte	gUnk_3002C9A
.L_5f10:
	.4byte	gUnk_3002C9C
.L_5f14:
	.4byte	gUnk_3002CA2
.L_5f18:
	.4byte	gTitleScreenStyle


thumb_func_start func_8005F1C
func_8005F1C:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #8
	add	r6, r0, #0
	ldr	r0, .L_5f38
	ldrh	r0, [r0, #0]
	cmp	r0, #11
	bls	.L_5f2c
	b	.L_631e
.L_5f2c:
	lsl	r0, r0, #2
	ldr	r1, .L_5f3c
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_5f38:
	.4byte	gUnk_3002C60
.L_5f3c:
	.4byte	.L_5f40
.L_5f40:
	.4byte	.L_5f70
	.4byte	.L_5f98
	.4byte	.L_6010
	.4byte	.L_60f4
	.4byte	.L_6190
	.4byte	.L_61f0
	.4byte	.L_6204
	.4byte	.L_622c
	.4byte	.L_6298
	.4byte	.L_62e4
	.4byte	.L_62e4
	.4byte	.L_630c
.L_5f70:
	ldr	r0, .L_5f88
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r0, .L_5f8c
	ldr	r1, .L_5f90
	bl	LZ77UnCompVram
	ldr	r1, .L_5f94
	b	.L_6318
	.align	2, 0
.L_5f88:
	.4byte	sUnk_829443C
.L_5f8c:
	.4byte	sUnk_8295954
.L_5f90:
	.4byte	0x6004000
.L_5f94:
	.4byte	gUnk_3002C60
.L_5f98:
	ldr	r0, .L_5fb0
	ldr	r1, .L_5fb4
	bl	LZ77UnCompVram
	ldr	r0, .L_5fb8
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_5fc0
	ldr	r1, .L_5fbc
	mov	r0, #6
	b	.L_5fea
	.align	2, 0
.L_5fb0:
	.4byte	sUnk_8298A50
.L_5fb4:
	.4byte	0x6010000
.L_5fb8:
	.4byte	gUnk_3002C74
.L_5fbc:
	.4byte	gUnk_3002C60
.L_5fc0:
	ldr	r0, .L_5ffc
	bl	InterruptCallbackSetVCount
	ldr	r2, .L_6000
	ldrh	r1, [r2, #0]
	mov	r0, #255	@ 0xff
	and	r0, r1
	strh	r0, [r2, #0]
	ldrh	r0, [r2, #0]
	ldr	r3, .L_6004
	add	r1, r3, #0
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r2, .L_6008
	ldrh	r0, [r2, #0]
	mov	r1, #4
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_600c
	ldrh	r0, [r1, #0]
	add	r0, #1
.L_5fea:
	strh	r0, [r1, #0]
	bl	func_800B580
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r7, #248	@ 0xf8
	lsl	r7, r7, #5
	add	r0, r7, #0
	b	.L_631c
.L_5ffc:
	.4byte	func_8005CA4
.L_6000:
	.4byte	0x4000004
.L_6004:
	.4byte	0x9720
.L_6008:
	.4byte	0x4000200
.L_600c:
	.4byte	gUnk_3002C60
.L_6010:
	ldr	r1, .L_6048
	ldrh	r2, [r1, #0]
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	cmp	r0, #148	@ 0x94
	ble	.L_6020
	sub	r0, r2, #1
	strh	r0, [r1, #0]
.L_6020:
	ldr	r0, .L_604c
	lsl	r1, r6, #1
	neg	r1, r1
	strh	r1, [r0, #0]
	ldr	r0, .L_6050
	ldrh	r3, [r0, #0]
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	add	r2, r0, #0
	cmp	r1, #0
	ble	.L_6078
	cmp	r1, #10
	ble	.L_6054
	mov	r0, #3
	and	r0, r6
	cmp	r0, #3
	bne	.L_6054
	sub	r0, r3, #1
	b	.L_6076
	.align	2, 0
.L_6048:
	.4byte	gUnk_3002C9A
.L_604c:
	.4byte	0x4000010
.L_6050:
	.4byte	gUnk_3002C48
.L_6054:
	ldrh	r1, [r2, #0]
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	cmp	r0, #4
	ble	.L_606a
	mov	r0, #7
	and	r0, r6
	cmp	r0, #7
	bne	.L_606a
	sub	r0, r1, #1
	b	.L_6076
.L_606a:
	mov	r0, #15
	and	r0, r6
	cmp	r0, #15
	bne	.L_6078
	ldrh	r0, [r2, #0]
	sub	r0, #1
.L_6076:
	strh	r0, [r2, #0]
.L_6078:
	ldr	r5, .L_60d8
	ldrh	r0, [r2, #0]
	strh	r0, [r5, #0]
	mov	r0, #200	@ 0xc8
	lsl	r0, r0, #1
	cmp	r6, r0
	bgt	.L_6088
	b	.L_631e
.L_6088:
	mov	r0, #15
	and	r0, r6
	cmp	r0, #15
	beq	.L_6092
	b	.L_631e
.L_6092:
	ldr	r1, .L_60dc
	ldrh	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_609e
	sub	r0, #1
	strh	r0, [r1, #0]
.L_609e:
	ldr	r4, .L_60e0
	ldrh	r0, [r4, #0]
	cmp	r0, #15
	bhi	.L_60aa
	add	r0, #1
	strh	r0, [r4, #0]
.L_60aa:
	ldr	r2, .L_60e4
	ldrh	r0, [r4, #0]
	lsl	r0, r0, #8
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	ldrh	r0, [r4, #0]
	bl	func_800C224
	ldrh	r0, [r4, #0]
	cmp	r0, #16
	beq	.L_60c4
	b	.L_631e
.L_60c4:
	ldr	r2, .L_60e8
	ldrh	r1, [r2, #0]
	ldr	r0, .L_60ec
	and	r0, r1
	strh	r0, [r2, #0]
	mov	r0, #0
	strh	r0, [r5, #0]
	ldr	r1, .L_60f0
	b	.L_6318
	.align	2, 0
.L_60d8:
	.4byte	0x4000012
.L_60dc:
	.4byte	gUnk_3002C5A
.L_60e0:
	.4byte	gUnk_3002C5C
.L_60e4:
	.4byte	0x4000052
.L_60e8:
	.4byte	0x4000200
.L_60ec:
	.4byte	0xFFFB
.L_60f0:
	.4byte	gUnk_3002C60
.L_60f4:
	ldr	r2, .L_611c
	ldr	r0, [r2, #0]
	cmp	r0, #7
	bhi	.L_6130
	lsl	r1, r0, #9
	ldr	r7, .L_6120
	add	r1, r1, r7
	add	r0, #1
	str	r0, [r2, #0]
	ldr	r0, .L_6124
	str	r0, [sp, #0]
	ldr	r0, .L_6128
	mov	r2, sp
	str	r2, [r0, #0]
	str	r1, [r0, #4]
	ldr	r1, .L_612c
	str	r1, [r0, #8]
	ldr	r0, [r0, #8]
	b	.L_631e
	.align	2, 0
.L_611c:
	.4byte	gUnk_3002C64
.L_6120:
	.4byte	0x6008000
.L_6124:
	.4byte	0x3FF03FF
.L_6128:
	.4byte	0x40000D4
.L_612c:
	.4byte	0x85000080
.L_6130:
	ldr	r0, .L_613c
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6144
	ldr	r0, .L_6140
	b	.L_6146
.L_613c:
	.4byte	gUnk_3002C78
.L_6140:
	.4byte	sUnk_8298908
.L_6144:
	ldr	r0, .L_6174
.L_6146:
	str	r0, [sp, #4]
	ldr	r1, .L_6178
	ldr	r0, [sp, #4]
	bl	func_800B734
	ldr	r0, .L_617c
	mov	r2, #0
	strh	r2, [r0, #0]
	ldr	r0, .L_6180
	mov	r3, #2
	neg	r3, r3
	add	r1, r3, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_6184
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	ldr	r1, .L_6188
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_618c
	b	.L_6318
	.align	2, 0
.L_6174:
	.4byte	sUnk_829892E
.L_6178:
	.4byte	0x6008000
.L_617c:
	.4byte	gUnk_3002C46
.L_6180:
	.4byte	gUnk_3002C48
.L_6184:
	.4byte	0x4000010
.L_6188:
	.4byte	gUnk_3002C64
.L_618c:
	.4byte	gUnk_3002C60
.L_6190:
	ldr	r2, .L_61dc
	ldr	r0, [r2, #0]
	mov	r3, #150	@ 0x96
	lsl	r3, r3, #1
	add	r1, r0, #0
	add	r0, #1
	str	r0, [r2, #0]
	cmp	r1, r3
	bhi	.L_61a4
	b	.L_631e
.L_61a4:
	mov	r0, #15
	and	r0, r6
	ldr	r3, .L_61e0
	cmp	r0, #15
	bne	.L_61d0
	ldrh	r0, [r3, #0]
	cmp	r0, #15
	bhi	.L_61b8
	add	r0, #1
	strh	r0, [r3, #0]
.L_61b8:
	ldr	r1, .L_61e4
	ldrh	r0, [r1, #0]
	cmp	r0, #0
	beq	.L_61c4
	sub	r0, #1
	strh	r0, [r1, #0]
.L_61c4:
	ldr	r0, .L_61e8
	ldrh	r1, [r1, #0]
	lsl	r1, r1, #8
	ldrh	r2, [r3, #0]
	orr	r1, r2
	strh	r1, [r0, #0]
.L_61d0:
	ldrh	r0, [r3, #0]
	cmp	r0, #16
	beq	.L_61d8
	b	.L_631e
.L_61d8:
	ldr	r1, .L_61ec
	b	.L_6318
.L_61dc:
	.4byte	gUnk_3002C64
.L_61e0:
	.4byte	gUnk_3002C5A
.L_61e4:
	.4byte	gUnk_3002C5C
.L_61e8:
	.4byte	0x4000052
.L_61ec:
	.4byte	gUnk_3002C60
.L_61f0:
	ldr	r1, .L_6220
	ldrh	r0, [r1, #0]
	sub	r0, #8
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #108	@ 0x6c
	bgt	.L_6204
	mov	r0, #109	@ 0x6d
	strh	r0, [r1, #0]
.L_6204:
	ldr	r0, .L_6220
	mov	r7, #0
	ldrsh	r0, [r0, r7]
	cmp	r0, #109	@ 0x6d
	beq	.L_6210
	b	.L_631e
.L_6210:
	mov	r0, #63	@ 0x3f
	bl	func_800B7BC
	ldr	r1, .L_6224
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_6228
	b	.L_6318
.L_6220:
	.4byte	gUnk_3002C98
.L_6224:
	.4byte	gUnk_3002C64
.L_6228:
	.4byte	gUnk_3002C60
.L_622c:
	ldr	r2, .L_6264
	ldrh	r0, [r2, #0]
	ldr	r4, .L_6268
	cmp	r0, #0
	beq	.L_6242
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_626c
	strh	r0, [r1, #0]
	ldr	r1, .L_6270
	strh	r0, [r1, #0]
.L_6242:
	add	r0, r4, #0
	ldr	r1, [r0, #0]
	add	r1, #1
	str	r1, [r0, #0]
	mov	r0, #225	@ 0xe1
	lsl	r0, r0, #4
	cmp	r1, r0
	bls	.L_6274
	mov	r0, #3
	bl	func_800B84C
	cmp	r0, #0
	beq	.L_631e
	bl	func_8072B74
	b	.L_631e
	.align	2, 0
.L_6264:
	.4byte	gButtonsPressed
.L_6268:
	.4byte	gUnk_3002C64
.L_626c:
	.4byte	gUnk_3002C5E
.L_6270:
	.4byte	0x4000054
.L_6274:
	ldrh	r0, [r2, #0]
	cmp	r0, #1
	beq	.L_627e
	cmp	r0, #8
	bne	.L_631e
.L_627e:
	mov	r0, #149	@ 0x95
	lsl	r0, r0, #1
	bl	m4aSongNumStartOrChange
	mov	r0, #3
	bl	VoiceSetPlay
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_6294
	b	.L_6318
.L_6294:
	.4byte	gUnk_3002C60
.L_6298:
	ldr	r2, .L_62ac
	ldr	r0, [r2, #0]
	add	r1, r0, #0
	add	r0, #1
	str	r0, [r2, #0]
	cmp	r1, #15
	bhi	.L_62b4
	ldr	r1, .L_62b0
	b	.L_6318
	.align	2, 0
.L_62ac:
	.4byte	gUnk_3002C64
.L_62b0:
	.4byte	gUnk_3002C9A
.L_62b4:
	ldr	r1, .L_62d0
	ldr	r0, .L_62d4
	ldrh	r0, [r0, #0]
	add	r0, #40	@ 0x28
	strh	r0, [r1, #0]
	ldr	r1, .L_62d8
	ldr	r0, .L_62dc
	ldrh	r0, [r0, #0]
	sub	r0, #14
	strh	r0, [r1, #0]
	mov	r0, #0
	str	r0, [r2, #0]
	ldr	r1, .L_62e0
	b	.L_6318
.L_62d0:
	.4byte	gUnk_3002C9E
.L_62d4:
	.4byte	gUnk_3002C9A
.L_62d8:
	.4byte	gUnk_3002CA0
.L_62dc:
	.4byte	gUnk_3002C9C
.L_62e0:
	.4byte	gUnk_3002C60
.L_62e4:
	ldr	r0, .L_6304
	ldrh	r1, [r0, #0]
	sub	r1, #4
	strh	r1, [r0, #0]
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, #100	@ 0x64
	neg	r0, r0
	cmp	r1, r0
	bge	.L_631e
	mov	r0, #63	@ 0x3f
	bl	func_800B7BC
	ldr	r1, .L_6308
	b	.L_6318
	.align	2, 0
.L_6304:
	.4byte	gUnk_3002C9A
.L_6308:
	.4byte	gUnk_3002C60
.L_630c:
	mov	r0, #0
	bl	func_800B84C
	cmp	r0, #0
	beq	.L_631e
	ldr	r1, .L_63a4
.L_6318:
	ldrh	r0, [r1, #0]
	add	r0, #1
.L_631c:
	strh	r0, [r1, #0]
.L_631e:
	ldr	r5, .L_63a8
	ldr	r4, .L_63ac
	ldrh	r0, [r4, #0]
	cmp	r0, #9
	bne	.L_635e
	ldr	r2, .L_63b0
	ldr	r1, [r2, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r2, #0]
	add	r1, sp, #4
	bl	func_800C098
	cmp	r0, #0
	beq	.L_6342
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
.L_6342:
	ldr	r0, [sp, #4]
	ldr	r4, .L_63b4
	mov	r1, #0
	ldrsh	r2, [r4, r1]
	ldr	r1, .L_63b8
	mov	r7, #0
	ldrsh	r3, [r1, r7]
	add	r1, r5, #0
	bl	func_800B5E4
	add	r5, r0, #0
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
.L_635e:
	ldr	r4, .L_63ac
	ldrh	r1, [r4, #0]
	add	r0, r5, #0
	add	r2, r6, #0
	bl	func_8006478
	add	r5, r0, #0
	ldrh	r0, [r4, #0]
	cmp	r0, #4
	bls	.L_638a
	add	r0, sp, #4
	bl	func_800C140
	ldr	r0, [sp, #4]
	ldr	r1, .L_63bc
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	add	r1, r5, #0
	mov	r3, #76	@ 0x4c
	bl	func_800B5E4
	add	r5, r0, #0
.L_638a:
	ldrh	r0, [r4, #0]
	cmp	r0, #7
	bne	.L_63da
	ldr	r0, .L_63c0
	mov	r7, #0
	ldrsh	r0, [r0, r7]
	cmp	r0, #0
	beq	.L_63c4
	add	r1, sp, #4
	add	r0, r6, #0
	bl	func_800C1AC
	b	.L_63cc
.L_63a4:
	.4byte	gSubGameMode
.L_63a8:
	.4byte	gOamBuffer
.L_63ac:
	.4byte	gUnk_3002C60
.L_63b0:
	.4byte	gUnk_3002C64
.L_63b4:
	.4byte	gUnk_3002C9E
.L_63b8:
	.4byte	gUnk_3002CA0
.L_63bc:
	.4byte	gUnk_3002C98
.L_63c0:
	.4byte	gUnk_3002CA2
.L_63c4:
	add	r1, sp, #4
	add	r0, r6, #0
	bl	func_800BF30
.L_63cc:
	ldr	r0, [sp, #4]
	add	r1, r5, #0
	mov	r2, #74	@ 0x4a
	mov	r3, #76	@ 0x4c
	bl	func_800B5E4
	add	r5, r0, #0
.L_63da:
	ldr	r0, .L_63f8
	ldrh	r0, [r0, #0]
	cmp	r0, #7
	bls	.L_6416
	ldr	r0, .L_63fc
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	beq	.L_6400
	add	r1, sp, #4
	add	r0, r6, #0
	bl	func_800C1E8
	b	.L_6408
	.align	2, 0
.L_63f8:
	.4byte	gUnk_3002C60
.L_63fc:
	.4byte	gUnk_3002CA2
.L_6400:
	add	r1, sp, #4
	add	r0, r6, #0
	bl	func_800BF6C
.L_6408:
	ldr	r0, [sp, #4]
	add	r1, r5, #0
	mov	r2, #74	@ 0x4a
	mov	r3, #76	@ 0x4c
	bl	func_800B5E4
	add	r5, r0, #0
.L_6416:
	add	r0, r5, #0
	bl	func_800B684
	ldr	r1, .L_6460
	lsl	r0, r6, #2
	neg	r0, r0
	strh	r0, [r1, #0]
	add	r1, #4
	asr	r0, r6, #3
	neg	r0, r0
	strh	r0, [r1, #0]
	add	r1, #4
	asr	r0, r6, #4
	neg	r0, r0
	strh	r0, [r1, #0]
	ldr	r0, .L_6464
	ldrh	r0, [r0, #0]
	cmp	r0, #5
	bhi	.L_6458
	ldr	r0, .L_6468
	ldrh	r1, [r0, #0]
	mov	r0, #9
	and	r0, r1
	cmp	r0, #0
	beq	.L_6458
	ldr	r2, .L_646c
	ldrh	r1, [r2, #0]
	ldr	r0, .L_6470
	and	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_6474
	mov	r0, #46	@ 0x2e
	strh	r0, [r1, #0]
.L_6458:
	add	sp, #8
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_6460:
	.4byte	0x4000014
.L_6464:
	.4byte	gUnk_3002C60
.L_6468:
	.4byte	gButtonsPressed
.L_646c:
	.4byte	0x4000200
.L_6470:
	.4byte	0xFFFB
.L_6474:
	.4byte	gSubGameMode


thumb_func_start func_8006478
func_8006478:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	add	r6, r0, #0
	add	r4, r1, #0
	mov	r8, r2
	mov	r7, #0
	str	r7, [sp, #0]
	ldr	r0, .L_6668
	mov	r1, #0
	ldrsh	r5, [r0, r1]
	ldr	r0, .L_666c
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	mov	r9, r2
	cmp	r4, #2
	bne	.L_64d6
	mov	r0, r8
	mov	r1, sp
	bl	func_800C020
	ldr	r0, [sp, #0]
	add	r2, r5, #0
	sub	r2, #84	@ 0x54
	add	r1, r6, #0
	mov	r3, r9
	bl	func_800B5E4
	add	r6, r0, #0
	mov	r0, r8
	mov	r1, sp
	bl	func_800C05C
	ldr	r0, [sp, #0]
	add	r2, r5, #0
	sub	r2, #38	@ 0x26
	mov	r3, r9
	sub	r3, #26
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	ldr	r0, .L_6670
	strh	r7, [r0, #0]
.L_64d6:
	cmp	r4, #6
	ble	.L_64ee
	mov	r0, sp
	bl	func_800C134
	ldr	r0, [sp, #0]
	add	r1, r6, #0
	mov	r2, #96	@ 0x60
	mov	r3, #155	@ 0x9b
	bl	func_800B5E4
	add	r6, r0, #0
.L_64ee:
	cmp	r4, #2
	ble	.L_65d2
	mov	r0, r8
	lsl	r7, r0, #3
	mov	r1, #250	@ 0xfa
	lsl	r1, r1, #1
	add	r5, r7, r1
	ldr	r2, .L_6674
	mov	sl, r2
	and	r5, r2
	mov	r4, #200	@ 0xc8
	lsl	r4, r4, #1
	cmp	r5, r4
	ble	.L_650c
	add	r5, r4, #0
.L_650c:
	mov	r0, sp
	bl	func_800C158
	ldr	r0, [sp, #0]
	add	r2, r5, #0
	sub	r2, #64	@ 0x40
	add	r1, r6, #0
	mov	r3, #160	@ 0xa0
	bl	func_800B5E4
	add	r6, r0, #0
	mov	r3, #200	@ 0xc8
	lsl	r3, r3, #2
	add	r5, r7, r3
	mov	r0, sl
	and	r5, r0
	cmp	r5, r4
	ble	.L_6532
	add	r5, r4, #0
.L_6532:
	mov	r0, sp
	bl	func_800C164
	ldr	r0, [sp, #0]
	add	r2, r5, #0
	sub	r2, #64	@ 0x40
	add	r1, r6, #0
	mov	r3, #160	@ 0xa0
	bl	func_800B5E4
	add	r6, r0, #0
	ldr	r1, .L_6678
	add	r5, r7, r1
	mov	r2, sl
	and	r5, r2
	cmp	r5, r4
	ble	.L_6556
	add	r5, r4, #0
.L_6556:
	mov	r0, sp
	bl	func_800C170
	ldr	r0, [sp, #0]
	add	r2, r5, #0
	sub	r2, #64	@ 0x40
	add	r1, r6, #0
	mov	r3, #160	@ 0xa0
	bl	func_800B5E4
	add	r6, r0, #0
	mov	r3, #250	@ 0xfa
	lsl	r3, r3, #3
	add	r5, r7, r3
	mov	r0, sl
	and	r5, r0
	cmp	r5, r4
	ble	.L_657c
	add	r5, r4, #0
.L_657c:
	mov	r0, sp
	bl	func_800C17C
	ldr	r0, [sp, #0]
	add	r2, r5, #0
	sub	r2, #64	@ 0x40
	add	r1, r6, #0
	mov	r3, #160	@ 0xa0
	bl	func_800B5E4
	add	r6, r0, #0
	ldr	r3, .L_667c
	ldr	r1, .L_6670
	ldrh	r2, [r1, #0]
	add	r0, r2, #1
	strh	r0, [r1, #0]
	mov	r0, #255	@ 0xff
	and	r0, r2
	lsl	r0, r0, #1
	add	r0, r0, r3
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	mov	r1, #4
	bl	FixedMul
	ldr	r2, .L_6668
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	sub	r5, r1, r0
	mov	r0, r8
	mov	r1, sp
	bl	func_800BEC4
	ldr	r0, [sp, #0]
	add	r2, r5, #0
	add	r2, #64	@ 0x40
	add	r1, r6, #0
	mov	r3, r9
	bl	func_800B5E4
	add	r6, r0, #0
.L_65d2:
	mov	r0, r8
	mov	r1, sp
	bl	func_800BFF0
	ldr	r0, [sp, #0]
	add	r1, r6, #0
	add	r2, r5, #0
	mov	r3, r9
	bl	func_800B5E4
	add	r6, r0, #0
	mov	r0, r8
	mov	r1, sp
	bl	func_800BE94
	ldr	r0, [sp, #0]
	add	r1, r6, #0
	add	r2, r5, #0
	mov	r3, r9
	bl	func_800B5E4
	add	r6, r0, #0
	mov	r0, sp
	bl	func_800C14C
	ldr	r0, [sp, #0]
	add	r2, r5, #0
	sub	r2, #19
	mov	r4, r9
	sub	r4, #11
	add	r1, r6, #0
	add	r3, r4, #0
	bl	func_800B5E4
	add	r6, r0, #0
	ldr	r0, [sp, #0]
	add	r2, r5, #0
	add	r2, #36	@ 0x24
	add	r1, r6, #0
	add	r3, r4, #0
	bl	func_800B5E4
	add	r6, r0, #0
	mov	r0, r8
	mov	r1, sp
	bl	func_800BE64
	ldr	r0, [sp, #0]
	add	r1, r6, #0
	add	r2, r5, #0
	mov	r3, r9
	bl	func_800B5E4
	add	r6, r0, #0
	mov	r0, r8
	lsl	r1, r0, #4
	neg	r1, r1
	mov	r0, #255	@ 0xff
	and	r1, r0
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #1
	mov	r0, #0
	add	r2, r3, #0
	bl	func_800B4C0
	add	r0, r6, #0
	add	sp, #4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_6668:
	.4byte	gUnk_3002C9A
.L_666c:
	.4byte	gUnk_3002C9C
.L_6670:
	.4byte	gUnk_3002C2C
.L_6674:
	.4byte	0x7FF
.L_6678:
	.4byte	0x514
.L_667c:
	.4byte	sSinCosTable


thumb_func_start func_8006680
func_8006680:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r4, .L_675c
	ldr	r0, .L_6760
	str	r0, [r4, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r4, #4]
	ldr	r0, .L_6764
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_6768
	str	r0, [r4, #0]
	ldr	r0, .L_676c
	str	r0, [r4, #4]
	ldr	r0, .L_6770
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	mov	r0, #1
	neg	r0, r0
	str	r0, [sp, #0]
	mov	r0, sp
	str	r0, [r4, #0]
	ldr	r0, .L_6774
	str	r0, [r4, #4]
	ldr	r0, .L_6778
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_677c
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r0, .L_6780
	ldr	r1, .L_6784
	bl	LZ77UnCompVram
	ldr	r3, .L_6788
	ldr	r5, .L_678c
	ldr	r2, .L_6790
	mov	r1, #17
.L_66d2:
	str	r5, [r4, #0]
	str	r3, [r4, #4]
	str	r2, [r4, #8]
	ldr	r0, [r4, #8]
	sub	r1, #1
	add	r3, #64	@ 0x40
	cmp	r1, #0
	bge	.L_66d2
	ldr	r0, .L_6794
	ldr	r1, .L_6798
	bl	func_800B734
	ldr	r0, .L_679c
	ldr	r1, .L_67a0
	bl	func_800B734
	ldr	r0, .L_67a4
	ldr	r4, .L_67a8
	add	r1, r4, #0
	bl	func_800B734
	add	r3, r4, #0
	ldr	r1, .L_675c
	str	r3, [r1, #0]
	mov	r0, #232	@ 0xe8
	lsl	r0, r0, #3
	add	r0, r3, r0
	str	r0, [r1, #4]
	ldr	r2, .L_67ac
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	str	r3, [r1, #0]
	mov	r0, #240	@ 0xf0
	lsl	r0, r0, #3
	add	r0, r3, r0
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	str	r3, [r1, #0]
	mov	r0, #248	@ 0xf8
	lsl	r0, r0, #3
	add	r0, r3, r0
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [r1, #8]
	sub	r1, #204	@ 0xcc
	ldr	r2, .L_67b0
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	add	r2, #255	@ 0xff
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_67b4
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_67b8
	add	r0, r2, #0
	strh	r0, [r1, #0]
	sub	r1, #14
	mov	r0, #0
	strh	r0, [r1, #0]
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_675c:
	.4byte	0x40000D4
.L_6760:
	.4byte	sUnk_829B240
.L_6764:
	.4byte	0x80000040
.L_6768:
	.4byte	sUnk_829D46E
.L_676c:
	.4byte	0x5000200
.L_6770:
	.4byte	0x80000030
.L_6774:
	.4byte	0x6007F80
.L_6778:
	.4byte	0x85000008
.L_677c:
	.4byte	sUnk_829B2C0
.L_6780:
	.4byte	sUnk_829D4D0
.L_6784:
	.4byte	0x6010000
.L_6788:
	.4byte	0x6008000
.L_678c:
	.4byte	sUnk_829D194
.L_6790:
	.4byte	0x80000020
.L_6794:
	.4byte	sUnk_829D1D4
.L_6798:
	.4byte	0x6008800
.L_679c:
	.4byte	sUnk_829D212
.L_67a0:
	.4byte	0x6009000
.L_67a4:
	.4byte	sUnk_829D270
.L_67a8:
	.4byte	0x6009800
.L_67ac:
	.4byte	0x8000001E
.L_67b0:
	.4byte	0x1001
.L_67b4:
	.4byte	0x1202
.L_67b8:
	.4byte	0x1303


thumb_func_start func_80067BC
func_80067BC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	mov	r8, r0
	ldr	r0, .L_67e4
	mov	r9, r0
	ldr	r0, .L_67e8
	ldrh	r0, [r0, #0]
	cmp	r0, #7
	bls	.L_67d8
	b	.L_6d42
.L_67d8:
	lsl	r0, r0, #2
	ldr	r1, .L_67ec
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_67e4:
	.4byte	gOamBuffer
.L_67e8:
	.4byte	gUnk_3002C60
.L_67ec:
	.4byte	.L_67f0
.L_67f0:
	.4byte	.L_6810
	.4byte	.L_690c
	.4byte	.L_696c
	.4byte	.L_6ad4
	.4byte	.L_6ba8
	.4byte	.L_6bfc
	.4byte	.L_6c48
	.4byte	.L_6d30
.L_6810:
	ldr	r1, .L_68bc
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_68c0
	mov	r2, #160	@ 0xa0
	lsl	r2, r2, #1
	add	r1, r2, #0
	strh	r1, [r0, #0]
	ldr	r2, .L_68c4
	strh	r1, [r2, #0]
	ldr	r0, .L_68c8
	mov	r1, #120	@ 0x78
	strh	r1, [r0, #0]
	ldr	r5, .L_68cc
	mov	r0, #180	@ 0xb4
	strh	r0, [r5, #0]
	ldr	r0, .L_68d0
	strh	r1, [r0, #0]
	ldr	r4, .L_68d4
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	mov	r0, #16
	bl	FixedMul
	ldrh	r5, [r5, #0]
	add	r0, r0, r5
	strh	r0, [r4, #0]
	mov	r4, #3
	ldr	r0, .L_68d8
	mov	r6, #18
	add	r5, r0, #6
.L_684e:
	ldr	r0, .L_68c4
	mov	r7, #0
	ldrsh	r1, [r0, r7]
	mov	r0, #16
	bl	FixedMul
	lsl	r2, r4, #1
	ldr	r1, .L_68cc
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	add	r0, r0, r6
	strh	r0, [r5, #0]
	ldr	r0, .L_68dc
	add	r2, r2, r0
	ldr	r0, .L_68c8
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	sub	r6, #6
	sub	r5, #2
	sub	r4, #1
	cmp	r4, #0
	bge	.L_684e
	ldr	r1, .L_68e0
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_68e4
	mov	r2, #24
	neg	r2, r2
	add	r1, r2, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_68e8
	strh	r1, [r0, #0]
	add	r0, #4
	strh	r1, [r0, #0]
	ldr	r0, .L_68ec
	mov	r2, #120	@ 0x78
	strh	r2, [r0, #0]
	ldr	r0, .L_68f0
	mov	r1, #64	@ 0x40
	strh	r1, [r0, #0]
	ldr	r0, .L_68f4
	strh	r2, [r0, #0]
	ldr	r0, .L_68f8
	strh	r1, [r0, #0]
	ldr	r0, .L_68fc
	ldr	r1, .L_6900
	mov	r2, #200	@ 0xc8
	bl	m4aMPlayVolumeControl
	ldr	r1, .L_6904
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_6908
	b	.L_6d3c
	.align	2, 0
.L_68bc:
	.4byte	gUnk_3002C4E
.L_68c0:
	.4byte	gUnk_3002C50
.L_68c4:
	.4byte	gUnk_3002C52
.L_68c8:
	.4byte	gUnk_3002C4A
.L_68cc:
	.4byte	gUnk_3002C4C
.L_68d0:
	.4byte	gUnk_3002CA4
.L_68d4:
	.4byte	gUnk_3002CA6
.L_68d8:
	.4byte	gUnk_3002CB8
.L_68dc:
	.4byte	gUnk_3002CA8
.L_68e0:
	.4byte	gUnk_3002C98
.L_68e4:
	.4byte	gUnk_3002C9A
.L_68e8:
	.4byte	0x400001A
.L_68ec:
	.4byte	gUnk_3002C9C
.L_68f0:
	.4byte	gUnk_3002C9E
.L_68f4:
	.4byte	gUnk_3002CA0
.L_68f8:
	.4byte	gUnk_3002CA2
.L_68fc:
	.4byte	gMPlayInfo_2
.L_6900:
	.4byte	0xFFFF
.L_6904:
	.4byte	gUnk_3002C64
.L_6908:
	.4byte	gUnk_3002C60
.L_690c:
	ldr	r0, .L_6924
	ldr	r2, [r0, #0]
	add	r3, r0, #0
	cmp	r2, #0
	beq	.L_692c
	cmp	r2, #125	@ 0x7d
	bne	.L_6954
	mov	r0, #0
	str	r0, [r3, #0]
	ldr	r1, .L_6928
	b	.L_6d3c
	.align	2, 0
.L_6924:
	.4byte	gUnk_3002C64
.L_6928:
	.4byte	gUnk_3002C60
.L_692c:
	ldr	r1, .L_695c
	mov	r0, #17
	strh	r0, [r1, #0]
	ldr	r0, .L_6960
	strh	r2, [r0, #0]
	ldr	r1, .L_6964
	mov	r0, #16
	strh	r0, [r1, #0]
	sub	r1, #2
	ldr	r4, .L_6968
	add	r0, r4, #0
	strh	r0, [r1, #0]
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #19
	ldrh	r0, [r2, #0]
	mov	r6, #248	@ 0xf8
	lsl	r6, r6, #5
	add	r1, r6, #0
	orr	r0, r1
	strh	r0, [r2, #0]
.L_6954:
	ldr	r0, [r3, #0]
	add	r0, #1
	str	r0, [r3, #0]
	b	.L_6d42
.L_695c:
	.4byte	gUnk_3002C5A
.L_6960:
	.4byte	gUnk_3002C5C
.L_6964:
	.4byte	0x4000052
.L_6968:
	.4byte	0xC41
.L_696c:
	ldr	r1, .L_6a98
	ldrh	r2, [r1, #0]
	mov	r7, #0
	ldrsh	r0, [r1, r7]
	cmp	r0, #64	@ 0x40
	ble	.L_699c
	mov	r0, #3
	mov	r3, r8
	and	r0, r3
	cmp	r0, #3
	bne	.L_699c
	sub	r0, r2, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_6a9c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r2, .L_6aa0
	ldr	r1, [r2, #0]
	lsr	r0, r1, #3
	add	r1, #1
	str	r1, [r2, #0]
	bl	func_800C400
.L_699c:
	ldr	r1, .L_6aa4
	ldrh	r2, [r1, #0]
	mov	r4, #0
	ldrsh	r0, [r1, r4]
	cmp	r0, #71	@ 0x47
	bgt	.L_69ca
	mov	r0, #31
	mov	r6, r8
	and	r0, r6
	cmp	r0, #31
	bne	.L_69ca
	add	r0, r2, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_6aa8
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r2, .L_6aac
	ldr	r1, .L_6ab0
	ldrh	r0, [r1, #0]
	sub	r0, #1
	strh	r0, [r1, #0]
	strh	r0, [r2, #0]
.L_69ca:
	ldr	r1, .L_6ab4
	ldrh	r2, [r1, #0]
	mov	r7, #0
	ldrsh	r0, [r1, r7]
	cmp	r0, #116	@ 0x74
	ble	.L_69f4
	mov	r0, #3
	mov	r3, r8
	and	r0, r3
	cmp	r0, #3
	bne	.L_69f4
	sub	r0, r2, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_6ab8
	ldrh	r0, [r1, #0]
	sub	r0, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_6abc
	ldrh	r0, [r1, #0]
	sub	r0, #1
	strh	r0, [r1, #0]
.L_69f4:
	mov	r4, #3
	ldr	r0, .L_6ac0
	add	r6, r0, #6
	mov	r5, r8
	add	r5, #18
	mov	r7, #18
	mov	sl, r7
.L_6a02:
	add	r0, r5, #0
	mov	r1, sp
	bl	func_800C3B8
	cmp	r0, #0
	beq	.L_6a24
	ldr	r0, .L_6abc
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r0, #16
	bl	FixedMul
	ldr	r1, .L_6ab4
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	add	r0, sl
	strh	r0, [r6, #0]
.L_6a24:
	mov	r0, #1
	and	r0, r4
	ldr	r3, .L_6ac4
	cmp	r0, #0
	beq	.L_6a30
	mov	r3, #4
.L_6a30:
	ldr	r0, [sp, #0]
	ldr	r1, .L_6ac8
	mov	r7, #0
	ldrsh	r2, [r1, r7]
	add	r1, r4, #0
	mul	r1, r3
	add	r2, r2, r1
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	sub	r6, #2
	sub	r5, #6
	mov	r2, #6
	neg	r2, r2
	add	sl, r2
	sub	r4, #1
	cmp	r4, #0
	bge	.L_6a02
	mov	r0, r8
	mov	r1, sp
	bl	func_800C358
	ldr	r0, [sp, #0]
	ldr	r1, .L_6acc
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r4, .L_6ab4
	mov	r6, #0
	ldrsh	r3, [r4, r6]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, .L_6ab8
	ldrh	r1, [r0, #0]
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #1
	cmp	r1, r0
	beq	.L_6a86
	b	.L_6d42
.L_6a86:
	ldrh	r0, [r4, #0]
	add	r0, #18
	strh	r0, [r4, #0]
	ldr	r1, .L_6aa0
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_6ad0
	b	.L_6d3c
	.align	2, 0
.L_6a98:
	.4byte	gUnk_3002C9C
.L_6a9c:
	.4byte	gUnk_3002CA0
.L_6aa0:
	.4byte	gUnk_3002C64
.L_6aa4:
	.4byte	gUnk_3002C9E
.L_6aa8:
	.4byte	gUnk_3002CA2
.L_6aac:
	.4byte	0x4000016
.L_6ab0:
	.4byte	gUnk_3002C98
.L_6ab4:
	.4byte	gUnk_3002C4C
.L_6ab8:
	.4byte	gUnk_3002C50
.L_6abc:
	.4byte	gUnk_3002C52
.L_6ac0:
	.4byte	gUnk_3002CB8
.L_6ac4:
	.4byte	0xFFFC
.L_6ac8:
	.4byte	gUnk_3002CA4
.L_6acc:
	.4byte	gUnk_3002C4A
.L_6ad0:
	.4byte	gUnk_3002C60
.L_6ad4:
	mov	r0, r8
	mov	r1, sp
	bl	func_800C318
	ldr	r0, [sp, #0]
	ldr	r1, .L_6b6c
	mov	r7, #0
	ldrsh	r2, [r1, r7]
	ldr	r4, .L_6b70
	mov	r1, #0
	ldrsh	r3, [r4, r1]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, .L_6b74
	ldr	r1, [r0, #0]
	add	r0, r1, #0
	sub	r0, #32
	cmp	r0, #63	@ 0x3f
	bhi	.L_6b38
	mov	r0, #7
	and	r1, r0
	cmp	r1, #7
	bne	.L_6b38
	ldr	r2, .L_6b78
	ldr	r1, .L_6b7c
	ldrh	r0, [r1, #0]
	sub	r0, #1
	strh	r0, [r1, #0]
	strh	r0, [r2, #0]
	add	r2, #4
	ldr	r1, .L_6b80
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	strh	r0, [r2, #0]
	ldr	r1, .L_6b84
	strh	r0, [r1, #0]
	ldr	r1, .L_6b88
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_6b8c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
.L_6b38:
	ldr	r1, .L_6b74
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	ldr	r4, .L_6b90
	ldrh	r3, [r4, #0]
	add	r0, r3, #0
	cmp	r0, #0
	beq	.L_6b9c
	mov	r0, #7
	mov	r2, r8
	and	r0, r2
	cmp	r0, #7
	beq	.L_6b56
	b	.L_6d42
.L_6b56:
	ldr	r2, .L_6b94
	ldr	r0, .L_6b98
	ldrh	r1, [r0, #0]
	add	r1, #1
	strh	r1, [r0, #0]
	lsl	r1, r1, #8
	sub	r0, r3, #1
	strh	r0, [r4, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	b	.L_6d42
.L_6b6c:
	.4byte	gUnk_3002C4A
.L_6b70:
	.4byte	gUnk_3002C4C
.L_6b74:
	.4byte	gUnk_3002C64
.L_6b78:
	.4byte	0x4000016
.L_6b7c:
	.4byte	gUnk_3002C98
.L_6b80:
	.4byte	gUnk_3002C9A
.L_6b84:
	.4byte	0x400001E
.L_6b88:
	.4byte	gUnk_3002C9E
.L_6b8c:
	.4byte	gUnk_3002CA2
.L_6b90:
	.4byte	gUnk_3002C5A
.L_6b94:
	.4byte	0x4000052
.L_6b98:
	.4byte	gUnk_3002C5C
.L_6b9c:
	str	r0, [r1, #0]
	ldr	r1, .L_6ba4
	b	.L_6d3c
	.align	2, 0
.L_6ba4:
	.4byte	gUnk_3002C60
.L_6ba8:
	ldr	r5, .L_6bec
	ldr	r1, [r5, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r5, #0]
	mov	r1, sp
	bl	func_800C264
	add	r4, r0, #0
	ldr	r0, [sp, #0]
	ldr	r1, .L_6bf0
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r1, .L_6bf4
	mov	r6, #0
	ldrsh	r3, [r1, r6]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [r5, #0]
	cmp	r0, #32
	bne	.L_6bdc
	mov	r0, #1
	bl	VoiceSetPlay
.L_6bdc:
	cmp	r4, #0
	bne	.L_6be2
	b	.L_6d42
.L_6be2:
	mov	r0, #20
	str	r0, [r5, #0]
	ldr	r1, .L_6bf8
	b	.L_6d3c
	.align	2, 0
.L_6bec:
	.4byte	gUnk_3002C64
.L_6bf0:
	.4byte	gUnk_3002C4A
.L_6bf4:
	.4byte	gUnk_3002C4C
.L_6bf8:
	.4byte	gUnk_3002C60
.L_6bfc:
	ldr	r5, .L_6c38
	ldr	r0, [r5, #0]
	mov	r1, sp
	bl	func_800C318
	ldr	r0, [sp, #0]
	ldr	r1, .L_6c3c
	mov	r7, #0
	ldrsh	r2, [r1, r7]
	ldr	r4, .L_6c40
	mov	r1, #0
	ldrsh	r3, [r4, r1]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [r5, #0]
	add	r0, #1
	str	r0, [r5, #0]
	cmp	r0, #111	@ 0x6f
	beq	.L_6c28
	b	.L_6d42
.L_6c28:
	ldrh	r0, [r4, #0]
	sub	r0, #18
	strh	r0, [r4, #0]
	mov	r0, #0
	str	r0, [r5, #0]
	ldr	r1, .L_6c44
	b	.L_6d3c
	.align	2, 0
.L_6c38:
	.4byte	gUnk_3002C64
.L_6c3c:
	.4byte	gUnk_3002C4A
.L_6c40:
	.4byte	gUnk_3002C4C
.L_6c44:
	.4byte	gUnk_3002C60
.L_6c48:
	mov	r0, #3
	mov	r2, r8
	and	r0, r2
	cmp	r0, #3
	bne	.L_6ca0
	ldr	r1, .L_6c74
	ldrh	r2, [r1, #0]
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	cmp	r0, #159	@ 0x9f
	bgt	.L_6c80
	add	r0, r2, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_6c78
	ldrh	r0, [r1, #0]
	sub	r0, #4
	strh	r0, [r1, #0]
	ldr	r1, .L_6c7c
	ldrh	r0, [r1, #0]
	sub	r0, #4
	b	.L_6c9e
	.align	2, 0
.L_6c74:
	.4byte	gUnk_3002C4C
.L_6c78:
	.4byte	gUnk_3002C50
.L_6c7c:
	.4byte	gUnk_3002C52
.L_6c80:
	mov	r0, #62	@ 0x3e
	bl	func_800B804
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r4, #240	@ 0xf0
	lsl	r4, r4, #5
	add	r0, r4, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_6d14
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_6d18
	ldrh	r0, [r1, #0]
	add	r0, #1
.L_6c9e:
	strh	r0, [r1, #0]
.L_6ca0:
	mov	r0, r8
	mov	r1, sp
	bl	func_800C3B8
	cmp	r0, #0
	beq	.L_6cc2
	ldr	r4, .L_6d1c
	ldr	r0, .L_6d20
	mov	r6, #0
	ldrsh	r1, [r0, r6]
	mov	r0, #16
	bl	FixedMul
	ldr	r1, .L_6d24
	ldrh	r1, [r1, #0]
	add	r0, r0, r1
	strh	r0, [r4, #0]
.L_6cc2:
	mov	r5, r9
	add	r5, #4
	ldr	r0, [sp, #0]
	ldr	r1, .L_6d28
	mov	r7, #0
	ldrsh	r2, [r1, r7]
	ldr	r1, .L_6d1c
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldrh	r0, [r5, #0]
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #3
	add	r4, r6, #0
	orr	r0, r4
	strh	r0, [r5, #0]
	mov	r0, r8
	mov	r1, sp
	bl	func_800C358
	mov	r5, r9
	add	r5, #4
	ldr	r0, [sp, #0]
	ldr	r1, .L_6d2c
	mov	r7, #0
	ldrsh	r2, [r1, r7]
	ldr	r1, .L_6d24
	mov	r6, #0
	ldrsh	r3, [r1, r6]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldrh	r0, [r5, #0]
	orr	r0, r4
	strh	r0, [r5, #0]
	b	.L_6d42
	.align	2, 0
.L_6d14:
	.4byte	gUnk_3002C64
.L_6d18:
	.4byte	gUnk_3002C60
.L_6d1c:
	.4byte	gUnk_3002CA6
.L_6d20:
	.4byte	gUnk_3002C52
.L_6d24:
	.4byte	gUnk_3002C4C
.L_6d28:
	.4byte	gUnk_3002CA4
.L_6d2c:
	.4byte	gUnk_3002C4A
.L_6d30:
	mov	r0, #7
	bl	func_800B84C
	cmp	r0, #0
	beq	.L_6d42
	ldr	r1, .L_6dcc
.L_6d3c:
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_6d42:
	ldr	r0, .L_6dd0
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_6da2
	ldr	r0, .L_6dd4
	ldr	r6, .L_6dd8
	mov	r7, #0
	ldrsh	r2, [r6, r7]
	ldr	r1, .L_6ddc
	mov	r8, r1
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, .L_6de0
	ldr	r4, .L_6de4
	mov	r7, #0
	ldrsh	r2, [r4, r7]
	ldr	r5, .L_6de8
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, .L_6dec
	mov	r3, #0
	ldrsh	r2, [r6, r3]
	add	r2, #16
	mov	r6, r8
	mov	r7, #0
	ldrsh	r3, [r6, r7]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, .L_6df0
	mov	r1, #0
	ldrsh	r2, [r4, r1]
	sub	r2, #16
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
.L_6da2:
	ldr	r0, .L_6df4
	ldrh	r1, [r0, #0]
	ldr	r0, .L_6df8
	ldrh	r2, [r0, #0]
	ldr	r0, .L_6dfc
	ldrh	r3, [r0, #0]
	mov	r0, #0
	bl	func_800B4C0
	mov	r0, r9
	bl	func_800B684
	add	sp, #4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_6dcc:
	.4byte	gSubGameMode
.L_6dd0:
	.4byte	gUnk_3002C60
.L_6dd4:
	.4byte	sUnk_829F95E
.L_6dd8:
	.4byte	gUnk_3002C9C
.L_6ddc:
	.4byte	gUnk_3002C9E
.L_6de0:
	.4byte	sUnk_829F9B4
.L_6de4:
	.4byte	gUnk_3002CA0
.L_6de8:
	.4byte	gUnk_3002CA2
.L_6dec:
	.4byte	sUnk_829FA0A
.L_6df0:
	.4byte	sUnk_829FA48
.L_6df4:
	.4byte	gUnk_3002C4E
.L_6df8:
	.4byte	gUnk_3002C50
.L_6dfc:
	.4byte	gUnk_3002C52


thumb_func_start func_8006E00
func_8006E00:
	push	{r4, r5, r6, lr}
	sub	sp, #4
	ldr	r4, .L_6f0c
	ldr	r0, .L_6f10
	str	r0, [r4, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r4, #4]
	ldr	r0, .L_6f14
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_6f18
	str	r0, [r4, #0]
	ldr	r0, .L_6f1c
	str	r0, [r4, #4]
	ldr	r0, .L_6f20
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_6f24
	str	r0, [r4, #0]
	ldr	r0, .L_6f28
	str	r0, [r4, #4]
	ldr	r0, .L_6f2c
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_6f30
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r0, .L_6f34
	ldr	r1, .L_6f38
	bl	LZ77UnCompVram
	ldr	r0, .L_6f3c
	ldr	r1, .L_6f40
	bl	LZ77UnCompVram
	ldr	r0, .L_6f44
	ldr	r1, .L_6f48
	bl	LZ77UnCompVram
	mov	r0, sp
	ldr	r1, .L_6f4c
	add	r6, r1, #0
	strh	r6, [r0, #0]
	str	r0, [r4, #0]
	ldr	r1, .L_6f50
	str	r1, [r4, #4]
	ldr	r5, .L_6f54
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_6f58
	bl	func_800B734
	mov	r0, sp
	strh	r6, [r0, #0]
	str	r0, [r4, #0]
	ldr	r1, .L_6f5c
	str	r1, [r4, #4]
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_6f60
	bl	func_800B734
	mov	r1, sp
	ldr	r2, .L_6f64
	add	r0, r2, #0
	strh	r0, [r1, #0]
	str	r1, [r4, #0]
	ldr	r0, .L_6f68
	str	r0, [r4, #4]
	ldr	r0, .L_6f6c
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_6f70
	ldr	r1, .L_6f74
	bl	func_800B734
	bl	func_800C87C
	mov	r0, #0
	mov	r1, #0
	mov	r2, #16
	bl	func_800C704
	ldr	r0, .L_6f78
	mov	r3, #32
	neg	r3, r3
	add	r2, r3, #0
	strh	r2, [r0, #0]
	ldr	r0, .L_6f7c
	mov	r1, #164	@ 0xa4
	strh	r1, [r0, #0]
	ldr	r0, .L_6f80
	strh	r2, [r0, #0]
	ldr	r0, .L_6f84
	strh	r1, [r0, #0]
	ldr	r0, .L_6f88
	mov	r2, #0
	strh	r2, [r0, #0]
	ldr	r1, .L_6f8c
	mov	r3, #160	@ 0xa0
	lsl	r3, r3, #7
	add	r0, r3, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r3, .L_6f90
	add	r0, r3, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r3, .L_6f94
	add	r0, r3, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_6f98
	strh	r2, [r0, #0]
	ldr	r1, .L_6f9c
	mov	r0, #16
	strh	r0, [r1, #0]
	mov	r0, #55	@ 0x37
	bl	func_800B828
	bl	func_800B580
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #184	@ 0xb8
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	sp, #4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_6f0c:
	.4byte	0x40000D4
.L_6f10:
	.4byte	sUnk_829FD48
.L_6f14:
	.4byte	0x80000100
.L_6f18:
	.4byte	sUnk_82A2F12
.L_6f1c:
	.4byte	0x5000380
.L_6f20:
	.4byte	0x80000030
.L_6f24:
	.4byte	sUnk_82A36AC
.L_6f28:
	.4byte	0x5000280
.L_6f2c:
	.4byte	0x80000010
.L_6f30:
	.4byte	sUnk_829FF48
.L_6f34:
	.4byte	sUnk_82A2F74
.L_6f38:
	.4byte	0x6014000
.L_6f3c:
	.4byte	sUnk_82A36CC
.L_6f40:
	.4byte	0x6011280
.L_6f44:
	.4byte	sUnk_82A3710
.L_6f48:
	.4byte	0x6011680
.L_6f4c:
	.4byte	0x3FF
.L_6f50:
	.4byte	0x6008000
.L_6f54:
	.4byte	0x81000260
.L_6f58:
	.4byte	sUnk_82A1CF0
.L_6f5c:
	.4byte	0x6009000
.L_6f60:
	.4byte	sUnk_82A1E7A
.L_6f64:
	.4byte	0x93A0
.L_6f68:
	.4byte	0x600A380
.L_6f6c:
	.4byte	0x810000C0
.L_6f70:
	.4byte	sUnk_82A1FBC
.L_6f74:
	.4byte	0x600A000
.L_6f78:
	.4byte	gUnk_3002C4A
.L_6f7c:
	.4byte	gUnk_3002C4C
.L_6f80:
	.4byte	gUnk_3002C9C
.L_6f84:
	.4byte	gUnk_3002C9E
.L_6f88:
	.4byte	gUnk_3002CA0
.L_6f8c:
	.4byte	0x4000008
.L_6f90:
	.4byte	0x5201
.L_6f94:
	.4byte	0x5402
.L_6f98:
	.4byte	gUnk_3002C46
.L_6f9c:
	.4byte	gUnk_3002C48


thumb_func_start func_8006FA0
func_8006FA0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #12
	add	r6, r0, #0
	mov	r0, #0
	str	r0, [sp, #4]
	mov	r9, r0
	ldr	r0, .L_6fc8
	ldrh	r0, [r0, #0]
	cmp	r0, #14
	bls	.L_6fbc
	b	.L_7506
.L_6fbc:
	lsl	r0, r0, #2
	ldr	r1, .L_6fcc
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_6fc8:
	.4byte	gUnk_3002C60
.L_6fcc:
	.4byte	.L_6fd0
.L_6fd0:
	.4byte	.L_700c
	.4byte	.L_70b8
	.4byte	.L_70ec
	.4byte	.L_7138
	.4byte	.L_71f0
	.4byte	.L_7224
	.4byte	.L_7290
	.4byte	.L_72ec
	.4byte	.L_7328
	.4byte	.L_7368
	.4byte	.L_7388
	.4byte	.L_7404
	.4byte	.L_7474
	.4byte	.L_74a8
	.4byte	.L_74f4
.L_700c:
	mov	r0, #3
	bl	func_800B888
	ldr	r1, .L_7080
	ldrh	r2, [r1, #0]
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	cmp	r0, #15
	bgt	.L_7042
	mov	r0, #3
	and	r0, r6
	cmp	r0, #3
	bne	.L_7042
	ldr	r0, .L_7084
	add	r2, #1
	strh	r2, [r1, #0]
	strh	r2, [r0, #0]
	ldr	r3, .L_7088
	ldr	r0, .L_708c
	ldrh	r1, [r0, #0]
	sub	r1, #1
	strh	r1, [r0, #0]
	strh	r1, [r3, #0]
	ldr	r0, .L_7090
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
.L_7042:
	mov	r0, #7
	and	r0, r6
	cmp	r0, #7
	bne	.L_7056
	ldr	r1, .L_7094
	ldr	r0, .L_7080
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #17
	strh	r0, [r1, #0]
.L_7056:
	ldr	r1, .L_7098
	ldrh	r2, [r1, #0]
	mov	r4, #0
	ldrsh	r0, [r1, r4]
	cmp	r0, #112	@ 0x70
	ble	.L_7066
	sub	r0, r2, #1
	strh	r0, [r1, #0]
.L_7066:
	ldr	r2, .L_709c
	ldrh	r0, [r2, #0]
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	cmp	r1, #119	@ 0x77
	bgt	.L_70a6
	mov	r4, #16
	mov	r9, r4
	cmp	r1, #39	@ 0x27
	bgt	.L_70a0
	add	r0, #1
	strh	r0, [r2, #0]
	b	.L_7506
.L_7080:
	.4byte	gUnk_3002C46
.L_7084:
	.4byte	0x4000010
.L_7088:
	.4byte	0x4000012
.L_708c:
	.4byte	gUnk_3002C48
.L_7090:
	.4byte	0x4000014
.L_7094:
	.4byte	0x4000018
.L_7098:
	.4byte	gUnk_3002C4C
.L_709c:
	.4byte	gUnk_3002C4A
.L_70a0:
	add	r0, #2
	strh	r0, [r2, #0]
	b	.L_7506
.L_70a6:
	ldr	r1, .L_70b0
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_70b4
	b	.L_7500
.L_70b0:
	.4byte	gUnk_3002C64
.L_70b4:
	.4byte	gUnk_3002C60
.L_70b8:
	ldr	r4, .L_70e4
	ldr	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_70d0
	mov	r0, #0
	mov	r1, #51	@ 0x33
	mov	r2, #16
	bl	func_800C704
	mov	r0, #3
	bl	VoiceSetPlay
.L_70d0:
	ldr	r0, [r4, #0]
	add	r0, #1
	str	r0, [r4, #0]
	cmp	r0, #50	@ 0x32
	beq	.L_70dc
	b	.L_7506
.L_70dc:
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_70e8
	b	.L_7500
.L_70e4:
	.4byte	gUnk_3002C64
.L_70e8:
	.4byte	gUnk_3002C60
.L_70ec:
	mov	r0, #16
	mov	r9, r0
	ldr	r1, .L_7108
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	cmp	r0, #1
	bne	.L_710c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #16
	bl	func_800C704
	b	.L_7506
.L_7108:
	.4byte	gUnk_3002C64
.L_710c:
	ldr	r2, .L_7120
	ldrh	r3, [r2, #0]
	mov	r4, #0
	ldrsh	r1, [r2, r4]
	ldr	r0, .L_7124
	cmp	r1, r0
	bgt	.L_7128
	add	r0, r3, #2
	strh	r0, [r2, #0]
	b	.L_7506
.L_7120:
	.4byte	gUnk_3002C4A
.L_7124:
	.4byte	0x10F
.L_7128:
	mov	r0, #55	@ 0x37
	bl	func_800B7BC
	ldr	r1, .L_7134
	b	.L_7500
	.align	2, 0
.L_7134:
	.4byte	gUnk_3002C60
.L_7138:
	mov	r0, #1
	bl	func_800B84C
	cmp	r0, #0
	bne	.L_7144
	b	.L_7506
.L_7144:
	ldr	r0, .L_71b4
	ldr	r1, .L_71b8
	bl	LZ77UnCompVram
	ldr	r0, .L_71bc
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_71c0
	strh	r1, [r0, #0]
	ldr	r0, .L_71c4
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	ldr	r0, .L_71c8
	mov	r1, #32
	neg	r1, r1
	add	r2, r1, #0
	strh	r2, [r0, #0]
	ldr	r0, .L_71cc
	mov	r1, #88	@ 0x58
	strh	r1, [r0, #0]
	ldr	r0, .L_71d0
	strh	r2, [r0, #0]
	ldr	r0, .L_71d4
	strh	r1, [r0, #0]
	ldr	r1, .L_71d8
	mov	r2, #212	@ 0xd4
	lsl	r2, r2, #1
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_71dc
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_71e0
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r0, .L_71e4
	ldr	r1, .L_71e8
	mov	r2, #200	@ 0xc8
	bl	m4aMPlayVolumeControl
	ldr	r0, .L_71ec
	bl	m4aSongNumStartOrChange
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r3, #152	@ 0x98
	lsl	r3, r3, #5
	add	r0, r3, #0
	b	.L_7504
	.align	2, 0
.L_71b4:
	.4byte	sUnk_82A229C
.L_71b8:
	.4byte	0x6008000
.L_71bc:
	.4byte	gUnk_3002C46
.L_71c0:
	.4byte	gUnk_3002C48
.L_71c4:
	.4byte	0x4000010
.L_71c8:
	.4byte	gUnk_3002C4A
.L_71cc:
	.4byte	gUnk_3002C4C
.L_71d0:
	.4byte	gUnk_3002C9C
.L_71d4:
	.4byte	gUnk_3002C9E
.L_71d8:
	.4byte	gUnk_3002C98
.L_71dc:
	.4byte	gUnk_3002C68
.L_71e0:
	.4byte	gUnk_3002C60
.L_71e4:
	.4byte	gMPlayInfo_2
.L_71e8:
	.4byte	0xFFFF
.L_71ec:
	.4byte	0x27E
.L_71f0:
	mov	r0, #1
	bl	func_800B888
	mov	r4, #16
	mov	r9, r4
	ldr	r1, .L_720c
	ldrh	r2, [r1, #0]
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	cmp	r0, #55	@ 0x37
	bgt	.L_7210
	add	r0, r2, #2
	b	.L_7504
	.align	2, 0
.L_720c:
	.4byte	gUnk_3002C4A
.L_7210:
	ldr	r1, .L_721c
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_7220
	b	.L_7500
	.align	2, 0
.L_721c:
	.4byte	gUnk_3002C64
.L_7220:
	.4byte	gUnk_3002C60
.L_7224:
	mov	r4, #16
	mov	r9, r4
	ldr	r4, .L_7270
	ldr	r3, [r4, #0]
	lsr	r5, r3, #1
	ldr	r1, .L_7274
	add	r0, r5, #0
	add	r0, #88	@ 0x58
	strh	r0, [r1, #0]
	ldr	r0, .L_7278
	ldrh	r2, [r0, #0]
	add	r2, #2
	strh	r2, [r0, #0]
	ldr	r0, .L_727c
	strh	r5, [r0, #0]
	ldr	r1, .L_7280
	ldrh	r0, [r1, #0]
	sub	r0, #2
	strh	r0, [r1, #0]
	ldr	r1, .L_7284
	add	r0, r5, #0
	add	r0, #80	@ 0x50
	strh	r0, [r1, #0]
	ldr	r0, .L_7288
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r5, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r5, [r0, #0]
	add	r3, #2
	str	r3, [r4, #0]
	cmp	r3, #112	@ 0x70
	bhi	.L_726c
	b	.L_7506
.L_726c:
	ldr	r1, .L_728c
	b	.L_7500
.L_7270:
	.4byte	gUnk_3002C64
.L_7274:
	.4byte	gUnk_3002C4C
.L_7278:
	.4byte	gUnk_3002C46
.L_727c:
	.4byte	gUnk_3002C48
.L_7280:
	.4byte	gUnk_3002C9C
.L_7284:
	.4byte	gUnk_3002C9E
.L_7288:
	.4byte	0x4000010
.L_728c:
	.4byte	gUnk_3002C60
.L_7290:
	mov	r0, #16
	mov	r9, r0
	ldr	r0, .L_72d8
	ldrh	r1, [r0, #0]
	add	r1, #2
	strh	r1, [r0, #0]
	ldr	r2, .L_72dc
	ldrh	r0, [r2, #0]
	sub	r0, #2
	strh	r0, [r2, #0]
	ldr	r0, .L_72e0
	strh	r1, [r0, #0]
	add	r0, #4
	strh	r1, [r0, #0]
	lsl	r1, r1, #16
	mov	r0, #136	@ 0x88
	lsl	r0, r0, #17
	cmp	r1, r0
	bne	.L_72ce
	mov	r0, #0
	mov	r1, #2
	mov	r2, #16
	bl	func_800C704
	ldr	r1, .L_72e4
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_72e8
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_72ce:
	mov	r0, #0
	add	r1, sp, #4
	bl	func_800C5B0
	b	.L_7506
.L_72d8:
	.4byte	gUnk_3002C46
.L_72dc:
	.4byte	gUnk_3002C9C
.L_72e0:
	.4byte	0x4000010
.L_72e4:
	.4byte	gUnk_3002C64
.L_72e8:
	.4byte	gUnk_3002C60
.L_72ec:
	ldr	r4, .L_731c
	ldr	r1, [r4, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r4, #0]
	add	r1, sp, #4
	bl	func_800C5B0
	cmp	r0, #0
	bne	.L_7302
	b	.L_7506
.L_7302:
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_7320
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
	ldr	r0, .L_7324
	bl	m4aSongNumStartOrChange
	mov	r0, #8
	bl	VoiceSetPlay
	b	.L_7506
.L_731c:
	.4byte	gUnk_3002C64
.L_7320:
	.4byte	gUnk_3002C60
.L_7324:
	.4byte	0x1B7
.L_7328:
	ldr	r2, .L_735c
	ldr	r1, [r2, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r2, #0]
	add	r1, sp, #4
	bl	func_800C568
	ldr	r1, .L_7360
	ldrh	r0, [r1, #0]
	add	r0, #2
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	mov	r1, #150	@ 0x96
	lsl	r1, r1, #18
	cmp	r0, r1
	beq	.L_734c
	b	.L_7506
.L_734c:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #16
	bl	func_800C704
	ldr	r1, .L_7364
	b	.L_7500
	.align	2, 0
.L_735c:
	.4byte	gUnk_3002C64
.L_7360:
	.4byte	gUnk_3002C98
.L_7364:
	.4byte	gUnk_3002C60
.L_7368:
	mov	r1, #16
	mov	r9, r1
	ldr	r1, .L_737c
	ldrh	r2, [r1, #0]
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	cmp	r0, #255	@ 0xff
	bgt	.L_7380
	add	r0, r2, #2
	b	.L_7504
.L_737c:
	.4byte	gUnk_3002C4A
.L_7380:
	ldr	r1, .L_7384
	b	.L_7500
.L_7384:
	.4byte	gUnk_3002C60
.L_7388:
	mov	r0, #1
	bl	func_800B84C
	cmp	r0, #0
	bne	.L_7394
	b	.L_7506
.L_7394:
	ldr	r0, .L_73d8
	ldr	r1, .L_73dc
	bl	LZ77UnCompVram
	ldr	r0, .L_73e0
	ldr	r1, .L_73e4
	bl	LZ77UnCompVram
	ldr	r0, .L_73e8
	mov	r1, #0
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	ldr	r0, .L_73ec
	mov	r4, #32
	neg	r4, r4
	add	r2, r4, #0
	strh	r2, [r0, #0]
	ldr	r0, .L_73f0
	mov	r1, #144	@ 0x90
	strh	r1, [r0, #0]
	ldr	r0, .L_73f4
	strh	r2, [r0, #0]
	ldr	r0, .L_73f8
	strh	r1, [r0, #0]
	ldr	r1, .L_73fc
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_7400
	b	.L_7500
.L_73d8:
	.4byte	sUnk_82A2840
.L_73dc:
	.4byte	0x6008000
.L_73e0:
	.4byte	sUnk_82A2A24
.L_73e4:
	.4byte	0x6009000
.L_73e8:
	.4byte	0x4000010
.L_73ec:
	.4byte	gUnk_3002C4A
.L_73f0:
	.4byte	gUnk_3002C4C
.L_73f4:
	.4byte	gUnk_3002C9C
.L_73f8:
	.4byte	gUnk_3002C9E
.L_73fc:
	.4byte	gUnk_3002C64
.L_7400:
	.4byte	gUnk_3002C60
.L_7404:
	mov	r0, #1
	bl	func_800B888
	ldr	r1, .L_7468
	ldrh	r2, [r1, #0]
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	cmp	r0, #47	@ 0x2f
	bgt	.L_741e
	add	r0, r2, #2
	strh	r0, [r1, #0]
	mov	r4, #16
	mov	r9, r4
.L_741e:
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	cmp	r0, #46	@ 0x2e
	bne	.L_7430
	mov	r0, #0
	mov	r1, #2
	mov	r2, #16
	bl	func_800C704
.L_7430:
	ldr	r4, .L_746c
	ldr	r1, [r4, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r4, #0]
	add	r1, sp, #4
	bl	func_800C470
	cmp	r0, #0
	beq	.L_7456
	mov	r0, #0
	mov	r1, #0
	mov	r2, #16
	bl	func_800C704
	ldr	r1, .L_7470
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_7456:
	ldr	r0, [r4, #0]
	cmp	r0, #217	@ 0xd9
	bne	.L_7506
	mov	r0, #219	@ 0xdb
	lsl	r0, r0, #1
	bl	m4aSongNumStartOrChange
	b	.L_7506
	.align	2, 0
.L_7468:
	.4byte	gUnk_3002C4A
.L_746c:
	.4byte	gUnk_3002C64
.L_7470:
	.4byte	gUnk_3002C60
.L_7474:
	mov	r3, #16
	mov	r9, r3
	ldr	r1, .L_7488
	ldrh	r2, [r1, #0]
	mov	r4, #0
	ldrsh	r0, [r1, r4]
	cmp	r0, #95	@ 0x5f
	bgt	.L_748c
	add	r0, r2, #2
	b	.L_7504
.L_7488:
	.4byte	gUnk_3002C4A
.L_748c:
	mov	r0, #0
	mov	r1, #27
	mov	r2, #16
	bl	func_800C704
	ldr	r0, .L_74a0
	bl	m4aSongNumStartOrChange
	ldr	r1, .L_74a4
	b	.L_7500
.L_74a0:
	.4byte	0x1B5
.L_74a4:
	.4byte	gUnk_3002C60
.L_74a8:
	ldr	r2, .L_74e8
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	mov	r1, #0
	ldrsh	r0, [r2, r1]
	add	r5, r0, #0
	sub	r5, #104	@ 0x68
	ldr	r1, .L_74ec
	add	r0, r5, #0
	mul	r0, r5
	cmp	r0, #0
	bge	.L_74c4
	add	r0, #7
.L_74c4:
	asr	r0, r0, #3
	add	r0, #136	@ 0x88
	strh	r0, [r1, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	cmp	r0, #200	@ 0xc8
	ble	.L_74da
	ldr	r1, .L_74f0
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_74da:
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	cmp	r0, #103	@ 0x67
	bgt	.L_7506
	mov	r4, #16
	mov	r9, r4
	b	.L_7506
.L_74e8:
	.4byte	gUnk_3002C4A
.L_74ec:
	.4byte	gUnk_3002C4C
.L_74f0:
	.4byte	gUnk_3002C60
.L_74f4:
	mov	r0, #1
	bl	func_800B84C
	cmp	r0, #0
	beq	.L_7506
	ldr	r1, .L_759c
.L_7500:
	ldrh	r0, [r1, #0]
	add	r0, #1
.L_7504:
	strh	r0, [r1, #0]
.L_7506:
	ldr	r0, .L_75a0
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	ldr	r1, .L_75a4
	mov	r2, #0
	ldrsh	r1, [r1, r2]
	mov	r2, #0
	str	r2, [sp, #0]
	mov	r2, #1
	mov	r3, r9
	bl	func_800C718
	add	r7, r0, #0
	ldr	r1, .L_75a8
	ldr	r0, [r1, #0]
	cmp	r7, r0
	bls	.L_752a
	str	r7, [r1, #0]
.L_752a:
	ldr	r4, .L_75ac
	ldrh	r0, [r4, #0]
	sub	r0, #6
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #3
	bhi	.L_7552
	ldr	r0, [sp, #4]
	ldr	r1, .L_75b0
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r1, .L_75b4
	mov	r3, #0
	ldrsh	r1, [r1, r3]
	sub	r2, r2, r1
	add	r1, r7, #0
	mov	r3, #144	@ 0x90
	bl	func_800B5E4
	add	r7, r0, #0
.L_7552:
	ldrh	r0, [r4, #0]
	cmp	r0, #11
	bne	.L_7566
	ldr	r0, [sp, #4]
	add	r1, r7, #0
	mov	r2, #152	@ 0x98
	mov	r3, #144	@ 0x90
	bl	func_800B5E4
	add	r7, r0, #0
.L_7566:
	ldrh	r0, [r4, #0]
	cmp	r0, #10
	bls	.L_75c0
	mov	r5, #0
	add	r4, sp, #8
	mov	r8, r4
.L_7572:
	lsl	r4, r5, #1
	add	r0, r6, #0
	mov	r1, r8
	bl	func_800C604
	ldr	r0, [sp, #8]
	ldr	r1, .L_75b8
	add	r1, r4, r1
	ldrh	r2, [r1, #0]
	ldr	r1, .L_75bc
	add	r4, r4, r1
	ldrh	r3, [r4, #0]
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
	add	r6, #6
	add	r5, #1
	cmp	r5, #7
	ble	.L_7572
	b	.L_7652
.L_759c:
	.4byte	gSubGameMode
.L_75a0:
	.4byte	gUnk_3002C4A
.L_75a4:
	.4byte	gUnk_3002C4C
.L_75a8:
	.4byte	gUnk_3002C70
.L_75ac:
	.4byte	gUnk_3002C60
.L_75b0:
	.4byte	gUnk_3002C98
.L_75b4:
	.4byte	gUnk_3002C46
.L_75b8:
	.4byte	sUnk_878E6E0
.L_75bc:
	.4byte	sUnk_878E6F0
.L_75c0:
	cmp	r0, #3
	bls	.L_7614
	mov	r5, #0
	add	r0, sp, #8
	mov	r8, r0
.L_75ca:
	lsl	r4, r5, #1
	add	r0, r6, #0
	mov	r1, r8
	bl	func_800C604
	ldr	r0, [sp, #8]
	ldr	r1, .L_7604
	add	r1, r4, r1
	ldrh	r2, [r1, #0]
	ldr	r1, .L_7608
	mov	r3, #0
	ldrsh	r1, [r1, r3]
	sub	r2, r2, r1
	ldr	r1, .L_760c
	add	r4, r4, r1
	ldrh	r3, [r4, #0]
	ldr	r1, .L_7610
	mov	r4, #0
	ldrsh	r1, [r1, r4]
	sub	r3, r3, r1
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
	add	r6, #6
	add	r5, #1
	cmp	r5, #11
	ble	.L_75ca
	b	.L_7652
.L_7604:
	.4byte	sUnk_878E700
.L_7608:
	.4byte	gUnk_3002C46
.L_760c:
	.4byte	sUnk_878E718
.L_7610:
	.4byte	gUnk_3002C48
.L_7614:
	mov	r5, #0
	add	r0, sp, #8
	mov	r8, r0
.L_761a:
	lsl	r4, r5, #1
	add	r0, r6, #0
	mov	r1, r8
	bl	func_800C604
	ldr	r0, [sp, #8]
	ldr	r1, .L_7698
	add	r1, r4, r1
	ldrh	r2, [r1, #0]
	ldr	r1, .L_769c
	mov	r3, #0
	ldrsh	r1, [r1, r3]
	sub	r2, r2, r1
	ldr	r1, .L_76a0
	add	r4, r4, r1
	ldrh	r3, [r4, #0]
	ldr	r1, .L_76a4
	mov	r4, #0
	ldrsh	r1, [r1, r4]
	sub	r3, r3, r1
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
	add	r6, #6
	add	r5, #1
	cmp	r5, #5
	ble	.L_761a
.L_7652:
	mov	r0, r9
	cmp	r0, #16
	bne	.L_76bc
	ldr	r2, .L_76a8
	ldrh	r0, [r2, #0]
	add	r1, r0, #1
	strh	r1, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	mov	r1, r8
	bl	func_800C658
	cmp	r0, #0
	beq	.L_767e
	ldr	r1, .L_76ac
	ldr	r0, .L_76b0
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
	ldr	r1, .L_76b4
	ldr	r0, .L_76b8
	ldrh	r0, [r0, #0]
	strh	r0, [r1, #0]
.L_767e:
	ldr	r0, [sp, #8]
	ldr	r1, .L_76ac
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r1, .L_76b4
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
	b	.L_76c2
	.align	2, 0
.L_7698:
	.4byte	sUnk_878E730
.L_769c:
	.4byte	gUnk_3002C46
.L_76a0:
	.4byte	sUnk_878E73C
.L_76a4:
	.4byte	gUnk_3002C48
.L_76a8:
	.4byte	gUnk_3002CA0
.L_76ac:
	.4byte	gUnk_3002C9C
.L_76b0:
	.4byte	gUnk_3002C4A
.L_76b4:
	.4byte	gUnk_3002C9E
.L_76b8:
	.4byte	gUnk_3002C4C
.L_76bc:
	ldr	r1, .L_76f4
	mov	r0, #0
	strh	r0, [r1, #0]
.L_76c2:
	add	r0, r7, #0
	bl	func_800B684
	ldr	r0, .L_76f8
	ldrh	r0, [r0, #0]
	sub	r0, #4
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #5
	bhi	.L_77a8
	ldr	r1, .L_76fc
	ldr	r0, [r1, #0]
	add	r2, r0, #1
	str	r2, [r1, #0]
	cmp	r2, #61	@ 0x3d
	bne	.L_7704
	mov	r2, #160	@ 0xa0
	ldr	r7, .L_7700
	mov	r0, #5
	mov	r9, r0
	mov	r1, #3
	mov	r8, r1
	mov	r6, #240	@ 0xf0
	b	.L_7774
	.align	2, 0
.L_76f4:
	.4byte	gUnk_3002CA0
.L_76f8:
	.4byte	gUnk_3002C60
.L_76fc:
	.4byte	gUnk_3002C68
.L_7700:
	.4byte	0xFF6A
.L_7704:
	cmp	r2, #120	@ 0x78
	bne	.L_771c
	mov	r2, #140	@ 0x8c
	ldr	r7, .L_7718
	mov	r3, #10
	mov	r9, r3
	mov	r4, #5
	mov	r8, r4
	mov	r6, #230	@ 0xe6
	b	.L_7774
.L_7718:
	.4byte	0xFF38
.L_771c:
	cmp	r2, #180	@ 0xb4
	bne	.L_7734
	mov	r2, #100	@ 0x64
	ldr	r7, .L_7730
	mov	r0, #20
	mov	r9, r0
	mov	r1, #10
	mov	r8, r1
	mov	r6, #220	@ 0xdc
	b	.L_7774
.L_7730:
	.4byte	0xFED4
.L_7734:
	cmp	r2, #240	@ 0xf0
	bne	.L_774c
	mov	r2, #60	@ 0x3c
	ldr	r7, .L_7748
	mov	r3, #30
	mov	r9, r3
	mov	r4, #20
	mov	r8, r4
	mov	r6, #210	@ 0xd2
	b	.L_7774
.L_7748:
	.4byte	0xFE0C
.L_774c:
	mov	r0, #150	@ 0x96
	lsl	r0, r0, #1
	cmp	r2, r0
	beq	.L_7768
	add	r0, #60	@ 0x3c
	cmp	r2, r0
	bne	.L_77a8
	ldr	r0, .L_7764
	bl	MPlayStop
	b	.L_77a8
	.align	2, 0
.L_7764:
	.4byte	gMPlayInfo_2
.L_7768:
	mov	r2, #30
	ldr	r7, .L_77b8
	mov	r0, #40	@ 0x28
	mov	r9, r0
	mov	r8, r2
	mov	r6, #200	@ 0xc8
.L_7774:
	ldr	r5, .L_77bc
	ldr	r4, .L_77c0
	add	r0, r5, #0
	add	r1, r4, #0
	bl	m4aMPlayVolumeControl
	lsl	r2, r7, #16
	asr	r2, r2, #16
	add	r0, r5, #0
	add	r1, r4, #0
	bl	m4aMPlayPitchControl
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, r9
	bl	m4aMPlayModDepthSet
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, r8
	bl	m4aMPlayLFOSpeedSet
	add	r0, r5, #0
	add	r1, r6, #0
	bl	m4aMPlayTempoControl
.L_77a8:
	add	sp, #12
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_77b8:
	.4byte	0xFD44
.L_77bc:
	.4byte	gMPlayInfo_2
.L_77c0:
	.4byte	0xFFFF


thumb_func_start func_80077C4
func_80077C4:
	push	{lr}
	ldr	r0, .L_7850
	ldr	r1, .L_7854
	str	r1, [r0, #0]
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	str	r1, [r0, #4]
	ldr	r2, .L_7858
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_785c
	str	r1, [r0, #0]
	ldr	r1, .L_7860
	str	r1, [r0, #4]
	str	r2, [r0, #8]
	ldr	r0, [r0, #8]
	ldr	r0, .L_7864
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r0, .L_7868
	ldr	r1, .L_786c
	bl	LZ77UnCompVram
	ldr	r0, .L_7870
	ldr	r1, .L_7874
	bl	func_800B734
	ldr	r1, .L_7878
	mov	r2, #160	@ 0xa0
	lsl	r2, r2, #7
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_787c
	mov	r0, #120	@ 0x78
	strh	r0, [r1, #0]
	ldr	r1, .L_7880
	mov	r0, #80	@ 0x50
	strh	r0, [r1, #0]
	ldr	r2, .L_7884
	ldr	r1, .L_7888
	mov	r3, #192	@ 0xc0
	lsl	r3, r3, #2
	add	r0, r3, #0
	strh	r0, [r1, #0]
	strh	r0, [r2, #0]
	ldr	r1, .L_788c
	mov	r0, #0
	strh	r0, [r1, #0]
	ldrh	r3, [r2, #0]
	mov	r0, #0
	mov	r1, #0
	add	r2, r3, #0
	bl	func_800B4C0
	mov	r0, #49	@ 0x31
	bl	func_800B7E0
	bl	func_800B580
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	add	r0, r2, #0
	strh	r0, [r1, #0]
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7850:
	.4byte	0x40000D4
.L_7854:
	.4byte	sUnk_82A37A0
.L_7858:
	.4byte	0x80000010
.L_785c:
	.4byte	sUnk_82A4E1A
.L_7860:
	.4byte	0x5000200
.L_7864:
	.4byte	sUnk_82A37C0
.L_7868:
	.4byte	sUnk_82A4E3C
.L_786c:
	.4byte	0x6010000
.L_7870:
	.4byte	sUnk_82A4934
.L_7874:
	.4byte	0x6008000
.L_7878:
	.4byte	0x4000008
.L_787c:
	.4byte	gUnk_3002C4A
.L_7880:
	.4byte	gUnk_3002C4C
.L_7884:
	.4byte	gUnk_3002C50
.L_7888:
	.4byte	gUnk_3002C52
.L_788c:
	.4byte	gUnk_3002C4E


thumb_func_start func_8007890
func_8007890:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r4, .L_78a8
	ldrh	r0, [r4, #0]
	cmp	r0, #1
	beq	.L_78d0
	cmp	r0, #1
	bgt	.L_78ac
	cmp	r0, #0
	beq	.L_78b2
	b	.L_790a
	.align	2, 0
.L_78a8:
	.4byte	gUnk_3002C60
.L_78ac:
	cmp	r0, #2
	beq	.L_78f8
	b	.L_790a
.L_78b2:
	mov	r0, #1
	bl	func_800B888
	cmp	r0, #0
	beq	.L_790a
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #136	@ 0x88
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	mov	r0, #6
	bl	VoiceSetPlay
	b	.L_78e8
.L_78d0:
	ldr	r0, .L_78f0
	ldrh	r1, [r0, #0]
	sub	r1, #16
	strh	r1, [r0, #0]
	ldr	r2, .L_78f4
	ldrh	r0, [r2, #0]
	sub	r0, #16
	strh	r0, [r2, #0]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r1, #15
	bhi	.L_790a
.L_78e8:
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	b	.L_790a
.L_78f0:
	.4byte	gUnk_3002C50
.L_78f4:
	.4byte	gUnk_3002C52
.L_78f8:
	mov	r0, #1
	bl	func_800B84C
	cmp	r0, #0
	beq	.L_790a
	ldr	r1, .L_7950
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_790a:
	ldr	r4, .L_7954
	ldr	r0, .L_7958
	ldrh	r0, [r0, #0]
	cmp	r0, #1
	bhi	.L_7942
	mov	r0, sp
	bl	func_800C6F8
	ldr	r0, [sp, #0]
	ldr	r1, .L_795c
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r1, .L_7960
	mov	r5, #0
	ldrsh	r3, [r1, r5]
	add	r1, r4, #0
	bl	func_800B5E4
	add	r4, r0, #0
	ldr	r0, .L_7964
	ldrh	r1, [r0, #0]
	ldr	r0, .L_7968
	ldrh	r2, [r0, #0]
	ldr	r0, .L_796c
	ldrh	r3, [r0, #0]
	mov	r0, #0
	bl	func_800B4C0
.L_7942:
	add	r0, r4, #0
	bl	func_800B684
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L_7950:
	.4byte	gSubGameMode
.L_7954:
	.4byte	gOamBuffer
.L_7958:
	.4byte	gUnk_3002C60
.L_795c:
	.4byte	gUnk_3002C4A
.L_7960:
	.4byte	gUnk_3002C4C
.L_7964:
	.4byte	gUnk_3002C4E
.L_7968:
	.4byte	gUnk_3002C50
.L_796c:
	.4byte	gUnk_3002C52


thumb_func_start func_8007970
func_8007970:
	add	r2, r0, #0
	ldr	r0, .L_79a0
	ldrh	r3, [r0, #0]
	ldr	r0, .L_79a4
	cmp	r2, r0
	beq	.L_7988
	ldr	r0, .L_79a8
	cmp	r2, r0
	beq	.L_7988
	ldr	r0, .L_79ac
	cmp	r2, r0
	bne	.L_79c0
.L_7988:
	ldr	r2, .L_79b0
	ldr	r0, .L_79b4
	lsl	r1, r3, #1
	add	r0, r1, r0
	ldrh	r0, [r0, #0]
	strh	r0, [r2, #0]
	ldr	r2, .L_79b8
	ldr	r0, .L_79bc
	add	r1, r1, r0
	ldrh	r0, [r1, #0]
	b	.L_79e0
	.align	2, 0
.L_79a0:
	.4byte	gUnk_3002C84
.L_79a4:
	.4byte	func_800C930
.L_79a8:
	.4byte	func_800CAE0
.L_79ac:
	.4byte	func_800CB5C
.L_79b0:
	.4byte	gUnk_3002CA0
.L_79b4:
	.4byte	sUnk_878E748
.L_79b8:
	.4byte	gUnk_3002CA2
.L_79bc:
	.4byte	sUnk_878E750
.L_79c0:
	ldr	r0, .L_79e4
	cmp	r2, r0
	beq	.L_79cc
	ldr	r0, .L_79e8
	cmp	r2, r0
	bne	.L_79e2
.L_79cc:
	ldr	r1, .L_79ec
	mov	r2, #16
	neg	r2, r2
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r2, .L_79f0
	ldr	r1, .L_79f4
	lsl	r0, r3, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
.L_79e0:
	strh	r0, [r2, #0]
.L_79e2:
	bx	lr
.L_79e4:
	.4byte	func_800CA20
.L_79e8:
	.4byte	func_800CA8C
.L_79ec:
	.4byte	gUnk_3002CA0
.L_79f0:
	.4byte	gUnk_3002CA2
.L_79f4:
	.4byte	sUnk_878E758


thumb_func_start func_80079F8
func_80079F8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	ldr	r6, .L_7a58
	ldr	r5, .L_7a5c
	ldr	r1, .L_7a60
	mov	r8, r1
	mov	r3, #109	@ 0x6d
	ldr	r7, .L_7a64
	mov	r9, r7
	mov	r4, #7
.L_7a12:
	mul	r0, r3
	add	r0, r9
	mov	r1, #240	@ 0xf0
	str	r3, [sp, #0]
	bl	__modsi3
	strh	r0, [r6, #0]
	add	r6, #2
	ldr	r3, [sp, #0]
	add	r2, r0, #0
	mul	r2, r3
	mov	r0, r9
	add	r1, r2, r0
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_7a36
	ldr	r7, .L_7a68
	add	r0, r2, r7
.L_7a36:
	asr	r0, r0, #8
	lsl	r0, r0, #8
	sub	r0, r1, r0
	strh	r0, [r5, #0]
	add	r5, #2
	sub	r4, #1
	cmp	r4, #0
	bge	.L_7a12
	mov	r1, r8
	strh	r0, [r1, #0]
	add	sp, #4
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_7a58:
	.4byte	gUnk_3002CA8
.L_7a5c:
	.4byte	gUnk_3002CB8
.L_7a60:
	.4byte	gUnk_3002CA4
.L_7a64:
	.4byte	0x3FD
.L_7a68:
	.4byte	0x4FC


thumb_func_start func_8007A6C
func_8007A6C:
	push	{r4, r5, r6, r7, lr}
	sub	sp, #4
	add	r2, r0, #0
	ldr	r4, .L_7b04
	add	r1, r4, #0
	ldrh	r0, [r4, #0]
	add	r0, #3
	strh	r0, [r4, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	add	r0, #3
	strh	r0, [r4, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	add	r0, #3
	strh	r0, [r4, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	add	r0, #4
	strh	r0, [r4, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	add	r0, #4
	strh	r0, [r4, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	add	r0, #3
	strh	r0, [r4, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	add	r0, #4
	strh	r0, [r4, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	add	r0, #4
	strh	r0, [r4, #0]
	ldr	r5, .L_7b08
	add	r4, r1, #0
	ldr	r7, .L_7b0c
	mov	r6, #7
.L_7abc:
	cmp	r2, #0
	beq	.L_7ac6
	ldrh	r0, [r5, #0]
	add	r0, r0, r2
	strh	r0, [r5, #0]
.L_7ac6:
	ldrb	r0, [r4, #0]
	strh	r0, [r4, #0]
	ldrh	r0, [r4, #0]
	mov	r1, #4
	neg	r1, r1
	and	r0, r1
	cmp	r0, #200	@ 0xc8
	bne	.L_7af0
	mov	r0, #0
	ldrsh	r1, [r7, r0]
	mov	r0, #109	@ 0x6d
	mul	r0, r1
	ldr	r1, .L_7b10
	add	r0, r0, r1
	mov	r1, #240	@ 0xf0
	str	r2, [sp, #0]
	bl	__modsi3
	strh	r0, [r7, #0]
	strh	r0, [r5, #0]
	ldr	r2, [sp, #0]
.L_7af0:
	sub	r6, #1
	add	r5, #2
	add	r4, #2
	cmp	r6, #0
	bge	.L_7abc
	add	sp, #4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_7b04:
	.4byte	gUnk_3002CB8
.L_7b08:
	.4byte	gUnk_3002CA8
.L_7b0c:
	.4byte	gUnk_3002CA4
.L_7b10:
	.4byte	0x3FD


thumb_func_start func_8007B14
func_8007B14:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_7bd0
	ldr	r0, .L_7bd4
	str	r0, [r4, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r4, #4]
	ldr	r0, .L_7bd8
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_7bdc
	str	r0, [r4, #0]
	ldr	r0, .L_7be0
	str	r0, [r4, #4]
	ldr	r0, .L_7be4
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_7be8
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r0, .L_7bec
	ldr	r1, .L_7bf0
	bl	LZ77UnCompVram
	ldr	r0, .L_7bf4
	str	r0, [sp, #0]
	mov	r0, sp
	str	r0, [r4, #0]
	ldr	r0, .L_7bf8
	str	r0, [r4, #4]
	ldr	r2, .L_7bfc
	str	r2, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_7c00
	str	r0, [sp, #0]
	mov	r0, sp
	str	r0, [r4, #0]
	ldr	r1, .L_7c04
	str	r1, [r4, #4]
	str	r2, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_7c08
	bl	func_800B734
	ldr	r1, .L_7c0c
	mov	r2, #160	@ 0xa0
	lsl	r2, r2, #7
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_7c10
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_7c14
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_7c18
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_7c1c
	strh	r1, [r0, #0]
	ldr	r0, .L_7c20
	mov	r2, #120	@ 0x78
	strh	r2, [r0, #0]
	ldr	r1, .L_7c24
	mov	r0, #220	@ 0xdc
	strh	r0, [r1, #0]
	ldr	r0, .L_7c28
	strh	r2, [r0, #0]
	ldr	r1, .L_7c2c
	mov	r0, #204	@ 0xcc
	strh	r0, [r1, #0]
	mov	r0, #0
	bl	func_80079F8
	mov	r0, #55	@ 0x37
	bl	func_800B7E0
	bl	func_800B580
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #184	@ 0xb8
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
.L_7bd0:
	.4byte	0x40000D4
.L_7bd4:
	.4byte	sUnk_829FD48
.L_7bd8:
	.4byte	0x80000100
.L_7bdc:
	.4byte	sUnk_82A5318
.L_7be0:
	.4byte	0x5000200
.L_7be4:
	.4byte	0x80000070
.L_7be8:
	.4byte	sUnk_829FF48
.L_7bec:
	.4byte	sUnk_82A53F8
.L_7bf0:
	.4byte	0x6010000
.L_7bf4:
	.4byte	0x3FF03FF
.L_7bf8:
	.4byte	0x6008000
.L_7bfc:
	.4byte	0x85000200
.L_7c00:
	.4byte	0xA0C5A0C5
.L_7c04:
	.4byte	0x6009000
.L_7c08:
	.4byte	sUnk_82A2CD0
.L_7c0c:
	.4byte	0x4000008
.L_7c10:
	.4byte	0x5201
.L_7c14:
	.4byte	0x5402
.L_7c18:
	.4byte	gUnk_3002C46
.L_7c1c:
	.4byte	gUnk_3002C48
.L_7c20:
	.4byte	gUnk_3002C4A
.L_7c24:
	.4byte	gUnk_3002C4C
.L_7c28:
	.4byte	gUnk_3002C98
.L_7c2c:
	.4byte	gUnk_3002C9A


thumb_func_start func_8007C30
func_8007C30:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #32
	mov	r8, r0
	mov	r1, #0
	str	r1, [sp, #4]
	str	r1, [sp, #8]
	str	r1, [sp, #12]
	str	r1, [sp, #16]
	str	r1, [sp, #20]
	ldr	r2, .L_7c80
	mov	r0, #7
	mov	r3, r8
	and	r0, r3
	lsl	r0, r0, #1
	add	r0, r0, r2
	ldrh	r0, [r0, #0]
	str	r0, [sp, #28]
	ldr	r0, .L_7c84
	ldrh	r0, [r0, #0]
	mov	sl, r0
	ldr	r0, .L_7c88
	strh	r1, [r0, #0]
	ldr	r0, .L_7c8c
	strh	r1, [r0, #0]
	ldr	r0, .L_7c90
	ldrh	r0, [r0, #0]
	cmp	r0, #12
	bls	.L_7c74
	bl	.L_8642
.L_7c74:
	lsl	r0, r0, #2
	ldr	r1, .L_7c94
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_7c80:
	.4byte	sUnk_878E760
.L_7c84:
	.4byte	gUnk_3002C80
.L_7c88:
	.4byte	gUnk_3002CA0
.L_7c8c:
	.4byte	gUnk_3002CA2
.L_7c90:
	.4byte	gUnk_3002C60
.L_7c94:
	.4byte	.L_7c98
.L_7c98:
	.4byte	.L_7ccc
	.4byte	.L_7d68
	.4byte	.L_7ddc
	.4byte	.L_7e84
	.4byte	.L_7fcc
	.4byte	.L_808c
	.4byte	.L_813c
	.4byte	.L_820c
	.4byte	.L_82b0
	.4byte	.L_8340
	.4byte	.L_8460
	.4byte	.L_8550
	.4byte	.L_8630
.L_7ccc:
	mov	r0, #1
	bl	func_800B888
	cmp	r0, #0
	bne	.L_7cda
	bl	.L_8642
.L_7cda:
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800C9AC
	mov	r4, sl
	cmp	r4, #0
	beq	.L_7cf6
	add	r1, sp, #8
	mov	r0, r8
	bl	func_800CA20
	ldr	r0, .L_7d54
	bl	func_8007970
.L_7cf6:
	mov	r0, #1
	mov	r5, r8
	and	r0, r5
	cmp	r0, #0
	beq	.L_7d08
	ldr	r1, .L_7d58
	ldrh	r0, [r1, #0]
	sub	r0, #1
	strh	r0, [r1, #0]
.L_7d08:
	ldr	r5, .L_7d58
	mov	r6, #0
	ldrsh	r0, [r5, r6]
	mov	r4, #64	@ 0x40
	neg	r4, r4
	ldr	r2, .L_7d5c
	cmp	r0, r4
	bge	.L_7d24
	mov	r0, #0
	str	r0, [r2, #0]
	ldr	r1, .L_7d60
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_7d24:
	ldr	r0, [r2, #0]
	mov	r1, #128	@ 0x80
	and	r1, r0
	add	r0, #1
	str	r0, [r2, #0]
	mov	r3, #8
	cmp	r1, #0
	beq	.L_7d36
	mov	r3, #4
.L_7d36:
	add	r1, sp, #12
	add	r0, r3, #0
	bl	func_800CD30
	ldr	r1, .L_7d64
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	cmp	r0, r4
	bgt	.L_7d4c
	bl	.L_8642
.L_7d4c:
	ldrh	r0, [r5, #0]
	sub	r0, #16
	bl	.L_8640
.L_7d54:
	ldmia	r2!, {r0, r5}
	lsr	r0, r0, #32
.L_7d58:
	cmp	r4, #76	@ 0x4c
	lsl	r0, r0, #12
.L_7d5c:
	cmp	r4, #100	@ 0x64
	lsl	r0, r0, #12
.L_7d60:
	cmp	r4, #96	@ 0x60
	lsl	r0, r0, #12
.L_7d64:
	cmp	r4, #154	@ 0x9a
	lsl	r0, r0, #12
.L_7d68:
	mov	r0, #1
	bl	func_800B84C
	cmp	r0, #0
	bne	.L_7d76
	bl	.L_8642
.L_7d76:
	ldr	r0, .L_7db0
	ldr	r1, .L_7db4
	bl	LZ77UnCompVram
	ldr	r0, .L_7db8
	ldr	r1, .L_7dbc
	bl	LZ77UnCompVram
	ldr	r0, .L_7dc0
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_7dc4
	strh	r1, [r0, #0]
	ldr	r1, .L_7dc8
	mov	r0, #120	@ 0x78
	strh	r0, [r1, #0]
	ldr	r1, .L_7dcc
	mov	r0, #180	@ 0xb4
	strh	r0, [r1, #0]
	ldr	r1, .L_7dd0
	mov	r0, #128	@ 0x80
	strh	r0, [r1, #0]
	ldr	r1, .L_7dd4
	mov	r0, #104	@ 0x68
	strh	r0, [r1, #0]
	ldr	r1, .L_7dd8
	bl	.L_863c
	.align 2, 0
.L_7db0:
	cmp	r0, #64	@ 0x40
	lsr	r2, r5, #32
.L_7db4:
	strh	r0, [r0, #0]
	lsl	r0, r0, #24
.L_7db8:
	cmp	r2, #36	@ 0x24
	lsr	r2, r5, #32
.L_7dbc:
	str	r0, [sp, #0]
	lsl	r0, r0, #24
.L_7dc0:
	cmp	r4, #70	@ 0x46
	lsl	r0, r0, #12
.L_7dc4:
	cmp	r4, #72	@ 0x48
	lsl	r0, r0, #12
.L_7dc8:
	cmp	r4, #74	@ 0x4a
	lsl	r0, r0, #12
.L_7dcc:
	cmp	r4, #76	@ 0x4c
	lsl	r0, r0, #12
.L_7dd0:
	cmp	r4, #152	@ 0x98
	lsl	r0, r0, #12
.L_7dd4:
	cmp	r4, #156	@ 0x9c
	lsl	r0, r0, #12
.L_7dd8:
	cmp	r4, #96	@ 0x60
	lsl	r0, r0, #12
.L_7ddc:
	mov	r0, #1
	bl	func_800B888
	cmp	r0, #0
	bne	.L_7dea
	bl	.L_8642
.L_7dea:
	ldr	r1, .L_7e38
	ldrh	r2, [r1, #0]
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	cmp	r0, #88	@ 0x58
	ble	.L_7e40
	mov	r0, #1
	mov	r4, r8
	and	r0, r4
	cmp	r0, #0
	beq	.L_7e1e
	sub	r0, r2, #1
	strh	r0, [r1, #0]
	mov	r5, #0
	ldrsh	r0, [r1, r5]
	add	r3, r0, #0
	sub	r3, #104	@ 0x68
	ldr	r1, .L_7e3c
	add	r0, r3, #0
	mul	r0, r3
	cmp	r0, #0
	bge	.L_7e18
	add	r0, #7
.L_7e18:
	asr	r0, r0, #3
	add	r0, #112	@ 0x70
	strh	r0, [r1, #0]
.L_7e1e:
	ldr	r0, .L_7e38
	mov	r6, #0
	ldrsh	r0, [r0, r6]
	mov	r3, #6
	cmp	r0, #96	@ 0x60
	ble	.L_7e2c
	mov	r3, #10
.L_7e2c:
	add	r1, sp, #12
	add	r0, r3, #0
	bl	func_800CCA0
	b	.L_7e60
	.align	2, 0
.L_7e38:
	.4byte	gUnk_3002C98
.L_7e3c:
	.4byte	gUnk_3002C9A
.L_7e40:
	ldr	r4, .L_7e78
	ldr	r1, [r4, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r4, #0]
	add	r1, sp, #12
	bl	func_800CCDC
	cmp	r0, #0
	beq	.L_7e60
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_7e7c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_7e60:
	ldr	r0, .L_7e80
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #120	@ 0x78
	beq	.L_7e6e
	bl	.L_8642
.L_7e6e:
	mov	r0, #13
	bl	m4aSongNumStartOrChange
	bl	.L_8642
.L_7e78:
	cmp	r4, #100	@ 0x64
	lsl	r0, r0, #12
.L_7e7c:
	cmp	r4, #96	@ 0x60
	lsl	r0, r0, #12
.L_7e80:
	cmp	r4, #152	@ 0x98
	lsl	r0, r0, #12
.L_7e84:
	add	r1, sp, #12
	mov	r0, #100	@ 0x64
	bl	func_800CCDC
	ldr	r2, .L_7ed8
	ldr	r0, [r2, #0]
	add	r1, r0, #0
	add	r0, #1
	str	r0, [r2, #0]
	cmp	r1, #160	@ 0xa0
	bls	.L_7f42
	ldr	r4, .L_7edc
	mov	r3, #0
	ldrsh	r0, [r4, r3]
	cmp	r0, #119	@ 0x77
	bgt	.L_7ee4
	add	r1, sp, #16
	mov	r0, #0
	bl	func_800CE7C
	mov	r0, #1
	mov	r5, r8
	and	r0, r5
	cmp	r0, #0
	beq	.L_7ebc
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
.L_7ebc:
	mov	r6, #0
	ldrsh	r0, [r4, r6]
	add	r3, r0, #0
	sub	r3, #116	@ 0x74
	ldr	r2, .L_7ee0
	add	r0, r3, #0
	mul	r0, r3
	lsr	r1, r0, #31
	add	r0, r0, r1
	asr	r0, r0, #1
	add	r0, #136	@ 0x88
	strh	r0, [r2, #0]
	b	.L_7f24
	.align	2, 0
.L_7ed8:
	.4byte	gUnk_3002C64
.L_7edc:
	.4byte	gUnk_3002C9C
.L_7ee0:
	.4byte	gUnk_3002C9E
.L_7ee4:
	cmp	r0, #151	@ 0x97
	bgt	.L_7f14
	add	r1, sp, #16
	mov	r0, #8
	bl	func_800CE7C
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	mov	r1, #0
	ldrsh	r0, [r4, r1]
	add	r3, r0, #0
	sub	r3, #136	@ 0x88
	ldr	r1, .L_7f10
	add	r0, r3, #0
	mul	r0, r3
	cmp	r0, #0
	bge	.L_7f0a
	add	r0, #15
.L_7f0a:
	asr	r0, r0, #4
	add	r0, #128	@ 0x80
	b	.L_7f22
.L_7f10:
	.4byte	gUnk_3002C9E
.L_7f14:
	cmp	r0, #152	@ 0x98
	bne	.L_7f24
	mov	r0, #0
	str	r0, [r2, #0]
	ldr	r1, .L_7f7c
	ldrh	r0, [r1, #0]
	add	r0, #1
.L_7f22:
	strh	r0, [r1, #0]
.L_7f24:
	ldr	r4, .L_7f80
	mov	r2, #0
	ldrsh	r0, [r4, r2]
	cmp	r0, #106	@ 0x6a
	bne	.L_7f34
	mov	r0, #13
	bl	m4aSongNumStartOrChange
.L_7f34:
	mov	r3, #0
	ldrsh	r0, [r4, r3]
	cmp	r0, #120	@ 0x78
	bne	.L_7f42
	mov	r0, #24
	bl	m4aSongNumStartOrChange
.L_7f42:
	ldr	r4, .L_7f80
	mov	r5, #0
	ldrsh	r0, [r4, r5]
	cmp	r0, #119	@ 0x77
	bgt	.L_7f8c
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800C9AC
	mov	r6, sl
	cmp	r6, #0
	beq	.L_7f68
	add	r1, sp, #8
	mov	r0, r8
	bl	func_800CA20
	ldr	r0, .L_7f84
	bl	func_8007970
.L_7f68:
	mov	r0, #3
	mov	r1, r8
	and	r0, r1
	cmp	r0, #3
	beq	.L_7f74
	b	.L_8642
.L_7f74:
	ldr	r1, .L_7f88
	ldrh	r0, [r1, #0]
	sub	r0, #1
	b	.L_8640
.L_7f7c:
	.4byte	gUnk_3002C60
.L_7f80:
	.4byte	gUnk_3002C9C
.L_7f84:
	.4byte	func_800CA20
.L_7f88:
	.4byte	gUnk_3002C4C
.L_7f8c:
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800CA78
	mov	r2, sl
	cmp	r2, #0
	beq	.L_7fa8
	add	r1, sp, #8
	mov	r0, r8
	bl	func_800CA8C
	ldr	r0, .L_7fc4
	bl	func_8007970
.L_7fa8:
	ldr	r0, .L_7fc8
	ldrh	r1, [r0, #0]
	add	r1, #1
	strh	r1, [r0, #0]
	mov	r3, #0
	ldrsh	r0, [r4, r3]
	cmp	r0, #122	@ 0x7a
	beq	.L_7fba
	b	.L_8642
.L_7fba:
	mov	r0, #6
	bl	m4aSongNumStartOrChange
	b	.L_8642
	.align	2, 0
.L_7fc4:
	.4byte	func_800CA8C
.L_7fc8:
	.4byte	gUnk_3002C4C
.L_7fcc:
	add	r1, sp, #12
	mov	r0, #28
	bl	func_800CCDC
	ldr	r4, .L_7fe4
	ldr	r2, [r4, #0]
	cmp	r2, #160	@ 0xa0
	bls	.L_7fec
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_7fe8
	b	.L_8028
.L_7fe4:
	.4byte	gUnk_3002C64
.L_7fe8:
	.4byte	gUnk_3002C60
.L_7fec:
	cmp	r2, #88	@ 0x58
	bls	.L_7ffa
	add	r1, sp, #16
	add	r0, r2, #0
	bl	func_800CD6C
	b	.L_802e
.L_7ffa:
	mov	r0, #8
	and	r0, r2
	cmp	r0, #0
	beq	.L_8018
	add	r1, sp, #16
	add	r0, r2, #0
	bl	func_800CD6C
	ldr	r1, .L_8014
	ldrh	r0, [r1, #0]
	sub	r0, #1
	b	.L_802c
	.align	2, 0
.L_8014:
	.4byte	gUnk_3002C9C
.L_8018:
	add	r1, sp, #16
	add	r0, r2, #0
	bl	func_800CE0C
	ldr	r0, [r4, #0]
	cmp	r0, #4
	bls	.L_802e
	ldr	r1, .L_8044
.L_8028:
	ldrh	r0, [r1, #0]
	add	r0, #1
.L_802c:
	strh	r0, [r1, #0]
.L_802e:
	ldr	r1, .L_8048
	mov	r0, #144	@ 0x90
	strh	r0, [r1, #0]
	ldr	r1, .L_804c
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	cmp	r0, #39	@ 0x27
	bhi	.L_8054
	ldr	r1, .L_8050
	b	.L_863c
.L_8044:
	.4byte	gUnk_3002C9C
.L_8048:
	.4byte	gUnk_3002C9E
.L_804c:
	.4byte	gUnk_3002C64
.L_8050:
	.4byte	gUnk_3002C4C
.L_8054:
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800C9AC
	mov	r4, sl
	cmp	r4, #0
	beq	.L_8070
	add	r1, sp, #8
	mov	r0, r8
	bl	func_800CA20
	ldr	r0, .L_8084
	bl	func_8007970
.L_8070:
	mov	r0, #3
	mov	r5, r8
	and	r0, r5
	cmp	r0, #3
	beq	.L_807c
	b	.L_8642
.L_807c:
	ldr	r1, .L_8088
	ldrh	r0, [r1, #0]
	sub	r0, #1
	b	.L_8640
.L_8084:
	.4byte	func_800CA20
.L_8088:
	.4byte	gUnk_3002C4C
.L_808c:
	add	r1, sp, #12
	mov	r0, #100	@ 0x64
	bl	func_800CCDC
	ldr	r4, .L_80cc
	mov	r6, #0
	ldrsh	r1, [r4, r6]
	cmp	r1, #88	@ 0x58
	ble	.L_80d4
	add	r1, sp, #16
	mov	r0, r8
	bl	func_800CDDC
	ldrh	r0, [r4, #0]
	sub	r0, #1
	strh	r0, [r4, #0]
	mov	r1, #0
	ldrsh	r0, [r4, r1]
	add	r3, r0, #0
	sub	r3, #120	@ 0x78
	ldr	r2, .L_80d0
	add	r1, r3, #0
	mul	r1, r3
	lsl	r0, r1, #1
	add	r0, r0, r1
	cmp	r0, #0
	bge	.L_80c4
	add	r0, #127	@ 0x7f
.L_80c4:
	asr	r0, r0, #7
	add	r0, #120	@ 0x78
	strh	r0, [r2, #0]
	b	.L_80fa
.L_80cc:
	.4byte	gUnk_3002C9C
.L_80d0:
	.4byte	gUnk_3002C9E
.L_80d4:
	mov	r0, #32
	neg	r0, r0
	cmp	r1, r0
	ble	.L_80ec
	add	r1, sp, #16
	mov	r0, r8
	bl	func_800CD6C
	ldrh	r0, [r4, #0]
	sub	r0, #2
	strh	r0, [r4, #0]
	b	.L_80fa
.L_80ec:
	ldr	r1, .L_812c
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_8130
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_80fa:
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800C9AC
	mov	r2, sl
	cmp	r2, #0
	beq	.L_8116
	add	r1, sp, #8
	mov	r0, r8
	bl	func_800CA20
	ldr	r0, .L_8134
	bl	func_8007970
.L_8116:
	mov	r0, #3
	mov	r3, r8
	and	r0, r3
	cmp	r0, #3
	beq	.L_8122
	b	.L_8642
.L_8122:
	ldr	r1, .L_8138
	ldrh	r0, [r1, #0]
	sub	r0, #1
	b	.L_8640
	.align	2, 0
.L_812c:
	.4byte	gUnk_3002C64
.L_8130:
	.4byte	gUnk_3002C60
.L_8134:
	.4byte	func_800CA20
.L_8138:
	.4byte	gUnk_3002C4C
.L_813c:
	ldr	r0, .L_8164
	mov	r4, #0
	ldrsh	r0, [r0, r4]
	cmp	r0, #96	@ 0x60
	ble	.L_81b8
	mov	r5, sl
	cmp	r5, #0
	beq	.L_816c
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800CB20
	add	r1, sp, #8
	mov	r0, r8
	bl	func_800CB5C
	ldr	r0, .L_8168
	bl	func_8007970
	b	.L_8174
.L_8164:
	.4byte	gUnk_3002C4A
.L_8168:
	.4byte	func_800CB5C
.L_816c:
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800CC64
.L_8174:
	ldr	r0, .L_81b0
	ldrh	r1, [r0, #0]
	sub	r1, #1
	strh	r1, [r0, #0]
	mov	r6, #0
	ldrsh	r0, [r0, r6]
	add	r3, r0, #0
	sub	r3, #104	@ 0x68
	ldr	r2, .L_81b4
	add	r0, r3, #0
	mul	r0, r3
	cmp	r0, #0
	bge	.L_8190
	add	r0, #7
.L_8190:
	asr	r0, r0, #3
	add	r0, #136	@ 0x88
	strh	r0, [r2, #0]
	lsl	r0, r1, #16
	asr	r0, r0, #16
	cmp	r0, #118	@ 0x76
	bne	.L_81a4
	mov	r0, #13
	bl	m4aSongNumStartOrChange
.L_81a4:
	add	r1, sp, #12
	mov	r0, #100	@ 0x64
	bl	func_800CCDC
	b	.L_8642
	.align	2, 0
.L_81b0:
	.4byte	gUnk_3002C4A
.L_81b4:
	.4byte	gUnk_3002C4C
.L_81b8:
	mov	r0, sl
	cmp	r0, #0
	beq	.L_81dc
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800CAA0
	add	r1, sp, #8
	mov	r0, r8
	bl	func_800CAE0
	ldr	r0, .L_81d8
	bl	func_8007970
	b	.L_81e4
	.align	2, 0
.L_81d8:
	.4byte	func_800CAE0
.L_81dc:
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800CC28
.L_81e4:
	ldr	r4, .L_8204
	ldr	r1, [r4, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r4, #0]
	add	r1, sp, #12
	bl	func_800CD30
	cmp	r0, #0
	bne	.L_81fa
	b	.L_8642
.L_81fa:
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_8208
	b	.L_863c
	.align	2, 0
.L_8204:
	.4byte	gUnk_3002C64
.L_8208:
	.4byte	gUnk_3002C60
.L_820c:
	ldr	r4, .L_8248
	mov	r2, #0
	ldrsh	r1, [r4, r2]
	mov	r0, #32
	neg	r0, r0
	cmp	r1, r0
	ble	.L_825a
	add	r1, sp, #12
	mov	r0, r8
	bl	func_800CCA0
	ldrh	r0, [r4, #0]
	sub	r0, #2
	strh	r0, [r4, #0]
	mov	r3, sl
	cmp	r3, #0
	beq	.L_8250
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800CAA0
	add	r1, sp, #8
	mov	r0, r8
	bl	func_800CAE0
	ldr	r0, .L_824c
	bl	func_8007970
	b	.L_8642
	.align	2, 0
.L_8248:
	.4byte	gUnk_3002C98
.L_824c:
	.4byte	func_800CAE0
.L_8250:
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800CC28
	b	.L_8642
.L_825a:
	mov	r4, sl
	cmp	r4, #0
	beq	.L_827c
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800C8A0
	add	r1, sp, #8
	mov	r0, r8
	bl	func_800C930
	ldr	r0, .L_8278
	bl	func_8007970
	b	.L_8284
.L_8278:
	.4byte	func_800C930
.L_827c:
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800CB98
.L_8284:
	ldr	r0, .L_82a4
	ldrh	r1, [r0, #0]
	sub	r1, #2
	strh	r1, [r0, #0]
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, #32
	neg	r0, r0
	cmp	r1, r0
	blt	.L_829a
	b	.L_8642
.L_829a:
	ldr	r1, .L_82a8
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_82ac
	b	.L_863c
.L_82a4:
	.4byte	gUnk_3002C4A
.L_82a8:
	.4byte	gUnk_3002C64
.L_82ac:
	.4byte	gUnk_3002C60
.L_82b0:
	mov	r0, #1
	bl	func_800B84C
	cmp	r0, #0
	bne	.L_82bc
	b	.L_8642
.L_82bc:
	ldr	r0, .L_8318
	ldr	r1, .L_831c
	bl	LZ77UnCompVram
	ldr	r0, .L_8320
	mov	r5, #136	@ 0x88
	lsl	r5, r5, #1
	add	r1, r5, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_8324
	mov	r2, #56	@ 0x38
	strh	r2, [r0, #0]
	ldr	r0, .L_8328
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	ldr	r2, .L_832c
	mov	r6, #128	@ 0x80
	lsl	r6, r6, #1
	add	r0, r1, r6
	strh	r0, [r2, #0]
	ldr	r0, .L_8330
	mov	r2, #200	@ 0xc8
	strh	r2, [r0, #0]
	ldr	r0, .L_8334
	mov	r3, #148	@ 0x94
	lsl	r3, r3, #1
	add	r1, r1, r3
	strh	r1, [r0, #0]
	ldr	r0, .L_8338
	strh	r2, [r0, #0]
	bl	func_800B580
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r4, #152	@ 0x98
	lsl	r4, r4, #5
	add	r0, r4, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_833c
	b	.L_863c
	.align	2, 0
.L_8318:
	.4byte	sUnk_82A229C
.L_831c:
	.4byte	0x6008000
.L_8320:
	.4byte	gUnk_3002C46
.L_8324:
	.4byte	gUnk_3002C48
.L_8328:
	.4byte	0x4000010
.L_832c:
	.4byte	gUnk_3002C98
.L_8330:
	.4byte	gUnk_3002C9A
.L_8334:
	.4byte	gUnk_3002C4A
.L_8338:
	.4byte	gUnk_3002C4C
.L_833c:
	.4byte	gUnk_3002C60
.L_8340:
	mov	r0, #1
	bl	func_800B888
	ldr	r3, .L_836c
	ldrh	r2, [r3, #0]
	sub	r1, r2, #1
	lsl	r0, r1, #16
	lsr	r0, r0, #16
	cmp	r0, #54	@ 0x36
	bhi	.L_8374
	mov	r0, #1
	mov	r5, r8
	and	r0, r5
	cmp	r0, #0
	beq	.L_837c
	strh	r1, [r3, #0]
	ldr	r1, .L_8370
	ldrh	r0, [r1, #0]
	sub	r0, #1
	strh	r0, [r1, #0]
	b	.L_837c
	.align	2, 0
.L_836c:
	.4byte	gUnk_3002C46
.L_8370:
	.4byte	gUnk_3002C48
.L_8374:
	lsl	r0, r2, #16
	cmp	r0, #0
	ble	.L_837c
	strh	r1, [r3, #0]
.L_837c:
	mov	r6, sl
	cmp	r6, #0
	beq	.L_83a0
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800C8A0
	add	r1, sp, #8
	mov	r0, r8
	bl	func_800C930
	ldr	r0, .L_839c
	bl	func_8007970
	b	.L_83a8
	.align	2, 0
.L_839c:
	.4byte	func_800C930
.L_83a0:
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800CB98
.L_83a8:
	ldr	r2, .L_83c0
	ldrh	r3, [r2, #0]
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	mov	r0, #32
	neg	r0, r0
	cmp	r1, r0
	ble	.L_83c4
	sub	r0, r3, #2
	strh	r0, [r2, #0]
	b	.L_83d2
	.align	2, 0
.L_83c0:
	.4byte	gUnk_3002C4A
.L_83c4:
	ldr	r1, .L_8448
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_844c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_83d2:
	ldr	r2, .L_8450
	ldrh	r1, [r2, #0]
	add	r0, r1, #0
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #103	@ 0x67
	bhi	.L_83fe
	add	r0, r1, #1
	strh	r0, [r2, #0]
	ldr	r4, .L_8454
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	sub	r1, #64	@ 0x40
	lsl	r0, r1, #3
	sub	r0, r0, r1
	lsl	r0, r0, #1
	mov	r1, #13
	bl	__divsi3
	add	r0, #88	@ 0x58
	strh	r0, [r4, #0]
.L_83fe:
	add	r1, sp, #12
	mov	r0, r8
	bl	func_800CCA0
	ldr	r2, .L_8458
	ldrh	r3, [r2, #0]
	mov	r4, #0
	ldrsh	r1, [r2, r4]
	mov	r0, #32
	neg	r0, r0
	cmp	r1, r0
	ble	.L_841a
	sub	r0, r3, #2
	strh	r0, [r2, #0]
.L_841a:
	ldrh	r1, [r2, #0]
	add	r0, r1, #0
	sub	r0, #64	@ 0x40
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #103	@ 0x67
	bls	.L_842a
	b	.L_8642
.L_842a:
	add	r0, r1, #1
	strh	r0, [r2, #0]
	ldr	r4, .L_845c
	mov	r5, #0
	ldrsh	r1, [r2, r5]
	sub	r1, #64	@ 0x40
	lsl	r0, r1, #3
	sub	r0, r0, r1
	lsl	r0, r0, #1
	mov	r1, #13
	bl	__divsi3
	add	r0, #88	@ 0x58
	strh	r0, [r4, #0]
	b	.L_8642
.L_8448:
	.4byte	gUnk_3002C64
.L_844c:
	.4byte	gUnk_3002C60
.L_8450:
	.4byte	gUnk_3002C4A
.L_8454:
	.4byte	gUnk_3002C4C
.L_8458:
	.4byte	gUnk_3002C98
.L_845c:
	.4byte	gUnk_3002C9A
.L_8460:
	mov	r0, #1
	bl	func_800B84C
	cmp	r0, #0
	bne	.L_846c
	b	.L_8642
.L_846c:
	mov	r0, sp
	ldr	r1, .L_8500
	add	r6, r1, #0
	strh	r6, [r0, #0]
	ldr	r4, .L_8504
	str	r0, [r4, #0]
	ldr	r1, .L_8508
	str	r1, [r4, #4]
	ldr	r5, .L_850c
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_8510
	bl	func_800B734
	mov	r0, sp
	strh	r6, [r0, #0]
	str	r0, [r4, #0]
	ldr	r1, .L_8514
	str	r1, [r4, #4]
	str	r5, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_8518
	bl	func_800B734
	mov	r1, sp
	ldr	r2, .L_851c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	str	r1, [r4, #0]
	ldr	r0, .L_8520
	str	r0, [r4, #4]
	ldr	r0, .L_8524
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_8528
	ldr	r1, .L_852c
	bl	func_800B734
	ldr	r0, .L_8530
	mov	r1, #16
	strh	r1, [r0, #0]
	ldr	r0, .L_8534
	mov	r2, #0
	strh	r2, [r0, #0]
	ldr	r0, .L_8538
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	ldr	r0, .L_853c
	add	r1, #240	@ 0xf0
	strh	r1, [r0, #0]
	ldr	r0, .L_8540
	mov	r2, #112	@ 0x70
	strh	r2, [r0, #0]
	ldr	r1, .L_8544
	mov	r0, #148	@ 0x94
	lsl	r0, r0, #1
	strh	r0, [r1, #0]
	ldr	r0, .L_8548
	strh	r2, [r0, #0]
	bl	func_800B580
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r3, #184	@ 0xb8
	lsl	r3, r3, #5
	add	r0, r3, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_854c
	b	.L_863c
.L_8500:
	.4byte	0x3FF
.L_8504:
	.4byte	0x40000D4
.L_8508:
	.4byte	0x6008000
.L_850c:
	.4byte	0x81000260
.L_8510:
	.4byte	sUnk_82A1CF0
.L_8514:
	.4byte	0x6009000
.L_8518:
	.4byte	sUnk_82A1E7A
.L_851c:
	.4byte	0x93A0
.L_8520:
	.4byte	0x600A380
.L_8524:
	.4byte	0x810000C0
.L_8528:
	.4byte	sUnk_82A1FBC
.L_852c:
	.4byte	0x600A000
.L_8530:
	.4byte	gUnk_3002C46
.L_8534:
	.4byte	gUnk_3002C48
.L_8538:
	.4byte	0x4000010
.L_853c:
	.4byte	gUnk_3002C98
.L_8540:
	.4byte	gUnk_3002C9A
.L_8544:
	.4byte	gUnk_3002C4A
.L_8548:
	.4byte	gUnk_3002C4C
.L_854c:
	.4byte	gUnk_3002C60
.L_8550:
	mov	r0, #1
	bl	func_800B888
	cmp	r0, #0
	beq	.L_8562
	add	r1, sp, #20
	mov	r0, r8
	bl	func_800D134
.L_8562:
	mov	r4, sl
	cmp	r4, #0
	beq	.L_8584
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800C8A0
	add	r1, sp, #8
	mov	r0, r8
	bl	func_800C930
	ldr	r0, .L_8580
	bl	func_8007970
	b	.L_858c
.L_8580:
	.4byte	func_800C930
.L_8584:
	add	r1, sp, #4
	mov	r0, r8
	bl	func_800CB98
.L_858c:
	ldr	r2, .L_85a4
	ldrh	r3, [r2, #0]
	mov	r5, #0
	ldrsh	r1, [r2, r5]
	mov	r0, #32
	neg	r0, r0
	cmp	r1, r0
	ble	.L_85a8
	sub	r0, r3, #2
	strh	r0, [r2, #0]
	b	.L_85bc
	.align	2, 0
.L_85a4:
	.4byte	gUnk_3002C4A
.L_85a8:
	mov	r0, #55	@ 0x37
	bl	func_800B804
	ldr	r1, .L_8618
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_861c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_85bc:
	ldr	r1, .L_8620
	mov	r6, #0
	ldrsh	r0, [r1, r6]
	cmp	r0, #31
	bgt	.L_85dc
	ldr	r4, .L_8624
	mov	r1, #32
	sub	r1, r1, r0
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #1
	mov	r1, #5
	bl	__divsi3
	add	r0, #112	@ 0x70
	strh	r0, [r4, #0]
.L_85dc:
	add	r1, sp, #12
	mov	r0, r8
	bl	func_800CCA0
	ldr	r2, .L_8628
	ldrh	r3, [r2, #0]
	mov	r4, #0
	ldrsh	r1, [r2, r4]
	mov	r0, #32
	neg	r0, r0
	cmp	r1, r0
	ble	.L_85f8
	sub	r0, r3, #2
	strh	r0, [r2, #0]
.L_85f8:
	mov	r5, #0
	ldrsh	r0, [r2, r5]
	cmp	r0, #31
	bgt	.L_8642
	ldr	r4, .L_862c
	mov	r1, #32
	sub	r1, r1, r0
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #1
	mov	r1, #5
	bl	__divsi3
	add	r0, #112	@ 0x70
	strh	r0, [r4, #0]
	b	.L_8642
.L_8618:
	.4byte	gUnk_3002C64
.L_861c:
	.4byte	gUnk_3002C60
.L_8620:
	.4byte	gUnk_3002C4A
.L_8624:
	.4byte	gUnk_3002C4C
.L_8628:
	.4byte	gUnk_3002C98
.L_862c:
	.4byte	gUnk_3002C9A
.L_8630:
	mov	r0, #7
	bl	func_800B84C
	cmp	r0, #0
	beq	.L_8642
	ldr	r1, .L_8890
.L_863c:
	ldrh	r0, [r1, #0]
	add	r0, #1
.L_8640:
	strh	r0, [r1, #0]
.L_8642:
	ldr	r1, .L_8894
	ldr	r0, .L_8898
	ldrh	r3, [r0, #0]
	strh	r3, [r1, #0]
	ldr	r2, .L_889c
	ldr	r0, .L_88a0
	ldrh	r1, [r0, #0]
	ldr	r0, [sp, #28]
	add	r1, r0, r1
	strh	r1, [r2, #0]
	ldr	r0, .L_88a4
	strh	r3, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	ldr	r7, .L_88a8
	ldr	r0, .L_88ac
	ldrh	r0, [r0, #0]
	cmp	r0, #10
	bhi	.L_8750
	ldr	r5, .L_88b0
	ldr	r6, .L_88b4
	mov	r1, #0
	lsl	r0, r3, #16
	cmp	r0, #0
	ble	.L_8676
	mov	r1, #1
.L_8676:
	add	r0, r1, #0
	bl	func_8007A6C
	add	r4, sp, #24
	mov	r0, r8
	add	r1, r4, #0
	bl	func_800CEAC
	ldr	r0, [sp, #24]
	ldrh	r2, [r5, #0]
	add	r5, #2
	ldrh	r3, [r6, #0]
	add	r6, #2
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
	mov	r0, r8
	add	r1, r4, #0
	bl	func_800CF90
	ldr	r0, [sp, #24]
	ldrh	r2, [r5, #0]
	add	r5, #2
	ldrh	r3, [r6, #0]
	add	r6, #2
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
	mov	r0, r8
	add	r1, r4, #0
	bl	func_800CF9C
	ldr	r0, [sp, #24]
	ldrh	r2, [r5, #0]
	add	r5, #2
	ldrh	r3, [r6, #0]
	add	r6, #2
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
	mov	r0, r8
	add	r1, r4, #0
	bl	func_800CFA8
	ldr	r0, [sp, #24]
	ldrh	r2, [r5, #0]
	add	r5, #2
	ldrh	r3, [r6, #0]
	add	r6, #2
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
	mov	r0, r8
	add	r1, r4, #0
	bl	func_800CFB4
	ldr	r0, [sp, #24]
	ldrh	r2, [r5, #0]
	add	r5, #2
	ldrh	r3, [r6, #0]
	add	r6, #2
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
	mov	r0, r8
	add	r0, #24
	add	r1, r4, #0
	bl	func_800CEAC
	ldr	r0, [sp, #24]
	ldrh	r2, [r5, #0]
	add	r5, #2
	ldrh	r3, [r6, #0]
	add	r6, #2
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
	mov	r0, r8
	add	r0, #56	@ 0x38
	add	r1, r4, #0
	bl	func_800CEAC
	ldr	r0, [sp, #24]
	ldrh	r2, [r5, #0]
	add	r5, #2
	ldrh	r3, [r6, #0]
	add	r6, #2
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
	mov	r0, r8
	add	r0, #72	@ 0x48
	add	r1, r4, #0
	bl	func_800CEAC
	ldr	r0, [sp, #24]
	ldrh	r2, [r5, #0]
	ldrh	r3, [r6, #0]
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
.L_8750:
	ldr	r1, .L_88ac
	mov	r9, r1
	ldrh	r0, [r1, #0]
	cmp	r0, #11
	bne	.L_8768
	ldr	r0, [sp, #20]
	add	r1, r7, #0
	mov	r2, #216	@ 0xd8
	mov	r3, #88	@ 0x58
	bl	func_800B5E4
	add	r7, r0, #0
.L_8768:
	ldr	r0, [sp, #12]
	ldr	r1, .L_88b8
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r4, .L_8898
	mov	r5, #0
	ldrsh	r1, [r4, r5]
	sub	r2, r2, r1
	ldr	r1, .L_88bc
	mov	r6, #0
	ldrsh	r3, [r1, r6]
	ldr	r5, .L_88a0
	mov	r6, #0
	ldrsh	r1, [r5, r6]
	sub	r1, #1
	sub	r3, r3, r1
	ldr	r1, [sp, #28]
	sub	r3, r3, r1
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
	ldr	r0, [sp, #16]
	ldr	r1, .L_88c0
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r6, #0
	ldrsh	r1, [r4, r6]
	sub	r2, r2, r1
	ldr	r1, .L_88c4
	mov	r6, #0
	ldrsh	r3, [r1, r6]
	mov	r6, #0
	ldrsh	r1, [r5, r6]
	sub	r3, r3, r1
	ldr	r1, [sp, #28]
	sub	r3, r3, r1
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
	mov	r2, r9
	ldrh	r0, [r2, #0]
	cmp	r0, #5
	bhi	.L_87f8
	ldr	r0, [sp, #8]
	ldr	r1, .L_88c8
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r6, #0
	ldrsh	r1, [r4, r6]
	sub	r2, r2, r1
	ldr	r1, .L_88cc
	mov	r3, #0
	ldrsh	r1, [r1, r3]
	add	r2, r2, r1
	ldr	r1, .L_88d0
	mov	r6, #0
	ldrsh	r3, [r1, r6]
	mov	r6, #0
	ldrsh	r1, [r5, r6]
	sub	r3, r3, r1
	ldr	r1, [sp, #28]
	sub	r3, r3, r1
	ldr	r1, .L_88d4
	mov	r6, #0
	ldrsh	r1, [r1, r6]
	add	r3, r3, r1
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
.L_87f8:
	ldr	r0, [sp, #4]
	ldr	r6, .L_88c8
	mov	r1, #0
	ldrsh	r2, [r6, r1]
	mov	r3, #0
	ldrsh	r1, [r4, r3]
	sub	r2, r2, r1
	ldr	r1, .L_88d0
	mov	r8, r1
	mov	r3, #0
	ldrsh	r1, [r1, r3]
	mov	ip, r1
	mov	r3, #0
	ldrsh	r1, [r5, r3]
	mov	r3, ip
	sub	r3, r3, r1
	ldr	r1, [sp, #28]
	sub	r3, r3, r1
	mov	ip, r3
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
	mov	r2, r9
	ldrh	r0, [r2, #0]
	cmp	r0, #5
	bls	.L_8862
	ldr	r0, [sp, #8]
	mov	r3, #0
	ldrsh	r2, [r6, r3]
	mov	r6, #0
	ldrsh	r1, [r4, r6]
	sub	r2, r2, r1
	ldr	r1, .L_88cc
	mov	r3, #0
	ldrsh	r1, [r1, r3]
	add	r2, r2, r1
	mov	r4, r8
	mov	r6, #0
	ldrsh	r3, [r4, r6]
	mov	r4, #0
	ldrsh	r1, [r5, r4]
	sub	r3, r3, r1
	ldr	r5, [sp, #28]
	sub	r3, r3, r5
	ldr	r1, .L_88d4
	mov	r6, #0
	ldrsh	r1, [r1, r6]
	add	r3, r3, r1
	add	r1, r7, #0
	bl	func_800B5E4
	add	r7, r0, #0
.L_8862:
	mov	r0, sl
	cmp	r0, #0
	beq	.L_8878
	ldr	r0, .L_88d8
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	mov	r0, #0
	mov	r1, #0
	add	r2, r3, #0
	bl	func_800B4C0
.L_8878:
	add	r0, r7, #0
	bl	func_800B684
	add	sp, #32
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8890:
	.4byte	gSubGameMode
.L_8894:
	.4byte	0x4000010
.L_8898:
	.4byte	gUnk_3002C46
.L_889c:
	.4byte	0x4000012
.L_88a0:
	.4byte	gUnk_3002C48
.L_88a4:
	.4byte	0x4000014
.L_88a8:
	.4byte	gOamBuffer
.L_88ac:
	.4byte	gUnk_3002C60
.L_88b0:
	.4byte	gUnk_3002CA8
.L_88b4:
	.4byte	gUnk_3002CB8
.L_88b8:
	.4byte	gUnk_3002C98
.L_88bc:
	.4byte	gUnk_3002C9A
.L_88c0:
	.4byte	gUnk_3002C9C
.L_88c4:
	.4byte	gUnk_3002C9E
.L_88c8:
	.4byte	gUnk_3002C4A
.L_88cc:
	.4byte	gUnk_3002CA0
.L_88d0:
	.4byte	gUnk_3002C4C
.L_88d4:
	.4byte	gUnk_3002CA2
.L_88d8:
	.4byte	gUnk_3002C82


thumb_func_start func_80088DC
func_80088DC:
	ldr	r0, .L_88e8
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_88ec
	mov	r0, #141	@ 0x8d
	b	.L_88fe
.L_88e8:
	.4byte	gUnk_3002C84
.L_88ec:
	cmp	r0, #1
	bne	.L_88f4
	mov	r0, #137	@ 0x89
	b	.L_88fe
.L_88f4:
	cmp	r0, #2
	beq	.L_88fc
	mov	r0, #126	@ 0x7e
	b	.L_88fe
.L_88fc:
	mov	r0, #132	@ 0x84
.L_88fe:
	bx	lr


thumb_func_start func_8008900
func_8008900:
	push	{r4, r5, lr}
	sub	sp, #4
	ldr	r4, .L_8a24
	ldr	r0, .L_8a28
	str	r0, [r4, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r4, #4]
	ldr	r0, .L_8a2c
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_8a30
	str	r0, [r4, #0]
	ldr	r0, .L_8a34
	str	r0, [r4, #4]
	ldr	r0, .L_8a38
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_8a3c
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r0, .L_8a40
	ldr	r1, .L_8a44
	bl	LZ77UnCompVram
	ldr	r0, .L_8a48
	ldr	r1, .L_8a4c
	bl	LZ77UnCompVram
	ldr	r0, .L_8a50
	ldr	r1, .L_8a54
	bl	LZ77UnCompVram
	ldr	r0, .L_8a58
	str	r0, [sp, #0]
	mov	r0, sp
	str	r0, [r4, #0]
	ldr	r1, .L_8a5c
	str	r1, [r4, #4]
	ldr	r0, .L_8a60
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_8a64
	bl	func_800B734
	ldr	r0, .L_8a68
	ldr	r1, .L_8a6c
	bl	func_800B734
	ldr	r0, .L_8a70
	ldr	r1, .L_8a74
	bl	func_800B734
	ldr	r0, .L_8a78
	ldr	r1, .L_8a7c
	bl	func_800B734
	ldr	r1, .L_8a80
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_8a84
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_8a88
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_8a8c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	mov	r0, #63	@ 0x3f
	bl	func_800B828
	ldr	r0, .L_8a90
	mov	r2, #16
	neg	r2, r2
	add	r1, r2, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_8a94
	mov	r5, #0
	strh	r5, [r0, #0]
	add	r0, #4
	strh	r1, [r0, #0]
	add	r0, #4
	strh	r5, [r0, #0]
	add	r0, #4
	strh	r5, [r0, #0]
	ldr	r4, .L_8a98
	bl	func_80088DC
	strh	r0, [r4, #0]
	ldr	r0, .L_8a9c
	mov	r2, #136	@ 0x88
	strh	r2, [r0, #0]
	ldr	r0, .L_8aa0
	mov	r1, #144	@ 0x90
	strh	r1, [r0, #0]
	ldr	r0, .L_8aa4
	strh	r2, [r0, #0]
	ldr	r0, .L_8aa8
	strh	r1, [r0, #0]
	ldr	r0, .L_8aac
	strh	r5, [r0, #0]
	ldr	r0, .L_8ab0
	strh	r5, [r0, #0]
	ldr	r0, .L_8ab4
	strh	r5, [r0, #0]
	bl	func_800B580
	ldr	r1, .L_8ab8
	ldr	r2, .L_8abc
	add	r0, r2, #0
	strh	r0, [r1, #0]
	sub	r1, #74	@ 0x4a
	mov	r2, #159	@ 0x9f
	lsl	r2, r2, #8
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r2, .L_8ac0
	ldr	r0, .L_8ac4
	ldr	r1, .L_8ac8
	add	r0, r0, r1
	ldrh	r1, [r0, #0]
	lsl	r0, r1, #1
	add	r0, r0, r1
	lsl	r0, r0, #2
	add	r0, r0, r2
	ldr	r0, [r0, #0]
	mov	r1, #30
	bl	m4aMPlayFadeOut
	mov	r0, #210	@ 0xd2
	lsl	r0, r0, #1
	bl	m4aSongNumStartOrChange
	add	sp, #4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8a24:
	.4byte	0x40000D4
.L_8a28:
	.4byte	sUnk_82A8820
.L_8a2c:
	.4byte	0x80000060
.L_8a30:
	.4byte	sUnk_82AA5B2
.L_8a34:
	.4byte	0x5000200
.L_8a38:
	.4byte	0x80000100
.L_8a3c:
	.4byte	sUnk_829B2C0
.L_8a40:
	.4byte	sUnk_82A88E0
.L_8a44:
	.4byte	0x6004400
.L_8a48:
	.4byte	sUnk_82A9508
.L_8a4c:
	.4byte	0x6006800
.L_8a50:
	.4byte	sUnk_82AA7B4
.L_8a54:
	.4byte	0x6010000
.L_8a58:
	.4byte	0x3FF03FF
.L_8a5c:
	.4byte	0x6008000
.L_8a60:
	.4byte	0x85000800
.L_8a64:
	.4byte	sUnk_82AA07C
.L_8a68:
	.4byte	sUnk_829D212
.L_8a6c:
	.4byte	0x6008800
.L_8a70:
	.4byte	sUnk_829D270
.L_8a74:
	.4byte	0x6009000
.L_8a78:
	.4byte	sUnk_82AA2B0
.L_8a7c:
	.4byte	0x6009800
.L_8a80:
	.4byte	0x4000008
.L_8a84:
	.4byte	0x1101
.L_8a88:
	.4byte	0x1202
.L_8a8c:
	.4byte	0x1303
.L_8a90:
	.4byte	gUnk_3002C98
.L_8a94:
	.4byte	0x4000012
.L_8a98:
	.4byte	gUnk_3002C9E
.L_8a9c:
	.4byte	gUnk_3002C4A
.L_8aa0:
	.4byte	gUnk_3002C4C
.L_8aa4:
	.4byte	gUnk_3002C9A
.L_8aa8:
	.4byte	gUnk_3002C9C
.L_8aac:
	.4byte	gUnk_3002CA0
.L_8ab0:
	.4byte	gUnk_3002CA2
.L_8ab4:
	.4byte	gUnk_3002CA4
.L_8ab8:
	.4byte	0x400004A
.L_8abc:
	.4byte	0x83F
.L_8ac0:
	.4byte	gMPlayTable
.L_8ac4:
	.4byte	gSongTable
.L_8ac8:
	.4byte	0x1904


thumb_func_start func_8008ACC
func_8008ACC:
	push	{r4, r5, r6, lr}
	lsl	r2, r2, #16
	lsr	r4, r2, #16
	cmp	r0, #0
	beq	.L_8b14
	ldrh	r2, [r0, #0]
	lsl	r0, r2, #3
	sub	r3, r1, r0
	lsl	r0, r4, #25
	lsr	r4, r0, #16
	sub	r0, r2, #1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	ldr	r0, .L_8b1c
	cmp	r2, r0
	beq	.L_8b14
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #2
	add	r6, r1, #0
	add	r5, r0, #0
.L_8af4:
	ldrh	r0, [r3, #0]
	orr	r0, r6
	sub	r0, #4
	strh	r0, [r3, #0]
	add	r3, #2
	ldrh	r1, [r3, #0]
	add	r0, r4, #0
	orr	r0, r1
	sub	r0, #4
	strh	r0, [r3, #0]
	add	r3, #6
	sub	r0, r2, #1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, r5
	bne	.L_8af4
.L_8b14:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_8b1c:
	.4byte	0xFFFF


thumb_func_start func_8008B20
func_8008B20:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #36	@ 0x24
	str	r0, [sp, #32]
	mov	r7, #0
	str	r7, [sp, #16]
	str	r7, [sp, #12]
	str	r7, [sp, #24]
	str	r7, [sp, #20]
	ldr	r6, .L_8b4c
	ldrh	r0, [r6, #0]
	cmp	r0, #1
	beq	.L_8bbc
	cmp	r0, #1
	bgt	.L_8b50
	cmp	r0, #0
	beq	.L_8b5c
	b	.L_8dbe
	.align	2, 0
.L_8b4c:
	.4byte	gUnk_3002C60
.L_8b50:
	cmp	r0, #2
	beq	.L_8c1c
	cmp	r0, #3
	bne	.L_8b5a
	b	.L_8ce4
.L_8b5a:
	b	.L_8dbe
.L_8b5c:
	mov	r0, #15
	bl	func_800B888
	cmp	r0, #0
	beq	.L_8b9e
	ldr	r2, .L_8b8c
	ldrh	r3, [r2, #0]
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	mov	r0, #120	@ 0x78
	neg	r0, r0
	cmp	r1, r0
	ble	.L_8b94
	mov	r0, #7
	ldr	r1, [sp, #32]
	and	r0, r1
	cmp	r0, #7
	bne	.L_8b9e
	ldr	r1, .L_8b90
	sub	r0, r3, #1
	strh	r0, [r2, #0]
	strh	r3, [r1, #0]
	b	.L_8b9e
	.align	2, 0
.L_8b8c:
	.4byte	gUnk_3002C98
.L_8b90:
	.4byte	0x4000016
.L_8b94:
	ldr	r0, .L_8bb4
	str	r7, [r0, #0]
	ldrh	r0, [r6, #0]
	add	r0, #1
	strh	r0, [r6, #0]
.L_8b9e:
	ldr	r2, .L_8bb8
	mov	r1, #3
	ldr	r0, [sp, #32]
	and	r0, r1
	sub	r0, #1
	strh	r0, [r2, #0]
	add	r1, sp, #12
	ldr	r0, [sp, #32]
	bl	func_800D1AC
	b	.L_8dbe
.L_8bb4:
	.4byte	gUnk_3002C64
.L_8bb8:
	.4byte	0x4000014
.L_8bbc:
	ldr	r4, .L_8bcc
	ldr	r0, [r4, #0]
	cmp	r0, #119	@ 0x77
	bhi	.L_8bd0
	add	r1, sp, #12
	bl	func_800D1EC
	b	.L_8c08
.L_8bcc:
	.4byte	gUnk_3002C64
.L_8bd0:
	cmp	r0, #239	@ 0xef
	bls	.L_8bf4
	sub	r0, #240	@ 0xf0
	add	r1, sp, #12
	bl	func_800D2B0
	cmp	r0, #0
	beq	.L_8c08
	str	r7, [r4, #0]
	ldr	r0, .L_8bf0
	str	r7, [r0, #0]
	ldrh	r0, [r6, #0]
	add	r0, #1
	strh	r0, [r6, #0]
	b	.L_8dbe
	.align	2, 0
.L_8bf0:
	.4byte	gUnk_3002C68
.L_8bf4:
	sub	r0, #120	@ 0x78
	add	r1, sp, #12
	bl	func_800D280
	ldr	r0, [r4, #0]
	cmp	r0, #120	@ 0x78
	bne	.L_8c08
	ldr	r0, .L_8c14
	bl	m4aSongNumStartOrChange
.L_8c08:
	ldr	r1, .L_8c18
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	b	.L_8dbe
	.align	2, 0
.L_8c14:
	.4byte	0x322
.L_8c18:
	.4byte	gUnk_3002C64
.L_8c1c:
	mov	r7, #1
	ldr	r0, .L_8c64
	mov	r2, #0
	ldrsh	r0, [r0, r2]
	cmp	r0, #0
	beq	.L_8c4a
	mov	r0, #214	@ 0xd6
	lsl	r0, r0, #1
	bl	m4aSongNumStartOrChange
	ldr	r0, .L_8c68
	mov	r3, #0
	ldrsh	r0, [r0, r3]
	cmp	r0, #1
	bne	.L_8c44
	ldr	r0, .L_8c6c
	strh	r7, [r0, #0]
	ldr	r1, .L_8c70
	mov	r0, #0
	strh	r0, [r1, #0]
.L_8c44:
	ldr	r1, .L_8c74
	mov	r0, #8
	str	r0, [r1, #0]
.L_8c4a:
	ldr	r4, .L_8c74
	ldr	r0, [r4, #0]
	cmp	r0, #0
	beq	.L_8c78
	add	r1, sp, #16
	mov	r0, #0
	bl	func_800D338
	ldr	r0, [r4, #0]
	sub	r0, #1
	str	r0, [r4, #0]
	b	.L_8c80
	.align	2, 0
.L_8c64:
	.4byte	gUnk_3002CA0
.L_8c68:
	.4byte	gUnk_3002CA2
.L_8c6c:
	.4byte	gUnk_3002CA4
.L_8c70:
	.4byte	gUnk_3002CA6
.L_8c74:
	.4byte	gUnk_3002C68
.L_8c78:
	add	r1, sp, #16
	mov	r0, #0
	bl	func_800D324
.L_8c80:
	ldr	r0, .L_8ca0
	mov	r4, #0
	ldrsh	r0, [r0, r4]
	cmp	r0, #0
	beq	.L_8ca8
	ldr	r2, .L_8ca4
	ldrh	r0, [r2, #0]
	add	r1, r0, #1
	strh	r1, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	add	r1, sp, #12
	bl	func_800D34C
	b	.L_8cb2
	.align	2, 0
.L_8ca0:
	.4byte	gUnk_3002CA4
.L_8ca4:
	.4byte	gUnk_3002CA6
.L_8ca8:
	ldr	r0, .L_8cd4
	ldr	r0, [r0, #0]
	add	r1, sp, #12
	bl	func_800D22C
.L_8cb2:
	ldr	r2, .L_8cd4
	ldr	r0, [r2, #0]
	add	r0, #1
	str	r0, [r2, #0]
	ldr	r0, .L_8cd8
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #4
	beq	.L_8cc6
	b	.L_8dbe
.L_8cc6:
	ldr	r1, .L_8cdc
	mov	r0, #0
	str	r0, [r1, #0]
	str	r0, [r2, #0]
	ldr	r1, .L_8ce0
	b	.L_8db8
	.align	2, 0
.L_8cd4:
	.4byte	gUnk_3002C64
.L_8cd8:
	.4byte	gUnk_3002CA2
.L_8cdc:
	.4byte	gUnk_3002C68
.L_8ce0:
	.4byte	gUnk_3002C60
.L_8ce4:
	ldr	r1, .L_8d04
	mov	r0, #96	@ 0x60
	strh	r0, [r1, #0]
	ldr	r1, .L_8d08
	mov	r0, #144	@ 0x90
	strh	r0, [r1, #0]
	ldr	r0, .L_8d0c
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_8d14
	ldr	r0, .L_8d10
	ldr	r0, [r0, #0]
	add	r1, sp, #16
	bl	func_800DE60
	b	.L_8d4a
.L_8d04:
	.4byte	gUnk_3002C9A
.L_8d08:
	.4byte	gUnk_3002C9C
.L_8d0c:
	.4byte	gUnk_3002C84
.L_8d10:
	.4byte	gUnk_3002C64
.L_8d14:
	cmp	r0, #1
	bne	.L_8d28
	ldr	r0, .L_8d24
	ldr	r0, [r0, #0]
	add	r1, sp, #16
	bl	func_800DC2C
	b	.L_8d4a
.L_8d24:
	.4byte	gUnk_3002C64
.L_8d28:
	cmp	r0, #2
	bne	.L_8d3c
	ldr	r0, .L_8d38
	ldr	r0, [r0, #0]
	add	r1, sp, #16
	bl	func_800D854
	b	.L_8d4a
.L_8d38:
	.4byte	gUnk_3002C64
.L_8d3c:
	cmp	r0, #3
	bne	.L_8d4c
	ldr	r0, .L_8d74
	ldr	r0, [r0, #0]
	add	r1, sp, #16
	bl	func_800DA40
.L_8d4a:
	add	r5, r0, #0
.L_8d4c:
	ldr	r1, .L_8d78
	cmp	r5, #2
	bne	.L_8d56
	mov	r0, #0
	strh	r0, [r1, #0]
.L_8d56:
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	cmp	r0, #0
	beq	.L_8d80
	ldr	r2, .L_8d7c
	ldrh	r0, [r2, #0]
	add	r1, r0, #1
	strh	r1, [r2, #0]
	lsl	r0, r0, #16
	asr	r0, r0, #16
	add	r1, sp, #12
	bl	func_800D34C
	b	.L_8d98
	.align	2, 0
.L_8d74:
	.4byte	gUnk_3002C64
.L_8d78:
	.4byte	gUnk_3002CA4
.L_8d7c:
	.4byte	gUnk_3002CA6
.L_8d80:
	ldr	r4, .L_9110
	ldr	r0, [r4, #0]
	add	r1, sp, #12
	bl	func_800D3C0
	ldr	r0, [r4, #0]
	add	r1, sp, #20
	bl	func_800D7E0
	ldr	r0, [r4, #0]
	add	r0, #1
	str	r0, [r4, #0]
.L_8d98:
	ldr	r0, .L_9114
	mov	r3, sp
	ldrh	r3, [r3, #32]
	strh	r3, [r0, #0]
	ldr	r1, .L_9118
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	cmp	r5, #1
	bne	.L_8dbe
	mov	r0, #7
	bl	func_800B84C
	cmp	r0, #0
	beq	.L_8dbe
	ldr	r1, .L_911c
.L_8db8:
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_8dbe:
	ldr	r4, .L_9120
	mov	r9, r4
	mov	r5, sp
	add	r5, #6
	cmp	r7, #0
	bne	.L_8dce
	bl	.L_99bc
.L_8dce:
	ldr	r0, .L_9118
	ldr	r4, [r0, #0]
	sub	r0, r4, #1
	mov	r8, r0
	cmp	r0, #0
	bne	.L_8de0
	ldr	r0, .L_9124
	bl	m4aSongNumStartOrChange
.L_8de0:
	mov	r1, r8
	cmp	r1, #90	@ 0x5a
	bne	.L_8dee
	mov	r0, #215	@ 0xd7
	lsl	r0, r0, #1
	bl	m4aSongNumStartOrChange
.L_8dee:
	mov	r0, #0
	ldr	r2, .L_9128
	strh	r0, [r2, #0]
	add	r3, sp, #24
	mov	sl, r3
	add	r6, sp, #8
	mov	r7, sp
	add	r7, #10
	mov	r0, r8
	cmp	r0, #44	@ 0x2c
	ble	.L_8e58
	sub	r4, #46	@ 0x2e
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D6CC
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800E8C8
	cmp	r0, #0
	beq	.L_8e34
	ldr	r1, .L_9128
	ldrh	r0, [r1, #0]
	mov	r1, #1
	orr	r0, r1
	ldr	r2, .L_9128
	strh	r0, [r2, #0]
	ldr	r1, .L_912c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_8e34:
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #4
	mov	r1, #0
	bl	func_800B4C0
.L_8e58:
	mov	r2, r8
	cmp	r2, #29
	ble	.L_8eb2
	mov	r4, r8
	sub	r4, #30
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D6B8
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800E868
	cmp	r0, #0
	beq	.L_8e8e
	ldr	r2, .L_9128
	ldrh	r0, [r2, #0]
	mov	r1, #1
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_912c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_8e8e:
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #3
	mov	r1, #0
	bl	func_800B4C0
.L_8eb2:
	mov	r2, r8
	cmp	r2, #14
	ble	.L_8f0c
	mov	r4, r8
	sub	r4, #15
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D6A4
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800E808
	cmp	r0, #0
	beq	.L_8ee8
	ldr	r2, .L_9128
	ldrh	r0, [r2, #0]
	mov	r1, #1
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_912c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_8ee8:
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #2
	mov	r1, #0
	bl	func_800B4C0
.L_8f0c:
	mov	r0, r8
	mov	r1, sl
	bl	func_800D690
	str	r7, [sp, #0]
	mov	r0, r8
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800E7A8
	cmp	r0, #0
	beq	.L_8f38
	ldr	r2, .L_9128
	ldrh	r0, [r2, #0]
	mov	r1, #1
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_912c
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_8f38:
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #1
	mov	r1, #0
	bl	func_800B4C0
	mov	r2, r8
	cmp	r2, #44	@ 0x2c
	ble	.L_8fae
	mov	r4, r8
	sub	r4, #45	@ 0x2d
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800F1C8
	cmp	r0, #0
	bne	.L_8fae
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #29
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #29
	mov	r1, #0
	bl	func_800B4C0
.L_8fae:
	mov	r2, r8
	cmp	r2, #48	@ 0x30
	ble	.L_9000
	mov	r4, r8
	sub	r4, #49	@ 0x31
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800F224
	cmp	r0, #0
	bne	.L_9000
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #30
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #30
	mov	r1, #0
	bl	func_800B4C0
.L_9000:
	mov	r2, r8
	cmp	r2, #52	@ 0x34
	ble	.L_9052
	mov	r4, r8
	sub	r4, #53	@ 0x35
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800F280
	cmp	r0, #0
	bne	.L_9052
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #31
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #31
	mov	r1, #0
	bl	func_800B4C0
.L_9052:
	mov	r2, r8
	cmp	r2, #56	@ 0x38
	ble	.L_90a4
	mov	r4, r8
	sub	r4, #57	@ 0x39
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800F2DC
	cmp	r0, #0
	bne	.L_90a4
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #31
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #31
	mov	r1, #0
	bl	func_800B4C0
.L_90a4:
	mov	r2, r8
	cmp	r2, #60	@ 0x3c
	ble	.L_90f6
	mov	r4, r8
	sub	r4, #61	@ 0x3d
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800F338
	cmp	r0, #0
	bne	.L_90f6
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #31
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #31
	mov	r1, #0
	bl	func_800B4C0
.L_90f6:
	mov	r2, r8
	cmp	r2, #64	@ 0x40
	ble	.L_916a
	mov	r4, r8
	sub	r4, #65	@ 0x41
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	b	.L_9130
.L_9110:
	.4byte	gUnk_3002C68
.L_9114:
	.4byte	0x400001E
.L_9118:
	.4byte	gUnk_3002C64
.L_911c:
	.4byte	gSubGameMode
.L_9120:
	.4byte	gOamBuffer
.L_9124:
	.4byte	0x1AD
.L_9128:
	.4byte	gUnk_3002CA0
.L_912c:
	.4byte	gUnk_3002CA2
.L_9130:
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800F394
	cmp	r0, #0
	bne	.L_916a
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #31
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #31
	mov	r1, #0
	bl	func_800B4C0
.L_916a:
	mov	r2, r8
	cmp	r2, #68	@ 0x44
	ble	.L_91bc
	mov	r4, r8
	sub	r4, #69	@ 0x45
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800F3F0
	cmp	r0, #0
	bne	.L_91bc
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #31
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #31
	mov	r1, #0
	bl	func_800B4C0
.L_91bc:
	mov	r2, r8
	cmp	r2, #72	@ 0x48
	ble	.L_920e
	mov	r4, r8
	sub	r4, #73	@ 0x49
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800F44C
	cmp	r0, #0
	bne	.L_920e
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #31
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #31
	mov	r1, #0
	bl	func_800B4C0
.L_920e:
	mov	r2, r8
	cmp	r2, #29
	ble	.L_9260
	mov	r4, r8
	sub	r4, #30
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800EEE8
	cmp	r0, #0
	bne	.L_9260
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #21
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #21
	mov	r1, #0
	bl	func_800B4C0
.L_9260:
	mov	r2, r8
	cmp	r2, #33	@ 0x21
	ble	.L_92b2
	mov	r4, r8
	sub	r4, #34	@ 0x22
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800EF44
	cmp	r0, #0
	bne	.L_92b2
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #22
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #22
	mov	r1, #0
	bl	func_800B4C0
.L_92b2:
	mov	r2, r8
	cmp	r2, #37	@ 0x25
	ble	.L_9304
	mov	r4, r8
	sub	r4, #38	@ 0x26
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800EFA0
	cmp	r0, #0
	bne	.L_9304
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #23
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #23
	mov	r1, #0
	bl	func_800B4C0
.L_9304:
	mov	r2, r8
	cmp	r2, #41	@ 0x29
	ble	.L_9356
	mov	r4, r8
	sub	r4, #42	@ 0x2a
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800EFFC
	cmp	r0, #0
	bne	.L_9356
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #24
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #24
	mov	r1, #0
	bl	func_800B4C0
.L_9356:
	mov	r2, r8
	cmp	r2, #45	@ 0x2d
	ble	.L_93a8
	mov	r4, r8
	sub	r4, #46	@ 0x2e
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800F058
	cmp	r0, #0
	bne	.L_93a8
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #25
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #25
	mov	r1, #0
	bl	func_800B4C0
.L_93a8:
	mov	r2, r8
	cmp	r2, #49	@ 0x31
	ble	.L_93fa
	mov	r4, r8
	sub	r4, #50	@ 0x32
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800F0B4
	cmp	r0, #0
	bne	.L_93fa
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #26
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #26
	mov	r1, #0
	bl	func_800B4C0
.L_93fa:
	mov	r2, r8
	cmp	r2, #53	@ 0x35
	ble	.L_944c
	mov	r4, r8
	sub	r4, #54	@ 0x36
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800F110
	cmp	r0, #0
	bne	.L_944c
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #27
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #27
	mov	r1, #0
	bl	func_800B4C0
.L_944c:
	mov	r2, r8
	cmp	r2, #57	@ 0x39
	ble	.L_949e
	mov	r4, r8
	sub	r4, #58	@ 0x3a
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800F16C
	cmp	r0, #0
	bne	.L_949e
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #28
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #28
	mov	r1, #0
	bl	func_800B4C0
.L_949e:
	mov	r2, r8
	cmp	r2, #14
	ble	.L_94f0
	mov	r4, r8
	sub	r4, #15
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800EC08
	cmp	r0, #0
	bne	.L_94f0
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #13
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #13
	mov	r1, #0
	bl	func_800B4C0
.L_94f0:
	mov	r2, r8
	cmp	r2, #18
	ble	.L_9542
	mov	r4, r8
	sub	r4, #19
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800EC64
	cmp	r0, #0
	bne	.L_9542
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #14
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #14
	mov	r1, #0
	bl	func_800B4C0
.L_9542:
	mov	r2, r8
	cmp	r2, #22
	ble	.L_9594
	mov	r4, r8
	sub	r4, #23
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800ECC0
	cmp	r0, #0
	bne	.L_9594
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #15
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #15
	mov	r1, #0
	bl	func_800B4C0
.L_9594:
	mov	r2, r8
	cmp	r2, #26
	ble	.L_95e6
	mov	r4, r8
	sub	r4, #27
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800ED1C
	cmp	r0, #0
	bne	.L_95e6
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #16
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #16
	mov	r1, #0
	bl	func_800B4C0
.L_95e6:
	mov	r2, r8
	cmp	r2, #30
	ble	.L_9638
	mov	r4, r8
	sub	r4, #31
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800ED78
	cmp	r0, #0
	bne	.L_9638
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #17
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #17
	mov	r1, #0
	bl	func_800B4C0
.L_9638:
	mov	r2, r8
	cmp	r2, #34	@ 0x22
	ble	.L_968a
	mov	r4, r8
	sub	r4, #35	@ 0x23
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800EDD4
	cmp	r0, #0
	bne	.L_968a
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #18
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #18
	mov	r1, #0
	bl	func_800B4C0
.L_968a:
	mov	r2, r8
	cmp	r2, #38	@ 0x26
	ble	.L_96dc
	mov	r4, r8
	sub	r4, #39	@ 0x27
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800EE30
	cmp	r0, #0
	bne	.L_96dc
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #19
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #19
	mov	r1, #0
	bl	func_800B4C0
.L_96dc:
	mov	r2, r8
	cmp	r2, #42	@ 0x2a
	ble	.L_972e
	mov	r4, r8
	sub	r4, #43	@ 0x2b
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800EE8C
	cmp	r0, #0
	bne	.L_972e
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #20
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #20
	mov	r1, #0
	bl	func_800B4C0
.L_972e:
	mov	r2, r8
	cmp	r2, #0
	blt	.L_977e
	mov	r4, r8
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800E928
	cmp	r0, #0
	bne	.L_977e
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #5
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #5
	mov	r1, #0
	bl	func_800B4C0
.L_977e:
	mov	r2, r8
	cmp	r2, #3
	ble	.L_97d0
	mov	r4, r8
	sub	r4, #4
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800E984
	cmp	r0, #0
	bne	.L_97d0
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #6
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #6
	mov	r1, #0
	bl	func_800B4C0
.L_97d0:
	mov	r2, r8
	cmp	r2, #7
	ble	.L_9822
	mov	r4, r8
	sub	r4, #8
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800E9E0
	cmp	r0, #0
	bne	.L_9822
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #7
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #7
	mov	r1, #0
	bl	func_800B4C0
.L_9822:
	mov	r2, r8
	cmp	r2, #11
	ble	.L_9874
	mov	r4, r8
	sub	r4, #12
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800EA3C
	cmp	r0, #0
	bne	.L_9874
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #8
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #8
	mov	r1, #0
	bl	func_800B4C0
.L_9874:
	mov	r2, r8
	cmp	r2, #15
	ble	.L_98c6
	mov	r4, r8
	sub	r4, #16
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800EA98
	cmp	r0, #0
	bne	.L_98c6
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #9
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #9
	mov	r1, #0
	bl	func_800B4C0
.L_98c6:
	mov	r2, r8
	cmp	r2, #19
	ble	.L_9918
	mov	r4, r8
	sub	r4, #20
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800EAF4
	cmp	r0, #0
	bne	.L_9918
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #10
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #10
	mov	r1, #0
	bl	func_800B4C0
.L_9918:
	mov	r2, r8
	cmp	r2, #23
	ble	.L_996a
	mov	r4, r8
	sub	r4, #24
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800EB50
	cmp	r0, #0
	bne	.L_996a
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #11
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #11
	mov	r1, #0
	bl	func_800B4C0
.L_996a:
	mov	r2, r8
	cmp	r2, #27
	ble	.L_99bc
	mov	r4, r8
	sub	r4, #28
	add	r0, r4, #0
	mov	r1, sl
	bl	func_800D708
	str	r7, [sp, #0]
	add	r0, r4, #0
	add	r1, sp, #4
	add	r2, r5, #0
	add	r3, r6, #0
	bl	func_800EBAC
	cmp	r0, #0
	bne	.L_99bc
	ldr	r0, [sp, #24]
	add	r1, sp, #4
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #24]
	mov	r1, r9
	mov	r2, #12
	bl	func_8008ACC
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	mov	r0, #12
	mov	r1, #0
	bl	func_800B4C0
.L_99bc:
	ldr	r0, .L_9a00
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_99f0
	ldr	r0, .L_9a04
	ldr	r0, [r0, #0]
	add	r1, sp, #28
	bl	func_800D6E0
	ldr	r0, [sp, #28]
	ldr	r1, .L_9a08
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	mov	r1, r9
	mov	r2, #184	@ 0xb8
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, .L_9a0c
	mov	r4, #0
	ldrsh	r3, [r0, r4]
	mov	r0, #0
	mov	r1, #0
	add	r2, r3, #0
	bl	func_800B4C0
.L_99f0:
	ldr	r0, .L_9a10
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_9a18
	ldr	r0, .L_9a14
	ldrh	r0, [r0, #0]
	sub	r0, #12
	b	.L_9a2e
.L_9a00:
	.4byte	gUnk_3002C80
.L_9a04:
	.4byte	gUnk_3002C64
.L_9a08:
	.4byte	gUnk_3002C9E
.L_9a0c:
	.4byte	gUnk_3002C82
.L_9a10:
	.4byte	gUnk_3002C84
.L_9a14:
	.4byte	gUnk_3002C9C
.L_9a18:
	cmp	r0, #1
	bne	.L_9a28
	ldr	r0, .L_9a24
	ldrh	r0, [r0, #0]
	sub	r0, #20
	b	.L_9a2e
.L_9a24:
	.4byte	gUnk_3002C9C
.L_9a28:
	ldr	r0, .L_9b24
	ldrh	r0, [r0, #0]
	sub	r0, #24
.L_9a2e:
	strh	r0, [r5, #0]
	ldr	r0, [sp, #20]
	ldr	r4, .L_9b28
	mov	r1, #0
	ldrsh	r2, [r4, r1]
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #16]
	mov	r3, #0
	ldrsh	r2, [r4, r3]
	ldr	r1, .L_9b24
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #12]
	ldr	r1, .L_9b2c
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r1, .L_9b30
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	mov	r1, r9
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, .L_9b34
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_9b0e
	add	r4, sp, #28
	ldr	r0, [sp, #32]
	add	r1, r4, #0
	bl	func_800D640
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #60	@ 0x3c
	mov	r3, #128	@ 0x80
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #32]
	add	r1, r4, #0
	bl	func_800D5A0
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #72	@ 0x48
	mov	r3, #130	@ 0x82
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #88	@ 0x58
	mov	r3, #134	@ 0x86
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #104	@ 0x68
	mov	r3, #138	@ 0x8a
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #120	@ 0x78
	mov	r3, #140	@ 0x8c
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #136	@ 0x88
	mov	r3, #136	@ 0x88
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #152	@ 0x98
	mov	r3, #132	@ 0x84
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #168	@ 0xa8
	mov	r3, #128	@ 0x80
	bl	func_800B5E4
	mov	r9, r0
	ldr	r0, [sp, #32]
	add	r1, r4, #0
	bl	func_800D5F0
	ldr	r0, [sp, #28]
	mov	r1, r9
	mov	r2, #180	@ 0xb4
	mov	r3, #128	@ 0x80
	bl	func_800B5E4
	mov	r9, r0
.L_9b0e:
	mov	r0, r9
	bl	func_800B684
	add	sp, #36	@ 0x24
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_9b24:
	.4byte	gUnk_3002C9C
.L_9b28:
	.4byte	gUnk_3002C9A
.L_9b2c:
	.4byte	gUnk_3002C4A
.L_9b30:
	.4byte	gUnk_3002C4C
.L_9b34:
	.4byte	gUnk_3002C60


thumb_func_start func_8009B38
func_8009B38:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #4
	ldr	r0, .L_9b98
	ldrh	r3, [r0, #0]
	ldr	r0, .L_9b9c
	str	r0, [sp, #0]
	ldr	r0, .L_9ba0
	mov	r1, sp
	str	r1, [r0, #0]
	ldr	r4, .L_9ba4
	str	r4, [r0, #4]
	ldr	r1, .L_9ba8
	str	r1, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_9bac
	str	r1, [r0, #0]
	mov	r1, #160	@ 0xa0
	lsl	r1, r1, #19
	str	r1, [r0, #4]
	ldr	r2, .L_9bb0
	str	r2, [r0, #8]
	ldr	r1, [r0, #8]
	ldr	r1, .L_9bb4
	str	r1, [r0, #0]
	ldr	r1, .L_9bb8
	str	r1, [r0, #4]
	str	r2, [r0, #8]
	ldr	r0, [r0, #8]
	cmp	r3, #0
	bne	.L_9bd0
	ldr	r0, .L_9bbc
	ldr	r1, .L_9bc0
	bl	LZ77UnCompVram
	ldr	r0, .L_9bc4
	add	r1, r4, #0
	bl	func_800B734
	ldr	r0, .L_9bc8
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r0, .L_9bcc
	b	.L_9c28
	.align	2, 0
.L_9b98:
	.4byte	gUnk_3002C84
.L_9b9c:
	.4byte	0x3FF03FF
.L_9ba0:
	.4byte	0x40000D4
.L_9ba4:
	.4byte	0x6008000
.L_9ba8:
	.4byte	0x85000A00
.L_9bac:
	.4byte	sUnk_82CFB22
.L_9bb0:
	.4byte	0x80000010
.L_9bb4:
	.4byte	sUnk_82CAEE6
.L_9bb8:
	.4byte	0x5000020
.L_9bbc:
	.4byte	sUnk_82CAF08
.L_9bc0:
	.4byte	0x6004000
.L_9bc4:
	.4byte	sUnk_82CBD78
.L_9bc8:
	.4byte	sUnk_82D1060
.L_9bcc:
	.4byte	sUnk_82D239C
.L_9bd0:
	cmp	r3, #1
	bne	.L_9c08
	ldr	r0, .L_9bf4
	ldr	r1, .L_9bf8
	bl	LZ77UnCompVram
	ldr	r0, .L_9bfc
	add	r1, r4, #0
	bl	func_800B734
	ldr	r0, .L_9c00
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r0, .L_9c04
	b	.L_9c28
	.align	2, 0
.L_9bf4:
	.4byte	sUnk_82CBE44
.L_9bf8:
	.4byte	0x6004000
.L_9bfc:
	.4byte	sUnk_82CD390
.L_9c00:
	.4byte	sUnk_82D1060
.L_9c04:
	.4byte	sUnk_82D239C
.L_9c08:
	cmp	r3, #2
	bne	.L_9c48
	ldr	r0, .L_9c30
	ldr	r1, .L_9c34
	bl	LZ77UnCompVram
	ldr	r0, .L_9c38
	add	r1, r4, #0
	bl	func_800B734
	ldr	r0, .L_9c3c
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r0, .L_9c40
.L_9c28:
	ldr	r1, .L_9c44
	bl	func_800B734
	b	.L_9c6a
.L_9c30:
	.4byte	sUnk_82CD4B4
.L_9c34:
	.4byte	0x6004000
.L_9c38:
	.4byte	sUnk_82CE598
.L_9c3c:
	.4byte	sUnk_82CFB44
.L_9c40:
	.4byte	sUnk_82D0F64
.L_9c44:
	.4byte	0x6009000
.L_9c48:
	ldr	r0, .L_9d48
	ldr	r1, .L_9d4c
	bl	LZ77UnCompVram
	ldr	r0, .L_9d50
	add	r1, r4, #0
	bl	func_800B734
	ldr	r0, .L_9d54
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r0, .L_9d58
	ldr	r1, .L_9d5c
	bl	func_800B734
.L_9c6a:
	ldr	r4, .L_9d60
	ldr	r0, .L_9d64
	str	r0, [r4, #0]
	ldr	r0, .L_9d68
	str	r0, [r4, #4]
	ldr	r0, .L_9d6c
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_9d70
	ldr	r1, .L_9d74
	bl	LZ77UnCompVram
	ldr	r0, .L_9d78
	ldr	r1, .L_9d7c
	bl	func_800B734
	ldr	r0, .L_9d80
	ldr	r1, .L_9d84
	bl	LZ77UnCompVram
	ldr	r0, .L_9d88
	str	r0, [r4, #0]
	ldr	r0, .L_9d8c
	str	r0, [r4, #4]
	ldr	r0, .L_9d90
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_9d94
	ldr	r1, .L_9d98
	bl	LZ77UnCompVram
	ldr	r1, .L_9d9c
	mov	r2, #160	@ 0xa0
	lsl	r2, r2, #7
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_9da0
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_9da4
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_9da8
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r4, .L_9dac
	mov	r1, #0
	ldrsh	r0, [r4, r1]
	ldr	r5, .L_9db0
	ldr	r2, .L_9db4
	mov	r8, r2
	mov	r1, #0
	add	r2, r5, #0
	mov	r3, r8
	bl	func_800F990
	mov	r1, #0
	ldrsh	r0, [r4, r1]
	ldr	r4, .L_9db8
	ldr	r6, .L_9dbc
	mov	r1, #0
	add	r2, r4, #0
	add	r3, r6, #0
	bl	func_800F940
	ldr	r1, .L_9dc0
	ldrh	r0, [r5, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	mov	r2, r8
	ldrh	r0, [r2, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldrh	r0, [r4, #0]
	strh	r0, [r1, #0]
	add	r1, #6
	ldrh	r0, [r6, #0]
	strh	r0, [r1, #0]
	ldr	r0, .L_9dc4
	mov	r1, #0
	strh	r1, [r0, #0]
	ldr	r0, .L_9dc8
	strh	r1, [r0, #0]
	ldr	r0, .L_9dcc
	mov	r1, #0
	str	r1, [r0, #0]
	ldr	r0, .L_9dd0
	strh	r1, [r0, #0]
	ldr	r1, .L_9dd4
	mov	r0, #16
	strh	r0, [r1, #0]
	bl	func_800B580
	mov	r0, #63	@ 0x3f
	bl	func_800B828
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #216	@ 0xd8
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L_9d48:
	.4byte	sUnk_82CE704
.L_9d4c:
	.4byte	0x6004000
.L_9d50:
	.4byte	sUnk_82CFA14
.L_9d54:
	.4byte	sUnk_82CFB44
.L_9d58:
	.4byte	sUnk_82D0F64
.L_9d5c:
	.4byte	0x6009000
.L_9d60:
	.4byte	0x40000D4
.L_9d64:
	.4byte	sUnk_82C9FCC
.L_9d68:
	.4byte	0x50001C0
.L_9d6c:
	.4byte	0x80000020
.L_9d70:
	.4byte	sUnk_82CA00C
.L_9d74:
	.4byte	0x6007000
.L_9d78:
	.4byte	sUnk_82CAD88
.L_9d7c:
	.4byte	0x6009800
.L_9d80:
	.4byte	sUnk_82CAC74
.L_9d84:
	.4byte	0x600A000
.L_9d88:
	.4byte	sUnk_82D248E
.L_9d8c:
	.4byte	0x5000200
.L_9d90:
	.4byte	0x80000010
.L_9d94:
	.4byte	sUnk_82D24B0
.L_9d98:
	.4byte	0x6010000
.L_9d9c:
	.4byte	0x4000008
.L_9da0:
	.4byte	0x1201
.L_9da4:
	.4byte	0x1302
.L_9da8:
	.4byte	0x1403
.L_9dac:
	.4byte	gUnk_3002C84
.L_9db0:
	.4byte	gUnk_3002C98
.L_9db4:
	.4byte	gUnk_3002C9A
.L_9db8:
	.4byte	gUnk_3002C9C
.L_9dbc:
	.4byte	gUnk_3002C9E
.L_9dc0:
	.4byte	0x4000010
.L_9dc4:
	.4byte	gUnk_3002CA0
.L_9dc8:
	.4byte	gUnk_3002CA2
.L_9dcc:
	.4byte	gUnk_3002C68
.L_9dd0:
	.4byte	gUnk_3002C5A
.L_9dd4:
	.4byte	gUnk_3002C5C


thumb_func_start func_8009DD8
func_8009DD8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	add	r7, r0, #0
	mov	r0, #0
	str	r0, [sp, #0]
	ldr	r0, .L_9dfc
	ldrh	r1, [r0, #0]
	add	r2, r0, #0
	cmp	r1, #4
	bls	.L_9df2
	b	.L_9f2e
.L_9df2:
	lsl	r0, r1, #2
	ldr	r1, .L_9e00
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
.L_9dfc:
	.4byte	gUnk_3002C60
.L_9e00:
	.4byte	.L_9e04
.L_9e04:
	.4byte	.L_9e18
	.4byte	.L_9e64
	.4byte	.L_9ea8
	.4byte	.L_9ec8
	.4byte	.L_9f1c
.L_9e18:
	mov	r0, #3
	bl	func_800B888
	cmp	r0, #0
	bne	.L_9e24
	b	.L_9f2e
.L_9e24:
	ldr	r2, .L_9e4c
	ldr	r0, .L_9e50
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #8
	ldr	r1, .L_9e54
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_9e58
	ldr	r2, .L_9e5c
	add	r0, r2, #0
	strh	r0, [r1, #0]
	sub	r1, #80	@ 0x50
	mov	r2, #248	@ 0xf8
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_9e60
	b	.L_9f28
	.align	2, 0
.L_9e4c:
	.4byte	0x4000052
.L_9e50:
	.4byte	gUnk_3002C5C
.L_9e54:
	.4byte	gUnk_3002C5A
.L_9e58:
	.4byte	0x4000050
.L_9e5c:
	.4byte	0x844
.L_9e60:
	.4byte	gUnk_3002C60
.L_9e64:
	mov	r0, #3
	and	r0, r7
	cmp	r0, #3
	bne	.L_9f2e
	ldr	r0, .L_9e9c
	ldrh	r1, [r0, #0]
	add	r3, r0, #0
	cmp	r1, #6
	bls	.L_9e82
	ldr	r1, .L_9ea0
	ldrh	r0, [r1, #0]
	cmp	r0, #8
	bls	.L_9e82
	sub	r0, #1
	strh	r0, [r1, #0]
.L_9e82:
	ldrh	r1, [r3, #0]
	cmp	r1, #13
	bhi	.L_9eb8
	add	r1, #1
	strh	r1, [r3, #0]
	ldr	r2, .L_9ea4
	ldr	r0, .L_9ea0
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #8
	orr	r1, r0
	strh	r1, [r2, #0]
	b	.L_9f2e
	.align	2, 0
.L_9e9c:
	.4byte	gUnk_3002C5A
.L_9ea0:
	.4byte	gUnk_3002C5C
.L_9ea4:
	.4byte	0x4000052
.L_9ea8:
	ldr	r1, .L_9ec0
	mov	r0, #1
	strh	r0, [r1, #0]
	ldr	r0, .L_9ec4
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #1
	bne	.L_9f2e
.L_9eb8:
	ldrh	r0, [r2, #0]
	add	r0, #1
	strh	r0, [r2, #0]
	b	.L_9f2e
.L_9ec0:
	.4byte	gUnk_3002CA0
.L_9ec4:
	.4byte	gUnk_3002CA2
.L_9ec8:
	mov	r0, #3
	and	r0, r7
	cmp	r0, #3
	bne	.L_9f2e
	ldr	r1, .L_9ef4
	ldrh	r0, [r1, #0]
	cmp	r0, #15
	bhi	.L_9edc
	add	r0, #1
	strh	r0, [r1, #0]
.L_9edc:
	ldr	r2, .L_9ef8
	ldrh	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_9f00
	sub	r0, #1
	strh	r0, [r2, #0]
	ldr	r2, .L_9efc
	ldrh	r1, [r1, #0]
	lsl	r1, r1, #8
	orr	r0, r1
	strh	r0, [r2, #0]
	b	.L_9f2e
.L_9ef4:
	.4byte	gUnk_3002C5C
.L_9ef8:
	.4byte	gUnk_3002C5A
.L_9efc:
	.4byte	0x4000052
.L_9f00:
	mov	r0, #63	@ 0x3f
	bl	func_800B804
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #216	@ 0xd8
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_9f18
	b	.L_9f28
	.align	2, 0
.L_9f18:
	.4byte	gUnk_3002C60
.L_9f1c:
	mov	r0, #7
	bl	func_800B84C
	cmp	r0, #0
	beq	.L_9f2e
	ldr	r1, .L_9fa8
.L_9f28:
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_9f2e:
	ldr	r4, .L_9fac
	mov	r1, #0
	ldrsh	r0, [r4, r1]
	ldr	r5, .L_9fb0
	ldr	r2, .L_9fb4
	mov	r8, r2
	add	r1, r7, #0
	add	r2, r5, #0
	mov	r3, r8
	bl	func_800F990
	mov	r1, #0
	ldrsh	r0, [r4, r1]
	ldr	r4, .L_9fb8
	ldr	r6, .L_9fbc
	add	r1, r7, #0
	add	r2, r4, #0
	add	r3, r6, #0
	bl	func_800F940
	ldr	r1, .L_9fc0
	ldrh	r0, [r5, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	mov	r2, r8
	ldrh	r0, [r2, #0]
	strh	r0, [r1, #0]
	add	r1, #2
	ldrh	r0, [r4, #0]
	strh	r0, [r1, #0]
	add	r1, #6
	ldrh	r0, [r6, #0]
	strh	r0, [r1, #0]
	sub	r1, #2
	asr	r0, r7, #1
	neg	r0, r0
	strh	r0, [r1, #0]
	add	r1, #4
	asr	r0, r7, #2
	neg	r0, r0
	strh	r0, [r1, #0]
	ldr	r0, .L_9fc4
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	beq	.L_9ff8
	ldr	r0, .L_9fc8
	ldr	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_9fd4
	ldr	r4, .L_9fcc
	ldr	r2, .L_9fd0
	ldr	r1, [r2, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r2, #0]
	mov	r1, sp
	bl	func_800F8A4
	b	.L_9fe6
	.align	2, 0
.L_9fa8:
	.4byte	gSubGameMode
.L_9fac:
	.4byte	gUnk_3002C84
.L_9fb0:
	.4byte	gUnk_3002C98
.L_9fb4:
	.4byte	gUnk_3002C9A
.L_9fb8:
	.4byte	gUnk_3002C9C
.L_9fbc:
	.4byte	gUnk_3002C9E
.L_9fc0:
	.4byte	0x4000010
.L_9fc4:
	.4byte	gUnk_3002CA0
.L_9fc8:
	.4byte	gUnk_3002C78
.L_9fcc:
	.4byte	gUnk_3002CA2
.L_9fd0:
	.4byte	gUnk_3002C68
.L_9fd4:
	ldr	r4, .L_a004
	ldr	r2, .L_a008
	ldr	r1, [r2, #0]
	add	r0, r1, #0
	add	r1, #1
	str	r1, [r2, #0]
	mov	r1, sp
	bl	func_800F7BC
.L_9fe6:
	strh	r0, [r4, #0]
	ldr	r0, [sp, #0]
	ldr	r1, .L_a00c
	mov	r2, #120	@ 0x78
	mov	r3, #140	@ 0x8c
	bl	func_800B5E4
	bl	func_800B684
.L_9ff8:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_a004:
	.4byte	gUnk_3002CA2
.L_a008:
	.4byte	gUnk_3002C68
.L_a00c:
	.4byte	gOamBuffer


thumb_func_start func_800A010
func_800A010:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r1, r0, #0
	ldr	r5, .L_a07c
	ldr	r4, .L_a080
	ldr	r0, .L_a084
	mov	ip, r0
	mov	r7, #109	@ 0x6d
	mov	r8, r7
	ldr	r6, .L_a088
	mov	r3, #7
.L_a028:
	mov	r0, r8
	mul	r0, r1
	add	r1, r0, #0
	add	r2, r1, r6
	add	r0, r2, #0
	cmp	r2, #0
	bge	.L_a03a
	ldr	r7, .L_a08c
	add	r0, r1, r7
.L_a03a:
	asr	r1, r0, #6
	lsl	r0, r1, #6
	sub	r1, r2, r0
	add	r0, r1, #0
	add	r0, #24
	lsl	r0, r0, #8
	strh	r0, [r5, #0]
	add	r5, #2
	mov	r0, r8
	mul	r0, r1
	add	r1, r0, #0
	add	r2, r1, r6
	add	r0, r2, #0
	cmp	r2, #0
	bge	.L_a05c
	ldr	r7, .L_a090
	add	r0, r1, r7
.L_a05c:
	asr	r1, r0, #5
	lsl	r0, r1, #5
	sub	r1, r2, r0
	strh	r1, [r4, #0]
	add	r4, #2
	sub	r3, #1
	cmp	r3, #0
	bge	.L_a028
	mov	r0, ip
	strh	r1, [r0, #0]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_a07c:
	.4byte	gUnk_3002CA8
.L_a080:
	.4byte	gUnk_3002CB8
.L_a084:
	.4byte	gUnk_3002CA6
.L_a088:
	.4byte	0x3FD
.L_a08c:
	.4byte	0x43C
.L_a090:
	.4byte	0x41C


thumb_func_start func_800A094
func_800A094:
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L_a16c
	ldr	r3, .L_a170
	add	r2, r3, #0
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	add	r3, #2
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	add	r3, #2
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	add	r3, #2
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	add	r3, #2
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	add	r3, #2
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	add	r3, #2
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	add	r3, #2
	ldrh	r0, [r3, #0]
	add	r0, #1
	strh	r0, [r3, #0]
	add	r1, r4, #0
	ldrh	r0, [r4, #0]
	add	r0, #35	@ 0x23
	strh	r0, [r4, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	add	r0, #35	@ 0x23
	strh	r0, [r4, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	add	r0, #35	@ 0x23
	strh	r0, [r4, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	add	r0, #35	@ 0x23
	strh	r0, [r4, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	add	r0, #35	@ 0x23
	strh	r0, [r4, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	add	r0, #35	@ 0x23
	strh	r0, [r4, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	add	r0, #35	@ 0x23
	strh	r0, [r4, #0]
	add	r4, #2
	ldrh	r0, [r4, #0]
	add	r0, #35	@ 0x23
	strh	r0, [r4, #0]
	add	r4, r1, #0
	add	r3, r2, #0
	mov	r6, #7
.L_a120:
	ldrh	r1, [r3, #0]
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	cmp	r0, #32
	ble	.L_a15a
	add	r0, r1, #0
	sub	r0, #40	@ 0x28
	strh	r0, [r3, #0]
	ldr	r5, .L_a174
	mov	r7, #0
	ldrsh	r1, [r5, r7]
	mov	r0, #109	@ 0x6d
	mul	r1, r0
	ldr	r0, .L_a178
	add	r2, r1, r0
	add	r0, r2, #0
	cmp	r2, #0
	bge	.L_a148
	ldr	r7, .L_a17c
	add	r0, r1, r7
.L_a148:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r2, r0
	strh	r0, [r5, #0]
	mov	r1, #0
	ldrsh	r0, [r5, r1]
	add	r0, #24
	lsl	r0, r0, #8
	strh	r0, [r4, #0]
.L_a15a:
	sub	r6, #1
	add	r4, #2
	add	r3, #2
	cmp	r6, #0
	bge	.L_a120
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_a16c:
	.4byte	gUnk_3002CA8
.L_a170:
	.4byte	gUnk_3002CB8
.L_a174:
	.4byte	gUnk_3002CA6
.L_a178:
	.4byte	0x3FD
.L_a17c:
	.4byte	0x43C


thumb_func_start func_800A180
func_800A180:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_a26c
	ldr	r0, .L_a270
	str	r0, [r4, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r4, #4]
	ldr	r0, .L_a274
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_a278
	str	r0, [r4, #0]
	ldr	r0, .L_a27c
	str	r0, [r4, #4]
	ldr	r0, .L_a280
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_a284
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r0, .L_a288
	ldr	r1, .L_a28c
	bl	LZ77UnCompVram
	ldr	r0, .L_a290
	ldr	r1, .L_a294
	bl	LZ77UnCompVram
	ldr	r0, .L_a298
	ldr	r1, .L_a29c
	bl	LZ77UnCompVram
	ldr	r0, .L_a2a0
	str	r0, [sp, #0]
	mov	r0, sp
	str	r0, [r4, #0]
	ldr	r1, .L_a2a4
	str	r1, [r4, #4]
	ldr	r0, .L_a2a8
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_a2ac
	bl	func_800B734
	ldr	r0, .L_a2b0
	str	r0, [sp, #0]
	mov	r2, sp
	str	r2, [r4, #0]
	ldr	r1, .L_a2b4
	str	r1, [r4, #4]
	ldr	r0, .L_a2b8
	str	r0, [r4, #8]
	ldr	r0, [r4, #8]
	ldr	r0, .L_a2bc
	bl	func_800B734
	ldr	r0, .L_a2c0
	ldr	r1, .L_a2c4
	bl	func_800B734
	ldr	r1, .L_a2c8
	mov	r2, #144	@ 0x90
	lsl	r2, r2, #8
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_a2cc
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_a2d0
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r0, .L_a2d4
	mov	r1, #0
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #4
	strh	r1, [r0, #0]
	add	r0, #4
	strh	r1, [r0, #0]
	add	r0, #4
	strh	r1, [r0, #0]
	ldr	r1, .L_a2d8
	mov	r0, #136	@ 0x88
	strh	r0, [r1, #0]
	ldr	r0, .L_a2dc
	mov	r2, #144	@ 0x90
	strh	r2, [r0, #0]
	ldr	r1, .L_a2e0
	mov	r0, #96	@ 0x60
	strh	r0, [r1, #0]
	ldr	r0, .L_a2e4
	strh	r2, [r0, #0]
	ldr	r1, .L_a2e8
	mov	r0, #184	@ 0xb8
	strh	r0, [r1, #0]
	ldr	r4, .L_a2ec
	bl	func_80088DC
	strh	r0, [r4, #0]
	ldr	r1, .L_a2f0
	sub	r0, #4
	strh	r0, [r1, #0]
	ldr	r0, .L_a2f4
	ldrh	r1, [r0, #0]
	cmp	r1, #0
	beq	.L_a264
	cmp	r1, #1
	bne	.L_a2fc
.L_a264:
	ldr	r0, .L_a2f8
	strh	r1, [r0, #0]
	b	.L_a312
	.align	2, 0
.L_a26c:
	.4byte	0x40000D4
.L_a270:
	.4byte	sUnk_82A8820
.L_a274:
	.4byte	0x80000060
.L_a278:
	.4byte	sUnk_82AA5B2
.L_a27c:
	.4byte	0x5000200
.L_a280:
	.4byte	0x80000100
.L_a284:
	.4byte	sUnk_829B2C0
.L_a288:
	.4byte	sUnk_82A88E0
.L_a28c:
	.4byte	0x6004400
.L_a290:
	.4byte	sUnk_82A9508
.L_a294:
	.4byte	0x6006800
.L_a298:
	.4byte	sUnk_82AA7B4
.L_a29c:
	.4byte	0x6010000
.L_a2a0:
	.4byte	0x43404340
.L_a2a4:
	.4byte	0x6008000
.L_a2a8:
	.4byte	0x85000400
.L_a2ac:
	.4byte	sUnk_82AA202
.L_a2b0:
	.4byte	0x3FF03FF
.L_a2b4:
	.4byte	0x6009000
.L_a2b8:
	.4byte	0x85000200
.L_a2bc:
	.4byte	sUnk_82AA07C
.L_a2c0:
	.4byte	sUnk_829D270
.L_a2c4:
	.4byte	0x6009800
.L_a2c8:
	.4byte	0x4000008
.L_a2cc:
	.4byte	0x1201
.L_a2d0:
	.4byte	0x1302
.L_a2d4:
	.4byte	0x4000010
.L_a2d8:
	.4byte	gUnk_3002C4A
.L_a2dc:
	.4byte	gUnk_3002C4C
.L_a2e0:
	.4byte	gUnk_3002C98
.L_a2e4:
	.4byte	gUnk_3002C9A
.L_a2e8:
	.4byte	gUnk_3002C9C
.L_a2ec:
	.4byte	gUnk_3002C9E
.L_a2f0:
	.4byte	gUnk_3002CA0
.L_a2f4:
	.4byte	gUnk_3002C84
.L_a2f8:
	.4byte	gUnk_3002CA2
.L_a2fc:
	cmp	r1, #2
	bne	.L_a30c
	ldr	r1, .L_a308
	mov	r0, #3
	b	.L_a310
	.align	2, 0
.L_a308:
	.4byte	gUnk_3002CA2
.L_a30c:
	ldr	r1, .L_a34c
	mov	r0, #7
.L_a310:
	strh	r0, [r1, #0]
.L_a312:
	ldr	r0, .L_a350
	mov	r4, #0
	str	r4, [r0, #0]
	ldr	r0, .L_a354
	strh	r4, [r0, #0]
	mov	r0, #0
	bl	func_800A010
	ldr	r0, .L_a358
	strh	r4, [r0, #0]
	ldr	r1, .L_a35c
	mov	r0, #16
	strh	r0, [r1, #0]
	bl	func_800B580
	mov	r0, #22
	bl	func_800B828
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #176	@ 0xb0
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_a34c:
	.4byte	gUnk_3002CA2
.L_a350:
	.4byte	gUnk_3002C68
.L_a354:
	.4byte	gUnk_3002CA4
.L_a358:
	.4byte	gUnk_3002C5A
.L_a35c:
	.4byte	gUnk_3002C5C


thumb_func_start func_800A360
func_800A360:
	push	{lr}
	add	r2, r0, #0
	ldr	r0, .L_a37c
	and	r2, r0
	ldr	r0, .L_a380
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_a384
	mov	r3, #135	@ 0x87
	lsl	r3, r3, #1
	add	r0, r2, r3
	bl	func_800DE60
	b	.L_a3b2
.L_a37c:
	.4byte	0x1FF
.L_a380:
	.4byte	gUnk_3002C84
.L_a384:
	cmp	r0, #1
	bne	.L_a394
	mov	r3, #159	@ 0x9f
	lsl	r3, r3, #1
	add	r0, r2, r3
	bl	func_800DC2C
	b	.L_a3b2
.L_a394:
	cmp	r0, #2
	bne	.L_a3a4
	mov	r3, #149	@ 0x95
	lsl	r3, r3, #1
	add	r0, r2, r3
	bl	func_800D854
	b	.L_a3b2
.L_a3a4:
	cmp	r0, #3
	bne	.L_a3b2
	mov	r3, #148	@ 0x94
	lsl	r3, r3, #1
	add	r0, r2, r3
	bl	func_800DA40
.L_a3b2:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_800A3B8
func_800A3B8:
	push	{lr}
	add	r2, r0, #0
	ldr	r0, .L_a3cc
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_a3d0
	add	r0, r2, #0
	bl	func_800E144
	b	.L_a3f2
.L_a3cc:
	.4byte	gUnk_3002C84
.L_a3d0:
	cmp	r0, #1
	bne	.L_a3dc
	add	r0, r2, #0
	bl	func_800E174
	b	.L_a3f2
.L_a3dc:
	cmp	r0, #2
	bne	.L_a3e8
	add	r0, r2, #0
	bl	func_800E0CC
	b	.L_a3f2
.L_a3e8:
	cmp	r0, #3
	bne	.L_a3f2
	add	r0, r2, #0
	bl	func_800E108
.L_a3f2:
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_800A3F8
func_800A3F8:
	push	{r4, lr}
	cmp	r0, #0
	beq	.L_a432
	ldrh	r2, [r0, #0]
	lsl	r0, r2, #3
	sub	r1, r1, r0
	sub	r0, r2, #1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	ldr	r0, .L_a438
	cmp	r2, r0
	beq	.L_a432
	mov	r4, #128	@ 0x80
	lsl	r4, r4, #3
	add	r3, r4, #0
	add	r4, r0, #0
.L_a418:
	ldrh	r0, [r1, #0]
	orr	r0, r3
	strh	r0, [r1, #0]
	add	r1, #4
	ldrh	r0, [r1, #0]
	orr	r0, r3
	strh	r0, [r1, #0]
	add	r1, #4
	sub	r0, r2, #1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, r4
	bne	.L_a418
.L_a432:
	pop	{r4}
	pop	{r0}
	bx	r0
.L_a438:
	.4byte	0xFFFF


thumb_func_start func_800A43C
func_800A43C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #28
	mov	sl, r0
	mov	r0, #0
	str	r0, [sp, #24]
	str	r0, [sp, #4]
	str	r0, [sp, #8]
	str	r0, [sp, #20]
	str	r0, [sp, #12]
	ldr	r0, .L_a46c
	ldrh	r0, [r0, #0]
	cmp	r0, #10
	bls	.L_a460
	b	.L_a90e
.L_a460:
	lsl	r0, r0, #2
	ldr	r1, .L_a470
	add	r0, r0, r1
	ldr	r0, [r0, #0]
	mov	pc, r0
	.align	2, 0
.L_a46c:
	.4byte	gUnk_3002C60
.L_a470:
	.4byte	.L_a474
.L_a474:
	.4byte	.L_a4a0
	.4byte	.L_a510
	.4byte	.L_a588
	.4byte	.L_a5d8
	.4byte	.L_a670
	.4byte	.L_a6d0
	.4byte	.L_a6f8
	.4byte	.L_a77c
	.4byte	.L_a7ee
	.4byte	.L_a878
	.4byte	.L_a8fc
.L_a4a0:
	mov	r0, #7
	bl	func_800B888
	cmp	r0, #0
	beq	.L_a4e0
	ldr	r1, .L_a4f0
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	cmp	r0, #121	@ 0x79
	bne	.L_a4e0
	ldr	r2, .L_a4f4
	ldr	r0, .L_a4f8
	ldrh	r0, [r0, #0]
	lsl	r0, r0, #8
	ldr	r1, .L_a4fc
	ldrh	r1, [r1, #0]
	orr	r0, r1
	strh	r0, [r2, #0]
	ldr	r1, .L_a500
	ldr	r2, .L_a504
	add	r0, r2, #0
	strh	r0, [r1, #0]
	sub	r1, #80	@ 0x50
	mov	r3, #184	@ 0xb8
	lsl	r3, r3, #5
	add	r0, r3, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_a508
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_a4e0:
	add	r1, sp, #4
	mov	r0, sl
	bl	func_800A360
	ldr	r1, .L_a50c
	mov	r0, #1
	strh	r0, [r1, #0]
	b	.L_a568
.L_a4f0:
	.4byte	gUnk_3002C64
.L_a4f4:
	.4byte	0x4000052
.L_a4f8:
	.4byte	gUnk_3002C5C
.L_a4fc:
	.4byte	gUnk_3002C5A
.L_a500:
	.4byte	0x4000050
.L_a504:
	.4byte	0x1641
.L_a508:
	.4byte	gUnk_3002C60
.L_a50c:
	.4byte	gUnk_3002CA4
.L_a510:
	mov	r0, #15
	mov	r4, sl
	and	r0, r4
	cmp	r0, #15
	bne	.L_a560
	ldr	r4, .L_a574
	ldrh	r0, [r4, #0]
	cmp	r0, #9
	bhi	.L_a526
	add	r0, #1
	strh	r0, [r4, #0]
.L_a526:
	ldr	r1, .L_a578
	ldrh	r0, [r1, #0]
	cmp	r0, #10
	bls	.L_a532
	sub	r0, #1
	strh	r0, [r1, #0]
.L_a532:
	ldr	r0, .L_a57c
	ldrh	r1, [r1, #0]
	lsl	r1, r1, #8
	ldrh	r2, [r4, #0]
	orr	r1, r2
	strh	r1, [r0, #0]
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	cmp	r2, #2
	bne	.L_a54c
	mov	r0, #151	@ 0x97
	bl	m4aSongNumStartOrChange
.L_a54c:
	ldrh	r0, [r4, #0]
	cmp	r0, #10
	bne	.L_a560
	ldr	r1, .L_a580
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_a584
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_a560:
	add	r1, sp, #4
	mov	r0, sl
	bl	func_800A360
.L_a568:
	add	r1, sp, #8
	mov	r0, #0
	bl	func_800D3F0
	b	.L_a90e
	.align	2, 0
.L_a574:
	.4byte	gUnk_3002C5A
.L_a578:
	.4byte	gUnk_3002C5C
.L_a57c:
	.4byte	0x4000052
.L_a580:
	.4byte	gUnk_3002C64
.L_a584:
	.4byte	gUnk_3002C60
.L_a588:
	add	r1, sp, #8
	mov	r0, #0
	bl	func_800D3F0
	add	r1, sp, #4
	mov	r0, sl
	bl	func_800A360
	ldr	r0, .L_a5c0
	ldrh	r0, [r0, #0]
	ldr	r4, .L_a5c4
	ldr	r1, [r4, #0]
	ldr	r2, .L_a5c8
	ldr	r3, .L_a5cc
	bl	func_800F4A8
	ldr	r0, [r4, #0]
	add	r0, #1
	str	r0, [r4, #0]
	cmp	r0, #232	@ 0xe8
	beq	.L_a5b4
	b	.L_a90e
.L_a5b4:
	ldr	r1, .L_a5d0
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_a5d4
	b	.L_a908
	.align	2, 0
.L_a5c0:
	.4byte	gUnk_3002C84
.L_a5c4:
	.4byte	gUnk_3002C64
.L_a5c8:
	.4byte	gUnk_3002C98
.L_a5cc:
	.4byte	gUnk_3002C9A
.L_a5d0:
	.4byte	gUnk_3002C68
.L_a5d4:
	.4byte	gUnk_3002C60
.L_a5d8:
	mov	r5, #1
	str	r5, [sp, #24]
	ldr	r0, .L_a5f4
	ldr	r2, [r0, #0]
	mov	r0, #179	@ 0xb3
	lsl	r0, r0, #1
	cmp	r2, r0
	bhi	.L_a5f8
	add	r1, sp, #4
	mov	r0, sl
	bl	func_800A360
	b	.L_a600
	.align	2, 0
.L_a5f4:
	.4byte	gUnk_3002C64
.L_a5f8:
	add	r1, sp, #4
	add	r0, r2, #0
	bl	func_800A3B8
.L_a600:
	ldr	r0, .L_a634
	ldrh	r0, [r0, #0]
	ldr	r4, .L_a638
	ldr	r1, [r4, #0]
	ldr	r2, .L_a63c
	ldr	r3, .L_a640
	bl	func_800F4A8
	cmp	r0, #0
	beq	.L_a620
	mov	r0, #0
	str	r0, [sp, #24]
	ldr	r1, .L_a644
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_a620:
	ldr	r2, [r4, #0]
	ldr	r0, .L_a648
	cmp	r2, r0
	bhi	.L_a64c
	add	r1, sp, #8
	add	r0, r2, #0
	bl	func_800D3F0
	b	.L_a656
	.align	2, 0
.L_a634:
	.4byte	gUnk_3002C84
.L_a638:
	.4byte	gUnk_3002C64
.L_a63c:
	.4byte	gUnk_3002C98
.L_a640:
	.4byte	gUnk_3002C9A
.L_a644:
	.4byte	gUnk_3002C60
.L_a648:
	.4byte	0x1DF
.L_a64c:
	ldr	r1, .L_a664
	add	r0, r2, r1
	add	r1, sp, #8
	bl	func_800D510
.L_a656:
	ldr	r1, .L_a668
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	ldr	r1, .L_a66c
	b	.L_a8e4
	.align	2, 0
.L_a664:
	.4byte	0xFFFFFE20
.L_a668:
	.4byte	gUnk_3002C64
.L_a66c:
	.4byte	gUnk_3002C68
.L_a670:
	mov	r0, #15
	mov	r2, sl
	and	r0, r2
	cmp	r0, #15
	bne	.L_a6b2
	ldr	r2, .L_a6bc
	ldrh	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_a686
	sub	r0, #1
	strh	r0, [r2, #0]
.L_a686:
	ldr	r1, .L_a6c0
	ldrh	r0, [r1, #0]
	cmp	r0, #15
	bhi	.L_a692
	add	r0, #1
	strh	r0, [r1, #0]
.L_a692:
	ldr	r0, .L_a6c4
	ldrh	r1, [r1, #0]
	lsl	r1, r1, #8
	ldrh	r2, [r2, #0]
	orr	r1, r2
	strh	r1, [r0, #0]
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	cmp	r2, #0
	bne	.L_a6b2
	ldr	r0, .L_a6c8
	str	r2, [r0, #0]
	ldr	r1, .L_a6cc
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_a6b2:
	add	r1, sp, #8
	mov	r0, #0
	bl	func_800D4FC
	b	.L_a90e
.L_a6bc:
	.4byte	gUnk_3002C5A
.L_a6c0:
	.4byte	gUnk_3002C5C
.L_a6c4:
	.4byte	0x4000052
.L_a6c8:
	.4byte	gUnk_3002C64
.L_a6cc:
	.4byte	gUnk_3002C60
.L_a6d0:
	add	r1, sp, #8
	mov	r0, #0
	bl	func_800D4FC
	ldr	r1, .L_a6f0
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	cmp	r0, #121	@ 0x79
	beq	.L_a6e6
	b	.L_a90e
.L_a6e6:
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_a6f4
	b	.L_a908
	.align	2, 0
.L_a6f0:
	.4byte	gUnk_3002C64
.L_a6f4:
	.4byte	gUnk_3002C60
.L_a6f8:
	ldr	r4, .L_a70c
	ldr	r1, [r4, #0]
	cmp	r1, #64	@ 0x40
	bhi	.L_a710
	add	r1, sp, #8
	mov	r0, #0
	bl	func_800D4E8
	b	.L_a8e2
	.align	2, 0
.L_a70c:
	.4byte	gUnk_3002C64
.L_a710:
	cmp	r1, #119	@ 0x77
	bhi	.L_a734
	add	r0, r1, #0
	sub	r0, #65	@ 0x41
	add	r1, sp, #8
	bl	func_800D404
	ldr	r0, [r4, #0]
	cmp	r0, #65	@ 0x41
	beq	.L_a726
	b	.L_a8e2
.L_a726:
	ldr	r0, .L_a730
	bl	m4aSongNumStartOrChange
	b	.L_a8e2
	.align	2, 0
.L_a730:
	.4byte	0x1A5
.L_a734:
	ldr	r0, .L_a748
	cmp	r1, r0
	bhi	.L_a74c
	add	r0, r1, #0
	sub	r0, #120	@ 0x78
	add	r1, sp, #8
	bl	func_800D44C
	b	.L_a8e2
	.align	2, 0
.L_a748:
	.4byte	0x137
.L_a74c:
	mov	r0, #156	@ 0x9c
	lsl	r0, r0, #1
	cmp	r1, r0
	bne	.L_a75a
	add	r0, #110	@ 0x6e
	bl	m4aSongNumStartOrChange
.L_a75a:
	ldr	r0, [r4, #0]
	ldr	r3, .L_a774
	add	r0, r0, r3
	add	r1, sp, #8
	bl	func_800D488
	cmp	r0, #0
	bne	.L_a76c
	b	.L_a8e2
.L_a76c:
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_a778
	b	.L_a908
.L_a774:
	.4byte	0xFFFFFEC8
.L_a778:
	.4byte	gUnk_3002C60
.L_a77c:
	ldr	r4, .L_a798
	mov	r5, #0
	ldrsh	r0, [r4, r5]
	cmp	r0, #183	@ 0xb7
	bgt	.L_a7a0
	ldr	r0, .L_a79c
	ldr	r0, [r0, #0]
	add	r1, sp, #8
	bl	func_800E440
	ldrh	r0, [r4, #0]
	add	r0, #2
	strh	r0, [r4, #0]
	b	.L_a8e2
.L_a798:
	.4byte	gUnk_3002C4A
.L_a79c:
	.4byte	gUnk_3002C64
.L_a7a0:
	ldr	r4, .L_a7d4
	ldr	r0, [r4, #0]
	add	r1, sp, #8
	bl	func_800E4CC
	ldr	r0, .L_a7d8
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r0, sl
	and	r0, r1
	cmp	r0, r1
	beq	.L_a7ba
	b	.L_a8e2
.L_a7ba:
	ldr	r2, .L_a7dc
	ldr	r0, .L_a7e0
	ldrh	r3, [r2, #0]
	mov	r5, #0
	ldrsh	r1, [r2, r5]
	mov	r5, #0
	ldrsh	r0, [r0, r5]
	cmp	r1, r0
	bgt	.L_a7e8
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_a7e4
	b	.L_a908
.L_a7d4:
	.4byte	gUnk_3002C64
.L_a7d8:
	.4byte	gUnk_3002CA2
.L_a7dc:
	.4byte	gUnk_3002C9E
.L_a7e0:
	.4byte	gUnk_3002CA0
.L_a7e4:
	.4byte	gUnk_3002C60
.L_a7e8:
	sub	r0, r3, #1
	strh	r0, [r2, #0]
	b	.L_a8e2
.L_a7ee:
	ldr	r0, .L_a80c
	ldrh	r4, [r0, #0]
	cmp	r4, #0
	bne	.L_a818
	ldr	r5, .L_a810
	ldr	r0, [r5, #0]
	add	r1, sp, #8
	bl	func_800E594
	cmp	r0, #0
	beq	.L_a8e2
	str	r4, [r5, #0]
	ldr	r1, .L_a814
	b	.L_a908
	.align	2, 0
.L_a80c:
	.4byte	gUnk_3002C80
.L_a810:
	.4byte	gUnk_3002C64
.L_a814:
	.4byte	gUnk_3002C60
.L_a818:
	ldr	r4, .L_a85c
	ldr	r0, [r4, #0]
	cmp	r0, #0
	bne	.L_a83e
	ldr	r3, .L_a860
	ldr	r1, .L_a864
	ldr	r2, .L_a868
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
	ldr	r3, .L_a86c
	ldr	r1, .L_a870
	ldrh	r0, [r2, #0]
	lsl	r0, r0, #1
	add	r0, r0, r1
	ldrh	r0, [r0, #0]
	strh	r0, [r3, #0]
.L_a83e:
	ldr	r0, [r4, #0]
	add	r1, sp, #12
	bl	func_800E750
	ldr	r0, [r4, #0]
	add	r1, sp, #8
	bl	func_800E6F8
	cmp	r0, #0
	beq	.L_a8e2
	mov	r0, #0
	str	r0, [r4, #0]
	ldr	r1, .L_a874
	b	.L_a908
	.align	2, 0
.L_a85c:
	.4byte	gUnk_3002C64
.L_a860:
	.4byte	gUnk_3002C9C
.L_a864:
	.4byte	sUnk_878E770
.L_a868:
	.4byte	gUnk_3002C84
.L_a86c:
	.4byte	gUnk_3002C9E
.L_a870:
	.4byte	sUnk_878E778
.L_a874:
	.4byte	gUnk_3002C60
.L_a878:
	ldr	r0, .L_a894
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_a89c
	ldr	r4, .L_a898
	ldr	r0, [r4, #0]
	add	r1, sp, #8
	bl	func_800E5F4
	ldr	r0, [r4, #0]
	add	r1, sp, #12
	bl	func_800E680
	b	.L_a8a6
.L_a894:
	.4byte	gUnk_3002C80
.L_a898:
	.4byte	gUnk_3002C64
.L_a89c:
	ldr	r0, .L_a8ec
	ldr	r0, [r0, #0]
	add	r1, sp, #8
	bl	func_800E508
.L_a8a6:
	ldr	r0, .L_a8f0
	ldrh	r1, [r0, #0]
	sub	r1, #2
	strh	r1, [r0, #0]
	ldr	r2, .L_a8f4
	ldrh	r0, [r2, #0]
	sub	r0, #2
	strh	r0, [r2, #0]
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, #64	@ 0x40
	neg	r0, r0
	cmp	r1, r0
	bge	.L_a8e2
	mov	r0, #22
	bl	func_800B7BC
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #176	@ 0xb0
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_a8ec
	mov	r0, #0
	str	r0, [r1, #0]
	ldr	r1, .L_a8f8
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_a8e2:
	ldr	r1, .L_a8ec
.L_a8e4:
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	b	.L_a90e
.L_a8ec:
	.4byte	gUnk_3002C64
.L_a8f0:
	.4byte	gUnk_3002C4A
.L_a8f4:
	.4byte	gUnk_3002C9C
.L_a8f8:
	.4byte	gUnk_3002C60
.L_a8fc:
	mov	r0, #7
	bl	func_800B84C
	cmp	r0, #0
	beq	.L_a90e
	ldr	r1, .L_aca8
.L_a908:
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_a90e:
	ldr	r6, .L_acac
	ldr	r0, .L_acb0
	ldrh	r0, [r0, #0]
	cmp	r0, #7
	bhi	.L_a950
	ldr	r0, .L_acb4
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_a950
	ldr	r0, .L_acb8
	ldr	r0, [r0, #0]
	add	r1, sp, #12
	bl	func_800D6E0
	ldr	r0, [sp, #12]
	ldr	r1, .L_acbc
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r1, .L_acc0
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	ldr	r0, .L_acc4
	mov	r5, #0
	ldrsh	r3, [r0, r5]
	mov	r0, #0
	mov	r1, #0
	add	r2, r3, #0
	bl	func_800B4C0
.L_a950:
	ldr	r0, .L_acc8
	ldrh	r0, [r0, #0]
	cmp	r0, #7
	bhi	.L_a95a
	b	.L_acee
.L_a95a:
	ldr	r0, .L_accc
	mov	r8, r0
	ldr	r1, .L_acd0
	mov	r9, r1
	bl	func_800A094
	add	r4, sp, #16
	mov	r0, sl
	add	r1, r4, #0
	bl	func_800D780
	cmp	r0, #0
	beq	.L_a9b6
	ldr	r7, .L_acd4
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	mov	r5, #109	@ 0x6d
	mul	r0, r5
	ldr	r4, .L_acd8
	add	r0, r0, r4
	neg	r0, r0
	mov	r1, #24
	bl	__modsi3
	mov	r3, r9
	strh	r0, [r3, #0]
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	add	r2, r0, #0
	mul	r2, r5
	add	r1, r2, r4
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_a9a2
	ldr	r3, .L_acdc
	add	r0, r2, r3
.L_a9a2:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r1, r0
	strh	r0, [r7, #0]
	mov	r4, #0
	ldrsh	r0, [r7, r4]
	add	r0, #24
	lsl	r0, r0, #8
	mov	r5, r8
	strh	r0, [r5, #0]
.L_a9b6:
	ldr	r0, [sp, #16]
	mov	r1, r8
	ldrh	r2, [r1, #0]
	lsr	r2, r2, #8
	mov	r3, #2
	add	r8, r3
	mov	r4, r9
	ldrh	r3, [r4, #0]
	mov	r5, #2
	add	r9, r5
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	mov	r0, sl
	add	r0, #9
	add	r1, sp, #16
	bl	func_800D780
	cmp	r0, #0
	beq	.L_aa22
	ldr	r7, .L_acd4
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	mov	r5, #109	@ 0x6d
	mul	r0, r5
	ldr	r4, .L_acd8
	add	r0, r0, r4
	neg	r0, r0
	mov	r1, #24
	bl	__modsi3
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	add	r2, r0, #0
	mul	r2, r5
	add	r1, r2, r4
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_aa0e
	add	r4, #63	@ 0x3f
	add	r0, r2, r4
.L_aa0e:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r1, r0
	strh	r0, [r7, #0]
	mov	r5, #0
	ldrsh	r0, [r7, r5]
	add	r0, #24
	lsl	r0, r0, #8
	mov	r1, r8
	strh	r0, [r1, #0]
.L_aa22:
	ldr	r0, [sp, #16]
	mov	r3, r8
	ldrh	r2, [r3, #0]
	lsr	r2, r2, #8
	mov	r4, #2
	add	r8, r4
	mov	r5, r9
	ldrh	r3, [r5, #0]
	add	r9, r4
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	mov	r0, sl
	add	r0, #18
	add	r1, sp, #16
	bl	func_800D780
	cmp	r0, #0
	beq	.L_aa8c
	ldr	r7, .L_acd4
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	mov	r5, #109	@ 0x6d
	mul	r0, r5
	ldr	r4, .L_acd8
	add	r0, r0, r4
	neg	r0, r0
	mov	r1, #24
	bl	__modsi3
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	add	r2, r0, #0
	mul	r2, r5
	add	r1, r2, r4
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_aa78
	add	r4, #63	@ 0x3f
	add	r0, r2, r4
.L_aa78:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r1, r0
	strh	r0, [r7, #0]
	mov	r5, #0
	ldrsh	r0, [r7, r5]
	add	r0, #24
	lsl	r0, r0, #8
	mov	r1, r8
	strh	r0, [r1, #0]
.L_aa8c:
	ldr	r0, [sp, #16]
	mov	r3, r8
	ldrh	r2, [r3, #0]
	lsr	r2, r2, #8
	mov	r4, #2
	add	r8, r4
	mov	r5, r9
	ldrh	r3, [r5, #0]
	add	r9, r4
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	mov	r0, sl
	add	r0, #27
	add	r1, sp, #16
	bl	func_800D780
	cmp	r0, #0
	beq	.L_aaf6
	ldr	r7, .L_acd4
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	mov	r5, #109	@ 0x6d
	mul	r0, r5
	ldr	r4, .L_acd8
	add	r0, r0, r4
	neg	r0, r0
	mov	r1, #24
	bl	__modsi3
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	add	r2, r0, #0
	mul	r2, r5
	add	r1, r2, r4
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_aae2
	add	r4, #63	@ 0x3f
	add	r0, r2, r4
.L_aae2:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r1, r0
	strh	r0, [r7, #0]
	mov	r5, #0
	ldrsh	r0, [r7, r5]
	add	r0, #24
	lsl	r0, r0, #8
	mov	r1, r8
	strh	r0, [r1, #0]
.L_aaf6:
	ldr	r0, [sp, #16]
	mov	r3, r8
	ldrh	r2, [r3, #0]
	lsr	r2, r2, #8
	mov	r4, #2
	add	r8, r4
	mov	r5, r9
	ldrh	r3, [r5, #0]
	add	r9, r4
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	mov	r0, sl
	add	r0, #36	@ 0x24
	add	r1, sp, #16
	bl	func_800D780
	cmp	r0, #0
	beq	.L_ab60
	ldr	r7, .L_acd4
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	mov	r5, #109	@ 0x6d
	mul	r0, r5
	ldr	r4, .L_acd8
	add	r0, r0, r4
	neg	r0, r0
	mov	r1, #24
	bl	__modsi3
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	add	r2, r0, #0
	mul	r2, r5
	add	r1, r2, r4
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_ab4c
	add	r4, #63	@ 0x3f
	add	r0, r2, r4
.L_ab4c:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r1, r0
	strh	r0, [r7, #0]
	mov	r5, #0
	ldrsh	r0, [r7, r5]
	add	r0, #24
	lsl	r0, r0, #8
	mov	r1, r8
	strh	r0, [r1, #0]
.L_ab60:
	ldr	r0, [sp, #16]
	mov	r3, r8
	ldrh	r2, [r3, #0]
	lsr	r2, r2, #8
	mov	r4, #2
	add	r8, r4
	mov	r5, r9
	ldrh	r3, [r5, #0]
	add	r9, r4
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	mov	r0, sl
	add	r0, #45	@ 0x2d
	add	r1, sp, #16
	bl	func_800D780
	cmp	r0, #0
	beq	.L_abca
	ldr	r7, .L_acd4
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	mov	r5, #109	@ 0x6d
	mul	r0, r5
	ldr	r4, .L_acd8
	add	r0, r0, r4
	neg	r0, r0
	mov	r1, #24
	bl	__modsi3
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	add	r2, r0, #0
	mul	r2, r5
	add	r1, r2, r4
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_abb6
	add	r4, #63	@ 0x3f
	add	r0, r2, r4
.L_abb6:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r1, r0
	strh	r0, [r7, #0]
	mov	r5, #0
	ldrsh	r0, [r7, r5]
	add	r0, #24
	lsl	r0, r0, #8
	mov	r1, r8
	strh	r0, [r1, #0]
.L_abca:
	ldr	r0, [sp, #16]
	mov	r3, r8
	ldrh	r2, [r3, #0]
	lsr	r2, r2, #8
	mov	r4, #2
	add	r8, r4
	mov	r5, r9
	ldrh	r3, [r5, #0]
	add	r9, r4
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	mov	r0, sl
	add	r0, #54	@ 0x36
	add	r1, sp, #16
	bl	func_800D780
	cmp	r0, #0
	beq	.L_ac34
	ldr	r7, .L_acd4
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	mov	r5, #109	@ 0x6d
	mul	r0, r5
	ldr	r4, .L_acd8
	add	r0, r0, r4
	neg	r0, r0
	mov	r1, #24
	bl	__modsi3
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	add	r2, r0, #0
	mul	r2, r5
	add	r1, r2, r4
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_ac20
	add	r4, #63	@ 0x3f
	add	r0, r2, r4
.L_ac20:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r1, r0
	strh	r0, [r7, #0]
	mov	r5, #0
	ldrsh	r0, [r7, r5]
	add	r0, #24
	lsl	r0, r0, #8
	mov	r1, r8
	strh	r0, [r1, #0]
.L_ac34:
	ldr	r0, [sp, #16]
	mov	r3, r8
	ldrh	r2, [r3, #0]
	lsr	r2, r2, #8
	mov	r4, #2
	add	r8, r4
	mov	r5, r9
	ldrh	r3, [r5, #0]
	add	r9, r4
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	mov	r0, sl
	add	r0, #63	@ 0x3f
	add	r1, sp, #16
	bl	func_800D780
	cmp	r0, #0
	beq	.L_ac9e
	ldr	r7, .L_acd4
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	mov	r5, #109	@ 0x6d
	mul	r0, r5
	ldr	r4, .L_acd8
	add	r0, r0, r4
	neg	r0, r0
	mov	r1, #24
	bl	__modsi3
	mov	r2, r9
	strh	r0, [r2, #0]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	add	r2, r0, #0
	mul	r2, r5
	add	r1, r2, r4
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L_ac8a
	add	r4, #63	@ 0x3f
	add	r0, r2, r4
.L_ac8a:
	asr	r0, r0, #6
	lsl	r0, r0, #6
	sub	r0, r1, r0
	strh	r0, [r7, #0]
	mov	r5, #0
	ldrsh	r0, [r7, r5]
	add	r0, #24
	lsl	r0, r0, #8
	mov	r1, r8
	strh	r0, [r1, #0]
.L_ac9e:
	ldr	r0, [sp, #16]
	mov	r3, r8
	ldrh	r2, [r3, #0]
	b	.L_ace0
	.align	2, 0
.L_aca8:
	.4byte	gSubGameMode
.L_acac:
	.4byte	gOamBuffer
.L_acb0:
	.4byte	gUnk_3002C60
.L_acb4:
	.4byte	gUnk_3002C80
.L_acb8:
	.4byte	gUnk_3002C64
.L_acbc:
	.4byte	gUnk_3002C9C
.L_acc0:
	.4byte	gUnk_3002C9E
.L_acc4:
	.4byte	gUnk_3002C82
.L_acc8:
	.4byte	gUnk_3002C5A
.L_accc:
	.4byte	gUnk_3002CA8
.L_acd0:
	.4byte	gUnk_3002CB8
.L_acd4:
	.4byte	gUnk_3002CA6
.L_acd8:
	.4byte	0x3FD
.L_acdc:
	.4byte	0x43C
.L_ace0:
	lsr	r2, r2, #8
	mov	r4, r9
	ldrh	r3, [r4, #0]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
.L_acee:
	ldr	r5, [sp, #24]
	cmp	r5, #0
	bne	.L_acf6
	b	.L_af24
.L_acf6:
	ldr	r0, .L_afb0
	mov	r9, r0
	ldr	r0, [r0, #0]
	mov	r7, #0
	cmp	r0, #115	@ 0x73
	bls	.L_ad04
	add	r7, r0, #0
.L_ad04:
	add	r1, sp, #20
	mov	r8, r1
	add	r0, r7, #0
	bl	func_800E208
	mov	r2, r9
	ldr	r0, [r2, #0]
	mov	r5, sp
	add	r5, #2
	mov	r1, sp
	add	r2, r5, #0
	bl	func_800F4F4
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	add	r4, r7, #7
	add	r0, r4, #0
	mov	r1, r8
	bl	func_800E1C8
	mov	r1, r9
	ldr	r0, [r1, #0]
	mov	r1, sp
	add	r2, r5, #0
	bl	func_800F530
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	add	r0, r7, #0
	mov	r1, r8
	bl	func_800E248
	mov	r2, r9
	ldr	r0, [r2, #0]
	mov	r1, sp
	add	r2, r5, #0
	bl	func_800F56C
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	add	r0, r4, #0
	mov	r1, r8
	bl	func_800E288
	mov	r2, r9
	ldr	r0, [r2, #0]
	mov	r1, sp
	add	r2, r5, #0
	bl	func_800F5A8
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	cmp	r7, #216	@ 0xd8
	bgt	.L_adb2
	b	.L_af24
.L_adb2:
	sub	r7, #216	@ 0xd8
	add	r0, r7, #0
	mov	r1, r8
	bl	func_800D708
	add	r0, r7, #0
	mov	r1, sp
	add	r2, r5, #0
	bl	func_800F5E4
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	ldr	r0, [sp, #20]
	add	r1, r6, #0
	bl	func_800A3F8
	add	r0, r7, #0
	mov	r1, r8
	bl	func_800D708
	add	r0, r7, #0
	mov	r1, sp
	add	r2, r5, #0
	bl	func_800F618
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	ldr	r0, [sp, #20]
	add	r1, r6, #0
	bl	func_800A3F8
	add	r0, r7, #0
	mov	r1, r8
	bl	func_800D708
	add	r0, r7, #0
	mov	r1, sp
	add	r2, r5, #0
	bl	func_800F654
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	ldr	r0, [sp, #20]
	add	r1, r6, #0
	bl	func_800A3F8
	add	r0, r7, #0
	mov	r1, r8
	bl	func_800D708
	add	r0, r7, #0
	mov	r1, sp
	add	r2, r5, #0
	bl	func_800F690
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	ldr	r0, [sp, #20]
	add	r1, r6, #0
	bl	func_800A3F8
	add	r0, r7, #0
	mov	r1, r8
	bl	func_800D708
	add	r0, r7, #0
	mov	r1, sp
	add	r2, r5, #0
	bl	func_800F6CC
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	ldr	r0, [sp, #20]
	add	r1, r6, #0
	bl	func_800A3F8
	add	r0, r7, #0
	mov	r1, r8
	bl	func_800D708
	add	r0, r7, #0
	mov	r1, sp
	add	r2, r5, #0
	bl	func_800F708
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	ldr	r0, [sp, #20]
	add	r1, r6, #0
	bl	func_800A3F8
	add	r0, r7, #0
	mov	r1, r8
	bl	func_800D708
	add	r0, r7, #0
	mov	r1, sp
	add	r2, r5, #0
	bl	func_800F744
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	ldr	r0, [sp, #20]
	add	r1, r6, #0
	bl	func_800A3F8
	add	r0, r7, #0
	mov	r1, r8
	bl	func_800D708
	add	r0, r7, #0
	mov	r1, sp
	add	r2, r5, #0
	bl	func_800F780
	ldr	r0, [sp, #20]
	mov	r1, sp
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	ldr	r0, [sp, #20]
	add	r1, r6, #0
	bl	func_800A3F8
.L_af24:
	ldr	r0, [sp, #4]
	ldr	r1, .L_afb4
	mov	r5, #0
	ldrsh	r2, [r1, r5]
	ldr	r1, .L_afb8
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	ldr	r0, .L_afbc
	mov	r5, #0
	ldrsh	r0, [r0, r5]
	cmp	r0, #0
	beq	.L_af4c
	ldr	r0, [sp, #4]
	add	r1, r6, #0
	bl	func_800A3F8
.L_af4c:
	ldr	r0, [sp, #8]
	ldr	r1, .L_afc0
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r1, .L_afc4
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	ldr	r0, .L_afc8
	ldrh	r0, [r0, #0]
	cmp	r0, #7
	bls	.L_af98
	ldr	r0, .L_afcc
	ldrh	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_af98
	ldr	r0, [sp, #12]
	ldr	r1, .L_afd0
	mov	r5, #0
	ldrsh	r2, [r1, r5]
	ldr	r1, .L_afd4
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	add	r1, r6, #0
	bl	func_800B5E4
	add	r6, r0, #0
	ldr	r0, .L_afd8
	mov	r5, #0
	ldrsh	r3, [r0, r5]
	mov	r0, #0
	mov	r1, #0
	add	r2, r3, #0
	bl	func_800B4C0
.L_af98:
	add	r0, r6, #0
	bl	func_800B684
	add	sp, #28
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_afb0:
	.4byte	gUnk_3002C68
.L_afb4:
	.4byte	gUnk_3002C98
.L_afb8:
	.4byte	gUnk_3002C9A
.L_afbc:
	.4byte	gUnk_3002CA4
.L_afc0:
	.4byte	gUnk_3002C4A
.L_afc4:
	.4byte	gUnk_3002C4C
.L_afc8:
	.4byte	gUnk_3002C60
.L_afcc:
	.4byte	gUnk_3002C80
.L_afd0:
	.4byte	gUnk_3002C9C
.L_afd4:
	.4byte	gUnk_3002C9E
.L_afd8:
	.4byte	gUnk_3002C82


thumb_func_start func_800AFDC
func_800AFDC:
	push	{r4, lr}
	sub	sp, #4
	ldr	r0, .L_b04c
	str	r0, [sp, #0]
	ldr	r1, .L_b050
	mov	r0, sp
	str	r0, [r1, #0]
	ldr	r0, .L_b054
	str	r0, [r1, #4]
	ldr	r0, .L_b058
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_b05c
	str	r0, [r1, #0]
	mov	r0, #160	@ 0xa0
	lsl	r0, r0, #19
	str	r0, [r1, #4]
	ldr	r0, .L_b060
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_b064
	str	r0, [r1, #0]
	ldr	r0, .L_b068
	str	r0, [r1, #4]
	ldr	r0, .L_b06c
	str	r0, [r1, #8]
	ldr	r0, [r1, #8]
	ldr	r0, .L_b070
	mov	r1, #192	@ 0xc0
	lsl	r1, r1, #19
	bl	LZ77UnCompVram
	ldr	r0, .L_b074
	ldr	r1, .L_b078
	bl	LZ77UnCompVram
	ldr	r0, .L_b07c
	ldr	r1, .L_b080
	bl	func_800B734
	ldr	r0, .L_b084
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	bne	.L_b09c
	ldr	r0, .L_b088
	ldr	r1, .L_b08c
	bl	func_800B734
	ldr	r0, .L_b090
	ldr	r0, [r0, #0]
	ldr	r2, .L_b094
	cmp	r0, #0
	beq	.L_b0ea
	ldr	r2, .L_b098
	b	.L_b0ea
	.align	2, 0
.L_b04c:
	.4byte	0x3FF03FF
.L_b050:
	.4byte	0x40000D4
.L_b054:
	.4byte	0x6008000
.L_b058:
	.4byte	0x85000600
.L_b05c:
	.4byte	sUnk_82D9C78
.L_b060:
	.4byte	0x80000050
.L_b064:
	.4byte	sUnk_82D830E
.L_b068:
	.4byte	0x5000200
.L_b06c:
	.4byte	0x80000040
.L_b070:
	.4byte	sUnk_82D9D18
.L_b074:
	.4byte	sUnk_82D8390
.L_b078:
	.4byte	0x6010000
.L_b07c:
	.4byte	sUnk_82DC454
.L_b080:
	.4byte	0x6009000
.L_b084:
	.4byte	gClearMessage
.L_b088:
	.4byte	sUnk_82DC66E
.L_b08c:
	.4byte	0x6008800
.L_b090:
	.4byte	gUnk_3002C78
.L_b094:
	.4byte	sUnk_82DC902
.L_b098:
	.4byte	sUnk_82DCBA4
.L_b09c:
	cmp	r0, #1
	bne	.L_b0cc
	ldr	r0, .L_b0b8
	ldr	r1, .L_b0bc
	bl	func_800B734
	ldr	r0, .L_b0c0
	ldr	r0, [r0, #0]
	ldr	r2, .L_b0c4
	cmp	r0, #0
	beq	.L_b0ea
	ldr	r2, .L_b0c8
	b	.L_b0ea
	.align	2, 0
.L_b0b8:
	.4byte	sUnk_82DC878
.L_b0bc:
	.4byte	0x6008800
.L_b0c0:
	.4byte	gUnk_3002C78
.L_b0c4:
	.4byte	sUnk_82DCE4A
.L_b0c8:
	.4byte	sUnk_82DCFCC
.L_b0cc:
	ldr	r4, .L_b130
	ldr	r0, [r4, #0]
	ldr	r2, .L_b134
	cmp	r0, #0
	beq	.L_b0d8
	ldr	r2, .L_b138
.L_b0d8:
	ldr	r1, .L_b13c
	add	r0, r2, #0
	bl	func_800B734
	ldr	r0, [r4, #0]
	ldr	r2, .L_b140
	cmp	r0, #0
	beq	.L_b0ea
	ldr	r2, .L_b144
.L_b0ea:
	ldr	r1, .L_b148
	add	r0, r2, #0
	bl	func_800B734
	ldr	r1, .L_b14c
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_b150
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	r1, #2
	ldr	r2, .L_b154
	add	r0, r2, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_b158
	mov	r0, #0
	strh	r0, [r1, #0]
	bl	func_800B580
	mov	r0, #55	@ 0x37
	bl	func_800B7E0
	mov	r1, #128	@ 0x80
	lsl	r1, r1, #19
	mov	r2, #184	@ 0xb8
	lsl	r2, r2, #5
	add	r0, r2, #0
	strh	r0, [r1, #0]
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
.L_b130:
	.4byte	gUnk_3002C78
.L_b134:
	.4byte	sUnk_82DC738
.L_b138:
	.4byte	sUnk_82DC7EA
.L_b13c:
	.4byte	0x6008800
.L_b140:
	.4byte	sUnk_82DCD16
.L_b144:
	.4byte	sUnk_82DCDC8
.L_b148:
	.4byte	0x6008000
.L_b14c:
	.4byte	0x4000008
.L_b150:
	.4byte	0x1101
.L_b154:
	.4byte	0x1202
.L_b158:
	.4byte	gUnk_3002C98


thumb_func_start func_800B15C
func_800B15C:
	push	{r4, lr}
	sub	sp, #4
	ldr	r4, .L_b174
	ldrh	r0, [r4, #0]
	cmp	r0, #1
	beq	.L_b18e
	cmp	r0, #1
	bgt	.L_b178
	cmp	r0, #0
	beq	.L_b182
	b	.L_b1dc
	.align	2, 0
.L_b174:
	.4byte	gUnk_3002C60
.L_b178:
	cmp	r0, #2
	beq	.L_b1b8
	cmp	r0, #3
	beq	.L_b1be
	b	.L_b1dc
.L_b182:
	mov	r0, #3
	bl	func_800B888
	cmp	r0, #0
	beq	.L_b1dc
	b	.L_b1a8
.L_b18e:
	ldr	r0, .L_b1b0
	ldrh	r1, [r0, #0]
	mov	r0, #9
	and	r0, r1
	cmp	r0, #0
	beq	.L_b1dc
	mov	r0, #147	@ 0x93
	lsl	r0, r0, #1
	bl	m4aSongNumStartOrChange
	ldr	r1, .L_b1b4
	mov	r0, #0
	str	r0, [r1, #0]
.L_b1a8:
	ldrh	r0, [r4, #0]
	add	r0, #1
	strh	r0, [r4, #0]
	b	.L_b1dc
.L_b1b0:
	.4byte	gButtonsPressed
.L_b1b4:
	.4byte	gUnk_3002C64
.L_b1b8:
	mov	r0, #3
	strh	r0, [r4, #0]
	b	.L_b1dc
.L_b1be:
	mov	r0, #3
	bl	func_800B84C
	cmp	r0, #0
	beq	.L_b1dc
	ldr	r0, .L_b1f8
	ldr	r1, .L_b1fc
	mov	r2, #128	@ 0x80
	lsl	r2, r2, #1
	bl	m4aMPlayVolumeControl
	ldr	r1, .L_b200
	ldrh	r0, [r1, #0]
	add	r0, #1
	strh	r0, [r1, #0]
.L_b1dc:
	ldr	r0, .L_b204
	ldrh	r0, [r0, #0]
	cmp	r0, #1
	bhi	.L_b220
	ldr	r0, .L_b208
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_b210
	ldr	r0, .L_b20c
	ldr	r0, [r0, #0]
	mov	r1, sp
	bl	func_800FA3C
	b	.L_b252
.L_b1f8:
	.4byte	gMPlayInfo_2
.L_b1fc:
	.4byte	0xFFFF
.L_b200:
	.4byte	gSubGameMode
.L_b204:
	.4byte	gUnk_3002C60
.L_b208:
	.4byte	gTitleScreenStyle
.L_b20c:
	.4byte	gUnk_3002C64
.L_b210:
	ldr	r0, .L_b21c
	ldr	r0, [r0, #0]
	mov	r1, sp
	bl	func_800F9E0
	b	.L_b252
.L_b21c:
	.4byte	gUnk_3002C64
.L_b220:
	ldr	r0, .L_b238
	ldrb	r0, [r0, #0]
	cmp	r0, #1
	bne	.L_b244
	ldr	r4, .L_b23c
	ldr	r0, .L_b240
	ldr	r0, [r0, #0]
	mov	r1, sp
	bl	func_800FA8C
	b	.L_b250
	.align	2, 0
.L_b238:
	.4byte	gTitleScreenStyle
.L_b23c:
	.4byte	gUnk_3002C98
.L_b240:
	.4byte	gUnk_3002C64
.L_b244:
	ldr	r4, .L_b274
	ldr	r0, .L_b278
	ldr	r0, [r0, #0]
	mov	r1, sp
	bl	func_800FA28
.L_b250:
	strh	r0, [r4, #0]
.L_b252:
	ldr	r0, [sp, #0]
	ldr	r1, .L_b27c
	mov	r2, #108	@ 0x6c
	mov	r3, #160	@ 0xa0
	bl	func_800B5E4
	bl	func_800B684
	ldr	r1, .L_b278
	ldr	r0, [r1, #0]
	add	r0, #1
	str	r0, [r1, #0]
	add	sp, #4
	pop	{r4}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_b274:
	.4byte	gUnk_3002C98
.L_b278:
	.4byte	gUnk_3002C64
.L_b27c:
	.4byte	gOamBuffer


thumb_func_start func_800B280
func_800B280:
	ldr	r0, .L_b30c
	ldrb	r1, [r0, #0]
	neg	r0, r1
	orr	r0, r1
	lsr	r1, r0, #31
	ldr	r0, .L_b310
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_b294
	add	r1, #1
.L_b294:
	ldr	r0, .L_b314
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_b29e
	add	r1, #1
.L_b29e:
	ldr	r0, .L_b318
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_b2a8
	add	r1, #1
.L_b2a8:
	ldr	r0, .L_b31c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_b2b2
	add	r1, #1
.L_b2b2:
	ldr	r0, .L_b320
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_b2bc
	add	r1, #1
.L_b2bc:
	ldr	r0, .L_b324
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_b2c6
	add	r1, #1
.L_b2c6:
	ldr	r0, .L_b328
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_b2d0
	add	r1, #1
.L_b2d0:
	ldr	r0, .L_b32c
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_b2da
	add	r1, #1
.L_b2da:
	ldr	r0, .L_b330
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_b2e4
	add	r1, #1
.L_b2e4:
	ldr	r0, .L_b334
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_b2ee
	add	r1, #1
.L_b2ee:
	ldr	r0, .L_b338
	ldrb	r0, [r0, #0]
	cmp	r0, #0
	beq	.L_b2f8
	add	r1, #1
.L_b2f8:
	ldr	r0, .L_b33c
	strh	r1, [r0, #0]
	cmp	r1, #1
	bgt	.L_b348
	ldr	r1, .L_b340
	mov	r0, #0
	strh	r0, [r1, #0]
	ldr	r1, .L_b344
	mov	r0, #160	@ 0xa0
	b	.L_b38a
.L_b30c:
	.4byte	gCollectedNEJewelPiece
.L_b310:
	.4byte	gCollectedSEJewelPiece
.L_b314:
	.4byte	gCollectedSWJewelPiece
.L_b318:
	.4byte	gCollectedNWJewelPiece
.L_b31c:
	.4byte	gHasGoldenDivaChest5
.L_b320:
	.4byte	gHasGoldenDivaChest6
.L_b324:
	.4byte	gHasGoldenDivaChest7
.L_b328:
	.4byte	gHasGoldenDivaChest8
.L_b32c:
	.4byte	gHasGoldenDivaChest9
.L_b330:
	.4byte	gHasGoldenDivaChest10
.L_b334:
	.4byte	gHasGoldenDivaChest11
.L_b338:
	.4byte	gHasGoldenDivaChest12
.L_b33c:
	.4byte	gUnk_3002C80
.L_b340:
	.4byte	gUnk_3002C84
.L_b344:
	.4byte	gUnk_3002C82
.L_b348:
	cmp	r1, #5
	bgt	.L_b360
	ldr	r1, .L_b358
	mov	r0, #1
	strh	r0, [r1, #0]
	ldr	r1, .L_b35c
	mov	r0, #224	@ 0xe0
	b	.L_b38a
.L_b358:
	.4byte	gUnk_3002C84
.L_b35c:
	.4byte	gUnk_3002C82
.L_b360:
	cmp	r1, #11
	bgt	.L_b37c
	ldr	r1, .L_b374
	mov	r0, #2
	strh	r0, [r1, #0]
	ldr	r1, .L_b378
	mov	r2, #144	@ 0x90
	lsl	r2, r2, #1
	b	.L_b388
	.align	2, 0
.L_b374:
	.4byte	gUnk_3002C84
.L_b378:
	.4byte	gUnk_3002C82
.L_b37c:
	ldr	r1, .L_b390
	mov	r0, #3
	strh	r0, [r1, #0]
	ldr	r1, .L_b394
	mov	r2, #192	@ 0xc0
	lsl	r2, r2, #1
.L_b388:
	add	r0, r2, #0
.L_b38a:
	strh	r0, [r1, #0]
	bx	lr
	.align	2, 0
.L_b390:
	.4byte	gUnk_3002C84
.L_b394:
	.4byte	gUnk_3002C82


thumb_func_start func_800B398
func_800B398:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	r5, r0, #0
	add	r4, r1, #0
	add	r6, r2, #0
	mov	r9, r3
	mov	r0, #255	@ 0xff
	and	r4, r0
	ldr	r0, .L_b4b4
	mov	r8, r0
	add	r0, r4, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r8
	mov	r1, #0
	ldrsh	r7, [r0, r1]
	lsl	r6, r6, #16
	asr	r6, r6, #16
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r7, #0
	bl	FixedMul
	mov	sl, r0
	mov	r2, sl
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	mov	sl, r2
	lsl	r4, r4, #1
	add	r4, r8
	mov	r1, #0
	ldrsh	r0, [r4, r1]
	mov	r8, r0
	add	r0, r6, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, r8
	bl	FixedMul
	add	r6, r0, #0
	lsl	r6, r6, #16
	lsr	r6, r6, #16
	ldrh	r4, [r4, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r2, r9
	lsl	r2, r2, #16
	asr	r2, r2, #16
	mov	r9, r2
	mov	r0, r9
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	add	r4, r0, #0
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	mov	r0, r9
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r7, #0
	bl	FixedMul
	lsl	r0, r0, #16
	ldr	r7, [sp, #32]
	lsl	r3, r7, #8
	mov	r2, sl
	lsl	r1, r2, #16
	asr	r1, r1, #16
	mul	r1, r7
	sub	r3, r3, r1
	lsl	r1, r6, #16
	asr	r1, r1, #16
	ldr	r7, [sp, #36]	@ 0x24
	mul	r1, r7
	sub	r3, r3, r1
	lsl	r2, r7, #8
	lsl	r1, r4, #16
	asr	r1, r1, #16
	ldr	r7, [sp, #32]
	mul	r1, r7
	sub	r2, r2, r1
	lsr	r1, r0, #16
	asr	r0, r0, #16
	ldr	r7, [sp, #36]	@ 0x24
	mul	r0, r7
	sub	r2, r2, r0
	ldr	r0, .L_b4b8
	mov	r7, #0
	ldrsh	r0, [r0, r7]
	lsl	r0, r0, #8
	add	r3, r3, r0
	ldr	r0, .L_b4bc
	mov	r7, #0
	ldrsh	r0, [r0, r7]
	lsl	r0, r0, #8
	add	r2, r2, r0
	mov	r0, sl
	strh	r0, [r5, #0]
	add	r5, #2
	strh	r6, [r5, #0]
	add	r5, #2
	strh	r4, [r5, #0]
	add	r5, #2
	strh	r1, [r5, #0]
	add	r5, #2
	strh	r3, [r5, #0]
	add	r5, #2
	asr	r3, r3, #16
	strh	r3, [r5, #0]
	add	r5, #2
	strh	r2, [r5, #0]
	add	r5, #2
	asr	r2, r2, #16
	strh	r2, [r5, #0]
	add	r5, #2
	add	r0, r5, #0
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L_b4b4:
	.4byte	sSinCosTable
.L_b4b8:
	.4byte	gUnk_3002C42
.L_b4bc:
	.4byte	gUnk_3002C44


thumb_func_start func_800B4C0
func_800B4C0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	r4, r1, #0
	add	r5, r2, #0
	mov	r8, r3
	lsl	r0, r0, #5
	ldr	r1, .L_b574
	add	r7, r0, r1
	mov	r0, #255	@ 0xff
	and	r4, r0
	ldr	r6, .L_b578
	add	r0, r4, #0
	add	r0, #64	@ 0x40
	lsl	r0, r0, #1
	add	r0, r0, r6
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r9, r1
	lsl	r5, r5, #16
	asr	r5, r5, #16
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, r9
	bl	FixedMul
	strh	r0, [r7, #0]
	add	r7, #8
	lsl	r4, r4, #1
	add	r4, r4, r6
	mov	r0, #0
	ldrsh	r6, [r4, r0]
	add	r0, r5, #0
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r6, #0
	bl	FixedMul
	strh	r0, [r7, #0]
	add	r7, #8
	ldrh	r4, [r4, #0]
	neg	r4, r4
	lsl	r4, r4, #16
	asr	r4, r4, #16
	mov	r1, r8
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r8, r1
	mov	r0, r8
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	add	r0, r4, #0
	bl	FixedMul
	strh	r0, [r7, #0]
	add	r7, #8
	mov	r0, r8
	bl	FixedInverse
	add	r1, r0, #0
	lsl	r1, r1, #16
	asr	r1, r1, #16
	mov	r0, r9
	bl	FixedMul
	strh	r0, [r7, #0]
	add	r7, #2
	ldr	r1, .L_b57c
	ldr	r0, [r1, #0]
	cmp	r7, r0
	bls	.L_b566
	str	r7, [r1, #0]
.L_b566:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_b574:
	.4byte	gOamBuffer + 6
.L_b578:
	.4byte	sSinCosTable
.L_b57c:
	.4byte	gUnk_3002C70


thumb_func_start func_800B580
func_800B580:
	ldr	r0, .L_b59c
	ldrh	r2, [r0, #0]
	ldr	r1, .L_b5a0
	and	r1, r2
	strh	r1, [r0, #0]
	add	r2, r0, #0
	mov	r3, #1
.L_b58e:
	svc	2
	ldrh	r1, [r2, #0]
	add	r0, r3, #0
	and	r0, r1
	cmp	r0, #0
	beq	.L_b58e
	bx	lr
.L_b59c:
	.4byte	gInterruptCheck
.L_b5a0:
	.4byte	0xFFFE


thumb_func_start func_800B5A4
func_800B5A4:
	push	{r4, r5, r6, r7, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	ldr	r0, [sp, #20]
	lsl	r2, r2, #16
	lsr	r7, r2, #16
	lsl	r3, r3, #16
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	lsr	r3, r3, #16
	cmp	r3, #0
	beq	.L_b5dc
	lsl	r6, r0, #1
.L_b5be:
	add	r2, r5, #0
	add	r1, r7, #0
	sub	r3, #1
	cmp	r1, #0
	beq	.L_b5d6
.L_b5c8:
	ldrh	r0, [r4, #0]
	strh	r0, [r2, #0]
	add	r4, #2
	add	r2, #2
	sub	r1, #1
	cmp	r1, #0
	bne	.L_b5c8
.L_b5d6:
	add	r5, r5, r6
	cmp	r3, #0
	bne	.L_b5be
.L_b5dc:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0


thumb_func_start func_800B5E4
func_800B5E4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	add	r4, r0, #0
	add	r5, r1, #0
	str	r2, [sp, #0]
	add	r6, r3, #0
	cmp	r4, #0
	beq	.L_b666
	ldrh	r3, [r4, #0]
	add	r4, #2
	sub	r0, r3, #1
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	ldr	r0, .L_b678
	ldr	r1, .L_b67c
	mov	sl, r1
	cmp	r3, r0
	beq	.L_b65c
	mov	r7, #255	@ 0xff
	lsl	r7, r7, #8
	mov	r9, r7
	mov	r1, #254	@ 0xfe
	lsl	r1, r1, #8
	mov	r8, r1
	mov	ip, r0
.L_b61e:
	ldrh	r1, [r4, #0]
	mov	r2, r9
	and	r2, r1
	add	r1, r1, r6
	mov	r0, #255	@ 0xff
	and	r1, r0
	orr	r2, r1
	strh	r2, [r5, #0]
	add	r5, #2
	add	r4, #2
	ldrh	r1, [r4, #0]
	mov	r2, r8
	and	r2, r1
	ldr	r7, [sp, #0]
	add	r1, r1, r7
	ldr	r7, .L_b680
	add	r0, r7, #0
	and	r1, r0
	orr	r2, r1
	strh	r2, [r5, #0]
	add	r5, #2
	add	r4, #2
	ldrh	r0, [r4, #0]
	strh	r0, [r5, #0]
	add	r4, #2
	add	r5, #4
	sub	r0, r3, #1
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r3, ip
	bne	.L_b61e
.L_b65c:
	mov	r1, sl
	ldr	r0, [r1, #0]
	cmp	r5, r0
	bls	.L_b666
	str	r5, [r1, #0]
.L_b666:
	add	r0, r5, #0
	add	sp, #4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L_b678:
	.4byte	0xFFFF
.L_b67c:
	.4byte	gUnk_3002C70
.L_b680:
	.4byte	0x1FF


thumb_func_start func_800B684
func_800B684:
	push	{r4, r5, r6, r7, lr}
	add	r1, r0, #0
	ldr	r2, .L_b6b4
	ldr	r0, [r2, #0]
	add	r6, r2, #0
	ldr	r7, .L_b6b8
	ldr	r5, .L_b6bc
	cmp	r1, r0
	bcs	.L_b6a8
	mov	r4, #208	@ 0xd0
	mov	r3, #0
.L_b69a:
	strh	r4, [r1, #0]
	add	r1, #2
	strh	r3, [r1, #0]
	add	r1, #6
	ldr	r0, [r2, #0]
	cmp	r1, r0
	bcc	.L_b69a
.L_b6a8:
	ldr	r0, [r6, #0]
	sub	r0, r0, r5
	str	r0, [r7, #0]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L_b6b4:
	.4byte	gUnk_3002C70
.L_b6b8:
	.4byte	gUnk_3002C6C
.L_b6bc:
	.4byte	gOamBuffer


thumb_func_start func_800B6C0
func_800B6C0:
	ldr	r0, .L_b730
	mov	r1, #0
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	mov	r3, #128	@ 0x80
	lsl	r3, r3, #1
	add	r2, r3, #0
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r2, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #2
	strh	r1, [r0, #0]
	add	r0, #14
	strh	r1, [r0, #0]
	bx	lr
	.align	2, 0
.L_b730:
	.4byte	0x4000010


thumb_func_start func_800B734
func_800B734:
	push	{r4, r5, r6, r7, lr}
	add	r5, r0, #0
	add	r7, r1, #0
	ldrh	r4, [r5, #0]
	cmp	r4, #0
	beq	.L_b7b0
	mov	r0, #128	@ 0x80
	lsl	r0, r0, #8
	mov	ip, r0
	ldr	r6, .L_b780
.L_b748:
	lsl	r0, r4, #17
	lsr	r0, r0, #22
	mov	r1, #31
	and	r1, r4
	add	r2, r1, #1
	lsl	r0, r0, #1
	add	r3, r7, r0
	mov	r0, ip
	and	r0, r4
	add	r5, #2
	cmp	r0, #0
	beq	.L_b784
	ldrh	r1, [r5, #0]
	add	r5, #2
	sub	r0, r2, #1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, r6
	beq	.L_b7aa
	ldr	r4, .L_b780
.L_b770:
	strh	r1, [r3, #0]
	add	r3, #2
	sub	r0, r2, #1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, r4
	bne	.L_b770
	b	.L_b7aa
.L_b780:
	.4byte	0xFFFF
.L_b784:
	ldrh	r1, [r5, #0]
	add	r5, #2
	sub	r0, r2, #1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, r6
	beq	.L_b7aa
	ldr	r4, .L_b7b8
.L_b794:
	add	r0, r1, #0
	add	r1, r0, #1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	strh	r0, [r3, #0]
	add	r3, #2
	sub	r0, r2, #1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, r4
	bne	.L_b794
.L_b7aa:
	ldrh	r4, [r5, #0]
	cmp	r4, #0
	bne	.L_b748
.L_b7b0:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L_b7b8:
	.4byte	0xFFFF


thumb_func_start func_800B7BC
func_800B7BC:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r1, .L_b7d4
	mov	r2, #0
	strh	r2, [r1, #0]
	ldr	r1, .L_b7d8
	strh	r2, [r1, #0]
	ldr	r2, .L_b7dc
	mov	r1, #192	@ 0xc0
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
.L_b7d4:
	.4byte	gUnk_3002C5E
.L_b7d8:
	.4byte	0x4000054
.L_b7dc:
	.4byte	0x4000050


thumb_func_start func_800B7E0
func_800B7E0:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r1, .L_b7f8
	mov	r2, #16
	strh	r2, [r1, #0]
	ldr	r1, .L_b7fc
	strh	r2, [r1, #0]
	ldr	r2, .L_b800
	mov	r1, #192	@ 0xc0
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
.L_b7f8:
	.4byte	gUnk_3002C5E
.L_b7fc:
	.4byte	0x4000054
.L_b800:
	.4byte	0x4000050


thumb_func_start func_800B804
func_800B804:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r1, .L_b81c
	mov	r2, #0
	strh	r2, [r1, #0]
	ldr	r1, .L_b820
	strh	r2, [r1, #0]
	ldr	r2, .L_b824
	mov	r1, #128	@ 0x80
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
.L_b81c:
	.4byte	gUnk_3002C5E
.L_b820:
	.4byte	0x4000054
.L_b824:
	.4byte	0x4000050


thumb_func_start func_800B828
func_800B828:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r1, .L_b840
	mov	r2, #16
	strh	r2, [r1, #0]
	ldr	r1, .L_b844
	strh	r2, [r1, #0]
	ldr	r2, .L_b848
	mov	r1, #128	@ 0x80
	orr	r0, r1
	strh	r0, [r2, #0]
	bx	lr
.L_b840:
	.4byte	gUnk_3002C5E
.L_b844:
	.4byte	0x4000054
.L_b848:
	.4byte	0x4000050


thumb_func_start func_800B84C
func_800B84C:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r1, .L_b87c
	ldrh	r1, [r1, #0]
	and	r1, r0
	ldr	r2, .L_b880
	cmp	r1, r0
	bne	.L_b86c
	ldrh	r0, [r2, #0]
	cmp	r0, #15
	bhi	.L_b866
	add	r0, #1
	strh	r0, [r2, #0]
.L_b866:
	ldr	r1, .L_b884
	ldrh	r0, [r2, #0]
	strh	r0, [r1, #0]
.L_b86c:
	mov	r1, #0
	ldrh	r0, [r2, #0]
	cmp	r0, #16
	bne	.L_b876
	mov	r1, #1
.L_b876:
	add	r0, r1, #0
	bx	lr
	.align	2, 0
.L_b87c:
	.4byte	gUnk_300188E
.L_b880:
	.4byte	gUnk_3002C5E
.L_b884:
	.4byte	0x4000054


thumb_func_start func_800B888
func_800B888:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r1, .L_b8b8
	ldrh	r1, [r1, #0]
	and	r1, r0
	ldr	r2, .L_b8bc
	cmp	r1, r0
	bne	.L_b8a8
	ldrh	r0, [r2, #0]
	cmp	r0, #0
	beq	.L_b8a2
	sub	r0, #1
	strh	r0, [r2, #0]
.L_b8a2:
	ldr	r1, .L_b8c0
	ldrh	r0, [r2, #0]
	strh	r0, [r1, #0]
.L_b8a8:
	mov	r1, #0
	ldrh	r0, [r2, #0]
	cmp	r0, #0
	bne	.L_b8b2
	mov	r1, #1
.L_b8b2:
	add	r0, r1, #0
	bx	lr
	.align	2, 0
.L_b8b8:
	.4byte	gUnk_300188E
.L_b8bc:
	.4byte	gUnk_3002C5E
.L_b8c0:
	.4byte	0x4000054


thumb_func_start func_800B8C4
func_800B8C4:
	push	{r4, lr}
	add	r4, r0, #0
	cmp	r4, #15
	bgt	.L_b8d4
	ldr	r0, .L_b8d0
	b	.L_b97e
.L_b8d0:
	.4byte	sUnk_8285C08
.L_b8d4:
	cmp	r4, #23
	bgt	.L_b8e0
	ldr	r0, .L_b8dc
	b	.L_b97e
.L_b8dc:
	.4byte	sUnk_8285C10
.L_b8e0:
	cmp	r4, #31
	bgt	.L_b8ec
	ldr	r0, .L_b8e8
	b	.L_b97e
.L_b8e8:
	.4byte	sUnk_8285C1E
.L_b8ec:
	cmp	r4, #47	@ 0x2f
	bgt	.L_b8f8
	ldr	r0, .L_b8f4
	b	.L_b97e
.L_b8f4:
	.4byte	sUnk_8285C32
.L_b8f8:
	cmp	r4, #55	@ 0x37
	bgt	.L_b904
	ldr	r0, .L_b900
	b	.L_b97e
.L_b900:
	.4byte	sUnk_8285C4C
.L_b904:
	cmp	r4, #63	@ 0x3f
	bgt	.L_b910
	ldr	r0, .L_b90c
	b	.L_b97e
.L_b90c:
	.4byte	sUnk_8285C6C
.L_b910:
	cmp	r4, #71	@ 0x47
	bgt	.L_b91c
	ldr	r0, .L_b918
	b	.L_b97e
.L_b918:
	.4byte	sUnk_8285C92
.L_b91c:
	cmp	r4, #87	@ 0x57
	bgt	.L_b928
	ldr	r0, .L_b924
	b	.L_b97e
.L_b924:
	.4byte	sUnk_8285CBE
.L_b928:
	cmp	r4, #95	@ 0x5f
	bgt	.L_b934
	ldr	r0, .L_b930
	b	.L_b97e
.L_b930:
	.4byte	sUnk_8285CF0
.L_b934:
	cmp	r4, #103	@ 0x67
	bgt	.L_b940
	ldr	r0, .L_b93c
	b	.L_b97e
.L_b93c:
	.4byte	sUnk_8285D28
.L_b940:
	cmp	r4, #111	@ 0x6f
	bgt	.L_b94c
	ldr	r0, .L_b948
	b	.L_b97e
.L_b948:
	.4byte	sUnk_8285D66
.L_b94c:
	cmp	r4, #119	@ 0x77
	bgt	.L_b958
	ldr	r0, .L_b954
	b	.L_b97e
.L_b954:
	.4byte	sUnk_8285DAA
.L_b958:
	cmp	r4, #127	@ 0x7f
	bgt	.L_b964
	ldr	r0, .L_b960
	b	.L_b97e
.L_b960:
	.4byte	sUnk_8285DF4
.L_b964:
	cmp	r4, #135	@ 0x87
	bgt	.L_b970
	ldr	r0, .L_b96c
	b	.L_b97e
.L_b96c:
	.4byte	sUnk_8285E44
.L_b970:
	cmp	r4, #143	@ 0x8f
	bgt	.L_b97c
	ldr	r0, .L_b978
	b	.L_b97e
.L_b978:
	.4byte	sUnk_8285E9A
.L_b97c:
	ldr	r0, .L_b9cc
.L_b97e:
	str	r0, [r1, #0]
	cmp	r4, #0
	beq	.L_b9b4
	cmp	r4, #16
	beq	.L_b9b4
	cmp	r4, #24
	beq	.L_b9b4
	cmp	r4, #32
	beq	.L_b9b4
	cmp	r4, #48	@ 0x30
	beq	.L_b9b4
	cmp	r4, #56	@ 0x38
	beq	.L_b9b4
	cmp	r4, #64	@ 0x40
	beq	.L_b9b4
	cmp	r4, #72	@ 0x48
	beq	.L_b9b4
	cmp	r4, #88	@ 0x58
	beq	.L_b9b4
	cmp	r4, #96	@ 0x60
	beq	.L_b9b4
	cmp	r4, #104	@ 0x68
	beq	.L_b9b4
	cmp	r4, #112	@ 0x70
	beq	.L_b9b4
	cmp	r4, #120	@ 0x78
	bne	.L_b9bc
.L_b9b4:
	mov	r0, #245	@ 0xf5
	lsl	r0, r0, #1
	bl	m4aSongNumStartOrChange
.L_b9bc:
	mov	r0, #0
	cmp	r4, #150	@ 0x96
	ble	.L_b9c4
	mov	r0, #1
.L_b9c4:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_b9cc:
	.4byte	sUnk_8285EF6


thumb_func_start func_800B9D0
func_800B9D0:
	push	{r4, lr}
	add	r4, r0, #0
	cmp	r4, #18
	bgt	.L_b9e0
	ldr	r0, .L_b9dc
	b	.L_ba2a
.L_b9dc:
	.4byte	sUnk_8285F58
.L_b9e0:
	cmp	r4, #37	@ 0x25
	bgt	.L_b9ec
	ldr	r0, .L_b9e8
	b	.L_ba2a
.L_b9e8:
	.4byte	sUnk_8285F60
.L_b9ec:
	cmp	r4, #56	@ 0x38
	bgt	.L_b9f8
	ldr	r0, .L_b9f4
	b	.L_ba2a
.L_b9f4:
	.4byte	sUnk_8285F68
.L_b9f8:
	cmp	r4, #75	@ 0x4b
	bgt	.L_ba04
	ldr	r0, .L_ba00
	b	.L_ba2a
.L_ba00:
	.4byte	sUnk_8285F76
.L_ba04:
	cmp	r4, #94	@ 0x5e
	bgt	.L_ba10
	ldr	r0, .L_ba0c
	b	.L_ba2a
.L_ba0c:
	.4byte	sUnk_8285F7E
.L_ba10:
	cmp	r4, #113	@ 0x71
	bgt	.L_ba1c
	ldr	r0, .L_ba18
	b	.L_ba2a
.L_ba18:
	.4byte	sUnk_8285F8C
.L_ba1c:
	cmp	r4, #132	@ 0x84
	bgt	.L_ba28
	ldr	r0, .L_ba24
	b	.L_ba2a
.L_ba24:
	.4byte	sUnk_8285F9A
.L_ba28:
	ldr	r0, .L_ba58
.L_ba2a:
	str	r0, [r1, #0]
	cmp	r4, #0
	beq	.L_ba40
	cmp	r4, #19
	beq	.L_ba40
	cmp	r4, #38	@ 0x26
	beq	.L_ba40
	cmp	r4, #57	@ 0x39
	beq	.L_ba40
	cmp	r4, #76	@ 0x4c
	bne	.L_ba48
.L_ba40:
	mov	r0, #245	@ 0xf5
	lsl	r0, r0, #1
	bl	m4aSongNumStartOrChange
.L_ba48:
	mov	r0, #0
	cmp	r4, #150	@ 0x96
	ble	.L_ba50
	mov	r0, #1
.L_ba50:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_ba58:
	.4byte	sUnk_8285FAE


thumb_func_start func_800BA5C
func_800BA5C:
	add	r2, r0, #0
	mov	r0, #1
	and	r2, r0
	cmp	r2, #0
	bne	.L_ba70
	ldr	r0, .L_ba6c
	b	.L_ba72
	.align	2, 0
.L_ba6c:
	.4byte	sUnk_828B1C0
.L_ba70:
	mov	r0, #0
.L_ba72:
	str	r0, [r1, #0]
	add	r0, r2, #0
	bx	lr


thumb_func_start func_800BA78
func_800BA78:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #72	@ 0x48
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	bgt	.L_ba90
	ldr	r0, .L_ba8c
	b	.L_bafa
.L_ba8c:
	.4byte	sUnk_828E304
.L_ba90:
	cmp	r1, #11
	bgt	.L_ba9c
	ldr	r0, .L_ba98
	b	.L_bafa
.L_ba98:
	.4byte	sUnk_828E330
.L_ba9c:
	cmp	r1, #17
	bgt	.L_baa8
	ldr	r0, .L_baa4
	b	.L_bafa
.L_baa4:
	.4byte	sUnk_828E362
.L_baa8:
	cmp	r1, #23
	ble	.L_baf8
	cmp	r1, #29
	bgt	.L_bab8
	ldr	r0, .L_bab4
	b	.L_bafa
.L_bab4:
	.4byte	sUnk_828E304
.L_bab8:
	cmp	r1, #35	@ 0x23
	bgt	.L_bac4
	ldr	r0, .L_bac0
	b	.L_bafa
.L_bac0:
	.4byte	sUnk_828E3F2
.L_bac4:
	cmp	r1, #41	@ 0x29
	bgt	.L_bad0
	ldr	r0, .L_bacc
	b	.L_bafa
.L_bacc:
	.4byte	sUnk_828E41E
.L_bad0:
	cmp	r1, #47	@ 0x2f
	ble	.L_baf8
	cmp	r1, #53	@ 0x35
	bgt	.L_bae0
	ldr	r0, .L_badc
	b	.L_bafa
.L_badc:
	.4byte	sUnk_828E304
.L_bae0:
	cmp	r1, #59	@ 0x3b
	bgt	.L_baec
	ldr	r0, .L_bae8
	b	.L_bafa
.L_bae8:
	.4byte	sUnk_828E330
.L_baec:
	cmp	r1, #65	@ 0x41
	bgt	.L_baf8
	ldr	r0, .L_baf4
	b	.L_bafa
.L_baf4:
	.4byte	sUnk_828E362
.L_baf8:
	ldr	r0, .L_bb0c
.L_bafa:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #71	@ 0x47
	bne	.L_bb04
	mov	r0, #1
.L_bb04:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_bb0c:
	.4byte	sUnk_828E394


thumb_func_start func_800BB10
func_800BB10:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #40	@ 0x28
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #19
	bgt	.L_bb28
	ldr	r0, .L_bb24
	b	.L_bb2a
.L_bb24:
	.4byte	sUnk_828E476
.L_bb28:
	ldr	r0, .L_bb3c
.L_bb2a:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #39	@ 0x27
	bne	.L_bb34
	mov	r0, #1
.L_bb34:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_bb3c:
	.4byte	sUnk_828E4A2


thumb_func_start func_800BB40
func_800BB40:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #24
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #3
	bgt	.L_bb58
	ldr	r0, .L_bb54
	b	.L_bb7a
.L_bb54:
	.4byte	sUnk_828E4E0
.L_bb58:
	cmp	r1, #7
	ble	.L_bb78
	cmp	r1, #11
	bgt	.L_bb68
	ldr	r0, .L_bb64
	b	.L_bb7a
.L_bb64:
	.4byte	sUnk_828E4E0
.L_bb68:
	cmp	r1, #15
	ble	.L_bb78
	cmp	r1, #19
	bgt	.L_bb78
	ldr	r0, .L_bb74
	b	.L_bb7a
.L_bb74:
	.4byte	sUnk_828E4E0
.L_bb78:
	ldr	r0, .L_bb8c
.L_bb7a:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #23
	bne	.L_bb84
	mov	r0, #1
.L_bb84:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_bb8c:
	.4byte	sUnk_828E506


thumb_func_start func_800BB90
func_800BB90:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #52	@ 0x34
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #3
	ble	.L_bbec
	cmp	r1, #7
	bgt	.L_bbac
	ldr	r0, .L_bba8
	b	.L_bbee
.L_bba8:
	.4byte	sUnk_828E540
.L_bbac:
	cmp	r1, #11
	bgt	.L_bbb8
	ldr	r0, .L_bbb4
	b	.L_bbee
.L_bbb4:
	.4byte	sUnk_828E566
.L_bbb8:
	cmp	r1, #15
	bgt	.L_bbc4
	ldr	r0, .L_bbc0
	b	.L_bbee
.L_bbc0:
	.4byte	sUnk_828E540
.L_bbc4:
	cmp	r1, #19
	ble	.L_bbec
	cmp	r1, #23
	bgt	.L_bbd4
	ldr	r0, .L_bbd0
	b	.L_bbee
.L_bbd0:
	.4byte	sUnk_828E540
.L_bbd4:
	cmp	r1, #27
	bgt	.L_bbe0
	ldr	r0, .L_bbdc
	b	.L_bbee
.L_bbdc:
	.4byte	sUnk_828E566
.L_bbe0:
	cmp	r1, #31
	bgt	.L_bbec
	ldr	r0, .L_bbe8
	b	.L_bbee
.L_bbe8:
	.4byte	sUnk_828E540
.L_bbec:
	ldr	r0, .L_bc00
.L_bbee:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #51	@ 0x33
	bne	.L_bbf8
	mov	r0, #1
.L_bbf8:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_bc00:
	.4byte	sUnk_828E52C


thumb_func_start func_800BC04
func_800BC04:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #59	@ 0x3b
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #5
	ble	.L_bc64
	cmp	r1, #11
	bgt	.L_bc20
	ldr	r0, .L_bc1c
	b	.L_bc66
.L_bc1c:
	.4byte	sUnk_828E5AC
.L_bc20:
	cmp	r1, #17
	bgt	.L_bc2c
	ldr	r0, .L_bc28
	b	.L_bc66
.L_bc28:
	.4byte	sUnk_828E5CC
.L_bc2c:
	cmp	r1, #20
	ble	.L_bc64
	cmp	r1, #23
	bgt	.L_bc3c
	ldr	r0, .L_bc38
	b	.L_bc66
.L_bc38:
	.4byte	sUnk_828E5AC
.L_bc3c:
	cmp	r1, #26
	bgt	.L_bc48
	ldr	r0, .L_bc44
	b	.L_bc66
.L_bc44:
	.4byte	sUnk_828E5CC
.L_bc48:
	cmp	r1, #30
	ble	.L_bc64
	cmp	r1, #34	@ 0x22
	bgt	.L_bc58
	ldr	r0, .L_bc54
	b	.L_bc66
.L_bc54:
	.4byte	sUnk_828E5AC
.L_bc58:
	cmp	r1, #38	@ 0x26
	bgt	.L_bc64
	ldr	r0, .L_bc60
	b	.L_bc66
.L_bc60:
	.4byte	sUnk_828E5CC
.L_bc64:
	ldr	r0, .L_bc78
.L_bc66:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #58	@ 0x3a
	bne	.L_bc70
	mov	r0, #1
.L_bc70:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_bc78:
	.4byte	sUnk_828E58C


thumb_func_start func_800BC7C
func_800BC7C:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #90	@ 0x5a
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #19
	bgt	.L_bc94
	ldr	r0, .L_bc90
	b	.L_bcae
.L_bc90:
	.4byte	sUnk_828E52C
.L_bc94:
	cmp	r1, #29
	bgt	.L_bca0
	ldr	r0, .L_bc9c
	b	.L_bcae
.L_bc9c:
	.4byte	sUnk_828E5EC
.L_bca0:
	cmp	r1, #39	@ 0x27
	bgt	.L_bcac
	ldr	r0, .L_bca8
	b	.L_bcae
.L_bca8:
	.4byte	sUnk_828E71C
.L_bcac:
	ldr	r0, .L_bcc0
.L_bcae:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #89	@ 0x59
	bne	.L_bcb8
	mov	r0, #1
.L_bcb8:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_bcc0:
	.4byte	sUnk_828E74E


thumb_func_start func_800BCC4
func_800BCC4:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #63	@ 0x3f
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #0
	bgt	.L_bcdc
	ldr	r0, .L_bcd8
	b	.L_bd76
.L_bcd8:
	.4byte	sUnk_828E61E
.L_bcdc:
	cmp	r1, #1
	bgt	.L_bce8
	ldr	r0, .L_bce4
	b	.L_bd76
.L_bce4:
	.4byte	sUnk_828E632
.L_bce8:
	cmp	r1, #2
	ble	.L_bd74
	cmp	r1, #3
	bgt	.L_bcf8
	ldr	r0, .L_bcf4
	b	.L_bd76
.L_bcf4:
	.4byte	sUnk_828E61E
.L_bcf8:
	cmp	r1, #4
	bgt	.L_bd04
	ldr	r0, .L_bd00
	b	.L_bd76
.L_bd00:
	.4byte	sUnk_828E632
.L_bd04:
	cmp	r1, #5
	ble	.L_bd74
	cmp	r1, #8
	bgt	.L_bd14
	ldr	r0, .L_bd10
	b	.L_bd76
.L_bd10:
	.4byte	sUnk_828E61E
.L_bd14:
	cmp	r1, #11
	bgt	.L_bd20
	ldr	r0, .L_bd1c
	b	.L_bd76
.L_bd1c:
	.4byte	sUnk_828E632
.L_bd20:
	cmp	r1, #14
	ble	.L_bd74
	cmp	r1, #18
	bgt	.L_bd30
	ldr	r0, .L_bd2c
	b	.L_bd76
.L_bd2c:
	.4byte	sUnk_828E61E
.L_bd30:
	cmp	r1, #22
	bgt	.L_bd3c
	ldr	r0, .L_bd38
	b	.L_bd76
.L_bd38:
	.4byte	sUnk_828E632
.L_bd3c:
	cmp	r1, #26
	ble	.L_bd74
	cmp	r1, #30
	bgt	.L_bd4c
	ldr	r0, .L_bd48
	b	.L_bd76
.L_bd48:
	.4byte	sUnk_828E61E
.L_bd4c:
	cmp	r1, #34	@ 0x22
	bgt	.L_bd58
	ldr	r0, .L_bd54
	b	.L_bd76
.L_bd54:
	.4byte	sUnk_828E632
.L_bd58:
	cmp	r1, #38	@ 0x26
	ble	.L_bd74
	cmp	r1, #46	@ 0x2e
	bgt	.L_bd68
	ldr	r0, .L_bd64
	b	.L_bd76
.L_bd64:
	.4byte	sUnk_828E61E
.L_bd68:
	cmp	r1, #54	@ 0x36
	bgt	.L_bd74
	ldr	r0, .L_bd70
	b	.L_bd76
.L_bd70:
	.4byte	sUnk_828E632
.L_bd74:
	ldr	r0, .L_bd88
.L_bd76:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #62	@ 0x3e
	bne	.L_bd80
	mov	r0, #1
.L_bd80:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_bd88:
	.4byte	sUnk_828E646


thumb_func_start func_800BD8C
func_800BD8C:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #60	@ 0x3c
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #29
	bgt	.L_bda4
	ldr	r0, .L_bda0
	b	.L_bdca
.L_bda0:
	.4byte	sUnk_828E660
.L_bda4:
	cmp	r1, #37	@ 0x25
	bgt	.L_bdb0
	ldr	r0, .L_bdac
	b	.L_bdca
.L_bdac:
	.4byte	sUnk_828E66E
.L_bdb0:
	cmp	r1, #45	@ 0x2d
	bgt	.L_bdbc
	ldr	r0, .L_bdb8
	b	.L_bdca
.L_bdb8:
	.4byte	sUnk_828E68E
.L_bdbc:
	cmp	r1, #53	@ 0x35
	bgt	.L_bdc8
	ldr	r0, .L_bdc4
	b	.L_bdca
.L_bdc4:
	.4byte	sUnk_828E6BA
.L_bdc8:
	ldr	r0, .L_bddc
.L_bdca:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #59	@ 0x3b
	bne	.L_bdd4
	mov	r0, #1
.L_bdd4:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_bddc:
	.4byte	sUnk_828E6F8


thumb_func_start func_800BDE0
func_800BDE0:
	push	{r4, lr}
	add	r4, r1, #0
	mov	r1, #55	@ 0x37
	bl	__modsi3
	add	r1, r0, #0
	cmp	r1, #9
	bgt	.L_bdf8
	ldr	r0, .L_bdf4
	b	.L_be1e
.L_bdf4:
	.4byte	sUnk_828E6F8
.L_bdf8:
	cmp	r1, #18
	bgt	.L_be04
	ldr	r0, .L_be00
	b	.L_be1e
.L_be00:
	.4byte	sUnk_828E6BA
.L_be04:
	cmp	r1, #26
	bgt	.L_be10
	ldr	r0, .L_be0c
	b	.L_be1e
.L_be0c:
	.4byte	sUnk_828E68E
.L_be10:
	cmp	r1, #34	@ 0x22
	bgt	.L_be1c
	ldr	r0, .L_be18
	b	.L_be1e
.L_be18:
	.4byte	sUnk_828E66E
.L_be1c:
	ldr	r0, .L_be30
.L_be1e:
	str	r0, [r4, #0]
	mov	r0, #0
	cmp	r1, #54	@ 0x36
	bne	.L_be28
	mov	r0, #1
.L_be28:
	pop	{r4}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_be30:
	.4byte	sUnk_828E660


thumb_func_start func_800BE34
func_800BE34:
	add	r2, r0, #0
	cmp	r2, #0
	bge	.L_be3c
	add	r0, r2, #7
.L_be3c:
	asr	r3, r0, #3
	lsl	r0, r3, #3
	sub	r3, r2, r0
	cmp	r3, #3
	bgt	.L_be50
	ldr	r0, .L_be4c
	b	.L_be52
	.align	2, 0
.L_be4c:
	.4byte	sUnk_828E70C
.L_be50:
	ldr	r0, .L_be60
.L_be52:
	str	r0, [r1, #0]
	mov	r0, #0
	cmp	r3, #7
	bne	.L_be5c
	mov	r0, #1
.L_be5c:
	bx	lr
	.align	2, 0
.L_be60:
	.4byte	sUnk_828E714
