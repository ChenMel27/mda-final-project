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
	mov	r8, #20
	mov	r7, #102
	mov	r6, #112
	ldr	ip, .L6
	mov	r0, r4
	str	r5, [ip, #4]
	str	r3, [ip, #24]
	str	r2, [ip, #28]
	strb	r1, [ip, #56]
	str	r1, [ip, #44]
	str	r1, [ip, #36]
	str	r1, [ip, #12]
	mov	r3, #256
	ldr	r2, .L6+4
	ldr	r1, .L6+8
	ldr	r5, .L6+12
	str	r4, [ip, #48]
	str	r8, [ip, #16]
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
	mov	lr, #0
	ldr	r4, .L136
	ldr	r3, [r4, #20]
	ldr	ip, [r4, #16]
	ldr	r2, .L136+4
	add	r8, ip, r3, lsl #9
	ldr	r5, [r4, #24]
	ldr	r6, [r4, #28]
	ldrb	r9, [r2, r8]	@ zero_extendqisi2
	sub	sp, sp, #36
	add	r10, r6, r3
	add	r7, r5, ip
	cmp	r9, #3
	str	r5, [sp]
	str	r6, [sp, #12]
	mov	r5, r0
	str	r10, [sp, #20]
	sub	r0, r10, #1
	mov	r6, r1
	str	r7, [sp, #24]
	str	lr, [r4, #40]
	sub	fp, r7, #1
	lsl	r10, r3, #9
	beq	.L9
	add	lr, fp, r10
	ldrb	r1, [r2, lr]	@ zero_extendqisi2
	cmp	r1, #3
	beq	.L10
	add	r1, ip, r0, lsl #9
	ldrb	r1, [r2, r1]	@ zero_extendqisi2
	cmp	r1, #3
	lsl	r1, r0, #9
	beq	.L10
	add	r1, fp, r1
	ldrb	r1, [r2, r1]	@ zero_extendqisi2
	cmp	r1, #3
	beq	.L10
	cmp	r9, #4
	ldr	r7, .L136+8
	bne	.L12
.L131:
	ldr	r1, .L136+12
	ldrh	r1, [r1]
	mov	r8, r1
	str	r1, [sp, #4]
	mvn	r8, r8
	mov	r1, #1
	ldr	r9, [r4, #12]
	str	r1, [r7, #4]
	and	r8, r8, #128
	add	r1, r9, r1
.L13:
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	cmp	lr, #2
	beq	.L16
	add	lr, ip, r0, lsl #9
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	cmp	lr, #2
	lsl	r0, r0, #9
	beq	.L16
	add	r0, fp, r0
	ldrb	r0, [r2, r0]	@ zero_extendqisi2
	cmp	r0, #2
	beq	.L16
	mov	r0, #0
	ldr	lr, .L136+16
	str	r0, [r7, #8]
	str	r0, [sp, #16]
	str	r8, [lr]
.L17:
	ldr	r0, [sp, #4]
	lsr	r0, r0, #5
	eor	r0, r0, #1
	cmp	ip, #0
	movle	r0, #0
	andgt	r0, r0, #1
	cmp	r0, #0
	bne	.L127
.L21:
	ldr	r3, [r4, #16]
	str	r3, [sp, #8]
	ldr	r3, [r4, #20]
.L23:
	ldr	r0, [sp, #4]
	ands	r8, r0, #16
	bne	.L25
	ldr	r0, [sp]
	ldr	lr, [sp, #8]
	rsb	r0, r0, #512
	cmp	r0, lr
	ble	.L25
	ldr	r0, [r4, #8]
	mov	lr, r8
	str	r8, [r4, #36]
	ldr	r8, [sp, #20]
	str	r0, [sp, #28]
	add	r0, r0, fp
	add	r0, r0, r8, lsl #9
	rsb	r9, r8, r8, lsl #23
	mov	r8, #1
	str	r8, [r4, #40]
	add	r0, r2, r0
	lsl	r9, r9, #9
.L29:
	add	r8, r10, r0
	ldrb	r8, [r8, r9]	@ zero_extendqisi2
	cmp	r8, #1
	beq	.L28
	ldrb	r8, [r0, #-512]	@ zero_extendqisi2
	cmp	r8, #1
	bne	.L128
.L28:
	add	lr, lr, #1
	cmp	lr, #4
	sub	r0, r0, #512
	bne	.L29
	cmp	r1, #4
	mov	r9, #1
	str	r1, [r4, #12]
	bgt	.L48
.L133:
	cmp	r1, #0
	bge	.L129
	add	ip, r2, ip
	mov	r8, #0
	add	r1, r1, r3
	add	r2, r2, fp
	b	.L37
.L33:
	ldrb	lr, [ip, r0, lsl #9]	@ zero_extendqisi2
	cmp	lr, #1
	beq	.L36
	ldrb	lr, [r2, r0, lsl #9]	@ zero_extendqisi2
	cmp	lr, #1
	beq	.L36
	cmp	r0, r1
	mov	r8, #1
	beq	.L130
	mov	r3, r0
.L37:
	cmp	r3, #0
	sub	r0, r3, #1
	bgt	.L33
.L36:
	cmp	r8, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #12]
.L38:
	ldr	r2, [sp, #16]
	cmp	r2, #0
	bne	.L20
	ldr	r2, .L136+20
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L20
	ldr	r2, [sp, #4]
	eor	r2, r2, #64
	ands	r3, r3, r2, lsr #6
	mvnne	r3, #11
	strne	r3, [r4, #12]
	b	.L20
.L10:
	ldr	r7, .L136+8
	ldr	r1, [r7]
	cmp	r1, #0
	bne	.L11
.L50:
	ldr	r1, .L136+24
	ldr	r9, .L136+28
	ldrh	r1, [r1, #10]
	and	r9, r9, r1
	ldr	r1, .L136+24
	strh	r9, [r1, #10]	@ movhi
	mov	r1, #1
	ldrb	r9, [r2, r8]	@ zero_extendqisi2
	str	r1, [r7]
.L11:
	cmp	r9, #4
	beq	.L131
.L12:
	ldrb	r1, [r2, lr]	@ zero_extendqisi2
	cmp	r1, #4
	beq	.L14
	add	r1, ip, r0, lsl #9
	ldrb	r1, [r2, r1]	@ zero_extendqisi2
	cmp	r1, #4
	lsl	r1, r0, #9
	beq	.L14
	add	r1, fp, r1
	ldrb	r1, [r2, r1]	@ zero_extendqisi2
	cmp	r1, #4
	beq	.L14
.L15:
	ldr	r1, .L136+12
	ldrh	r1, [r1]
	mvn	r8, r1
	str	r1, [sp, #4]
	ldr	r1, [r4, #12]
	cmp	r9, #2
	and	r8, r8, #128
	add	r1, r1, #1
	bne	.L13
.L16:
	ldr	r0, [r7, #8]
	add	r0, r0, #1
	cmp	r0, #3
	str	r0, [r7, #8]
	bgt	.L18
	ldr	r3, .L136+16
	cmp	r1, #4
	str	r1, [r4, #12]
	str	r8, [r3]
	bgt	.L19
	ldr	r3, [r4, #16]
	ldr	r9, [r4, #40]
	str	r3, [sp, #8]
.L20:
	ldr	r8, .L136+32
	ldr	r3, [r8]
	cmp	r9, #0
	add	r3, r3, #1
	str	r3, [r8]
	bne	.L132
	ldr	r3, .L136+36
	str	r9, [r8]
	str	r9, [r3]
.L46:
	ldr	r3, [sp]
	add	r3, r3, r3, lsr #31
	ldr	r2, [sp, #8]
	asr	r3, r3, #1
	rsb	r3, r3, #120
	sub	r3, r2, r3
	str	r3, [r5]
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
	ldr	r2, .L136+40
	add	r3, r3, r1
	cmp	r3, r2
	movgt	r3, #1
	strgt	r3, [r7, #12]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L14:
	mov	r1, #1
	str	r1, [r7, #4]
	b	.L15
.L25:
	ldr	r9, [r4, #40]
.L27:
	cmp	r1, #4
	str	r1, [r4, #12]
	ble	.L133
.L48:
	mov	r1, #4
	ldr	r0, [sp, #12]
	str	r1, [r4, #12]
	add	lr, r0, r3
.L30:
	ldr	r0, [sp, #24]
	ldr	r8, [sp, #12]
	add	r10, r0, r8, lsl #9
	mov	r0, lr
	sub	r10, r10, #1
	cmp	r0, #255
	add	r10, r2, r10
	mov	fp, #0
	add	r2, r2, ip
	bgt	.L43
.L40:
	ldrb	ip, [r2, r0, lsl #9]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	ip, #1
	sub	r8, r0, lr
	beq	.L43
	ldrb	ip, [r10, r3, lsl #9]	@ zero_extendqisi2
	cmp	ip, #1
	beq	.L43
	cmp	r1, r8
	mov	fp, #1
	add	r3, r3, #1
	ble	.L134
	cmp	r0, #255
	ble	.L40
.L43:
	cmp	fp, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #12]
	mov	r3, #1
	b	.L38
.L9:
	ldr	r7, .L136+8
	ldr	r1, [r7]
	cmp	r1, #0
	add	lr, fp, r10
	beq	.L50
	b	.L12
.L18:
	mov	r0, #0
	mov	lr, #1
	str	r0, [r7, #8]
	ldr	r0, .L136+16
	str	lr, [sp, #16]
	str	r8, [r0]
	b	.L17
.L19:
	mov	r3, #4
	str	r3, [r4, #12]
	ldr	r3, [r4, #16]
	ldr	r9, [r4, #40]
	str	r3, [sp, #8]
	b	.L20
.L132:
	ldr	r2, .L136+44
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L46
	ldr	r9, .L136+36
	ldr	r0, [r9]
	ldr	r3, .L136+48
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r9]
	str	r3, [r8]
	b	.L46
.L129:
	ldr	r0, [sp, #12]
	add	lr, r0, r3
	bne	.L30
	add	ip, ip, lr, lsl #9
	ldrb	r3, [r2, ip]	@ zero_extendqisi2
	cmp	r3, #1
	lsl	lr, lr, #9
	beq	.L38
	add	lr, fp, lr
	ldrb	r3, [r2, lr]	@ zero_extendqisi2
	sub	r2, r3, #1
	rsbs	r3, r2, #0
	adc	r3, r3, r2
	b	.L38
.L127:
	mov	r8, #1
	mov	lr, #0
	ldr	r0, [r4, #8]
	ldr	r9, [sp, #20]
	sub	r0, ip, r0
	str	r0, [sp, #8]
	str	r8, [r4, #40]
	str	r8, [r4, #36]
	add	r0, r0, r9, lsl #9
	rsb	r8, r9, r9, lsl #23
	add	r0, r2, r0
	lsl	r8, r8, #9
.L24:
	add	r9, r0, r10
	ldrb	r9, [r9, r8]	@ zero_extendqisi2
	cmp	r9, #1
	beq	.L22
	ldrb	r9, [r0, #-512]	@ zero_extendqisi2
	cmp	r9, #1
	bne	.L135
.L22:
	add	lr, lr, #1
	cmp	lr, #4
	sub	r0, r0, #512
	bne	.L24
	b	.L21
.L130:
	mov	r3, #0
	str	r1, [r4, #20]
	b	.L38
.L134:
	str	r3, [r4, #20]
	mov	r3, #0
	b	.L38
.L135:
	cmp	lr, #1
	movge	r0, lr
	movlt	r0, #1
	sub	r0, r0, #1
	sub	r3, r3, r0
	ldr	r0, [sp, #8]
	str	r3, [r4, #20]
	str	r0, [r4, #16]
	b	.L23
.L128:
	ldr	r0, [sp, #8]
	ldr	r8, [sp, #28]
	sub	r3, r3, lr
	add	r0, r0, r8
	mov	r9, #1
	str	r0, [sp, #8]
	str	r0, [r4, #16]
	str	r3, [r4, #20]
	b	.L27
.L137:
	.align	2
.L136:
	.word	player
	.word	bgThreeFrontCMBitmap
	.word	.LANCHOR0
	.word	buttons
	.word	isDucking
	.word	oldButtons
	.word	67109120
	.word	65407
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
	ldr	r2, .L144
	ldr	r1, .L144+4
	ldr	r3, [r2, #20]
	ldr	r1, [r1]
	ldr	r0, .L144+8
	ldrb	ip, [r2, #56]	@ zero_extendqisi2
	ldr	lr, [r2, #36]
	sub	r3, r3, r1
	ldr	r4, .L144+12
	ldr	r1, .L144+16
	ldr	r5, [r0]
	ldr	r2, [r2, #16]
	and	r3, r3, #255
	lsl	r0, ip, #3
	orr	r3, r3, r4
	cmp	lr, #0
	strh	r3, [r1, r0]	@ movhi
	add	ip, r1, ip, lsl #3
	sub	r2, r2, r5
	bne	.L139
	lsl	r3, r2, #23
	lsr	r3, r3, #23
	orr	r3, r3, r4
	strh	r3, [ip, #2]	@ movhi
.L140:
	ldr	r2, .L144+20
	ldr	r3, .L144+24
	ldr	ip, [r2]
	ldr	r2, .L144+28
	ldr	r3, [r3, ip, lsl #2]
	ldr	r2, [r2]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r2, #0
	addne	r3, r3, #32
	addeq	r3, r3, #160
	lsl	r3, r3, #22
	lsr	r3, r3, #22
	add	r1, r1, r0
	strh	r3, [r1, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L139:
	cmp	lr, #1
	lsleq	r2, r2, #23
	lsreq	r2, r2, #23
	orreq	r2, r2, #36864
	strheq	r2, [ip, #2]	@ movhi
	b	.L140
.L145:
	.align	2
.L144:
	.word	player
	.word	vOff
	.word	hOff
	.word	-32768
	.word	shadowOAM
	.word	hikerFrame
	.word	hikerFrames
	.word	.LANCHOR0
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
	ldr	r3, .L147
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L148:
	.align	2
.L147:
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
	ldr	r3, .L150
	strh	r2, [r3, #10]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	strh	r1, [r3, #14]	@ movhi
	bx	lr
.L151:
	.align	2
.L150:
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
	ldr	r3, .L155
	ldrh	r3, [r3, #12]
	rsbs	r3, r3, #20
	moveq	r1, #1
	ldreq	r2, .L155+4
	str	lr, [sp, #-4]!
	streq	r1, [r2]
	ldr	r1, .L155+8
	mov	ip, #10
	mov	r0, r1
	ldr	r2, .L155+12
	bic	r3, r3, r3, asr #31
	umull	lr, r2, r3, r2
	lsr	r2, r2, #3
	add	lr, r2, r2, lsl #2
	sub	r3, r3, lr, lsl #1
	add	r3, r3, #480
	lsl	r3, r3, #1
	ldr	lr, .L155+16
	strh	ip, [r0, #8]!	@ movhi
	strh	r3, [r1, #12]	@ movhi
	add	r2, r2, #480
	ldr	r3, .L155+20
	lsl	r2, r2, #1
	strh	lr, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L156:
	.align	2
.L155:
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
	ldr	r3, .L159
	ldrh	r0, [r3, #12]
	rsb	r0, r0, #20
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	bic	r0, r0, r0, asr #31
	ldr	r9, .L159+4
	mov	lr, pc
	bx	r9
	ldr	r1, .L159+8
	ldr	r3, .L159+12
	mov	lr, pc
	bx	r3
	mov	r6, r0
	ldr	r3, .L159+16
	ldrh	r7, [r3, #2]
	and	r0, r7, #31
	mov	lr, pc
	bx	r9
	ldr	r8, .L159+20
	mov	r1, r6
	mov	lr, pc
	bx	r8
	ldr	r10, .L159+24
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
	ldr	r2, .L159+28
	mov	r1, r6
	mov	r0, #1065353216
	mov	r6, r3
	mov	lr, pc
	bx	r2
	ldr	r1, .L159+32
	mov	lr, pc
	bx	r8
	ldr	r3, .L159+36
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
	ldr	r1, .L159+40
	orr	r0, r0, r3, lsl #10
	strh	r0, [r1, #2]!	@ movhi
	ldr	r4, .L159+44
	mov	r3, #1
	mov	r0, #3
	ldr	r2, .L159+48
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L160:
	.align	2
.L159:
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
	.align	2
	.global	drawSnowThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSnowThree, %function
drawSnowThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	lr, #512
	mov	r7, #448
	ldr	r1, .L169
	ldr	r2, .L169+4
	ldr	r3, .L169+8
	ldr	r4, [r1]
	ldr	r5, [r2]
	ldr	r0, .L169+12
	ldr	r6, .L169+16
	add	ip, r3, #180
.L166:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #56]	@ zero_extendqisi2
	lsl	r9, r2, #3
	moveq	r2, r9
	strheq	lr, [r0, r2]	@ movhi
	beq	.L163
	ldr	r1, [r3, #16]
	sub	r1, r1, r4
	add	r8, r1, #16
	cmp	r8, #256
	bhi	.L164
	ldr	r8, [r3, #20]
	sub	r8, r8, r5
	add	r10, r8, #16
	cmp	r10, #176
	bhi	.L164
	and	r1, r1, r6
	add	r9, r0, r2, lsl #3
	and	r8, r8, #255
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r9, #2]	@ movhi
	strh	r7, [r9, #4]	@ movhi
	strh	r8, [r0, r2]	@ movhi
.L163:
	add	r3, r3, #60
	cmp	r3, ip
	bne	.L166
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L164:
	strh	lr, [r0, r9]	@ movhi
	b	.L163
.L170:
	.align	2
.L169:
	.word	hOff
	.word	vOff
	.word	snows
	.word	shadowOAM
	.word	511
	.size	drawSnowThree, .-drawSnowThree
	.align	2
	.global	resetSnowThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	resetSnowThree, %function
resetSnowThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L173
	mov	r4, r0
	mov	lr, pc
	bx	r6
	ldr	r3, .L173+4
	smull	r2, r3, r0, r3
	add	r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #7
	ldr	r2, .L173+8
	ldr	r1, .L173+12
	ldr	r2, [r2]
	rsb	r3, r3, r3, lsl #3
	sub	r0, r0, r3, lsl #5
	rsb	r4, r4, r4, lsl #4
	add	r4, r1, r4, lsl #2
	ldr	r3, .L173+16
	add	r0, r0, r2
	str	r0, [r4, #16]
	ldr	r5, [r3]
	mov	lr, pc
	bx	r6
	ldr	r3, .L173+20
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #1
	sub	r0, r5, r0
	sub	r0, r0, #16
	str	r0, [r4, #20]
	pop	{r4, r5, r6, lr}
	bx	lr
.L174:
	.align	2
.L173:
	.word	rand
	.word	-1840700269
	.word	hOff
	.word	snows
	.word	vOff
	.word	1717986919
	.size	resetSnowThree, .-resetSnowThree
	.align	2
	.global	initSnowThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSnowThree, %function
initSnowThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r0, .L179
	ldr	r3, .L179+4
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r7, #16
	mov	r6, #1
	ldr	r4, .L179+8
.L176:
	add	r3, r5, #120
	mov	r0, r5
	add	r5, r5, #1
	str	r7, [r4, #24]
	str	r7, [r4, #28]
	str	r6, [r4, #52]
	str	r6, [r4, #12]
	strb	r3, [r4, #56]
	bl	resetSnowThree
	cmp	r5, #3
	add	r4, r4, #60
	bne	.L176
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L180:
	.align	2
.L179:
	.word	1234
	.word	srand
	.word	snows
	.size	initSnowThree, .-initSnowThree
	.align	2
	.global	updateSnowThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSnowThree, %function
updateSnowThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #0
	ldr	r4, .L192
	ldr	r6, .L192+4
	ldr	r7, .L192+8
	ldr	r8, .L192+12
	ldr	fp, .L192+16
	ldr	r10, .L192+20
	ldr	r9, .L192+24
	sub	sp, sp, #20
.L187:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L183
	mov	r3, #16
	add	r2, r6, #24
	ldm	r2, {r2, ip}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #12]
	str	r2, [sp, #8]
	add	r1, r0, r1
	ldr	r2, [r6, #16]
	ldr	r0, [r6, #20]
	str	r2, [sp]
	str	r0, [sp, #4]
	mov	r2, r3
	str	ip, [sp, #12]
	ldr	r0, [r4, #16]
	str	r1, [r4, #20]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L190
	ldr	r3, [r8]
	ldr	r2, [r4, #20]
	add	r3, r3, #160
	cmp	r2, r3
	bgt	.L191
.L183:
	add	r5, r5, #1
	cmp	r5, #3
	add	r4, r4, #60
	bne	.L187
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L190:
	mov	r0, r10
	ldr	r1, [fp]
	mov	r2, #0
	mov	lr, pc
	bx	r9
	mov	r3, #0
	ldr	r1, .L192+28
	ldr	r2, [r1, #52]
	sub	r2, r2, #1
	cmp	r2, r3
	str	r2, [r1, #52]
	mov	ip, #101
	moveq	r1, #1
	ldr	lr, .L192+32
	ldreq	r2, .L192+36
	mov	r0, r5
	streq	r1, [r2]
	str	r3, [r6, #16]
	str	ip, [r6, #20]
	str	r3, [r6, #12]
	str	r3, [lr]
	str	r3, [r8]
	bl	resetSnowThree
	b	.L183
.L191:
	mov	r0, r5
	bl	resetSnowThree
	b	.L183
.L193:
	.align	2
.L192:
	.word	snows
	.word	player
	.word	collision
	.word	vOff
	.word	healthaudio_length
	.word	healthaudio_data
	.word	playSoundB
	.word	health
	.word	hOff
	.word	gameOver
	.size	updateSnowThree, .-updateSnowThree
	.global	secondsElapsed
	.comm	soundB,24,4
	.comm	soundA,24,4
	.comm	healthBarFrames,72,4
	.comm	snows,180,4
	.global	leftWallTouched
	.global	winPhaseThree
	.comm	playerPaletteWork,512,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	timerPaused, %object
	.size	timerPaused, 4
timerPaused:
	.space	4
	.type	leftWallTouched, %object
	.size	leftWallTouched, 4
leftWallTouched:
	.space	4
	.type	slowCounter.4665, %object
	.size	slowCounter.4665, 4
slowCounter.4665:
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
