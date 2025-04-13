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
	mov	r1, #101
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
	mov	r1, #25
	mov	r0, #5
	mov	lr, #1
	mov	r6, #101
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
	ldr	r8, .L91
	ldrb	r3, [r8]	@ zero_extendqisi2
	cmp	r3, #1
	sub	sp, sp, #20
	beq	.L84
	mov	r7, r0
	mov	r0, #0
	ldr	r3, .L91+4
	ldr	r4, .L91+8
	mov	r6, r1
	ldrh	r1, [r3]
	ldr	r5, [r4, #24]
	ldr	r3, [r4, #16]
	lsr	r2, r1, #7
	eor	r2, r2, #1
	add	lr, r5, r3
	and	r2, r2, #1
	ldr	ip, [r4, #20]
	ldr	fp, [r4, #28]
	str	r2, [r8, #4]
	tst	r1, #32
	sub	r2, lr, #1
	str	lr, [sp, #4]
	str	r0, [r4, #40]
	str	r2, [sp]
	add	lr, fp, ip
	bne	.L15
	mov	r2, #1
	cmp	r3, r0
	str	r2, [r4, #40]
	str	r2, [r4, #36]
	ble	.L15
	mov	r0, ip
	ldr	r2, [r4, #8]
	sub	r9, lr, ip
	sub	r10, r3, r2
	add	r9, r10, r9, lsl #9
	ldr	r2, .L91+12
	sub	r9, r9, #512
	add	r9, r2, r9
	str	r10, [sp, #12]
	str	r9, [sp, #8]
	add	r2, r2, r10
	sub	r9, ip, #4
.L18:
	ldrb	r10, [r2, r0, lsl #9]	@ zero_extendqisi2
	cmp	r10, #4
	beq	.L17
	ldr	r10, [sp, #8]
	ldrb	r10, [r10, r0, lsl #9]	@ zero_extendqisi2
	cmp	r10, #4
	bne	.L85
.L17:
	sub	r0, r0, #1
	cmp	r0, r9
	bne	.L18
.L15:
	ands	r2, r1, #16
	bne	.L20
	mov	r0, #1
	ldr	r10, [r4, #16]
	rsb	r9, r5, #512
	cmp	r10, r9
	str	r2, [r4, #36]
	str	r0, [r4, #40]
	bge	.L20
	ldr	r0, [r4, #8]
	ldr	r9, [sp]
	str	r0, [sp, #8]
	add	r0, r0, r9
	ldr	r9, .L91+12
	add	r0, r0, lr, lsl #9
	rsb	lr, lr, lr, lsl #23
	lsl	ip, ip, #9
	lsl	lr, lr, #9
	add	r0, r0, r9
.L23:
	add	r9, ip, r0
	ldrb	r9, [r9, lr]	@ zero_extendqisi2
	cmp	r9, #4
	beq	.L22
	ldrb	r9, [r0, #-512]	@ zero_extendqisi2
	cmp	r9, #4
	bne	.L86
.L22:
	add	r2, r2, #1
	cmp	r2, #4
	sub	r0, r0, #512
	bne	.L23
.L20:
	ldr	r2, .L91+16
	ldrh	r2, [r2]
	tst	r2, #64
	ldr	r2, [r4, #12]
	beq	.L24
	tst	r1, #64
	bne	.L24
	cmp	r2, #0
	mvneq	r1, #10
	streq	r1, [r4, #12]
	bne	.L24
.L25:
	ldr	lr, .L91+12
	ldr	r0, [r4, #20]
	ldr	r2, [sp]
	add	r3, r3, lr
	mov	r9, #0
	add	r1, r1, r0
	add	lr, lr, r2
	b	.L35
.L29:
	ldrb	ip, [r3, r2, lsl #9]	@ zero_extendqisi2
	cmp	ip, #4
	beq	.L34
	ldrb	ip, [lr, r2, lsl #9]	@ zero_extendqisi2
	cmp	ip, #4
	beq	.L34
	cmp	r2, r1
	mov	r9, #1
	beq	.L87
	mov	r0, r2
.L35:
	cmp	r0, #0
	sub	r2, r0, #1
	bgt	.L29
.L34:
	cmp	r9, #0
	strne	r0, [r4, #20]
.L31:
	mov	r3, #0
	str	r3, [r4, #12]
	b	.L37
.L24:
	add	r1, r2, #1
	cmp	r1, #4
	movgt	r1, #4
	strgt	r1, [r4, #12]
	ble	.L88
.L27:
	ldr	r2, [sp, #4]
	ldr	ip, [r4, #20]
	add	lr, r2, fp, lsl #9
	ldr	r2, .L91+12
	sub	lr, lr, #1
	add	fp, fp, ip
	add	lr, r2, lr
	mov	r0, fp
	add	r2, r2, r3
	mov	r3, #0
	b	.L41
.L38:
	ldrb	r9, [r2, r0, lsl #9]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	r9, #4
	sub	r10, r0, fp
	beq	.L40
	ldrb	r9, [lr, ip, lsl #9]	@ zero_extendqisi2
	cmp	r9, #4
	beq	.L40
	cmp	r1, r10
	mov	r3, #1
	add	ip, ip, #1
	ble	.L89
.L41:
	cmp	r0, #255
	ble	.L38
.L40:
	cmp	r3, #0
	strne	ip, [r4, #20]
	b	.L31
.L88:
	cmp	r1, #0
	str	r1, [r4, #12]
	blt	.L25
	bne	.L27
.L37:
	ldr	r3, [r8, #8]
	ldr	r2, [r4, #40]
	add	r3, r3, #1
	cmp	r2, #0
	str	r3, [r8, #8]
	streq	r2, [r8, #12]
	streq	r2, [r8, #8]
	beq	.L43
	ldr	r2, .L91+20
	ldr	r2, [r2]
	cmp	r3, r2
	bgt	.L90
.L43:
	add	r5, r5, r5, lsr #31
	ldr	r3, [r4, #16]
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
	ldr	r2, .L91+24
	add	r3, r3, r1
	cmp	r3, r2
	movgt	r3, #1
	strgt	r3, [r8, #16]
.L10:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L84:
	ldr	r2, .L91+28
	ldr	r3, [r2]
	add	r3, r3, #3
	cmp	r3, #400
	str	r3, [r2]
	blt	.L10
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	updateFallingAnimation.part.0
.L90:
	ldr	r0, [r8, #12]
	ldr	r3, .L91+32
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r8, #12]
	str	r3, [r8, #8]
	b	.L43
.L87:
	str	r1, [r4, #20]
	b	.L37
.L89:
	str	ip, [r4, #20]
	b	.L37
.L85:
	ldr	r2, [sp, #12]
	str	r0, [r4, #20]
	str	r2, [r4, #16]
	b	.L15
.L86:
	ldr	r0, [r4, #20]
	ldr	ip, [sp, #8]
	sub	r2, r0, r2
	add	r10, r10, ip
	str	r10, [r4, #16]
	str	r2, [r4, #20]
	b	.L20
.L92:
	.align	2
.L91:
	.word	.LANCHOR0
	.word	buttons
	.word	player
	.word	bgOneFrontCMBitmap
	.word	oldButtons
	.word	.LANCHOR1
	.word	510
	.word	fallingY
	.word	__aeabi_idivmod
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
	ldr	lr, .L122
	ldrb	r3, [lr]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L121
	ldr	r1, .L122+4
	ldr	ip, [r1, #16]
	ldr	r4, [r1, #20]
	ldr	r0, .L122+8
	add	r3, ip, r4, lsl #9
	ldrb	r5, [r3, r0]	@ zero_extendqisi2
	ldr	r3, [r1, #24]
	cmp	r5, #5
	add	r3, ip, r3
	sub	r3, r3, #1
	lsl	r2, r4, #9
	beq	.L96
	add	r2, r3, r2
	ldrb	r6, [r2, r0]	@ zero_extendqisi2
	cmp	r6, #5
	beq	.L96
	ldr	r2, [r1, #28]
	add	r2, r4, r2
	sub	r2, r2, #1
	add	r7, ip, r2, lsl #9
	ldrb	r7, [r7, r0]	@ zero_extendqisi2
	cmp	r7, #5
	lsl	r2, r2, #9
	beq	.L96
	add	r2, r3, r2
	ldrb	r0, [r2, r0]	@ zero_extendqisi2
	cmp	r0, #5
	beq	.L96
	cmp	r5, #6
	cmpne	r6, #6
	moveq	r2, #1
	movne	r2, #0
	cmp	r7, #6
	orreq	r2, r2, #1
	cmp	r0, #6
	orreq	r2, r2, #1
	cmp	r2, #0
	beq	.L101
	ldr	r2, .L122+12
	ldr	r3, [r2, #52]
	cmp	r3, #0
	ble	.L93
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2, #52]
	moveq	r3, #1
	mov	ip, #1
	mov	r0, #110
	streq	r3, [lr, #20]
.L120:
	mov	r2, #332
	ldr	r1, .L122+16
	ldr	r3, .L122+20
	strb	ip, [lr]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L96:
	ldr	r2, .L122+12
	ldr	r3, [r2, #52]
	cmp	r3, #0
	ble	.L99
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2, #52]
	moveq	r3, #1
	streq	r3, [lr, #20]
.L99:
	mov	r3, #0
	mov	r2, #101
	ldr	ip, .L122+24
	ldr	r0, .L122+28
	str	r3, [r1, #16]
	str	r3, [r1, #12]
	str	r3, [ip]
	str	r3, [r0]
	str	r2, [r1, #20]
.L93:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L121:
	ldr	r2, .L122+16
	ldr	r3, .L122+32
	ldr	r2, [r2]
	ldr	r1, .L122+4
	ldr	r3, [r3, #4]
	ldr	r0, .L122+20
	ldr	r4, .L122+36
	ldr	lr, .L122+40
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
.L101:
	cmp	r5, #7
	cmpne	r6, #7
	moveq	r3, #1
	movne	r3, #0
	cmp	r7, #7
	orreq	r3, r3, #1
	cmp	r0, #7
	orreq	r3, r3, #1
	cmp	r3, #0
	beq	.L103
	ldr	r2, .L122+12
	ldr	r3, [r2, #52]
	cmp	r3, #0
	ble	.L93
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2, #52]
	moveq	r3, #1
	mov	ip, #1
	mov	r0, #123
	streq	r3, [lr, #20]
	b	.L120
.L103:
	cmp	r6, #8
	cmpne	r5, #8
	moveq	r3, #1
	movne	r3, #0
	cmp	r7, #8
	orreq	r3, r3, #1
	cmp	r0, #8
	orreq	r3, r3, #1
	cmp	r3, #0
	beq	.L105
	ldr	r2, .L122+12
	ldr	r3, [r2, #52]
	cmp	r3, #0
	ble	.L93
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2, #52]
	moveq	r3, #1
	mov	ip, #1
	mov	r0, #183
	streq	r3, [lr, #20]
	b	.L120
.L105:
	ldr	r3, .L122+28
	ldr	r2, .L122+24
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldrb	r0, [r1, #56]	@ zero_extendqisi2
	ldr	r5, [r1, #36]
	sub	r3, r4, r3
	sub	ip, ip, r2
	ldr	r4, .L122+36
	lsl	r1, r0, #3
	cmp	r5, #0
	ldr	r0, [lr, #4]
	and	r3, r3, #255
	lsl	ip, ip, #23
	ldr	r2, .L122+40
	orr	r3, r3, r4
	lsr	ip, ip, #23
	andeq	r4, r4, #32768
	orreq	ip, r4, ip
	orrne	ip, ip, #36864
	cmp	r0, #0
	strh	r3, [r2, r1]	@ movhi
	add	r3, r2, r1
	movne	r2, #132
	ldreq	r2, .L122+32
	ldreq	r1, [lr, #12]
	addeq	r2, r2, r1, lsl #2
	ldreq	r2, [r2, #4]
	addeq	r2, r2, #32
	lsleq	r2, r2, #22
	lsreq	r2, r2, #22
	strh	ip, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	b	.L93
.L123:
	.align	2
.L122:
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
	@ link register save eliminated.
	mov	r2, #0
	mov	ip, #4
	mov	r0, #20
	ldr	r3, .L125
	ldr	r1, .L125+4
	str	r2, [r3, #8]
	str	ip, [r1]
	str	r0, [r1, #24]
	str	r2, [r3, #12]
	str	r2, [r3, #4]
	str	r2, [r3, #20]
	bx	lr
.L126:
	.align	2
.L125:
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
	ldr	r3, .L129
	str	lr, [sp, #-4]!
	ldr	ip, .L129+4
	ldr	lr, .L129+8
	strb	r2, [r3]
	str	r0, [lr]
	str	r1, [ip]
	ldr	lr, [sp], #4
	bx	lr
.L130:
	.align	2
.L129:
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
	ldr	r2, .L133
	ldr	r3, [r2]
	add	r3, r3, #3
	cmp	r3, #400
	str	r3, [r2]
	bxlt	lr
	b	updateFallingAnimation.part.0
.L134:
	.align	2
.L133:
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
	ldr	r2, .L137
	ldr	r3, .L137+4
	ldr	r2, [r2]
	ldr	r1, .L137+8
	ldr	r3, [r3, #4]
	ldr	r0, .L137+12
	ldr	r4, .L137+16
	ldr	lr, .L137+20
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
.L138:
	.align	2
.L137:
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
	mov	r1, #101
	ldr	r0, .L141
	str	lr, [sp, #-4]!
	ldr	r2, .L141+4
	ldr	lr, .L141+8
	ldr	ip, .L141+12
	strb	r3, [r0]
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r2, #16]
	str	r3, [r2, #12]
	str	r1, [r2, #20]
	ldr	lr, [sp], #4
	bx	lr
.L142:
	.align	2
.L141:
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
	ldr	r3, .L144
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L145:
	.align	2
.L144:
	.word	bgOneFrontCMBitmap
	.size	colorAt, .-colorAt
	.global	fallSpeed
	.comm	fallingY,4,4
	.comm	fallingX,4,4
	.global	playerState
	.comm	player,60,4
	.global	sbb
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
	.type	sbb, %object
	.size	sbb, 4
sbb:
	.word	20
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
