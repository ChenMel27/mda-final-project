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
	mov	r3, #67108864
	push	{r4, lr}
	mov	lr, #100663296
	ldr	r2, .L4
	ldr	ip, .L4+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L4+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L4+12
	ldr	r4, .L4+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L4+20
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, #83886080
	mov	r0, #31
	ldr	ip, .L4+28
	ldr	r1, .L4+32
	str	r3, [ip]
	strh	r3, [r2, #26]	@ movhi
	strh	r0, [r2, #24]	@ movhi
	strb	r3, [r1]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1028
	.word	videoBuffer
	.word	splash1Pal
	.word	-2147483392
	.word	DMANow
	.word	splash1Bitmap
	.word	drawFullscreenImage4
	.word	.LANCHOR0
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
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToSplashScreen
.L9:
	.align	2
.L8:
	.word	mgba_open
	.word	setupSounds
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
	mov	r3, #4608
	mov	r5, #67108864
	mov	r2, #0
	ldr	r4, .L22
	strh	r3, [r5]	@ movhi
	ldr	r3, .L22+4
	str	r2, [r4, #4]
	mov	lr, pc
	bx	r3
	mov	r2, #53760
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r5, .L22+8
	mov	r2, #83886080
	ldr	r1, .L22+12
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L22+16
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L22+20
	ldr	r1, .L22+24
	mov	r3, #4096
	mov	lr, pc
	bx	r5
	mov	r1, #364
	ldr	r2, .L22+28
	ldr	r0, .L22+32
.L17:
	sub	r3, r2, #320
.L18:
	strh	r1, [r3], #64	@ movhi
	cmp	r2, r3
	bne	.L18
	add	r2, r2, #2
	cmp	r2, r0
	bne	.L17
	ldr	r3, .L22+36
	ldr	r2, .L22+40
	strh	r1, [r3, #50]	@ movhi
	strh	r1, [r3, #52]	@ movhi
	strh	r1, [r3, #54]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r1, [r3, #58]	@ movhi
	strh	r1, [r3, #60]	@ movhi
	strh	r1, [r3, #62]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L22+44
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #96
	ldr	r1, .L22+48
	str	r3, [r4, #8]
	mov	r2, #1
	ldr	r3, .L22+52
	ldr	r1, [r1]
	ldr	r0, .L22+56
	str	ip, [r4, #12]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L22+60
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	.LANCHOR0
	.word	hideSprites
	.word	DMANow
	.word	sTSPal
	.word	sTSTiles
	.word	100700160
	.word	sTMMap
	.word	100704306
	.word	100704320
	.word	100706304
	.word	initStartPlayer
	.word	initGuideSprite
	.word	animaljam_length
	.word	playSoundA
	.word	animaljam_data
	.word	state
	.size	goToStart, .-goToStart
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
	push	{r4, r5, r6, lr}
	mov	r5, #0
	ldr	r4, .L26
	strh	r3, [r2]	@ movhi
	ldr	r6, .L26+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L26+8
	str	r5, [r4, #4]
	mov	lr, pc
	bx	r6
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L26+12
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r2, .L26+16
	ldr	r1, .L26+20
	mov	r3, #4096
	mov	lr, pc
	bx	r6
	ldr	r3, .L26+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L26+28
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	ip, #96
	mov	r1, #436
	ldr	r0, .L26+32
	ldr	lr, .L26+36
	ldr	r2, .L26+40
	strb	r3, [r0]
	str	r5, [r4, #8]
	str	r5, [lr]
	str	ip, [r4, #12]
	str	r3, [r4, #16]
	str	r1, [r2, #16]
	pop	{r4, r5, r6, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	.LANCHOR0
	.word	DMANow
	.word	sTSPal
	.word	sTSTiles
	.word	100700160
	.word	sTMMap
	.word	initStartPlayer
	.word	initGuideSprite
	.word	state
	.word	next
	.word	startPlayer
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
	push	{r4, r5, r6, lr}
	mov	r6, #0
	ldr	r4, .L30
	strh	r3, [r2]	@ movhi
	ldr	r5, .L30+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L30+8
	str	r6, [r4, #4]
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L30+12
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L30+16
	ldr	r1, .L30+20
	mov	r3, #4096
	mov	lr, pc
	bx	r5
	mov	r5, #96
	ldr	r3, .L30+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L30+32
	ldr	lr, [r4, #20]
	ldr	r3, .L30+36
	ldr	ip, [r4, #24]
	str	r6, [r4, #8]
	str	r5, [r4, #12]
	ldr	r1, [r2]
	ldr	r4, .L30+40
	mov	r2, #1
	ldr	r0, .L30+44
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L30+48
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	.LANCHOR0
	.word	DMANow
	.word	sTSPal
	.word	sTSTiles
	.word	100700160
	.word	sTMMap
	.word	initStartPlayer
	.word	initGuideSprite
	.word	animaljam_length
	.word	startPlayer
	.word	playSoundA
	.word	animaljam_data
	.word	state
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
	str	r5, [r1, #28]
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
	ldr	r3, [r4, #32]
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
	ldr	r3, [r4, #28]
	add	r2, r3, #1
	str	r2, [r4, #28]
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
	str	r3, [r4, #32]
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
	mov	lr, #0
	mov	r3, #5888
	ldr	ip, .L63
	ldr	r2, .L63+4
	ldr	r1, .L63+8
	strh	lr, [r0]	@ movhi
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
	ldr	r5, .L63+36
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L63+40
	ldr	r1, .L63+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L63+48
	ldr	r1, .L63+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.L62
.L60:
	mov	r1, #3
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L63+56
	strb	r1, [r2]
	str	r3, [r5, #4]
	str	r3, [r5, #8]
	str	r0, [r5, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L62:
	ldr	r3, .L63+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L63+64
	mov	lr, pc
	bx	r3
	b	.L60
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
	ldr	r8, .L67
	ldr	r7, .L67+4
	ldr	r6, .L67+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L67+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L67+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L67+20
	ldr	r1, .L67+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r1, .L67+28
	ldr	r3, .L67+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #28]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L68:
	.align	2
.L67:
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
	ldr	ip, .L73
	ldr	r2, .L73+4
	ldr	r1, .L73+8
	strh	lr, [r0]	@ movhi
	ldr	r4, .L73+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L73+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L73+20
	ldr	r1, .L73+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L73+28
	ldr	r1, .L73+32
	mov	lr, pc
	bx	r4
	ldr	r5, .L73+36
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L73+40
	ldr	r1, .L73+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L73+48
	ldr	r1, .L73+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.L72
.L70:
	mov	r1, #5
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L73+56
	strb	r1, [r2]
	str	r3, [r5, #4]
	str	r3, [r5, #8]
	str	r0, [r5, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L72:
	ldr	r3, .L73+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L73+64
	mov	lr, pc
	bx	r3
	b	.L70
.L74:
	.align	2
.L73:
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
	ldr	r3, .L93
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L93+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L93+8
	ldr	r3, [r2, #28]
	add	r1, r3, #1
	push	{r4, lr}
	str	r1, [r2, #28]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L75
.L78:
	.word	.L85
	.word	.L84
	.word	.L83
	.word	.L82
	.word	.L81
	.word	.L80
	.word	.L79
	.word	.L77
.L80:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L93+12
	ldr	r1, .L93+16
	ldr	r4, .L93+20
	mov	lr, pc
	bx	r4
.L75:
	pop	{r4, lr}
	bx	lr
.L77:
	pop	{r4, lr}
	b	goToPhaseTwo
.L85:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L93+12
	ldr	r1, .L93+24
	ldr	r4, .L93+20
	mov	lr, pc
	bx	r4
	b	.L75
.L84:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L93+12
	ldr	r1, .L93+28
	ldr	r4, .L93+20
	mov	lr, pc
	bx	r4
	b	.L75
.L83:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L93+12
	ldr	r1, .L93+32
	ldr	r4, .L93+20
	mov	lr, pc
	bx	r4
	b	.L75
.L82:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L93+12
	ldr	r1, .L93+36
	ldr	r4, .L93+20
	mov	lr, pc
	bx	r4
	b	.L75
.L81:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L93+12
	ldr	r1, .L93+40
	ldr	r4, .L93+20
	mov	lr, pc
	bx	r4
	b	.L75
.L79:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L93+12
	ldr	r1, .L93+44
	ldr	r4, .L93+20
	mov	lr, pc
	bx	r4
	b	.L75
.L94:
	.align	2
.L93:
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
	ldr	r8, .L97
	ldr	r7, .L97+4
	ldr	r6, .L97+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L97+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L97+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L97+20
	ldr	r1, .L97+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r1, .L97+28
	ldr	r3, .L97+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #28]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L98:
	.align	2
.L97:
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
	ldr	ip, .L101
	ldr	r2, .L101+4
	ldr	r1, .L101+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L101+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L101+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L101+20
	ldr	r1, .L101+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L101+28
	ldr	r1, .L101+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L101+36
	ldr	r1, .L101+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L101+44
	ldr	r1, .L101+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L101+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L101+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L101+60
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L101+64
	ldr	r3, .L101+68
	strb	r1, [r2]
	str	r5, [r3, #8]
	str	r0, [r3, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L102:
	.align	2
.L101:
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
	ldr	r3, .L121
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L121+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L121+8
	ldr	r3, [r2, #28]
	add	r1, r3, #1
	push	{r4, lr}
	str	r1, [r2, #28]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L103
.L106:
	.word	.L113
	.word	.L112
	.word	.L111
	.word	.L110
	.word	.L109
	.word	.L108
	.word	.L107
	.word	.L105
.L108:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L121+12
	ldr	r1, .L121+16
	ldr	r4, .L121+20
	mov	lr, pc
	bx	r4
.L103:
	pop	{r4, lr}
	bx	lr
.L105:
	pop	{r4, lr}
	b	goToPhaseThree
.L113:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L121+12
	ldr	r1, .L121+24
	ldr	r4, .L121+20
	mov	lr, pc
	bx	r4
	b	.L103
.L112:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L121+12
	ldr	r1, .L121+28
	ldr	r4, .L121+20
	mov	lr, pc
	bx	r4
	b	.L103
.L111:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L121+12
	ldr	r1, .L121+32
	ldr	r4, .L121+20
	mov	lr, pc
	bx	r4
	b	.L103
.L110:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L121+12
	ldr	r1, .L121+36
	ldr	r4, .L121+20
	mov	lr, pc
	bx	r4
	b	.L103
.L109:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L121+12
	ldr	r1, .L121+40
	ldr	r4, .L121+20
	mov	lr, pc
	bx	r4
	b	.L103
.L107:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L121+12
	ldr	r1, .L121+44
	ldr	r4, .L121+20
	mov	lr, pc
	bx	r4
	b	.L103
.L122:
	.align	2
.L121:
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
	ldr	r8, .L125
	ldr	r7, .L125+4
	ldr	r5, .L125+8
	strh	r6, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L125+12
	mov	lr, pc
	bx	r5
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L125+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L125+20
	mov	r0, #3
	ldr	r1, .L125+24
	mov	lr, pc
	bx	r5
	mov	r2, #8
	ldr	r3, .L125+28
	strh	r6, [r4, #16]	@ movhi
	strh	r6, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L126:
	.align	2
.L125:
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
	ldr	r4, .L144
	ldr	r3, .L144+4
	add	r0, r4, #8
	add	r1, r4, #12
	mov	lr, pc
	bx	r3
	ldr	r3, .L144+8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #12]
	ldrh	r2, [r4, #8]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L144+12
	mov	lr, pc
	bx	r2
	ldr	r3, .L144+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L144+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L144+24
	mov	lr, pc
	bx	r5
	ldr	r3, .L144+28
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L141
.L128:
	ldr	r3, .L144+32
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L142
.L129:
	ldr	r3, .L144+36
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L127
	ldr	r3, .L144+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L143
.L127:
	pop	{r4, r5, r6, lr}
	bx	lr
.L142:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L129
	ldr	r3, .L144+44
	mov	lr, pc
	bx	r3
	bl	goToPhaseOne
	b	.L129
.L141:
	bl	goToStartInstructions
	b	.L128
.L143:
	ldr	r3, .L144+48
	ldr	r2, .L144+52
	ldr	ip, [r3, #16]
	ldr	r0, [r3, #20]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L144+56
	ldr	r3, .L144+44
	str	ip, [r4, #20]
	str	r0, [r4, #24]
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToPause
.L145:
	.align	2
.L144:
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
	.word	stopSounds
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
	ldr	r3, .L148
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L148+4
	ldr	r3, .L148+8
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	goToPause
.L149:
	.align	2
.L148:
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
	ldr	r3, .L168
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L168+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r4, .L168+8
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r2, .L168+12
	sub	r3, r3, #1
	str	r1, [r2, #4]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L152
.L154:
	.word	.L159
	.word	.L158
	.word	.L157
	.word	.L156
	.word	.L155
	.word	.L153
.L153:
	bl	goToPhaseThreeInstructions
.L160:
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldr	r3, .L168+16
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L159:
	bl	goToStartThree
	b	.L160
.L158:
	bl	goToStartInstructions
	b	.L160
.L157:
	bl	goToPhaseOne
	b	.L160
.L156:
	bl	goToPhaseTwoInstructions
	b	.L160
.L155:
	bl	goToPhaseTwo
	b	.L160
.L152:
	bl	goToStart
	b	.L160
.L169:
	.align	2
.L168:
	.word	oldButtons
	.word	buttons
	.word	prevState
	.word	.LANCHOR0
	.word	state
	.size	pause, .-pause
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
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
	ldr	r2, .L172
	ldr	ip, .L172+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L172+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L172+12
	ldr	r4, .L172+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L172+20
	ldr	r3, .L172+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L172+28
	mov	r3, #15
	ldr	r2, .L172+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L172+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L173:
	.align	2
.L172:
	.word	1028
	.word	videoBuffer
	.word	splashScreenPal
	.word	-2147483392
	.word	DMANow
	.word	splashScreenBitmap
	.word	drawFullscreenImage4
	.word	drawString4
	.word	.LC0
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
	ldr	r5, .L187
	ldr	r3, .L187+4
	add	r1, r5, #12
	add	r0, r5, #8
	mov	lr, pc
	bx	r3
	ldr	r3, .L187+8
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #8]
	ldr	r1, [r5, #12]
	ldr	r3, .L187+12
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L187+16
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
	ldr	r2, .L187+20
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L187+24
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L187+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L187+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L185
	ldr	r3, .L187+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L186
.L176:
	ldr	r3, .L187+40
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseOne.part.0
.L174:
	pop	{r4, r5, r6, lr}
	bx	lr
.L185:
	bl	goToLose
	ldr	r3, .L187+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L176
.L186:
	bl	goToPhaseTwoInstructions
	b	.L176
.L188:
	.align	2
.L187:
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
	ldr	r5, .L202
	ldr	r3, .L202+4
	add	r1, r5, #12
	add	r0, r5, #8
	mov	lr, pc
	bx	r3
	ldr	r3, .L202+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L202+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #8]
	ldr	r1, [r5, #12]
	ldr	r3, .L202+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L202+20
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
	ldr	r2, .L202+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L202+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L202+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L202+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L202+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L200
	ldr	r3, .L202+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L201
.L191:
	ldr	r3, .L202+48
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseTwo.part.0
.L189:
	pop	{r4, r5, r6, lr}
	bx	lr
.L200:
	bl	goToLose
	ldr	r3, .L202+44
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L191
.L201:
	bl	goToPhaseThreeInstructions
	b	.L191
.L203:
	.align	2
.L202:
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
	ldr	r3, .L206
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L207:
	.align	2
.L206:
	.word	oldButtons
	.size	lose, .-lose
	.section	.rodata.str1.4
	.align	2
.LC1:
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
	ldr	r2, .L210
	ldr	ip, .L210+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L210+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L210+12
	ldr	r4, .L210+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L210+20
	ldr	r3, .L210+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L210+28
	mov	r3, #15
	ldr	r2, .L210+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L210+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L211:
	.align	2
.L210:
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
	ldr	r5, .L221
	ldr	r3, .L221+4
	add	r1, r5, #12
	add	r0, r5, #8
	mov	lr, pc
	bx	r3
	ldr	r3, .L221+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L221+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L221+16
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #8]
	ldr	r1, [r5, #12]
	ldr	r3, .L221+20
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L221+24
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
	ldr	r2, .L221+28
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L221+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L221+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L221+40
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L221+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L221+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L219
	ldr	r3, .L221+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L220
.L212:
	pop	{r4, r5, r6, lr}
	bx	lr
.L219:
	bl	goToLose
	ldr	r3, .L221+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L212
.L220:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L222:
	.align	2
.L221:
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
	ldr	r3, .L233
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L233+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L232
	pop	{r4, lr}
	bx	lr
.L232:
	bl	goToSplashScreen
	ldr	r3, .L233+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L234:
	.align	2
.L233:
	.word	oldButtons
	.word	buttons
	.word	state
	.size	win, .-win
	.align	2
	.global	goToGameInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGameInstructions, %function
goToGameInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	mov	r4, #67108864
	mov	r5, #0
	ldr	r6, .L237
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L237+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L237+8
	ldr	r1, .L237+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L237+16
	mov	r3, #1024
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L237+20
	ldr	r1, .L237+24
	mov	lr, pc
	bx	r6
	mov	r2, #11
	ldr	r3, .L237+28
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L238:
	.align	2
.L237:
	.word	DMANow
	.word	dialogueFontPal
	.word	100679680
	.word	dialogueFontTiles
	.word	5124
	.word	100704256
	.word	gameInstructionsMap
	.word	state
	.size	goToGameInstructions, .-goToGameInstructions
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
	ldr	r3, .L264
	ldrh	r2, [r3]
	ldr	r1, .L264+4
	tst	r2, #128
	ldr	r0, [r1]
	beq	.L240
	ldr	ip, .L264+8
	ldrh	ip, [ip]
	tst	ip, #128
	bne	.L240
	cmp	r0, #0
	moveq	r2, #1
	streq	r2, [r1]
	beq	.L242
	tst	r2, #64
	beq	.L242
	tst	ip, #64
	bne	.L242
	cmp	r0, #1
	moveq	r2, #0
	streq	r2, [r1]
	beq	.L244
.L243:
	cmp	r0, #0
	bne	.L242
.L244:
	mov	r2, #83886080
	mov	ip, #31
	mov	r0, #0
	strh	ip, [r2, #24]	@ movhi
	strh	r0, [r2, #26]	@ movhi
.L245:
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L264+8
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.L247
	b	goToStart
.L240:
	tst	r2, #64
	beq	.L243
	ldr	r2, .L264+8
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L243
	cmp	r0, #1
	moveq	r2, #0
	streq	r2, [r1]
	bne	.L243
	b	.L244
.L242:
	mov	r2, #83886080
	mov	ip, #0
	mov	r0, #31
	strh	ip, [r2, #24]	@ movhi
	strh	r0, [r2, #26]	@ movhi
	b	.L245
.L247:
	b	goToGameInstructions
.L265:
	.align	2
.L264:
	.word	oldButtons
	.word	.LANCHOR0
	.word	buttons
	.size	splashScreen, .-splashScreen
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
	ldr	r3, .L286
	mov	lr, pc
	bx	r3
	ldr	r3, .L286+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L286+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L286+12
	ldr	r7, .L286+16
	ldr	r6, .L286+20
	ldr	fp, .L286+24
	ldr	r10, .L286+28
	ldr	r9, .L286+32
	ldr	r8, .L286+36
	ldr	r5, .L286+40
.L281:
	ldrh	r1, [r4]
	strh	r1, [r7]	@ movhi
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L267
.L269:
	.word	.L279
	.word	.L278
	.word	.L277
	.word	.L276
	.word	.L275
	.word	.L274
	.word	.L273
	.word	.L272
	.word	.L271
	.word	.L270
	.word	.L270
	.word	.L268
.L270:
	tst	r1, #8
	ldrne	r3, .L286+44
	movne	lr, pc
	bxne	r3
.L267:
	mov	lr, pc
	bx	r8
	b	.L281
.L271:
	ldr	r3, .L286+48
	mov	lr, pc
	bx	r3
	b	.L267
.L272:
	ldr	r3, .L286+52
	mov	lr, pc
	bx	r3
	b	.L267
.L273:
	ldr	r3, .L286+56
	mov	lr, pc
	bx	r3
	b	.L267
.L274:
	ldr	r3, .L286+60
	mov	lr, pc
	bx	r3
	b	.L267
.L275:
	ldr	r3, .L286+64
	mov	lr, pc
	bx	r3
	b	.L267
.L276:
	ldr	r3, .L286+68
	mov	lr, pc
	bx	r3
	b	.L267
.L277:
	mov	lr, pc
	bx	r9
	b	.L267
.L278:
	mov	lr, pc
	bx	r10
	b	.L267
.L268:
	tst	r1, #8
	beq	.L267
	tst	r3, #8
	bne	.L267
	ldr	r3, .L286+8
	mov	lr, pc
	bx	r3
	b	.L267
.L279:
	mov	lr, pc
	bx	fp
	b	.L267
.L287:
	.align	2
.L286:
	.word	mgba_open
	.word	setupSounds
	.word	goToSplashScreen
	.word	buttons
	.word	oldButtons
	.word	state
	.word	splashScreen
	.word	start
	.word	startInstructions
	.word	waitForVBlank
	.word	67109120
	.word	lose.part.0
	.word	pause
	.word	phaseThree
	.word	phaseThreeInstructions
	.word	phaseTwo
	.word	phaseTwoInstructions
	.word	phaseOne
	.size	main, .-main
	.text
	.align	2
	.global	gameInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	gameInstructions, %function
gameInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L293
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L293+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToSplashScreen
.L294:
	.align	2
.L293:
	.word	oldButtons
	.word	buttons
	.size	gameInstructions, .-gameInstructions
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
	.comm	soundB,24,4
	.comm	soundA,24,4
	.comm	healthBarFrames,72,4
	.comm	next,4,4
	.comm	winPhaseThree,4,4
	.comm	playerPaletteWork,512,4
	.comm	winPhaseTwo,4,4
	.comm	snows,180,4
	.comm	movedHorizontally,4,4
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
	.type	splashSelection, %object
	.size	splashSelection, 4
splashSelection:
	.space	4
	.type	resumingFromPause, %object
	.size	resumingFromPause, 4
resumingFromPause:
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
	.type	begin, %object
	.size	begin, 4
begin:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
