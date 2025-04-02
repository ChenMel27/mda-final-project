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
	mov	r1, #53760
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L8
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L8+4
	mov	lr, pc
	bx	r4
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L8+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+24
	mov	lr, pc
	bx	r3
	mov	r1, #1
	mov	ip, #0
	mov	r0, #96
	ldr	r2, .L8+28
	ldr	r3, .L8+32
	strb	r1, [r2]
	str	ip, [r3]
	str	r0, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	sTSPal
	.word	sTSTiles
	.word	100700160
	.word	sTMMap
	.word	initStartPlayer
	.word	initGuideSprite
	.word	state
	.word	.LANCHOR0
	.size	goToStart, .-goToStart
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
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L13:
	.align	2
.L12:
	.word	mgba_open
	.size	initialize, .-initialize
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
	.set	lose.part.0,splashScreen.part.0
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
	ldr	r3, .L28
	ldr	lr, .L28+4
	ldr	r1, .L28+8
	strh	lr, [ip]	@ movhi
	strb	r2, [r3]
	str	r0, [r1]
	ldr	lr, [sp], #4
	bx	lr
.L29:
	.align	2
.L28:
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
	ldr	r3, .L32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L33:
	.align	2
.L32:
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
	push	{r4, r5, r6, lr}
	mov	r0, #67108864
	mov	r5, #0
	mov	r2, #4864
	ldr	ip, .L36
	ldr	r1, .L36+4
	strh	r5, [r0]	@ movhi
	ldr	r4, .L36+8
	strh	r2, [r0]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #8]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #10]	@ movhi
	ldr	r1, .L36+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L36+16
	ldr	r1, .L36+20
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L36+24
	ldr	r1, .L36+28
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L36+32
	ldr	r1, .L36+36
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L36+40
	mov	lr, pc
	bx	r3
	mov	r1, #3
	mov	r0, #96
	ldr	r2, .L36+44
	ldr	r3, .L36+48
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	24197
	.word	23684
	.word	DMANow
	.word	foregroundPal
	.word	100679680
	.word	foregroundTiles
	.word	100720640
	.word	bgOneFrontMap
	.word	100724736
	.word	bgOneBackMap
	.word	initPlayer
	.word	state
	.word	.LANCHOR0
	.size	goToPhaseOne, .-goToPhaseOne
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
	ldr	r4, .L46
	ldr	r3, .L46+4
	mov	r0, r4
	add	r1, r4, #4
	mov	lr, pc
	bx	r3
	ldrh	r2, [r4, #4]
	ldrh	r3, [r4]
	strh	r3, [r5, #20]	@ movhi
	strh	r2, [r5, #22]	@ movhi
	ldr	r3, .L46+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L46+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L46+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L46+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L46+24
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	beq	.L39
	mov	r0, #0
	mov	r2, #2
	ldr	ip, .L46+28
	ldr	r1, .L46+32
	ldr	r3, .L46+36
	strh	ip, [r5]	@ movhi
	str	r0, [r1]
	strb	r2, [r3]
.L39:
	ldr	r3, .L46+40
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L45
	pop	{r4, r5, r6, lr}
	bx	lr
.L45:
	pop	{r4, r5, r6, lr}
	b	goToPhaseOne
.L47:
	.align	2
.L46:
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
	.word	next
	.size	start, .-start
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
	ldr	r1, .L50
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L50+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L50+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L50+12
	ldr	r1, .L50+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L50+20
	ldr	r1, .L50+24
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L50+28
	mov	lr, pc
	bx	r3
	mov	r1, #4
	mov	ip, #0
	mov	r0, #96
	ldr	r2, .L50+32
	ldr	r3, .L50+36
	strb	r1, [r2]
	str	ip, [r3]
	str	r0, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	22536
	.word	DMANow
	.word	tilesetOnePal
	.word	100696064
	.word	tilesetOneTiles
	.word	100712448
	.word	bgOneFrontMap
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
	ldr	r5, .L60
	ldr	r3, .L60+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L60+8
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L60+12
	lsl	r0, r0, #16
	lsl	ip, ip, #16
	lsl	r1, r1, #16
	lsl	r2, r2, #16
	lsr	r0, r0, #16
	lsr	ip, ip, #16
	lsr	r1, r1, #16
	lsl	r3, r3, #3
	lsr	r2, r2, #16
	strh	ip, [lr, #16]	@ movhi
	strh	r1, [lr, #18]	@ movhi
	strh	r0, [lr, #20]	@ movhi
	strh	r2, [lr, #22]	@ movhi
	strh	r4, [r5, r3]	@ movhi
	ldr	r2, .L60+16
	mov	lr, pc
	bx	r2
	mov	r3, r4
	mov	r2, #117440512
	mov	r1, r5
	mov	r0, #3
	ldr	r4, .L60+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L60+24
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r2, #7
	ldrne	r3, .L60+28
	strbne	r2, [r3]
	ldr	r3, .L60+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L59
	pop	{r4, r5, r6, lr}
	bx	lr
.L59:
	pop	{r4, r5, r6, lr}
	b	goToPhaseTwo
.L61:
	.align	2
.L60:
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
	ldr	r4, .L64
	ldr	r3, .L64+4
	mov	r0, r4
	add	r1, r4, #4
	mov	lr, pc
	bx	r3
	mov	r5, #512
	mov	r3, #67108864
	ldr	r2, .L64+8
	ldrb	r2, [r2, #56]	@ zero_extendqisi2
	ldrh	r0, [r4]
	ldrh	r1, [r4, #4]
	ldr	r4, .L64+12
	lsl	r2, r2, #3
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	strh	r5, [r4, r2]	@ movhi
	ldr	r3, .L64+16
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r1, r4
	mov	r2, #117440512
	ldr	r4, .L64+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L65:
	.align	2
.L64:
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
	ldr	r1, .L68
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L68+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L68+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L68+12
	ldr	r1, .L68+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L68+20
	ldr	r1, .L68+24
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L68+28
	mov	lr, pc
	bx	r3
	mov	r1, #5
	mov	ip, #0
	mov	r0, #96
	ldr	r2, .L68+32
	ldr	r3, .L68+36
	strb	r1, [r2]
	str	ip, [r3]
	str	r0, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L69:
	.align	2
.L68:
	.word	23052
	.word	DMANow
	.word	tilesetOnePal
	.word	100712448
	.word	tilesetOneTiles
	.word	100716544
	.word	bgOneFrontMap
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
	ldr	r3, .L72
	strb	r2, [r3]
	bx	lr
.L73:
	.align	2
.L72:
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
	ldr	r2, .L77
	push	{r4, lr}
	mov	r0, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L77+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L77+8
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	pause.part.0
.L74:
	pop	{r4, lr}
	bx	lr
.L78:
	.align	2
.L77:
	.word	1028
	.word	fillScreen4
	.word	oldButtons
	.size	pause, .-pause
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
	ldr	r3, .L80
	strb	r2, [r3]
	bx	lr
.L81:
	.align	2
.L80:
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
	mov	r3, #67108864
	mov	r0, #0
	ldr	r2, .L85
	push	{r4, lr}
	strh	r0, [r3]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L85+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+8
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	lose.part.0
.L82:
	pop	{r4, lr}
	bx	lr
.L86:
	.align	2
.L85:
	.word	1028
	.word	fillScreen4
	.word	oldButtons
	.size	lose, .-lose
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
	ldr	r3, .L102
	mov	lr, pc
	bx	r3
	ldr	r3, .L102+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L102+8
	ldr	r7, .L102+12
	ldr	r6, .L102+16
	ldr	fp, .L102+20
	ldr	r10, .L102+24
	ldr	r9, .L102+28
	ldr	r8, .L102+32
	ldr	r5, .L102+36
.L97:
	ldrh	r2, [r4]
	strh	r2, [r7]	@ movhi
	ldrb	r3, [r6]	@ zero_extendqisi2
	ldrh	r1, [r5, #48]
	strh	r1, [r4]	@ movhi
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L88
.L90:
	.word	.L96
	.word	.L95
	.word	.L94
	.word	.L93
	.word	.L92
	.word	.L92
	.word	.L91
	.word	.L89
.L92:
	mov	lr, pc
	bx	r9
.L88:
	mov	lr, pc
	bx	r8
	b	.L97
.L93:
	ldr	r3, .L102+40
	mov	lr, pc
	bx	r3
	b	.L88
.L96:
	tst	r2, #8
	beq	.L88
	ldr	r3, .L102+44
	mov	lr, pc
	bx	r3
	b	.L88
.L94:
	mov	lr, pc
	bx	r10
	b	.L88
.L95:
	mov	lr, pc
	bx	fp
	b	.L88
.L89:
	ldr	r3, .L102+48
	mov	lr, pc
	bx	r3
	b	.L88
.L91:
	ldr	r3, .L102+52
	mov	lr, pc
	bx	r3
	b	.L88
.L103:
	.align	2
.L102:
	.word	mgba_open
	.word	goToStart
	.word	buttons
	.word	oldButtons
	.word	state
	.word	start
	.word	drawStartInstructionsDialouge
	.word	phaseTwo
	.word	waitForVBlank
	.word	67109120
	.word	phaseOne
	.word	splashScreen.part.0
	.word	lose
	.word	pause
	.size	main, .-main
	.global	vOff
	.global	hOff
	.comm	state,1,1
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	next,4,4
	.comm	begin,4,4
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
