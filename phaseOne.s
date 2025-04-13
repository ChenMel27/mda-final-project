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
	push	{r4, r5, r6, lr}
	mov	r3, #0
	mov	r4, #64
	mov	r2, #12
	mov	r1, #25
	mov	r0, #5
	mov	lr, #1
	mov	r6, #101
	mov	r5, #112
	ldr	ip, .L4
	str	r3, [ip, #16]
	strb	r3, [ip, #56]
	str	r3, [ip, #44]
	str	r3, [ip, #36]
	str	r3, [ip, #12]
	str	r4, [ip, #4]
	str	r2, [ip, #24]
	str	r1, [ip, #28]
	str	r0, [ip, #48]
	ldr	r4, .L4+4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+8
	ldr	r1, .L4+12
	str	r6, [ip, #20]
	str	r5, [ip]
	str	lr, [ip, #40]
	str	lr, [ip, #52]
	str	lr, [ip, #8]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
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
	mov	r9, #0
	ldr	r3, .L83
	ldr	r4, .L83+4
	ldrh	ip, [r3]
	ldr	r5, [r4, #24]
	ldr	r3, [r4, #16]
	lsr	r2, ip, #7
	ldr	r8, .L83+8
	eor	r2, r2, #1
	and	r2, r2, #1
	add	r10, r5, r3
	ldr	lr, [r4, #20]
	ldr	fp, [r4, #28]
	sub	sp, sp, #20
	str	r2, [r8]
	tst	ip, #32
	sub	r2, r10, #1
	mov	r7, r0
	mov	r6, r1
	str	r10, [sp, #4]
	str	r9, [r4, #40]
	str	r2, [sp]
	add	r0, fp, lr
	bne	.L8
	mov	r2, #1
	cmp	r3, r9
	str	r2, [r4, #40]
	str	r2, [r4, #36]
	ble	.L8
	mov	r1, lr
	ldr	r2, [r4, #8]
	sub	r9, r0, lr
	sub	r10, r3, r2
	add	r9, r10, r9, lsl #9
	ldr	r2, .L83+12
	sub	r9, r9, #512
	add	r9, r2, r9
	str	r10, [sp, #12]
	str	r9, [sp, #8]
	add	r2, r2, r10
	sub	r9, lr, #4
.L11:
	ldrb	r10, [r2, r1, lsl #9]	@ zero_extendqisi2
	cmp	r10, #4
	beq	.L10
	ldr	r10, [sp, #8]
	ldrb	r10, [r10, r1, lsl #9]	@ zero_extendqisi2
	cmp	r10, #4
	bne	.L77
.L10:
	sub	r1, r1, #1
	cmp	r1, r9
	bne	.L11
.L8:
	ands	r2, ip, #16
	bne	.L13
	mov	r1, #1
	ldr	r10, [r4, #16]
	rsb	r9, r5, #512
	cmp	r10, r9
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	bge	.L13
	ldr	r1, [r4, #8]
	ldr	r9, [sp]
	str	r1, [sp, #8]
	add	r1, r1, r9
	ldr	r9, .L83+12
	add	r1, r1, r0, lsl #9
	rsb	r0, r0, r0, lsl #23
	lsl	lr, lr, #9
	lsl	r0, r0, #9
	add	r1, r1, r9
.L16:
	add	r9, lr, r1
	ldrb	r9, [r9, r0]	@ zero_extendqisi2
	cmp	r9, #4
	beq	.L15
	ldrb	r9, [r1, #-512]	@ zero_extendqisi2
	cmp	r9, #4
	bne	.L78
.L15:
	add	r2, r2, #1
	cmp	r2, #4
	sub	r1, r1, #512
	bne	.L16
.L13:
	ldr	r2, .L83+16
	ldrh	r2, [r2]
	tst	r2, #64
	ldr	r1, [r4, #12]
	beq	.L17
	tst	ip, #64
	beq	.L79
.L17:
	add	r1, r1, #1
	cmp	r1, #4
	movgt	r1, #4
	strgt	r1, [r4, #12]
	ble	.L80
.L20:
	ldr	r2, [sp, #4]
	ldr	ip, [r4, #20]
	add	lr, r2, fp, lsl #9
	add	fp, fp, ip
	mov	r0, fp
	ldr	r2, .L83+12
	sub	lr, lr, #1
	cmp	r0, #255
	add	lr, r2, lr
	add	r2, r2, r3
	mov	r3, #0
	bgt	.L33
.L31:
	ldrb	r9, [r2, r0, lsl #9]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	r9, #4
	sub	r10, r0, fp
	beq	.L33
	ldrb	r9, [lr, ip, lsl #9]	@ zero_extendqisi2
	cmp	r9, #4
	beq	.L33
	cmp	r1, r10
	mov	r3, #1
	add	ip, ip, #1
	ble	.L81
	cmp	r0, #255
	ble	.L31
.L33:
	cmp	r3, #0
	strne	ip, [r4, #20]
	b	.L24
.L80:
	cmp	r1, #0
	str	r1, [r4, #12]
	blt	.L18
	bne	.L20
.L30:
	ldr	r3, [r8, #4]
	ldr	r2, [r4, #40]
	add	r3, r3, #1
	cmp	r2, #0
	str	r3, [r8, #4]
	streq	r2, [r8, #8]
	streq	r2, [r8, #4]
	beq	.L36
	ldr	r2, .L83+20
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L36
	ldr	r0, [r8, #8]
	ldr	r3, .L83+24
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r8, #8]
	str	r3, [r8, #4]
.L36:
	add	r5, r5, r5, lsr #31
	ldr	r3, [r4, #16]
	asr	r5, r5, #1
	rsb	r5, r5, #120
	sub	r5, r3, r5
	str	r5, [r7]
	ldr	r3, [r4, #28]
	add	r3, r3, r3, lsr #31
	ldr	r2, [r4, #20]
	asr	r3, r3, #1
	rsb	r3, r3, #80
	sub	r3, r2, r3
	str	r3, [r6]
	ldr	r3, [r7]
	bic	r3, r3, r3, asr #31
	str	r3, [r7]
	ldr	r3, [r6]
	bic	r3, r3, r3, asr #31
	str	r3, [r6]
	ldr	r3, [r7]
	cmp	r3, #272
	movge	r3, #272
	str	r3, [r7]
	ldr	r3, [r6]
	cmp	r3, #96
	movge	r3, #96
	str	r3, [r6]
	ldr	r3, [r4, #16]
	ldr	r1, [r4, #24]
	ldr	r2, .L83+28
	add	r3, r3, r1
	cmp	r3, r2
	movgt	r3, #1
	strgt	r3, [r8, #12]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L79:
	cmp	r1, #0
	mvneq	r1, #10
	streq	r1, [r4, #12]
	bne	.L17
.L18:
	ldr	lr, .L83+12
	ldr	r0, [r4, #20]
	ldr	r2, [sp]
	add	r3, r3, lr
	mov	r9, #0
	add	r1, r1, r0
	add	lr, lr, r2
	b	.L28
.L22:
	ldrb	ip, [r3, r2, lsl #9]	@ zero_extendqisi2
	cmp	ip, #4
	beq	.L27
	ldrb	ip, [lr, r2, lsl #9]	@ zero_extendqisi2
	cmp	ip, #4
	beq	.L27
	cmp	r2, r1
	mov	r9, #1
	beq	.L82
	mov	r0, r2
.L28:
	cmp	r0, #0
	sub	r2, r0, #1
	bgt	.L22
.L27:
	cmp	r9, #0
	strne	r0, [r4, #20]
.L24:
	mov	r3, #0
	str	r3, [r4, #12]
	b	.L30
.L82:
	str	r1, [r4, #20]
	b	.L30
.L81:
	str	ip, [r4, #20]
	b	.L30
.L77:
	ldr	r2, [sp, #12]
	str	r1, [r4, #20]
	str	r2, [r4, #16]
	b	.L8
.L78:
	ldr	r1, [r4, #20]
	ldr	r0, [sp, #8]
	sub	r2, r1, r2
	add	r10, r10, r0
	str	r10, [r4, #16]
	str	r2, [r4, #20]
	b	.L13
.L84:
	.align	2
.L83:
	.word	buttons
	.word	player
	.word	.LANCHOR0
	.word	bgOneFrontCMBitmap
	.word	oldButtons
	.word	.LANCHOR1
	.word	__aeabi_idivmod
	.word	510
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
	ldr	r2, .L106
	push	{r4, r5, lr}
	add	r0, r2, #16
	ldm	r0, {r0, r1}
	ldr	lr, .L106+4
	add	r3, r0, r1, lsl #9
	ldrb	ip, [r3, lr]	@ zero_extendqisi2
	ldr	r3, [r2, #24]
	cmp	ip, #5
	add	r3, r0, r3
	beq	.L86
	sub	r3, r3, #1
	lsl	ip, r1, #9
	add	ip, r3, ip
	ldrb	ip, [ip, lr]	@ zero_extendqisi2
	cmp	ip, #5
	beq	.L86
	ldr	ip, [r2, #28]
	add	ip, r1, ip
	sub	ip, ip, #1
	add	r4, r0, ip, lsl #9
	ldrb	r4, [r4, lr]	@ zero_extendqisi2
	cmp	r4, #5
	lsl	ip, ip, #9
	beq	.L86
	add	r3, r3, ip
	ldrb	r3, [r3, lr]	@ zero_extendqisi2
	cmp	r3, #5
	beq	.L86
	ldr	r3, .L106+8
	ldr	r3, [r3]
	ldr	lr, .L106+12
	ldrb	ip, [r2, #56]	@ zero_extendqisi2
	sub	r1, r1, r3
	ldr	r4, .L106+16
	ldr	r2, [r2, #36]
	ldr	r3, .L106+20
	ldr	r5, [lr]
	and	r1, r1, #255
	lsl	lr, ip, #3
	orr	r1, r1, r4
	cmp	r2, #0
	strh	r1, [r3, lr]	@ movhi
	add	ip, r3, ip, lsl #3
	sub	r0, r0, r5
	beq	.L105
	cmp	r2, #1
	lsleq	r0, r0, #23
	lsreq	r0, r0, #23
	orreq	r0, r0, #36864
	strheq	r0, [ip, #2]	@ movhi
.L93:
	ldr	r2, .L106+24
	ldr	r1, [r2]
	cmp	r1, #0
	movne	r2, #132
	ldreq	r1, [r2, #8]
	ldreq	r2, .L106+28
	addeq	r2, r2, r1, lsl #2
	ldreq	r2, [r2, #4]
	addeq	r2, r2, #32
	lsleq	r2, r2, #22
	addne	r3, r3, lr
	addeq	r3, r3, lr
	lsreq	r2, r2, #22
	strh	r2, [r3, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L86:
	ldr	r1, .L106+32
	ldr	r3, [r1, #52]
	cmp	r3, #0
	ble	.L89
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1, #52]
	moveq	r1, #1
	ldreq	r3, .L106+24
	streq	r1, [r3, #16]
.L89:
	mov	r3, #0
	mov	r1, #101
	ldr	ip, .L106+12
	ldr	r0, .L106+8
	str	r3, [r2, #16]
	str	r3, [r2, #12]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2, #20]
	pop	{r4, r5, lr}
	bx	lr
.L105:
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	orr	r0, r0, r4
	strh	r0, [ip, #2]	@ movhi
	b	.L93
.L107:
	.align	2
.L106:
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
	ldr	r3, .L109
	ldr	r1, .L109+4
	str	r2, [r3, #4]
	str	ip, [r1]
	str	r0, [r1, #24]
	str	r2, [r3, #8]
	str	r2, [r3]
	str	r2, [r3, #16]
	bx	lr
.L110:
	.align	2
.L109:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	resetPlayerState, .-resetPlayerState
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
	ldr	r3, .L112
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L113:
	.align	2
.L112:
	.word	bgOneFrontCMBitmap
	.size	colorAt, .-colorAt
	.comm	player,60,4
	.global	sbb
	.global	winPhaseOne
	.global	gameOver
	.global	isDucking
	.global	hikerFrames
	.global	hikerFrame
	.global	hikerFrameCounter
	.global	hikerFrameDelay
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	hikerFrameDelay, %object
	.size	hikerFrameDelay, 4
hikerFrameDelay:
	.word	4
	.type	hikerFrames, %object
	.size	hikerFrames, 20
hikerFrames:
	.word	24
	.word	26
	.word	28
	.word	20
	.word	22
	.type	sbb, %object
	.size	sbb, 4
sbb:
	.word	20
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
