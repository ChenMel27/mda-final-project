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
	ldr	r3, .L79+8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L79+12
	mov	lr, pc
	bx	r2
	ldr	r3, .L79+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L79+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L79+24
	mov	lr, pc
	bx	r5
	ldr	r3, .L79+28
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L77
.L68:
	ldr	r3, .L79+32
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
	.word	updateGuideSprite
	.word	drawStartPlayer
	.word	drawGuideSprite
	.word	DMANow
	.word	shadowOAM
	.word	checkPlayerGuideCollision
	.word	next
	.size	start, .-start
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
	ldr	r8, .L83
	ldr	r7, .L83+4
	ldr	r6, .L83+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L83+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L83+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L83+20
	ldr	r1, .L83+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r1, .L83+28
	ldr	r3, .L83+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #16]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L84:
	.align	2
.L83:
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
	mov	r1, #5
	mov	r0, #96
	ldr	r2, .L87+60
	ldr	r3, .L87+64
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
	.global	phaseTwoInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	phaseTwoInstructions, %function
phaseTwoInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L107
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L107+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L107+8
	ldr	r3, [r2, #16]
	add	r1, r3, #1
	push	{r4, lr}
	str	r1, [r2, #16]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L89
.L92:
	.word	.L99
	.word	.L98
	.word	.L97
	.word	.L96
	.word	.L95
	.word	.L94
	.word	.L93
	.word	.L91
.L94:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L107+12
	ldr	r1, .L107+16
	ldr	r4, .L107+20
	mov	lr, pc
	bx	r4
.L89:
	pop	{r4, lr}
	bx	lr
.L91:
	pop	{r4, lr}
	b	goToPhaseTwo
.L99:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L107+12
	ldr	r1, .L107+24
	ldr	r4, .L107+20
	mov	lr, pc
	bx	r4
	b	.L89
.L98:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L107+12
	ldr	r1, .L107+28
	ldr	r4, .L107+20
	mov	lr, pc
	bx	r4
	b	.L89
.L97:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L107+12
	ldr	r1, .L107+32
	ldr	r4, .L107+20
	mov	lr, pc
	bx	r4
	b	.L89
.L96:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L107+12
	ldr	r1, .L107+36
	ldr	r4, .L107+20
	mov	lr, pc
	bx	r4
	b	.L89
.L95:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L107+12
	ldr	r1, .L107+40
	ldr	r4, .L107+20
	mov	lr, pc
	bx	r4
	b	.L89
.L93:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L107+12
	ldr	r1, .L107+44
	ldr	r4, .L107+20
	mov	lr, pc
	bx	r4
	b	.L89
.L108:
	.align	2
.L107:
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
	ldr	r8, .L111
	ldr	r7, .L111+4
	ldr	r6, .L111+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L111+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L111+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L111+20
	ldr	r1, .L111+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r1, .L111+28
	ldr	r3, .L111+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #16]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L112:
	.align	2
.L111:
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
	ldr	ip, .L115
	ldr	r2, .L115+4
	ldr	r1, .L115+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L115+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L115+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L115+20
	ldr	r1, .L115+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L115+28
	ldr	r1, .L115+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L115+36
	ldr	r1, .L115+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L115+44
	ldr	r1, .L115+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L115+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L115+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L115+60
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L115+64
	ldr	r3, .L115+68
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L116:
	.align	2
.L115:
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
	ldr	r3, .L135
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L135+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L135+8
	ldr	r3, [r2, #16]
	add	r1, r3, #1
	push	{r4, lr}
	str	r1, [r2, #16]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L117
.L120:
	.word	.L127
	.word	.L126
	.word	.L125
	.word	.L124
	.word	.L123
	.word	.L122
	.word	.L121
	.word	.L119
.L122:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L135+12
	ldr	r1, .L135+16
	ldr	r4, .L135+20
	mov	lr, pc
	bx	r4
.L117:
	pop	{r4, lr}
	bx	lr
.L119:
	pop	{r4, lr}
	b	goToPhaseThree
.L127:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L135+12
	ldr	r1, .L135+24
	ldr	r4, .L135+20
	mov	lr, pc
	bx	r4
	b	.L117
.L126:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L135+12
	ldr	r1, .L135+28
	ldr	r4, .L135+20
	mov	lr, pc
	bx	r4
	b	.L117
.L125:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L135+12
	ldr	r1, .L135+32
	ldr	r4, .L135+20
	mov	lr, pc
	bx	r4
	b	.L117
.L124:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L135+12
	ldr	r1, .L135+36
	ldr	r4, .L135+20
	mov	lr, pc
	bx	r4
	b	.L117
.L123:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L135+12
	ldr	r1, .L135+40
	ldr	r4, .L135+20
	mov	lr, pc
	bx	r4
	b	.L117
.L121:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L135+12
	ldr	r1, .L135+44
	ldr	r4, .L135+20
	mov	lr, pc
	bx	r4
	b	.L117
.L136:
	.align	2
.L135:
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
	ldr	r2, .L139
	ldr	ip, .L139+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L139+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L139+12
	ldr	r4, .L139+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L139+20
	ldr	r3, .L139+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L139+28
	mov	r3, #15
	ldr	r2, .L139+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L139+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L140:
	.align	2
.L139:
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
	ldr	r2, .L144
	ldr	ip, .L144+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L144+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L144+12
	ldr	r4, .L144+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L144+20
	ldr	r3, .L144+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L144+28
	mov	r3, #15
	ldr	r2, .L144+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L144+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L145:
	.align	2
.L144:
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
	ldr	r5, .L155
	ldr	r3, .L155+4
	add	r1, r5, #8
	add	r0, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L155+8
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #4]
	ldr	r1, [r5, #8]
	ldr	r3, .L155+12
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L155+16
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
	ldr	r2, .L155+20
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L155+24
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L155+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L155+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L153
	ldr	r3, .L155+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L154
.L146:
	pop	{r4, r5, r6, lr}
	bx	lr
.L153:
	bl	goToLose
	ldr	r3, .L155+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L146
.L154:
	pop	{r4, r5, r6, lr}
	b	goToPhaseTwoInstructions
.L156:
	.align	2
.L155:
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
	ldr	r5, .L166
	ldr	r3, .L166+4
	add	r1, r5, #8
	add	r0, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L166+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L166+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #4]
	ldr	r1, [r5, #8]
	ldr	r3, .L166+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L166+20
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
	ldr	r2, .L166+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L166+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L166+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L166+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L166+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L164
	ldr	r3, .L166+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L165
.L157:
	pop	{r4, r5, r6, lr}
	bx	lr
.L164:
	bl	goToLose
	ldr	r3, .L166+44
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L157
.L165:
	pop	{r4, r5, r6, lr}
	b	goToPhaseThreeInstructions
.L167:
	.align	2
.L166:
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
	ldr	r3, .L170
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L171:
	.align	2
.L170:
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
	ldr	r2, .L174
	ldr	ip, .L174+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L174+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L174+12
	ldr	r4, .L174+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L174+20
	ldr	r3, .L174+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L174+28
	mov	r3, #15
	ldr	r2, .L174+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L174+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L175:
	.align	2
.L174:
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
	ldr	r5, .L185
	ldr	r3, .L185+4
	add	r1, r5, #8
	add	r0, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L185+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L185+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L185+16
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #4]
	ldr	r1, [r5, #8]
	ldr	r3, .L185+20
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L185+24
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
	ldr	r2, .L185+28
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L185+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L185+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L185+40
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L185+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L185+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L183
	ldr	r3, .L185+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L184
.L176:
	pop	{r4, r5, r6, lr}
	bx	lr
.L183:
	bl	goToLose
	ldr	r3, .L185+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L176
.L184:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L186:
	.align	2
.L185:
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
	ldr	r3, .L209
	mov	lr, pc
	bx	r3
	ldr	r3, .L209+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L209+8
	ldr	r7, .L209+12
	ldr	r6, .L209+16
	ldr	fp, .L209+20
	ldr	r10, .L209+24
	ldr	r9, .L209+28
	ldr	r8, .L209+32
	ldr	r5, .L209+36
.L201:
	ldrh	r2, [r4]
	strh	r2, [r7]	@ movhi
	ldrb	r3, [r6]	@ zero_extendqisi2
	ldrh	r1, [r5, #48]
	strh	r1, [r4]	@ movhi
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L188
.L190:
	.word	.L199
	.word	.L198
	.word	.L197
	.word	.L196
	.word	.L195
	.word	.L194
	.word	.L193
	.word	.L192
	.word	.L191
	.word	.L189
	.word	.L189
.L189:
	tst	r2, #8
	ldrne	r3, .L209+40
	movne	lr, pc
	bxne	r3
.L188:
	mov	lr, pc
	bx	r8
	b	.L201
.L191:
	tst	r2, #8
	beq	.L188
	ldr	r3, .L209+44
	mov	lr, pc
	bx	r3
	b	.L188
.L192:
	ldr	r3, .L209+48
	mov	lr, pc
	bx	r3
	b	.L188
.L193:
	ldr	r3, .L209+52
	mov	lr, pc
	bx	r3
	b	.L188
.L194:
	ldr	r3, .L209+56
	mov	lr, pc
	bx	r3
	b	.L188
.L195:
	ldr	r3, .L209+60
	mov	lr, pc
	bx	r3
	b	.L188
.L196:
	mov	lr, pc
	bx	r9
	b	.L188
.L197:
	mov	lr, pc
	bx	r10
	b	.L188
.L199:
	tst	r2, #8
	beq	.L188
	ldr	r3, .L209+64
	mov	lr, pc
	bx	r3
	b	.L188
.L198:
	mov	lr, pc
	bx	fp
	b	.L188
.L210:
	.align	2
.L209:
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
	ldr	r3, .L221
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L221+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L220
	pop	{r4, lr}
	bx	lr
.L220:
	bl	goToSplashScreen
	ldr	r3, .L221+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L222:
	.align	2
.L221:
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
