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
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L114
	ldrh	r3, [r3]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mvn	r2, r3
	mov	r10, #0
	ldr	r4, .L114+4
	sub	sp, sp, #44
	ldr	lr, [r4, #16]
	str	r3, [sp, #4]
	ldr	r3, [r4, #20]
	ldr	ip, .L114+8
	add	r5, lr, r3, lsl #9
	ldrb	r6, [ip, r5]	@ zero_extendqisi2
	add	r5, r4, #24
	ldm	r5, {r5, r7}
	ldr	r8, [r4, #12]
	add	fp, r5, lr
	str	r7, [sp, #16]
	str	fp, [sp, #32]
	cmp	r6, #2
	add	r9, r7, r3
	sub	fp, fp, #1
	mov	r7, r1
	lsl	r1, r3, #9
	str	r1, [sp, #12]
	mov	r6, r0
	str	r8, [sp, #28]
	str	fp, [sp, #24]
	str	r10, [r4, #40]
	and	r2, r2, #128
	add	r1, r8, #1
	beq	.L9
	lsl	r8, r3, #9
	add	r8, fp, r8
	ldrb	r8, [ip, r8]	@ zero_extendqisi2
	cmp	r8, #2
	beq	.L9
	sub	r0, r9, #1
	add	r8, lr, r0, lsl #9
	ldrb	r8, [ip, r8]	@ zero_extendqisi2
	cmp	r8, #2
	lsl	r0, r0, #9
	beq	.L9
	add	r0, fp, r0
	ldrb	r0, [ip, r0]	@ zero_extendqisi2
	cmp	r0, #2
	beq	.L9
	ldr	r8, .L114+12
	ldr	r0, .L114+16
	str	r10, [r8]
	str	r10, [sp, #20]
	str	r2, [r0]
.L10:
	ldr	r2, [sp, #4]
	lsr	r2, r2, #5
	eor	r2, r2, #1
	cmp	lr, #0
	movle	r2, #0
	andgt	r2, r2, #1
	cmp	r2, #0
	bne	.L107
.L42:
	str	lr, [sp, #8]
.L14:
	ldr	r2, [sp, #4]
	ands	r10, r2, #16
	bne	.L17
	ldr	r0, [sp, #8]
	rsb	r2, r5, #512
	cmp	r2, r0
	ble	.L17
	mov	r0, r10
	str	r10, [r4, #36]
	mov	r10, #1
	ldr	fp, [r4, #8]
	ldr	r2, [sp, #24]
	add	r2, fp, r2
	add	r2, r2, r9, lsl #9
	str	fp, [sp, #36]
	rsb	r9, r9, r9, lsl #23
	str	r10, [r4, #40]
	ldr	fp, [sp, #12]
	add	r2, ip, r2
	lsl	r9, r9, #9
.L21:
	add	r10, fp, r2
	ldrb	r10, [r10, r9]	@ zero_extendqisi2
	cmp	r10, #1
	beq	.L20
	ldrb	r10, [r2, #-512]	@ zero_extendqisi2
	cmp	r10, #1
	bne	.L108
.L20:
	add	r0, r0, #1
	cmp	r0, #4
	sub	r2, r2, #512
	bne	.L21
	mov	r2, #1
	cmp	r1, #4
	str	r2, [sp, #12]
	str	r1, [r4, #12]
	bgt	.L40
.L111:
	cmp	r1, #0
	bge	.L109
	ldr	r2, [sp, #28]
	mvn	r0, r2
	ldr	r2, [sp, #24]
	add	lr, ip, lr
	mov	r9, #0
	sub	r0, r3, r0
	add	ip, ip, r2
	b	.L29
.L25:
	ldrb	r1, [lr, r2, lsl #9]	@ zero_extendqisi2
	cmp	r1, #1
	beq	.L28
	ldrb	r1, [ip, r2, lsl #9]	@ zero_extendqisi2
	cmp	r1, #1
	beq	.L28
	cmp	r2, r0
	mov	r9, #1
	beq	.L110
	mov	r3, r2
.L29:
	cmp	r3, #0
	sub	r2, r3, #1
	bgt	.L25
.L28:
	cmp	r9, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #12]
.L30:
	ldr	r2, [sp, #20]
	cmp	r2, #0
	bne	.L37
	ldr	r2, .L114+20
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L37
	ldr	r2, [sp, #4]
	eor	r2, r2, #64
	ands	r3, r3, r2, lsr #6
	mvnne	r3, #11
	strne	r3, [r4, #12]
.L37:
	ldr	r9, .L114+24
	ldr	r2, [sp, #12]
	ldr	r3, [r9]
	cmp	r2, #0
	add	r3, r3, #1
	str	r3, [r9]
	beq	.L13
	ldr	r2, .L114+28
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L38
	ldr	r10, .L114+32
	ldr	r0, [r10]
	ldr	r3, .L114+36
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r10]
	str	r3, [r9]
	b	.L38
.L9:
	ldr	r8, .L114+12
	ldr	r0, [r8]
	add	r0, r0, #1
	cmp	r0, #3
	str	r0, [r8]
	bgt	.L11
	ldr	r3, .L114+16
	cmp	r1, #4
	str	r2, [r3]
	bgt	.L12
	str	r1, [r4, #12]
	str	lr, [sp, #8]
	ldr	r9, .L114+24
.L13:
	mov	r3, #0
	ldr	r2, .L114+32
	str	r3, [r9]
	str	r3, [r2]
.L38:
	add	r0, r5, r5, lsr #31
	ldr	r3, [sp, #8]
	asr	r0, r0, #1
	rsb	r0, r0, #120
	sub	r0, r3, r0
	str	r0, [r6]
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
	ldr	r3, [r4, #16]
	ldr	r1, [r4, #24]
	ldr	r2, .L114+40
	add	r3, r3, r1
	cmp	r3, r2
	movgt	r3, #1
	strgt	r3, [r8, #4]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L17:
	ldr	r2, [r4, #40]
	str	r2, [sp, #12]
.L19:
	cmp	r1, #4
	str	r1, [r4, #12]
	ble	.L111
.L40:
	mov	r1, #4
	ldr	r2, [sp, #16]
	str	r1, [r4, #12]
	add	r9, r2, r3
.L22:
	ldr	r2, [sp, #32]
	ldr	r0, [sp, #16]
	add	r10, r2, r0, lsl #9
	mov	r2, r9
	sub	r10, r10, #1
	cmp	r2, #255
	add	r10, ip, r10
	add	ip, ip, lr
	mov	lr, #0
	bgt	.L35
.L32:
	ldrb	r0, [ip, r2, lsl #9]	@ zero_extendqisi2
	add	r2, r2, #1
	cmp	r0, #1
	sub	fp, r2, r9
	beq	.L35
	ldrb	r0, [r10, r3, lsl #9]	@ zero_extendqisi2
	cmp	r0, #1
	beq	.L35
	cmp	r1, fp
	mov	lr, #1
	add	r3, r3, #1
	ble	.L112
	cmp	r2, #255
	ble	.L32
.L35:
	cmp	lr, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #12]
	mov	r3, #1
	b	.L30
.L11:
	mov	r0, #0
	mov	r10, #1
	str	r0, [r8]
	ldr	r0, .L114+16
	str	r10, [sp, #20]
	str	r2, [r0]
	b	.L10
.L12:
	mov	r3, #4
	str	lr, [sp, #8]
	str	r3, [r4, #12]
	ldr	r9, .L114+24
	b	.L13
.L109:
	ldr	r2, [sp, #16]
	add	r9, r2, r3
	bne	.L22
	add	lr, lr, r9, lsl #9
	ldrb	r3, [ip, lr]	@ zero_extendqisi2
	cmp	r3, #1
	lsl	r9, r9, #9
	beq	.L30
	ldr	r3, [sp, #24]
	add	r9, r3, r9
	ldrb	r3, [ip, r9]	@ zero_extendqisi2
	sub	r2, r3, #1
	rsbs	r3, r2, #0
	adc	r3, r3, r2
	b	.L30
.L107:
	mov	r10, #1
	mov	r2, #0
	ldr	r0, [r4, #8]
	sub	r0, lr, r0
	str	r0, [sp, #8]
	str	r10, [r4, #40]
	str	r10, [r4, #36]
	add	r0, r0, r9, lsl #9
	rsb	r10, r9, r9, lsl #23
	add	r0, ip, r0
	lsl	r10, r10, #9
.L16:
	ldr	fp, [sp, #12]
	add	fp, fp, r0
	ldrb	fp, [fp, r10]	@ zero_extendqisi2
	cmp	fp, #1
	beq	.L15
	ldrb	fp, [r0, #-512]	@ zero_extendqisi2
	cmp	fp, #1
	bne	.L113
.L15:
	add	r2, r2, #1
	cmp	r2, #4
	sub	r0, r0, #512
	bne	.L16
	b	.L42
.L110:
	mov	r3, #0
	str	r0, [r4, #20]
	b	.L30
.L112:
	str	r3, [r4, #20]
	mov	r3, #0
	b	.L30
.L113:
	cmp	r2, #1
	movlt	r2, #1
	sub	r2, r2, #1
	sub	r3, r3, r2
	ldr	r2, [sp, #8]
	str	r3, [r4, #20]
	str	r2, [r4, #16]
	b	.L14
.L108:
	ldr	r2, [sp, #8]
	ldr	fp, [sp, #36]
	add	r2, r2, fp
	str	r2, [sp, #8]
	str	r2, [r4, #16]
	mov	r2, #1
	sub	r3, r3, r0
	str	r3, [r4, #20]
	str	r2, [sp, #12]
	b	.L19
.L115:
	.align	2
.L114:
	.word	buttons
	.word	player
	.word	bgThreeFrontCMBitmap
	.word	.LANCHOR0
	.word	isDucking
	.word	oldButtons
	.word	hikerFrameCounter
	.word	hikerFrameDelay
	.word	hikerFrame
	.word	__aeabi_idivmod
	.word	510
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
	ldr	r2, .L122
	ldr	r1, .L122+4
	ldr	r3, [r2, #20]
	ldr	r1, [r1]
	ldr	ip, .L122+8
	ldrb	r0, [r2, #56]	@ zero_extendqisi2
	ldr	lr, [r2, #36]
	sub	r3, r3, r1
	ldr	r4, .L122+12
	ldr	r1, .L122+16
	ldr	r5, [ip]
	ldr	r2, [r2, #16]
	and	r3, r3, #255
	lsl	ip, r0, #3
	orr	r3, r3, r4
	cmp	lr, #0
	strh	r3, [r1, ip]	@ movhi
	add	r0, r1, r0, lsl #3
	sub	r2, r2, r5
	bne	.L117
	lsl	r3, r2, #23
	lsr	r3, r3, #23
	orr	r3, r3, r4
	strh	r3, [r0, #2]	@ movhi
.L118:
	ldr	r3, .L122+20
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #164
	ldreq	r2, .L122+24
	ldreq	r3, .L122+28
	ldreq	r2, [r2]
	ldreq	r3, [r3, r2, lsl #2]
	addeq	r3, r3, #160
	lsleq	r3, r3, #22
	lsreq	r3, r3, #22
	add	r1, r1, ip
	strh	r3, [r1, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L117:
	cmp	lr, #1
	lsleq	r2, r2, #23
	lsreq	r2, r2, #23
	orreq	r2, r2, #36864
	strheq	r2, [r0, #2]	@ movhi
	b	.L118
.L123:
	.align	2
.L122:
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
	ldr	r3, .L125
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L126:
	.align	2
.L125:
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
	ldr	r3, .L128
	strh	r2, [r3, #10]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	strh	r1, [r3, #14]	@ movhi
	bx	lr
.L129:
	.align	2
.L128:
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
	ldr	r3, .L133
	ldrh	r3, [r3, #12]
	rsbs	r3, r3, #20
	moveq	r1, #1
	ldreq	r2, .L133+4
	str	lr, [sp, #-4]!
	streq	r1, [r2]
	ldr	r1, .L133+8
	mov	ip, #10
	mov	r0, r1
	ldr	r2, .L133+12
	bic	r3, r3, r3, asr #31
	umull	lr, r2, r3, r2
	lsr	r2, r2, #3
	add	lr, r2, r2, lsl #2
	sub	r3, r3, lr, lsl #1
	add	r3, r3, #480
	lsl	r3, r3, #1
	ldr	lr, .L133+16
	strh	ip, [r0, #8]!	@ movhi
	strh	r3, [r1, #12]	@ movhi
	add	r2, r2, #480
	ldr	r3, .L133+20
	lsl	r2, r2, #1
	strh	lr, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L134:
	.align	2
.L133:
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
	ldr	r3, .L137
	ldrh	r0, [r3, #12]
	rsb	r0, r0, #20
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	bic	r0, r0, r0, asr #31
	ldr	r9, .L137+4
	mov	lr, pc
	bx	r9
	ldr	r1, .L137+8
	ldr	r3, .L137+12
	mov	lr, pc
	bx	r3
	mov	r6, r0
	ldr	r3, .L137+16
	ldrh	r7, [r3, #2]
	and	r0, r7, #31
	mov	lr, pc
	bx	r9
	ldr	r8, .L137+20
	mov	r1, r6
	mov	lr, pc
	bx	r8
	ldr	r10, .L137+24
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
	ldr	r2, .L137+28
	mov	r1, r6
	mov	r0, #1065353216
	mov	r6, r3
	mov	lr, pc
	bx	r2
	ldr	r1, .L137+32
	mov	lr, pc
	bx	r8
	ldr	r3, .L137+36
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
	ldr	r1, .L137+40
	orr	r0, r0, r3, lsl #10
	strh	r0, [r1, #2]!	@ movhi
	ldr	r4, .L137+44
	mov	r3, #1
	mov	r0, #3
	ldr	r2, .L137+48
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L138:
	.align	2
.L137:
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
