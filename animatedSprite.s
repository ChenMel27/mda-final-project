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
	.file	"animatedSprite.c"
	.text
	.align	2
	.global	initAnimatedPlayer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initAnimatedPlayer, %function
initAnimatedPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #112
	mov	r1, #72
	mov	r0, #5
	push	{r4, lr}
	mov	lr, #0
	ldr	ip, .L4
	ldr	r4, .L4+4
	str	r2, [ip]
	str	r1, [ip, #4]
	str	r0, [ip, #48]
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+8
	ldr	r1, .L4+12
	strb	lr, [ip, #56]
	str	lr, [ip, #44]
	str	lr, [ip, #36]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
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
	.size	initAnimatedPlayer, .-initAnimatedPlayer
	.global	__aeabi_idivmod
	.align	2
	.global	updateAnimatedPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateAnimatedPlayer, %function
updateAnimatedPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L9
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #10
	str	r3, [r4]
	ble	.L6
	ldr	r5, .L9+4
	add	r0, r5, #44
	ldm	r0, {r0, r1}
	ldr	r3, .L9+8
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r5, #44]
	str	r3, [r4]
.L6:
	pop	{r4, r5, r6, lr}
	bx	lr
.L10:
	.align	2
.L9:
	.word	.LANCHOR0
	.word	player
	.word	__aeabi_idivmod
	.size	updateAnimatedPlayer, .-updateAnimatedPlayer
	.align	2
	.global	drawAnimatedPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawAnimatedPlayer, %function
drawAnimatedPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L13
	push	{r4, lr}
	ldr	r1, [r0, #44]
	ldr	r2, .L13+4
	ldr	r3, [r0]
	ldr	r2, [r2, r1, lsl #2]
	ldr	lr, .L13+8
	ldrb	r1, [r0, #56]	@ zero_extendqisi2
	ldr	r4, .L13+12
	ldrb	r0, [r0, #4]	@ zero_extendqisi2
	add	r2, r2, #32
	lsl	r3, r3, #23
	lsl	r2, r2, #22
	lsr	r3, r3, #23
	add	ip, lr, r1, lsl #3
	orr	r0, r0, r4
	orr	r3, r3, r4
	lsr	r2, r2, #22
	lsl	r1, r1, #3
	strh	r0, [lr, r1]	@ movhi
	strh	r2, [ip, #4]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	player
	.word	.LANCHOR1
	.word	shadowOAM
	.word	-32768
	.size	drawAnimatedPlayer, .-drawAnimatedPlayer
	.global	animatedHikerFrames
	.comm	healthBarFrames,72,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	animatedHikerFrames, %object
	.size	animatedHikerFrames, 20
animatedHikerFrames:
	.word	24
	.word	26
	.word	28
	.word	20
	.word	22
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	animCounter.4068, %object
	.size	animCounter.4068, 4
animCounter.4068:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
