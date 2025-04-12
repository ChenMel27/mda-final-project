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
	str	r5, [r3]
	str	r0, [r3, #4]
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
	mov	lr, #436
	mov	r1, #1
	mov	ip, #0
	mov	r0, #96
	ldr	r2, .L34+28
	str	lr, [r2, #16]
	ldr	r2, .L34+32
	ldr	r3, .L34+36
	strb	r1, [r2]
	str	ip, [r3]
	str	r0, [r3, #4]
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
	ldr	r3, .L38+28
	strh	r5, [r4, #16]	@ movhi
	ldr	r1, .L38+32
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	str	r5, [r1]
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
	.word	state
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
	ldr	r3, .L61
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	beq	.L41
	ldr	r3, .L61+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L60
.L41:
	ldr	r3, .L61+8
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L42
	pop	{r4, lr}
	bx	lr
.L60:
	ldr	r2, .L61+12
	ldr	r3, [r2]
	add	r1, r3, #1
	str	r1, [r2]
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
	.word	.L54
.L54:
	ldr	r3, .L61+8
.L42:
	mov	r2, #0
	str	r2, [r3]
	bl	goToStartTwo
	mov	r2, #1
	ldr	r3, .L61+16
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L50:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+20
	ldr	r1, .L61+24
	ldr	r4, .L61+28
	mov	lr, pc
	bx	r4
	b	.L41
.L49:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+20
	ldr	r1, .L61+32
	ldr	r4, .L61+28
	mov	lr, pc
	bx	r4
	b	.L41
.L48:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+20
	ldr	r1, .L61+36
	ldr	r4, .L61+28
	mov	lr, pc
	bx	r4
	b	.L41
.L47:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+20
	ldr	r1, .L61+40
	ldr	r4, .L61+28
	mov	lr, pc
	bx	r4
	b	.L41
.L46:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+20
	ldr	r1, .L61+44
	ldr	r4, .L61+28
	mov	lr, pc
	bx	r4
	b	.L41
.L45:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+20
	ldr	r1, .L61+48
	ldr	r4, .L61+28
	mov	lr, pc
	bx	r4
	b	.L41
.L44:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+20
	ldr	r1, .L61+52
	ldr	r4, .L61+28
	mov	lr, pc
	bx	r4
	b	.L41
.L62:
	.align	2
.L61:
	.word	oldButtons
	.word	buttons
	.word	begin
	.word	startPage
	.word	state
	.word	100704256
	.word	diaTwoMap
	.word	DMANow
	.word	diaThreeMap
	.word	diaFourMap
	.word	diaFiveMap
	.word	diaSixMap
	.word	diaSevenMap
	.word	diaEightMap
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
	str	r5, [r3]
	str	r0, [r3, #4]
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
	push	{r4, lr}
	ldr	r4, .L76
	ldr	r3, .L76+4
	mov	r0, r4
	add	r1, r4, #4
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #4]
	ldrh	r2, [r4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L76+8
	mov	lr, pc
	bx	r2
	ldr	r3, .L76+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L76+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L76+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L76+24
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L74
	ldr	r3, .L76+28
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L75
.L67:
	pop	{r4, lr}
	bx	lr
.L74:
	bl	goToStartInstructions
	ldr	r3, .L76+28
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L67
.L75:
	pop	{r4, lr}
	b	goToPhaseOne
.L77:
	.align	2
.L76:
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
	ldr	ip, .L80
	ldr	r2, .L80+4
	ldr	r1, .L80+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L80+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L80+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L80+20
	ldr	r1, .L80+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L80+28
	ldr	r1, .L80+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L80+36
	ldr	r1, .L80+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L80+44
	ldr	r1, .L80+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L80+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+56
	mov	lr, pc
	bx	r3
	mov	r1, #4
	mov	r0, #96
	ldr	r2, .L80+60
	ldr	r3, .L80+64
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L81:
	.align	2
.L80:
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
	ldr	ip, .L84
	ldr	r2, .L84+4
	ldr	r1, .L84+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L84+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L84+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L84+20
	ldr	r1, .L84+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L84+28
	ldr	r1, .L84+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L84+36
	ldr	r1, .L84+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L84+44
	ldr	r1, .L84+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L84+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L84+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L84+60
	mov	lr, pc
	bx	r3
	mov	r1, #5
	mov	r0, #96
	ldr	r2, .L84+64
	ldr	r3, .L84+68
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L85:
	.align	2
.L84:
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
	ldr	r2, .L88
	ldr	ip, .L88+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L88+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L88+12
	ldr	r4, .L88+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L88+20
	ldr	r3, .L88+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L88+28
	mov	r3, #15
	ldr	r2, .L88+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L88+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L89:
	.align	2
.L88:
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
	ldr	r2, .L93
	ldr	ip, .L93+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L93+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L93+12
	ldr	r4, .L93+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L93+20
	ldr	r3, .L93+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L93+28
	mov	r3, #15
	ldr	r2, .L93+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L93+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L94:
	.align	2
.L93:
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
	ldr	r5, .L104
	ldr	r3, .L104+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L104+8
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L104+12
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L104+16
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
	ldr	r2, .L104+20
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L104+24
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L104+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L104+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L102
	ldr	r3, .L104+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L103
.L95:
	pop	{r4, r5, r6, lr}
	bx	lr
.L102:
	bl	goToLose
	ldr	r3, .L104+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L95
.L103:
	pop	{r4, r5, r6, lr}
	b	goToPhaseTwo
.L105:
	.align	2
.L104:
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
	ldr	r5, .L115
	ldr	r3, .L115+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L115+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L115+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L115+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L115+20
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
	ldr	r2, .L115+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L115+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L115+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L115+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L115+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L113
	ldr	r3, .L115+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L114
.L106:
	pop	{r4, r5, r6, lr}
	bx	lr
.L113:
	bl	goToLose
	ldr	r3, .L115+44
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L106
.L114:
	pop	{r4, r5, r6, lr}
	b	goToPhaseThree
.L116:
	.align	2
.L115:
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
	ldr	r3, .L119
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L120:
	.align	2
.L119:
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
	ldr	r2, .L123
	ldr	ip, .L123+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L123+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L123+12
	ldr	r4, .L123+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L123+20
	ldr	r3, .L123+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L123+28
	mov	r3, #15
	ldr	r2, .L123+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L123+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L124:
	.align	2
.L123:
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
	ldr	r5, .L134
	ldr	r3, .L134+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L134+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L134+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L134+16
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L134+20
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L134+24
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
	ldr	r2, .L134+28
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L134+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L134+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L134+40
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L134+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L134+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L132
	ldr	r3, .L134+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L133
.L125:
	pop	{r4, r5, r6, lr}
	bx	lr
.L132:
	bl	goToLose
	ldr	r3, .L134+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L125
.L133:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L135:
	.align	2
.L134:
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
	ldr	r3, .L156
	mov	lr, pc
	bx	r3
	ldr	r3, .L156+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L156+8
	ldr	r8, .L156+12
	ldr	r7, .L156+16
	ldr	fp, .L156+20
	ldr	r10, .L156+24
	ldr	r9, .L156+28
	ldr	r6, .L156+32
	ldr	r5, .L156+36
.L148:
	ldrh	r2, [r4]
	strh	r2, [r8]	@ movhi
	ldrb	r3, [r7]	@ zero_extendqisi2
	ldrh	r1, [r5, #48]
	strh	r1, [r4]	@ movhi
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L137
.L139:
	.word	.L146
	.word	.L145
	.word	.L144
	.word	.L143
	.word	.L142
	.word	.L141
	.word	.L140
	.word	.L138
	.word	.L138
.L138:
	tst	r2, #8
	ldrne	r3, .L156+40
	movne	lr, pc
	bxne	r3
.L137:
	mov	lr, pc
	bx	r6
	b	.L148
.L140:
	tst	r2, #8
	beq	.L137
	ldr	r3, .L156+44
	mov	lr, pc
	bx	r3
	b	.L137
.L141:
	ldr	r3, .L156+48
	mov	lr, pc
	bx	r3
	b	.L137
.L142:
	ldr	r3, .L156+52
	mov	lr, pc
	bx	r3
	b	.L137
.L143:
	mov	lr, pc
	bx	r9
	b	.L137
.L144:
	mov	lr, pc
	bx	r10
	b	.L137
.L146:
	tst	r2, #8
	beq	.L137
	ldr	r3, .L156+56
	mov	lr, pc
	bx	r3
	b	.L137
.L145:
	mov	lr, pc
	bx	fp
	b	.L137
.L157:
	.align	2
.L156:
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
	ldr	r3, .L168
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L168+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L167
	pop	{r4, lr}
	bx	lr
.L167:
	bl	goToSplashScreen
	ldr	r3, .L168+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L169:
	.align	2
.L168:
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
