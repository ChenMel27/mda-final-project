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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L110
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L110+4
	ldrh	fp, [r3]
	ldr	r2, [r4, #16]
	lsr	r3, fp, #5
	eor	r3, r3, #1
	cmp	r2, #0
	movle	r3, #0
	andgt	r3, r3, #1
	mov	r9, #0
	mvn	lr, fp
	ldr	r5, [r4, #24]
	sub	sp, sp, #20
	ldr	r8, .L110+8
	ldr	ip, [r4, #20]
	ldr	r10, [r4, #28]
	cmp	r3, r9
	add	r3, r5, r2
	and	lr, lr, #128
	str	r3, [sp, #12]
	sub	r3, r3, #1
	str	lr, [r8]
	mov	r7, r0
	mov	r6, r1
	str	r9, [r4, #40]
	str	r3, [sp, #8]
	add	lr, r10, ip
	bne	.L103
.L38:
	mov	r3, ip
	str	r2, [sp]
.L7:
	ands	r1, fp, #16
	bne	.L10
	ldr	r8, [sp]
	rsb	r0, r5, #512
	cmp	r0, r8
	ble	.L10
	mov	r8, #1
	mov	r0, r1
	ldr	r9, [r4, #8]
	str	r1, [r4, #36]
	ldr	r1, [sp, #8]
	str	r8, [r4, #40]
	add	r1, r9, r1
	ldr	r8, .L110+12
	add	r1, r1, lr, lsl #9
	rsb	lr, lr, lr, lsl #23
	lsl	ip, ip, #9
	lsl	lr, lr, #9
	add	r1, r1, r8
.L14:
	add	r8, r1, ip
	ldrb	r8, [r8, lr]	@ zero_extendqisi2
	cmp	r8, #2
	beq	.L13
	ldrb	r8, [r1, #-512]	@ zero_extendqisi2
	cmp	r8, #2
	bne	.L104
.L13:
	add	r0, r0, #1
	cmp	r0, #4
	sub	r1, r1, #512
	bne	.L14
	mov	r1, #1
	str	r1, [sp, #4]
	b	.L12
.L10:
	ldr	r1, [r4, #40]
	str	r1, [sp, #4]
.L12:
	ldr	lr, [r4, #12]
	add	ip, lr, #1
	cmp	ip, #4
	str	ip, [r4, #12]
	ble	.L15
	mov	ip, #4
	str	ip, [r4, #12]
	add	r9, r10, r3
.L16:
	ldr	r1, [sp, #12]
	ldr	r0, .L110+12
	add	r1, r1, r10, lsl #9
	sub	r1, r1, #1
	add	r1, r0, r1
	add	r0, r0, r2
	mov	r2, r9
	cmp	r2, #255
	mov	r10, #0
	bgt	.L30
.L27:
	ldrb	lr, [r0, r2, lsl #9]	@ zero_extendqisi2
	add	r2, r2, #1
	cmp	lr, #2
	sub	r8, r2, r9
	beq	.L30
	ldrb	lr, [r1, r3, lsl #9]	@ zero_extendqisi2
	cmp	lr, #2
	beq	.L30
	cmp	ip, r8
	mov	r10, #1
	add	r3, r3, #1
	ble	.L105
	cmp	r2, #255
	ble	.L27
.L30:
	cmp	r10, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	ldr	r2, .L110+16
	ldrh	r2, [r2]
	tst	r2, #64
	str	r3, [r4, #12]
	beq	.L25
	b	.L100
.L15:
	cmp	ip, #0
	bge	.L106
	mvn	lr, lr
	ldr	r8, .L110+12
	add	r0, r2, r8
	ldr	r2, [sp, #8]
	sub	lr, r3, lr
	add	r8, r8, r2
	mov	r2, #0
	b	.L23
.L19:
	ldrb	ip, [r0, r1, lsl #9]	@ zero_extendqisi2
	cmp	ip, #2
	beq	.L22
	ldrb	ip, [r8, r1, lsl #9]	@ zero_extendqisi2
	cmp	ip, #2
	beq	.L22
	cmp	lr, r1
	mov	r2, #1
	beq	.L107
	mov	r3, r1
.L23:
	cmp	r3, #0
	sub	r1, r3, #1
	bgt	.L19
.L22:
	cmp	r2, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #12]
.L25:
	ldr	r8, .L110+20
	ldr	r2, [sp, #4]
	ldr	r3, [r8]
	cmp	r2, #0
	add	r3, r3, #1
	str	r3, [r8]
	bne	.L108
	ldr	r2, [sp, #4]
	ldr	r3, .L110+24
	str	r2, [r8]
	str	r2, [r3]
.L36:
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
	ldr	r2, .L110+28
	add	r3, r3, r1
	cmp	r3, r2
	movgt	r2, #1
	ldrgt	r3, .L110+32
	strgt	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L106:
	add	r9, r10, r3
	bne	.L16
	ldr	r3, .L110+12
	add	r0, r2, r9, lsl #9
	ldrb	r2, [r0, r3]	@ zero_extendqisi2
	cmp	r2, #2
	lsl	r9, r9, #9
	beq	.L102
	ldr	r2, [sp, #8]
	add	r9, r2, r9
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L25
.L102:
	ldr	r3, .L110+16
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L25
.L100:
	tst	fp, #64
	mvneq	r3, #11
	streq	r3, [r4, #12]
	b	.L25
.L108:
	ldr	r2, .L110+36
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L36
	ldr	r9, .L110+24
	ldr	r0, [r9]
	ldr	r3, .L110+40
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r9]
	str	r3, [r8]
	b	.L36
.L103:
	mov	r3, #1
	mov	r1, ip
	ldr	r0, [r4, #8]
	sub	r8, lr, ip
	sub	r9, r2, r0
	add	r8, r9, r8, lsl #9
	ldr	r0, .L110+12
	sub	r8, r8, #512
	str	r3, [r4, #40]
	str	r3, [r4, #36]
	add	r3, r0, r8
	str	r9, [sp]
	str	r3, [sp, #4]
	add	r0, r0, r9
	sub	r8, ip, #4
.L9:
	ldrb	r3, [r0, r1, lsl #9]	@ zero_extendqisi2
	cmp	r3, #2
	mov	r3, r1
	beq	.L8
	ldr	r9, [sp, #4]
	ldrb	r9, [r9, r1, lsl #9]	@ zero_extendqisi2
	cmp	r9, #2
	bne	.L109
.L8:
	sub	r1, r1, #1
	cmp	r8, r1
	bne	.L9
	b	.L38
.L107:
	str	lr, [r4, #20]
	b	.L25
.L105:
	str	r3, [r4, #20]
	b	.L25
.L109:
	ldr	r1, [sp]
	str	r3, [r4, #20]
	str	r1, [r4, #16]
	b	.L7
.L104:
	ldr	r1, [sp]
	add	r1, r1, r9
	str	r1, [sp]
	str	r1, [r4, #16]
	mov	r1, #1
	sub	r3, r3, r0
	str	r3, [r4, #20]
	str	r1, [sp, #4]
	b	.L12
.L111:
	.align	2
.L110:
	.word	buttons
	.word	player
	.word	isDucking
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
	ldr	r2, .L133
	push	{r4, r5, lr}
	ldr	ip, [r2, #16]
	ldr	r0, [r2, #20]
	ldr	lr, .L133+4
	add	r3, ip, r0, lsl #9
	ldrb	r1, [r3, lr]	@ zero_extendqisi2
	ldr	r3, [r2, #24]
	cmp	r1, #1
	add	r3, ip, r3
	beq	.L113
	sub	r3, r3, #1
	lsl	r1, r0, #9
	add	r1, r3, r1
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	cmp	r1, #1
	beq	.L113
	ldr	r1, [r2, #28]
	add	r1, r0, r1
	sub	r1, r1, #1
	add	r4, ip, r1, lsl #9
	ldrb	r4, [r4, lr]	@ zero_extendqisi2
	cmp	r4, #1
	lsl	r1, r1, #9
	beq	.L113
	add	r3, r3, r1
	ldrb	r3, [r3, lr]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L113
	ldr	r3, [r2, #52]
	cmp	r3, #0
	beq	.L119
	ldr	r3, .L133+8
	ldr	r3, [r3]
	ldr	r5, .L133+12
	ldrb	r1, [r2, #56]	@ zero_extendqisi2
	ldr	lr, [r2, #36]
	sub	r0, r0, r3
	ldr	r4, .L133+16
	ldr	r3, .L133+20
	ldr	r5, [r5]
	and	r0, r0, #255
	lsl	r2, r1, #3
	orr	r0, r0, r4
	cmp	lr, #0
	strh	r0, [r3, r2]	@ movhi
	add	r1, r3, r1, lsl #3
	sub	ip, ip, r5
	bne	.L120
	lsl	ip, ip, #23
	lsr	ip, ip, #23
	orr	ip, ip, r4
	strh	ip, [r1, #2]	@ movhi
.L121:
	ldr	r1, .L133+24
	ldr	r1, [r1]
	cmp	r1, #0
	movne	r1, #164
	ldreq	r0, .L133+28
	ldreq	r1, .L133+32
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
.L113:
	ldr	r1, .L133+36
	ldr	r3, [r1, #52]
	cmp	r3, #0
	ble	.L116
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1, #52]
	moveq	r1, #1
	ldreq	r3, .L133+40
	streq	r1, [r3]
.L116:
	mov	r3, #0
	mov	r1, #101
	ldr	ip, .L133+12
	ldr	r0, .L133+8
	str	r3, [r2, #16]
	str	r3, [r2, #12]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2, #20]
	pop	{r4, r5, lr}
	bx	lr
.L119:
	mov	r2, #1
	ldr	r3, .L133+40
	pop	{r4, r5, lr}
	str	r2, [r3]
	bx	lr
.L120:
	cmp	lr, #1
	lsleq	ip, ip, #23
	lsreq	ip, ip, #23
	orreq	ip, ip, #36864
	strheq	ip, [r1, #2]	@ movhi
	b	.L121
.L134:
	.align	2
.L133:
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
	ldr	r1, .L143
	ldr	r2, .L143+4
	ldr	r3, .L143+8
	ldr	r4, [r1]
	ldr	r5, [r2]
	ldr	r0, .L143+12
	ldr	r6, .L143+16
	add	ip, r3, #180
.L140:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #56]	@ zero_extendqisi2
	lsl	r9, r2, #3
	moveq	r2, r9
	strheq	lr, [r0, r2]	@ movhi
	beq	.L137
	ldr	r1, [r3, #16]
	sub	r1, r1, r4
	add	r8, r1, #16
	cmp	r8, #256
	bhi	.L138
	ldr	r8, [r3, #20]
	sub	r8, r8, r5
	add	r10, r8, #16
	cmp	r10, #176
	bhi	.L138
	and	r1, r1, r6
	add	r9, r0, r2, lsl #3
	and	r8, r8, #255
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r9, #2]	@ movhi
	strh	r7, [r9, #4]	@ movhi
	strh	r8, [r0, r2]	@ movhi
.L137:
	add	r3, r3, #60
	cmp	r3, ip
	bne	.L140
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L138:
	strh	lr, [r0, r9]	@ movhi
	b	.L137
.L144:
	.align	2
.L143:
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
	ldr	r6, .L147
	mov	r4, r0
	mov	lr, pc
	bx	r6
	ldr	r3, .L147+4
	smull	r2, r3, r0, r3
	add	r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #7
	ldr	r2, .L147+8
	ldr	r1, .L147+12
	ldr	r2, [r2]
	rsb	r3, r3, r3, lsl #3
	sub	r0, r0, r3, lsl #5
	rsb	r4, r4, r4, lsl #4
	add	r4, r1, r4, lsl #2
	ldr	r3, .L147+16
	add	r0, r0, r2
	str	r0, [r4, #16]
	ldr	r5, [r3]
	mov	lr, pc
	bx	r6
	ldr	r3, .L147+20
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
.L148:
	.align	2
.L147:
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
	ldr	r0, .L153
	ldr	r3, .L153+4
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r7, #16
	mov	r6, #1
	ldr	r4, .L153+8
.L150:
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
	bne	.L150
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L154:
	.align	2
.L153:
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
	ldr	r4, .L164
	ldr	r6, .L164+4
	ldr	r7, .L164+8
	ldr	r9, .L164+12
	ldr	r8, .L164+16
	ldr	r10, .L164+20
	ldr	fp, .L164+24
	sub	sp, sp, #20
.L161:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L157
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
	beq	.L158
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
.L157:
	add	r5, r5, #1
	cmp	r5, #3
	add	r4, r4, #60
	bne	.L161
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L158:
	ldr	r3, [r9]
	ldr	r2, [r4, #20]
	add	r3, r3, #160
	cmp	r2, r3
	ble	.L157
	mov	r0, r5
	bl	resetSnow
	b	.L157
.L165:
	.align	2
.L164:
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
	ldr	r3, .L167
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L168:
	.align	2
.L167:
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
