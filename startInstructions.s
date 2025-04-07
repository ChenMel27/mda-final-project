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
	.ascii	"Hello and welcome\000"
	.align	2
.LC1:
	.ascii	"to our mountain town...\000"
	.align	2
.LC2:
	.ascii	"My name is Brady,\000"
	.align	2
.LC3:
	.ascii	"I've led tours for 30 years...\000"
	.align	2
.LC4:
	.ascii	"You are here to summit mount rainier...\000"
	.align	2
.LC5:
	.ascii	"If you want to give\000"
	.align	2
.LC6:
	.ascii	"survival your best shot\000"
	.align	2
.LC7:
	.ascii	"you have come to the right person.\000"
	.align	2
.LC8:
	.ascii	"Three sections await with\000"
	.align	2
.LC9:
	.ascii	"difficulty and I will be\000"
	.align	2
.LC10:
	.ascii	" there to guide you in between\000"
	.align	2
.LC11:
	.ascii	"sections, but it's up\000"
	.align	2
.LC12:
	.ascii	" to you to survive.\000"
	.align	2
.LC13:
	.ascii	"Three sections await with difficulty.\000"
	.align	2
.LC14:
	.ascii	"We begin with the first Ascent\000"
	.align	2
.LC15:
	.ascii	"to Camp Muir...\000"
	.align	2
.LC16:
	.ascii	"Continue down the bridge to begin.\000"
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L58
	mov	r0, #0
	ldr	r3, .L58+4
	mov	lr, pc
	bx	r3
	ldr	r4, [r5]
	cmp	r4, #0
	beq	.L51
	cmp	r4, #1
	beq	.L52
	cmp	r4, #2
	beq	.L53
	cmp	r4, #3
	beq	.L54
	cmp	r4, #4
	beq	.L55
	cmp	r4, #5
	beq	.L56
	cmp	r4, #6
	beq	.L57
	cmp	r4, #7
	bne	.L4
	mov	r3, #1
	mov	r1, #60
	mov	r0, #5
	ldr	r2, .L58+8
	ldr	r4, .L58+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L58+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L4
	ldr	r3, .L58+20
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r3, #1
	streq	r3, [r5, #4]
	b	.L4
.L51:
	mov	r3, #1
	mov	r1, #55
	mov	r0, #7
	ldr	r2, .L58+24
	ldr	r4, .L58+12
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #65
	mov	r0, #7
	ldr	r2, .L58+28
.L44:
	mov	lr, pc
	bx	r4
	ldr	r3, .L58+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L4
.L37:
	ldr	r3, .L58+20
	ldrh	r3, [r3]
	tst	r3, #8
	ldreq	r3, [r5]
	addeq	r3, r3, #1
	streq	r3, [r5]
.L4:
	ldr	r3, .L58+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+36
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L53:
	mov	r3, #1
	mov	r1, #60
	mov	r0, #5
	ldr	r2, .L58+40
	ldr	r4, .L58+12
	b	.L44
.L52:
	mov	r3, r4
	mov	r1, #55
	mov	r0, #5
	ldr	r2, .L58+44
	ldr	r6, .L58+12
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #65
	mov	r0, #5
	ldr	r2, .L58+48
	mov	lr, pc
	bx	r6
	ldr	r3, .L58+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L4
	b	.L37
.L54:
	mov	r3, #1
	mov	r1, #55
	mov	r0, #5
	ldr	r2, .L58+52
	ldr	r4, .L58+12
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #65
	ldr	r2, .L58+56
	mov	r0, #5
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #75
	ldr	r2, .L58+60
.L46:
	mov	r0, #5
	b	.L44
.L55:
	ldr	r4, .L58+12
	mov	r3, #1
	mov	r1, #55
	mov	r0, #5
	ldr	r2, .L58+64
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #65
	mov	r0, #5
	ldr	r2, .L58+68
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #75
	mov	r0, #5
	ldr	r2, .L58+72
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #85
	ldr	r2, .L58+76
	mov	r0, #5
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #95
	ldr	r2, .L58+80
	b	.L46
.L56:
	mov	r0, r4
	mov	r3, #1
	mov	r1, #60
	ldr	r2, .L58+84
	ldr	r4, .L58+12
	b	.L44
.L57:
	mov	r3, #1
	mov	r1, #55
	ldr	r2, .L58+88
	mov	r0, #5
	ldr	r4, .L58+12
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #65
	ldr	r2, .L58+92
	b	.L46
.L59:
	.align	2
.L58:
	.word	.LANCHOR0
	.word	fillScreen4
	.word	.LC16
	.word	drawString4
	.word	oldButtons
	.word	buttons
	.word	.LC0
	.word	.LC1
	.word	waitForVBlank
	.word	flipPages
	.word	.LC4
	.word	.LC2
	.word	.LC3
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.size	drawStartInstructionsDialouge, .-drawStartInstructionsDialouge
	.comm	sbb,4,4
	.comm	winPhaseOne,4,4
	.comm	gameOver,4,4
	.comm	isDucking,4,4
	.comm	hikerFrames,12,4
	.comm	hikerFrame,4,4
	.comm	hikerFrameCounter,4,4
	.comm	hikerFrameDelay,4,4
	.global	begin
	.global	startPage
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	startPage, %object
	.size	startPage, 4
startPage:
	.space	4
	.type	begin, %object
	.size	begin, 4
begin:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
