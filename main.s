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
	.word	.LANCHOR0
	.word	initHealth
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
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose.part.0, %function
lose.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L14
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L13
	pop	{r4, lr}
	bx	lr
.L13:
	bl	goToSplashScreen
	ldr	r3, .L14+4
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L15:
	.align	2
.L14:
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
	ldr	r3, .L18
	strh	r5, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #4608
	mov	r2, #53760
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	ldr	r4, .L18+4
	mov	r2, #83886080
	ldr	r1, .L18+8
	mov	lr, pc
	bx	r4
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L18+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L18+16
	ldr	r1, .L18+20
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L18+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+28
	mov	lr, pc
	bx	r3
	mov	r1, #1
	mov	r0, #96
	ldr	r2, .L18+32
	ldr	r3, .L18+36
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L19:
	.align	2
.L18:
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
	ldr	r3, .L26
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	bl	goToStart
	mov	r2, #1
	ldr	r3, .L26+4
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	buttons
	.word	state
	.size	splashScreen.part.0, .-splashScreen.part.0
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
	ldr	r3, .L30
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	splashScreen.part.0
.L31:
	.align	2
.L30:
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
	ldr	r4, .L34
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L34+4
	mov	lr, pc
	bx	r4
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L34+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L34+12
	ldr	r1, .L34+16
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L34+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L34+24
	mov	lr, pc
	bx	r3
	mov	r0, #436
	mov	r2, #1
	mov	r1, #0
	mov	ip, #96
	ldr	r3, .L34+28
	str	r0, [r3, #16]
	ldr	r0, .L34+32
	ldr	lr, .L34+36
	ldr	r3, .L34+40
	strb	r2, [r0]
	str	r1, [lr]
	stmib	r3, {r1, ip}
	str	r2, [r3, #12]
	pop	{r4, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	DMANow
	.word	sTSPal
	.word	sTSTiles
	.word	100700160
	.word	sTMMap
	.word	initStartPlayer
	.word	initGuideSprite
	.word	startPlayer
	.word	state
	.word	next
	.word	.LANCHOR0
	.size	goToStartTwo, .-goToStartTwo
	.align	2
	.global	goToStartThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStartThree, %function
goToStartThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4608
	mov	r1, #53760
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L38
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L38+4
	mov	lr, pc
	bx	r4
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L38+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L38+12
	ldr	r1, .L38+16
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L38+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+24
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	lr, #96
	mov	r1, #1
	ldr	r3, .L38+28
	ldr	ip, [r3, #16]
	str	r0, [r3, #4]
	str	lr, [r3, #8]
	ldr	r0, [r3, #20]
	ldr	r3, .L38+32
	ldr	r2, .L38+36
	strb	r1, [r3]
	str	ip, [r2, #16]
	str	r0, [r2, #20]
	pop	{r4, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	DMANow
	.word	sTSPal
	.word	sTSTiles
	.word	100700160
	.word	sTMMap
	.word	initStartPlayer
	.word	initGuideSprite
	.word	.LANCHOR0
	.word	state
	.word	startPlayer
	.size	goToStartThree, .-goToStartThree
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #256
	mov	r4, #67108864
	mov	r5, #0
	ldr	r8, .L42
	ldr	r7, .L42+4
	ldr	r6, .L42+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L42+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L42+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L42+20
	ldr	r1, .L42+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #2
	ldr	r1, .L42+28
	ldr	r3, .L42+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #24]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	100679680
	.word	dialogueFontTiles
	.word	DMANow
	.word	dialogueFontPal
	.word	5124
	.word	100704256
	.word	diaOneMap
	.word	.LANCHOR0
	.word	state
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
	ldr	r3, .L65
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, r5, r6, lr}
	bne	.L62
	ldr	r4, .L65+4
.L45:
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L46
	pop	{r4, r5, r6, lr}
	bx	lr
.L62:
	ldr	r3, .L65+8
	ldrh	r3, [r3]
	tst	r3, #8
	ldr	r4, .L65+4
	bne	.L45
	ldr	r3, [r4, #24]
	add	r2, r3, #1
	str	r2, [r4, #24]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L45
.L47:
	.word	.L54
	.word	.L53
	.word	.L52
	.word	.L51
	.word	.L50
	.word	.L49
	.word	.L48
	.word	.L46
.L46:
	mov	r3, #0
	str	r3, [r4]
	bl	goToStartTwo
	mov	r2, #1
	ldr	r3, .L65+12
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L48:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L65+16
	ldr	r1, .L65+20
	ldr	r5, .L65+24
	mov	lr, pc
	bx	r5
	b	.L45
.L54:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L65+16
	ldr	r1, .L65+28
	ldr	r5, .L65+24
	mov	lr, pc
	bx	r5
	b	.L45
.L53:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L65+16
	ldr	r1, .L65+32
	ldr	r5, .L65+24
	mov	lr, pc
	bx	r5
	b	.L45
.L52:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L65+16
	ldr	r1, .L65+36
	ldr	r5, .L65+24
	mov	lr, pc
	bx	r5
	b	.L45
.L51:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L65+16
	ldr	r1, .L65+40
	ldr	r5, .L65+24
	mov	lr, pc
	bx	r5
	b	.L45
.L50:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L65+16
	ldr	r1, .L65+44
	ldr	r5, .L65+24
	mov	lr, pc
	bx	r5
	b	.L45
.L49:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L65+16
	ldr	r1, .L65+48
	ldr	r5, .L65+24
	mov	lr, pc
	bx	r5
	b	.L45
.L66:
	.align	2
.L65:
	.word	oldButtons
	.word	.LANCHOR0
	.word	buttons
	.word	state
	.word	100704256
	.word	diaEightMap
	.word	DMANow
	.word	diaTwoMap
	.word	diaThreeMap
	.word	diaFourMap
	.word	diaFiveMap
	.word	diaSixMap
	.word	diaSevenMap
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
	mov	lr, #0
	mov	r3, #5888
	ldr	ip, .L71
	ldr	r2, .L71+4
	ldr	r1, .L71+8
	strh	lr, [r0]	@ movhi
	ldr	r4, .L71+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L71+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L71+20
	ldr	r1, .L71+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L71+28
	ldr	r1, .L71+32
	mov	lr, pc
	bx	r4
	ldr	r5, .L71+36
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L71+40
	ldr	r1, .L71+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L71+48
	ldr	r1, .L71+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #28]
	cmp	r3, #0
	beq	.L70
.L68:
	mov	r1, #3
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L71+56
	strb	r1, [r2]
	str	r3, [r5, #28]
	str	r3, [r5, #4]
	str	r0, [r5, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L70:
	ldr	r3, .L71+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+64
	mov	lr, pc
	bx	r3
	b	.L68
.L72:
	.align	2
.L71:
	.word	24198
	.word	23172
	.word	23685
	.word	DMANow
	.word	foregroundPal
	.word	100679680
	.word	foregroundTiles
	.word	100716544
	.word	bgOneFrontMap
	.word	.LANCHOR0
	.word	100720640
	.word	bgOneBackMap
	.word	100724736
	.word	dayTMMap
	.word	state
	.word	initPlayer
	.word	initHealth
	.size	goToPhaseOne, .-goToPhaseOne
	.align	2
	.global	goToPhaseTwoInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPhaseTwoInstructions, %function
goToPhaseTwoInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #256
	mov	r4, #67108864
	mov	r5, #0
	ldr	r8, .L75
	ldr	r7, .L75+4
	ldr	r6, .L75+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L75+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L75+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L75+20
	ldr	r1, .L75+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r1, .L75+28
	ldr	r3, .L75+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #24]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L76:
	.align	2
.L75:
	.word	100679680
	.word	dialogueFontTiles
	.word	DMANow
	.word	dialogueFontPal
	.word	5124
	.word	100704256
	.word	diaOneMap
	.word	.LANCHOR0
	.word	state
	.size	goToPhaseTwoInstructions, .-goToPhaseTwoInstructions
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
	mov	lr, #0
	mov	r3, #5888
	ldr	ip, .L81
	ldr	r2, .L81+4
	ldr	r1, .L81+8
	strh	lr, [r0]	@ movhi
	ldr	r4, .L81+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L81+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L81+20
	ldr	r1, .L81+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L81+28
	ldr	r1, .L81+32
	mov	lr, pc
	bx	r4
	ldr	r5, .L81+36
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L81+40
	ldr	r1, .L81+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L81+48
	ldr	r1, .L81+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #28]
	cmp	r3, #0
	beq	.L80
.L78:
	mov	r1, #5
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L81+56
	strb	r1, [r2]
	str	r3, [r5, #28]
	str	r3, [r5, #4]
	str	r0, [r5, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L80:
	ldr	r3, .L81+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+64
	mov	lr, pc
	bx	r3
	b	.L78
.L82:
	.align	2
.L81:
	.word	24198
	.word	23172
	.word	23685
	.word	DMANow
	.word	foregroundPal
	.word	100679680
	.word	foregroundTiles
	.word	100716544
	.word	bgTwoFrontMap
	.word	.LANCHOR0
	.word	100720640
	.word	bgTwoBackMap
	.word	100724736
	.word	duskTMMap
	.word	state
	.word	initPlayerTwo
	.word	initSnow
	.size	goToPhaseTwo, .-goToPhaseTwo
	.align	2
	.global	phaseTwoInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	phaseTwoInstructions, %function
phaseTwoInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L101
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L101+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L101+8
	ldr	r3, [r2, #24]
	add	r1, r3, #1
	push	{r4, lr}
	str	r1, [r2, #24]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L83
.L86:
	.word	.L93
	.word	.L92
	.word	.L91
	.word	.L90
	.word	.L89
	.word	.L88
	.word	.L87
	.word	.L85
.L88:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L101+12
	ldr	r1, .L101+16
	ldr	r4, .L101+20
	mov	lr, pc
	bx	r4
.L83:
	pop	{r4, lr}
	bx	lr
.L85:
	pop	{r4, lr}
	b	goToPhaseTwo
.L93:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L101+12
	ldr	r1, .L101+24
	ldr	r4, .L101+20
	mov	lr, pc
	bx	r4
	b	.L83
.L92:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L101+12
	ldr	r1, .L101+28
	ldr	r4, .L101+20
	mov	lr, pc
	bx	r4
	b	.L83
.L91:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L101+12
	ldr	r1, .L101+32
	ldr	r4, .L101+20
	mov	lr, pc
	bx	r4
	b	.L83
.L90:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L101+12
	ldr	r1, .L101+36
	ldr	r4, .L101+20
	mov	lr, pc
	bx	r4
	b	.L83
.L89:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L101+12
	ldr	r1, .L101+40
	ldr	r4, .L101+20
	mov	lr, pc
	bx	r4
	b	.L83
.L87:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L101+12
	ldr	r1, .L101+44
	ldr	r4, .L101+20
	mov	lr, pc
	bx	r4
	b	.L83
.L102:
	.align	2
.L101:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	100704256
	.word	diaSevenMap
	.word	DMANow
	.word	diaTwoMap
	.word	diaThreeMap
	.word	diaFourMap
	.word	diaFiveMap
	.word	diaSixMap
	.word	diaEightMap
	.size	phaseTwoInstructions, .-phaseTwoInstructions
	.align	2
	.global	goToPhaseThreeInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPhaseThreeInstructions, %function
goToPhaseThreeInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #256
	mov	r4, #67108864
	mov	r5, #0
	ldr	r8, .L105
	ldr	r7, .L105+4
	ldr	r6, .L105+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L105+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L105+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L105+20
	ldr	r1, .L105+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r1, .L105+28
	ldr	r3, .L105+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #24]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L106:
	.align	2
.L105:
	.word	100679680
	.word	dialogueFontTiles
	.word	DMANow
	.word	dialogueFontPal
	.word	5124
	.word	100704256
	.word	diaOneMap
	.word	.LANCHOR0
	.word	state
	.size	goToPhaseThreeInstructions, .-goToPhaseThreeInstructions
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
	ldr	ip, .L109
	ldr	r2, .L109+4
	ldr	r1, .L109+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L109+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L109+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L109+20
	ldr	r1, .L109+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L109+28
	ldr	r1, .L109+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L109+36
	ldr	r1, .L109+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L109+44
	ldr	r1, .L109+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L109+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L109+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L109+60
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L109+64
	ldr	r3, .L109+68
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L110:
	.align	2
.L109:
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
	.align	2
	.global	phaseThreeInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	phaseThreeInstructions, %function
phaseThreeInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L129
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L129+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L129+8
	ldr	r3, [r2, #24]
	add	r1, r3, #1
	push	{r4, lr}
	str	r1, [r2, #24]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L111
.L114:
	.word	.L121
	.word	.L120
	.word	.L119
	.word	.L118
	.word	.L117
	.word	.L116
	.word	.L115
	.word	.L113
.L116:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L129+12
	ldr	r1, .L129+16
	ldr	r4, .L129+20
	mov	lr, pc
	bx	r4
.L111:
	pop	{r4, lr}
	bx	lr
.L113:
	pop	{r4, lr}
	b	goToPhaseThree
.L121:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L129+12
	ldr	r1, .L129+24
	ldr	r4, .L129+20
	mov	lr, pc
	bx	r4
	b	.L111
.L120:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L129+12
	ldr	r1, .L129+28
	ldr	r4, .L129+20
	mov	lr, pc
	bx	r4
	b	.L111
.L119:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L129+12
	ldr	r1, .L129+32
	ldr	r4, .L129+20
	mov	lr, pc
	bx	r4
	b	.L111
.L118:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L129+12
	ldr	r1, .L129+36
	ldr	r4, .L129+20
	mov	lr, pc
	bx	r4
	b	.L111
.L117:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L129+12
	ldr	r1, .L129+40
	ldr	r4, .L129+20
	mov	lr, pc
	bx	r4
	b	.L111
.L115:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L129+12
	ldr	r1, .L129+44
	ldr	r4, .L129+20
	mov	lr, pc
	bx	r4
	b	.L111
.L130:
	.align	2
.L129:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	100704256
	.word	diaSevenMap
	.word	DMANow
	.word	diaTwoMap
	.word	diaThreeMap
	.word	diaFourMap
	.word	diaFiveMap
	.word	diaSixMap
	.word	diaEightMap
	.size	phaseThreeInstructions, .-phaseThreeInstructions
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #256
	mov	r4, #67108864
	mov	r6, #0
	ldr	r8, .L133
	ldr	r7, .L133+4
	ldr	r5, .L133+8
	strh	r6, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L133+12
	mov	lr, pc
	bx	r5
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L133+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L133+20
	mov	r0, #3
	ldr	r1, .L133+24
	mov	lr, pc
	bx	r5
	mov	r2, #8
	ldr	r3, .L133+28
	strh	r6, [r4, #16]	@ movhi
	strh	r6, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L134:
	.align	2
.L133:
	.word	100679680
	.word	dialogueFontTiles
	.word	DMANow
	.word	dialogueFontPal
	.word	5124
	.word	100704256
	.word	pauseMap
	.word	state
	.size	goToPause, .-goToPause
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
	ldr	r4, .L152
	ldr	r3, .L152+4
	add	r0, r4, #4
	add	r1, r4, #8
	mov	lr, pc
	bx	r3
	ldr	r3, .L152+8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L152+12
	mov	lr, pc
	bx	r2
	ldr	r3, .L152+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L152+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L152+24
	mov	lr, pc
	bx	r5
	ldr	r3, .L152+28
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L149
.L136:
	ldr	r3, .L152+32
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L150
.L137:
	ldr	r3, .L152+36
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L135
	ldr	r3, .L152+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L151
.L135:
	pop	{r4, r5, r6, lr}
	bx	lr
.L150:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L137
	bl	goToPhaseOne
	b	.L137
.L149:
	bl	goToStartInstructions
	b	.L136
.L151:
	ldr	r3, .L152+44
	ldr	r2, .L152+48
	add	r0, r3, #16
	ldrb	r2, [r2]	@ zero_extendqisi2
	ldr	r3, .L152+52
	ldm	r0, {r0, r1}
	strb	r2, [r3]
	str	r0, [r4, #16]
	str	r1, [r4, #20]
	pop	{r4, r5, r6, lr}
	b	goToPause
.L153:
	.align	2
.L152:
	.word	.LANCHOR0
	.word	updateStartPlayer
	.word	updateGuideSprite
	.word	drawStartPlayer
	.word	drawGuideSprite
	.word	DMANow
	.word	shadowOAM
	.word	checkPlayerGuideCollision
	.word	next
	.word	oldButtons
	.word	buttons
	.word	startPlayer
	.word	state
	.word	prevState
	.size	start, .-start
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	phaseOne.part.0, %function
phaseOne.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L156
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L156+4
	ldr	r3, .L156+8
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	goToPause
.L157:
	.align	2
.L156:
	.word	buttons
	.word	state
	.word	prevState
	.size	phaseOne.part.0, .-phaseOne.part.0
	.set	phaseTwo.part.0,phaseOne.part.0
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
	ldr	r3, .L176
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L176+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r4, .L176+8
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r2, .L176+12
	sub	r3, r3, #1
	str	r1, [r2, #28]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L160
.L162:
	.word	.L167
	.word	.L166
	.word	.L165
	.word	.L164
	.word	.L163
	.word	.L161
.L161:
	bl	goToPhaseThreeInstructions
.L168:
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldr	r3, .L176+16
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L167:
	bl	goToStartThree
	b	.L168
.L166:
	bl	goToStartInstructions
	b	.L168
.L165:
	bl	goToPhaseOne
	b	.L168
.L164:
	bl	goToPhaseTwoInstructions
	b	.L168
.L163:
	bl	goToPhaseTwo
	b	.L168
.L160:
	bl	goToStart
	b	.L168
.L177:
	.align	2
.L176:
	.word	oldButtons
	.word	buttons
	.word	prevState
	.word	.LANCHOR0
	.word	state
	.size	pause, .-pause
	.section	.rodata.str1.4
	.align	2
.LC1:
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
	ldr	r2, .L180
	ldr	ip, .L180+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L180+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L180+12
	ldr	r4, .L180+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L180+20
	ldr	r3, .L180+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L180+28
	mov	r3, #15
	ldr	r2, .L180+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L180+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L181:
	.align	2
.L180:
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
	ldr	r5, .L195
	ldr	r3, .L195+4
	add	r1, r5, #8
	add	r0, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L195+8
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #4]
	ldr	r1, [r5, #8]
	ldr	r3, .L195+12
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L195+16
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
	ldr	r2, .L195+20
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L195+24
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L195+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L195+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L193
	ldr	r3, .L195+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L194
.L184:
	ldr	r3, .L195+40
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseOne.part.0
.L182:
	pop	{r4, r5, r6, lr}
	bx	lr
.L193:
	bl	goToLose
	ldr	r3, .L195+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L184
.L194:
	bl	goToPhaseTwoInstructions
	b	.L184
.L196:
	.align	2
.L195:
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
	.word	oldButtons
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
	ldr	r5, .L210
	ldr	r3, .L210+4
	add	r1, r5, #8
	add	r0, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L210+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L210+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #4]
	ldr	r1, [r5, #8]
	ldr	r3, .L210+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L210+20
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
	ldr	r2, .L210+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L210+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L210+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L210+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L210+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L208
	ldr	r3, .L210+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L209
.L199:
	ldr	r3, .L210+48
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseTwo.part.0
.L197:
	pop	{r4, r5, r6, lr}
	bx	lr
.L208:
	bl	goToLose
	ldr	r3, .L210+44
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L199
.L209:
	bl	goToPhaseThreeInstructions
	b	.L199
.L211:
	.align	2
.L210:
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
	.word	oldButtons
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
	ldr	r3, .L214
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L215:
	.align	2
.L214:
	.word	oldButtons
	.size	lose, .-lose
	.section	.rodata.str1.4
	.align	2
.LC2:
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
	ldr	r2, .L218
	ldr	ip, .L218+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L218+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L218+12
	ldr	r4, .L218+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L218+20
	ldr	r3, .L218+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L218+28
	mov	r3, #15
	ldr	r2, .L218+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L218+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L219:
	.align	2
.L218:
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
	ldr	r5, .L229
	ldr	r3, .L229+4
	add	r1, r5, #8
	add	r0, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L229+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L229+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L229+16
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #4]
	ldr	r1, [r5, #8]
	ldr	r3, .L229+20
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L229+24
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
	ldr	r2, .L229+28
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L229+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L229+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L229+40
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L229+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L229+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L227
	ldr	r3, .L229+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L228
.L220:
	pop	{r4, r5, r6, lr}
	bx	lr
.L227:
	bl	goToLose
	ldr	r3, .L229+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L220
.L228:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L230:
	.align	2
.L229:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L250
	mov	lr, pc
	bx	r3
	ldr	r3, .L250+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L250+8
	ldr	r7, .L250+12
	ldr	r6, .L250+16
	ldr	fp, .L250+20
	ldr	r10, .L250+24
	ldr	r9, .L250+28
	ldr	r8, .L250+32
	ldr	r5, .L250+36
.L245:
	ldrh	r2, [r4]
	strh	r2, [r7]	@ movhi
	ldrb	r3, [r6]	@ zero_extendqisi2
	ldrh	r1, [r5, #48]
	strh	r1, [r4]	@ movhi
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L232
.L234:
	.word	.L243
	.word	.L242
	.word	.L241
	.word	.L240
	.word	.L239
	.word	.L238
	.word	.L237
	.word	.L236
	.word	.L235
	.word	.L233
	.word	.L233
.L233:
	tst	r2, #8
	ldrne	r3, .L250+40
	movne	lr, pc
	bxne	r3
.L232:
	mov	lr, pc
	bx	r8
	b	.L245
.L235:
	ldr	r3, .L250+44
	mov	lr, pc
	bx	r3
	b	.L232
.L236:
	ldr	r3, .L250+48
	mov	lr, pc
	bx	r3
	b	.L232
.L237:
	ldr	r3, .L250+52
	mov	lr, pc
	bx	r3
	b	.L232
.L238:
	ldr	r3, .L250+56
	mov	lr, pc
	bx	r3
	b	.L232
.L239:
	ldr	r3, .L250+60
	mov	lr, pc
	bx	r3
	b	.L232
.L240:
	mov	lr, pc
	bx	r9
	b	.L232
.L241:
	mov	lr, pc
	bx	r10
	b	.L232
.L243:
	tst	r2, #8
	beq	.L232
	ldr	r3, .L250+64
	mov	lr, pc
	bx	r3
	b	.L232
.L242:
	mov	lr, pc
	bx	fp
	b	.L232
.L251:
	.align	2
.L250:
	.word	mgba_open
	.word	goToSplashScreen
	.word	buttons
	.word	oldButtons
	.word	state
	.word	start
	.word	startInstructions
	.word	phaseOne
	.word	waitForVBlank
	.word	67109120
	.word	lose.part.0
	.word	pause
	.word	phaseThree
	.word	phaseThreeInstructions
	.word	phaseTwo
	.word	phaseTwoInstructions
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
	ldr	r3, .L262
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L262+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L261
	pop	{r4, lr}
	bx	lr
.L261:
	bl	goToSplashScreen
	ldr	r3, .L262+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L263:
	.align	2
.L262:
	.word	oldButtons
	.word	buttons
	.word	state
	.size	win, .-win
	.global	resumingFromPause
	.global	startPage
	.global	begin
	.global	talkedToGuide
	.global	vOff
	.global	hOff
	.comm	prevState,1,1
	.comm	state,1,1
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	healthBarFrames,72,4
	.comm	next,4,4
	.comm	winPhaseThree,4,4
	.comm	playerPaletteWork,512,4
	.comm	winPhaseTwo,4,4
	.comm	snows,360,4
	.comm	sbb,4,4
	.comm	winPhaseOne,4,4
	.comm	gameOver,4,4
	.comm	isDucking,4,4
	.comm	hikerFrames,20,4
	.comm	hikerFrame,4,4
	.comm	hikerFrameCounter,4,4
	.comm	hikerFrameDelay,4,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	begin, %object
	.size	begin, 4
begin:
	.space	4
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.type	talkedToGuide, %object
	.size	talkedToGuide, 4
talkedToGuide:
	.space	4
	.type	savedStartX, %object
	.size	savedStartX, 4
savedStartX:
	.space	4
	.type	savedStartY, %object
	.size	savedStartY, 4
savedStartY:
	.space	4
	.type	startPage, %object
	.size	startPage, 4
startPage:
	.space	4
	.type	resumingFromPause, %object
	.size	resumingFromPause, 4
resumingFromPause:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
