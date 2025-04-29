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
	.file	"digitalSound.c"
	.text
	.align	2
	.global	setupSounds
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #0
	ldr	r2, .L3
	strh	r0, [r3, #132]	@ movhi
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	-1266
	.size	setupSounds, .-setupSounds
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSoundA
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #67108864
	mov	r7, #0
	mov	r5, r1
	mov	r6, r0
	mov	r8, r2
	mov	r1, r0
	str	r7, [r3, #196]
	mov	r0, #1
	mov	r3, #910163968
	ldr	r2, .L7+8
	ldr	r4, .L7+12
	mov	lr, pc
	bx	r4
	mov	r2, #1
	mvn	r0, #1520
	mov	r1, #128
	ldr	r4, .L7+16
	ldr	r3, .L7+20
	strh	r7, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	mov	r0, r5
	str	r5, [r4, #4]
	str	r2, [r4, #8]
	ldr	r3, .L7+24
	str	r6, [r4]
	str	r8, [r4, #12]
	mov	lr, pc
	bx	r3
	ldr	r5, .L7+28
	adr	r3, .L7
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	mov	r2, #0
	ldr	r5, .L7+32
	ldr	r3, .L7+36
	mov	lr, pc
	bx	r5
	ldr	r3, .L7+40
	mov	lr, pc
	bx	r3
	str	r7, [r4, #20]
	str	r0, [r4, #16]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L8:
	.align	3
.L7:
	.word	1443109011
	.word	1078844686
	.word	67109024
	.word	DMANow
	.word	soundA
	.word	67109120
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	1086687360
	.word	__aeabi_d2iz
	.size	playSoundA, .-playSoundA
	.align	2
	.global	playSoundB
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #67108864
	mov	r7, #0
	mov	r5, r1
	mov	r6, r0
	mov	r8, r2
	mov	r1, r0
	str	r7, [r3, #208]
	mov	r0, #2
	mov	r3, #910163968
	ldr	r2, .L11+8
	ldr	r4, .L11+12
	mov	lr, pc
	bx	r4
	mov	r2, #1
	mvn	r0, #1520
	mov	r1, #128
	ldr	r4, .L11+16
	ldr	r3, .L11+20
	strh	r7, [r3, #6]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r1, [r3, #6]	@ movhi
	mov	r0, r5
	str	r5, [r4, #4]
	str	r2, [r4, #8]
	ldr	r3, .L11+24
	str	r6, [r4]
	str	r8, [r4, #12]
	mov	lr, pc
	bx	r3
	ldr	r5, .L11+28
	adr	r3, .L11
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	mov	r2, #0
	ldr	r5, .L11+32
	ldr	r3, .L11+36
	mov	lr, pc
	bx	r5
	ldr	r3, .L11+40
	mov	lr, pc
	bx	r3
	str	r7, [r4, #20]
	str	r0, [r4, #16]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L12:
	.align	3
.L11:
	.word	1443109011
	.word	1078844686
	.word	67109028
	.word	DMANow
	.word	soundB
	.word	67109120
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	1086687360
	.word	__aeabi_d2iz
	.size	playSoundB, .-playSoundB
	.align	2
	.global	soundUpdate
	.syntax unified
	.arm
	.fpu softvfp
	.type	soundUpdate, %function
soundUpdate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L26
	ldr	r2, [r3, #8]
	cmp	r2, #0
	push	{r4, lr}
	beq	.L15
	add	r1, r3, #16
	ldm	r1, {r1, r2}
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #20]
	bgt	.L23
.L15:
	ldr	r3, .L26+4
	ldr	r2, [r3, #8]
	cmp	r2, #0
	beq	.L13
	add	r1, r3, #16
	ldm	r1, {r1, r2}
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #20]
	ble	.L13
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L24
	mov	r0, #67108864
	ldr	r1, .L26+8
	str	r2, [r3, #8]
	str	r2, [r0, #208]
	strh	r2, [r1, #6]	@ movhi
.L13:
	pop	{r4, lr}
	bx	lr
.L23:
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L25
	mov	r0, #67108864
	ldr	r1, .L26+8
	str	r2, [r3, #8]
	str	r2, [r0, #196]
	strh	r2, [r1, #2]	@ movhi
	b	.L15
.L25:
	mov	r2, #1
	ldm	r3, {r0, r1}
	bl	playSoundA
	b	.L15
.L24:
	mov	r2, #1
	ldm	r3, {r0, r1}
	pop	{r4, lr}
	b	playSoundB
.L27:
	.align	2
.L26:
	.word	soundA
	.word	soundB
	.word	67109120
	.size	soundUpdate, .-soundUpdate
	.align	2
	.global	pauseSounds
	.syntax unified
	.arm
	.fpu softvfp
	.type	pauseSounds, %function
pauseSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L29
	ldr	r0, .L29+4
	ldr	r1, .L29+8
	str	r3, [r0, #8]
	str	r3, [r1, #8]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L30:
	.align	2
.L29:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	pauseSounds, .-pauseSounds
	.align	2
	.global	unpauseSounds
	.syntax unified
	.arm
	.fpu softvfp
	.type	unpauseSounds, %function
unpauseSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #128
	mov	r3, #1
	ldr	r2, .L32
	ldr	ip, .L32+4
	ldr	r0, .L32+8
	strh	r1, [r2, #2]	@ movhi
	str	r3, [ip, #8]
	strh	r1, [r2, #6]	@ movhi
	str	r3, [r0, #8]
	bx	lr
.L33:
	.align	2
.L32:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	unpauseSounds, .-unpauseSounds
	.align	2
	.global	stopSounds
	.syntax unified
	.arm
	.fpu softvfp
	.type	stopSounds, %function
stopSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	mov	r2, #67108864
	ldr	r1, .L35
	ldr	ip, .L35+4
	ldr	r0, .L35+8
	str	r3, [ip, #8]
	str	r3, [r0, #8]
	strh	r3, [r1, #2]	@ movhi
	str	r3, [r2, #196]
	strh	r3, [r1, #6]	@ movhi
	str	r3, [r2, #208]
	bx	lr
.L36:
	.align	2
.L35:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	stopSounds, .-stopSounds
	.align	2
	.global	interruptHandler
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L44
	ldrh	r3, [r4, #2]
	tst	r3, #1
	bne	.L43
	pop	{r4, lr}
	bx	lr
.L43:
	bl	soundUpdate
	mov	r3, #1
	strh	r3, [r4, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	67109376
	.size	interruptHandler, .-interruptHandler
	.comm	soundB,24,4
	.comm	soundA,24,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
