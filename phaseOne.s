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
	mov	r3, #0
	mov	r0, #102
	ldr	r1, .L4
	str	lr, [sp, #-4]!
	ldr	r2, .L4+4
	ldr	lr, .L4+8
	ldr	ip, .L4+12
	strb	r3, [r1, #4]
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r2, #16]
	str	r3, [r2, #12]
	str	r0, [r2, #20]
	str	r3, [r1]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.word	player
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
	mov	r0, #12
	ldr	r3, [r3]
	push	{r4, r5, r6, r7, r8, lr}
	mov	r1, #0
	cmp	r3, #0
	mov	r4, #64
	mov	r3, #24
	mov	r2, #5
	mov	lr, #1
	movne	r7, #12
	moveq	r7, #8
	mov	r6, #102
	mov	r5, #112
	ldr	ip, .L10+4
	str	r0, [ip, #24]
	ldr	r0, .L10+8
	str	r4, [ip, #4]
	str	r3, [ip, #28]
	str	r2, [ip, #48]
	str	r1, [ip, #16]
	strb	r1, [ip, #56]
	str	r1, [ip, #44]
	str	r1, [ip, #36]
	str	r1, [ip, #12]
	str	r1, [r0]
	ldr	r4, .L10+12
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L10+16
	ldr	r1, .L10+20
	str	r7, [ip, #8]
	str	r6, [ip, #20]
	str	r5, [ip]
	str	lr, [ip, #40]
	str	lr, [ip, #52]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L10+24
	ldr	r1, .L10+28
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
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
	ldr	r7, .L123
	ldrb	r3, [r7, #4]	@ zero_extendqisi2
	cmp	r3, #1
	sub	sp, sp, #20
	beq	.L114
	ldr	r3, .L123+4
	ldrh	r3, [r3]
	mov	r2, #0
	str	r3, [sp, #4]
	mvn	r3, r3
	mov	r6, r1
	ldr	r1, .L123+8
	ldr	r1, [r1]
	ldr	r4, .L123+12
	and	r3, r3, #128
	cmp	r1, r2
	mov	r5, r0
	str	r3, [r7, #8]
	str	r2, [r4, #40]
	ldr	fp, [r4, #16]
	ldr	r1, [r4, #20]
	bne	.L115
	add	r2, r4, #24
	ldm	r2, {r2, r10}
	add	r3, r2, r2, lsr #31
	asr	r3, r3, #1
	add	r9, r10, r1
	rsb	r3, r3, #120
	str	r3, [sp, #12]
	sub	r3, r9, #1
	mov	r9, #8
	str	r3, [sp, #8]
.L48:
	ldr	r3, [sp, #4]
	lsr	r3, r3, #5
	eor	r3, r3, #1
	cmp	fp, #0
	movle	r3, #0
	andgt	r3, r3, #1
	cmp	r3, #0
	bne	.L116
.L49:
	mov	r3, r1
.L17:
	ldr	r0, [sp, #4]
	ands	ip, r0, #16
	bne	.L20
	rsb	r0, r2, #512
	cmp	r0, fp
	bgt	.L21
.L20:
	ldr	r1, [r4, #40]
	str	r1, [sp, #8]
.L22:
	ldr	ip, [r4, #12]
	add	r1, ip, #1
	cmp	r1, #4
	str	r1, [r4, #12]
	ble	.L25
	mov	r1, #4
	str	r1, [r4, #12]
	add	r0, r10, r3
.L26:
	add	r2, r2, fp
	ldr	r9, .L123+16
	add	r2, r2, r10, lsl #9
	sub	r2, r2, #1
	add	r2, r9, r2
	mov	ip, r0
	mov	r10, #0
	add	r9, r9, fp
	b	.L41
.L37:
	ldrb	lr, [r9, ip, lsl #9]	@ zero_extendqisi2
	add	ip, ip, #1
	cmp	lr, #4
	sub	r8, ip, r0
	beq	.L40
	ldrb	lr, [r2, r3, lsl #9]	@ zero_extendqisi2
	cmp	lr, #4
	beq	.L40
	cmp	r1, r8
	mov	r10, #1
	add	r3, r3, #1
	ble	.L117
.L41:
	cmp	ip, #255
	ble	.L37
.L40:
	cmp	r10, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	ldr	r2, .L123+20
	ldrh	r2, [r2]
	tst	r2, #64
	str	r3, [r4, #12]
	beq	.L35
	b	.L111
.L115:
	mov	r3, #6
	mov	r0, #16
	mov	ip, #3
	mov	lr, #117
	mov	r2, r3
	str	r3, [r4, #24]
	add	r3, r1, #15
	mov	r10, r0
	mov	r9, #12
	str	lr, [sp, #12]
	str	r0, [r4, #28]
	str	ip, [r4, #48]
	str	r3, [sp, #8]
	b	.L48
.L25:
	cmp	r1, #0
	bge	.L118
	mvn	ip, ip
	ldr	lr, .L123+16
	add	r2, r2, fp
	sub	r2, r2, #1
	add	r2, r2, lr
	mov	r8, #0
	sub	ip, r3, ip
	add	lr, lr, fp
	b	.L33
.L29:
	ldrb	r0, [lr, r1, lsl #9]	@ zero_extendqisi2
	cmp	r0, #4
	beq	.L32
	ldrb	r0, [r2, r1, lsl #9]	@ zero_extendqisi2
	cmp	r0, #4
	beq	.L32
	cmp	r1, ip
	mov	r8, #1
	beq	.L119
	mov	r3, r1
.L33:
	cmp	r3, #0
	sub	r1, r3, #1
	bgt	.L29
.L32:
	cmp	r8, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #12]
.L35:
	ldr	r3, [r7, #16]
	ldr	r2, [sp, #8]
	add	r3, r3, #1
	cmp	r2, #0
	str	r3, [r7, #16]
	bne	.L120
	ldr	r3, [sp, #8]
	str	r3, [r7, #20]
	str	r3, [r7, #16]
.L46:
	ldr	r3, [sp, #12]
	sub	r3, fp, r3
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
	ldr	r2, .L123+24
	add	r3, r3, r1
	cmp	r3, r2
	movgt	r3, #1
	strgt	r3, [r7, #24]
.L12:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L120:
	ldr	r2, .L123+28
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L46
	ldr	r0, [r7, #20]
	ldr	r3, .L123+32
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r7, #20]
	str	r3, [r7, #16]
	b	.L46
.L118:
	add	r0, r10, r3
	bne	.L26
	ldr	r3, .L123+16
	add	r1, fp, r0, lsl #9
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	cmp	r1, #4
	lsl	r0, r0, #9
	beq	.L113
	add	r2, r0, r2
	add	r2, r2, fp
	sub	r3, r3, #1
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L35
.L113:
	ldr	r3, .L123+20
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L35
.L111:
	ldr	r3, [sp, #4]
	tst	r3, #64
	mvneq	r3, #11
	streq	r3, [r4, #12]
	b	.L35
.L116:
	mov	ip, #1
	mov	r0, #0
	ldr	lr, [r7]
	ldr	r8, [sp, #8]
	sub	lr, lr, r9
	asr	fp, lr, #3
	ldr	r3, .L123+16
	str	lr, [r7]
	str	ip, [r4, #36]
	add	lr, fp, r8, lsl #9
	str	ip, [r4, #40]
	str	fp, [r4, #16]
	rsb	ip, r8, r8, lsl #23
	add	r3, lr, r3
	lsl	ip, ip, #9
	lsl	r8, r1, #9
.L19:
	add	lr, r3, r8
	ldrb	lr, [lr, ip]	@ zero_extendqisi2
	cmp	lr, #4
	beq	.L18
	ldrb	lr, [r3]	@ zero_extendqisi2
	cmp	lr, #4
	bne	.L121
.L18:
	add	r0, r0, #1
	cmp	r0, #4
	sub	r3, r3, #512
	bne	.L19
	b	.L49
.L114:
	ldr	r2, .L123+36
	ldr	r3, [r2]
	add	r3, r3, #3
	cmp	r3, #400
	str	r3, [r2]
	blt	.L12
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	updateFallingAnimation.part.0
.L21:
	mov	r8, #1
	ldr	lr, [r7]
	add	r9, r9, lr
	asr	fp, r9, #3
	add	lr, fp, r2
	mov	r0, ip
	str	ip, [r4, #36]
	str	r8, [r4, #40]
	rsb	ip, r1, r1, lsl #23
	ldr	r8, [sp, #8]
	add	r1, lr, r1, lsl #9
	ldr	lr, .L123+16
	lsl	ip, ip, #9
	str	fp, [r4, #16]
	str	r9, [r7]
	sub	ip, ip, #1
	lsl	r9, r8, #9
	add	r1, r1, lr
.L24:
	ldrb	lr, [r1, #-1]	@ zero_extendqisi2
	cmp	lr, #4
	add	r8, r1, r9
	beq	.L23
	ldrb	lr, [r8, ip]	@ zero_extendqisi2
	cmp	lr, #4
	bne	.L122
.L23:
	add	r0, r0, #1
	cmp	r0, #4
	sub	r1, r1, #512
	bne	.L24
	mov	r1, #1
	str	r1, [sp, #8]
	b	.L22
.L119:
	str	ip, [r4, #20]
	b	.L35
.L117:
	str	r3, [r4, #20]
	b	.L35
.L121:
	cmp	r0, #1
	movge	r3, r0
	movlt	r3, #1
	mov	ip, #1
	sub	r3, r3, #1
	sub	r3, r1, r3
	str	r3, [r4, #20]
	str	ip, [r7, #12]
	b	.L17
.L122:
	mov	r1, #1
	sub	r3, r3, r0
	str	r3, [r4, #20]
	str	r1, [r7, #12]
	str	r1, [sp, #8]
	b	.L22
.L124:
	.align	2
.L123:
	.word	.LANCHOR0
	.word	buttons
	.word	cheatOn
	.word	player
	.word	bgOneFrontCMBitmap
	.word	oldButtons
	.word	510
	.word	.LANCHOR1
	.word	__aeabi_idivmod
	.word	fallingY
	.size	updatePlayer, .-updatePlayer
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
	mov	r0, #4
	ldr	r3, .L126
	ldr	r1, .L126+4
	str	r2, [r3, #16]
	str	r0, [r1]
	str	r2, [r3, #20]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	str	r2, [r3]
	bx	lr
.L127:
	.align	2
.L126:
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
	ldr	r3, .L130
	str	lr, [sp, #-4]!
	ldr	ip, .L130+4
	ldr	lr, .L130+8
	strb	r2, [r3, #4]
	str	r0, [lr]
	str	r1, [ip]
	ldr	lr, [sp], #4
	bx	lr
.L131:
	.align	2
.L130:
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
	ldr	r2, .L134
	ldr	r3, [r2]
	add	r3, r3, #3
	cmp	r3, #400
	str	r3, [r2]
	bxlt	lr
	b	updateFallingAnimation.part.0
.L135:
	.align	2
.L134:
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
	ldr	r1, .L141
	str	lr, [sp, #-4]!
	ldr	r3, .L141+4
	ldr	r2, .L141+8
	ldr	r0, [r1]
	ldr	r3, [r3]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L141+12
	lsl	r3, r3, #23
	cmp	r0, #0
	ldrb	r2, [r2, #56]	@ zero_extendqisi2
	lsr	r3, r3, #23
	orr	r0, r1, #32768
	beq	.L137
	ldr	r1, .L141+16
	ldr	r1, [r1, #4]
	ldr	lr, .L141+20
	add	r1, r1, #448
	lsl	r1, r1, #22
	orr	r3, r3, #16384
.L140:
	add	ip, lr, r2, lsl #3
	lsr	r1, r1, #22
	lsl	r2, r2, #3
	strh	r0, [lr, r2]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	strh	r1, [ip, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L137:
	ldr	r1, .L141+16
	ldr	r1, [r1, #16]
	ldr	ip, .L141+24
	add	r1, r1, #32
	ldr	lr, .L141+20
	lsl	r1, r1, #22
	orr	r3, r3, ip
	b	.L140
.L142:
	.align	2
.L141:
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
	ldr	lr, .L178
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L177
	ldr	r1, .L178+4
	ldr	ip, [r1, #16]
	ldr	r4, [r1, #20]
	ldr	r0, .L178+8
	add	r3, ip, r4, lsl #9
	ldrb	r5, [r3, r0]	@ zero_extendqisi2
	ldr	r3, [r1, #24]
	cmp	r5, #5
	add	r3, ip, r3
	sub	r3, r3, #1
	lsl	r2, r4, #9
	beq	.L145
	add	r2, r3, r2
	ldrb	r6, [r2, r0]	@ zero_extendqisi2
	cmp	r6, #5
	beq	.L145
	ldr	r2, [r1, #28]
	add	r2, r4, r2
	sub	r2, r2, #1
	add	r7, ip, r2, lsl #9
	ldrb	r7, [r7, r0]	@ zero_extendqisi2
	cmp	r7, #5
	lsl	r2, r2, #9
	beq	.L145
	add	r2, r3, r2
	ldrb	r0, [r2, r0]	@ zero_extendqisi2
	cmp	r0, #5
	beq	.L145
	cmp	r5, #6
	cmpne	r6, #6
	moveq	r2, #1
	movne	r2, #0
	cmp	r7, #6
	orreq	r2, r2, #1
	cmp	r0, #6
	orreq	r2, r2, #1
	cmp	r2, #0
	beq	.L151
	ldr	r2, .L178+12
	ldr	r3, [r2, #52]
	cmp	r3, #0
	ble	.L143
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2, #52]
	moveq	r3, #1
	streq	r3, [lr, #28]
	ldr	r3, .L178+16
	ldr	r3, [r3]
	cmp	r3, #0
	mov	ip, #1
	movne	r0, #114
	moveq	r0, #110
.L176:
	mov	r2, #332
	ldr	r1, .L178+20
	ldr	r3, .L178+24
	strb	ip, [lr, #4]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L145:
	ldr	r2, .L178+12
	ldr	r3, [r2, #52]
	cmp	r3, #0
	ble	.L148
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2, #52]
	moveq	r3, #1
	streq	r3, [lr, #28]
.L148:
	mov	r3, #0
	mov	r2, #102
	ldr	ip, .L178+28
	ldr	r0, .L178+32
	str	r3, [r1, #16]
	str	r3, [lr]
	str	r3, [r1, #12]
	str	r3, [ip]
	str	r3, [r0]
	str	r2, [r1, #20]
.L143:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L151:
	cmp	r5, #7
	cmpne	r6, #7
	moveq	r3, #1
	movne	r3, #0
	cmp	r7, #7
	orreq	r3, r3, #1
	cmp	r0, #7
	orreq	r3, r3, #1
	cmp	r3, #0
	beq	.L154
	ldr	r2, .L178+12
	ldr	r3, [r2, #52]
	cmp	r3, #0
	ble	.L143
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2, #52]
	moveq	r3, #1
	streq	r3, [lr, #28]
	ldr	r3, .L178+16
	ldr	r3, [r3]
	cmp	r3, #0
	mov	ip, #1
	movne	r0, #129
	moveq	r0, #125
	b	.L176
.L177:
	pop	{r4, r5, r6, r7, lr}
	b	drawFallingSprite
.L154:
	cmp	r5, #8
	cmpne	r6, #8
	moveq	r3, #1
	movne	r3, #0
	cmp	r7, #8
	orreq	r3, r3, #1
	cmp	r0, #8
	orreq	r3, r3, #1
	cmp	r3, #0
	beq	.L157
	ldr	r2, .L178+12
	ldr	r3, [r2, #52]
	cmp	r3, #0
	ble	.L143
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2, #52]
	moveq	r3, #1
	streq	r3, [lr, #28]
	ldr	r3, .L178+16
	ldr	r3, [r3]
	cmp	r3, #0
	mov	ip, #1
	movne	r0, #187
	moveq	r0, #183
	b	.L176
.L157:
	ldr	r2, .L178+28
	ldr	r3, .L178+32
	ldr	r0, [r2]
	ldr	r2, .L178+16
	ldr	r3, [r3]
	ldr	r2, [r2]
	sub	ip, ip, r0
	sub	r3, r4, r3
	cmp	r2, #0
	ldrb	r2, [r1, #56]	@ zero_extendqisi2
	and	r3, r3, #255
	lsl	ip, ip, #23
	ldr	r1, [r1, #36]
	ldr	r0, .L178+36
	orr	r3, r3, #32768
	lsr	ip, ip, #23
	lsl	r2, r2, #3
	beq	.L160
	cmp	r1, #0
	strh	r3, [r0, r2]	@ movhi
	ldr	r1, [lr, #20]
	ldr	r3, .L178+40
	add	r3, r3, r1, lsl #2
	ldr	r3, [r3, #4]
	add	r3, r3, #448
	lsl	r3, r3, #22
	add	r2, r0, r2
	orreq	ip, ip, #16384
	orrne	ip, ip, #20480
	lsr	r3, r3, #22
	strh	ip, [r2, #2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	b	.L143
.L160:
	strh	r3, [r0, r2]	@ movhi
	ldr	r3, [lr, #8]
	cmp	r1, #0
	orreq	ip, ip, #32768
	orrne	ip, ip, #36864
	cmp	r3, #0
	movne	r3, #164
	ldreq	r3, .L178+40
	ldreq	r1, [lr, #20]
	addeq	r3, r3, r1, lsl #2
	ldreq	r3, [r3, #16]
	addeq	r3, r3, #32
	lsleq	r3, r3, #22
	add	r2, r0, r2
	lsreq	r3, r3, #22
	strh	ip, [r2, #2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	b	.L143
.L179:
	.align	2
.L178:
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
	mov	r3, #0
	mov	r0, #102
	ldr	r1, .L182
	str	lr, [sp, #-4]!
	ldr	r2, .L182+4
	ldr	lr, .L182+8
	ldr	ip, .L182+12
	strb	r3, [r1, #4]
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r2, #16]
	str	r3, [r2, #12]
	str	r0, [r2, #20]
	str	r3, [r1]
	ldr	lr, [sp], #4
	bx	lr
.L183:
	.align	2
.L182:
	.word	.LANCHOR0
	.word	player
	.word	hOff
	.word	vOff
	.size	resetPlayerAfterFall, .-resetPlayerAfterFall
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
	.type	isDucking, %object
	.size	isDucking, 4
isDucking:
	.space	4
	.type	movedHorizontally, %object
	.size	movedHorizontally, 4
movedHorizontally:
	.space	4
	.type	hikerFrameCounter, %object
	.size	hikerFrameCounter, 4
hikerFrameCounter:
	.space	4
	.type	hikerFrame, %object
	.size	hikerFrame, 4
hikerFrame:
	.space	4
	.type	winPhaseOne, %object
	.size	winPhaseOne, 4
winPhaseOne:
	.space	4
	.type	gameOver, %object
	.size	gameOver, 4
gameOver:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
