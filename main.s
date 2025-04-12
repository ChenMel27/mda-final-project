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
	ldr	r8, .L38
	ldr	r7, .L38+4
	ldr	r6, .L38+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L38+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L38+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L38+20
	ldr	r1, .L38+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #2
	ldr	r1, .L38+28
	ldr	r3, .L38+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #16]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L39:
	.align	2
.L38:
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
	ldr	r3, .L61
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, r5, r6, lr}
	bne	.L58
	ldr	r4, .L61+4
.L41:
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L42
	pop	{r4, r5, r6, lr}
	bx	lr
.L58:
	ldr	r3, .L61+8
	ldrh	r3, [r3]
	tst	r3, #8
	ldr	r4, .L61+4
	bne	.L41
	ldr	r3, [r4, #16]
	add	r2, r3, #1
	str	r2, [r4, #16]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L41
.L43:
	.word	.L50
	.word	.L49
	.word	.L48
	.word	.L47
	.word	.L46
	.word	.L45
	.word	.L44
	.word	.L42
.L42:
	mov	r3, #0
	str	r3, [r4]
	bl	goToStartTwo
	mov	r2, #1
	ldr	r3, .L61+12
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L44:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+16
	ldr	r1, .L61+20
	ldr	r5, .L61+24
	mov	lr, pc
	bx	r5
	b	.L41
.L50:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+16
	ldr	r1, .L61+28
	ldr	r5, .L61+24
	mov	lr, pc
	bx	r5
	b	.L41
.L49:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+16
	ldr	r1, .L61+32
	ldr	r5, .L61+24
	mov	lr, pc
	bx	r5
	b	.L41
.L48:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+16
	ldr	r1, .L61+36
	ldr	r5, .L61+24
	mov	lr, pc
	bx	r5
	b	.L41
.L47:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+16
	ldr	r1, .L61+40
	ldr	r5, .L61+24
	mov	lr, pc
	bx	r5
	b	.L41
.L46:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+16
	ldr	r1, .L61+44
	ldr	r5, .L61+24
	mov	lr, pc
	bx	r5
	b	.L41
.L45:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+16
	ldr	r1, .L61+48
	ldr	r5, .L61+24
	mov	lr, pc
	bx	r5
	b	.L41
.L62:
	.align	2
.L61:
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
	mov	r5, #0
	mov	r3, #5888
	ldr	ip, .L65
	ldr	r2, .L65+4
	ldr	r1, .L65+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L65+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L65+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L65+20
	ldr	r1, .L65+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L65+28
	ldr	r1, .L65+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L65+36
	ldr	r1, .L65+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L65+44
	ldr	r1, .L65+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L65+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L65+56
	mov	lr, pc
	bx	r3
	mov	r1, #3
	mov	r0, #96
	ldr	r2, .L65+60
	ldr	r3, .L65+64
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	.align	2
.L65:
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
	ldr	r4, .L79
	ldr	r3, .L79+4
	add	r0, r4, #4
	add	r1, r4, #8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L79+8
	mov	lr, pc
	bx	r2
	ldr	r3, .L79+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L79+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L79+20
	mov	lr, pc
	bx	r5
	ldr	r3, .L79+24
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L77
.L68:
	ldr	r3, .L79+28
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L78
.L67:
	pop	{r4, r5, r6, lr}
	bx	lr
.L78:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L67
	pop	{r4, r5, r6, lr}
	b	goToPhaseOne
.L77:
	bl	goToStartInstructions
	b	.L68
.L80:
	.align	2
.L79:
	.word	.LANCHOR0
	.word	updateStartPlayer
	.word	drawStartPlayer
	.word	drawGuideSprite
	.word	DMANow
	.word	shadowOAM
	.word	checkPlayerGuideCollision
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
	push	{r4, r5, r6, lr}
	mov	r0, #67108864
	mov	r5, #0
	mov	r3, #5888
	ldr	ip, .L83
	ldr	r2, .L83+4
	ldr	r1, .L83+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L83+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L83+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L83+20
	ldr	r1, .L83+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L83+28
	ldr	r1, .L83+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L83+36
	ldr	r1, .L83+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L83+44
	ldr	r1, .L83+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L83+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+56
	mov	lr, pc
	bx	r3
	mov	r1, #4
	mov	r0, #96
	ldr	r2, .L83+60
	ldr	r3, .L83+64
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L84:
	.align	2
.L83:
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
	ldr	ip, .L87
	ldr	r2, .L87+4
	ldr	r1, .L87+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L87+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L87+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L87+20
	ldr	r1, .L87+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L87+28
	ldr	r1, .L87+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L87+36
	ldr	r1, .L87+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L87+44
	ldr	r1, .L87+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L87+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+60
	mov	lr, pc
	bx	r3
	mov	r1, #5
	mov	r0, #96
	ldr	r2, .L87+64
	ldr	r3, .L87+68
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L88:
	.align	2
.L87:
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
	ldr	r2, .L91
	ldr	ip, .L91+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L91+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L91+12
	ldr	r4, .L91+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L91+20
	ldr	r3, .L91+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L91+28
	mov	r3, #15
	ldr	r2, .L91+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L91+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L92:
	.align	2
.L91:
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
	ldr	r2, .L96
	ldr	ip, .L96+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L96+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L96+12
	ldr	r4, .L96+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L96+20
	ldr	r3, .L96+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L96+28
	mov	r3, #15
	ldr	r2, .L96+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L96+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L97:
	.align	2
.L96:
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
	ldr	r5, .L107
	ldr	r3, .L107+4
	add	r1, r5, #8
	add	r0, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L107+8
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #4]
	ldr	r1, [r5, #8]
	ldr	r3, .L107+12
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L107+16
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
	ldr	r2, .L107+20
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L107+24
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L107+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L107+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L105
	ldr	r3, .L107+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L106
.L98:
	pop	{r4, r5, r6, lr}
	bx	lr
.L105:
	bl	goToLose
	ldr	r3, .L107+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L98
.L106:
	pop	{r4, r5, r6, lr}
	b	goToPhaseTwo
.L108:
	.align	2
.L107:
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
	ldr	r5, .L118
	ldr	r3, .L118+4
	add	r1, r5, #8
	add	r0, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #4]
	ldr	r1, [r5, #8]
	ldr	r3, .L118+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L118+20
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
	ldr	r2, .L118+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L118+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L118+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L118+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L116
	ldr	r3, .L118+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L117
.L109:
	pop	{r4, r5, r6, lr}
	bx	lr
.L116:
	bl	goToLose
	ldr	r3, .L118+44
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L109
.L117:
	pop	{r4, r5, r6, lr}
	b	goToPhaseThree
.L119:
	.align	2
.L118:
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
	ldr	r3, .L122
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L123:
	.align	2
.L122:
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
	ldr	r2, .L126
	ldr	ip, .L126+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L126+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L126+12
	ldr	r4, .L126+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L126+20
	ldr	r3, .L126+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L126+28
	mov	r3, #15
	ldr	r2, .L126+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L126+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L127:
	.align	2
.L126:
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
	ldr	r5, .L137
	ldr	r3, .L137+4
	add	r1, r5, #8
	add	r0, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L137+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L137+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L137+16
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #4]
	ldr	r1, [r5, #8]
	ldr	r3, .L137+20
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L137+24
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
	ldr	r2, .L137+28
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L137+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L137+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L137+40
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L137+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L137+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L135
	ldr	r3, .L137+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L136
.L128:
	pop	{r4, r5, r6, lr}
	bx	lr
.L135:
	bl	goToLose
	ldr	r3, .L137+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L128
.L136:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L138:
	.align	2
.L137:
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
	ldr	r3, .L159
	mov	lr, pc
	bx	r3
	ldr	r3, .L159+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L159+8
	ldr	r8, .L159+12
	ldr	r7, .L159+16
	ldr	fp, .L159+20
	ldr	r10, .L159+24
	ldr	r9, .L159+28
	ldr	r6, .L159+32
	ldr	r5, .L159+36
.L151:
	ldrh	r2, [r4]
	strh	r2, [r8]	@ movhi
	ldrb	r3, [r7]	@ zero_extendqisi2
	ldrh	r1, [r5, #48]
	strh	r1, [r4]	@ movhi
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L140
.L142:
	.word	.L149
	.word	.L148
	.word	.L147
	.word	.L146
	.word	.L145
	.word	.L144
	.word	.L143
	.word	.L141
	.word	.L141
.L141:
	tst	r2, #8
	ldrne	r3, .L159+40
	movne	lr, pc
	bxne	r3
.L140:
	mov	lr, pc
	bx	r6
	b	.L151
.L143:
	tst	r2, #8
	beq	.L140
	ldr	r3, .L159+44
	mov	lr, pc
	bx	r3
	b	.L140
.L144:
	ldr	r3, .L159+48
	mov	lr, pc
	bx	r3
	b	.L140
.L145:
	ldr	r3, .L159+52
	mov	lr, pc
	bx	r3
	b	.L140
.L146:
	mov	lr, pc
	bx	r9
	b	.L140
.L147:
	mov	lr, pc
	bx	r10
	b	.L140
.L149:
	tst	r2, #8
	beq	.L140
	ldr	r3, .L159+56
	mov	lr, pc
	bx	r3
	b	.L140
.L148:
	mov	lr, pc
	bx	fp
	b	.L140
.L160:
	.align	2
.L159:
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
	.word	pause.part.0
	.word	phaseThree
	.word	phaseTwo
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
	ldr	r3, .L171
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L171+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L170
	pop	{r4, lr}
	bx	lr
.L170:
	bl	goToSplashScreen
	ldr	r3, .L171+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L172:
	.align	2
.L171:
	.word	oldButtons
	.word	buttons
	.word	state
	.size	win, .-win
	.global	startPage
	.global	begin
	.global	talkedToGuide
	.global	vOff
	.global	hOff
	.comm	state,1,1
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	healthBarFrames,72,4
	.comm	next,4,4
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
	.type	startPage, %object
	.size	startPage, 4
startPage:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
