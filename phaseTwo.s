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
	.file	"phaseTwo.c"
	.text
	.align	2
	.global	initPlayerTwo
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayerTwo, %function
initPlayerTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	mov	r4, #3
	mov	r1, #0
	mov	r5, #64
	mov	r3, #17
	mov	r2, #23
	mov	lr, #1
	mov	r7, #101
	mov	r6, #112
	ldr	ip, .L4+4
	mov	r0, r4
	str	r5, [ip, #4]
	str	r3, [ip, #24]
	str	r2, [ip, #28]
	str	r1, [ip, #16]
	strb	r1, [ip, #56]
	str	r1, [ip, #44]
	str	r1, [ip, #36]
	str	r1, [ip, #12]
	ldr	r5, .L4+8
	mov	r3, #256
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	str	r4, [ip, #48]
	str	r7, [ip, #20]
	str	r6, [ip]
	str	lr, [ip, #40]
	str	lr, [ip, #52]
	str	lr, [ip, #8]
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #16384
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	resetPlayerState
	.word	player
	.word	DMANow
	.word	83886592
	.word	playerPal
	.word	100728832
	.word	playerTiles
	.size	initPlayerTwo, .-initPlayerTwo
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayerTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerTwo, %function
updatePlayerTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, #0
	ldr	r3, .L79
	ldr	r4, .L79+4
	ldrh	lr, [r3]
	add	r3, r4, #20
	ldm	r3, {r3, r5, r9}
	ldr	r2, [r4, #16]
	lsr	r10, lr, #7
	mov	r7, r1
	eor	r10, r10, #1
	ldr	r1, .L79+8
	and	r10, r10, #1
	add	ip, r5, r2
	add	r8, r9, r3
	sub	sp, sp, #20
	mov	r6, r0
	str	r10, [r1]
	sub	r0, r8, #1
	sub	r1, ip, #1
	tst	lr, #32
	str	fp, [r4, #40]
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	bne	.L8
	mov	r1, r0
	mov	r0, #1
	cmp	r2, fp
	str	r0, [r4, #40]
	str	r0, [r4, #36]
	ble	.L8
	ldr	r0, [r4, #8]
	ldr	r10, .L79+12
	sub	r0, r2, r0
	add	fp, r0, r3, lsl #9
	ldrb	fp, [fp, r10]	@ zero_extendqisi2
	cmp	fp, #2
	beq	.L8
	add	fp, r0, r1, lsl #9
	ldrb	r10, [fp, r10]	@ zero_extendqisi2
	cmp	r10, #2
	strne	r0, [r4, #16]
.L8:
	ands	r0, lr, #16
	bne	.L11
	mov	r10, #1
	ldr	fp, [r4, #16]
	str	r0, [r4, #36]
	rsb	r0, r5, #512
	cmp	fp, r0
	str	r10, [r4, #40]
	blt	.L72
.L11:
	ldr	r0, .L79+16
	ldrh	r0, [r0]
	tst	r0, #64
	ldr	r0, [r4, #12]
	beq	.L13
	tst	lr, #64
	beq	.L73
.L13:
	add	r0, r0, #1
	cmp	r0, #4
	movgt	r0, #4
	strgt	r0, [r4, #12]
	ble	.L74
.L16:
	ldr	r1, .L79+12
	add	ip, ip, r9, lsl #9
	sub	ip, ip, #1
	add	ip, r1, ip
	add	r2, r1, r2
	mov	r1, r8
	cmp	r1, #255
	mov	r10, #0
	bgt	.L30
.L28:
	ldrb	lr, [r2, r1, lsl #9]	@ zero_extendqisi2
	add	r1, r1, #1
	cmp	lr, #2
	sub	r9, r1, r8
	beq	.L30
	ldrb	lr, [ip, r3, lsl #9]	@ zero_extendqisi2
	cmp	lr, #2
	beq	.L30
	cmp	r0, r9
	mov	r10, #1
	add	r3, r3, #1
	ble	.L75
	cmp	r1, #255
	ble	.L28
.L30:
	cmp	r10, #0
	strne	r3, [r4, #20]
	b	.L20
.L74:
	cmp	r0, #0
	str	r0, [r4, #12]
	blt	.L14
	bne	.L76
.L26:
	ldr	r8, .L79+20
	ldr	r2, [r4, #40]
	ldr	r3, [r8]
	cmp	r2, #0
	add	r3, r3, #1
	str	r3, [r8]
	bne	.L77
	ldr	r3, .L79+24
	str	r2, [r8]
	str	r2, [r3]
.L33:
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
	cmp	r3, #96
	movge	r3, #96
	str	r3, [r7]
	ldr	r3, [r6]
	add	r2, r3, #255
	cmp	r3, #0
	movlt	r3, r2
	ldr	ip, [r4, #24]
	ldr	r2, [r4, #16]
	ldr	r0, .L79+28
	add	r2, r2, ip
	cmp	r2, r0
	movgt	r2, #1
	ldr	r1, .L79+32
	asr	r3, r3, #8
	add	r3, r3, #20
	str	r3, [r1]
	ldrgt	r3, .L79+36
	strgt	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L73:
	cmp	r0, #0
	mvneq	r0, #10
	streq	r0, [r4, #12]
	bne	.L13
.L14:
	ldr	r3, .L79+12
	ldr	ip, [r4, #20]
	ldr	r1, [sp, #4]
	mov	r8, #0
	add	r0, r0, ip
	add	r2, r2, r3
	add	r1, r3, r1
	b	.L24
.L18:
	ldrb	lr, [r2, r3, lsl #9]	@ zero_extendqisi2
	cmp	lr, #2
	beq	.L23
	ldrb	lr, [r1, r3, lsl #9]	@ zero_extendqisi2
	cmp	lr, #2
	beq	.L23
	cmp	r3, r0
	mov	r8, #1
	beq	.L78
	mov	ip, r3
.L24:
	cmp	ip, #0
	sub	r3, ip, #1
	bgt	.L18
.L23:
	cmp	r8, #0
	strne	ip, [r4, #20]
.L20:
	mov	r3, #0
	str	r3, [r4, #12]
	b	.L26
.L72:
	ldr	r1, [r4, #8]
	sub	r0, ip, #1
	add	r10, r1, r0
	str	r1, [sp, #12]
	ldr	r1, .L79+12
	add	r0, r10, r3, lsl #9
	ldrb	r0, [r0, r1]	@ zero_extendqisi2
	cmp	r0, #2
	beq	.L11
	ldr	r0, [sp, #8]
	add	r10, r10, r0, lsl #9
	ldrb	r0, [r10, r1]	@ zero_extendqisi2
	cmp	r0, #2
	ldrne	r1, [sp, #12]
	addne	fp, fp, r1
	strne	fp, [r4, #16]
	b	.L11
.L77:
	ldr	r2, .L79+40
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L33
	ldr	r9, .L79+24
	ldr	r0, [r9]
	ldr	r3, .L79+44
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r9]
	str	r3, [r8]
	b	.L33
.L78:
	str	r0, [r4, #20]
	b	.L26
.L75:
	str	r3, [r4, #20]
	b	.L26
.L76:
	ldr	r3, [r4, #20]
	add	r8, r9, r3
	b	.L16
.L80:
	.align	2
.L79:
	.word	buttons
	.word	player
	.word	isDucking
	.word	bgTwoFrontCMBitmap
	.word	oldButtons
	.word	hikerFrameCounter
	.word	hikerFrame
	.word	510
	.word	sbb
	.word	.LANCHOR0
	.word	hikerFrameDelay
	.word	__aeabi_idivmod
	.size	updatePlayerTwo, .-updatePlayerTwo
	.align	2
	.global	drawPlayerTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerTwo, %function
drawPlayerTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L102
	push	{r4, r5, lr}
	ldr	ip, [r2, #16]
	ldr	r0, [r2, #20]
	ldr	lr, .L102+4
	add	r3, ip, r0, lsl #9
	ldrb	r1, [r3, lr]	@ zero_extendqisi2
	ldr	r3, [r2, #24]
	cmp	r1, #1
	add	r3, ip, r3
	beq	.L82
	sub	r3, r3, #1
	lsl	r1, r0, #9
	add	r1, r3, r1
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	cmp	r1, #1
	beq	.L82
	ldr	r1, [r2, #28]
	add	r1, r0, r1
	sub	r1, r1, #1
	add	r4, ip, r1, lsl #9
	ldrb	r4, [r4, lr]	@ zero_extendqisi2
	cmp	r4, #1
	lsl	r1, r1, #9
	beq	.L82
	add	r3, r3, r1
	ldrb	r3, [r3, lr]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L82
	ldr	r3, [r2, #52]
	cmp	r3, #0
	beq	.L88
	ldr	r3, .L102+8
	ldr	r3, [r3]
	ldr	r5, .L102+12
	ldrb	r1, [r2, #56]	@ zero_extendqisi2
	ldr	lr, [r2, #36]
	sub	r0, r0, r3
	ldr	r4, .L102+16
	ldr	r3, .L102+20
	ldr	r5, [r5]
	and	r0, r0, #255
	lsl	r2, r1, #3
	orr	r0, r0, r4
	cmp	lr, #0
	strh	r0, [r3, r2]	@ movhi
	add	r1, r3, r1, lsl #3
	sub	ip, ip, r5
	bne	.L89
	lsl	ip, ip, #23
	lsr	ip, ip, #23
	orr	ip, ip, r4
	strh	ip, [r1, #2]	@ movhi
.L90:
	ldr	r1, .L102+24
	ldr	r1, [r1]
	cmp	r1, #0
	movne	r1, #132
	ldreq	r0, .L102+28
	ldreq	r1, .L102+32
	ldreq	r0, [r0]
	ldreq	r1, [r1, r0, lsl #2]
	addeq	r1, r1, #32
	lsleq	r1, r1, #22
	addne	r3, r3, r2
	addeq	r3, r3, r2
	lsreq	r1, r1, #22
	strh	r1, [r3, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L82:
	ldr	r1, .L102+36
	ldr	r3, [r1, #52]
	cmp	r3, #0
	ble	.L85
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1, #52]
	moveq	r1, #1
	ldreq	r3, .L102+40
	streq	r1, [r3]
.L85:
	mov	r3, #0
	mov	r1, #101
	ldr	ip, .L102+12
	ldr	r0, .L102+8
	str	r3, [r2, #16]
	str	r3, [r2, #12]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2, #20]
	pop	{r4, r5, lr}
	bx	lr
.L88:
	mov	r2, #1
	ldr	r3, .L102+40
	pop	{r4, r5, lr}
	str	r2, [r3]
	bx	lr
.L89:
	cmp	lr, #1
	lsleq	ip, ip, #23
	lsreq	ip, ip, #23
	orreq	ip, ip, #36864
	strheq	ip, [r1, #2]	@ movhi
	b	.L90
.L103:
	.align	2
.L102:
	.word	player
	.word	bgTwoFrontCMBitmap
	.word	vOff
	.word	hOff
	.word	-32768
	.word	shadowOAM
	.word	isDucking
	.word	hikerFrame
	.word	hikerFrames
	.word	health
	.word	gameOver
	.size	drawPlayerTwo, .-drawPlayerTwo
	.align	2
	.global	initSnow
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSnow, %function
initSnow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, #120
	mov	r9, #16
	ldr	r4, .L108
	ldr	r5, .L108+4
	ldr	r7, .L108+8
	ldr	r6, .L108+12
.L105:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #8
	rsb	r3, r3, r3, lsl #5
	sub	r0, r0, r3, lsl #4
	str	r0, [r4, #16]
	mov	lr, pc
	bx	r5
	mov	r1, #1
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #5
	rsb	r3, r3, r3, lsl #4
	add	r2, r8, r1
	strb	r8, [r4, #56]
	sub	r0, r0, r3, lsl #2
	and	r8, r2, #255
	sub	r0, r0, #80
	cmp	r8, #123
	str	r9, [r4, #24]
	str	r9, [r4, #28]
	str	r0, [r4, #20]
	str	r1, [r4, #52]
	str	r1, [r4, #12]
	add	r4, r4, #60
	bne	.L105
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L109:
	.align	2
.L108:
	.word	snows
	.word	rand
	.word	-2078209981
	.word	-2004318071
	.size	initSnow, .-initSnow
	.align	2
	.global	updateSnow
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSnow, %function
updateSnow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L126
	ldr	r5, .L126+4
	ldr	r7, .L126+8
	ldr	r8, .L126+12
	ldr	fp, .L126+16
	ldr	r9, .L126+20
	ldr	r10, .L126+24
	sub	sp, sp, #20
	add	r6, r4, #180
.L118:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L124
.L112:
	add	r4, r4, #60
	cmp	r4, r6
	bne	.L118
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L124:
	mov	r3, #16
	add	r2, r5, #24
	ldm	r2, {r2, ip}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #12]
	str	r2, [sp, #8]
	add	r1, r0, r1
	ldr	r2, [r5, #16]
	ldr	r0, [r5, #20]
	str	r2, [sp]
	str	r0, [sp, #4]
	mov	r2, r3
	str	ip, [sp, #12]
	ldr	r0, [r4, #16]
	str	r1, [r4, #20]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L125
.L113:
	ldr	r3, [r4, #20]
	cmp	r3, #256
	ble	.L112
	mov	lr, pc
	bx	r8
	smull	r3, r2, fp, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #5
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #2
	sub	r0, r0, #80
	str	r0, [r4, #20]
	mov	lr, pc
	bx	r8
	smull	r3, r2, r9, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #8
	rsb	r3, r3, r3, lsl #5
	sub	r0, r0, r3, lsl #4
	str	r0, [r4, #16]
	b	.L112
.L125:
	mvn	r3, #15
	str	r3, [r4, #20]
	mov	lr, pc
	bx	r8
	smull	r3, r2, r9, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #8
	mov	r2, #0
	ldr	r1, [r10, #52]
	rsb	r3, r3, r3, lsl #5
	sub	r0, r0, r3, lsl #4
	cmp	r1, r2
	mov	lr, #101
	str	r0, [r4, #16]
	sub	ip, r1, #1
	ble	.L115
	cmp	ip, r2
	moveq	r1, #1
	ldreq	r3, .L126+28
	str	ip, [r10, #52]
	streq	r1, [r3]
.L115:
	ldr	r1, .L126+32
	ldr	r3, .L126+36
	str	r2, [r5, #16]
	str	lr, [r5, #20]
	str	r2, [r5, #12]
	str	r2, [r1]
	str	r2, [r3]
	b	.L113
.L127:
	.align	2
.L126:
	.word	snows
	.word	player
	.word	collision
	.word	rand
	.word	-2004318071
	.word	-2078209981
	.word	health
	.word	gameOver
	.word	hOff
	.word	vOff
	.size	updateSnow, .-updateSnow
	.align	2
	.global	drawSnow
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSnow, %function
drawSnow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, #384
	ldr	r1, .L136
	ldr	r2, .L136+4
	ldr	r3, .L136+8
	ldr	r5, [r1]
	ldr	r4, [r2]
	ldr	ip, .L136+12
	ldr	lr, .L136+16
	add	r0, r3, #180
.L130:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	beq	.L129
	ldr	r2, [r3, #16]
	ldr	r1, [r3, #20]
	ldrb	r7, [r3, #56]	@ zero_extendqisi2
	sub	r2, r2, r5
	and	r2, r2, lr
	sub	r1, r1, r4
	add	r8, ip, r7, lsl #3
	orr	r2, r2, #16384
	lsl	r7, r7, #3
	and	r1, r1, #255
	strh	r2, [r8, #2]	@ movhi
	strh	r6, [r8, #4]	@ movhi
	strh	r1, [ip, r7]	@ movhi
.L129:
	add	r3, r3, #60
	cmp	r3, r0
	bne	.L130
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L137:
	.align	2
.L136:
	.word	hOff
	.word	vOff
	.word	snows
	.word	shadowOAM
	.word	511
	.size	drawSnow, .-drawSnow
	.align	2
	.global	colorAtTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	colorAtTwo, %function
colorAtTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L139
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L140:
	.align	2
.L139:
	.word	bgTwoFrontCMBitmap
	.size	colorAtTwo, .-colorAtTwo
	.comm	healthBarFrames,72,4
	.global	winPhaseTwo
	.comm	snows,180,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	winPhaseTwo, %object
	.size	winPhaseTwo, 4
winPhaseTwo:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
