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
	.file	"helper.c"
	.text
	.global	__aeabi_idiv
	.align	2
	.global	blendColor
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	blendColor, %function
blendColor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r0
	lsr	r4, r0, #5
	and	r4, r4, #31
	lsl	r0, r1, #22
	rsb	r0, r4, r0, lsr #27
	lsr	ip, r6, #10
	ldr	r9, .L4
	mov	r5, r1
	mul	r0, r2, r0
	mov	r1, r3
	mov	r8, r2
	mov	r7, r3
	and	r10, ip, #31
	mov	lr, pc
	bx	r9
	lsl	r3, r5, #17
	add	r4, r0, r4
	rsb	r0, r10, r3, lsr #27
	mov	r1, r7
	mul	r0, r8, r0
	mov	lr, pc
	bx	r9
	and	r6, r6, #31
	add	ip, r0, r10
	and	r5, r5, #31
	sub	r5, r5, r6
	lsl	r4, r4, #5
	lsl	ip, ip, #10
	mov	r1, r7
	mul	r0, r8, r5
	and	ip, ip, #31744
	and	r4, r4, #992
	orr	r4, r4, ip
	mov	lr, pc
	bx	r9
	add	r0, r0, r6
	and	r0, r0, #31
	orr	r0, r4, r0
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	__aeabi_idiv
	.size	blendColor, .-blendColor
	.align	2
	.global	animateTilemapShift
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateTilemapShift, %function
animateTilemapShift:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L21
	ldr	r3, [r1]
	add	r3, r3, #1
	cmp	r3, #9
	ble	.L20
	mov	r2, #0
	push	{r4, r5, lr}
	ldr	r4, .L21+4
	ldr	lr, [r4]
	cmp	lr, r2
	str	r2, [r1]
	beq	.L9
	ldr	r3, .L21+8
	add	r5, r3, #32
.L10:
	ldrh	ip, [r3, #4]
	ldrh	r0, [r3, #2]
	ldrh	r1, [r3]
	strh	ip, [r3, #6]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3], #8	@ movhi
	cmp	r3, r5
	bne	.L10
.L11:
	mov	r3, #117
	ldr	r2, .L21+8
	ldr	r1, .L21+12
.L13:
	ldrh	ip, [r2]
	add	r0, r1, r3, lsl #1
	strh	ip, [r0, #-2]	@ movhi
	ldrh	ip, [r2, #2]
	lsl	r0, r3, #1
	strh	ip, [r1, r0]	@ movhi
	ldrh	ip, [r2, #4]
	add	r0, r1, r3, lsl #1
	strh	ip, [r0, #2]	@ movhi
	add	r3, r3, #32
	ldrh	ip, [r2, #6]
	cmp	r3, #245
	strh	ip, [r0, #4]	@ movhi
	add	r2, r2, #8
	bne	.L13
	rsbs	lr, lr, #1
	movcc	lr, #0
	str	lr, [r4]
	pop	{r4, r5, lr}
	bx	lr
.L9:
	mov	r5, lr
	ldr	r3, .L21+8
	add	ip, r3, #32
.L12:
	ldrh	r0, [r3, #2]
	ldrh	r1, [r3, #4]
	ldrh	r2, [r3, #6]
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	strh	r5, [r3, #6]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	bne	.L12
	b	.L11
.L20:
	str	r3, [r1]
	bx	lr
.L22:
	.align	2
.L21:
	.word	shiftTimer
	.word	shiftingRight
	.word	currentBlock
	.word	100706304
	.size	animateTilemapShift, .-animateTilemapShift
	.comm	originalBlock,32,4
	.comm	currentBlock,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
