	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"start.c"
	.text
	.align	2
	.global	flashColorInTile
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	flashColorInTile, %function
flashColorInTile:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	subs	r5, r3, #0
	movne	r5, #1
	ldr	r7, [sp, #24]
	rsb	r8, r7, #100663296
	sub	r6, r7, #2
	add	r8, r8, r0, lsl #5
	add	r7, r7, #30
.L4:
	mov	ip, #0
	mov	r0, ip
	ldrh	r4, [r6, #2]!
.L3:
	asr	r3, r4, ip
	and	r3, r3, #15
	cmp	r3, r1
	movne	lr, #0
	andeq	lr, r5, #1
	cmp	lr, #0
	movne	r3, r2
	orr	r0, r0, r3, lsl ip
	add	ip, ip, #4
	lsl	r0, r0, #16
	cmp	ip, #16
	lsr	r0, r0, #16
	bne	.L3
	cmp	r7, r6
	strh	r0, [r8, r6]	@ movhi
	bne	.L4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	flashColorInTile, .-flashColorInTile
	.align	2
	.global	fillTileWithColor
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillTileWithColor, %function
fillTileWithColor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	orr	r1, r1, r1, lsl #4
	lsl	r3, r0, #5
	and	r2, r1, #255
	add	r3, r3, #100663296
	orr	r2, r2, r2, lsl #8
	add	r1, r3, #32
.L11:
	strh	r2, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L11
	bx	lr
	.size	fillTileWithColor, .-fillTileWithColor
	.align	2
	.global	initStartPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initStartPlayer, %function
initStartPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, lr}
	mov	r2, #72
	mov	r4, #112
	mov	r1, #5
	mov	r0, #1
	mov	lr, #16
	mov	r5, #165
	ldr	ip, .L16
	str	r3, [ip, #16]
	strb	r3, [ip, #56]
	str	r3, [ip, #44]
	str	r3, [ip, #36]
	str	r3, [ip, #12]
	str	r4, [ip]
	str	r2, [ip, #4]
	str	r1, [ip, #48]
	str	r0, [ip, #40]
	ldr	r4, .L16+4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L16+8
	ldr	r1, .L16+12
	str	r5, [ip, #20]
	str	lr, [ip, #24]
	str	lr, [ip, #28]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L16+16
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	startPlayer
	.word	DMANow
	.word	83886592
	.word	playerPal
	.word	100728832
	.word	playerTiles
	.size	initStartPlayer, .-initStartPlayer
	.align	2
	.global	initGuideSprite
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGuideSprite, %function
initGuideSprite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1
	mov	r0, #32
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r6, #436
	mov	r5, #127
	mov	r4, #16
	mov	lr, #416
	mov	ip, #456
	ldr	r3, .L20
	str	r0, [r3, #28]
	strb	r1, [r3, #56]
	ldr	r0, .L20+4
	str	r6, [r3, #16]
	str	r5, [r3, #20]
	str	r4, [r3, #24]
	str	lr, [r0]
	str	r1, [r3, #48]
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #12]
	str	ip, [r0, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	guide
	.word	.LANCHOR0
	.size	initGuideSprite, .-initGuideSprite
	.global	__aeabi_idivmod
	.align	2
	.global	updateStartPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateStartPlayer, %function
updateStartPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, #0
	ldr	r4, .L127
	ldr	r6, .L127+4
	add	r2, r4, #20
	ldm	r2, {r2, r5, lr}
	ldr	r3, .L127+8
	ldr	ip, [r4, #16]
	ldr	r6, [r6]
	ldrh	r3, [r3]
	add	r8, r5, ip
	mov	r7, r1
	sub	sp, sp, #12
	sub	r1, r8, #1
	add	r9, lr, r2
	cmp	r6, r10
	str	r1, [sp, #4]
	mov	r6, r0
	str	r10, [r4, #40]
	sub	r1, r9, #1
	and	r0, r3, #16
	beq	.L23
	cmp	r0, r10
	beq	.L24
.L116:
	ldr	r8, .L127+12
.L25:
	tst	r3, #32
	bne	.L33
	mov	r0, #1
	ldr	r9, [r4, #16]
	subs	r9, r9, #1
	str	r0, [r4, #40]
	str	r0, [r4, #36]
	bmi	.L33
	ldr	r0, .L127+16
	add	r10, r0, r2, lsl #9
	ldrb	r10, [r10, r9]	@ zero_extendqisi2
	cmp	r10, #0
	beq	.L33
	add	r1, r0, r1, lsl #9
	ldrb	r1, [r1, r9]	@ zero_extendqisi2
	cmp	r1, #0
	strne	r9, [r4, #16]
.L33:
	tst	r3, #64
	bne	.L36
	mov	r0, #1
	mov	r1, #2
	subs	r2, r2, #1
	str	r0, [r4, #40]
	str	r1, [r4, #36]
	bmi	.L36
	ldr	r1, .L127+16
	add	r0, r1, ip
	ldrb	r0, [r0, r2, lsl #9]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L36
	ldr	r0, [sp, #4]
	add	r1, r1, r0
	ldrb	r1, [r1, r2, lsl #9]	@ zero_extendqisi2
	cmp	r1, #0
	strne	r2, [r4, #20]
.L36:
	tst	r3, #128
	bne	.L118
	mov	r1, #1
	mov	r2, #3
	ldr	r3, [r4, #20]
	str	r1, [r4, #40]
	rsb	r1, lr, #512
	cmp	r3, r1
	str	r2, [r4, #36]
	bge	.L42
	ldr	r1, .L127+16
.L123:
	add	lr, lr, r3
	add	ip, r1, ip
	ldrb	r2, [ip, lr, lsl #9]	@ zero_extendqisi2
	cmp	r2, #0
	add	r2, r3, #1
	beq	.L42
	ldr	r3, [sp, #4]
	add	r1, r1, r3
	ldrb	r3, [r1, lr, lsl #9]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L42
	ldr	r3, [r8, #12]
	add	r3, r3, #1
	str	r2, [r4, #20]
	str	r3, [r8, #12]
	b	.L41
.L24:
	mov	r10, #1
	ldr	r9, .L127+16
	cmp	r8, #512
	add	fp, r9, r2, lsl #9
	add	r8, r5, ip
	str	r0, [r4, #36]
	str	r10, [r4, #40]
	ldrb	r0, [fp, r8]	@ zero_extendqisi2
	add	fp, ip, r10
	blt	.L124
.L26:
	cmp	r0, #2
	beq	.L30
	add	r9, r9, r1, lsl #9
	ldrb	r10, [r9, r8]	@ zero_extendqisi2
.L27:
	cmp	r10, #2
	bne	.L116
.L30:
	mov	r0, #1
	ldr	r8, .L127+12
	str	r0, [r8, #8]
	b	.L25
.L23:
	cmp	r0, #0
	bne	.L117
	mov	r10, #1
	ldr	r9, .L127+20
	cmp	r8, #512
	add	fp, r9, r2, lsl #9
	add	r8, r5, ip
	str	r0, [r4, #36]
	str	r10, [r4, #40]
	ldrb	r0, [fp, r8]	@ zero_extendqisi2
	add	fp, ip, r10
	bge	.L45
	add	r10, r9, r1, lsl #9
	cmp	r0, #0
	ldrb	r10, [r10, r8]	@ zero_extendqisi2
	beq	.L46
	cmp	r10, #0
	bne	.L125
	cmp	r0, #2
	beq	.L49
.L117:
	ldr	r8, .L127+12
.L44:
	tst	r3, #32
	bne	.L52
	mov	r0, #1
	ldr	r9, [r4, #16]
	subs	r9, r9, #1
	str	r0, [r4, #40]
	str	r0, [r4, #36]
	bmi	.L52
	ldr	r0, .L127+20
	add	r10, r0, r2, lsl #9
	ldrb	r10, [r10, r9]	@ zero_extendqisi2
	cmp	r10, #0
	beq	.L52
	add	r1, r0, r1, lsl #9
	ldrb	r1, [r1, r9]	@ zero_extendqisi2
	cmp	r1, #0
	strne	r9, [r4, #16]
.L52:
	tst	r3, #64
	bne	.L55
	mov	r0, #1
	mov	r1, #2
	subs	r2, r2, #1
	str	r0, [r4, #40]
	str	r1, [r4, #36]
	bmi	.L55
	ldr	r1, .L127+20
	add	r0, r1, ip
	ldrb	r0, [r0, r2, lsl #9]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L55
	ldr	r0, [sp, #4]
	add	r1, r1, r0
	ldrb	r1, [r1, r2, lsl #9]	@ zero_extendqisi2
	cmp	r1, #0
	strne	r2, [r4, #20]
.L55:
	tst	r3, #128
	bne	.L118
	mov	r1, #1
	mov	r2, #3
	ldr	r3, [r4, #20]
	str	r1, [r4, #40]
	rsb	r1, lr, #512
	cmp	r3, r1
	str	r2, [r4, #36]
	blt	.L126
.L42:
	ldr	r3, [r8, #12]
	add	r3, r3, #1
	str	r3, [r8, #12]
.L41:
	ldr	r2, .L127+24
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L59
	ldr	r0, [r8, #16]
	ldr	r3, .L127+28
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r8, #16]
	str	r3, [r8, #12]
.L59:
	add	r5, r5, r5, lsr #31
	ldr	r3, [r4, #16]
	asr	r5, r5, #1
	rsb	r5, r5, #120
	sub	r5, r3, r5
	str	r5, [r6]
	ldr	r3, [r4, #28]
	add	r3, r3, r3, lsr #31
	ldr	r2, [r4, #20]
	asr	r3, r3, #1
	rsb	r3, r3, #80
	sub	r3, r2, r3
	str	r3, [r7]
	ldr	r3, [r6]
	bic	r3, r3, r3, asr #31
	str	r3, [r6]
	ldr	r3, [r7]
	bic	r3, r3, r3, asr #31
	str	r3, [r7]
	ldr	r3, [r6]
	cmp	r3, #272
	movge	r3, #272
	str	r3, [r6]
	ldr	r3, [r7]
	cmp	r3, #352
	movge	r3, #352
	str	r3, [r7]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L118:
	ldr	r2, [r4, #40]
	ldr	r3, [r8, #12]
	cmp	r2, #0
	add	r3, r3, #1
	str	r3, [r8, #12]
	streq	r2, [r8, #16]
	streq	r2, [r8, #12]
	beq	.L59
	b	.L41
.L125:
	str	fp, [r4, #16]
.L45:
	cmp	r0, #2
	beq	.L49
	add	r9, r9, r1, lsl #9
	ldrb	r10, [r9, r8]	@ zero_extendqisi2
.L46:
	cmp	r10, #2
	bne	.L117
.L49:
	mov	r0, #1
	ldr	r8, .L127+12
	str	r0, [r8, #8]
	b	.L44
.L124:
	add	r10, r9, r1, lsl #9
	cmp	r0, #0
	ldrb	r10, [r10, r8]	@ zero_extendqisi2
	beq	.L27
	cmp	r10, #0
	beq	.L28
	str	fp, [r4, #16]
	b	.L26
.L126:
	ldr	r1, .L127+20
	b	.L123
.L28:
	cmp	r0, #2
	bne	.L116
	b	.L30
.L128:
	.align	2
.L127:
	.word	startPlayer
	.word	talkedToGuide
	.word	buttons
	.word	.LANCHOR0
	.word	townCMBitmap
	.word	townCM2Bitmap
	.word	.LANCHOR1
	.word	__aeabi_idivmod
	.size	updateStartPlayer, .-updateStartPlayer
	.align	2
	.global	updateGuideSprite
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGuideSprite, %function
updateGuideSprite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L138
	ldr	r2, .L138+4
	ldr	r1, [r3, #20]
	ldr	r0, [r2, #4]
	add	r1, r1, #1
	cmp	r1, r0
	push	{r4, lr}
	str	r1, [r3, #20]
	ble	.L130
	ldr	r0, [r2, #8]
	ldr	r1, [r3, #24]
	cmn	r0, #1
	add	r1, r1, #1
	beq	.L137
	rsbs	ip, r1, #0
	and	ip, ip, #3
	and	r0, r1, #3
	rsbpl	r0, ip, #0
.L132:
	mov	r1, #0
	str	r0, [r3, #24]
	str	r1, [r3, #20]
.L130:
	ldr	r1, [r3, #28]
	ldr	ip, [r2, #12]
	add	r1, r1, #1
	ldr	r0, .L138+8
	cmp	r1, ip
	str	r1, [r3, #28]
	ldr	r1, [r0, #16]
	ble	.L133
	mov	ip, #0
	ldr	lr, [r2, #16]
	ldr	r4, [r2, #8]
	mla	r1, r4, lr, r1
	str	ip, [r3, #28]
	str	r1, [r0, #16]
.L133:
	ldr	ip, [r3]
	cmp	ip, r1
	ble	.L134
	mov	lr, #1
	mov	r1, #0
	str	lr, [r2, #8]
	str	ip, [r0, #16]
	str	r1, [r3, #24]
	pop	{r4, lr}
	bx	lr
.L134:
	ldr	ip, [r3, #4]
	cmp	ip, r1
	mvnlt	lr, #0
	movlt	r1, #0
	strlt	lr, [r2, #8]
	strlt	ip, [r0, #16]
	strlt	r1, [r3, #24]
	pop	{r4, lr}
	bx	lr
.L137:
	ldr	r0, .L138+12
	smull	lr, ip, r0, r1
	asr	r0, r1, #31
	rsb	r0, r0, ip, asr #1
	add	r0, r0, r0, lsl #2
	sub	r0, r1, r0
	b	.L132
.L139:
	.align	2
.L138:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	guide
	.word	1717986919
	.size	updateGuideSprite, .-updateGuideSprite
	.align	2
	.global	drawStartPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStartPlayer, %function
drawStartPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r2, .L148
	ldr	r1, .L148+4
	ldr	r3, [r2, #20]
	ldr	r0, [r1]
	ldr	r1, .L148+8
	ldrb	ip, [r2, #56]	@ zero_extendqisi2
	ldr	r4, [r1]
	sub	r3, r3, r0
	ldr	r1, [r2, #36]
	ldr	lr, .L148+12
	ldr	r0, .L148+16
	ldr	r2, [r2, #16]
	and	r3, r3, #255
	orr	r3, r3, lr
	lsl	r5, ip, #3
	cmp	r1, #0
	strh	r3, [r0, r5]	@ movhi
	sub	r2, r2, r4
	add	r0, r0, ip, lsl #3
	bne	.L141
	ldr	r3, .L148+20
	ldr	r1, .L148+24
	ldr	r3, [r3, #16]
	add	r1, r1, r3, lsl #2
	ldr	r3, [r1, #20]
	lsl	r2, r2, #23
	add	r3, r3, #32
	lsr	r2, r2, #23
	lsl	r3, r3, #22
	orr	r2, r2, lr
	lsr	r3, r3, #22
	strh	r2, [r0, #2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
.L140:
	pop	{r4, r5, lr}
	bx	lr
.L141:
	cmp	r1, #1
	beq	.L146
	cmp	r1, #2
	beq	.L147
	cmp	r1, #3
	bne	.L140
	ldr	r1, .L148+20
	ldr	r3, .L148+24
	ldr	r1, [r1, #16]
	add	r3, r3, r1, lsl #2
	ldr	r1, [r3, #60]
	lsl	r3, r2, #23
	add	r2, r1, #32
	lsr	r3, r3, #23
	lsl	r2, r2, #22
	orr	r3, r3, lr
	lsr	r2, r2, #22
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	b	.L140
.L146:
	ldr	r1, .L148+20
	ldr	r3, .L148+24
	ldr	r1, [r1, #16]
	add	r3, r3, r1, lsl #2
	ldr	r1, [r3, #20]
	lsl	r2, r2, #23
	add	r1, r1, #32
	lsr	r2, r2, #23
	lsl	r1, r1, #22
	orr	r2, r2, #36864
	lsr	r1, r1, #22
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L147:
	ldr	r1, .L148+20
	ldr	r3, .L148+24
	ldr	r1, [r1, #16]
	add	r3, r3, r1, lsl #2
	ldr	r1, [r3, #40]
	lsl	r2, r2, #23
	add	r1, r1, #32
	lsr	r2, r2, #23
	lsl	r1, r1, #22
	orr	r2, r2, lr
	lsr	r1, r1, #22
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L149:
	.align	2
.L148:
	.word	startPlayer
	.word	vOff
	.word	hOff
	.word	-32768
	.word	shadowOAM
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	drawStartPlayer, .-drawStartPlayer
	.align	2
	.global	drawGuideSprite
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGuideSprite, %function
drawGuideSprite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r2, .L154
	ldr	r1, .L154+4
	ldr	lr, .L154+8
	ldr	r1, [r1]
	ldr	r3, [r2, #20]
	ldr	r4, .L154+12
	ldrb	ip, [r2, #56]	@ zero_extendqisi2
	sub	r3, r3, r1
	ldr	r1, [r2, #16]
	ldr	r2, [r4]
	ldr	r4, [lr, #8]
	cmn	r4, #1
	sub	r1, r1, r2
	moveq	r2, #0
	movne	r2, #4096
	and	r3, r3, #255
	mvn	r3, r3, lsl #17
	lsl	r1, r1, #23
	lsr	r1, r1, #23
	orr	r2, r2, r1
	mvn	r2, r2, lsl #17
	mvn	r3, r3, lsr #17
	mvn	r2, r2, lsr #17
	ldr	r0, .L154+16
	lsl	ip, ip, #3
	strh	r3, [r0, ip]	@ movhi
	ldr	r3, .L154+20
	ldr	r3, [r3, #24]
	addeq	lr, lr, r3, lsl #2
	addne	lr, lr, r3, lsl #2
	ldreq	r3, [lr, #80]
	ldrne	r3, [lr, #100]
	add	r3, r3, #288
	lsl	r3, r3, #22
	add	r1, r0, ip
	lsr	r3, r3, #22
	strh	r2, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L155:
	.align	2
.L154:
	.word	guide
	.word	vOff
	.word	.LANCHOR1
	.word	hOff
	.word	shadowOAM
	.word	.LANCHOR0
	.size	drawGuideSprite, .-drawGuideSprite
	.align	2
	.global	checkPlayerGuideCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkPlayerGuideCollision, %function
checkPlayerGuideCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L158
	add	r1, r3, #24
	ldm	r1, {r1, ip}
	ldr	r2, [r3, #20]
	ldr	r3, [r3, #16]
	sub	sp, sp, #16
	ldr	r0, .L158+4
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #16
	ldm	r0, {r0, r1, r2, r3}
	ldr	r4, .L158+8
	mov	lr, pc
	bx	r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L159:
	.align	2
.L158:
	.word	guide
	.word	startPlayer
	.word	collision
	.size	checkPlayerGuideCollision, .-checkPlayerGuideCollision
	.comm	guide,60,4
	.comm	startPlayer,60,4
	.global	startHikerFramesDown
	.global	startHikerFramesUp
	.global	startHikerFramesHorizontal
	.global	startHikerFrame
	.global	startHikerFrameCounter
	.global	startHikerFrameDelay
	.global	guideRightFrames
	.global	guideLeftFrames
	.global	guideMoveDirection
	.global	guideMoveDelay
	.global	guideMoveCounter
	.global	guidePatrolRightBound
	.global	guidePatrolLeftBound
	.global	guideSpeed
	.global	guideAnimIndex
	.global	guideFrameDelay
	.global	guideFrameCounter
	.comm	originalTiles,128,4
	.global	tileFlashState
	.global	tileFlashTimer
	.global	next
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	startHikerFrameDelay, %object
	.size	startHikerFrameDelay, 4
startHikerFrameDelay:
	.word	4
	.type	guideFrameDelay, %object
	.size	guideFrameDelay, 4
guideFrameDelay:
	.word	6
	.type	guideMoveDirection, %object
	.size	guideMoveDirection, 4
guideMoveDirection:
	.word	-1
	.type	guideMoveDelay, %object
	.size	guideMoveDelay, 4
guideMoveDelay:
	.word	2
	.type	guideSpeed, %object
	.size	guideSpeed, 4
guideSpeed:
	.word	1
	.type	startHikerFramesHorizontal, %object
	.size	startHikerFramesHorizontal, 20
startHikerFramesHorizontal:
	.word	24
	.word	26
	.word	28
	.word	20
	.word	22
	.type	startHikerFramesUp, %object
	.size	startHikerFramesUp, 20
startHikerFramesUp:
	.word	0
	.word	2
	.word	4
	.word	6
	.word	8
	.type	startHikerFramesDown, %object
	.size	startHikerFramesDown, 20
startHikerFramesDown:
	.word	10
	.word	12
	.word	14
	.word	16
	.word	18
	.type	guideLeftFrames, %object
	.size	guideLeftFrames, 20
guideLeftFrames:
	.word	18
	.word	16
	.word	14
	.word	12
	.word	10
	.type	guideRightFrames, %object
	.size	guideRightFrames, 16
guideRightFrames:
	.word	12
	.word	14
	.word	16
	.word	18
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	guidePatrolLeftBound, %object
	.size	guidePatrolLeftBound, 4
guidePatrolLeftBound:
	.space	4
	.type	guidePatrolRightBound, %object
	.size	guidePatrolRightBound, 4
guidePatrolRightBound:
	.space	4
	.type	next, %object
	.size	next, 4
next:
	.space	4
	.type	startHikerFrameCounter, %object
	.size	startHikerFrameCounter, 4
startHikerFrameCounter:
	.space	4
	.type	startHikerFrame, %object
	.size	startHikerFrame, 4
startHikerFrame:
	.space	4
	.type	guideFrameCounter, %object
	.size	guideFrameCounter, 4
guideFrameCounter:
	.space	4
	.type	guideAnimIndex, %object
	.size	guideAnimIndex, 4
guideAnimIndex:
	.space	4
	.type	guideMoveCounter, %object
	.size	guideMoveCounter, 4
guideMoveCounter:
	.space	4
	.type	tileFlashState, %object
	.size	tileFlashState, 4
tileFlashState:
	.space	4
	.type	tileFlashTimer, %object
	.size	tileFlashTimer, 4
tileFlashTimer:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
