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
	mov	r2, #24
	mov	lr, #1
	mov	r7, #102
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
	mvn	ip, fp
	ldr	r5, [r4, #24]
	sub	sp, sp, #20
	ldr	r8, .L110+8
	ldr	lr, [r4, #20]
	ldr	r10, [r4, #28]
	cmp	r3, r9
	add	r3, r5, r2
	str	r3, [sp, #12]
	and	ip, ip, #128
	sub	r3, r3, #1
	mov	r6, r0
	mov	r7, r1
	str	r9, [r4, #40]
	str	ip, [r8]
	str	r3, [sp, #8]
	add	r0, r10, lr
	bne	.L103
.L38:
	mov	r3, lr
	str	r2, [sp]
.L7:
	ands	r1, fp, #16
	bne	.L10
	ldr	r8, [sp]
	rsb	ip, r5, #512
	cmp	ip, r8
	ble	.L10
	mov	r8, #1
	mov	ip, r1
	ldr	r9, [r4, #8]
	str	r1, [r4, #36]
	ldr	r1, [sp, #8]
	str	r8, [r4, #40]
	add	r1, r9, r1
	ldr	r8, .L110+12
	add	r1, r1, r0, lsl #9
	rsb	r0, r0, r0, lsl #23
	lsl	lr, lr, #9
	lsl	r0, r0, #9
	add	r1, r1, r8
.L14:
	add	r8, r1, lr
	ldrb	r8, [r8, r0]	@ zero_extendqisi2
	cmp	r8, #2
	beq	.L13
	ldrb	r8, [r1, #-512]	@ zero_extendqisi2
	cmp	r8, #2
	bne	.L104
.L13:
	add	ip, ip, #1
	cmp	ip, #4
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
	add	r0, lr, #1
	cmp	r0, #4
	str	r0, [r4, #12]
	ble	.L15
	mov	r0, #4
	str	r0, [r4, #12]
	add	r9, r10, r3
.L16:
	ldr	r1, [sp, #12]
	ldr	ip, .L110+12
	add	r1, r1, r10, lsl #9
	sub	r1, r1, #1
	add	r1, ip, r1
	add	ip, ip, r2
	mov	r2, r9
	cmp	r2, #255
	mov	r10, #0
	bgt	.L30
.L27:
	ldrb	lr, [ip, r2, lsl #9]	@ zero_extendqisi2
	add	r2, r2, #1
	cmp	lr, #2
	sub	r8, r2, r9
	beq	.L30
	ldrb	lr, [r1, r3, lsl #9]	@ zero_extendqisi2
	cmp	lr, #2
	beq	.L30
	cmp	r0, r8
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
	cmp	r0, #0
	bge	.L106
	mvn	lr, lr
	ldr	r8, .L110+12
	add	ip, r2, r8
	ldr	r2, [sp, #8]
	sub	lr, r3, lr
	add	r8, r8, r2
	mov	r2, #0
	b	.L23
.L19:
	ldrb	r0, [ip, r1, lsl #9]	@ zero_extendqisi2
	cmp	r0, #2
	beq	.L22
	ldrb	r0, [r8, r1, lsl #9]	@ zero_extendqisi2
	cmp	r0, #2
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
	ldr	r0, .L110+28
	add	r2, r2, ip
	cmp	r2, r0
	movgt	r2, #1
	ldr	r1, .L110+32
	asr	r3, r3, #8
	add	r3, r3, #20
	str	r3, [r1]
	ldrgt	r3, .L110+36
	strgt	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L106:
	add	r9, r10, r3
	bne	.L16
	ldr	r3, .L110+12
	add	ip, r2, r9, lsl #9
	ldrb	r2, [ip, r3]	@ zero_extendqisi2
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
	ldr	r2, .L110+40
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L36
	ldr	r9, .L110+24
	ldr	r0, [r9]
	ldr	r3, .L110+44
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
	mov	r1, lr
	ldr	ip, [r4, #8]
	sub	r8, r0, lr
	sub	r9, r2, ip
	add	r8, r9, r8, lsl #9
	ldr	ip, .L110+12
	sub	r8, r8, #512
	str	r3, [r4, #40]
	str	r3, [r4, #36]
	add	r3, ip, r8
	str	r9, [sp]
	str	r3, [sp, #4]
	add	ip, ip, r9
	sub	r8, lr, #4
.L9:
	ldrb	r3, [ip, r1, lsl #9]	@ zero_extendqisi2
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
	sub	r3, r3, ip
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
	ldr	r4, .L139
	ldr	r5, .L139+4
	ldr	r7, .L139+8
	ldr	r6, .L139+12
.L136:
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
	mov	r2, #1
	smull	r3, r1, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	add	r1, r8, r2
	strb	r8, [r4, #56]
	sub	r0, r0, r3, lsl r2
	and	r8, r1, #255
	sub	r0, r0, #10
	cmp	r8, #126
	str	r9, [r4, #24]
	str	r9, [r4, #28]
	str	r0, [r4, #20]
	str	r2, [r4, #52]
	str	r2, [r4, #12]
	add	r4, r4, #60
	bne	.L136
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L140:
	.align	2
.L139:
	.word	snows
	.word	rand
	.word	-2078209981
	.word	1717986919
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
	ldr	r4, .L157
	ldr	r5, .L157+4
	ldr	r8, .L157+8
	ldr	r7, .L157+12
	ldr	r10, .L157+16
	ldr	r9, .L157+20
	ldr	fp, .L157+24
	sub	sp, sp, #20
	add	r6, r4, #360
	b	.L149
.L143:
	add	r4, r4, #60
	cmp	r4, r6
	beq	.L155
.L149:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L143
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
	bx	r8
	cmp	r0, #0
	bne	.L156
.L144:
	ldr	r3, [r4, #20]
	cmp	r3, #256
	ble	.L143
	mov	lr, pc
	bx	r7
	smull	r3, r2, r10, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #1
	sub	r0, r0, #10
	str	r0, [r4, #20]
	mov	lr, pc
	bx	r7
	smull	r3, r2, r9, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #8
	rsb	r3, r3, r3, lsl #5
	sub	r0, r0, r3, lsl #4
	str	r0, [r4, #16]
	add	r4, r4, #60
	cmp	r4, r6
	bne	.L149
.L155:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L156:
	mov	lr, pc
	bx	r7
	smull	r3, r2, r10, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #1
	sub	r0, r0, #10
	str	r0, [r4, #20]
	mov	lr, pc
	bx	r7
	smull	r3, r2, r9, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #8
	mov	r2, #0
	ldr	r1, [fp, #52]
	rsb	r3, r3, r3, lsl #5
	sub	r0, r0, r3, lsl #4
	cmp	r1, r2
	mov	lr, #101
	str	r0, [r4, #16]
	sub	ip, r1, #1
	ble	.L146
	cmp	ip, r2
	moveq	r1, #1
	ldreq	r3, .L157+28
	str	ip, [fp, #52]
	streq	r1, [r3]
.L146:
	ldr	r1, .L157+32
	ldr	r3, .L157+36
	str	r2, [r5, #16]
	str	lr, [r5, #20]
	str	r2, [r5, #12]
	str	r2, [r1]
	str	r2, [r3]
	b	.L144
.L158:
	.align	2
.L157:
	.word	snows
	.word	player
	.word	collision
	.word	rand
	.word	1717986919
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
	ldr	r1, .L167
	ldr	r2, .L167+4
	ldr	r3, .L167+8
	ldr	r5, [r1]
	ldr	r4, [r2]
	ldr	ip, .L167+12
	ldr	lr, .L167+16
	add	r0, r3, #360
.L161:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	beq	.L160
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
.L160:
	add	r3, r3, #60
	cmp	r3, r0
	bne	.L161
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L168:
	.align	2
.L167:
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
	ldr	r3, .L170
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L171:
	.align	2
.L170:
	.word	bgTwoFrontCMBitmap
	.size	colorAtTwo, .-colorAtTwo
	.comm	healthBarFrames,72,4
	.global	winPhaseTwo
	.comm	snows,360,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	winPhaseTwo, %object
	.size	winPhaseTwo, 4
winPhaseTwo:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
