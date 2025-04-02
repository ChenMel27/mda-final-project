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
	mov	r1, #53760
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
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L12+12
	ldr	r1, .L12+16
	mov	r3, #4096
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
	.global	goToStartTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStartTwo, %function
goToStartTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4608
	mov	r1, #53760
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L28
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L28+4
	mov	lr, pc
	bx	r4
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L28+12
	ldr	r1, .L28+16
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L28+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L28+24
	mov	lr, pc
	bx	r3
	mov	lr, #436
	mov	r1, #1
	mov	ip, #0
	mov	r0, #96
	ldr	r2, .L28+28
	str	lr, [r2, #16]
	ldr	r2, .L28+32
	ldr	r3, .L28+36
	strb	r1, [r2]
	str	ip, [r3]
	str	r0, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	DMANow
	.word	sTSPal
	.word	sTSTiles
	.word	100700160
	.word	sTMMap
	.word	initStartPlayer
	.word	initGuideSprite
	.word	startPlayer
	.word	state
	.word	.LANCHOR0
	.size	goToStartTwo, .-goToStartTwo
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
	push	{r4, lr}
	ldr	r3, .L32
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #0
	mov	ip, #2
	ldr	r4, .L32+4
	ldr	r0, .L32+8
	strh	r3, [r2]	@ movhi
	ldr	lr, .L32+12
	strh	r4, [r2]	@ movhi
	ldr	r1, .L32+16
	ldr	r2, .L32+20
	strb	ip, [r0]
	str	r3, [lr]
	str	r2, [r1]
	pop	{r4, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	waitForVBlank
	.word	1044
	.word	state
	.word	startPage
	.word	videoBuffer
	.word	100704256
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
	ldr	r3, .L38
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+4
	ldr	r4, [r3]
	cmp	r4, #1
	beq	.L37
	pop	{r4, lr}
	bx	lr
.L37:
	mov	r2, #0
	str	r2, [r3]
	bl	goToStartTwo
	ldr	r3, .L38+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	drawStartInstructionsDialouge
	.word	begin
	.word	state
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
	ldr	ip, .L42
	ldr	r1, .L42+4
	strh	r5, [r0]	@ movhi
	ldr	r4, .L42+8
	strh	r2, [r0]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #8]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #10]	@ movhi
	ldr	r1, .L42+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L42+16
	ldr	r1, .L42+20
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L42+24
	ldr	r1, .L42+28
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L42+32
	ldr	r1, .L42+36
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L42+40
	mov	lr, pc
	bx	r3
	mov	r1, #3
	mov	r0, #96
	ldr	r2, .L42+44
	ldr	r3, .L42+48
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	.align	2
.L42:
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
	ldr	r4, .L53
	ldr	r3, .L53+4
	mov	r0, r4
	add	r1, r4, #4
	mov	lr, pc
	bx	r3
	ldrh	r2, [r4, #4]
	ldrh	r3, [r4]
	strh	r3, [r5, #20]	@ movhi
	strh	r2, [r5, #22]	@ movhi
	ldr	r3, .L53+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L53+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L53+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L53+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L53+24
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L51
	ldr	r3, .L53+28
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L52
.L44:
	pop	{r4, r5, r6, lr}
	bx	lr
.L51:
	ldr	r3, .L53+32
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #2
	ldr	r1, .L53+36
	ldr	lr, .L53+40
	strh	r3, [r5]	@ movhi
	strh	r1, [r5]	@ movhi
	str	r3, [lr]
	ldr	r3, .L53+28
	ldr	r3, [r3]
	ldr	r0, .L53+44
	ldr	r2, .L53+48
	ldr	r1, .L53+52
	cmp	r3, #1
	strb	ip, [r0]
	str	r1, [r2]
	bne	.L44
.L52:
	pop	{r4, r5, r6, lr}
	b	goToPhaseOne
.L54:
	.align	2
.L53:
	.word	.LANCHOR0
	.word	updateStartPlayer
	.word	drawStartPlayer
	.word	drawGuideSprite
	.word	DMANow
	.word	shadowOAM
	.word	checkPlayerGuideCollision
	.word	next
	.word	waitForVBlank
	.word	1044
	.word	startPage
	.word	state
	.word	videoBuffer
	.word	100704256
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
	ldr	r1, .L57
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L57+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L57+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L57+12
	ldr	r1, .L57+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L57+20
	ldr	r1, .L57+24
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L57+28
	mov	lr, pc
	bx	r3
	mov	r1, #4
	mov	ip, #0
	mov	r0, #96
	ldr	r2, .L57+32
	ldr	r3, .L57+36
	strb	r1, [r2]
	str	ip, [r3]
	str	r0, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L58:
	.align	2
.L57:
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
	ldr	r5, .L67
	ldr	r3, .L67+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L67+8
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L67+12
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
	ldr	r2, .L67+16
	mov	lr, pc
	bx	r2
	mov	r3, r4
	mov	r2, #117440512
	mov	r1, r5
	mov	r0, #3
	ldr	r4, .L67+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L67+24
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r2, #7
	ldrne	r3, .L67+28
	strbne	r2, [r3]
	ldr	r3, .L67+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L66
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	pop	{r4, r5, r6, lr}
	b	goToPhaseTwo
.L68:
	.align	2
.L67:
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
	ldr	r4, .L71
	ldr	r3, .L71+4
	mov	r0, r4
	add	r1, r4, #4
	mov	lr, pc
	bx	r3
	mov	r5, #512
	mov	r3, #67108864
	ldr	r2, .L71+8
	ldrb	r2, [r2, #56]	@ zero_extendqisi2
	ldrh	r0, [r4]
	ldrh	r1, [r4, #4]
	ldr	r4, .L71+12
	lsl	r2, r2, #3
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	strh	r5, [r4, r2]	@ movhi
	ldr	r3, .L71+16
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r1, r4
	mov	r2, #117440512
	ldr	r4, .L71+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L72:
	.align	2
.L71:
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
	ldr	r1, .L75
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L75+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L75+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L75+12
	ldr	r1, .L75+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L75+20
	ldr	r1, .L75+24
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L75+28
	mov	lr, pc
	bx	r3
	mov	r1, #5
	mov	ip, #0
	mov	r0, #96
	ldr	r2, .L75+32
	ldr	r3, .L75+36
	strb	r1, [r2]
	str	ip, [r3]
	str	r0, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L76:
	.align	2
.L75:
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
	ldr	r3, .L79
	strb	r2, [r3]
	bx	lr
.L80:
	.align	2
.L79:
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
	ldr	r2, .L84
	push	{r4, lr}
	mov	r0, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L84+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L84+8
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	pause.part.0
.L81:
	pop	{r4, lr}
	bx	lr
.L85:
	.align	2
.L84:
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
	ldr	r3, .L87
	strb	r2, [r3]
	bx	lr
.L88:
	.align	2
.L87:
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
	ldr	r2, .L92
	push	{r4, lr}
	strh	r0, [r3]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L92+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L92+8
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	lose.part.0
.L89:
	pop	{r4, lr}
	bx	lr
.L93:
	.align	2
.L92:
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, fp, lr}
	ldr	r3, .L108
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L108+8
	ldr	r7, .L108+12
	ldr	r5, .L108+16
	ldr	fp, .L108+20
	ldr	r10, .L108+24
	ldr	r9, .L108+28
	ldr	r8, .L108+32
	ldr	r6, .L108+36
.L106:
	ldrh	r2, [r4]
	strh	r2, [r7]	@ movhi
	ldrb	r3, [r5]	@ zero_extendqisi2
	ldrh	r1, [r6, #48]
	strh	r1, [r4]	@ movhi
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L95
.L97:
	.word	.L103
	.word	.L102
	.word	.L101
	.word	.L100
	.word	.L99
	.word	.L99
	.word	.L98
	.word	.L96
.L99:
	mov	lr, pc
	bx	r9
.L95:
	mov	lr, pc
	bx	r8
	b	.L106
.L100:
	ldr	r3, .L108+40
	mov	lr, pc
	bx	r3
	b	.L95
.L103:
	tst	r2, #8
	beq	.L95
	ldr	r3, .L108+44
	mov	lr, pc
	bx	r3
	b	.L95
.L101:
	ldr	r3, .L108+48
	mov	lr, pc
	bx	r3
	ldr	r3, [r10]
	cmp	r3, #1
	bne	.L95
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [r10]
	ldr	r3, .L108+52
	mov	lr, pc
	bx	r3
	ldr	r3, [sp, #4]
	strb	r3, [r5]
	b	.L95
.L102:
	mov	lr, pc
	bx	fp
	b	.L95
.L96:
	ldr	r3, .L108+56
	mov	lr, pc
	bx	r3
	b	.L95
.L98:
	ldr	r3, .L108+60
	mov	lr, pc
	bx	r3
	b	.L95
.L109:
	.align	2
.L108:
	.word	mgba_open
	.word	goToSplashScreen
	.word	buttons
	.word	oldButtons
	.word	state
	.word	start
	.word	begin
	.word	phaseTwo
	.word	waitForVBlank
	.word	67109120
	.word	phaseOne
	.word	splashScreen.part.0
	.word	drawStartInstructionsDialouge
	.word	goToStartTwo
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
