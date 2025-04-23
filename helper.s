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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
