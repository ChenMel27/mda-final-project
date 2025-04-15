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
	.file	"phaseThree.c"
	.text
	.align	2
	.global	initPlayerThree
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayerThree, %function
initPlayerThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L6
	mov	lr, pc
	bx	r3
	mov	r4, #3
	mov	r1, #0
	mov	r5, #64
	mov	r3, #17
	mov	r2, #24
	mov	lr, #1
	mov	r7, #102
	mov	r6, #112
	ldr	ip, .L6+4
	mov	r0, r4
	str	r5, [ip, #4]
	str	r3, [ip, #24]
	str	r2, [ip, #28]
	str	r1, [ip, #16]
	strb	r1, [ip, #56]
	str	r1, [ip, #44]
	str	r1, [ip, #36]
	str	r1, [ip, #12]
	mov	r3, #256
	ldr	r2, .L6+8
	ldr	r1, .L6+12
	ldr	r5, .L6+16
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
	ldr	r2, .L6+20
	ldr	r1, .L6+24
	mov	lr, pc
	bx	r5
	ldr	r3, .L6+28
	ldr	r2, .L6+32
	add	r0, r3, #512
.L2:
	ldrh	r1, [r3, #2]!
	cmp	r3, r0
	strh	r1, [r2, #2]!	@ movhi
	bne	.L2
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	resetPlayerState
	.word	player
	.word	83886592
	.word	playerPal
	.word	DMANow
	.word	100728832
	.word	playerTiles
	.word	playerPal-2
	.word	playerPaletteWork-2
	.size	initPlayerThree, .-initPlayerThree
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayerThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerThree, %function
updatePlayerThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L112
	ldr	ip, .L112+4
	ldr	r3, [r4, #20]
	ldr	lr, [r4, #16]
	ldr	r2, .L112+8
	ldrh	ip, [ip]
	ldr	fp, [r4, #24]
	add	r5, lr, r3, lsl #9
	ldrb	r5, [r2, r5]	@ zero_extendqisi2
	add	r9, fp, lr
	ldr	r10, [r4, #28]
	lsr	r7, ip, #7
	mov	r6, r1
	sub	sp, sp, #20
	cmp	r5, #2
	eor	r7, r7, #1
	sub	r1, r9, #1
	lsl	r9, r3, #9
	mov	r5, r0
	str	r9, [sp, #4]
	add	r8, r10, r3
	and	r0, r7, #1
	beq	.L9
	add	r9, r1, r9
	ldrb	r9, [r2, r9]	@ zero_extendqisi2
	cmp	r9, #2
	beq	.L9
	sub	r7, r8, #1
	add	r9, lr, r7, lsl #9
	ldrb	r9, [r2, r9]	@ zero_extendqisi2
	cmp	r9, #2
	lsl	r7, r7, #9
	beq	.L9
	add	r7, r1, r7
	ldrb	r7, [r2, r7]	@ zero_extendqisi2
	cmp	r7, #2
	beq	.L9
	ldr	r7, .L112+12
.L13:
	mov	r9, #0
	str	r9, [r7]
	ldr	r9, .L112+16
	tst	ip, #32
	str	r0, [r9]
	bne	.L15
	mov	r0, #1
	cmp	lr, #0
	str	r0, [r4, #40]
	str	r0, [r4, #36]
	ble	.L15
	ldr	r9, [r4, #8]
	sub	r0, r8, r3
	sub	lr, lr, r9
	add	r0, lr, r0, lsl #9
	sub	r0, r0, #512
	add	r0, r2, r0
	str	r0, [sp, #8]
	str	lr, [sp, #12]
	add	r9, r2, lr
	sub	lr, r3, #4
.L17:
	ldrb	r0, [r9, r3, lsl #9]	@ zero_extendqisi2
	cmp	r0, #1
	beq	.L16
	ldr	r0, [sp, #8]
	ldrb	r0, [r0, r3, lsl #9]	@ zero_extendqisi2
	cmp	r0, #1
	bne	.L106
.L16:
	sub	r3, r3, #1
	cmp	r3, lr
	bne	.L17
.L15:
	ands	r3, ip, #16
	beq	.L18
.L100:
	mov	r1, #1
.L19:
	ldr	r3, .L112+20
	ldrh	r3, [r3]
	tst	r3, #64
	ldr	r3, [r4, #12]
	beq	.L23
	tst	ip, #64
	beq	.L107
.L23:
	add	r3, r3, #1
	cmp	r3, #4
	str	r3, [r4, #12]
	ldr	r8, [r4, #16]
	ble	.L26
	mov	r3, #4
	cmp	r1, #0
	str	r3, [r4, #12]
	bne	.L27
.L25:
	ldr	r9, .L112+24
	ldr	r2, [r4, #40]
	ldr	r3, [r9]
	cmp	r2, #0
	add	r3, r3, #1
	str	r3, [r9]
	bne	.L108
	ldr	r3, .L112+28
	str	r2, [r9]
	str	r2, [r3]
.L42:
	add	r3, fp, fp, lsr #31
	asr	r3, r3, #1
	rsb	r3, r3, #120
	sub	r8, r8, r3
	str	r8, [r5]
	ldr	r3, [r4, #28]
	add	r3, r3, r3, lsr #31
	ldr	r2, [r4, #20]
	asr	r3, r3, #1
	rsb	r3, r3, #80
	sub	r3, r2, r3
	str	r3, [r6]
	ldr	r3, [r5]
	bic	r3, r3, r3, asr #31
	str	r3, [r5]
	ldr	r3, [r6]
	bic	r3, r3, r3, asr #31
	str	r3, [r6]
	ldr	r3, [r5]
	cmp	r3, #272
	movge	r3, #272
	str	r3, [r5]
	ldr	r3, [r6]
	cmp	r3, #96
	movge	r3, #96
	str	r3, [r6]
	ldr	r3, [r5]
	add	r2, r3, #255
	cmp	r3, #0
	movlt	r3, r2
	ldr	ip, [r4, #24]
	ldr	r2, [r4, #16]
	ldr	r0, .L112+32
	ldr	r1, .L112+36
	add	r2, r2, ip
	asr	r3, r3, #8
	add	r3, r3, #20
	cmp	r2, r0
	str	r3, [r1]
	movgt	r3, #1
	strgt	r3, [r7, #4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L9:
	ldr	r7, .L112+12
	ldr	r9, [r7]
	add	r9, r9, #1
	cmp	r9, #3
	str	r9, [r7]
	bgt	.L13
	ldr	r3, .L112+16
	mov	r1, #0
	str	r0, [r3]
	b	.L19
.L108:
	ldr	r2, .L112+40
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L42
	ldr	r10, .L112+28
	ldr	r0, [r10]
	ldr	r3, .L112+44
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r10]
	str	r3, [r9]
	b	.L42
.L107:
	cmp	r3, #0
	bne	.L23
	mvn	r3, #10
	cmp	r1, #0
	str	r3, [r4, #12]
	ldr	r8, [r4, #16]
	beq	.L25
.L28:
	ldr	r0, [r4, #20]
	add	lr, fp, r8
	sub	lr, lr, #1
	add	lr, r2, lr
	mov	r9, #0
	add	r2, r2, r8
	add	r3, r3, r0
	b	.L34
.L30:
	ldrb	ip, [r2, r1, lsl #9]	@ zero_extendqisi2
	cmp	ip, #1
	beq	.L33
	ldrb	ip, [lr, r1, lsl #9]	@ zero_extendqisi2
	cmp	ip, #1
	beq	.L33
	cmp	r1, r3
	mov	r9, #1
	beq	.L109
	mov	r0, r1
.L34:
	cmp	r0, #0
	sub	r1, r0, #1
	bgt	.L30
.L33:
	cmp	r9, #0
	beq	.L37
.L105:
	str	r0, [r4, #20]
.L37:
	mov	r3, #0
	str	r3, [r4, #12]
	b	.L25
.L18:
	mov	lr, #1
	ldr	r0, [r4, #16]
	rsb	r9, fp, #512
	cmp	r0, r9
	str	r3, [r4, #36]
	str	lr, [r4, #40]
	bge	.L100
	ldr	lr, [r4, #8]
	add	r1, lr, r1
	add	r1, r1, r8, lsl #9
	str	r0, [sp, #8]
	rsb	r8, r8, r8, lsl #23
	ldr	r0, [sp, #4]
	add	r1, r2, r1
	lsl	r8, r8, #9
.L22:
	add	r9, r0, r1
	ldrb	r9, [r9, r8]	@ zero_extendqisi2
	cmp	r9, #1
	beq	.L21
	ldrb	r9, [r1, #-512]	@ zero_extendqisi2
	cmp	r9, #1
	bne	.L110
.L21:
	add	r3, r3, #1
	cmp	r3, #4
	sub	r1, r1, #512
	bne	.L22
	b	.L100
.L26:
	cmp	r1, #0
	beq	.L25
	cmp	r3, #0
	blt	.L28
	beq	.L25
.L27:
	add	lr, fp, r8
	add	lr, lr, r10, lsl #9
	ldr	r0, [r4, #20]
	sub	lr, lr, #1
	add	ip, r2, lr
	add	r10, r10, r0
	str	fp, [sp, #4]
	mov	r1, r10
	mov	lr, #0
	mov	fp, ip
	add	r2, r2, r8
	b	.L40
.L36:
	ldrb	ip, [r2, r1, lsl #9]	@ zero_extendqisi2
	add	r1, r1, #1
	cmp	ip, #1
	sub	r9, r1, r10
	beq	.L39
	ldrb	ip, [fp, r0, lsl #9]	@ zero_extendqisi2
	cmp	ip, #1
	beq	.L39
	cmp	r3, r9
	mov	lr, #1
	add	r0, r0, #1
	ble	.L111
.L40:
	cmp	r1, #255
	ble	.L36
.L39:
	cmp	lr, #0
	ldr	fp, [sp, #4]
	bne	.L105
	b	.L37
.L109:
	str	r3, [r4, #20]
	b	.L25
.L111:
	ldr	fp, [sp, #4]
	str	r0, [r4, #20]
	b	.L25
.L106:
	ldr	r0, [sp, #12]
	str	r3, [r4, #20]
	str	r0, [r4, #16]
	b	.L15
.L110:
	ldr	r1, [r4, #20]
	ldr	r0, [sp, #8]
	sub	r3, r1, r3
	add	r0, r0, lr
	str	r0, [r4, #16]
	str	r3, [r4, #20]
	b	.L100
.L113:
	.align	2
.L112:
	.word	player
	.word	buttons
	.word	bgThreeFrontCMBitmap
	.word	.LANCHOR0
	.word	isDucking
	.word	oldButtons
	.word	hikerFrameCounter
	.word	hikerFrame
	.word	510
	.word	sbb
	.word	hikerFrameDelay
	.word	__aeabi_idivmod
	.size	updatePlayerThree, .-updatePlayerThree
	.align	2
	.global	drawPlayerThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerThree, %function
drawPlayerThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r2, .L120
	ldr	r1, .L120+4
	ldr	r3, [r2, #20]
	ldr	r1, [r1]
	ldr	ip, .L120+8
	ldrb	r0, [r2, #56]	@ zero_extendqisi2
	ldr	lr, [r2, #36]
	sub	r3, r3, r1
	ldr	r4, .L120+12
	ldr	r1, .L120+16
	ldr	r5, [ip]
	ldr	r2, [r2, #16]
	and	r3, r3, #255
	lsl	ip, r0, #3
	orr	r3, r3, r4
	cmp	lr, #0
	strh	r3, [r1, ip]	@ movhi
	add	r0, r1, r0, lsl #3
	sub	r2, r2, r5
	bne	.L115
	lsl	r3, r2, #23
	lsr	r3, r3, #23
	orr	r3, r3, r4
	strh	r3, [r0, #2]	@ movhi
.L116:
	ldr	r3, .L120+20
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #164
	ldreq	r2, .L120+24
	ldreq	r3, .L120+28
	ldreq	r2, [r2]
	ldreq	r3, [r3, r2, lsl #2]
	addeq	r3, r3, #160
	lsleq	r3, r3, #22
	lsreq	r3, r3, #22
	add	r1, r1, ip
	strh	r3, [r1, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L115:
	cmp	lr, #1
	lsleq	r2, r2, #23
	lsreq	r2, r2, #23
	orreq	r2, r2, #36864
	strheq	r2, [r0, #2]	@ movhi
	b	.L116
.L121:
	.align	2
.L120:
	.word	player
	.word	vOff
	.word	hOff
	.word	-32768
	.word	shadowOAM
	.word	isDucking
	.word	hikerFrame
	.word	hikerFrames
	.size	drawPlayerThree, .-drawPlayerThree
	.align	2
	.global	colorAtThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	colorAtThree, %function
colorAtThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L123
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L124:
	.align	2
.L123:
	.word	bgThreeFrontCMBitmap
	.size	colorAtThree, .-colorAtThree
	.align	2
	.global	initCountdownTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCountdownTimer, %function
initCountdownTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	ip, #49152
	mov	r0, #131
	mov	r1, #132
	ldr	r3, .L126
	strh	r2, [r3, #10]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	strh	r1, [r3, #14]	@ movhi
	bx	lr
.L127:
	.align	2
.L126:
	.word	67109120
	.size	initCountdownTimer, .-initCountdownTimer
	.align	2
	.global	drawTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTimer, %function
drawTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L131
	ldrh	r3, [r3, #12]
	rsbs	r3, r3, #20
	moveq	r1, #1
	ldreq	r2, .L131+4
	str	lr, [sp, #-4]!
	streq	r1, [r2]
	ldr	r1, .L131+8
	mov	ip, #10
	mov	r0, r1
	ldr	r2, .L131+12
	bic	r3, r3, r3, asr #31
	umull	lr, r2, r3, r2
	lsr	r2, r2, #3
	add	lr, r2, r2, lsl #2
	sub	r3, r3, lr, lsl #1
	add	r3, r3, #480
	lsl	r3, r3, #1
	ldr	lr, .L131+16
	strh	ip, [r0, #8]!	@ movhi
	strh	r3, [r1, #12]	@ movhi
	add	r2, r2, #480
	ldr	r3, .L131+20
	lsl	r2, r2, #1
	strh	lr, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L132:
	.align	2
.L131:
	.word	67109120
	.word	gameOver
	.word	shadowOAM+400
	.word	-858993459
	.word	16564
	.word	16580
	.size	drawTimer, .-drawTimer
	.global	__aeabi_i2f
	.global	__aeabi_fdiv
	.global	__aeabi_fmul
	.global	__aeabi_f2iz
	.global	__aeabi_fsub
	.global	__aeabi_fadd
	.align	2
	.global	updatePlayerPalette
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerPalette, %function
updatePlayerPalette:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L135
	ldrh	r0, [r3, #12]
	rsb	r0, r0, #20
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	bic	r0, r0, r0, asr #31
	ldr	r9, .L135+4
	mov	lr, pc
	bx	r9
	ldr	r1, .L135+8
	ldr	r3, .L135+12
	mov	lr, pc
	bx	r3
	mov	r6, r0
	ldr	r3, .L135+16
	ldrh	r7, [r3, #2]
	and	r0, r7, #31
	mov	lr, pc
	bx	r9
	ldr	r8, .L135+20
	mov	r1, r6
	mov	lr, pc
	bx	r8
	ldr	r10, .L135+24
	mov	lr, pc
	bx	r10
	mov	r4, r0
	lsr	r0, r7, #5
	and	r0, r0, #31
	mov	lr, pc
	bx	r9
	mov	r1, r6
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r10
	mov	r5, r0
	lsr	r0, r7, #10
	and	r0, r0, #31
	mov	lr, pc
	bx	r9
	mov	r1, r6
	mov	lr, pc
	bx	r8
	mov	r3, r0
	ldr	r2, .L135+28
	mov	r1, r6
	mov	r0, #1065353216
	mov	r6, r3
	mov	lr, pc
	bx	r2
	ldr	r1, .L135+32
	mov	lr, pc
	bx	r8
	ldr	r3, .L135+36
	mov	r1, r0
	mov	r0, r6
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r10
	cmp	r5, #31
	movge	r5, #31
	cmp	r4, #31
	movge	r4, #31
	cmp	r0, #31
	movlt	r3, r0
	movge	r3, #31
	orr	r0, r4, r5, lsl #5
	ldr	r1, .L135+40
	orr	r0, r0, r3, lsl #10
	strh	r0, [r1, #2]!	@ movhi
	ldr	r4, .L135+44
	mov	r3, #1
	mov	r0, #3
	ldr	r2, .L135+48
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L136:
	.align	2
.L135:
	.word	67109120
	.word	__aeabi_i2f
	.word	1101004800
	.word	__aeabi_fdiv
	.word	playerPal
	.word	__aeabi_fmul
	.word	__aeabi_f2iz
	.word	__aeabi_fsub
	.word	1106771968
	.word	__aeabi_fadd
	.word	playerPaletteWork
	.word	DMANow
	.word	83886594
	.size	updatePlayerPalette, .-updatePlayerPalette
	.global	secondsElapsed
	.comm	healthBarFrames,72,4
	.global	winPhaseThree
	.comm	playerPaletteWork,512,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	slowCounter.4102, %object
	.size	slowCounter.4102, 4
slowCounter.4102:
	.space	4
	.type	winPhaseThree, %object
	.size	winPhaseThree, 4
winPhaseThree:
	.space	4
	.type	secondsElapsed, %object
	.size	secondsElapsed, 4
secondsElapsed:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
