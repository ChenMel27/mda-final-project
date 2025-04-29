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
	ldr	r3, .L102
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L102+4
	ldrh	fp, [r3]
	ldr	r2, [r4, #16]
	lsr	r3, fp, #5
	eor	r3, r3, #1
	cmp	r2, #0
	movle	r3, #0
	andgt	r3, r3, #1
	mov	r9, #0
	mvn	lr, fp
	ldr	r7, [r4, #24]
	sub	sp, sp, #20
	ldr	r8, .L102+8
	ldr	ip, [r4, #20]
	ldr	r10, [r4, #28]
	cmp	r3, r9
	add	r3, r7, r2
	and	lr, lr, #128
	str	r3, [sp, #12]
	sub	r3, r3, #1
	str	lr, [r8]
	mov	r6, r0
	mov	r5, r1
	str	r9, [r4, #40]
	str	r3, [sp, #8]
	add	lr, r10, ip
	bne	.L95
.L37:
	mov	r3, ip
	str	r2, [sp]
.L7:
	ands	r1, fp, #16
	bne	.L10
	ldr	r8, [sp]
	rsb	r0, r7, #512
	cmp	r0, r8
	ble	.L10
	mov	r8, #1
	mov	r0, r1
	ldr	r9, [r4, #8]
	str	r1, [r4, #36]
	ldr	r1, [sp, #8]
	str	r8, [r4, #40]
	add	r1, r9, r1
	ldr	r8, .L102+12
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
	bne	.L96
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
	ldr	r0, .L102+12
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
	ble	.L97
	cmp	r2, #255
	ble	.L27
.L30:
	cmp	r10, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	ldr	r2, .L102+16
	ldrh	r2, [r2]
	tst	r2, #64
	str	r3, [r4, #12]
	beq	.L94
	tst	fp, #64
	lsr	r8, r7, #31
	bne	.L25
.L33:
	mvn	r3, #11
	str	r3, [r4, #12]
.L25:
	ldr	r9, .L102+20
	ldr	r2, [sp, #4]
	ldr	r3, [r9]
	cmp	r2, #0
	add	r3, r3, #1
	str	r3, [r9]
	bne	.L98
	ldr	r2, [sp, #4]
	ldr	r3, .L102+24
	str	r2, [r9]
	str	r2, [r3]
.L35:
	add	r7, r8, r7
	ldr	r3, [sp]
	asr	r7, r7, #1
	rsb	r7, r7, #120
	sub	r7, r3, r7
	str	r7, [r6]
	ldr	r3, [r4, #28]
	add	r3, r3, r3, lsr #31
	ldr	r2, [r4, #20]
	asr	r3, r3, #1
	rsb	r3, r3, #80
	sub	r3, r2, r3
	str	r3, [r5]
	ldr	r3, [r6]
	bic	r3, r3, r3, asr #31
	str	r3, [r6]
	ldr	r3, [r5]
	bic	r3, r3, r3, asr #31
	str	r3, [r5]
	ldr	r3, [r6]
	cmp	r3, #272
	movge	r3, #272
	str	r3, [r6]
	ldr	r3, [r5]
	cmp	r3, #96
	movge	r3, #96
	str	r3, [r5]
	ldr	r3, [r4, #16]
	ldr	r1, [r4, #24]
	ldr	r2, .L102+28
	add	r3, r3, r1
	cmp	r3, r2
	movgt	r2, #1
	ldrgt	r3, .L102+32
	strgt	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L15:
	cmp	ip, #0
	bge	.L99
	mvn	lr, lr
	ldr	r9, .L102+12
	add	r0, r2, r9
	ldr	r2, [sp, #8]
	sub	lr, r3, lr
	add	r9, r9, r2
	mov	r2, #0
	b	.L23
.L19:
	ldrb	ip, [r0, r1, lsl #9]	@ zero_extendqisi2
	cmp	ip, #2
	beq	.L22
	ldrb	ip, [r9, r1, lsl #9]	@ zero_extendqisi2
	cmp	ip, #2
	beq	.L22
	cmp	lr, r1
	mov	r2, #1
	beq	.L100
	mov	r3, r1
.L23:
	cmp	r3, #0
	sub	r1, r3, #1
	bgt	.L19
.L22:
	cmp	r2, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	lsr	r8, r7, #31
	str	r3, [r4, #12]
	b	.L25
.L99:
	add	r9, r10, r3
	bne	.L16
	ldr	r1, .L102+12
	add	r0, r2, r9, lsl #9
	add	r3, r7, r7, lsr #31
	add	r3, r0, r3, asr #1
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
	ldrb	r2, [r0, r1]	@ zero_extendqisi2
	cmp	r2, #2
	cmpne	r3, #2
	moveq	r3, #1
	movne	r3, #0
	ldr	r2, [sp, #8]
	add	r9, r2, r9, lsl #9
	ldrb	r2, [r9, r1]	@ zero_extendqisi2
	cmp	r2, #2
	orreq	r3, r3, #1
	cmp	r3, #0
	lsr	r8, r7, #31
	beq	.L25
	ldr	r3, .L102+16
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L25
	tst	fp, #64
	beq	.L33
	b	.L25
.L98:
	ldr	r2, .L102+36
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L35
	ldr	r10, .L102+24
	ldr	r0, [r10]
	ldr	r3, .L102+40
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r10]
	str	r3, [r9]
	b	.L35
.L95:
	mov	r3, #1
	mov	r1, ip
	ldr	r0, [r4, #8]
	sub	r8, lr, ip
	sub	r9, r2, r0
	add	r8, r9, r8, lsl #9
	ldr	r0, .L102+12
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
	bne	.L101
.L8:
	sub	r1, r1, #1
	cmp	r8, r1
	bne	.L9
	b	.L37
.L97:
	str	r3, [r4, #20]
.L94:
	lsr	r8, r7, #31
	b	.L25
.L100:
	str	lr, [r4, #20]
	lsr	r8, r7, #31
	b	.L25
.L101:
	ldr	r1, [sp]
	str	r3, [r4, #20]
	str	r1, [r4, #16]
	b	.L7
.L96:
	ldr	r1, [sp]
	add	r1, r1, r9
	str	r1, [sp]
	str	r1, [r4, #16]
	mov	r1, #1
	sub	r3, r3, r0
	str	r3, [r4, #20]
	str	r1, [sp, #4]
	b	.L12
.L103:
	.align	2
.L102:
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
	ldr	r2, .L125
	push	{r4, r5, lr}
	ldr	ip, [r2, #16]
	ldr	r0, [r2, #20]
	ldr	lr, .L125+4
	add	r3, ip, r0, lsl #9
	ldrb	r1, [r3, lr]	@ zero_extendqisi2
	ldr	r3, [r2, #24]
	cmp	r1, #1
	add	r3, ip, r3
	beq	.L105
	sub	r3, r3, #1
	lsl	r1, r0, #9
	add	r1, r3, r1
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	cmp	r1, #1
	beq	.L105
	ldr	r1, [r2, #28]
	add	r1, r0, r1
	sub	r1, r1, #1
	add	r4, ip, r1, lsl #9
	ldrb	r4, [r4, lr]	@ zero_extendqisi2
	cmp	r4, #1
	lsl	r1, r1, #9
	beq	.L105
	add	r3, r3, r1
	ldrb	r3, [r3, lr]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L105
	ldr	r3, [r2, #52]
	cmp	r3, #0
	beq	.L111
	ldr	r3, .L125+8
	ldr	r3, [r3]
	ldr	r5, .L125+12
	ldrb	r1, [r2, #56]	@ zero_extendqisi2
	ldr	lr, [r2, #36]
	sub	r0, r0, r3
	ldr	r4, .L125+16
	ldr	r3, .L125+20
	ldr	r5, [r5]
	and	r0, r0, #255
	lsl	r2, r1, #3
	orr	r0, r0, r4
	cmp	lr, #0
	strh	r0, [r3, r2]	@ movhi
	add	r1, r3, r1, lsl #3
	sub	ip, ip, r5
	bne	.L112
	lsl	ip, ip, #23
	lsr	ip, ip, #23
	orr	ip, ip, r4
	strh	ip, [r1, #2]	@ movhi
.L113:
	ldr	r1, .L125+24
	ldr	r1, [r1]
	cmp	r1, #0
	movne	r1, #164
	ldreq	r0, .L125+28
	ldreq	r1, .L125+32
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
.L105:
	ldr	r1, .L125+36
	ldr	r3, [r1, #52]
	cmp	r3, #0
	ble	.L108
	mov	r0, #1
	sub	r3, r3, #1
	cmp	r3, #0
	ldr	ip, .L125+40
	str	r3, [r1, #52]
	ldreq	r3, .L125+44
	str	r0, [ip, #4]
	streq	r0, [r3]
.L108:
	mov	r3, #0
	mov	r1, #101
	ldr	ip, .L125+12
	ldr	r0, .L125+8
	str	r3, [r2, #16]
	str	r3, [r2, #12]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2, #20]
	pop	{r4, r5, lr}
	bx	lr
.L111:
	mov	r2, #1
	ldr	r3, .L125+44
	pop	{r4, r5, lr}
	str	r2, [r3]
	bx	lr
.L112:
	cmp	lr, #1
	lsleq	ip, ip, #23
	lsreq	ip, ip, #23
	orreq	ip, ip, #36864
	strheq	ip, [r1, #2]	@ movhi
	b	.L113
.L126:
	.align	2
.L125:
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
	.word	.LANCHOR0
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
	ldr	r1, .L135
	ldr	r2, .L135+4
	ldr	r3, .L135+8
	ldr	r4, [r1]
	ldr	r5, [r2]
	ldr	r0, .L135+12
	ldr	r6, .L135+16
	add	ip, r3, #180
.L132:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #56]	@ zero_extendqisi2
	lsl	r9, r2, #3
	moveq	r2, r9
	strheq	lr, [r0, r2]	@ movhi
	beq	.L129
	ldr	r1, [r3, #16]
	sub	r1, r1, r4
	add	r8, r1, #16
	cmp	r8, #256
	bhi	.L130
	ldr	r8, [r3, #20]
	sub	r8, r8, r5
	add	r10, r8, #16
	cmp	r10, #176
	bhi	.L130
	and	r1, r1, r6
	add	r9, r0, r2, lsl #3
	and	r8, r8, #255
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r9, #2]	@ movhi
	strh	r7, [r9, #4]	@ movhi
	strh	r8, [r0, r2]	@ movhi
.L129:
	add	r3, r3, #60
	cmp	r3, ip
	bne	.L132
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L130:
	strh	lr, [r0, r9]	@ movhi
	b	.L129
.L136:
	.align	2
.L135:
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
	ldr	r6, .L139
	mov	r4, r0
	mov	lr, pc
	bx	r6
	ldr	r3, .L139+4
	smull	r2, r3, r0, r3
	add	r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #7
	ldr	r2, .L139+8
	ldr	r1, .L139+12
	ldr	r2, [r2]
	rsb	r3, r3, r3, lsl #3
	sub	r0, r0, r3, lsl #5
	rsb	r4, r4, r4, lsl #4
	add	r4, r1, r4, lsl #2
	ldr	r3, .L139+16
	add	r0, r0, r2
	str	r0, [r4, #16]
	ldr	r5, [r3]
	mov	lr, pc
	bx	r6
	ldr	r3, .L139+20
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
.L140:
	.align	2
.L139:
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
	ldr	r0, .L145
	ldr	r3, .L145+4
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r7, #16
	mov	r6, #1
	ldr	r4, .L145+8
.L142:
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
	bne	.L142
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L146:
	.align	2
.L145:
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
	ldr	r4, .L156
	ldr	r6, .L156+4
	ldr	r7, .L156+8
	ldr	r9, .L156+12
	ldr	fp, .L156+16
	ldr	r8, .L156+20
	ldr	r10, .L156+24
	sub	sp, sp, #20
.L153:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L149
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
	beq	.L150
	mov	r3, #0
	mov	r1, #1
	mov	ip, #101
	ldr	r2, [r8, #52]
	sub	r2, r2, #1
	cmp	r2, r3
	str	r2, [r8, #52]
	ldreq	r2, .L156+28
	mov	r0, r5
	str	r1, [fp, #4]
	streq	r1, [r2]
	str	r3, [r6, #16]
	str	ip, [r6, #20]
	str	r3, [r6, #12]
	str	r3, [r10]
	str	r3, [r9]
	bl	resetSnow
.L149:
	add	r5, r5, #1
	cmp	r5, #3
	add	r4, r4, #60
	bne	.L153
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L150:
	ldr	r3, [r9]
	ldr	r2, [r4, #20]
	add	r3, r3, #160
	cmp	r2, r3
	ble	.L149
	mov	r0, r5
	bl	resetSnow
	b	.L149
.L157:
	.align	2
.L156:
	.word	snows
	.word	player
	.word	collision
	.word	vOff
	.word	.LANCHOR0
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
	ldr	r3, .L159
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L160:
	.align	2
.L159:
	.word	bgTwoFrontCMBitmap
	.size	colorAtTwo, .-colorAtTwo
	.comm	soundB,24,4
	.comm	soundA,24,4
	.comm	healthBarFrames,72,4
	.global	playSound
	.global	winPhaseTwo
	.comm	snows,180,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	winPhaseTwo, %object
	.size	winPhaseTwo, 4
winPhaseTwo:
	.space	4
	.type	playSound, %object
	.size	playSound, 4
playSound:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
