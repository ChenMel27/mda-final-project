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
	.file	"phaseOne.c"
	.text
	.align	2
	.global	initPlayer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r1, #0
	mov	r4, #3
	mov	r5, #64
	mov	r3, #12
	mov	r2, #25
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
	.size	initPlayer, .-initPlayer
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r1
	mov	r1, #0
	ldr	r4, .L79
	ldr	r3, .L79+4
	ldrh	lr, [r3]
	add	r3, r4, #20
	ldm	r3, {r3, r5, r10}
	ldr	r2, [r4, #16]
	lsr	fp, lr, #7
	add	ip, r5, r2
	sub	sp, sp, #20
	ldr	r8, .L79+8
	str	r1, [r4, #40]
	eor	fp, fp, #1
	sub	r1, ip, #1
	add	r9, r10, r3
	str	r1, [sp]
	and	fp, fp, #1
	sub	r1, r9, #1
	tst	lr, #32
	mov	r6, r0
	str	ip, [sp, #4]
	str	fp, [r8]
	str	r1, [sp, #8]
	bne	.L8
	mov	ip, r1
	mov	r1, #1
	cmp	r2, #0
	str	r1, [r4, #40]
	str	r1, [r4, #36]
	ble	.L8
	ldr	r1, [r4, #8]
	ldr	r0, .L79+12
	sub	r1, r2, r1
	add	fp, r1, r3, lsl #9
	ldrb	fp, [fp, r0]	@ zero_extendqisi2
	cmp	fp, #4
	beq	.L8
	add	fp, r1, ip, lsl #9
	ldrb	r0, [fp, r0]	@ zero_extendqisi2
	cmp	r0, #4
	strne	r1, [r4, #16]
.L8:
	ands	r1, lr, #16
	bne	.L11
	mov	r0, #1
	ldr	fp, [r4, #16]
	str	r1, [r4, #36]
	rsb	r1, r5, #512
	cmp	fp, r1
	str	r0, [r4, #40]
	blt	.L72
.L11:
	ldr	r1, .L79+16
	ldrh	r1, [r1]
	tst	r1, #64
	ldr	r1, [r4, #12]
	beq	.L13
	tst	lr, #64
	beq	.L73
.L13:
	add	r1, r1, #1
	cmp	r1, #4
	movgt	r1, #4
	strgt	r1, [r4, #12]
	ble	.L74
.L16:
	ldr	r0, [sp, #4]
	add	ip, r0, r10, lsl #9
	ldr	r0, .L79+12
	sub	ip, ip, #1
	add	ip, r0, ip
	add	r2, r0, r2
	mov	r0, r9
	cmp	r0, #255
	mov	fp, #0
	bgt	.L30
.L28:
	ldrb	lr, [r2, r0, lsl #9]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	lr, #4
	sub	r10, r0, r9
	beq	.L30
	ldrb	lr, [ip, r3, lsl #9]	@ zero_extendqisi2
	cmp	lr, #4
	beq	.L30
	cmp	r1, r10
	mov	fp, #1
	add	r3, r3, #1
	ble	.L75
	cmp	r0, #255
	ble	.L28
.L30:
	cmp	fp, #0
	strne	r3, [r4, #20]
	b	.L20
.L74:
	cmp	r1, #0
	str	r1, [r4, #12]
	blt	.L14
	bne	.L76
.L26:
	ldr	r3, [r8, #4]
	ldr	r2, [r4, #40]
	add	r3, r3, #1
	cmp	r2, #0
	str	r3, [r8, #4]
	bne	.L77
	str	r2, [r8, #8]
	str	r2, [r8, #4]
	ldr	r9, .L79+20
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
	ldr	r0, [r4, #24]
	ldr	r2, [r4, #16]
	ldr	r1, .L79+24
	add	r2, r2, r0
	asr	r3, r3, #8
	add	r3, r3, #20
	cmp	r2, r1
	str	r3, [r9, #4]
	movgt	r3, #1
	strgt	r3, [r8, #12]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L73:
	cmp	r1, #0
	mvneq	r1, #10
	streq	r1, [r4, #12]
	bne	.L13
.L14:
	ldr	lr, .L79+12
	ldr	r0, [r4, #20]
	ldr	r3, [sp]
	add	r2, r2, lr
	mov	r9, #0
	add	r1, r1, r0
	add	lr, lr, r3
	b	.L24
.L18:
	ldrb	ip, [r2, r3, lsl #9]	@ zero_extendqisi2
	cmp	ip, #4
	beq	.L23
	ldrb	ip, [lr, r3, lsl #9]	@ zero_extendqisi2
	cmp	ip, #4
	beq	.L23
	cmp	r3, r1
	mov	r9, #1
	beq	.L78
	mov	r0, r3
.L24:
	cmp	r0, #0
	sub	r3, r0, #1
	bgt	.L18
.L23:
	cmp	r9, #0
	strne	r0, [r4, #20]
.L20:
	mov	r3, #0
	str	r3, [r4, #12]
	b	.L26
.L72:
	ldr	r1, [r4, #8]
	ldr	ip, [sp]
	ldr	r0, .L79+12
	str	r1, [sp, #12]
	add	r1, r1, ip
	add	ip, r1, r3, lsl #9
	ldrb	ip, [ip, r0]	@ zero_extendqisi2
	cmp	ip, #4
	beq	.L11
	ldr	ip, [sp, #8]
	add	r1, r1, ip, lsl #9
	ldrb	r1, [r1, r0]	@ zero_extendqisi2
	cmp	r1, #4
	ldrne	r1, [sp, #12]
	addne	r1, fp, r1
	strne	r1, [r4, #16]
	b	.L11
.L77:
	ldr	r9, .L79+20
	ldr	r2, [r9]
	cmp	r3, r2
	ble	.L33
	ldr	r0, [r8, #8]
	ldr	r3, .L79+28
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r8, #8]
	str	r3, [r8, #4]
	b	.L33
.L78:
	str	r1, [r4, #20]
	b	.L26
.L75:
	str	r3, [r4, #20]
	b	.L26
.L76:
	ldr	r3, [r4, #20]
	add	r9, r10, r3
	b	.L16
.L80:
	.align	2
.L79:
	.word	player
	.word	buttons
	.word	.LANCHOR0
	.word	bgOneFrontCMBitmap
	.word	oldButtons
	.word	.LANCHOR1
	.word	510
	.word	__aeabi_idivmod
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L102
	push	{r4, r5, lr}
	add	r0, r2, #16
	ldm	r0, {r0, r1}
	ldr	lr, .L102+4
	add	r3, r0, r1, lsl #9
	ldrb	ip, [r3, lr]	@ zero_extendqisi2
	ldr	r3, [r2, #24]
	cmp	ip, #5
	add	r3, r0, r3
	beq	.L82
	sub	r3, r3, #1
	lsl	ip, r1, #9
	add	ip, r3, ip
	ldrb	ip, [ip, lr]	@ zero_extendqisi2
	cmp	ip, #5
	beq	.L82
	ldr	ip, [r2, #28]
	add	ip, r1, ip
	sub	ip, ip, #1
	add	r4, r0, ip, lsl #9
	ldrb	r4, [r4, lr]	@ zero_extendqisi2
	cmp	r4, #5
	lsl	ip, ip, #9
	beq	.L82
	add	r3, r3, ip
	ldrb	r3, [r3, lr]	@ zero_extendqisi2
	cmp	r3, #5
	beq	.L82
	ldr	r3, .L102+8
	ldr	r3, [r3]
	ldr	lr, .L102+12
	ldrb	ip, [r2, #56]	@ zero_extendqisi2
	sub	r1, r1, r3
	ldr	r4, .L102+16
	ldr	r2, [r2, #36]
	ldr	r3, .L102+20
	ldr	r5, [lr]
	and	r1, r1, #255
	lsl	lr, ip, #3
	orr	r1, r1, r4
	cmp	r2, #0
	strh	r1, [r3, lr]	@ movhi
	add	ip, r3, ip, lsl #3
	sub	r0, r0, r5
	beq	.L101
	cmp	r2, #1
	lsleq	r0, r0, #23
	lsreq	r0, r0, #23
	orreq	r0, r0, #36864
	strheq	r0, [ip, #2]	@ movhi
.L89:
	ldr	r2, .L102+24
	ldr	r1, [r2]
	cmp	r1, #0
	movne	r2, #132
	ldreq	r1, [r2, #8]
	ldreq	r2, .L102+28
	addeq	r2, r2, r1, lsl #2
	ldreq	r2, [r2, #8]
	addeq	r2, r2, #32
	lsleq	r2, r2, #22
	addne	r3, r3, lr
	addeq	r3, r3, lr
	lsreq	r2, r2, #22
	strh	r2, [r3, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L82:
	ldr	r1, .L102+32
	ldr	r3, [r1, #52]
	cmp	r3, #0
	ble	.L85
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1, #52]
	moveq	r1, #1
	ldreq	r3, .L102+24
	streq	r1, [r3, #16]
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
.L101:
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	orr	r0, r0, r4
	strh	r0, [ip, #2]	@ movhi
	b	.L89
.L103:
	.align	2
.L102:
	.word	player
	.word	bgOneFrontCMBitmap
	.word	vOff
	.word	hOff
	.word	-32768
	.word	shadowOAM
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	health
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	colorAt
	.syntax unified
	.arm
	.fpu softvfp
	.type	colorAt, %function
colorAt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L105
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L106:
	.align	2
.L105:
	.word	bgOneFrontCMBitmap
	.size	colorAt, .-colorAt
	.align	2
	.global	resetPlayerState
	.syntax unified
	.arm
	.fpu softvfp
	.type	resetPlayerState, %function
resetPlayerState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	ip, #4
	mov	r0, #20
	ldr	r3, .L108
	ldr	r1, .L108+4
	str	r2, [r3, #4]
	str	ip, [r1]
	str	r0, [r1, #4]
	str	r2, [r3, #8]
	str	r2, [r3]
	str	r2, [r3, #16]
	bx	lr
.L109:
	.align	2
.L108:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	resetPlayerState, .-resetPlayerState
	.global	sbb
	.comm	health,60,4
	.comm	player,60,4
	.global	isDucking
	.global	hikerFrames
	.global	hikerFrame
	.global	hikerFrameCounter
	.global	hikerFrameDelay
	.global	winPhaseOne
	.global	gameOver
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	hikerFrameDelay, %object
	.size	hikerFrameDelay, 4
hikerFrameDelay:
	.word	4
	.type	sbb, %object
	.size	sbb, 4
sbb:
	.word	20
	.type	hikerFrames, %object
	.size	hikerFrames, 12
hikerFrames:
	.word	20
	.word	22
	.word	24
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	isDucking, %object
	.size	isDucking, 4
isDucking:
	.space	4
	.type	hikerFrameCounter, %object
	.size	hikerFrameCounter, 4
hikerFrameCounter:
	.space	4
	.type	hikerFrame, %object
	.size	hikerFrame, 4
hikerFrame:
	.space	4
	.type	winPhaseOne, %object
	.size	winPhaseOne, 4
winPhaseOne:
	.space	4
	.type	gameOver, %object
	.size	gameOver, 4
gameOver:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
