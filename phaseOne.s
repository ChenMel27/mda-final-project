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
	mov	r1, #102
	ldr	r0, .L4
	str	lr, [sp, #-4]!
	ldr	r2, .L4+4
	ldr	lr, .L4+8
	ldr	ip, .L4+12
	strb	r3, [r0]
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r2, #16]
	str	r3, [r2, #12]
	str	r1, [r2, #20]
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
	push	{r4, r5, r6, lr}
	mov	r3, #0
	mov	r4, #64
	mov	r2, #12
	mov	r1, #24
	mov	r0, #5
	mov	lr, #1
	mov	r6, #102
	mov	r5, #112
	ldr	ip, .L8
	str	r3, [ip, #16]
	strb	r3, [ip, #56]
	str	r3, [ip, #44]
	str	r3, [ip, #36]
	str	r3, [ip, #12]
	str	r4, [ip, #4]
	str	r2, [ip, #24]
	str	r1, [ip, #28]
	str	r0, [ip, #48]
	ldr	r4, .L8+4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L8+8
	ldr	r1, .L8+12
	str	r6, [ip, #20]
	str	r5, [ip]
	str	lr, [ip, #40]
	str	lr, [ip, #52]
	str	lr, [ip, #8]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L8+16
	ldr	r1, .L8+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	player
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
	ldr	r7, .L119
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #1
	sub	sp, sp, #20
	beq	.L110
	ldr	r3, .L119+4
	ldr	r4, .L119+8
	ldrh	r3, [r3]
	mov	r6, r0
	ldr	r2, [r4, #16]
	lsr	r0, r3, #5
	eor	r0, r0, #1
	mvn	lr, r3
	cmp	r2, #0
	movle	r0, #0
	andgt	r0, r0, #1
	str	r3, [sp, #12]
	mov	r3, #0
	cmp	r0, r3
	and	r0, lr, #128
	mov	r5, r1
	ldr	ip, [r4, #28]
	ldr	r1, [r4, #20]
	str	r0, [r7, #4]
	ldr	r0, [r4, #24]
	str	r3, [r4, #40]
	str	r0, [sp, #4]
	add	lr, ip, r1
	bne	.L111
.L45:
	mov	r3, r1
	mov	fp, r2
.L14:
	ldr	r0, [sp, #12]
	ands	r8, r0, #16
	beq	.L112
.L17:
	ldr	r2, [r4, #40]
	str	r2, [sp, #8]
.L19:
	ldr	r0, [r4, #12]
	add	r1, r0, #1
	cmp	r1, #4
	str	r1, [r4, #12]
	ble	.L22
	mov	r1, #4
	str	r1, [r4, #12]
	add	r0, ip, r3
.L23:
	ldr	r2, [sp, #4]
	add	r8, r2, fp
	ldr	r9, .L119+12
	add	r8, r8, ip, lsl #9
	sub	r8, r8, #1
	add	r8, r9, r8
	mov	r2, r0
	mov	r10, #0
	add	r9, r9, fp
	b	.L38
.L34:
	ldrb	ip, [r9, r2, lsl #9]	@ zero_extendqisi2
	add	r2, r2, #1
	cmp	ip, #4
	sub	lr, r2, r0
	beq	.L37
	ldrb	ip, [r8, r3, lsl #9]	@ zero_extendqisi2
	cmp	ip, #4
	beq	.L37
	cmp	r1, lr
	mov	r10, #1
	add	r3, r3, #1
	ble	.L113
.L38:
	cmp	r2, #255
	ble	.L34
.L37:
	cmp	r10, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	ldr	r2, .L119+16
	ldrh	r2, [r2]
	tst	r2, #64
	str	r3, [r4, #12]
	beq	.L32
	b	.L107
.L22:
	cmp	r1, #0
	bge	.L114
	mvn	r0, r0
	ldr	r2, [sp, #4]
	ldr	lr, .L119+12
	add	ip, r2, fp
	sub	ip, ip, #1
	add	ip, ip, lr
	mov	r8, #0
	sub	r0, r3, r0
	add	lr, lr, fp
	b	.L30
.L26:
	ldrb	r1, [lr, r2, lsl #9]	@ zero_extendqisi2
	cmp	r1, #4
	beq	.L29
	ldrb	r1, [ip, r2, lsl #9]	@ zero_extendqisi2
	cmp	r1, #4
	beq	.L29
	cmp	r2, r0
	mov	r8, #1
	beq	.L115
	mov	r3, r2
.L30:
	cmp	r3, #0
	sub	r2, r3, #1
	bgt	.L26
.L29:
	cmp	r8, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #12]
.L32:
	ldr	r3, [r7, #8]
	ldr	r2, [sp, #8]
	add	r3, r3, #1
	cmp	r2, #0
	str	r3, [r7, #8]
	bne	.L116
	ldr	r3, [sp, #8]
	str	r3, [r7, #12]
	str	r3, [r7, #8]
.L43:
	ldr	r3, [sp, #4]
	add	r3, r3, r3, lsr #31
	asr	r3, r3, #1
	rsb	r3, r3, #120
	sub	r3, fp, r3
	str	r3, [r6]
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
	ldr	r2, .L119+20
	add	r3, r3, r1
	cmp	r3, r2
	movgt	r3, #1
	strgt	r3, [r7, #16]
.L10:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L112:
	ldr	r0, [sp, #4]
	rsb	r0, r0, #512
	cmp	r0, fp
	ble	.L17
	mov	r9, #1
	ldr	r10, [sp, #4]
	add	r2, r10, r2
	ldr	r10, [r4, #8]
	sub	r2, r2, #1
	mov	r0, r8
	str	r8, [r4, #36]
	add	r2, r2, r10
	ldr	r8, .L119+12
	add	r2, r2, lr, lsl #9
	str	r9, [r4, #40]
	rsb	lr, lr, lr, lsl #23
	lsl	r1, r1, #9
	lsl	lr, lr, #9
	add	r2, r2, r8
.L21:
	add	r8, r1, r2
	ldrb	r8, [r8, lr]	@ zero_extendqisi2
	cmp	r8, #4
	beq	.L20
	ldrb	r8, [r2, #-512]	@ zero_extendqisi2
	cmp	r8, #4
	bne	.L117
.L20:
	add	r0, r0, #1
	cmp	r0, #4
	sub	r2, r2, #512
	bne	.L21
	mov	r2, #1
	str	r2, [sp, #8]
	b	.L19
.L114:
	add	r0, ip, r3
	bne	.L23
	ldr	r3, .L119+12
	add	r2, fp, r0, lsl #9
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	cmp	r2, #4
	lsl	r0, r0, #9
	beq	.L109
	ldr	r2, [sp, #4]
	add	r0, r2, r0
	add	r0, r0, fp
	sub	r3, r3, #1
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L32
.L109:
	ldr	r3, .L119+16
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L32
.L107:
	ldr	r3, [sp, #12]
	tst	r3, #64
	mvneq	r3, #11
	streq	r3, [r4, #12]
	b	.L32
.L116:
	ldr	r2, .L119+24
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L43
	ldr	r0, [r7, #12]
	ldr	r3, .L119+28
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r7, #12]
	str	r3, [r7, #8]
	b	.L43
.L111:
	mov	r8, #1
	ldr	r9, [r4, #8]
	ldr	r0, .L119+12
	sub	fp, r2, r9
	str	r8, [r4, #36]
	str	r8, [r4, #40]
	add	r9, fp, lr, lsl #9
	rsb	r8, lr, lr, lsl #23
	add	r0, r9, r0
	lsl	r8, r8, #9
	lsl	r10, r1, #9
.L16:
	add	r9, r0, r10
	ldrb	r9, [r9, r8]	@ zero_extendqisi2
	cmp	r9, #4
	beq	.L15
	ldrb	r9, [r0, #-512]	@ zero_extendqisi2
	cmp	r9, #4
	bne	.L118
.L15:
	add	r3, r3, #1
	cmp	r3, #4
	sub	r0, r0, #512
	bne	.L16
	b	.L45
.L110:
	ldr	r2, .L119+32
	ldr	r3, [r2]
	add	r3, r3, #3
	cmp	r3, #400
	str	r3, [r2]
	blt	.L10
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	updateFallingAnimation.part.0
.L115:
	str	r0, [r4, #20]
	b	.L32
.L113:
	str	r3, [r4, #20]
	b	.L32
.L118:
	cmp	r3, #1
	movlt	r3, #1
	sub	r3, r3, #1
	sub	r3, r1, r3
	str	r3, [r4, #20]
	str	fp, [r4, #16]
	b	.L14
.L117:
	mov	r2, #1
	add	fp, fp, r10
	sub	r3, r3, r0
	str	fp, [r4, #16]
	str	r3, [r4, #20]
	str	r2, [sp, #8]
	b	.L19
.L120:
	.align	2
.L119:
	.word	.LANCHOR0
	.word	buttons
	.word	player
	.word	bgOneFrontCMBitmap
	.word	oldButtons
	.word	510
	.word	.LANCHOR1
	.word	__aeabi_idivmod
	.word	fallingY
	.size	updatePlayer, .-updatePlayer
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
	ldr	lr, .L150
	ldrb	r3, [lr]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L149
	ldr	r1, .L150+4
	ldr	ip, [r1, #16]
	ldr	r4, [r1, #20]
	ldr	r0, .L150+8
	add	r3, ip, r4, lsl #9
	ldrb	r5, [r3, r0]	@ zero_extendqisi2
	ldr	r3, [r1, #24]
	cmp	r5, #5
	add	r3, ip, r3
	sub	r3, r3, #1
	lsl	r2, r4, #9
	beq	.L124
	add	r2, r3, r2
	ldrb	r6, [r2, r0]	@ zero_extendqisi2
	cmp	r6, #5
	beq	.L124
	ldr	r2, [r1, #28]
	add	r2, r4, r2
	sub	r2, r2, #1
	add	r7, ip, r2, lsl #9
	ldrb	r7, [r7, r0]	@ zero_extendqisi2
	cmp	r7, #5
	lsl	r2, r2, #9
	beq	.L124
	add	r2, r3, r2
	ldrb	r0, [r2, r0]	@ zero_extendqisi2
	cmp	r0, #5
	beq	.L124
	cmp	r5, #6
	cmpne	r6, #6
	moveq	r2, #1
	movne	r2, #0
	cmp	r7, #6
	orreq	r2, r2, #1
	cmp	r0, #6
	orreq	r2, r2, #1
	cmp	r2, #0
	beq	.L129
	ldr	r2, .L150+12
	ldr	r3, [r2, #52]
	cmp	r3, #0
	ble	.L121
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2, #52]
	moveq	r3, #1
	mov	ip, #1
	mov	r0, #110
	streq	r3, [lr, #20]
.L148:
	mov	r2, #332
	ldr	r1, .L150+16
	ldr	r3, .L150+20
	strb	ip, [lr]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L124:
	ldr	r2, .L150+12
	ldr	r3, [r2, #52]
	cmp	r3, #0
	ble	.L127
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2, #52]
	moveq	r3, #1
	streq	r3, [lr, #20]
.L127:
	mov	r3, #0
	mov	r2, #102
	ldr	ip, .L150+24
	ldr	r0, .L150+28
	str	r3, [r1, #16]
	str	r3, [r1, #12]
	str	r3, [ip]
	str	r3, [r0]
	str	r2, [r1, #20]
.L121:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L149:
	ldr	r2, .L150+16
	ldr	r3, .L150+32
	ldr	r2, [r2]
	ldr	r1, .L150+4
	ldr	r3, [r3, #4]
	ldr	r0, .L150+20
	ldr	r4, .L150+36
	ldr	lr, .L150+40
	ldrb	r1, [r1, #56]	@ zero_extendqisi2
	ldrb	r0, [r0]	@ zero_extendqisi2
	lsl	r2, r2, #23
	add	r3, r3, #32
	lsr	r2, r2, #23
	lsl	r3, r3, #22
	add	ip, lr, r1, lsl #3
	orr	r2, r2, r4
	orr	r0, r0, r4
	lsl	r1, r1, #3
	lsr	r3, r3, #22
	strh	r0, [lr, r1]	@ movhi
	strh	r2, [ip, #2]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L129:
	cmp	r5, #7
	cmpne	r6, #7
	moveq	r3, #1
	movne	r3, #0
	cmp	r7, #7
	orreq	r3, r3, #1
	cmp	r0, #7
	orreq	r3, r3, #1
	cmp	r3, #0
	beq	.L131
	ldr	r2, .L150+12
	ldr	r3, [r2, #52]
	cmp	r3, #0
	ble	.L121
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2, #52]
	moveq	r3, #1
	mov	ip, #1
	mov	r0, #125
	streq	r3, [lr, #20]
	b	.L148
.L131:
	cmp	r6, #8
	cmpne	r5, #8
	moveq	r3, #1
	movne	r3, #0
	cmp	r7, #8
	orreq	r3, r3, #1
	cmp	r0, #8
	orreq	r3, r3, #1
	cmp	r3, #0
	beq	.L133
	ldr	r2, .L150+12
	ldr	r3, [r2, #52]
	cmp	r3, #0
	ble	.L121
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2, #52]
	moveq	r3, #1
	mov	ip, #1
	mov	r0, #183
	streq	r3, [lr, #20]
	b	.L148
.L133:
	ldr	r3, .L150+28
	ldr	r2, .L150+24
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldrb	r0, [r1, #56]	@ zero_extendqisi2
	ldr	r5, [r1, #36]
	sub	r3, r4, r3
	sub	ip, ip, r2
	ldr	r4, .L150+36
	lsl	r1, r0, #3
	cmp	r5, #0
	ldr	r0, [lr, #4]
	and	r3, r3, #255
	lsl	ip, ip, #23
	ldr	r2, .L150+40
	orr	r3, r3, r4
	lsr	ip, ip, #23
	andeq	r4, r4, #32768
	orreq	ip, r4, ip
	orrne	ip, ip, #36864
	cmp	r0, #0
	strh	r3, [r2, r1]	@ movhi
	add	r3, r2, r1
	movne	r2, #164
	ldreq	r2, .L150+32
	ldreq	r1, [lr, #12]
	addeq	r2, r2, r1, lsl #2
	ldreq	r2, [r2, #4]
	addeq	r2, r2, #32
	lsleq	r2, r2, #22
	lsreq	r2, r2, #22
	strh	ip, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	b	.L121
.L151:
	.align	2
.L150:
	.word	.LANCHOR0
	.word	player
	.word	bgOneFrontCMBitmap
	.word	health
	.word	fallingX
	.word	fallingY
	.word	hOff
	.word	vOff
	.word	.LANCHOR1
	.word	-32768
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
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
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	lr, #4
	mov	r0, #20
	ldr	r3, .L154
	ldr	ip, .L154+4
	ldr	r1, .L154+8
	str	lr, [ip]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #4]
	str	r2, [r3, #20]
	str	r0, [r1]
	ldr	lr, [sp], #4
	bx	lr
.L155:
	.align	2
.L154:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	sbb
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
	ldr	r3, .L158
	str	lr, [sp, #-4]!
	ldr	ip, .L158+4
	ldr	lr, .L158+8
	strb	r2, [r3]
	str	r0, [lr]
	str	r1, [ip]
	ldr	lr, [sp], #4
	bx	lr
.L159:
	.align	2
.L158:
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
	ldr	r2, .L162
	ldr	r3, [r2]
	add	r3, r3, #3
	cmp	r3, #400
	str	r3, [r2]
	bxlt	lr
	b	updateFallingAnimation.part.0
.L163:
	.align	2
.L162:
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
	push	{r4, lr}
	ldr	r2, .L166
	ldr	r3, .L166+4
	ldr	r2, [r2]
	ldr	r1, .L166+8
	ldr	r3, [r3, #4]
	ldr	r0, .L166+12
	ldr	r4, .L166+16
	ldr	lr, .L166+20
	ldrb	r1, [r1, #56]	@ zero_extendqisi2
	ldrb	r0, [r0]	@ zero_extendqisi2
	lsl	r2, r2, #23
	add	r3, r3, #32
	lsr	r2, r2, #23
	lsl	r3, r3, #22
	add	ip, lr, r1, lsl #3
	orr	r2, r2, r4
	orr	r0, r0, r4
	lsl	r1, r1, #3
	lsr	r3, r3, #22
	strh	r0, [lr, r1]	@ movhi
	strh	r2, [ip, #2]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L167:
	.align	2
.L166:
	.word	fallingX
	.word	.LANCHOR1
	.word	player
	.word	fallingY
	.word	-32768
	.word	shadowOAM
	.size	drawFallingSprite, .-drawFallingSprite
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
	mov	r1, #102
	ldr	r0, .L170
	str	lr, [sp, #-4]!
	ldr	r2, .L170+4
	ldr	lr, .L170+8
	ldr	ip, .L170+12
	strb	r3, [r0]
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r2, #16]
	str	r3, [r2, #12]
	str	r1, [r2, #20]
	ldr	lr, [sp], #4
	bx	lr
.L171:
	.align	2
.L170:
	.word	.LANCHOR0
	.word	player
	.word	hOff
	.word	vOff
	.size	resetPlayerAfterFall, .-resetPlayerAfterFall
	.align	2
	.global	colorAt
	.syntax unified
	.arm
	.fpu softvfp
	.type	colorAt, %function
colorAt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L173
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L174:
	.align	2
.L173:
	.word	bgOneFrontCMBitmap
	.size	colorAt, .-colorAt
	.global	fallSpeed
	.comm	fallingY,4,4
	.comm	fallingX,4,4
	.global	playerState
	.comm	player,60,4
	.comm	sbb,4,4
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
	.type	playerState, %object
	.size	playerState, 1
playerState:
	.space	1
	.space	3
	.type	isDucking, %object
	.size	isDucking, 4
isDucking:
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
