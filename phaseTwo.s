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
	mov	r3, #17
	mov	r2, #24
	mov	lr, #1
	mov	r7, #102
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
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L116
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldrh	lr, [r3]
	ldr	r3, .L116+4
	ldr	r4, .L116+8
	ldr	ip, [r3]
	ldr	r2, [r4, #16]
	lsr	r3, lr, #5
	cmp	ip, #0
	eor	r3, r3, #1
	sub	sp, sp, #28
	movne	ip, #12
	moveq	ip, #8
	mov	r9, #0
	cmp	r2, #0
	movle	r3, #0
	andgt	r3, r3, #1
	str	lr, [sp, #4]
	mvn	lr, lr
	ldr	r5, [r4, #24]
	cmp	r3, r9
	str	ip, [sp, #12]
	add	r3, r5, r2
	ldr	ip, [r4, #20]
	ldr	r8, .L116+12
	ldr	r10, [r4, #28]
	str	r3, [sp, #16]
	and	lr, lr, #128
	sub	r3, r3, #1
	str	r3, [sp, #8]
	mov	r7, r0
	mov	r6, r1
	moveq	r3, ip
	str	r9, [r4, #40]
	str	lr, [r8]
	streq	r2, [sp]
	add	fp, r10, ip
	bne	.L109
.L8:
	ldr	r1, [sp, #4]
	ands	r1, r1, #16
	bne	.L11
	ldr	lr, [sp]
	rsb	r0, r5, #512
	cmp	r0, lr
	ble	.L11
	ldr	r8, .L116+16
	ldr	r9, [sp, #12]
	ldr	lr, [r8]
	add	lr, r9, lr
	mov	r0, r1
	str	r1, [r4, #36]
	asr	r1, lr, #3
	str	r1, [sp]
	str	lr, [r8]
	ldr	r9, [r4, #8]
	ldr	r8, [sp, #8]
	ldr	lr, [sp]
	add	r1, r9, r8
	add	r1, r1, fp, lsl #9
	str	lr, [r4, #16]
	rsb	lr, fp, fp, lsl #23
	mov	fp, #1
	ldr	r8, .L116+20
	str	fp, [r4, #40]
	lsl	ip, ip, #9
	lsl	lr, lr, #9
	add	r1, r1, r8
.L15:
	add	r8, r1, ip
	ldrb	r8, [r8, lr]	@ zero_extendqisi2
	cmp	r8, #2
	beq	.L14
	ldrb	r8, [r1, #-512]	@ zero_extendqisi2
	cmp	r8, #2
	bne	.L110
.L14:
	add	r0, r0, #1
	cmp	r0, #4
	sub	r1, r1, #512
	bne	.L15
	mov	fp, #1
	b	.L13
.L11:
	ldr	fp, [r4, #40]
.L13:
	ldr	r1, [r4, #12]
	add	ip, r1, #1
	cmp	ip, #4
	str	ip, [r4, #12]
	ble	.L16
	mov	ip, #4
	str	ip, [r4, #12]
	add	r9, r10, r3
.L17:
	ldr	r1, [sp, #16]
	ldr	r0, .L116+20
	add	r1, r1, r10, lsl #9
	sub	r1, r1, #1
	add	r1, r0, r1
	add	r0, r0, r2
	mov	r2, r9
	cmp	r2, #255
	mov	r10, #0
	bgt	.L31
.L28:
	ldrb	lr, [r0, r2, lsl #9]	@ zero_extendqisi2
	add	r2, r2, #1
	cmp	lr, #2
	sub	r8, r2, r9
	beq	.L31
	ldrb	lr, [r1, r3, lsl #9]	@ zero_extendqisi2
	cmp	lr, #2
	beq	.L31
	cmp	ip, r8
	mov	r10, #1
	add	r3, r3, #1
	ble	.L111
	cmp	r2, #255
	ble	.L28
.L31:
	cmp	r10, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	ldr	r2, .L116+24
	ldrh	r2, [r2]
	tst	r2, #64
	str	r3, [r4, #12]
	beq	.L26
	b	.L106
.L16:
	cmp	ip, #0
	bge	.L112
	mvn	r1, r1
	ldr	r8, .L116+20
	add	r0, r2, r8
	ldr	r2, [sp, #8]
	sub	r1, r3, r1
	add	r8, r8, r2
	mov	r2, #0
	b	.L24
.L20:
	ldrb	lr, [r0, ip, lsl #9]	@ zero_extendqisi2
	cmp	lr, #2
	beq	.L23
	ldrb	lr, [r8, ip, lsl #9]	@ zero_extendqisi2
	cmp	lr, #2
	beq	.L23
	cmp	r1, ip
	mov	r2, #1
	beq	.L113
	mov	r3, ip
.L24:
	cmp	r3, #0
	sub	ip, r3, #1
	bgt	.L20
.L23:
	cmp	r2, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #12]
.L26:
	ldr	r8, .L116+28
	ldr	r3, [r8]
	cmp	fp, #0
	add	r3, r3, #1
	str	r3, [r8]
	bne	.L114
	ldr	r3, .L116+32
	str	fp, [r8]
	str	fp, [r3]
.L37:
	add	r5, r5, r5, lsr #31
	ldr	r3, [sp]
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
	ldr	r2, .L116+36
	add	r3, r3, r1
	cmp	r3, r2
	movgt	r2, #1
	ldrgt	r3, .L116+40
	strgt	r2, [r3]
	ldr	r3, .L116+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L6
	mov	r1, #16
	mov	r2, #6
	mov	r3, #3
	str	r1, [r4, #28]
	str	r2, [r4, #24]
	str	r3, [r4, #48]
.L6:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L112:
	add	r9, r10, r3
	bne	.L17
	ldr	r3, .L116+20
	add	r0, r2, r9, lsl #9
	ldrb	r2, [r0, r3]	@ zero_extendqisi2
	cmp	r2, #2
	lsl	r9, r9, #9
	beq	.L108
	ldr	r2, [sp, #8]
	add	r9, r2, r9
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L26
.L108:
	ldr	r3, .L116+24
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L26
.L106:
	ldr	r3, [sp, #4]
	tst	r3, #64
	mvneq	r3, #11
	streq	r3, [r4, #12]
	b	.L26
.L114:
	ldr	r2, .L116+44
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L37
	ldr	r9, .L116+32
	ldr	r0, [r9]
	ldr	r3, .L116+48
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r9]
	str	r3, [r8]
	b	.L37
.L109:
	ldr	r0, .L116+16
	ldr	r1, [sp, #12]
	ldr	r3, [r0]
	ldr	lr, [r4, #8]
	sub	r3, r3, r1
	asr	r9, r3, #3
	sub	lr, r9, lr
	mov	r1, lr
	str	lr, [sp, #20]
	sub	lr, fp, ip
	mov	r8, #1
	add	lr, r1, lr, lsl #9
	str	r3, [r0]
	ldr	r0, .L116+20
	sub	lr, lr, #512
	add	lr, r0, lr
	add	r0, r0, r1
	mov	r1, ip
	str	r8, [r4, #40]
	str	r8, [r4, #36]
	str	r9, [sp]
	str	r9, [r4, #16]
	sub	r9, ip, #4
.L10:
	ldrb	r3, [r0, r1, lsl #9]	@ zero_extendqisi2
	cmp	r3, #2
	mov	r3, r1
	beq	.L9
	ldrb	r8, [lr, r1, lsl #9]	@ zero_extendqisi2
	cmp	r8, #2
	bne	.L115
.L9:
	sub	r1, r1, #1
	cmp	r9, r1
	bne	.L10
	mov	r3, ip
	b	.L8
.L113:
	str	r1, [r4, #20]
	b	.L26
.L111:
	str	r3, [r4, #20]
	b	.L26
.L115:
	ldr	r1, [sp, #20]
	str	r3, [r4, #20]
	str	r1, [r4, #16]
	str	r1, [sp]
	b	.L8
.L110:
	ldr	r1, [sp]
	sub	r3, r3, r0
	add	r1, r1, r9
	mov	fp, #1
	str	r1, [sp]
	str	r1, [r4, #16]
	str	r3, [r4, #20]
	b	.L13
.L117:
	.align	2
.L116:
	.word	buttons
	.word	cheatOn
	.word	player
	.word	isDucking
	.word	playerSubPixelX
	.word	bgTwoFrontCMBitmap
	.word	oldButtons
	.word	hikerFrameCounter
	.word	hikerFrame
	.word	510
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
	ldr	r2, .L141
	push	{r4, lr}
	ldr	r1, [r2, #16]
	ldr	r0, [r2, #20]
	ldr	lr, .L141+4
	add	r3, r1, r0, lsl #9
	ldrb	ip, [r3, lr]	@ zero_extendqisi2
	ldr	r3, [r2, #24]
	cmp	ip, #1
	add	r3, r1, r3
	beq	.L119
	sub	r3, r3, #1
	lsl	ip, r0, #9
	add	ip, r3, ip
	ldrb	ip, [ip, lr]	@ zero_extendqisi2
	cmp	ip, #1
	beq	.L119
	ldr	ip, [r2, #28]
	add	ip, r0, ip
	sub	ip, ip, #1
	add	r4, r1, ip, lsl #9
	ldrb	r4, [r4, lr]	@ zero_extendqisi2
	cmp	r4, #1
	lsl	ip, ip, #9
	beq	.L119
	add	r3, r3, ip
	ldrb	r3, [r3, lr]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L119
	ldr	lr, .L141+8
	ldr	ip, .L141+12
	ldr	r3, .L141+16
	ldr	lr, [lr]
	ldr	ip, [ip]
	ldr	r3, [r3]
	sub	r0, r0, lr
	sub	r1, r1, ip
	ldrb	ip, [r2, #56]	@ zero_extendqisi2
	and	r0, r0, #255
	lsl	r1, r1, #23
	cmp	r3, #0
	ldr	lr, .L141+20
	ldr	r2, [r2, #36]
	orr	r0, r0, #32768
	lsr	r1, r1, #23
	lsl	r3, ip, #3
	beq	.L125
	strh	r0, [lr, r3]	@ movhi
	ldr	r0, .L141+24
	cmp	r2, #0
	ldr	r0, [r0]
	ldr	r2, .L141+28
	ldr	r2, [r2, r0, lsl #2]
	add	r2, r2, #448
	lsl	r2, r2, #22
	add	r3, lr, r3
	orreq	r1, r1, #16384
	orrne	r1, r1, #20480
	lsr	r2, r2, #22
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L119:
	ldr	r1, .L141+32
	ldr	r3, [r1, #52]
	cmp	r3, #0
	ble	.L122
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1, #52]
	moveq	r1, #1
	ldreq	r3, .L141+36
	streq	r1, [r3]
.L122:
	mov	r3, #0
	mov	r1, #101
	ldr	ip, .L141+12
	ldr	r0, .L141+8
	str	r3, [r2, #16]
	str	r3, [r2, #12]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2, #20]
	pop	{r4, lr}
	bx	lr
.L125:
	cmp	r2, #0
	ldr	r2, .L141+40
	ldr	r2, [r2]
	orreq	r1, r1, #32768
	orrne	r1, r1, #36864
	cmp	r2, #0
	movne	r2, #164
	strh	r0, [lr, r3]	@ movhi
	add	r3, lr, r3
	strh	r1, [r3, #2]	@ movhi
	ldreq	r1, .L141+24
	ldreq	r2, .L141+44
	ldreq	r1, [r1]
	ldreq	r2, [r2, r1, lsl #2]
	addeq	r2, r2, #32
	lsleq	r2, r2, #22
	lsreq	r2, r2, #22
	strh	r2, [r3, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L142:
	.align	2
.L141:
	.word	player
	.word	bgTwoFrontCMBitmap
	.word	vOff
	.word	hOff
	.word	cheatOn
	.word	shadowOAM
	.word	hikerFrame
	.word	hikerFramesCheat
	.word	health
	.word	gameOver
	.word	isDucking
	.word	hikerFrames
	.size	drawPlayerTwo, .-drawPlayerTwo
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	lr, #512
	mov	r7, #448
	ldr	r1, .L151
	ldr	r2, .L151+4
	ldr	r3, .L151+8
	ldr	r4, [r1]
	ldr	r5, [r2]
	ldr	r0, .L151+12
	ldr	r6, .L151+16
	add	ip, r3, #180
.L148:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #56]	@ zero_extendqisi2
	lsl	r9, r2, #3
	moveq	r2, r9
	strheq	lr, [r0, r2]	@ movhi
	beq	.L145
	ldr	r1, [r3, #16]
	sub	r1, r1, r4
	add	r8, r1, #16
	cmp	r8, #256
	bhi	.L146
	ldr	r8, [r3, #20]
	sub	r8, r8, r5
	add	r10, r8, #16
	cmp	r10, #176
	bhi	.L146
	and	r1, r1, r6
	add	r9, r0, r2, lsl #3
	and	r8, r8, #255
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r9, #2]	@ movhi
	strh	r7, [r9, #4]	@ movhi
	strh	r8, [r0, r2]	@ movhi
.L145:
	add	r3, r3, #60
	cmp	r3, ip
	bne	.L148
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L146:
	strh	lr, [r0, r9]	@ movhi
	b	.L145
.L152:
	.align	2
.L151:
	.word	hOff
	.word	vOff
	.word	snows
	.word	shadowOAM
	.word	511
	.size	drawSnow, .-drawSnow
	.align	2
	.global	resetSnow
	.syntax unified
	.arm
	.fpu softvfp
	.type	resetSnow, %function
resetSnow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L155
	mov	r4, r0
	mov	lr, pc
	bx	r6
	ldr	r3, .L155+4
	smull	r2, r3, r0, r3
	add	r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #7
	ldr	r2, .L155+8
	ldr	r1, .L155+12
	ldr	r2, [r2]
	rsb	r3, r3, r3, lsl #3
	sub	r0, r0, r3, lsl #5
	rsb	r4, r4, r4, lsl #4
	add	r4, r1, r4, lsl #2
	ldr	r3, .L155+16
	add	r0, r0, r2
	str	r0, [r4, #16]
	ldr	r5, [r3]
	mov	lr, pc
	bx	r6
	ldr	r3, .L155+20
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
.L156:
	.align	2
.L155:
	.word	rand
	.word	-1840700269
	.word	hOff
	.word	snows
	.word	vOff
	.word	1717986919
	.size	resetSnow, .-resetSnow
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r0, .L161
	ldr	r3, .L161+4
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r7, #16
	mov	r6, #1
	ldr	r4, .L161+8
.L158:
	add	r3, r5, #120
	mov	r0, r5
	add	r5, r5, #1
	str	r7, [r4, #24]
	str	r7, [r4, #28]
	str	r6, [r4, #52]
	str	r6, [r4, #12]
	strb	r3, [r4, #56]
	bl	resetSnow
	cmp	r5, #3
	add	r4, r4, #60
	bne	.L158
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L162:
	.align	2
.L161:
	.word	1234
	.word	srand
	.word	snows
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
	mov	r5, #0
	ldr	r4, .L172
	ldr	r6, .L172+4
	ldr	r7, .L172+8
	ldr	r9, .L172+12
	ldr	r8, .L172+16
	ldr	r10, .L172+20
	ldr	fp, .L172+24
	sub	sp, sp, #20
.L169:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L165
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
	beq	.L166
	mov	r3, #0
	ldr	r2, [r8, #52]
	sub	r2, r2, #1
	cmp	r2, r3
	mov	r1, #101
	str	r2, [r8, #52]
	moveq	r2, #1
	mov	r0, r5
	streq	r2, [fp]
	str	r3, [r6, #16]
	str	r1, [r6, #20]
	str	r3, [r6, #12]
	str	r3, [r10]
	str	r3, [r9]
	bl	resetSnow
.L165:
	add	r5, r5, #1
	cmp	r5, #3
	add	r4, r4, #60
	bne	.L169
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L166:
	ldr	r3, [r9]
	ldr	r2, [r4, #20]
	add	r3, r3, #160
	cmp	r2, r3
	ble	.L165
	mov	r0, r5
	bl	resetSnow
	b	.L165
.L173:
	.align	2
.L172:
	.word	snows
	.word	player
	.word	collision
	.word	vOff
	.word	health
	.word	hOff
	.word	gameOver
	.size	updateSnow, .-updateSnow
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
	ldr	r3, .L175
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L176:
	.align	2
.L175:
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
