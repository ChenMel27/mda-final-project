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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"SPLASH\000"
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
	mov	ip, #100663296
	mov	r3, #67108864
	push	{r4, r5, r6, lr}
	mov	r4, #0
	ldr	r2, .L4
	ldr	r0, .L4+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L4+8
	str	ip, [r0]
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L4+12
	ldr	r5, .L4+16
	mov	lr, pc
	bx	r5
	ldr	r0, .L4+20
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	ldr	r5, .L4+28
	mov	r3, #15
	mov	r1, #70
	mov	r0, #100
	ldr	r2, .L4+32
	mov	lr, pc
	bx	r5
	ldr	r2, .L4+36
	ldr	r3, .L4+40
	str	r4, [r2]
	ldr	ip, .L4+44
	ldr	r0, .L4+48
	ldr	r1, .L4+52
	ldr	r2, .L4+56
	str	r4, [r3]
	ldr	r3, .L4+60
	str	r4, [ip]
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+64
	strb	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1028
	.word	videoBuffer
	.word	splashScreenPal
	.word	-2147483392
	.word	DMANow
	.word	splashScreenBitmap
	.word	drawFullscreenImage4
	.word	drawString4
	.word	.LC0
	.word	gameOver
	.word	winPhaseOne
	.word	winPhaseTwo
	.word	winPhaseThree
	.word	next
	.word	begin
	.word	initHealth
	.word	state
	.size	goToSplashScreen, .-goToSplashScreen
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose.part.0, %function
lose.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L10
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L9
	pop	{r4, lr}
	bx	lr
.L9:
	bl	goToSplashScreen
	ldr	r3, .L10+4
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	buttons
	.word	state
	.size	lose.part.0, .-lose.part.0
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
	push	{r4, r5, r6, lr}
	mov	r4, #67108864
	mov	r5, #0
	ldr	r3, .L14
	strh	r5, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #4608
	mov	r2, #53760
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	ldr	r4, .L14+4
	mov	r2, #83886080
	ldr	r1, .L14+8
	mov	lr, pc
	bx	r4
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L14+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L14+16
	ldr	r1, .L14+20
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L14+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L14+28
	mov	lr, pc
	bx	r3
	mov	r1, #1
	mov	r0, #96
	ldr	r2, .L14+32
	ldr	r3, .L14+36
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	hideSprites
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
	ldr	r3, .L22
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	bl	goToStart
	mov	r2, #1
	ldr	r3, .L22+4
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L23:
	.align	2
.L22:
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
	ldr	r3, .L26
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	splashScreen.part.0
.L27:
	.align	2
.L26:
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
	ldr	r4, .L30
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L30+4
	mov	lr, pc
	bx	r4
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L30+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L30+12
	ldr	r1, .L30+16
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L30+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+24
	mov	lr, pc
	bx	r3
	mov	lr, #436
	mov	r1, #1
	mov	ip, #0
	mov	r0, #96
	ldr	r2, .L30+28
	str	lr, [r2, #16]
	ldr	r2, .L30+32
	ldr	r3, .L30+36
	strb	r1, [r2]
	str	ip, [r3]
	str	r0, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L31:
	.align	2
.L30:
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
	ldr	r3, .L34
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #0
	mov	ip, #2
	ldr	r4, .L34+4
	ldr	r0, .L34+8
	strh	r3, [r2]	@ movhi
	ldr	lr, .L34+12
	strh	r4, [r2]	@ movhi
	ldr	r1, .L34+16
	ldr	r2, .L34+20
	strb	ip, [r0]
	str	r3, [lr]
	str	r2, [r1]
	pop	{r4, lr}
	bx	lr
.L35:
	.align	2
.L34:
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
	ldr	r3, .L40
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+4
	ldr	r4, [r3]
	cmp	r4, #1
	beq	.L39
	pop	{r4, lr}
	bx	lr
.L39:
	mov	r2, #0
	str	r2, [r3]
	bl	goToStartTwo
	ldr	r3, .L40+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L41:
	.align	2
.L40:
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
	mov	r3, #5888
	ldr	ip, .L44
	ldr	r2, .L44+4
	ldr	r1, .L44+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L44+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L44+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L44+20
	ldr	r1, .L44+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L44+28
	ldr	r1, .L44+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L44+36
	ldr	r1, .L44+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L44+44
	ldr	r1, .L44+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L44+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L44+56
	mov	lr, pc
	bx	r3
	mov	r1, #3
	mov	r0, #96
	ldr	r2, .L44+60
	ldr	r3, .L44+64
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	24198
	.word	23172
	.word	23685
	.word	DMANow
	.word	foregroundPal
	.word	100679680
	.word	foregroundTiles
	.word	100716544
	.word	bgOneFrontMap
	.word	100720640
	.word	bgOneBackMap
	.word	100724736
	.word	dayTMMap
	.word	initPlayer
	.word	initHealth
	.word	state
	.word	.LANCHOR0
	.size	goToPhaseOne, .-goToPhaseOne
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
	ldr	r3, .L48
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToPhaseOne
.L49:
	.align	2
.L48:
	.word	mgba_open
	.size	initialize, .-initialize
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
	ldr	r4, .L59
	ldr	r3, .L59+4
	mov	r0, r4
	add	r1, r4, #4
	mov	lr, pc
	bx	r3
	ldrh	r2, [r4, #4]
	ldrh	r3, [r4]
	strh	r3, [r5, #20]	@ movhi
	strh	r2, [r5, #22]	@ movhi
	ldr	r3, .L59+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L59+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L59+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L59+24
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L57
	ldr	r3, .L59+28
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L58
.L50:
	pop	{r4, r5, r6, lr}
	bx	lr
.L57:
	ldr	r3, .L59+32
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #2
	ldr	r1, .L59+36
	ldr	lr, .L59+40
	strh	r3, [r5]	@ movhi
	strh	r1, [r5]	@ movhi
	str	r3, [lr]
	ldr	r3, .L59+28
	ldr	r3, [r3]
	ldr	r0, .L59+44
	ldr	r2, .L59+48
	ldr	r1, .L59+52
	cmp	r3, #1
	strb	ip, [r0]
	str	r1, [r2]
	bne	.L50
.L58:
	pop	{r4, r5, r6, lr}
	b	goToPhaseOne
.L60:
	.align	2
.L59:
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
	push	{r4, r5, r6, lr}
	mov	r0, #67108864
	mov	r5, #0
	mov	r3, #5888
	ldr	ip, .L63
	ldr	r2, .L63+4
	ldr	r1, .L63+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L63+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L63+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L63+20
	ldr	r1, .L63+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L63+28
	ldr	r1, .L63+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L63+36
	ldr	r1, .L63+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L63+44
	ldr	r1, .L63+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L63+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L63+56
	mov	lr, pc
	bx	r3
	mov	r1, #4
	mov	r0, #96
	ldr	r2, .L63+60
	ldr	r3, .L63+64
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	24198
	.word	23172
	.word	23685
	.word	DMANow
	.word	foregroundPal
	.word	100679680
	.word	foregroundTiles
	.word	100716544
	.word	bgTwoFrontMap
	.word	100720640
	.word	bgTwoBackMap
	.word	100724736
	.word	dayTMMap
	.word	initPlayerTwo
	.word	initSnow
	.word	state
	.word	.LANCHOR0
	.size	goToPhaseTwo, .-goToPhaseTwo
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
	push	{r4, r5, r6, lr}
	mov	r0, #67108864
	mov	r5, #0
	mov	r3, #5888
	ldr	ip, .L67
	ldr	r2, .L67+4
	ldr	r1, .L67+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L67+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L67+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L67+20
	ldr	r1, .L67+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L67+28
	ldr	r1, .L67+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L67+36
	ldr	r1, .L67+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L67+44
	ldr	r1, .L67+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L67+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+60
	mov	lr, pc
	bx	r3
	mov	r1, #5
	mov	r0, #96
	ldr	r2, .L67+64
	ldr	r3, .L67+68
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L68:
	.align	2
.L67:
	.word	24198
	.word	23172
	.word	23685
	.word	DMANow
	.word	foregroundPal
	.word	100679680
	.word	foregroundTiles
	.word	100716544
	.word	bgThreeFrontMap
	.word	100720640
	.word	bgTwoBackMap
	.word	100724736
	.word	dayTMMap
	.word	initPlayerThree
	.word	initSnow
	.word	initCountdownTimer
	.word	state
	.word	.LANCHOR0
	.size	goToPhaseThree, .-goToPhaseThree
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"PAUSE\000"
	.text
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
	mov	r3, #67108864
	push	{r4, lr}
	mov	lr, #100663296
	ldr	r2, .L71
	ldr	ip, .L71+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L71+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L71+12
	ldr	r4, .L71+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L71+20
	ldr	r3, .L71+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L71+28
	mov	r3, #15
	ldr	r2, .L71+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L71+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	1028
	.word	videoBuffer
	.word	splashScreenPal
	.word	-2147483392
	.word	DMANow
	.word	splashScreenBitmap
	.word	drawFullscreenImage4
	.word	drawString4
	.word	.LC1
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
	@ link register save eliminated.
	b	splashScreen
	.size	pause, .-pause
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"LOSE\000"
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
	mov	r3, #67108864
	push	{r4, lr}
	mov	lr, #100663296
	ldr	r2, .L76
	ldr	ip, .L76+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L76+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L76+12
	ldr	r4, .L76+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L76+20
	ldr	r3, .L76+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L76+28
	mov	r3, #15
	ldr	r2, .L76+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L76+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L77:
	.align	2
.L76:
	.word	1028
	.word	videoBuffer
	.word	splashScreenPal
	.word	-2147483392
	.word	DMANow
	.word	splashScreenBitmap
	.word	drawFullscreenImage4
	.word	drawString4
	.word	.LC2
	.word	state
	.size	goToLose, .-goToLose
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
	ldr	r5, .L87
	ldr	r3, .L87+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+8
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L87+12
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L87+16
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
	ldr	r2, .L87+20
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L87+24
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L87+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L87+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L85
	ldr	r3, .L87+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L86
.L78:
	pop	{r4, r5, r6, lr}
	bx	lr
.L85:
	bl	goToLose
	ldr	r3, .L87+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L78
.L86:
	pop	{r4, r5, r6, lr}
	b	goToPhaseTwo
.L88:
	.align	2
.L87:
	.word	.LANCHOR0
	.word	updatePlayer
	.word	updateHealth
	.word	guide
	.word	shadowOAM
	.word	drawPlayer
	.word	drawHealth
	.word	DMANow
	.word	gameOver
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
	ldr	r5, .L98
	ldr	r3, .L98+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L98+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L98+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L98+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L98+20
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
	ldr	r2, .L98+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L98+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L98+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L98+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L98+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L96
	ldr	r3, .L98+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L97
.L89:
	pop	{r4, r5, r6, lr}
	bx	lr
.L96:
	bl	goToLose
	ldr	r3, .L98+44
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L89
.L97:
	pop	{r4, r5, r6, lr}
	b	goToPhaseThree
.L99:
	.align	2
.L98:
	.word	.LANCHOR0
	.word	updatePlayerTwo
	.word	updateSnow
	.word	updateHealth
	.word	guide
	.word	shadowOAM
	.word	drawPlayerTwo
	.word	drawSnow
	.word	drawHealth
	.word	DMANow
	.word	gameOver
	.word	winPhaseTwo
	.size	phaseTwo, .-phaseTwo
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
	ldr	r3, .L102
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L103:
	.align	2
.L102:
	.word	oldButtons
	.size	lose, .-lose
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"WIN\000"
	.text
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	push	{r4, lr}
	mov	lr, #100663296
	ldr	r2, .L106
	ldr	ip, .L106+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L106+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L106+12
	ldr	r4, .L106+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L106+20
	ldr	r3, .L106+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L106+28
	mov	r3, #15
	ldr	r2, .L106+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L106+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L107:
	.align	2
.L106:
	.word	1028
	.word	videoBuffer
	.word	splashScreenPal
	.word	-2147483392
	.word	DMANow
	.word	splashScreenBitmap
	.word	drawFullscreenImage4
	.word	drawString4
	.word	.LC3
	.word	state
	.size	goToWin, .-goToWin
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L117
	ldr	r3, .L117+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+16
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L117+20
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L117+24
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
	ldr	r2, .L117+28
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L117+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+40
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L117+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L117+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L115
	ldr	r3, .L117+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L116
.L108:
	pop	{r4, r5, r6, lr}
	bx	lr
.L115:
	bl	goToLose
	ldr	r3, .L117+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L108
.L116:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L118:
	.align	2
.L117:
	.word	.LANCHOR0
	.word	updatePlayerThree
	.word	updateSnow
	.word	updateHealth
	.word	updatePlayerPalette
	.word	guide
	.word	shadowOAM
	.word	drawPlayerThree
	.word	drawSnow
	.word	drawHealth
	.word	drawTimer
	.word	DMANow
	.word	gameOver
	.word	winPhaseThree
	.size	phaseThree, .-phaseThree
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
	ldr	r3, .L138
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	ldr	r3, .L138+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L138+8
	ldr	r8, .L138+12
	ldr	r5, .L138+16
	ldr	fp, .L138+20
	ldr	r10, .L138+24
	ldr	r9, .L138+28
	ldr	r7, .L138+32
	ldr	r6, .L138+36
.L133:
	ldrh	r2, [r4]
	strh	r2, [r8]	@ movhi
	ldrb	r3, [r5]	@ zero_extendqisi2
	ldrh	r1, [r6, #48]
	strh	r1, [r4]	@ movhi
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L120
.L122:
	.word	.L129
	.word	.L128
	.word	.L127
	.word	.L126
	.word	.L125
	.word	.L124
	.word	.L123
	.word	.L121
	.word	.L121
.L121:
	tst	r2, #8
	ldrne	r3, .L138+40
	movne	lr, pc
	bxne	r3
.L120:
	mov	lr, pc
	bx	r7
	b	.L133
.L123:
	tst	r2, #8
	beq	.L120
	ldr	r3, .L138+44
	mov	lr, pc
	bx	r3
	b	.L120
.L124:
	ldr	r3, .L138+48
	mov	lr, pc
	bx	r3
	b	.L120
.L125:
	ldr	r3, .L138+52
	mov	lr, pc
	bx	r3
	b	.L120
.L126:
	ldr	r3, .L138+56
	mov	lr, pc
	bx	r3
	b	.L120
.L127:
	mov	lr, pc
	bx	r10
	ldr	r3, [r9]
	cmp	r3, #1
	bne	.L120
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [r9]
	ldr	r3, .L138+60
	mov	lr, pc
	bx	r3
	ldr	r3, [sp, #4]
	strb	r3, [r5]
	b	.L120
.L129:
	tst	r2, #8
	beq	.L120
	ldr	r3, .L138+64
	mov	lr, pc
	bx	r3
	b	.L120
.L128:
	mov	lr, pc
	bx	fp
	b	.L120
.L139:
	.align	2
.L138:
	.word	mgba_open
	.word	goToPhaseOne
	.word	buttons
	.word	oldButtons
	.word	state
	.word	start
	.word	drawStartInstructionsDialouge
	.word	begin
	.word	waitForVBlank
	.word	67109120
	.word	lose.part.0
	.word	pause.part.0
	.word	phaseThree
	.word	phaseTwo
	.word	phaseOne
	.word	goToStartTwo
	.word	splashScreen.part.0
	.size	main, .-main
	.text
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L150
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L150+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L149
	pop	{r4, lr}
	bx	lr
.L149:
	bl	goToSplashScreen
	ldr	r3, .L150+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L151:
	.align	2
.L150:
	.word	oldButtons
	.word	buttons
	.word	state
	.size	win, .-win
	.global	vOff
	.global	hOff
	.comm	state,1,1
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	healthBarFrames,72,4
	.comm	next,4,4
	.comm	begin,4,4
	.comm	startPage,4,4
	.comm	winPhaseThree,4,4
	.comm	playerPaletteWork,512,4
	.comm	winPhaseTwo,4,4
	.comm	snows,180,4
	.comm	sbb,4,4
	.comm	winPhaseOne,4,4
	.comm	gameOver,4,4
	.comm	isDucking,4,4
	.comm	hikerFrames,12,4
	.comm	hikerFrame,4,4
	.comm	hikerFrameCounter,4,4
	.comm	hikerFrameDelay,4,4
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
