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
	mov	r9, #0
	ldr	r3, .L84
	ldr	r4, .L84+4
	ldrh	lr, [r3]
	ldr	r5, [r4, #24]
	ldr	r3, [r4, #16]
	lsr	r2, lr, #7
	ldr	r10, .L84+8
	eor	r2, r2, #1
	and	r2, r2, #1
	ldr	r8, [r4, #20]
	ldr	ip, [r4, #28]
	add	fp, r5, r3
	str	r2, [r10]
	sub	sp, sp, #20
	sub	r2, fp, #1
	tst	lr, #32
	mov	r6, r0
	mov	r7, r1
	str	r9, [r4, #40]
	str	r2, [sp, #4]
	add	r0, ip, r8
	bne	.L8
	mov	r2, #1
	cmp	r3, r9
	str	r2, [r4, #40]
	str	r2, [r4, #36]
	ble	.L8
	mov	r1, r8
	ldr	r2, [r4, #8]
	sub	r9, r0, r8
	sub	r10, r3, r2
	add	r9, r10, r9, lsl #9
	ldr	r2, .L84+12
	sub	r9, r9, #512
	add	r9, r2, r9
	str	r10, [sp, #12]
	str	r9, [sp, #8]
	add	r2, r2, r10
	sub	r9, r8, #4
.L11:
	ldrb	r10, [r2, r1, lsl #9]	@ zero_extendqisi2
	cmp	r10, #2
	beq	.L10
	ldr	r10, [sp, #8]
	ldrb	r10, [r10, r1, lsl #9]	@ zero_extendqisi2
	cmp	r10, #2
	bne	.L77
.L10:
	sub	r1, r1, #1
	cmp	r1, r9
	bne	.L11
.L8:
	ands	r2, lr, #16
	bne	.L13
	mov	r1, #1
	ldr	r9, [r4, #16]
	rsb	r10, r5, #512
	cmp	r9, r10
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	bge	.L13
	ldr	r1, [r4, #8]
	ldr	r10, [sp, #4]
	str	r1, [sp, #8]
	add	r1, r1, r10
	ldr	r10, .L84+12
	add	r1, r1, r0, lsl #9
	rsb	r0, r0, r0, lsl #23
	lsl	r8, r8, #9
	lsl	r0, r0, #9
	add	r1, r1, r10
.L16:
	add	r10, r8, r1
	ldrb	r10, [r10, r0]	@ zero_extendqisi2
	cmp	r10, #2
	beq	.L15
	ldrb	r10, [r1, #-512]	@ zero_extendqisi2
	cmp	r10, #2
	bne	.L78
.L15:
	add	r2, r2, #1
	cmp	r2, #4
	sub	r1, r1, #512
	bne	.L16
.L13:
	ldr	r2, .L84+16
	ldrh	r2, [r2]
	tst	r2, #64
	ldr	r1, [r4, #12]
	beq	.L17
	tst	lr, #64
	beq	.L79
.L17:
	add	r1, r1, #1
	cmp	r1, #4
	movgt	r1, #4
	strgt	r1, [r4, #12]
	ble	.L80
.L20:
	ldr	lr, [r4, #20]
	add	r8, fp, ip, lsl #9
	add	ip, ip, lr
	mov	r0, ip
	ldr	r2, .L84+12
	sub	r8, r8, #1
	cmp	r0, #255
	add	r8, r2, r8
	add	r2, r2, r3
	mov	r3, #0
	bgt	.L33
.L31:
	ldrb	r9, [r2, r0, lsl #9]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	r9, #2
	sub	r10, r0, ip
	beq	.L33
	ldrb	r9, [r8, lr, lsl #9]	@ zero_extendqisi2
	cmp	r9, #2
	beq	.L33
	cmp	r1, r10
	mov	r3, #1
	add	lr, lr, #1
	ble	.L81
	cmp	r0, #255
	ble	.L31
.L33:
	cmp	r3, #0
	strne	lr, [r4, #20]
	b	.L24
.L80:
	cmp	r1, #0
	str	r1, [r4, #12]
	blt	.L18
	bne	.L20
.L30:
	ldr	r8, .L84+20
	ldr	r2, [r4, #40]
	ldr	r3, [r8]
	cmp	r2, #0
	add	r3, r3, #1
	str	r3, [r8]
	bne	.L82
	ldr	r3, .L84+24
	str	r2, [r8]
	str	r2, [r3]
.L36:
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
	ldr	r0, .L84+28
	add	r2, r2, ip
	cmp	r2, r0
	movgt	r2, #1
	ldr	r1, .L84+32
	asr	r3, r3, #8
	add	r3, r3, #20
	str	r3, [r1]
	ldrgt	r3, .L84+36
	strgt	r2, [r3]
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
	ldr	lr, .L84+12
	ldr	r0, [r4, #20]
	ldr	r2, [sp, #4]
	add	r3, r3, lr
	mov	r8, #0
	add	r1, r1, r0
	add	lr, lr, r2
	b	.L28
.L22:
	ldrb	ip, [r3, r2, lsl #9]	@ zero_extendqisi2
	cmp	ip, #2
	beq	.L27
	ldrb	ip, [lr, r2, lsl #9]	@ zero_extendqisi2
	cmp	ip, #2
	beq	.L27
	cmp	r2, r1
	mov	r8, #1
	beq	.L83
	mov	r0, r2
.L28:
	cmp	r0, #0
	sub	r2, r0, #1
	bgt	.L22
.L27:
	cmp	r8, #0
	strne	r0, [r4, #20]
.L24:
	mov	r3, #0
	str	r3, [r4, #12]
	b	.L30
.L82:
	ldr	r2, .L84+40
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L36
	ldr	r9, .L84+24
	ldr	r0, [r9]
	ldr	r3, .L84+44
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r9]
	str	r3, [r8]
	b	.L36
.L83:
	str	r1, [r4, #20]
	b	.L30
.L81:
	str	lr, [r4, #20]
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
	add	r9, r9, r0
	str	r9, [r4, #16]
	str	r2, [r4, #20]
	b	.L13
.L85:
	.align	2
.L84:
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
	ldr	r2, .L107
	push	{r4, r5, lr}
	ldr	ip, [r2, #16]
	ldr	r0, [r2, #20]
	ldr	lr, .L107+4
	add	r3, ip, r0, lsl #9
	ldrb	r1, [r3, lr]	@ zero_extendqisi2
	ldr	r3, [r2, #24]
	cmp	r1, #1
	add	r3, ip, r3
	beq	.L87
	sub	r3, r3, #1
	lsl	r1, r0, #9
	add	r1, r3, r1
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	cmp	r1, #1
	beq	.L87
	ldr	r1, [r2, #28]
	add	r1, r0, r1
	sub	r1, r1, #1
	add	r4, ip, r1, lsl #9
	ldrb	r4, [r4, lr]	@ zero_extendqisi2
	cmp	r4, #1
	lsl	r1, r1, #9
	beq	.L87
	add	r3, r3, r1
	ldrb	r3, [r3, lr]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L87
	ldr	r3, [r2, #52]
	cmp	r3, #0
	beq	.L93
	ldr	r3, .L107+8
	ldr	r3, [r3]
	ldr	r5, .L107+12
	ldrb	r1, [r2, #56]	@ zero_extendqisi2
	ldr	lr, [r2, #36]
	sub	r0, r0, r3
	ldr	r4, .L107+16
	ldr	r3, .L107+20
	ldr	r5, [r5]
	and	r0, r0, #255
	lsl	r2, r1, #3
	orr	r0, r0, r4
	cmp	lr, #0
	strh	r0, [r3, r2]	@ movhi
	add	r1, r3, r1, lsl #3
	sub	ip, ip, r5
	bne	.L94
	lsl	ip, ip, #23
	lsr	ip, ip, #23
	orr	ip, ip, r4
	strh	ip, [r1, #2]	@ movhi
.L95:
	ldr	r1, .L107+24
	ldr	r1, [r1]
	cmp	r1, #0
	movne	r1, #132
	ldreq	r0, .L107+28
	ldreq	r1, .L107+32
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
.L87:
	ldr	r1, .L107+36
	ldr	r3, [r1, #52]
	cmp	r3, #0
	ble	.L90
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1, #52]
	moveq	r1, #1
	ldreq	r3, .L107+40
	streq	r1, [r3]
.L90:
	mov	r3, #0
	mov	r1, #101
	ldr	ip, .L107+12
	ldr	r0, .L107+8
	str	r3, [r2, #16]
	str	r3, [r2, #12]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2, #20]
	pop	{r4, r5, lr}
	bx	lr
.L93:
	mov	r2, #1
	ldr	r3, .L107+40
	pop	{r4, r5, lr}
	str	r2, [r3]
	bx	lr
.L94:
	cmp	lr, #1
	lsleq	ip, ip, #23
	lsreq	ip, ip, #23
	orreq	ip, ip, #36864
	strheq	ip, [r1, #2]	@ movhi
	b	.L95
.L108:
	.align	2
.L107:
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
	ldr	r4, .L113
	ldr	r5, .L113+4
	ldr	r7, .L113+8
	ldr	r6, .L113+12
.L110:
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
	bne	.L110
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L114:
	.align	2
.L113:
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
	ldr	r4, .L131
	ldr	r5, .L131+4
	ldr	r7, .L131+8
	ldr	r8, .L131+12
	ldr	fp, .L131+16
	ldr	r9, .L131+20
	ldr	r10, .L131+24
	sub	sp, sp, #20
	add	r6, r4, #180
.L123:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L129
.L117:
	add	r4, r4, #60
	cmp	r4, r6
	bne	.L123
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L129:
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
	bne	.L130
.L118:
	ldr	r3, [r4, #20]
	cmp	r3, #256
	ble	.L117
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
	b	.L117
.L130:
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
	ble	.L120
	cmp	ip, r2
	moveq	r1, #1
	ldreq	r3, .L131+28
	str	ip, [r10, #52]
	streq	r1, [r3]
.L120:
	ldr	r1, .L131+32
	ldr	r3, .L131+36
	str	r2, [r5, #16]
	str	lr, [r5, #20]
	str	r2, [r5, #12]
	str	r2, [r1]
	str	r2, [r3]
	b	.L118
.L132:
	.align	2
.L131:
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
	mov	r6, #448
	ldr	r1, .L141
	ldr	r2, .L141+4
	ldr	r3, .L141+8
	ldr	r5, [r1]
	ldr	r4, [r2]
	ldr	ip, .L141+12
	ldr	lr, .L141+16
	add	r0, r3, #180
.L135:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	beq	.L134
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
.L134:
	add	r3, r3, #60
	cmp	r3, r0
	bne	.L135
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L142:
	.align	2
.L141:
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
	ldr	r3, .L144
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L145:
	.align	2
.L144:
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
