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
	.file	"main.c"
	.text
	.align	2
	.global	goToSplashScreen
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSplashScreen, %function
goToSplashScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldr	r1, .L4
	push	{r4, lr}
	mov	r0, #3
	strh	r1, [r2]	@ movhi
	ldr	r3, .L4+4
	mov	r2, #83886080
	ldr	r1, .L4+8
	ldr	r4, .L4+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+16
	ldr	r0, .L4+20
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+24
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1028
	.word	-2147483392
	.word	splashScreenPal
	.word	DMANow
	.word	drawFullscreenImage4
	.word	splashScreenBitmap
	.word	state
	.size	goToSplashScreen, .-goToSplashScreen
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToSplashScreen
.L9:
	.align	2
.L8:
	.word	mgba_open
	.size	initialize, .-initialize
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4608
	mov	r1, #4736
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L12
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L12+4
	mov	lr, pc
	bx	r4
	mov	r3, #3840
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L12+12
	ldr	r1, .L12+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+24
	mov	lr, pc
	bx	r3
	mov	r1, #1
	mov	ip, #0
	mov	r0, #96
	ldr	r2, .L12+28
	ldr	r3, .L12+32
	strb	r1, [r2]
	str	ip, [r3]
	str	r0, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	snowtilesPal
	.word	snowtilesTiles
	.word	100700160
	.word	townMap
	.word	initStartPlayer
	.word	initGuideSprite
	.word	state
	.word	.LANCHOR0
	.size	goToStart, .-goToStart
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	splashScreen.part.0, %function
splashScreen.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L20
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	bl	goToStart
	mov	r2, #1
	ldr	r3, .L20+4
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	buttons
	.word	state
	.size	splashScreen.part.0, .-splashScreen.part.0
	.set	pause.part.0,splashScreen.part.0
	.align	2
	.global	splashScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	splashScreen, %function
splashScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L24
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	splashScreen.part.0
.L25:
	.align	2
.L24:
	.word	oldButtons
	.size	splashScreen, .-splashScreen
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, #67108864
	ldr	r4, .L32
	ldr	r3, .L32+4
	mov	r0, r4
	add	r1, r4, #4
	mov	lr, pc
	bx	r3
	ldrh	r2, [r4, #4]
	ldrh	r3, [r4]
	strh	r3, [r5, #20]	@ movhi
	strh	r2, [r5, #22]	@ movhi
	ldr	r3, .L32+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L32+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L32+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L32+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L32+24
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	beq	.L26
	mov	r0, #0
	mov	r2, #2
	ldr	ip, .L32+28
	ldr	r1, .L32+32
	ldr	r3, .L32+36
	strh	ip, [r5]	@ movhi
	str	r0, [r1]
	strb	r2, [r3]
.L26:
	pop	{r4, r5, r6, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.word	updateStartPlayer
	.word	drawStartPlayer
	.word	drawGuideSprite
	.word	DMANow
	.word	shadowOAM
	.word	checkPlayerGuideCollision
	.word	1044
	.word	startPage
	.word	state
	.size	start, .-start
	.align	2
	.global	goToStartInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStartInstructions, %function
goToStartInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #67108864
	mov	r2, #2
	mov	r0, #0
	str	lr, [sp, #-4]!
	ldr	r3, .L36
	ldr	lr, .L36+4
	ldr	r1, .L36+8
	strh	lr, [ip]	@ movhi
	strb	r2, [r3]
	str	r0, [r1]
	ldr	lr, [sp], #4
	bx	lr
.L37:
	.align	2
.L36:
	.word	state
	.word	1044
	.word	startPage
	.size	goToStartInstructions, .-goToStartInstructions
	.align	2
	.global	startInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	startInstructions, %function
startInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L40
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	drawStartInstructionsDialouge
	.size	startInstructions, .-startInstructions
	.align	2
	.global	goToPhaseOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPhaseOne, %function
goToPhaseOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4352
	ldr	r1, .L44
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L44+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L44+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L44+12
	ldr	r1, .L44+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L44+20
	ldr	r1, .L44+24
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L44+28
	mov	lr, pc
	bx	r3
	mov	r1, #3
	mov	ip, #0
	mov	r0, #96
	ldr	r2, .L44+32
	ldr	r3, .L44+36
	strb	r1, [r2]
	str	ip, [r3]
	str	r0, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	22020
	.word	DMANow
	.word	tilesetOnePal
	.word	100679680
	.word	tilesetOneTiles
	.word	100708352
	.word	bgOneMap
	.word	initPlayer
	.word	state
	.word	.LANCHOR0
	.size	goToPhaseOne, .-goToPhaseOne
	.align	2
	.global	goToPhaseTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPhaseTwo, %function
goToPhaseTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4352
	ldr	r1, .L48
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L48+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L48+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L48+12
	ldr	r1, .L48+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L48+20
	ldr	r1, .L48+24
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L48+28
	mov	lr, pc
	bx	r3
	mov	r1, #4
	mov	ip, #0
	mov	r0, #96
	ldr	r2, .L48+32
	ldr	r3, .L48+36
	strb	r1, [r2]
	str	ip, [r3]
	str	r0, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	22536
	.word	DMANow
	.word	tilesetOnePal
	.word	100696064
	.word	tilesetOneTiles
	.word	100712448
	.word	bgOneMap
	.word	initPlayer
	.word	state
	.word	.LANCHOR0
	.size	goToPhaseTwo, .-goToPhaseTwo
	.align	2
	.global	phaseOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	phaseOne, %function
phaseOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L58
	ldr	r3, .L58+4
	mov	r0, r4
	add	r1, r4, #4
	mov	lr, pc
	bx	r3
	mov	r5, #512
	mov	r3, #67108864
	ldr	r2, .L58+8
	ldrb	r2, [r2, #56]	@ zero_extendqisi2
	ldrh	r0, [r4]
	ldrh	r1, [r4, #4]
	ldr	r4, .L58+12
	lsl	r2, r2, #3
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	strh	r5, [r4, r2]	@ movhi
	ldr	r3, .L58+16
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r3, r5
	mov	r1, r4
	mov	r0, #3
	ldr	r4, .L58+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L58+24
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r2, #7
	ldrne	r3, .L58+28
	strbne	r2, [r3]
	ldr	r3, .L58+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L57
	pop	{r4, r5, r6, lr}
	bx	lr
.L57:
	pop	{r4, r5, r6, lr}
	b	goToPhaseTwo
.L59:
	.align	2
.L58:
	.word	.LANCHOR0
	.word	updatePlayer
	.word	guide
	.word	shadowOAM
	.word	drawPlayer
	.word	DMANow
	.word	gameOver
	.word	state
	.word	winPhaseOne
	.size	phaseOne, .-phaseOne
	.align	2
	.global	phaseTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	phaseTwo, %function
phaseTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L62
	ldr	r3, .L62+4
	mov	r0, r4
	add	r1, r4, #4
	mov	lr, pc
	bx	r3
	mov	r5, #512
	mov	r3, #67108864
	ldr	r2, .L62+8
	ldrb	r2, [r2, #56]	@ zero_extendqisi2
	ldrh	r0, [r4]
	ldrh	r1, [r4, #4]
	ldr	r4, .L62+12
	lsl	r2, r2, #3
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	strh	r5, [r4, r2]	@ movhi
	ldr	r3, .L62+16
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r1, r4
	mov	r2, #117440512
	ldr	r4, .L62+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L63:
	.align	2
.L62:
	.word	.LANCHOR0
	.word	updatePlayer
	.word	guide
	.word	shadowOAM
	.word	drawPlayer
	.word	DMANow
	.size	phaseTwo, .-phaseTwo
	.align	2
	.global	goToPhaseThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPhaseThree, %function
goToPhaseThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4352
	ldr	r1, .L66
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L66+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L66+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L66+12
	ldr	r1, .L66+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L66+20
	ldr	r1, .L66+24
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L66+28
	mov	lr, pc
	bx	r3
	mov	r1, #5
	mov	ip, #0
	mov	r0, #96
	ldr	r2, .L66+32
	ldr	r3, .L66+36
	strb	r1, [r2]
	str	ip, [r3]
	str	r0, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	23052
	.word	DMANow
	.word	tilesetOnePal
	.word	100712448
	.word	tilesetOneTiles
	.word	100716544
	.word	bgOneMap
	.word	initPlayer
	.word	state
	.word	.LANCHOR0
	.size	goToPhaseThree, .-goToPhaseThree
	.align	2
	.global	phaseThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	phaseThree, %function
phaseThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	phaseTwo
	.size	phaseThree, .-phaseThree
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #6
	ldr	r3, .L70
	strb	r2, [r3]
	bx	lr
.L71:
	.align	2
.L70:
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L75
	push	{r4, lr}
	mov	r0, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L75+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L75+8
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	pause.part.0
.L72:
	pop	{r4, lr}
	bx	lr
.L76:
	.align	2
.L75:
	.word	1028
	.word	fillScreen4
	.word	oldButtons
	.size	pause, .-pause
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L91
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L91+8
	ldr	r7, .L91+12
	ldr	r6, .L91+16
	ldr	fp, .L91+20
	ldr	r10, .L91+24
	ldr	r9, .L91+28
	ldr	r8, .L91+32
	ldr	r5, .L91+36
.L86:
	ldrh	r2, [r4]
	strh	r2, [r7]	@ movhi
	ldrb	r3, [r6]	@ zero_extendqisi2
	ldrh	r1, [r5, #48]
	strh	r1, [r4]	@ movhi
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L78
.L80:
	.word	.L85
	.word	.L84
	.word	.L83
	.word	.L82
	.word	.L81
	.word	.L81
	.word	.L79
	.word	.L79
.L79:
	mov	lr, pc
	bx	r9
.L78:
	mov	lr, pc
	bx	r8
	b	.L86
.L81:
	mov	lr, pc
	bx	r10
	b	.L78
.L82:
	ldr	r3, .L91+40
	mov	lr, pc
	bx	r3
	b	.L78
.L83:
	ldr	r3, .L91+44
	mov	lr, pc
	bx	r3
	b	.L78
.L85:
	tst	r2, #8
	beq	.L78
	ldr	r3, .L91+48
	mov	lr, pc
	bx	r3
	b	.L78
.L84:
	mov	lr, pc
	bx	fp
	b	.L78
.L92:
	.align	2
.L91:
	.word	mgba_open
	.word	goToSplashScreen
	.word	buttons
	.word	oldButtons
	.word	state
	.word	start
	.word	phaseTwo
	.word	pause
	.word	waitForVBlank
	.word	67109120
	.word	phaseOne
	.word	drawStartInstructionsDialouge
	.word	splashScreen.part.0
	.size	main, .-main
	.text
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #7
	ldr	r3, .L94
	strb	r2, [r3]
	bx	lr
.L95:
	.align	2
.L94:
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	pause
	.size	lose, .-lose
	.global	vOff
	.global	hOff
	.comm	state,1,1
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	startPage,4,4
	.comm	winPhaseOne,4,4
	.comm	gameOver,4,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
