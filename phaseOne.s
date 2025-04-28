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
	.file	"phaseOne.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFallingAnimation.part.0, %function
updateFallingAnimation.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #102
	mov	ip, #240
	mov	r3, #0
	mov	r0, #1920
	ldr	r2, .L4
	str	lr, [sp, #-4]!
	str	r1, [r2, #20]
	ldr	r1, .L4+4
	ldr	lr, .L4+8
	str	ip, [r2, #16]
	ldr	ip, .L4+12
	strb	r3, [r1, #4]
	str	r3, [lr]
	str	r3, [r2, #12]
	str	r3, [ip]
	str	r0, [r1]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.word	.LANCHOR0
	.word	hOff
	.word	vOff
	.size	updateFallingAnimation.part.0, .-updateFallingAnimation.part.0
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L10
	ldr	r3, [r3]
	mov	ip, #24
	cmp	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r2, #0
	movne	r9, #12
	moveq	r9, #8
	mov	r0, #1
	mov	r8, #240
	mov	r7, #102
	mov	r6, #112
	mov	r5, #64
	mov	r4, #12
	mov	r3, #5
	mov	lr, #1920
	ldr	r1, .L10+4
	str	ip, [r1, #28]
	ldr	ip, .L10+8
	str	r9, [r1, #8]
	str	r8, [r1, #16]
	str	r7, [r1, #20]
	str	r6, [r1]
	str	r5, [r1, #4]
	str	r4, [r1, #24]
	str	r3, [r1, #48]
	strb	r2, [r1, #56]
	str	r2, [r1, #44]
	str	r2, [r1, #36]
	str	r2, [r1, #12]
	str	r0, [r1, #40]
	str	r0, [r1, #52]
	ldr	r4, .L10+12
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L10+16
	ldr	r1, .L10+20
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L10+24
	ldr	r1, .L10+28
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	cheatOn
	.word	player
	.word	.LANCHOR0
	.word	DMANow
	.word	83886592
	.word	playerPal
	.word	100728832
	.word	playerTiles
	.size	initPlayer, .-initPlayer
	.align	2
	.global	resetPlayerState
	.syntax unified
	.arm
	.fpu softvfp
	.type	resetPlayerState, %function
resetPlayerState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	ip, #4
	mov	r1, #1920
	ldr	r3, .L13
	ldr	r0, .L13+4
	str	r2, [r3, #8]
	str	ip, [r0]
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r1, [r3]
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	resetPlayerState, .-resetPlayerState
	.align	2
	.global	startFallingAnimation
	.syntax unified
	.arm
	.fpu softvfp
	.type	startFallingAnimation, %function
startFallingAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1
	ldr	r3, .L17
	str	lr, [sp, #-4]!
	ldr	ip, .L17+4
	ldr	lr, .L17+8
	strb	r2, [r3, #4]
	str	r0, [lr]
	str	r1, [ip]
	ldr	lr, [sp], #4
	bx	lr
.L18:
	.align	2
.L17:
	.word	.LANCHOR0
	.word	fallingY
	.word	fallingX
	.size	startFallingAnimation, .-startFallingAnimation
	.align	2
	.global	updateFallingAnimation
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFallingAnimation, %function
updateFallingAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L21
	ldr	r3, [r2]
	add	r3, r3, #3
	cmp	r3, #400
	str	r3, [r2]
	bxlt	lr
	b	updateFallingAnimation.part.0
.L22:
	.align	2
.L21:
	.word	fallingY
	.size	updateFallingAnimation, .-updateFallingAnimation
	.align	2
	.global	drawFallingSprite
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFallingSprite, %function
drawFallingSprite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L28
	str	lr, [sp, #-4]!
	ldr	r3, .L28+4
	ldr	r2, .L28+8
	ldr	r0, [r1]
	ldr	r3, [r3]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L28+12
	lsl	r3, r3, #23
	cmp	r0, #0
	ldrb	r2, [r2, #56]	@ zero_extendqisi2
	lsr	r3, r3, #23
	orr	r0, r1, #32768
	beq	.L24
	ldr	r1, .L28+16
	ldr	r1, [r1, #4]
	ldr	lr, .L28+20
	add	r1, r1, #448
	lsl	r1, r1, #22
	orr	r3, r3, #16384
.L27:
	add	ip, lr, r2, lsl #3
	lsr	r1, r1, #22
	lsl	r2, r2, #3
	strh	r0, [lr, r2]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	strh	r1, [ip, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L24:
	ldr	r1, .L28+16
	ldr	r1, [r1, #16]
	ldr	ip, .L28+24
	add	r1, r1, #32
	ldr	lr, .L28+20
	lsl	r1, r1, #22
	orr	r3, r3, ip
	b	.L27
.L29:
	.align	2
.L28:
	.word	cheatOn
	.word	fallingX
	.word	fallingY
	.word	player
	.word	.LANCHOR1
	.word	shadowOAM
	.word	-32768
	.size	drawFallingSprite, .-drawFallingSprite
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	lr, .L66
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L65
	ldr	r1, .L66+4
	ldr	ip, [r1, #16]
	ldr	r4, [r1, #20]
	ldr	r0, .L66+8
	add	r3, ip, r4, lsl #9
	ldrb	r5, [r3, r0]	@ zero_extendqisi2
	ldr	r3, [r1, #24]
	cmp	r5, #5
	add	r3, ip, r3
	sub	r3, r3, #1
	lsl	r2, r4, #9
	beq	.L32
	add	r2, r3, r2
	ldrb	r6, [r2, r0]	@ zero_extendqisi2
	cmp	r6, #5
	beq	.L32
	ldr	r2, [r1, #28]
	add	r2, r4, r2
	sub	r2, r2, #1
	add	r7, ip, r2, lsl #9
	ldrb	r7, [r7, r0]	@ zero_extendqisi2
	cmp	r7, #5
	lsl	r2, r2, #9
	beq	.L32
	add	r2, r3, r2
	ldrb	r0, [r2, r0]	@ zero_extendqisi2
	cmp	r0, #5
	beq	.L32
	cmp	r5, #6
	cmpne	r6, #6
	moveq	r2, #1
	movne	r2, #0
	cmp	r7, #6
	orreq	r2, r2, #1
	cmp	r0, #6
	orreq	r2, r2, #1
	cmp	r2, #0
	beq	.L38
	ldr	r2, .L66+12
	ldr	r3, [r2, #52]
	cmp	r3, #0
	ble	.L30
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2, #52]
	moveq	r3, #1
	streq	r3, [lr, #20]
	ldr	r3, .L66+16
	ldr	r3, [r3]
	cmp	r3, #0
	mov	ip, #1
	movne	r0, #114
	moveq	r0, #110
.L64:
	mov	r2, #332
	ldr	r1, .L66+20
	ldr	r3, .L66+24
	strb	ip, [lr, #4]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L32:
	ldr	r2, .L66+12
	ldr	r3, [r2, #52]
	cmp	r3, #0
	ble	.L35
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2, #52]
	moveq	r3, #1
	streq	r3, [lr, #20]
.L35:
	mov	r0, #240
	mov	r2, #102
	mov	r3, #0
	mov	ip, #1920
	str	r0, [r1, #16]
	str	r2, [r1, #20]
	ldr	r0, .L66+28
	ldr	r2, .L66+32
	str	ip, [lr]
	str	r3, [r1, #12]
	str	r3, [r0]
	str	r3, [r2]
.L30:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L38:
	cmp	r5, #7
	cmpne	r6, #7
	moveq	r3, #1
	movne	r3, #0
	cmp	r7, #7
	orreq	r3, r3, #1
	cmp	r0, #7
	orreq	r3, r3, #1
	cmp	r3, #0
	beq	.L41
	ldr	r2, .L66+12
	ldr	r3, [r2, #52]
	cmp	r3, #0
	ble	.L30
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2, #52]
	moveq	r3, #1
	streq	r3, [lr, #20]
	ldr	r3, .L66+16
	ldr	r3, [r3]
	cmp	r3, #0
	mov	ip, #1
	movne	r0, #129
	moveq	r0, #125
	b	.L64
.L65:
	pop	{r4, r5, r6, r7, lr}
	b	drawFallingSprite
.L41:
	cmp	r5, #8
	cmpne	r6, #8
	moveq	r3, #1
	movne	r3, #0
	cmp	r7, #8
	orreq	r3, r3, #1
	cmp	r0, #8
	orreq	r3, r3, #1
	cmp	r3, #0
	beq	.L44
	ldr	r2, .L66+12
	ldr	r3, [r2, #52]
	cmp	r3, #0
	ble	.L30
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2, #52]
	moveq	r3, #1
	streq	r3, [lr, #20]
	ldr	r3, .L66+16
	ldr	r3, [r3]
	cmp	r3, #0
	mov	ip, #1
	movne	r0, #187
	moveq	r0, #183
	b	.L64
.L44:
	ldr	r2, .L66+28
	ldr	r3, .L66+32
	ldr	r0, [r2]
	ldr	r2, .L66+16
	ldr	r3, [r3]
	ldr	r2, [r2]
	sub	r3, r4, r3
	sub	ip, ip, r0
	ldrb	r0, [r1, #56]	@ zero_extendqisi2
	and	r3, r3, #255
	lsl	ip, ip, #23
	cmp	r2, #0
	ldr	r4, [r1, #36]
	ldr	r2, .L66+36
	orr	r3, r3, #32768
	lsr	ip, ip, #23
	lsl	r1, r0, #3
	beq	.L47
	strh	r3, [r2, r1]	@ movhi
	ldr	r3, [lr, #16]
	cmp	r4, #0
	orreq	ip, ip, #16384
	orrne	ip, ip, #20480
	cmp	r3, #0
	ldreq	r3, .L66+40
	add	r2, r2, r1
	ldreq	r1, [lr, #12]
	addeq	r3, r3, r1, lsl #2
	ldreq	r3, [r3, #4]
	addeq	r3, r3, #448
	lsleq	r3, r3, #22
	ldrne	r3, .L66+44
	lsreq	r3, r3, #22
	strh	ip, [r2, #2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	b	.L30
.L47:
	strh	r3, [r2, r1]	@ movhi
	ldr	r3, [lr, #16]
	cmp	r4, #0
	orreq	ip, ip, #32768
	orrne	ip, ip, #36864
	cmp	r3, #0
	movne	r3, #164
	ldreq	r3, .L66+40
	add	r2, r2, r1
	ldreq	r1, [lr, #12]
	addeq	r3, r3, r1, lsl #2
	ldreq	r3, [r3, #16]
	addeq	r3, r3, #32
	lsleq	r3, r3, #22
	lsreq	r3, r3, #22
	strh	ip, [r2, #2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	b	.L30
.L67:
	.align	2
.L66:
	.word	.LANCHOR0
	.word	player
	.word	bgOneFrontCMBitmap
	.word	health
	.word	cheatOn
	.word	fallingX
	.word	fallingY
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	.LANCHOR1
	.word	499
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	resetPlayerAfterFall
	.syntax unified
	.arm
	.fpu softvfp
	.type	resetPlayerAfterFall, %function
resetPlayerAfterFall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #102
	mov	ip, #240
	mov	r3, #0
	mov	r0, #1920
	ldr	r2, .L70
	str	lr, [sp, #-4]!
	str	r1, [r2, #20]
	ldr	r1, .L70+4
	ldr	lr, .L70+8
	str	ip, [r2, #16]
	ldr	ip, .L70+12
	strb	r3, [r1, #4]
	str	r3, [lr]
	str	r3, [r2, #12]
	str	r3, [ip]
	str	r0, [r1]
	ldr	lr, [sp], #4
	bx	lr
.L71:
	.align	2
.L70:
	.word	player
	.word	.LANCHOR0
	.word	hOff
	.word	vOff
	.size	resetPlayerAfterFall, .-resetPlayerAfterFall
	.align	2
	.global	cyclePaletteColors
	.syntax unified
	.arm
	.fpu softvfp
	.type	cyclePaletteColors, %function
cyclePaletteColors:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L74
	mov	lr, pc
	bx	r6
	mov	r5, r0
	mov	lr, pc
	bx	r6
	mov	r4, r0
	mov	lr, pc
	bx	r6
	lsl	r4, r4, #3
	lsl	r3, r0, #6
	and	r4, r4, #992
	and	r3, r3, #31744
	orr	r3, r3, r4
	and	r0, r5, #31
	ldr	r2, .L74+4
	orr	r0, r3, r0
	strh	r0, [r2, #6]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L75:
	.align	2
.L74:
	.word	rand
	.word	83886592
	.size	cyclePaletteColors, .-cyclePaletteColors
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L194
	ldrb	r3, [r5, #4]	@ zero_extendqisi2
	cmp	r3, #1
	sub	sp, sp, #20
	beq	.L184
	ldr	r4, .L194+4
	ldr	r3, [r4]
	cmp	r3, #0
	mov	r6, r0
	mov	r7, r1
	bne	.L185
	ldr	r2, .L194+8
	ldrh	r2, [r2]
	str	r2, [sp, #4]
	mvn	r2, r2
	ldr	r4, .L194+12
	and	r2, r2, #128
	str	r2, [r5, #16]
	str	r3, [r4, #40]
	ldr	fp, [r4, #16]
	ldr	r1, [r4, #20]
.L82:
	add	r2, r4, #24
	ldm	r2, {r2, r10}
	add	r9, r10, r1
	sub	r8, r9, #1
	mov	r9, #8
	add	r3, r2, r2, lsr #31
	asr	r3, r3, #1
	rsb	r3, r3, #120
	str	r3, [sp, #12]
.L114:
	ldr	r3, [sp, #4]
	lsr	r3, r3, #5
	eor	r3, r3, #1
	cmp	fp, #0
	movle	r3, #0
	andgt	r3, r3, #1
	cmp	r3, #0
	moveq	r3, r1
	bne	.L186
.L83:
	ldr	r0, [sp, #4]
	ands	ip, r0, #16
	bne	.L86
	rsb	r0, r2, #512
	cmp	r0, fp
	bgt	.L87
.L86:
	ldr	r1, [r4, #40]
	str	r1, [sp, #8]
.L88:
	ldr	ip, [r4, #12]
	add	r1, ip, #1
	cmp	r1, #4
	str	r1, [r4, #12]
	ble	.L91
	mov	r1, #4
	str	r1, [r4, #12]
	add	r0, r10, r3
.L92:
	add	r2, r2, fp
	ldr	r9, .L194+16
	add	r2, r2, r10, lsl #9
	sub	r2, r2, #1
	add	r2, r9, r2
	mov	ip, r0
	mov	r10, #0
	add	r9, r9, fp
	b	.L107
.L103:
	ldrb	lr, [r9, ip, lsl #9]	@ zero_extendqisi2
	add	ip, ip, #1
	cmp	lr, #4
	sub	r8, ip, r0
	beq	.L106
	ldrb	lr, [r2, r3, lsl #9]	@ zero_extendqisi2
	cmp	lr, #4
	beq	.L106
	cmp	r1, r8
	mov	r10, #1
	add	r3, r3, #1
	ble	.L187
.L107:
	cmp	ip, #255
	ble	.L103
.L106:
	cmp	r10, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	ldr	r2, .L194+20
	ldrh	r2, [r2]
	tst	r2, #64
	str	r3, [r4, #12]
	beq	.L101
	b	.L181
.L185:
	ldr	r3, [r5, #24]
	add	r3, r3, #1
	ands	r8, r3, #3
	str	r3, [r5, #24]
	beq	.L188
	ldr	r3, .L194+8
	ldrh	r3, [r3]
	str	r3, [sp, #4]
	mvn	r3, r3
	mov	r2, #0
	ldr	r4, .L194+12
	and	r3, r3, #128
	str	r3, [r5, #16]
	str	r2, [r4, #40]
	ldr	fp, [r4, #16]
	ldr	r1, [r4, #20]
.L115:
	mov	r0, #16
	mov	r3, #6
	mov	ip, #3
	mov	lr, #117
	mov	r10, r0
	mov	r2, r3
	mov	r9, #12
	str	lr, [sp, #12]
	str	r0, [r4, #28]
	str	r3, [r4, #24]
	str	ip, [r4, #48]
	add	r8, r1, #15
	b	.L114
.L91:
	cmp	r1, #0
	bge	.L189
	mvn	ip, ip
	ldr	lr, .L194+16
	add	r2, r2, fp
	sub	r2, r2, #1
	add	r2, r2, lr
	mov	r8, #0
	sub	ip, r3, ip
	add	lr, lr, fp
	b	.L99
.L95:
	ldrb	r0, [lr, r1, lsl #9]	@ zero_extendqisi2
	cmp	r0, #4
	beq	.L98
	ldrb	r0, [r2, r1, lsl #9]	@ zero_extendqisi2
	cmp	r0, #4
	beq	.L98
	cmp	r1, ip
	mov	r8, #1
	beq	.L190
	mov	r3, r1
.L99:
	cmp	r3, #0
	sub	r1, r3, #1
	bgt	.L95
.L98:
	cmp	r8, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #12]
.L101:
	ldr	r3, [r5, #8]
	ldr	r2, [sp, #8]
	add	r3, r3, #1
	cmp	r2, #0
	str	r3, [r5, #8]
	bne	.L191
	ldr	r3, [sp, #8]
	str	r3, [r5, #12]
	str	r3, [r5, #8]
.L112:
	ldr	r3, [sp, #12]
	sub	r3, fp, r3
	str	r3, [r6]
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
	ldr	r2, .L194+24
	add	r3, r3, r1
	cmp	r3, r2
	movgt	r3, #1
	strgt	r3, [r5, #32]
.L76:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L191:
	ldr	r2, .L194+28
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L112
	ldr	r0, [r5, #12]
	ldr	r3, .L194+32
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r5, #12]
	str	r3, [r5, #8]
	b	.L112
.L189:
	add	r0, r10, r3
	bne	.L92
	ldr	r3, .L194+16
	add	r1, fp, r0, lsl #9
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	cmp	r1, #4
	lsl	r0, r0, #9
	beq	.L183
	add	r2, r0, r2
	add	r2, r2, fp
	sub	r3, r3, #1
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L101
.L183:
	ldr	r3, .L194+20
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L101
.L181:
	ldr	r3, [sp, #4]
	tst	r3, #64
	mvneq	r3, #11
	streq	r3, [r4, #12]
	b	.L101
.L186:
	ldr	lr, [r5]
	sub	lr, lr, r9
	asr	fp, lr, #3
	ldr	r3, .L194+16
	mov	ip, #1
	str	lr, [r5]
	add	lr, fp, r8, lsl #9
	add	r3, lr, r3
	lsl	lr, r1, #9
	str	r2, [sp, #8]
	mov	r0, #0
	mov	r2, lr
	str	ip, [r4, #36]
	str	ip, [r4, #40]
	str	fp, [r4, #16]
	rsb	ip, r8, r8, lsl #23
	lsl	ip, ip, #9
.L85:
	add	lr, r2, r3
	ldrb	lr, [lr, ip]	@ zero_extendqisi2
	cmp	lr, #4
	beq	.L84
	ldrb	lr, [r3]	@ zero_extendqisi2
	cmp	lr, #4
	bne	.L192
.L84:
	add	r0, r0, #1
	cmp	r0, #4
	sub	r3, r3, #512
	bne	.L85
	mov	r3, r1
	ldr	r2, [sp, #8]
	b	.L83
.L184:
	ldr	r2, .L194+36
	ldr	r3, [r2]
	add	r3, r3, #3
	cmp	r3, #400
	str	r3, [r2]
	blt	.L76
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	updateFallingAnimation.part.0
.L87:
	ldr	lr, [r5]
	add	r9, r9, lr
	asr	fp, r9, #3
	str	r9, [r5]
	mov	r9, #1
	add	lr, fp, r2
	mov	r0, ip
	str	ip, [r4, #36]
	rsb	ip, r1, r1, lsl #23
	add	r1, lr, r1, lsl #9
	ldr	lr, .L194+16
	lsl	ip, ip, #9
	str	fp, [r4, #16]
	str	r9, [r4, #40]
	sub	ip, ip, #1
	lsl	r9, r8, #9
	add	r1, r1, lr
.L90:
	ldrb	lr, [r1, #-1]	@ zero_extendqisi2
	cmp	lr, #4
	add	r8, r9, r1
	beq	.L89
	ldrb	lr, [r8, ip]	@ zero_extendqisi2
	cmp	lr, #4
	bne	.L193
.L89:
	add	r0, r0, #1
	cmp	r0, #4
	sub	r1, r1, #512
	bne	.L90
	mov	r1, #1
	str	r1, [sp, #8]
	b	.L88
.L188:
	bl	cyclePaletteColors
	ldr	r3, .L194+8
	ldrh	r3, [r3]
	str	r3, [sp, #4]
	mvn	r3, r3
	ldr	r2, [r4]
	ldr	r4, .L194+12
	and	r3, r3, #128
	cmp	r2, #0
	str	r3, [r5, #16]
	str	r8, [r4, #40]
	ldr	fp, [r4, #16]
	ldr	r1, [r4, #20]
	bne	.L115
	b	.L82
.L190:
	str	ip, [r4, #20]
	b	.L101
.L187:
	str	r3, [r4, #20]
	b	.L101
.L192:
	cmp	r0, #1
	movge	r3, r0
	movlt	r3, #1
	mov	ip, #1
	sub	r3, r3, #1
	sub	r3, r1, r3
	ldr	r2, [sp, #8]
	str	r3, [r4, #20]
	str	ip, [r5, #28]
	b	.L83
.L193:
	mov	r1, #1
	sub	r3, r3, r0
	str	r3, [r4, #20]
	str	r1, [r5, #28]
	str	r1, [sp, #8]
	b	.L88
.L195:
	.align	2
.L194:
	.word	.LANCHOR0
	.word	cheatOn
	.word	buttons
	.word	player
	.word	bgOneFrontCMBitmap
	.word	oldButtons
	.word	510
	.word	.LANCHOR1
	.word	__aeabi_idivmod
	.word	fallingY
	.size	updatePlayer, .-updatePlayer
	.global	playerState
	.comm	player,60,4
	.global	hikerFramesCheat
	.global	playerSubPixelX
	.global	fallSpeed
	.comm	fallingY,4,4
	.comm	fallingX,4,4
	.global	movedHorizontally
	.global	winPhaseOne
	.global	gameOver
	.global	isDucking
	.global	hikerFrames
	.global	hikerFrame
	.global	hikerFrameCounter
	.global	hikerFrameDelay
	.section	.rodata
	.align	2
	.type	fallSpeed, %object
	.size	fallSpeed, 4
fallSpeed:
	.word	3
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	hikerFrameDelay, %object
	.size	hikerFrameDelay, 4
hikerFrameDelay:
	.word	4
	.type	hikerFramesCheat, %object
	.size	hikerFramesCheat, 12
hikerFramesCheat:
	.word	13
	.word	14
	.word	15
	.type	hikerFrames, %object
	.size	hikerFrames, 20
hikerFrames:
	.word	24
	.word	26
	.word	28
	.word	20
	.word	22
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	playerSubPixelX, %object
	.size	playerSubPixelX, 4
playerSubPixelX:
	.space	4
	.type	playerState, %object
	.size	playerState, 1
playerState:
	.space	1
	.space	3
	.type	hikerFrameCounter, %object
	.size	hikerFrameCounter, 4
hikerFrameCounter:
	.space	4
	.type	hikerFrame, %object
	.size	hikerFrame, 4
hikerFrame:
	.space	4
	.type	isDucking, %object
	.size	isDucking, 4
isDucking:
	.space	4
	.type	gameOver, %object
	.size	gameOver, 4
gameOver:
	.space	4
	.type	colorCycleTimer.4113, %object
	.size	colorCycleTimer.4113, 4
colorCycleTimer.4113:
	.space	4
	.type	movedHorizontally, %object
	.size	movedHorizontally, 4
movedHorizontally:
	.space	4
	.type	winPhaseOne, %object
	.size	winPhaseOne, 4
winPhaseOne:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
