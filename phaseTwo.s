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
	mov	r3, #18
	mov	r2, #28
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, #0
	ldr	r3, .L79
	ldr	r4, .L79+4
	ldrh	lr, [r3]
	ldr	r2, [r4, #16]
	ldr	r5, [r4, #24]
	lsr	r9, lr, #7
	ldr	fp, .L79+8
	ldr	ip, [r4, #20]
	ldr	r8, [r4, #28]
	eor	r9, r9, #1
	and	r9, r9, #1
	add	r3, r5, r2
	tst	lr, #32
	mov	r6, r0
	mov	r7, r1
	str	r9, [fp]
	str	r10, [r4, #40]
	sub	sp, sp, #12
	sub	r0, r3, #1
	add	r1, r8, ip
	bne	.L8
	mov	r9, #1
	cmp	r2, r10
	str	r9, [r4, #40]
	str	r9, [r4, #36]
	ble	.L8
	ldr	r10, [r4, #8]
	ldr	fp, .L79+12
	sub	r9, ip, #52
	sub	r10, r2, r10
	add	r9, r10, r9, lsl #9
	ldrb	r9, [r9, fp]	@ zero_extendqisi2
	cmp	r9, #2
	beq	.L8
	sub	r9, r1, #53
	add	r9, r10, r9, lsl #9
	ldrb	r9, [r9, fp]	@ zero_extendqisi2
	cmp	r9, #2
	strne	r10, [r4, #16]
.L8:
	ands	r9, lr, #16
	bne	.L11
	mov	fp, #1
	ldr	r10, [r4, #16]
	str	r9, [r4, #36]
	rsb	r9, r5, #512
	cmp	r10, r9
	str	fp, [r4, #40]
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
	add	lr, r0, #1
	cmp	lr, #4
	movgt	lr, #4
	strgt	lr, [r4, #12]
	ble	.L74
.L16:
	mov	r8, #0
	add	r3, r3, r1, lsl #9
	ldr	r0, .L79+12
	sub	r3, r3, #26624
	add	r2, r2, r1, lsl #9
	sub	r3, r3, #1
	sub	r2, r2, #26624
	add	r3, r3, r0
	add	r2, r2, r0
	mov	r0, r8
	add	r9, r0, r1
	cmp	r9, #255
	bgt	.L30
.L28:
	ldrb	r9, [r2, r0, lsl #9]	@ zero_extendqisi2
	cmp	r9, #2
	beq	.L30
	ldrb	r9, [r3, r0, lsl #9]	@ zero_extendqisi2
	cmp	r9, #2
	add	r0, r0, #1
	beq	.L30
	cmp	r0, lr
	mov	r8, #1
	add	ip, ip, #1
	bge	.L75
	add	r9, r0, r1
	cmp	r9, #255
	ble	.L28
.L30:
	cmp	r8, #0
	strne	ip, [r4, #20]
	b	.L20
.L74:
	cmp	lr, #0
	str	lr, [r4, #12]
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
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L73:
	cmp	r0, #0
	mvneq	lr, #10
	streq	lr, [r4, #12]
	bne	.L13
.L14:
	ldr	r1, .L79+12
	ldr	r0, [r4, #20]
	sub	r3, r3, #26624
	sub	r3, r3, #1
	sub	r2, r2, #26624
	mov	r8, #0
	add	r3, r3, r1
	add	r2, r2, r1
	add	lr, lr, r0
	b	.L24
.L18:
	ldrb	ip, [r2, r1, lsl #9]	@ zero_extendqisi2
	cmp	ip, #2
	beq	.L23
	ldrb	ip, [r3, r1, lsl #9]	@ zero_extendqisi2
	cmp	ip, #2
	beq	.L23
	cmp	r1, lr
	mov	r8, #1
	beq	.L78
	mov	r0, r1
.L24:
	cmp	r0, #0
	sub	r1, r0, #1
	bgt	.L18
.L23:
	cmp	r8, #0
	strne	r0, [r4, #20]
.L20:
	mov	r3, #0
	str	r3, [r4, #12]
	b	.L26
.L72:
	ldr	r9, [r4, #8]
	mov	fp, r9
	sub	r9, ip, #52
	add	r0, fp, r0
	str	fp, [sp, #4]
	ldr	fp, .L79+12
	add	r9, r0, r9, lsl #9
	ldrb	r9, [r9, fp]	@ zero_extendqisi2
	cmp	r9, #2
	beq	.L11
	sub	r9, r1, #53
	add	r0, r0, r9, lsl #9
	ldrb	r0, [r0, fp]	@ zero_extendqisi2
	cmp	r0, #2
	ldrne	fp, [sp, #4]
	addne	r10, r10, fp
	strne	r10, [r4, #16]
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
	str	lr, [r4, #20]
	b	.L26
.L75:
	str	ip, [r4, #20]
	b	.L26
.L76:
	ldr	ip, [r4, #20]
	add	r1, r8, ip
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
	push	{r4, lr}
	ldr	r0, [r2, #20]
	ldr	r3, [r2, #16]
	ldr	lr, .L102+4
	sub	r1, r0, #52
	add	ip, r3, r1, lsl #9
	ldrb	ip, [ip, lr]	@ zero_extendqisi2
	cmp	ip, #1
	beq	.L82
	ldr	ip, [r2, #24]
	add	ip, r3, ip
	lsl	r1, r1, #9
	sub	ip, ip, #1
	add	r1, ip, r1
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	cmp	r1, #1
	beq	.L82
	ldr	r1, [r2, #28]
	add	r1, r0, r1
	sub	r1, r1, #53
	add	r4, r3, r1, lsl #9
	ldrb	r4, [r4, lr]	@ zero_extendqisi2
	cmp	r4, #1
	lsl	r1, r1, #9
	beq	.L82
	add	ip, ip, r1
	ldrb	r1, [ip, lr]	@ zero_extendqisi2
	cmp	r1, #1
	beq	.L82
	ldr	ip, .L102+8
	ldr	r1, .L102+12
	ldr	lr, [r2, #52]
	ldr	ip, [ip]
	ldr	r1, [r1]
	cmp	lr, #0
	sub	r3, r3, ip
	sub	r0, r0, r1
	beq	.L84
	ldrb	r1, [r2, #56]	@ zero_extendqisi2
	ldr	lr, [r2, #36]
	ldr	r4, .L102+16
	ldr	r2, .L102+20
	and	r0, r0, #255
	lsl	ip, r1, #3
	orr	r0, r0, r4
	cmp	lr, #0
	strh	r0, [r2, ip]	@ movhi
	add	r1, r2, r1, lsl #3
	bne	.L85
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, r4
	strh	r3, [r1, #2]	@ movhi
.L86:
	ldr	r3, .L102+24
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #132
	ldreq	r1, .L102+28
	ldreq	r3, .L102+32
	ldreq	r1, [r1]
	ldreq	r3, [r3, r1, lsl #2]
	addeq	r3, r3, #32
	lsleq	r3, r3, #22
	addne	r2, r2, ip
	addeq	r2, r2, ip
	lsreq	r3, r3, #22
	strh	r3, [r2, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L82:
	mov	r3, #0
	str	r3, [r2, #52]
.L84:
	mov	r2, #1
	ldr	r3, .L102+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L85:
	cmp	lr, #1
	lsleq	r3, r3, #23
	lsreq	r3, r3, #23
	orreq	r3, r3, #36864
	strheq	r3, [r1, #2]	@ movhi
	b	.L86
.L103:
	.align	2
.L102:
	.word	player
	.word	bgTwoFrontCMBitmap
	.word	hOff
	.word	vOff
	.word	-32768
	.word	shadowOAM
	.word	isDucking
	.word	hikerFrame
	.word	hikerFrames
	.word	gameOver
	.size	drawPlayerTwo, .-drawPlayerTwo
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
	ldr	r3, .L105
	sub	r1, r1, #52
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L106:
	.align	2
.L105:
	.word	bgTwoFrontCMBitmap
	.size	colorAtTwo, .-colorAtTwo
	.global	winPhaseTwo
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	winPhaseTwo, %object
	.size	winPhaseTwo, 4
winPhaseTwo:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
