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
	mov	r5, #0
	mov	r6, #67108864
	ldr	r4, .L18
	strh	r5, [r6]	@ movhi
	ldr	r3, .L18+4
	str	r5, [r4, #4]
	mov	lr, pc
	bx	r3
	mov	r3, #4608
	mov	r2, #53760
	strh	r3, [r6]	@ movhi
	mov	r0, #3
	strh	r2, [r6, #10]	@ movhi
	mov	r3, #256
	ldr	r6, .L18+8
	mov	r2, #83886080
	ldr	r1, .L18+12
	mov	lr, pc
	bx	r6
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L18+16
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r2, .L18+20
	ldr	r1, .L18+24
	mov	r3, #4096
	mov	lr, pc
	bx	r6
	ldr	r3, .L18+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+32
	mov	lr, pc
	bx	r3
	mov	ip, #96
	ldr	r3, .L18+36
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L18+40
	ldr	r3, .L18+44
	str	r5, [r4, #8]
	str	ip, [r4, #12]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L18+48
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.word	hideSprites
	.word	DMANow
	.word	sTSPal
	.word	sTSTiles
	.word	100700160
	.word	sTMMap
	.word	initStartPlayer
	.word	initGuideSprite
	.word	animaljam_length
	.word	animaljam_data
	.word	playSoundA
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
	ldr	r4, .L22
	strh	r3, [r2]	@ movhi
	ldr	r6, .L22+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L22+8
	str	r5, [r4, #4]
	mov	lr, pc
	bx	r6
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L22+12
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r2, .L22+16
	ldr	r1, .L22+20
	mov	r3, #4096
	mov	lr, pc
	bx	r6
	ldr	r3, .L22+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+28
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	ip, #96
	mov	r1, #436
	ldr	r0, .L22+32
	ldr	lr, .L22+36
	ldr	r2, .L22+40
	strb	r3, [r0]
	str	r5, [r4, #8]
	str	r5, [lr]
	str	ip, [r4, #12]
	str	r3, [r4, #16]
	str	r1, [r2, #16]
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	.align	2
.L22:
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
	ldr	r4, .L28
	strh	r3, [r2]	@ movhi
	ldr	r5, .L28+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L28+8
	str	r6, [r4, #4]
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+12
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L28+16
	ldr	r1, .L28+20
	mov	r3, #4096
	mov	lr, pc
	bx	r5
	ldr	r3, .L28+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L28+28
	mov	lr, pc
	bx	r3
	mov	ip, #96
	ldr	r3, .L28+32
	add	r0, r4, #20
	ldm	r0, {r0, r2}
	ldr	r1, [r3]
	ldr	r3, .L28+36
	str	r0, [r3, #16]
	str	r2, [r3, #20]
	ldr	r0, .L28+40
	mov	r2, #1
	ldr	r3, .L28+44
	str	r6, [r4, #8]
	str	ip, [r4, #12]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L28+48
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	.align	2
.L28:
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
	.word	animaljam_data
	.word	playSoundA
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
	ldr	r8, .L32
	ldr	r7, .L32+4
	ldr	r6, .L32+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L32+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L32+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L32+20
	ldr	r1, .L32+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #2
	ldr	r1, .L32+28
	ldr	r3, .L32+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #28]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L33:
	.align	2
.L32:
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
	ldr	r3, .L55
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, r5, r6, lr}
	bne	.L52
	ldr	r4, .L55+4
.L35:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L36
	pop	{r4, r5, r6, lr}
	bx	lr
.L52:
	ldr	r3, .L55+8
	ldrh	r3, [r3]
	tst	r3, #8
	ldr	r4, .L55+4
	bne	.L35
	ldr	r3, [r4, #28]
	add	r2, r3, #1
	str	r2, [r4, #28]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L35
.L37:
	.word	.L44
	.word	.L43
	.word	.L42
	.word	.L41
	.word	.L40
	.word	.L39
	.word	.L38
	.word	.L36
.L36:
	mov	r3, #0
	str	r3, [r4, #32]
	bl	goToStartTwo
	mov	r2, #1
	ldr	r3, .L55+12
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L38:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L55+16
	ldr	r1, .L55+20
	ldr	r5, .L55+24
	mov	lr, pc
	bx	r5
	b	.L35
.L44:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L55+16
	ldr	r1, .L55+28
	ldr	r5, .L55+24
	mov	lr, pc
	bx	r5
	b	.L35
.L43:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L55+16
	ldr	r1, .L55+32
	ldr	r5, .L55+24
	mov	lr, pc
	bx	r5
	b	.L35
.L42:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L55+16
	ldr	r1, .L55+36
	ldr	r5, .L55+24
	mov	lr, pc
	bx	r5
	b	.L35
.L41:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L55+16
	ldr	r1, .L55+40
	ldr	r5, .L55+24
	mov	lr, pc
	bx	r5
	b	.L35
.L40:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L55+16
	ldr	r1, .L55+44
	ldr	r5, .L55+24
	mov	lr, pc
	bx	r5
	b	.L35
.L39:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L55+16
	ldr	r1, .L55+48
	ldr	r5, .L55+24
	mov	lr, pc
	bx	r5
	b	.L35
.L56:
	.align	2
.L55:
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
	ldr	ip, .L61
	ldr	r2, .L61+4
	ldr	r1, .L61+8
	strh	lr, [r0]	@ movhi
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
	ldr	r5, .L61+36
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L61+40
	ldr	r1, .L61+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L61+48
	ldr	r1, .L61+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.L60
.L58:
	mov	r1, #3
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L61+56
	strb	r1, [r2]
	str	r3, [r5, #4]
	str	r3, [r5, #8]
	str	r0, [r5, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L60:
	ldr	r3, .L61+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L61+64
	mov	lr, pc
	bx	r3
	b	.L58
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
	ldr	r8, .L65
	ldr	r7, .L65+4
	ldr	r6, .L65+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L65+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L65+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L65+20
	ldr	r1, .L65+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r1, .L65+28
	ldr	r3, .L65+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #28]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L66:
	.align	2
.L65:
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
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.L70
.L68:
	mov	r1, #5
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L71+56
	strb	r1, [r2]
	str	r3, [r5, #4]
	str	r3, [r5, #8]
	str	r0, [r5, #12]
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
	ldr	r3, .L91
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L91+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L91+8
	ldr	r3, [r2, #28]
	add	r1, r3, #1
	push	{r4, lr}
	str	r1, [r2, #28]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L73
.L76:
	.word	.L83
	.word	.L82
	.word	.L81
	.word	.L80
	.word	.L79
	.word	.L78
	.word	.L77
	.word	.L75
.L78:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L91+12
	ldr	r1, .L91+16
	ldr	r4, .L91+20
	mov	lr, pc
	bx	r4
.L73:
	pop	{r4, lr}
	bx	lr
.L75:
	pop	{r4, lr}
	b	goToPhaseTwo
.L83:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L91+12
	ldr	r1, .L91+24
	ldr	r4, .L91+20
	mov	lr, pc
	bx	r4
	b	.L73
.L82:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L91+12
	ldr	r1, .L91+28
	ldr	r4, .L91+20
	mov	lr, pc
	bx	r4
	b	.L73
.L81:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L91+12
	ldr	r1, .L91+32
	ldr	r4, .L91+20
	mov	lr, pc
	bx	r4
	b	.L73
.L80:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L91+12
	ldr	r1, .L91+36
	ldr	r4, .L91+20
	mov	lr, pc
	bx	r4
	b	.L73
.L79:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L91+12
	ldr	r1, .L91+40
	ldr	r4, .L91+20
	mov	lr, pc
	bx	r4
	b	.L73
.L77:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L91+12
	ldr	r1, .L91+44
	ldr	r4, .L91+20
	mov	lr, pc
	bx	r4
	b	.L73
.L92:
	.align	2
.L91:
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
	ldr	r8, .L95
	ldr	r7, .L95+4
	ldr	r6, .L95+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L95+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L95+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L95+20
	ldr	r1, .L95+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r1, .L95+28
	ldr	r3, .L95+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #28]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L96:
	.align	2
.L95:
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
	ldr	ip, .L99
	ldr	r2, .L99+4
	ldr	r1, .L99+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L99+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L99+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L99+20
	ldr	r1, .L99+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L99+28
	ldr	r1, .L99+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L99+36
	ldr	r1, .L99+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L99+44
	ldr	r1, .L99+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L99+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+60
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L99+64
	ldr	r3, .L99+68
	strb	r1, [r2]
	str	r5, [r3, #8]
	str	r0, [r3, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L100:
	.align	2
.L99:
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
	ldr	r3, .L119
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L119+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L119+8
	ldr	r3, [r2, #28]
	add	r1, r3, #1
	push	{r4, lr}
	str	r1, [r2, #28]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L101
.L104:
	.word	.L111
	.word	.L110
	.word	.L109
	.word	.L108
	.word	.L107
	.word	.L106
	.word	.L105
	.word	.L103
.L106:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L119+12
	ldr	r1, .L119+16
	ldr	r4, .L119+20
	mov	lr, pc
	bx	r4
.L101:
	pop	{r4, lr}
	bx	lr
.L103:
	pop	{r4, lr}
	b	goToPhaseThree
.L111:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L119+12
	ldr	r1, .L119+24
	ldr	r4, .L119+20
	mov	lr, pc
	bx	r4
	b	.L101
.L110:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L119+12
	ldr	r1, .L119+28
	ldr	r4, .L119+20
	mov	lr, pc
	bx	r4
	b	.L101
.L109:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L119+12
	ldr	r1, .L119+32
	ldr	r4, .L119+20
	mov	lr, pc
	bx	r4
	b	.L101
.L108:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L119+12
	ldr	r1, .L119+36
	ldr	r4, .L119+20
	mov	lr, pc
	bx	r4
	b	.L101
.L107:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L119+12
	ldr	r1, .L119+40
	ldr	r4, .L119+20
	mov	lr, pc
	bx	r4
	b	.L101
.L105:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L119+12
	ldr	r1, .L119+44
	ldr	r4, .L119+20
	mov	lr, pc
	bx	r4
	b	.L101
.L120:
	.align	2
.L119:
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
	ldr	r8, .L123
	ldr	r7, .L123+4
	ldr	r5, .L123+8
	strh	r6, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L123+12
	mov	lr, pc
	bx	r5
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L123+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L123+20
	mov	r0, #3
	ldr	r1, .L123+24
	mov	lr, pc
	bx	r5
	mov	r2, #8
	ldr	r3, .L123+28
	strh	r6, [r4, #16]	@ movhi
	strh	r6, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L124:
	.align	2
.L123:
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
	ldr	r4, .L142
	ldr	r3, .L142+4
	add	r0, r4, #8
	add	r1, r4, #12
	mov	lr, pc
	bx	r3
	ldr	r3, .L142+8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #12]
	ldrh	r2, [r4, #8]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L142+12
	mov	lr, pc
	bx	r2
	ldr	r3, .L142+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L142+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L142+24
	mov	lr, pc
	bx	r5
	ldr	r3, .L142+28
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L139
.L126:
	ldr	r3, .L142+32
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L140
.L127:
	ldr	r3, .L142+36
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L125
	ldr	r3, .L142+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L141
.L125:
	pop	{r4, r5, r6, lr}
	bx	lr
.L140:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L127
	ldr	r3, .L142+44
	mov	lr, pc
	bx	r3
	bl	goToPhaseOne
	b	.L127
.L139:
	bl	goToStartInstructions
	b	.L126
.L141:
	ldr	r3, .L142+48
	ldr	r2, .L142+52
	ldr	ip, [r3, #16]
	ldr	r0, [r3, #20]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L142+56
	ldr	r3, .L142+44
	str	ip, [r4, #20]
	str	r0, [r4, #24]
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToPause
.L143:
	.align	2
.L142:
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
	ldr	r3, .L146
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L146+4
	ldr	r3, .L146+8
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	goToPause
.L147:
	.align	2
.L146:
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
	ldr	r3, .L166
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L166+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r4, .L166+8
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r2, .L166+12
	sub	r3, r3, #1
	str	r1, [r2, #4]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L150
.L152:
	.word	.L157
	.word	.L156
	.word	.L155
	.word	.L154
	.word	.L153
	.word	.L151
.L151:
	bl	goToPhaseThreeInstructions
.L158:
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldr	r3, .L166+16
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L157:
	bl	goToStartThree
	b	.L158
.L156:
	bl	goToStartInstructions
	b	.L158
.L155:
	bl	goToPhaseOne
	b	.L158
.L154:
	bl	goToPhaseTwoInstructions
	b	.L158
.L153:
	bl	goToPhaseTwo
	b	.L158
.L150:
	bl	goToStart
	b	.L158
.L167:
	.align	2
.L166:
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
	ldr	r2, .L170
	ldr	ip, .L170+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L170+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L170+12
	ldr	r4, .L170+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L170+20
	ldr	r3, .L170+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L170+28
	mov	r3, #15
	ldr	r2, .L170+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L170+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L171:
	.align	2
.L170:
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
	ldr	r5, .L185
	ldr	r3, .L185+4
	add	r1, r5, #12
	add	r0, r5, #8
	mov	lr, pc
	bx	r3
	ldr	r3, .L185+8
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #8]
	ldr	r1, [r5, #12]
	ldr	r3, .L185+12
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L185+16
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
	ldr	r2, .L185+20
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L185+24
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L185+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L185+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L183
	ldr	r3, .L185+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L184
.L174:
	ldr	r3, .L185+40
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseOne.part.0
.L172:
	pop	{r4, r5, r6, lr}
	bx	lr
.L183:
	bl	goToLose
	ldr	r3, .L185+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L174
.L184:
	bl	goToPhaseTwoInstructions
	b	.L174
.L186:
	.align	2
.L185:
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
	ldr	r5, .L200
	ldr	r3, .L200+4
	add	r1, r5, #12
	add	r0, r5, #8
	mov	lr, pc
	bx	r3
	ldr	r3, .L200+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L200+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #8]
	ldr	r1, [r5, #12]
	ldr	r3, .L200+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L200+20
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
	ldr	r2, .L200+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L200+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L200+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L200+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L200+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L198
	ldr	r3, .L200+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L199
.L189:
	ldr	r3, .L200+48
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseTwo.part.0
.L187:
	pop	{r4, r5, r6, lr}
	bx	lr
.L198:
	bl	goToLose
	ldr	r3, .L200+44
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L189
.L199:
	bl	goToPhaseThreeInstructions
	b	.L189
.L201:
	.align	2
.L200:
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
	ldr	r3, .L204
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L205:
	.align	2
.L204:
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
	ldr	r2, .L208
	ldr	ip, .L208+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L208+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L208+12
	ldr	r4, .L208+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L208+20
	ldr	r3, .L208+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L208+28
	mov	r3, #15
	ldr	r2, .L208+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L208+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L209:
	.align	2
.L208:
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
	ldr	r5, .L219
	ldr	r3, .L219+4
	add	r1, r5, #12
	add	r0, r5, #8
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
	ldr	ip, [r5, #8]
	ldr	r1, [r5, #12]
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
	bne	.L217
	ldr	r3, .L219+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L218
.L210:
	pop	{r4, r5, r6, lr}
	bx	lr
.L217:
	bl	goToLose
	ldr	r3, .L219+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L210
.L218:
	pop	{r4, r5, r6, lr}
	b	goToWin
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
	ldr	r3, .L231
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L231+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L230
	pop	{r4, lr}
	bx	lr
.L230:
	bl	goToSplashScreen
	ldr	r3, .L231+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L232:
	.align	2
.L231:
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
	ldr	r6, .L235
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L235+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L235+8
	ldr	r1, .L235+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L235+16
	mov	r3, #1024
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L235+20
	ldr	r1, .L235+24
	mov	lr, pc
	bx	r6
	mov	r2, #11
	ldr	r3, .L235+28
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L236:
	.align	2
.L235:
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
	ldr	r3, .L262
	ldrh	r2, [r3]
	ldr	r1, .L262+4
	tst	r2, #128
	ldr	r0, [r1]
	beq	.L238
	ldr	ip, .L262+8
	ldrh	ip, [ip]
	tst	ip, #128
	bne	.L238
	cmp	r0, #0
	moveq	r2, #1
	streq	r2, [r1]
	beq	.L240
	tst	r2, #64
	beq	.L240
	tst	ip, #64
	bne	.L240
	cmp	r0, #1
	moveq	r2, #0
	streq	r2, [r1]
	beq	.L242
.L241:
	cmp	r0, #0
	bne	.L240
.L242:
	mov	r2, #83886080
	mov	ip, #31
	mov	r0, #0
	strh	ip, [r2, #24]	@ movhi
	strh	r0, [r2, #26]	@ movhi
.L243:
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L262+8
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.L245
	b	goToStart
.L238:
	tst	r2, #64
	beq	.L241
	ldr	r2, .L262+8
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L241
	cmp	r0, #1
	moveq	r2, #0
	streq	r2, [r1]
	bne	.L241
	b	.L242
.L240:
	mov	r2, #83886080
	mov	ip, #0
	mov	r0, #31
	strh	ip, [r2, #24]	@ movhi
	strh	r0, [r2, #26]	@ movhi
	b	.L243
.L245:
	b	goToGameInstructions
.L263:
	.align	2
.L262:
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
	ldr	r3, .L284
	mov	lr, pc
	bx	r3
	ldr	r3, .L284+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L284+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L284+12
	ldr	r7, .L284+16
	ldr	r6, .L284+20
	ldr	fp, .L284+24
	ldr	r10, .L284+28
	ldr	r9, .L284+32
	ldr	r8, .L284+36
	ldr	r5, .L284+40
.L279:
	ldrh	r1, [r4]
	strh	r1, [r7]	@ movhi
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L265
.L267:
	.word	.L277
	.word	.L276
	.word	.L275
	.word	.L274
	.word	.L273
	.word	.L272
	.word	.L271
	.word	.L270
	.word	.L269
	.word	.L268
	.word	.L268
	.word	.L266
.L268:
	tst	r1, #8
	ldrne	r3, .L284+44
	movne	lr, pc
	bxne	r3
.L265:
	mov	lr, pc
	bx	r8
	b	.L279
.L269:
	ldr	r3, .L284+48
	mov	lr, pc
	bx	r3
	b	.L265
.L270:
	ldr	r3, .L284+52
	mov	lr, pc
	bx	r3
	b	.L265
.L271:
	ldr	r3, .L284+56
	mov	lr, pc
	bx	r3
	b	.L265
.L272:
	ldr	r3, .L284+60
	mov	lr, pc
	bx	r3
	b	.L265
.L273:
	ldr	r3, .L284+64
	mov	lr, pc
	bx	r3
	b	.L265
.L274:
	ldr	r3, .L284+68
	mov	lr, pc
	bx	r3
	b	.L265
.L275:
	mov	lr, pc
	bx	r9
	b	.L265
.L276:
	mov	lr, pc
	bx	r10
	b	.L265
.L266:
	tst	r1, #8
	beq	.L265
	tst	r3, #8
	bne	.L265
	ldr	r3, .L284+8
	mov	lr, pc
	bx	r3
	b	.L265
.L277:
	mov	lr, pc
	bx	fp
	b	.L265
.L285:
	.align	2
.L284:
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
	ldr	r3, .L291
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L291+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToSplashScreen
.L292:
	.align	2
.L291:
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
