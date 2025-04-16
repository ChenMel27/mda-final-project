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
	.set	winp2.part.0,lose.part.0
	.set	winp1.part.0,lose.part.0
	.set	tie.part.0,lose.part.0
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
	str	r5, [r3, #4]
	str	r0, [r3, #8]
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
	mov	r0, #436
	mov	r2, #1
	mov	r1, #0
	mov	ip, #96
	ldr	r3, .L30+28
	str	r0, [r3, #16]
	ldr	r0, .L30+32
	ldr	lr, .L30+36
	ldr	r3, .L30+40
	strb	r2, [r0]
	str	r1, [lr]
	stmib	r3, {r1, ip}
	str	r2, [r3, #12]
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
	ldr	r8, .L34
	ldr	r7, .L34+4
	ldr	r6, .L34+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L34+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L34+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L34+20
	ldr	r1, .L34+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #2
	ldr	r1, .L34+28
	ldr	r3, .L34+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #16]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L35:
	.align	2
.L34:
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
	ldr	r3, .L57
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, r5, r6, lr}
	bne	.L54
	ldr	r4, .L57+4
.L37:
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L38
	pop	{r4, r5, r6, lr}
	bx	lr
.L54:
	ldr	r3, .L57+8
	ldrh	r3, [r3]
	tst	r3, #8
	ldr	r4, .L57+4
	bne	.L37
	ldr	r3, [r4, #16]
	add	r2, r3, #1
	str	r2, [r4, #16]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L37
.L39:
	.word	.L46
	.word	.L45
	.word	.L44
	.word	.L43
	.word	.L42
	.word	.L41
	.word	.L40
	.word	.L38
.L38:
	mov	r3, #0
	str	r3, [r4]
	bl	goToStartTwo
	mov	r2, #1
	ldr	r3, .L57+12
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L40:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L57+16
	ldr	r1, .L57+20
	ldr	r5, .L57+24
	mov	lr, pc
	bx	r5
	b	.L37
.L46:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L57+16
	ldr	r1, .L57+28
	ldr	r5, .L57+24
	mov	lr, pc
	bx	r5
	b	.L37
.L45:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L57+16
	ldr	r1, .L57+32
	ldr	r5, .L57+24
	mov	lr, pc
	bx	r5
	b	.L37
.L44:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L57+16
	ldr	r1, .L57+36
	ldr	r5, .L57+24
	mov	lr, pc
	bx	r5
	b	.L37
.L43:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L57+16
	ldr	r1, .L57+40
	ldr	r5, .L57+24
	mov	lr, pc
	bx	r5
	b	.L37
.L42:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L57+16
	ldr	r1, .L57+44
	ldr	r5, .L57+24
	mov	lr, pc
	bx	r5
	b	.L37
.L41:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L57+16
	ldr	r1, .L57+48
	ldr	r5, .L57+24
	mov	lr, pc
	bx	r5
	b	.L37
.L58:
	.align	2
.L57:
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
	ldr	ip, .L61
	ldr	r2, .L61+4
	ldr	r1, .L61+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L61+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L61+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L61+20
	ldr	r1, .L61+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L61+28
	ldr	r1, .L61+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L61+36
	ldr	r1, .L61+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L61+44
	ldr	r1, .L61+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L61+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L61+56
	mov	lr, pc
	bx	r3
	mov	r1, #3
	mov	r0, #96
	ldr	r2, .L61+60
	ldr	r3, .L61+64
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L62:
	.align	2
.L61:
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
	ldr	r4, .L75
	ldr	r3, .L75+4
	add	r0, r4, #4
	add	r1, r4, #8
	mov	lr, pc
	bx	r3
	ldr	r3, .L75+8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L75+12
	mov	lr, pc
	bx	r2
	ldr	r3, .L75+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L75+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L75+24
	mov	lr, pc
	bx	r5
	ldr	r3, .L75+28
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L73
.L64:
	ldr	r3, .L75+32
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L74
.L63:
	pop	{r4, r5, r6, lr}
	bx	lr
.L74:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L63
	pop	{r4, r5, r6, lr}
	b	goToPhaseOne
.L73:
	bl	goToStartInstructions
	b	.L64
.L76:
	.align	2
.L75:
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
	ldr	r8, .L79
	ldr	r7, .L79+4
	ldr	r6, .L79+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L79+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L79+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L79+20
	ldr	r1, .L79+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r1, .L79+28
	ldr	r3, .L79+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #16]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L80:
	.align	2
.L79:
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
	mov	r1, #5
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
	.word	duskTMMap
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
	ldr	r3, .L103
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L103+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L103+8
	ldr	r3, [r2, #16]
	add	r1, r3, #1
	push	{r4, lr}
	str	r1, [r2, #16]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L85
.L88:
	.word	.L95
	.word	.L94
	.word	.L93
	.word	.L92
	.word	.L91
	.word	.L90
	.word	.L89
	.word	.L87
.L90:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L103+12
	ldr	r1, .L103+16
	ldr	r4, .L103+20
	mov	lr, pc
	bx	r4
.L85:
	pop	{r4, lr}
	bx	lr
.L87:
	pop	{r4, lr}
	b	goToPhaseTwo
.L95:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L103+12
	ldr	r1, .L103+24
	ldr	r4, .L103+20
	mov	lr, pc
	bx	r4
	b	.L85
.L94:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L103+12
	ldr	r1, .L103+28
	ldr	r4, .L103+20
	mov	lr, pc
	bx	r4
	b	.L85
.L93:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L103+12
	ldr	r1, .L103+32
	ldr	r4, .L103+20
	mov	lr, pc
	bx	r4
	b	.L85
.L92:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L103+12
	ldr	r1, .L103+36
	ldr	r4, .L103+20
	mov	lr, pc
	bx	r4
	b	.L85
.L91:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L103+12
	ldr	r1, .L103+40
	ldr	r4, .L103+20
	mov	lr, pc
	bx	r4
	b	.L85
.L89:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L103+12
	ldr	r1, .L103+44
	ldr	r4, .L103+20
	mov	lr, pc
	bx	r4
	b	.L85
.L104:
	.align	2
.L103:
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
	ldr	r8, .L107
	ldr	r7, .L107+4
	ldr	r6, .L107+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L107+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L107+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L107+20
	ldr	r1, .L107+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r1, .L107+28
	ldr	r3, .L107+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #16]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L108:
	.align	2
.L107:
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
	ldr	ip, .L111
	ldr	r2, .L111+4
	ldr	r1, .L111+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L111+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L111+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L111+20
	ldr	r1, .L111+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L111+28
	ldr	r1, .L111+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L111+36
	ldr	r1, .L111+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L111+44
	ldr	r1, .L111+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L111+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L111+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L111+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L111+64
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L111+68
	ldr	r3, .L111+72
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L112:
	.align	2
.L111:
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
	.word	initHealth
	.word	state
	.word	.LANCHOR0
	.size	goToPhaseThree, .-goToPhaseThree
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
	ldr	r3, .L115
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r3, .L115+4
	ldr	r2, .L115+8
	strh	r1, [r3, #40]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #40]	@ movhi
	b	goToPhaseThree
.L116:
	.align	2
.L115:
	.word	mgba_open
	.word	67109120
	.word	20483
	.size	initialize, .-initialize
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
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L186
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L186+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L185
	pop	{r4, lr}
	bx	lr
.L185:
	bl	goToSplashScreen
	ldr	r3, .L186+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L187:
	.align	2
.L186:
	.word	oldButtons
	.word	buttons
	.word	state
	.size	win, .-win
	.align	2
	.global	goToTie
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToTie, %function
goToTie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #256
	mov	r4, #67108864
	mov	r6, #0
	ldr	r8, .L190
	ldr	r7, .L190+4
	ldr	r5, .L190+8
	strh	r6, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L190+12
	mov	lr, pc
	bx	r5
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L190+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L190+20
	mov	r0, #3
	ldr	r1, .L190+24
	mov	lr, pc
	bx	r5
	mov	r2, #11
	ldr	r3, .L190+28
	strh	r6, [r4, #16]	@ movhi
	strh	r6, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L191:
	.align	2
.L190:
	.word	100679680
	.word	dialogueFontTiles
	.word	DMANow
	.word	dialogueFontPal
	.word	5124
	.word	100704256
	.word	tieMap
	.word	state
	.size	goToTie, .-goToTie
	.align	2
	.global	tie
	.syntax unified
	.arm
	.fpu softvfp
	.type	tie, %function
tie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	lose
	.size	tie, .-tie
	.align	2
	.global	goToWinP1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWinP1, %function
goToWinP1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #256
	mov	r4, #67108864
	mov	r6, #0
	ldr	r8, .L195
	ldr	r7, .L195+4
	ldr	r5, .L195+8
	strh	r6, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L195+12
	mov	lr, pc
	bx	r5
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L195+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L195+20
	mov	r0, #3
	ldr	r1, .L195+24
	mov	lr, pc
	bx	r5
	mov	r2, #12
	ldr	r3, .L195+28
	strh	r6, [r4, #16]	@ movhi
	strh	r6, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L196:
	.align	2
.L195:
	.word	100679680
	.word	dialogueFontTiles
	.word	DMANow
	.word	dialogueFontPal
	.word	5124
	.word	100704256
	.word	winP1Map
	.word	state
	.size	goToWinP1, .-goToWinP1
	.align	2
	.global	winp1
	.syntax unified
	.arm
	.fpu softvfp
	.type	winp1, %function
winp1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	lose
	.size	winp1, .-winp1
	.align	2
	.global	goToWinP2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWinP2, %function
goToWinP2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #256
	mov	r4, #67108864
	mov	r6, #0
	ldr	r8, .L200
	ldr	r7, .L200+4
	ldr	r5, .L200+8
	strh	r6, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L200+12
	mov	lr, pc
	bx	r5
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L200+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L200+20
	mov	r0, #3
	ldr	r1, .L200+24
	mov	lr, pc
	bx	r5
	mov	r2, #13
	ldr	r3, .L200+28
	strh	r6, [r4, #16]	@ movhi
	strh	r6, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L201:
	.align	2
.L200:
	.word	100679680
	.word	dialogueFontTiles
	.word	DMANow
	.word	dialogueFontPal
	.word	5124
	.word	100704256
	.word	winP2Map
	.word	state
	.size	goToWinP2, .-goToWinP2
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
	ldr	r5, .L219
	ldr	r3, .L219+4
	add	r1, r5, #8
	add	r0, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L219+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L219+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L219+16
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #4]
	ldr	r1, [r5, #8]
	ldr	r3, .L219+20
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L219+24
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
	ldr	r2, .L219+28
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L219+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L219+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L219+40
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L219+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L219+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L203
	ldr	r3, .L219+52
	ldrh	r3, [r3, #12]
	cmp	r3, #19
	bls	.L202
.L203:
	ldr	r4, .L219+56
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L217
.L202:
	pop	{r4, r5, r6, lr}
	bx	lr
.L217:
	ldr	r3, .L219+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L219+64
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L218
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	cmp	r3, #0
	ldr	r3, .L219+68
	beq	.L211
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L211
.L212:
	bl	goToTie
.L207:
	mov	r3, #1
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L218:
	ldr	r2, .L219+68
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L212
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L209
	ldrb	r3, [r2, #5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L212
.L209:
	bl	goToWinP2
	b	.L207
.L211:
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L207
	bl	goToWinP1
	b	.L207
.L220:
	.align	2
.L219:
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
	.word	winPhaseThree
	.word	67109120
	.word	multiplayerGameOver
	.word	syncMultiplayerState
	.word	localPacket
	.word	remotePacket
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
	ldr	r3, .L255
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r5, .L255+4
	ldr	r2, .L255+8
	strh	r3, [r5, #40]	@ movhi
	ldr	r3, .L255+12
	strh	r2, [r5, #40]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r4, .L255+16
	ldr	r8, .L255+20
	ldr	r7, .L255+24
	ldr	fp, .L255+28
	ldr	r10, .L255+32
	ldr	r9, .L255+36
	ldr	r6, .L255+40
.L238:
	ldrh	r2, [r4]
	strh	r2, [r8]	@ movhi
	ldrb	r3, [r7]	@ zero_extendqisi2
	ldrh	r1, [r5, #48]
	strh	r1, [r4]	@ movhi
	cmp	r3, #13
	ldrls	pc, [pc, r3, asl #2]
	b	.L222
.L224:
	.word	.L236
	.word	.L235
	.word	.L234
	.word	.L233
	.word	.L232
	.word	.L231
	.word	.L230
	.word	.L229
	.word	.L228
	.word	.L227
	.word	.L227
	.word	.L226
	.word	.L225
	.word	.L223
.L227:
	tst	r2, #8
	ldrne	r3, .L255+44
	movne	lr, pc
	bxne	r3
.L222:
	mov	lr, pc
	bx	r6
	b	.L238
.L228:
	tst	r2, #8
	beq	.L222
	ldr	r3, .L255+48
	mov	lr, pc
	bx	r3
	b	.L222
.L229:
	ldr	r3, .L255+52
	mov	lr, pc
	bx	r3
	b	.L222
.L230:
	ldr	r3, .L255+56
	mov	lr, pc
	bx	r3
	b	.L222
.L231:
	ldr	r3, .L255+60
	mov	lr, pc
	bx	r3
	b	.L222
.L232:
	ldr	r3, .L255+64
	mov	lr, pc
	bx	r3
	b	.L222
.L233:
	mov	lr, pc
	bx	r9
	b	.L222
.L234:
	mov	lr, pc
	bx	r10
	b	.L222
.L223:
	tst	r2, #8
	beq	.L222
	ldr	r3, .L255+68
	mov	lr, pc
	bx	r3
	b	.L222
.L235:
	mov	lr, pc
	bx	fp
	b	.L222
.L236:
	tst	r2, #8
	beq	.L222
	ldr	r3, .L255+72
	mov	lr, pc
	bx	r3
	b	.L222
.L225:
	tst	r2, #8
	beq	.L222
	ldr	r3, .L255+76
	mov	lr, pc
	bx	r3
	b	.L222
.L226:
	tst	r2, #8
	beq	.L222
	ldr	r3, .L255+80
	mov	lr, pc
	bx	r3
	b	.L222
.L256:
	.align	2
.L255:
	.word	mgba_open
	.word	67109120
	.word	20483
	.word	goToPhaseThree
	.word	buttons
	.word	oldButtons
	.word	state
	.word	start
	.word	startInstructions
	.word	phaseOne
	.word	waitForVBlank
	.word	lose.part.0
	.word	pause.part.0
	.word	phaseThree
	.word	phaseThreeInstructions
	.word	phaseTwo
	.word	phaseTwoInstructions
	.word	winp2.part.0
	.word	splashScreen.part.0
	.word	winp1.part.0
	.word	tie.part.0
	.size	main, .-main
	.text
	.align	2
	.global	winp2
	.syntax unified
	.arm
	.fpu softvfp
	.type	winp2, %function
winp2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	lose
	.size	winp2, .-winp2
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
	.comm	snows,120,4
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
	.type	startPage, %object
	.size	startPage, 4
startPage:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
