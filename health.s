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
	.file	"health.c"
	.text
	.align	2
	.global	initHealth
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHealth, %function
initHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #100
	push	{r4, lr}
	mov	r2, #0
	mov	r0, #10
	mov	r4, #32
	mov	lr, #8
	mov	r1, #9
	ldr	r3, .L4
	strb	ip, [r3, #56]
	str	r4, [r3, #24]
	str	lr, [r3, #28]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #48]
	str	r1, [r3, #52]
	str	r2, [r3, #44]
	str	r2, [r3, #40]
	str	r2, [r3, #36]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	health
	.size	initHealth, .-initHealth
	.align	2
	.global	updateHealth
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHealth, %function
updateHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L7
	str	r2, [r3, #40]
	bx	lr
.L8:
	.align	2
.L7:
	.word	health
	.size	updateHealth, .-updateHealth
	.align	2
	.global	drawHealth
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHealth, %function
drawHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L11
	ldr	r3, [r0, #52]
	rsb	r3, r3, #9
	cmp	r3, #8
	movge	r3, #8
	str	lr, [sp, #-4]!
	ldr	r1, .L11+4
	bic	r3, r3, r3, asr #31
	add	r2, r1, r3, lsl #3
	ldr	ip, [r2, #4]
	ldr	r2, [r1, r3, lsl #3]
	ldr	r3, [r0, #16]
	ldrb	r1, [r0, #56]	@ zero_extendqisi2
	ldr	lr, .L11+8
	add	r2, r2, ip, lsl #5
	ldrb	r0, [r0, #20]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsl	r2, r2, #22
	lsr	r3, r3, #23
	add	ip, lr, r1, lsl #3
	lsr	r2, r2, #22
	lsl	r1, r1, #3
	orr	r0, r0, #16384
	orr	r3, r3, #16384
	strh	r0, [lr, r1]	@ movhi
	strh	r2, [ip, #4]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L12:
	.align	2
.L11:
	.word	health
	.word	.LANCHOR0
	.word	shadowOAM
	.size	drawHealth, .-drawHealth
	.global	healthBarFrames
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	healthBarFrames, %object
	.size	healthBarFrames, 72
healthBarFrames:
	.word	6
	.word	5
	.word	6
	.word	6
	.word	6
	.word	7
	.word	10
	.word	5
	.word	10
	.word	6
	.word	10
	.word	7
	.word	14
	.word	5
	.word	14
	.word	6
	.word	14
	.word	7
	.ident	"GCC: (devkitARM release 53) 9.1.0"
