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
	mov	r1, #0
	mov	r4, #3
	mov	r5, #64
	mov	r3, #17
	mov	r2, #24
	mov	lr, #1
	mov	r7, #102
	mov	r6, #112
	ldr	ip, .L6
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
	ldr	r2, .L6+4
	ldr	r1, .L6+8
	ldr	r5, .L6+12
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
	ldr	r2, .L6+16
	ldr	r1, .L6+20
	mov	lr, pc
	bx	r5
	ldr	r3, .L6+24
	ldr	r2, .L6+28
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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, #0
	ldr	r4, .L127
	add	r2, r4, #16
	ldm	r2, {r2, ip}
	ldr	r3, .L127+4
	add	lr, r2, ip, lsl #9
	ldr	r5, [r4, #28]
	ldrb	r8, [r3, lr]	@ zero_extendqisi2
	ldr	fp, [r4, #24]
	sub	sp, sp, #36
	add	r10, r5, ip
	add	r9, fp, r2
	str	r7, [r4, #40]
	cmp	r8, #3
	lsl	r7, ip, #9
	mov	r6, r1
	str	r5, [sp, #12]
	str	r9, [sp, #24]
	mov	r5, r0
	str	r10, [sp, #20]
	str	r7, [sp, #8]
	sub	r0, r9, #1
	sub	r1, r10, #1
	beq	.L9
	add	r7, r0, r7
	ldrb	r7, [r3, r7]	@ zero_extendqisi2
	cmp	r7, #3
	beq	.L10
	add	r7, r2, r1, lsl #9
	ldrb	r7, [r3, r7]	@ zero_extendqisi2
	cmp	r7, #3
	lsl	r7, r1, #9
	beq	.L10
	add	r7, r0, r7
	ldrb	r7, [r3, r7]	@ zero_extendqisi2
	cmp	r7, #3
	ldrne	r7, .L127+8
	bne	.L11
.L10:
	ldr	r7, .L127+8
	ldr	r9, [r7]
	cmp	r9, #0
	bne	.L11
.L46:
	ldr	r9, .L127+12
	ldr	r8, .L127+16
	ldrh	r10, [r9, #10]
	and	r8, r8, r10
	strh	r8, [r9, #10]	@ movhi
	mov	r8, #1
	str	r8, [r7]
	ldrb	r8, [r3, lr]	@ zero_extendqisi2
.L11:
	ldr	lr, .L127+20
	ldrh	lr, [lr]
	str	lr, [sp]
	mvn	lr, lr
	cmp	r8, #2
	and	lr, lr, #128
	beq	.L12
.L47:
	ldr	r8, [sp, #8]
	add	r8, r0, r8
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	cmp	r8, #2
	beq	.L12
	add	r8, r2, r1, lsl #9
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	cmp	r8, #2
	lsl	r1, r1, #9
	beq	.L12
	add	r1, r0, r1
	ldrb	r1, [r3, r1]	@ zero_extendqisi2
	cmp	r1, #2
	beq	.L12
	mov	r1, #0
	ldr	r8, .L127+24
	ldr	r9, [r4, #12]
	str	lr, [r8]
	str	r1, [r7, #4]
	str	r1, [sp, #16]
	add	r1, r9, #1
.L13:
	ldr	lr, [sp]
	lsr	lr, lr, #5
	eor	lr, lr, #1
	cmp	r2, #0
	movle	lr, #0
	andgt	lr, lr, #1
	cmp	lr, #0
	bne	.L119
.L17:
	ldr	ip, [r4, #16]
	str	ip, [sp, #4]
	ldr	ip, [r4, #20]
.L19:
	ldr	lr, [sp]
	ands	r9, lr, #16
	bne	.L21
	ldr	r8, [sp, #4]
	rsb	lr, fp, #512
	cmp	lr, r8
	ble	.L21
	mov	r10, #1
	ldr	lr, [r4, #8]
	mov	r8, r9
	str	r9, [r4, #36]
	ldr	r9, [sp, #20]
	str	lr, [sp, #28]
	add	lr, lr, r0
	add	lr, lr, r9, lsl #9
	str	r2, [sp, #20]
	rsb	r9, r9, r9, lsl #23
	str	r10, [r4, #40]
	ldr	r2, [sp, #8]
	add	lr, r3, lr
	lsl	r9, r9, #9
.L25:
	add	r10, r2, lr
	ldrb	r10, [r10, r9]	@ zero_extendqisi2
	cmp	r10, #1
	beq	.L24
	ldrb	r10, [lr, #-512]	@ zero_extendqisi2
	cmp	r10, #1
	bne	.L120
.L24:
	add	r8, r8, #1
	cmp	r8, #4
	sub	lr, lr, #512
	bne	.L25
	cmp	r1, #4
	mov	r9, #1
	ldr	r2, [sp, #20]
	str	r1, [r4, #12]
	bgt	.L44
.L123:
	cmp	r1, #0
	bge	.L121
	add	r2, r3, r2
	mov	r8, #0
	add	r1, ip, r1
	add	r3, r3, r0
	b	.L33
.L29:
	ldrb	lr, [r2, r0, lsl #9]	@ zero_extendqisi2
	cmp	lr, #1
	beq	.L32
	ldrb	lr, [r3, r0, lsl #9]	@ zero_extendqisi2
	cmp	lr, #1
	beq	.L32
	cmp	r0, r1
	mov	r8, #1
	beq	.L122
	mov	ip, r0
.L33:
	cmp	ip, #0
	sub	r0, ip, #1
	bgt	.L29
.L32:
	mov	r3, #0
	cmp	r8, #0
	strne	ip, [r4, #20]
	str	r3, [r4, #12]
.L34:
	ldr	r2, [sp, #16]
	cmp	r2, #0
	bne	.L16
	ldr	r2, .L127+28
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L16
	ldr	r2, [sp]
	eor	r2, r2, #64
	ands	r3, r3, r2, lsr #6
	mvnne	r3, #11
	strne	r3, [r4, #12]
	b	.L16
.L21:
	ldr	r9, [r4, #40]
.L23:
	cmp	r1, #4
	str	r1, [r4, #12]
	ble	.L123
.L44:
	mov	r1, #4
	ldr	r0, [sp, #12]
	str	r1, [r4, #12]
	add	r8, r0, ip
.L26:
	ldr	r0, [sp, #24]
	ldr	lr, [sp, #12]
	add	r10, r0, lr, lsl #9
	mov	r0, r8
	sub	r10, r10, #1
	add	lr, r3, r10
	cmp	r0, #255
	str	fp, [sp, #8]
	add	r3, r3, r2
	mov	fp, lr
	mov	r2, #0
	bgt	.L39
.L36:
	ldrb	lr, [r3, r0, lsl #9]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	lr, #1
	sub	r10, r0, r8
	beq	.L39
	ldrb	lr, [fp, ip, lsl #9]	@ zero_extendqisi2
	cmp	lr, #1
	beq	.L39
	cmp	r1, r10
	mov	r2, #1
	add	ip, ip, #1
	ble	.L124
	cmp	r0, #255
	ble	.L36
.L39:
	mov	r3, #0
	cmp	r2, #0
	str	r3, [r4, #12]
	ldr	fp, [sp, #8]
	mov	r3, #1
	strne	ip, [r4, #20]
	b	.L34
.L12:
	ldr	r8, [r7, #4]
	ldr	r1, [r4, #12]
	add	r8, r8, #1
	cmp	r8, #3
	str	r8, [r7, #4]
	add	r1, r1, #1
	bgt	.L14
	ldr	r3, .L127+24
	cmp	r1, #4
	str	r1, [r4, #12]
	str	lr, [r3]
	bgt	.L15
	ldr	r3, [r4, #16]
	ldr	r9, [r4, #40]
	str	r3, [sp, #4]
.L16:
	ldr	r8, .L127+32
	ldr	r3, [r8]
	cmp	r9, #0
	add	r3, r3, #1
	str	r3, [r8]
	bne	.L125
	ldr	r3, .L127+36
	str	r9, [r8]
	str	r9, [r3]
.L42:
	add	lr, fp, fp, lsr #31
	ldr	r3, [sp, #4]
	asr	lr, lr, #1
	rsb	lr, lr, #120
	sub	lr, r3, lr
	str	lr, [r5]
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
	ldr	r3, [r4, #16]
	ldr	r1, [r4, #24]
	ldr	r2, .L127+40
	add	r3, r3, r1
	cmp	r3, r2
	movgt	r3, #1
	strgt	r3, [r7, #8]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L9:
	ldr	r7, .L127+8
	ldr	r8, [r7]
	cmp	r8, #0
	beq	.L46
	ldr	lr, .L127+20
	ldrh	lr, [lr]
	str	lr, [sp]
	mvn	lr, lr
	and	lr, lr, #128
	b	.L47
.L14:
	mov	r8, #0
	mov	r9, #1
	str	r8, [r7, #4]
	ldr	r8, .L127+24
	str	r9, [sp, #16]
	str	lr, [r8]
	b	.L13
.L15:
	mov	r3, #4
	str	r3, [r4, #12]
	ldr	r3, [r4, #16]
	ldr	r9, [r4, #40]
	str	r3, [sp, #4]
	b	.L16
.L125:
	ldr	r2, .L127+44
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L42
	ldr	r9, .L127+36
	ldr	r0, [r9]
	ldr	r3, .L127+48
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r9]
	str	r3, [r8]
	b	.L42
.L119:
	mov	r9, #1
	mov	r8, #0
	ldr	lr, [r4, #8]
	ldr	r10, [sp, #20]
	sub	lr, r2, lr
	str	lr, [sp, #4]
	str	r9, [r4, #40]
	str	r9, [r4, #36]
	str	ip, [sp, #28]
	add	lr, lr, r10, lsl #9
	rsb	r9, r10, r10, lsl #23
	ldr	ip, [sp, #8]
	add	lr, r3, lr
	lsl	r9, r9, #9
.L20:
	add	r10, lr, ip
	ldrb	r10, [r10, r9]	@ zero_extendqisi2
	cmp	r10, #1
	beq	.L18
	ldrb	r10, [lr, #-512]	@ zero_extendqisi2
	cmp	r10, #1
	bne	.L126
.L18:
	add	r8, r8, #1
	cmp	r8, #4
	sub	lr, lr, #512
	bne	.L20
	b	.L17
.L121:
	ldr	lr, [sp, #12]
	add	r8, lr, ip
	bne	.L26
	add	r2, r2, r8, lsl #9
	ldrb	r2, [r3, r2]	@ zero_extendqisi2
	cmp	r2, #1
	moveq	r3, r2
	lsl	r8, r8, #9
	beq	.L34
	add	r8, r0, r8
	ldrb	r3, [r3, r8]	@ zero_extendqisi2
	sub	r2, r3, #1
	rsbs	r3, r2, #0
	adc	r3, r3, r2
	b	.L34
.L122:
	mov	r3, #0
	str	r1, [r4, #20]
	b	.L34
.L124:
	mov	r3, #0
	ldr	fp, [sp, #8]
	str	ip, [r4, #20]
	b	.L34
.L126:
	cmp	r8, #1
	movge	lr, r8
	movlt	lr, #1
	ldr	ip, [sp, #28]
	sub	lr, lr, #1
	sub	ip, ip, lr
	ldr	lr, [sp, #4]
	str	ip, [r4, #20]
	str	lr, [r4, #16]
	b	.L19
.L120:
	ldr	lr, [sp, #4]
	ldr	r9, [sp, #28]
	sub	ip, ip, r8
	add	lr, lr, r9
	ldr	r2, [sp, #20]
	mov	r9, #1
	str	lr, [sp, #4]
	str	lr, [r4, #16]
	str	ip, [r4, #20]
	b	.L23
.L128:
	.align	2
.L127:
	.word	player
	.word	bgThreeFrontCMBitmap
	.word	.LANCHOR0
	.word	67109120
	.word	65407
	.word	buttons
	.word	isDucking
	.word	oldButtons
	.word	hikerFrameCounter
	.word	hikerFrame
	.word	510
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
	ldr	r2, .L133
	ldr	r1, .L133+4
	ldr	r3, [r2, #20]
	ldr	r1, [r1]
	ldr	ip, .L133+8
	ldrb	r0, [r2, #56]	@ zero_extendqisi2
	ldr	lr, [r2, #36]
	sub	r3, r3, r1
	ldr	r4, .L133+12
	ldr	r1, .L133+16
	ldr	r5, [ip]
	ldr	r2, [r2, #16]
	and	r3, r3, #255
	lsl	ip, r0, #3
	orr	r3, r3, r4
	cmp	lr, #0
	strh	r3, [r1, ip]	@ movhi
	add	r0, r1, r0, lsl #3
	sub	r2, r2, r5
	bne	.L130
	lsl	r3, r2, #23
	lsr	r3, r3, #23
	orr	r3, r3, r4
	strh	r3, [r0, #2]	@ movhi
.L131:
	ldr	r2, .L133+20
	ldr	r3, .L133+24
	ldr	r2, [r2]
	ldr	r3, [r3, r2, lsl #2]
	add	r3, r3, #160
	lsl	r3, r3, #22
	add	r1, r1, ip
	lsr	r3, r3, #22
	strh	r3, [r1, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L130:
	cmp	lr, #1
	lsleq	r2, r2, #23
	lsreq	r2, r2, #23
	orreq	r2, r2, #36864
	strheq	r2, [r0, #2]	@ movhi
	b	.L131
.L134:
	.align	2
.L133:
	.word	player
	.word	vOff
	.word	hOff
	.word	-32768
	.word	shadowOAM
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
	ldr	r3, .L136
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L137:
	.align	2
.L136:
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
	ldr	r3, .L139
	strh	r2, [r3, #10]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	strh	r1, [r3, #14]	@ movhi
	bx	lr
.L140:
	.align	2
.L139:
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
	ldr	r3, .L144
	ldrh	r3, [r3, #12]
	rsbs	r3, r3, #20
	moveq	r1, #1
	ldreq	r2, .L144+4
	str	lr, [sp, #-4]!
	streq	r1, [r2]
	ldr	r1, .L144+8
	mov	ip, #10
	mov	r0, r1
	ldr	r2, .L144+12
	bic	r3, r3, r3, asr #31
	umull	lr, r2, r3, r2
	lsr	r2, r2, #3
	add	lr, r2, r2, lsl #2
	sub	r3, r3, lr, lsl #1
	add	r3, r3, #480
	lsl	r3, r3, #1
	ldr	lr, .L144+16
	strh	ip, [r0, #8]!	@ movhi
	strh	r3, [r1, #12]	@ movhi
	add	r2, r2, #480
	ldr	r3, .L144+20
	lsl	r2, r2, #1
	strh	lr, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L145:
	.align	2
.L144:
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
	ldr	r3, .L148
	ldrh	r0, [r3, #12]
	rsb	r0, r0, #20
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	bic	r0, r0, r0, asr #31
	ldr	r9, .L148+4
	mov	lr, pc
	bx	r9
	ldr	r1, .L148+8
	ldr	r3, .L148+12
	mov	lr, pc
	bx	r3
	mov	r6, r0
	ldr	r3, .L148+16
	ldrh	r7, [r3, #2]
	and	r0, r7, #31
	mov	lr, pc
	bx	r9
	ldr	r8, .L148+20
	mov	r1, r6
	mov	lr, pc
	bx	r8
	ldr	r10, .L148+24
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
	ldr	r2, .L148+28
	mov	r1, r6
	mov	r0, #1065353216
	mov	r6, r3
	mov	lr, pc
	bx	r2
	ldr	r1, .L148+32
	mov	lr, pc
	bx	r8
	ldr	r3, .L148+36
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
	ldr	r1, .L148+40
	orr	r0, r0, r3, lsl #10
	strh	r0, [r1, #2]!	@ movhi
	ldr	r4, .L148+44
	mov	r3, #1
	mov	r0, #3
	ldr	r2, .L148+48
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L149:
	.align	2
.L148:
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
	.type	timerPaused, %object
	.size	timerPaused, 4
timerPaused:
	.space	4
	.type	slowCounter.4101, %object
	.size	slowCounter.4101, 4
slowCounter.4101:
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
