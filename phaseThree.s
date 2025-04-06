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
	cmp	fp, #1
	beq	.L8
	add	fp, r0, r1, lsl #9
	ldrb	r10, [fp, r10]	@ zero_extendqisi2
	cmp	r10, #1
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
	cmp	lr, #1
	sub	r9, r1, r8
	beq	.L30
	ldrb	lr, [ip, r3, lsl #9]	@ zero_extendqisi2
	cmp	lr, #1
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
	cmp	lr, #1
	beq	.L23
	ldrb	lr, [r1, r3, lsl #9]	@ zero_extendqisi2
	cmp	lr, #1
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
	cmp	r0, #1
	beq	.L11
	ldr	r0, [sp, #8]
	add	r10, r10, r0, lsl #9
	ldrb	r0, [r10, r1]	@ zero_extendqisi2
	cmp	r0, #1
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
	.word	bgThreeFrontCMBitmap
	.word	oldButtons
	.word	hikerFrameCounter
	.word	hikerFrame
	.word	510
	.word	sbb
	.word	.LANCHOR0
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
	push	{r4, lr}
	ldr	r2, .L104
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	ldr	lr, .L104+4
	add	r0, r3, r1, lsl #9
	ldrb	r0, [r0, lr]	@ zero_extendqisi2
	cmp	r0, #1
	beq	.L82
	ldr	r0, [r2, #24]
	add	r0, r3, r0
	lsl	ip, r1, #9
	sub	r0, r0, #1
	add	ip, r0, ip
	ldrb	ip, [ip, lr]	@ zero_extendqisi2
	cmp	ip, #1
	beq	.L82
	ldr	ip, [r2, #28]
	add	ip, r1, ip
	sub	ip, ip, #1
	add	r4, r3, ip, lsl #9
	ldrb	r4, [r4, lr]	@ zero_extendqisi2
	cmp	r4, #1
	lsl	ip, ip, #9
	beq	.L82
	add	r0, r0, ip
	ldrb	r0, [r0, lr]	@ zero_extendqisi2
	cmp	r0, #1
	beq	.L82
	ldr	ip, .L104+8
	ldr	r0, .L104+12
	ldr	ip, [ip]
	ldr	r0, [r0]
	sub	r1, r1, ip
	and	r1, r1, #255
	orr	r1, r1, #32768
	sub	r3, r3, r0
	b	.L83
.L82:
	ldr	r1, .L104+16
	ldr	r3, [r1, #52]
	cmp	r3, #0
	ble	.L85
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1, #52]
	moveq	r1, #1
	ldreq	r3, .L104+20
	streq	r1, [r3]
.L85:
	mov	r1, #0
	mov	r0, #101
	ldr	lr, .L104+12
	ldr	ip, .L104+8
	mov	r3, r1
	str	r1, [r2, #16]
	str	r1, [r2, #12]
	str	r1, [lr]
	str	r1, [ip]
	str	r0, [r2, #20]
	ldr	r1, .L104+24
.L83:
	ldrb	r0, [r2, #56]	@ zero_extendqisi2
	ldr	lr, [r2, #36]
	ldr	r2, .L104+28
	lsl	ip, r0, #3
	cmp	lr, #0
	strh	r1, [r2, ip]	@ movhi
	add	r0, r2, r0, lsl #3
	bne	.L87
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	strh	r3, [r0, #2]	@ movhi
.L88:
	ldr	r3, .L104+32
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #132
	ldreq	r1, .L104+36
	ldreq	r3, .L104+40
	ldreq	r1, [r1]
	ldreq	r3, [r3, r1, lsl #2]
	addeq	r3, r3, #32
	lsleq	r3, r3, #22
	lsreq	r3, r3, #22
	add	r2, r2, ip
	strh	r3, [r2, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L87:
	cmp	lr, #1
	lsleq	r3, r3, #23
	lsreq	r3, r3, #23
	orreq	r3, r3, #36864
	strheq	r3, [r0, #2]	@ movhi
	b	.L88
.L105:
	.align	2
.L104:
	.word	player
	.word	bgThreeFrontCMBitmap
	.word	vOff
	.word	hOff
	.word	health
	.word	gameOver
	.word	32869
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
	ldr	r3, .L107
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L108:
	.align	2
.L107:
	.word	bgThreeFrontCMBitmap
	.size	colorAtThree, .-colorAtThree
	.comm	healthBarFrames,72,4
	.global	winPhaseThree
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	winPhaseThree, %object
	.size	winPhaseThree, 4
winPhaseThree:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
