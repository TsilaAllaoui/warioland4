.align 2, 0
.global LoadStageCollectiblesFromSave
.thumb
.type LoadStageCollectiblesFromSave, %function
LoadStageCollectiblesFromSave:
	push	{r4, r5, r6, lr}
	ldr	r1, .L_75b70
	ldrb	r6, [r1, #0]
	ldr	r1, .L_75b74
	ldrb	r3, [r1, #0]
	cmp	r3, #4
	beq	.L_75b60
	b	.L_75e40
.L_75b60:
	cmp	r6, #1
	bge	.L_75b66
	b	.L_75e1c
.L_75b66:
	cmp	r6, #4
	ble	.L_75b78
	cmp	r6, #5
	beq	.L_75ba8
	b	.L_75e1c
.L_75b70:
	.4byte	gCurrentPassage
.L_75b74:
	.4byte	gCurrentStageNumber
.L_75b78:
	ldr	r1, .L_75b94
	mov	r2, #2
	strb	r2, [r1, #0]
	ldr	r1, .L_75b98
	strb	r2, [r1, #0]
	ldr	r1, .L_75b9c
	strb	r2, [r1, #0]
	ldr	r1, .L_75ba0
	mov	r2, #0
.L_75b8a:
	strb	r2, [r1, #0]
	ldr	r1, .L_75ba4
	strb	r2, [r1, #0]
	b	.L_75f34
	.align	2, 0
.L_75b94:
	.4byte	gCollectedNEJewelPiece
.L_75b98:
	.4byte	gCollectedSEJewelPiece
.L_75b9c:
	.4byte	gCollectedSWJewelPiece
.L_75ba0:
	.4byte	gCollectedNWJewelPiece
.L_75ba4:
	.4byte	gCollectedCD
.L_75ba8:
	ldr	r3, .L_75bcc
	add	r1, r3, #0
	add	r1, #40	@ 0x28
	ldrb	r1, [r1, #0]
	mov	r2, #1
	and	r2, r1
	mov	ip, r3
	cmp	r2, #0
	beq	.L_75bd8
	ldr	r2, .L_75bd0
	mov	r1, #2
	strb	r1, [r2, #0]
	ldr	r2, .L_75bd4
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75bdc
	.align	2, 0
.L_75bcc:
	.4byte	gCurrentCollection
.L_75bd0:
	.4byte	gCollectedNEJewelPiece
.L_75bd4:
	.4byte	gGoldenTreasureCount
.L_75bd8:
	ldr	r1, .L_75c00
	strb	r2, [r1, #0]
.L_75bdc:
	mov	r1, ip
	add	r1, #40	@ 0x28
	ldrb	r2, [r1, #0]
	mov	r3, #2
	add	r1, r3, #0
	and	r1, r2
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	cmp	r2, #0
	beq	.L_75c0c
	ldr	r1, .L_75c04
	strb	r3, [r1, #0]
	ldr	r2, .L_75c08
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75c10
	.align	2, 0
.L_75c00:
	.4byte	gCollectedNEJewelPiece
.L_75c04:
	.4byte	gCollectedSEJewelPiece
.L_75c08:
	.4byte	gGoldenTreasureCount
.L_75c0c:
	ldr	r1, .L_75c34
	strb	r2, [r1, #0]
.L_75c10:
	mov	r1, ip
	add	r1, #40	@ 0x28
	ldrb	r2, [r1, #0]
	mov	r1, #4
	and	r1, r2
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	cmp	r2, #0
	beq	.L_75c40
	ldr	r2, .L_75c38
	mov	r1, #2
	strb	r1, [r2, #0]
	ldr	r2, .L_75c3c
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75c44
	.align	2, 0
.L_75c34:
	.4byte	gCollectedSEJewelPiece
.L_75c38:
	.4byte	gCollectedSWJewelPiece
.L_75c3c:
	.4byte	gGoldenTreasureCount
.L_75c40:
	ldr	r1, .L_75c64
	strb	r2, [r1, #0]
.L_75c44:
	mov	r1, ip
	add	r1, #64	@ 0x40
	ldrb	r1, [r1, #0]
	mov	r2, #1
	and	r2, r1
	cmp	r2, #0
	beq	.L_75c70
	ldr	r2, .L_75c68
	mov	r1, #2
	strb	r1, [r2, #0]
	ldr	r2, .L_75c6c
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75c74
	.align	2, 0
.L_75c64:
	.4byte	gCollectedSWJewelPiece
.L_75c68:
	.4byte	gCollectedNWJewelPiece
.L_75c6c:
	.4byte	gGoldenTreasureCount
.L_75c70:
	ldr	r1, .L_75c98
	strb	r2, [r1, #0]
.L_75c74:
	mov	r1, ip
	add	r1, #64	@ 0x40
	ldrb	r2, [r1, #0]
	mov	r3, #2
	add	r1, r3, #0
	and	r1, r2
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	cmp	r2, #0
	beq	.L_75ca4
	ldr	r1, .L_75c9c
	strb	r3, [r1, #0]
	ldr	r2, .L_75ca0
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75ca8
	.align	2, 0
.L_75c98:
	.4byte	gCollectedNWJewelPiece
.L_75c9c:
	.4byte	gHasBossTreasure5
.L_75ca0:
	.4byte	gGoldenTreasureCount
.L_75ca4:
	ldr	r1, .L_75ccc
	strb	r2, [r1, #0]
.L_75ca8:
	mov	r1, ip
	add	r1, #64	@ 0x40
	ldrb	r2, [r1, #0]
	mov	r1, #4
	and	r1, r2
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	cmp	r2, #0
	beq	.L_75cd8
	ldr	r2, .L_75cd0
	mov	r1, #2
	strb	r1, [r2, #0]
	ldr	r2, .L_75cd4
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75cdc
	.align	2, 0
.L_75ccc:
	.4byte	gHasBossTreasure5
.L_75cd0:
	.4byte	gHasBossTreasure6
.L_75cd4:
	.4byte	gGoldenTreasureCount
.L_75cd8:
	ldr	r1, .L_75cfc
	strb	r2, [r1, #0]
.L_75cdc:
	mov	r1, ip
	add	r1, #88	@ 0x58
	ldrb	r1, [r1, #0]
	mov	r2, #1
	and	r2, r1
	cmp	r2, #0
	beq	.L_75d08
	ldr	r2, .L_75d00
	mov	r1, #2
	strb	r1, [r2, #0]
	ldr	r2, .L_75d04
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75d0c
	.align	2, 0
.L_75cfc:
	.4byte	gHasBossTreasure6
.L_75d00:
	.4byte	gHasBossTreasure7
.L_75d04:
	.4byte	gGoldenTreasureCount
.L_75d08:
	ldr	r1, .L_75d30
	strb	r2, [r1, #0]
.L_75d0c:
	mov	r1, ip
	add	r1, #88	@ 0x58
	ldrb	r2, [r1, #0]
	mov	r3, #2
	add	r1, r3, #0
	and	r1, r2
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	cmp	r2, #0
	beq	.L_75d3c
	ldr	r1, .L_75d34
	strb	r3, [r1, #0]
	ldr	r2, .L_75d38
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75d40
	.align	2, 0
.L_75d30:
	.4byte	gHasBossTreasure7
.L_75d34:
	.4byte	gHasBossTreasure8
.L_75d38:
	.4byte	gGoldenTreasureCount
.L_75d3c:
	ldr	r1, .L_75d64
	strb	r2, [r1, #0]
.L_75d40:
	mov	r1, ip
	add	r1, #88	@ 0x58
	ldrb	r2, [r1, #0]
	mov	r1, #4
	and	r1, r2
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	cmp	r2, #0
	beq	.L_75d70
	ldr	r2, .L_75d68
	mov	r1, #2
	strb	r1, [r2, #0]
	ldr	r2, .L_75d6c
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75d74
	.align	2, 0
.L_75d64:
	.4byte	gHasBossTreasure8
.L_75d68:
	.4byte	gHasBossTreasure9
.L_75d6c:
	.4byte	gGoldenTreasureCount
.L_75d70:
	ldr	r1, .L_75d94
	strb	r2, [r1, #0]
.L_75d74:
	mov	r1, ip
	add	r1, #112	@ 0x70
	ldrb	r1, [r1, #0]
	mov	r2, #1
	and	r2, r1
	cmp	r2, #0
	beq	.L_75da0
	ldr	r2, .L_75d98
	mov	r1, #2
	strb	r1, [r2, #0]
	ldr	r2, .L_75d9c
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75da4
	.align	2, 0
.L_75d94:
	.4byte	gHasBossTreasure9
.L_75d98:
	.4byte	gHasBossTreasure10
.L_75d9c:
	.4byte	gGoldenTreasureCount
.L_75da0:
	ldr	r1, .L_75dc8
	strb	r2, [r1, #0]
.L_75da4:
	mov	r1, ip
	add	r1, #112	@ 0x70
	ldrb	r2, [r1, #0]
	mov	r3, #2
	add	r1, r3, #0
	and	r1, r2
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	cmp	r2, #0
	beq	.L_75dd4
	ldr	r1, .L_75dcc
	strb	r3, [r1, #0]
	ldr	r2, .L_75dd0
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75dd8
	.align	2, 0
.L_75dc8:
	.4byte	gHasBossTreasure10
.L_75dcc:
	.4byte	gHasBossTreasure11
.L_75dd0:
	.4byte	gGoldenTreasureCount
.L_75dd4:
	ldr	r1, .L_75dfc
	strb	r2, [r1, #0]
.L_75dd8:
	mov	r1, ip
	add	r1, #112	@ 0x70
	ldrb	r2, [r1, #0]
	mov	r1, #4
	and	r1, r2
	lsl	r1, r1, #24
	lsr	r2, r1, #24
	cmp	r2, #0
	beq	.L_75e08
	ldr	r2, .L_75e00
	mov	r1, #2
	strb	r1, [r2, #0]
	ldr	r2, .L_75e04
	ldrb	r1, [r2, #0]
	add	r1, #1
	strb	r1, [r2, #0]
	b	.L_75e0c
	.align	2, 0
.L_75dfc:
	.4byte	gHasBossTreasure11
.L_75e00:
	.4byte	gHasBossTreasure12
.L_75e04:
	.4byte	gGoldenTreasureCount
.L_75e08:
	ldr	r1, .L_75e14
	strb	r2, [r1, #0]
.L_75e0c:
	ldr	r1, .L_75e18
	mov	r2, #0
	strb	r2, [r1, #0]
	b	.L_75f34
.L_75e14:
	.4byte	gHasBossTreasure12
.L_75e18:
	.4byte	gCollectedCD
.L_75e1c:
	ldr	r1, .L_75e30
	mov	r2, #0
	strb	r2, [r1, #0]
	ldr	r1, .L_75e34
	strb	r2, [r1, #0]
	ldr	r1, .L_75e38
	strb	r2, [r1, #0]
	ldr	r1, .L_75e3c
	b	.L_75b8a
	.align	2, 0
.L_75e30:
	.4byte	gCollectedNEJewelPiece
.L_75e34:
	.4byte	gCollectedSEJewelPiece
.L_75e38:
	.4byte	gCollectedSWJewelPiece
.L_75e3c:
	.4byte	gCollectedNWJewelPiece
.L_75e40:
	ldr	r2, .L_75e64
	lsl	r3, r3, #2
	lsl	r4, r6, #1
	add	r1, r4, r6
	lsl	r1, r1, #3
	add	r1, r3, r1
	add	r1, r1, r2
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #31
	lsr	r5, r1, #31
	mov	ip, r2
	cmp	r5, #0
	beq	.L_75e6c
	ldr	r2, .L_75e68
	mov	r1, #3
	strb	r1, [r2, #0]
	b	.L_75e70
	.align	2, 0
.L_75e64:
	.4byte	gCurrentCollection
.L_75e68:
	.4byte	gCollectedNEJewelPiece
.L_75e6c:
	ldr	r1, .L_75e8c
	strb	r5, [r1, #0]
.L_75e70:
	add	r1, r4, r6
	lsl	r1, r1, #3
	add	r1, r3, r1
	add	r1, ip
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #30
	lsr	r2, r1, #31
	cmp	r2, #0
	beq	.L_75e94
	ldr	r2, .L_75e90
	mov	r1, #3
	strb	r1, [r2, #0]
	b	.L_75e98
	.align	2, 0
.L_75e8c:
	.4byte	gCollectedNEJewelPiece
.L_75e90:
	.4byte	gCollectedSEJewelPiece
.L_75e94:
	ldr	r1, .L_75eb4
	strb	r2, [r1, #0]
.L_75e98:
	add	r1, r4, r6
	lsl	r1, r1, #3
	add	r1, r3, r1
	add	r1, ip
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #29
	lsr	r2, r1, #31
	cmp	r2, #0
	beq	.L_75ebc
	ldr	r2, .L_75eb8
	mov	r1, #3
	strb	r1, [r2, #0]
	b	.L_75ec0
	.align	2, 0
.L_75eb4:
	.4byte	gCollectedSEJewelPiece
.L_75eb8:
	.4byte	gCollectedSWJewelPiece
.L_75ebc:
	ldr	r1, .L_75edc
	strb	r2, [r1, #0]
.L_75ec0:
	add	r1, r4, r6
	lsl	r1, r1, #3
	add	r1, r3, r1
	add	r1, ip
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #28
	lsr	r2, r1, #31
	cmp	r2, #0
	beq	.L_75ee4
	ldr	r2, .L_75ee0
	mov	r1, #3
	strb	r1, [r2, #0]
	b	.L_75ee8
	.align	2, 0
.L_75edc:
	.4byte	gCollectedSWJewelPiece
.L_75ee0:
	.4byte	gCollectedNWJewelPiece
.L_75ee4:
	ldr	r1, .L_75f04
	strb	r2, [r1, #0]
.L_75ee8:
	add	r1, r4, r6
	lsl	r1, r1, #3
	add	r1, r3, r1
	add	r1, ip
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #27
	lsr	r2, r1, #31
	cmp	r2, #0
	beq	.L_75f0c
	ldr	r2, .L_75f08
	mov	r1, #3
	strb	r1, [r2, #0]
	b	.L_75f10
	.align	2, 0
.L_75f04:
	.4byte	gCollectedNWJewelPiece
.L_75f08:
	.4byte	gCollectedCD
.L_75f0c:
	ldr	r1, .L_75f2c
	strb	r2, [r1, #0]
.L_75f10:
	add	r1, r4, r6
	lsl	r1, r1, #3
	add	r1, r3, r1
	add	r1, ip
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #26
	lsr	r2, r1, #31
	cmp	r2, #0
	beq	.L_75f34
	ldr	r2, .L_75f30
	mov	r1, #2
	strb	r1, [r2, #0]
	b	.L_75f38
	.align	2, 0
.L_75f2c:
	.4byte	gCollectedCD
.L_75f30:
	.4byte	gCollectedKeyzer
.L_75f34:
	ldr	r1, .L_75f40
	strb	r2, [r1, #0]
.L_75f38:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.align	2, 0
.L_75f40:
	.4byte	gCollectedKeyzer
