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
	mov	r1, #0
	mov	r4, #3
	mov	r5, #64
	mov	r3, #16
	mov	r2, #28
	mov	lr, #1
	mov	r7, #101
	mov	r6, #112
	ldr	ip, .L4
	mov	r0, r4
	str	r5, [ip, #4]
	str	r3, [ip, #24]
	str	r2, [ip, #28]
	str	r1, [ip, #16]
	strb	r1, [ip, #56]
	str	r1, [ip, #44]
	str	r1, [ip, #36]
	str	r1, [ip, #12]
	ldr	r5, .L4+4
	mov	r3, #256
	ldr	r2, .L4+8
	ldr	r1, .L4+12
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
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L59
	ldr	r4, .L59+4
	ldrh	r3, [r5]
	mov	r10, r1
	ldr	r7, [r4, #16]
	ldr	r6, [r4, #24]
	ldr	r9, [r4, #20]
	ldr	r1, [r4, #28]
	lsr	r2, r3, #7
	ldr	lr, .L59+8
	eor	r2, r2, #1
	and	r2, r2, #1
	add	r6, r7, r6
	add	r1, r9, r1
	tst	r3, #32
	mov	r8, r0
	str	r2, [lr]
	str	ip, [r4, #40]
	sub	r6, r6, #1
	sub	fp, r1, #1
	bne	.L7
	mov	r2, #1
	cmp	r7, ip
	str	r2, [r4, #40]
	str	r2, [r4, #36]
	bgt	.L52
.L7:
	ands	r3, r3, #16
	bne	.L11
	mov	r1, #1
	ldr	r2, [r4, #24]
	ldr	r0, [r4, #16]
	rsb	r2, r2, #512
	cmp	r0, r2
	str	r3, [r4, #36]
	str	r1, [r4, #40]
	blt	.L53
.L11:
	ldr	r3, .L59+12
	ldrh	r3, [r3]
	tst	r3, #64
	ldr	r3, [r4, #12]
	beq	.L13
	ldrh	r2, [r5]
	tst	r2, #64
	beq	.L54
.L13:
	add	r3, r3, #1
	cmp	r3, #4
	movgt	r3, #4
	strgt	r3, [r4, #12]
	ble	.L55
.L16:
	mov	r9, #0
	ldr	r5, [r4, #20]
	ldr	fp, .L59+16
	b	.L22
.L56:
	mov	r1, r5
	mov	r0, r7
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	beq	.L18
	mov	r1, r5
	mov	r0, r6
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	beq	.L18
	ldr	r5, [r4, #20]
	ldr	r3, [r4, #12]
	add	r5, r5, #1
	cmp	r3, r9
	str	r5, [r4, #20]
	ble	.L21
.L22:
	ldr	r1, [r4, #28]
	add	r5, r5, r1
	cmp	r5, #255
	add	r9, r9, #1
	ble	.L56
.L18:
	mov	r3, #0
	str	r3, [r4, #12]
.L21:
	ldr	r5, .L59+20
	ldr	r2, [r4, #40]
	ldr	r3, [r5]
	cmp	r2, #0
	add	r3, r3, #1
	str	r3, [r5]
	bne	.L57
	ldr	r3, .L59+24
	str	r2, [r5]
	str	r2, [r3]
.L24:
	ldr	r3, [r4, #24]
	add	r3, r3, r3, lsr #31
	ldr	r2, [r4, #16]
	asr	r3, r3, #1
	rsb	r3, r3, #120
	sub	r3, r2, r3
	str	r3, [r8]
	ldr	r3, [r4, #28]
	add	r3, r3, r3, lsr #31
	ldr	r2, [r4, #20]
	asr	r3, r3, #1
	rsb	r3, r3, #80
	sub	r3, r2, r3
	str	r3, [r10]
	ldr	r3, [r8]
	bic	r3, r3, r3, asr #31
	str	r3, [r8]
	ldr	r3, [r10]
	bic	r3, r3, r3, asr #31
	str	r3, [r10]
	ldr	r3, [r8]
	cmp	r3, #272
	movge	r3, #272
	str	r3, [r8]
	ldr	r3, [r10]
	cmp	r3, #96
	movge	r3, #96
	str	r3, [r10]
	ldr	r3, [r8]
	add	r2, r3, #255
	cmp	r3, #0
	movlt	r3, r2
	ldr	ip, [r4, #24]
	ldr	r2, [r4, #16]
	ldr	r0, .L59+28
	add	r2, r2, ip
	cmp	r2, r0
	movgt	r2, #1
	asr	r3, r3, #8
	ldr	r1, .L59+32
	add	r3, r3, #20
	str	r3, [r1]
	ldrgt	r3, .L59+36
	strgt	r2, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L55:
	cmp	r3, #0
	str	r3, [r4, #12]
	blt	.L14
	beq	.L21
	b	.L16
.L57:
	ldr	r2, .L59+40
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L24
	ldr	r6, .L59+24
	ldr	r0, [r6]
	ldr	r3, .L59+44
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r6]
	str	r3, [r5]
	b	.L24
.L54:
	cmp	r3, #0
	mvneq	r3, #10
	streq	r3, [r4, #12]
	bne	.L13
.L14:
	mov	r5, #0
	ldr	r3, [r4, #20]
	ldr	r9, .L59+16
	b	.L19
.L58:
	mov	r1, fp
	mov	r0, r7
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L18
	mov	r1, fp
	mov	r0, r6
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L18
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #20]
	rsb	r2, r2, #0
	sub	r3, r3, #1
	cmp	r2, r5
	str	r3, [r4, #20]
	ble	.L21
.L19:
	cmp	r3, #0
	sub	fp, r3, #1
	add	r5, r5, #1
	bgt	.L58
	b	.L18
.L52:
	ldr	r0, [r4, #8]
	ldr	r3, .L59+16
	mov	r1, r9
	sub	r0, r7, r0
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	ldr	r3, .L59+16
	bne	.L8
.L51:
	ldrh	r3, [r5]
	b	.L7
.L53:
	ldr	r0, [r4, #8]
	mov	r1, r9
	add	r0, r6, r0
	ldr	r9, .L59+16
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L11
	ldr	r0, [r4, #8]
	mov	r1, fp
	add	r0, r6, r0
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	ldrne	r3, [r4, #16]
	ldrne	r2, [r4, #8]
	addne	r3, r3, r2
	strne	r3, [r4, #16]
	b	.L11
.L8:
	ldr	r0, [r4, #8]
	mov	r1, fp
	sub	r0, r7, r0
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	ldrne	r3, [r4, #16]
	ldrne	r2, [r4, #8]
	subne	r3, r3, r2
	strne	r3, [r4, #16]
	b	.L51
.L60:
	.align	2
.L59:
	.word	buttons
	.word	player
	.word	isDucking
	.word	oldButtons
	.word	colorAt
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L82
	add	r7, r4, #16
	ldm	r7, {r7, r8}
	ldr	r6, .L82+4
	mov	r0, r7
	mov	r1, r8
	add	r5, r4, #24
	ldm	r5, {r5, r9}
	mov	lr, pc
	bx	r6
	cmp	r0, #2
	bne	.L62
.L64:
	mov	r3, #0
	str	r3, [r4, #52]
.L63:
	mov	r2, #1
	ldr	r3, .L82+8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L62:
	add	r5, r5, r7
	sub	r5, r5, #1
	mov	r0, r5
	mov	r1, r8
	mov	lr, pc
	bx	r6
	cmp	r0, #2
	beq	.L64
	add	r8, r9, r8
	sub	r8, r8, #1
	mov	r0, r7
	mov	r1, r8
	mov	lr, pc
	bx	r6
	cmp	r0, #2
	beq	.L64
	mov	r1, r8
	mov	r0, r5
	mov	lr, pc
	bx	r6
	cmp	r0, #2
	beq	.L64
	ldr	r2, .L82+12
	ldr	r3, .L82+16
	ldr	ip, [r4, #52]
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r4, #16]
	ldr	r3, [r4, #20]
	cmp	ip, #0
	sub	r2, r2, r0
	sub	r3, r3, r1
	beq	.L63
	ldrb	r0, [r4, #56]	@ zero_extendqisi2
	ldr	r5, .L82+20
	ldr	lr, [r4, #36]
	ldr	r1, .L82+24
	and	r3, r3, #255
	lsl	ip, r0, #3
	orr	r3, r3, r5
	cmp	lr, #0
	strh	r3, [r1, ip]	@ movhi
	add	r0, r1, r0, lsl #3
	bne	.L65
	lsl	r3, r2, #23
	lsr	r3, r3, #23
	orr	r3, r3, r5
	strh	r3, [r0, #2]	@ movhi
.L66:
	ldr	r3, .L82+28
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #132
	ldreq	r2, .L82+32
	ldreq	r3, .L82+36
	ldreq	r2, [r2]
	ldreq	r3, [r3, r2, lsl #2]
	addeq	r3, r3, #32
	lsleq	r3, r3, #22
	addne	r1, r1, ip
	addeq	r1, r1, ip
	lsreq	r3, r3, #22
	strh	r3, [r1, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L65:
	cmp	lr, #1
	lsleq	r2, r2, #23
	lsreq	r2, r2, #23
	orreq	r2, r2, #36864
	strheq	r2, [r0, #2]	@ movhi
	b	.L66
.L83:
	.align	2
.L82:
	.word	player
	.word	colorAt
	.word	gameOver
	.word	hOff
	.word	vOff
	.word	-32768
	.word	shadowOAM
	.word	isDucking
	.word	hikerFrame
	.word	hikerFrames
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
	ldr	r3, .L85
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L86:
	.align	2
.L85:
	.word	bgOneFrontCMBitmap
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
