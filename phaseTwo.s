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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	resetSnow, %function
resetSnow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L4
	mov	r4, r0
	mov	lr, pc
	bx	r6
	ldr	r3, .L4+4
	smull	r2, r3, r0, r3
	add	r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #7
	ldr	r2, .L4+8
	ldr	r1, .L4+12
	ldr	r2, [r2]
	rsb	r3, r3, r3, lsl #3
	sub	r0, r0, r3, lsl #5
	rsb	r4, r4, r4, lsl #4
	add	r4, r1, r4, lsl #2
	ldr	r3, .L4+16
	add	r0, r0, r2
	str	r0, [r4, #16]
	ldr	r5, [r3]
	mov	lr, pc
	bx	r6
	ldr	r3, .L4+20
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
.L5:
	.align	2
.L4:
	.word	rand
	.word	-1840700269
	.word	hOff
	.word	snows
	.word	vOff
	.word	1717986919
	.size	resetSnow, .-resetSnow
	.align	2
	.global	initPlayerTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayerTwo, %function
initPlayerTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L8
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
	ldr	ip, .L8+4
	mov	r0, r4
	str	r5, [ip, #4]
	str	r3, [ip, #24]
	str	r2, [ip, #28]
	str	r1, [ip, #16]
	strb	r1, [ip, #56]
	str	r1, [ip, #44]
	str	r1, [ip, #36]
	str	r1, [ip, #12]
	ldr	r5, .L8+8
	mov	r3, #256
	ldr	r2, .L8+12
	ldr	r1, .L8+16
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
	ldr	r2, .L8+20
	ldr	r1, .L8+24
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L9:
	.align	2
.L8:
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
	ldr	r3, .L114
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L114+4
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
	ldr	r8, .L114+8
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
	bne	.L107
.L42:
	mov	r3, lr
	str	r2, [sp]
.L11:
	ands	r1, fp, #16
	bne	.L14
	ldr	r8, [sp]
	rsb	ip, r5, #512
	cmp	ip, r8
	ble	.L14
	mov	r8, #1
	mov	ip, r1
	ldr	r9, [r4, #8]
	str	r1, [r4, #36]
	ldr	r1, [sp, #8]
	str	r8, [r4, #40]
	add	r1, r9, r1
	ldr	r8, .L114+12
	add	r1, r1, r0, lsl #9
	rsb	r0, r0, r0, lsl #23
	lsl	lr, lr, #9
	lsl	r0, r0, #9
	add	r1, r1, r8
.L18:
	add	r8, r1, lr
	ldrb	r8, [r8, r0]	@ zero_extendqisi2
	cmp	r8, #2
	beq	.L17
	ldrb	r8, [r1, #-512]	@ zero_extendqisi2
	cmp	r8, #2
	bne	.L108
.L17:
	add	ip, ip, #1
	cmp	ip, #4
	sub	r1, r1, #512
	bne	.L18
	mov	r1, #1
	str	r1, [sp, #4]
	b	.L16
.L14:
	ldr	r1, [r4, #40]
	str	r1, [sp, #4]
.L16:
	ldr	lr, [r4, #12]
	add	r0, lr, #1
	cmp	r0, #4
	str	r0, [r4, #12]
	ble	.L19
	mov	r0, #4
	str	r0, [r4, #12]
	add	r9, r10, r3
.L20:
	ldr	r1, [sp, #12]
	ldr	ip, .L114+12
	add	r1, r1, r10, lsl #9
	sub	r1, r1, #1
	add	r1, ip, r1
	add	ip, ip, r2
	mov	r2, r9
	cmp	r2, #255
	mov	r10, #0
	bgt	.L34
.L31:
	ldrb	lr, [ip, r2, lsl #9]	@ zero_extendqisi2
	add	r2, r2, #1
	cmp	lr, #2
	sub	r8, r2, r9
	beq	.L34
	ldrb	lr, [r1, r3, lsl #9]	@ zero_extendqisi2
	cmp	lr, #2
	beq	.L34
	cmp	r0, r8
	mov	r10, #1
	add	r3, r3, #1
	ble	.L109
	cmp	r2, #255
	ble	.L31
.L34:
	cmp	r10, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	ldr	r2, .L114+16
	ldrh	r2, [r2]
	tst	r2, #64
	str	r3, [r4, #12]
	beq	.L29
	b	.L104
.L19:
	cmp	r0, #0
	bge	.L110
	mvn	lr, lr
	ldr	r8, .L114+12
	add	ip, r2, r8
	ldr	r2, [sp, #8]
	sub	lr, r3, lr
	add	r8, r8, r2
	mov	r2, #0
	b	.L27
.L23:
	ldrb	r0, [ip, r1, lsl #9]	@ zero_extendqisi2
	cmp	r0, #2
	beq	.L26
	ldrb	r0, [r8, r1, lsl #9]	@ zero_extendqisi2
	cmp	r0, #2
	beq	.L26
	cmp	lr, r1
	mov	r2, #1
	beq	.L111
	mov	r3, r1
.L27:
	cmp	r3, #0
	sub	r1, r3, #1
	bgt	.L23
.L26:
	cmp	r2, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #12]
.L29:
	ldr	r8, .L114+20
	ldr	r2, [sp, #4]
	ldr	r3, [r8]
	cmp	r2, #0
	add	r3, r3, #1
	str	r3, [r8]
	bne	.L112
	ldr	r2, [sp, #4]
	ldr	r3, .L114+24
	str	r2, [r8]
	str	r2, [r3]
.L40:
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
	ldr	r0, .L114+28
	add	r2, r2, ip
	cmp	r2, r0
	movgt	r2, #1
	ldr	r1, .L114+32
	asr	r3, r3, #8
	add	r3, r3, #20
	str	r3, [r1]
	ldrgt	r3, .L114+36
	strgt	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L110:
	add	r9, r10, r3
	bne	.L20
	ldr	r3, .L114+12
	add	ip, r2, r9, lsl #9
	ldrb	r2, [ip, r3]	@ zero_extendqisi2
	cmp	r2, #2
	lsl	r9, r9, #9
	beq	.L106
	ldr	r2, [sp, #8]
	add	r9, r2, r9
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L29
.L106:
	ldr	r3, .L114+16
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L29
.L104:
	tst	fp, #64
	mvneq	r3, #11
	streq	r3, [r4, #12]
	b	.L29
.L112:
	ldr	r2, .L114+40
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L40
	ldr	r9, .L114+24
	ldr	r0, [r9]
	ldr	r3, .L114+44
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r9]
	str	r3, [r8]
	b	.L40
.L107:
	mov	r3, #1
	mov	r1, lr
	ldr	ip, [r4, #8]
	sub	r8, r0, lr
	sub	r9, r2, ip
	add	r8, r9, r8, lsl #9
	ldr	ip, .L114+12
	sub	r8, r8, #512
	str	r3, [r4, #40]
	str	r3, [r4, #36]
	add	r3, ip, r8
	str	r9, [sp]
	str	r3, [sp, #4]
	add	ip, ip, r9
	sub	r8, lr, #4
.L13:
	ldrb	r3, [ip, r1, lsl #9]	@ zero_extendqisi2
	cmp	r3, #2
	mov	r3, r1
	beq	.L12
	ldr	r9, [sp, #4]
	ldrb	r9, [r9, r1, lsl #9]	@ zero_extendqisi2
	cmp	r9, #2
	bne	.L113
.L12:
	sub	r1, r1, #1
	cmp	r8, r1
	bne	.L13
	b	.L42
.L111:
	str	lr, [r4, #20]
	b	.L29
.L109:
	str	r3, [r4, #20]
	b	.L29
.L113:
	ldr	r1, [sp]
	str	r3, [r4, #20]
	str	r1, [r4, #16]
	b	.L11
.L108:
	ldr	r1, [sp]
	add	r1, r1, r9
	str	r1, [sp]
	str	r1, [r4, #16]
	mov	r1, #1
	sub	r3, r3, ip
	str	r3, [r4, #20]
	str	r1, [sp, #4]
	b	.L16
.L115:
	.align	2
.L114:
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
	ldr	r2, .L137
	push	{r4, r5, lr}
	ldr	ip, [r2, #16]
	ldr	r0, [r2, #20]
	ldr	lr, .L137+4
	add	r3, ip, r0, lsl #9
	ldrb	r1, [r3, lr]	@ zero_extendqisi2
	ldr	r3, [r2, #24]
	cmp	r1, #1
	add	r3, ip, r3
	beq	.L117
	sub	r3, r3, #1
	lsl	r1, r0, #9
	add	r1, r3, r1
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	cmp	r1, #1
	beq	.L117
	ldr	r1, [r2, #28]
	add	r1, r0, r1
	sub	r1, r1, #1
	add	r4, ip, r1, lsl #9
	ldrb	r4, [r4, lr]	@ zero_extendqisi2
	cmp	r4, #1
	lsl	r1, r1, #9
	beq	.L117
	add	r3, r3, r1
	ldrb	r3, [r3, lr]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L117
	ldr	r3, [r2, #52]
	cmp	r3, #0
	beq	.L123
	ldr	r3, .L137+8
	ldr	r3, [r3]
	ldr	r5, .L137+12
	ldrb	r1, [r2, #56]	@ zero_extendqisi2
	ldr	lr, [r2, #36]
	sub	r0, r0, r3
	ldr	r4, .L137+16
	ldr	r3, .L137+20
	ldr	r5, [r5]
	and	r0, r0, #255
	lsl	r2, r1, #3
	orr	r0, r0, r4
	cmp	lr, #0
	strh	r0, [r3, r2]	@ movhi
	add	r1, r3, r1, lsl #3
	sub	ip, ip, r5
	bne	.L124
	lsl	ip, ip, #23
	lsr	ip, ip, #23
	orr	ip, ip, r4
	strh	ip, [r1, #2]	@ movhi
.L125:
	ldr	r1, .L137+24
	ldr	r1, [r1]
	cmp	r1, #0
	movne	r1, #164
	ldreq	r0, .L137+28
	ldreq	r1, .L137+32
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
.L117:
	ldr	r1, .L137+36
	ldr	r3, [r1, #52]
	cmp	r3, #0
	ble	.L120
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1, #52]
	moveq	r1, #1
	ldreq	r3, .L137+40
	streq	r1, [r3]
.L120:
	mov	r3, #0
	mov	r1, #101
	ldr	ip, .L137+12
	ldr	r0, .L137+8
	str	r3, [r2, #16]
	str	r3, [r2, #12]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2, #20]
	pop	{r4, r5, lr}
	bx	lr
.L123:
	mov	r2, #1
	ldr	r3, .L137+40
	pop	{r4, r5, lr}
	str	r2, [r3]
	bx	lr
.L124:
	cmp	lr, #1
	lsleq	ip, ip, #23
	lsreq	ip, ip, #23
	orreq	ip, ip, #36864
	strheq	ip, [r1, #2]	@ movhi
	b	.L125
.L138:
	.align	2
.L137:
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
	push	{r4, r5, r6, lr}
	ldr	r0, .L141
	ldr	r3, .L141+4
	mov	lr, pc
	bx	r3
	mov	r5, #1
	mov	r6, #16
	mov	r3, #120
	ldr	r4, .L141+8
	mov	r0, #0
	strb	r3, [r4, #56]
	str	r6, [r4, #24]
	str	r6, [r4, #28]
	str	r5, [r4, #52]
	str	r5, [r4, #12]
	bl	resetSnow
	mov	r3, #121
	mov	r0, r5
	str	r6, [r4, #84]
	str	r6, [r4, #88]
	str	r5, [r4, #112]
	str	r5, [r4, #72]
	strb	r3, [r4, #116]
	pop	{r4, r5, r6, lr}
	b	resetSnow
.L142:
	.align	2
.L141:
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
	mov	r6, #0
	ldr	r4, .L152
	ldr	r5, .L152+4
	ldr	r7, .L152+8
	ldr	r9, .L152+12
	ldr	r8, .L152+16
	ldr	r10, .L152+20
	ldr	fp, .L152+24
	sub	sp, sp, #20
.L149:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L145
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
	beq	.L146
	mov	r3, #0
	ldr	r2, [r8, #52]
	sub	r2, r2, #1
	cmp	r2, r3
	mov	r1, #101
	str	r2, [r8, #52]
	moveq	r2, #1
	mov	r0, r6
	streq	r2, [fp]
	str	r3, [r5, #16]
	str	r1, [r5, #20]
	str	r3, [r5, #12]
	str	r3, [r9]
	str	r3, [r10]
	bl	resetSnow
.L145:
	cmp	r6, #1
	add	r4, r4, #60
	bne	.L150
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L150:
	mov	r6, #1
	b	.L149
.L146:
	ldr	r3, [r9]
	ldr	r2, [r4, #20]
	add	r3, r3, #160
	cmp	r2, r3
	ble	.L145
	mov	r0, r6
	bl	resetSnow
	b	.L145
.L153:
	.align	2
.L152:
	.word	snows
	.word	player
	.word	collision
	.word	vOff
	.word	health
	.word	hOff
	.word	gameOver
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r0, #0
	mov	lr, #512
	mov	r6, #448
	ldr	r3, .L162
	ldr	r2, .L162+4
	ldr	r5, [r3]
	ldr	r4, [r2]
	ldr	r3, .L162+8
	ldr	ip, .L162+12
	ldr	r7, .L162+16
.L159:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #56]	@ zero_extendqisi2
	lsl	r9, r2, #3
	moveq	r2, r9
	strheq	lr, [ip, r2]	@ movhi
	beq	.L156
	ldr	r1, [r3, #16]
	sub	r1, r1, r4
	add	r8, r1, #16
	cmp	r8, #256
	bhi	.L157
	ldr	r8, [r3, #20]
	sub	r8, r8, r5
	add	r10, r8, #16
	cmp	r10, #176
	bls	.L158
.L157:
	strh	lr, [ip, r9]	@ movhi
.L156:
	cmp	r0, #1
	add	r3, r3, #60
	bne	.L160
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L160:
	mov	r0, #1
	b	.L159
.L158:
	and	r1, r1, r7
	add	r9, ip, r2, lsl #3
	and	r8, r8, #255
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r9, #2]	@ movhi
	strh	r6, [r9, #4]	@ movhi
	strh	r8, [ip, r2]	@ movhi
	b	.L156
.L163:
	.align	2
.L162:
	.word	vOff
	.word	hOff
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
	ldr	r3, .L165
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L166:
	.align	2
.L165:
	.word	bgTwoFrontCMBitmap
	.size	colorAtTwo, .-colorAtTwo
	.comm	healthBarFrames,72,4
	.global	winPhaseTwo
	.comm	snows,120,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	winPhaseTwo, %object
	.size	winPhaseTwo, 4
winPhaseTwo:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
