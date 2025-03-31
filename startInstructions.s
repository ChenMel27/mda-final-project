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
	.file	"startInstructions.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Hello...\000"
	.align	2
.LC1:
	.ascii	"You are here to summit mount rainier...\000"
	.align	2
.LC2:
	.ascii	"If you want to give\000"
	.align	2
.LC3:
	.ascii	"survival your best shot...\000"
	.align	2
.LC4:
	.ascii	"My name is Brady,\000"
	.align	2
.LC5:
	.ascii	"I've led tours for 30 years...\000"
	.align	2
.LC6:
	.ascii	"Three sections await with difficulty...\000"
	.align	2
.LC7:
	.ascii	"We begin with the Ascent\000"
	.align	2
.LC8:
	.ascii	"to Camp Muir...\000"
	.align	2
.LC9:
	.ascii	"Let's begin.\000"
	.text
	.align	2
	.global	drawStartInstructionsDialouge
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStartInstructionsDialouge, %function
drawStartInstructionsDialouge:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L54
	ldr	r6, .L54+4
	mov	lr, pc
	bx	r5
	mov	r0, #0
	ldr	r3, .L54+8
	mov	lr, pc
	bx	r3
	ldr	r4, [r6]
	cmp	r4, #0
	beq	.L47
	cmp	r4, #1
	beq	.L48
	cmp	r4, #2
	beq	.L49
	cmp	r4, #3
	beq	.L50
	cmp	r4, #4
	beq	.L51
	cmp	r4, #5
	beq	.L52
	cmp	r4, #6
	beq	.L53
.L4:
	mov	lr, pc
	bx	r5
	ldr	r3, .L54+12
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L47:
	mov	r3, #1
	mov	r1, #60
	mov	r0, #7
	ldr	r2, .L54+16
.L45:
	ldr	r4, .L54+20
.L43:
	mov	lr, pc
	bx	r4
	ldr	r3, .L54+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L4
.L33:
	ldr	r3, .L54+28
	ldrh	r3, [r3]
	tst	r3, #8
	ldreq	r3, [r6]
	addeq	r3, r3, #1
	streq	r3, [r6]
	b	.L4
.L49:
	mov	r3, #1
	ldr	r2, .L54+32
	mov	r1, #55
	mov	r0, #5
	ldr	r4, .L54+20
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L54+36
.L41:
	mov	r1, #65
	mov	r0, #5
	b	.L43
.L48:
	mov	r3, r4
	mov	r1, #60
	mov	r0, #5
	ldr	r2, .L54+40
	ldr	r4, .L54+20
	b	.L43
.L50:
	mov	r3, #1
	ldr	r2, .L54+44
	mov	r1, #55
	mov	r0, #5
	ldr	r4, .L54+20
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L54+48
	b	.L41
.L51:
	mov	r3, #1
	mov	r1, #60
	mov	r0, #5
	ldr	r2, .L54+52
	b	.L45
.L52:
	mov	r3, #1
	mov	r1, #55
	mov	r0, r4
	ldr	r2, .L54+56
	ldr	r7, .L54+20
	mov	lr, pc
	bx	r7
	mov	r3, #1
	mov	r0, r4
	mov	r1, #65
	ldr	r2, .L54+60
	mov	lr, pc
	bx	r7
	ldr	r3, .L54+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L4
	b	.L33
.L53:
	mov	r3, #1
	mov	r1, #60
	mov	r0, #5
	ldr	r2, .L54+64
	ldr	r4, .L54+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L54+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L4
	ldr	r3, .L54+28
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L4
	mov	lr, pc
	bx	r5
	ldr	r3, .L54+68
	mov	lr, pc
	bx	r3
	b	.L4
.L55:
	.align	2
.L54:
	.word	waitForVBlank
	.word	.LANCHOR0
	.word	fillScreen4
	.word	flipPages
	.word	.LC0
	.word	drawString4
	.word	oldButtons
	.word	buttons
	.word	.LC2
	.word	.LC3
	.word	.LC1
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	goToPhaseOne
	.size	drawStartInstructionsDialouge, .-drawStartInstructionsDialouge
	.global	startPage
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	startPage, %object
	.size	startPage, 4
startPage:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
