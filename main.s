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
	ldr	r1, .L4+28
	strh	r0, [r2, #28]	@ movhi
	strh	r3, [r2, #30]	@ movhi
	str	r3, [r1]
	ldr	r1, .L4+32
	ldr	r2, .L4+36
	ldr	r4, .L4+40
	ldr	lr, .L4+44
	ldr	ip, .L4+48
	ldr	r0, .L4+52
	strb	r3, [r1]
	str	r3, [r4]
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	str	r3, [r2, #24]
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
	.word	gameOver
	.word	state
	.word	.LANCHOR0
	.word	winPhaseOne
	.word	winPhaseTwo
	.word	winPhaseThree
	.word	next
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
	str	r2, [r4, #20]
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
	cmp	r3, r2
	bne	.L18
	add	r2, r3, #2
	cmp	r2, r0
	bne	.L17
	ldr	r3, .L22+36
	ldr	r2, .L22+40
	strh	r1, [r3, #50]	@ movhi
	strh	r1, [r3, #114]	@ movhi
	strh	r1, [r3, #52]	@ movhi
	strh	r1, [r3, #116]	@ movhi
	strh	r1, [r3, #54]	@ movhi
	strh	r1, [r3, #118]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r1, [r3, #120]	@ movhi
	strh	r1, [r3, #58]	@ movhi
	strh	r1, [r3, #122]	@ movhi
	strh	r1, [r3, #60]	@ movhi
	strh	r1, [r3, #124]	@ movhi
	strh	r1, [r3, #62]	@ movhi
	strh	r1, [r3, #126]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L22+44
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #96
	ldr	r1, .L22+48
	str	r3, [r4]
	mov	r2, #1
	ldr	r3, .L22+52
	ldr	r1, [r1]
	ldr	r0, .L22+56
	str	ip, [r4, #4]
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
	str	r5, [r4, #20]
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
	mov	r3, #96
	mov	r6, #1
	mov	lr, #436
	ldr	r2, .L26+32
	ldr	r1, .L26+36
	ldr	ip, .L26+40
	str	r5, [r2]
	str	r3, [r4, #4]
	mov	r2, r5
	ldr	r3, .L26+44
	ldr	r1, [r1]
	ldr	r0, .L26+48
	str	r5, [r4]
	str	r6, [r4, #8]
	str	lr, [ip, #16]
	mov	lr, pc
	bx	r3
	ldr	r3, .L26+52
	strb	r6, [r3]
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
	.word	next
	.word	action_length
	.word	startPlayer
	.word	playSoundB
	.word	action_data
	.word	state
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
	str	r6, [r4, #20]
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
	ldr	lr, [r4, #28]
	ldr	r3, .L30+36
	ldr	ip, [r4, #32]
	str	r6, [r4]
	str	r5, [r4, #4]
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
	push	{r4, r5, r6, lr}
	mov	r2, #768
	mov	r4, #67108864
	mov	r5, #0
	ldr	r6, .L34
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L34+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L34+8
	ldr	r1, .L34+12
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L34+16
	ldr	r1, .L34+20
	mov	lr, pc
	bx	r6
	ldr	r3, .L34+24
	ldr	r2, .L34+28
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L34+32
	ldr	r1, .L34+36
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L34+40
	ldr	r1, .L34+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #2
	ldr	r1, .L34+48
	ldr	r3, .L34+52
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #16]
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	DMANow
	.word	largemantilesPal
	.word	100679680
	.word	dialogueFontTiles
	.word	100712448
	.word	largemantilesTiles
	.word	5125
	.word	6412
	.word	100704256
	.word	diaOneMap
	.word	100714496
	.word	speakingManMap
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
	ldr	r3, [r4, #12]
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
	str	r3, [r4, #12]
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
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L62
.L60:
	mov	r1, #3
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L63+56
	strb	r1, [r2]
	str	r3, [r5, #20]
	str	r3, [r5]
	str	r0, [r5, #4]
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
	push	{r4, r5, r6, lr}
	mov	r2, #768
	mov	r4, #67108864
	mov	r5, #0
	ldr	r6, .L67
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L67+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L67+8
	ldr	r1, .L67+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L67+16
	ldr	r2, .L67+20
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L67+24
	ldr	r1, .L67+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L67+32
	mov	r0, #3
	ldr	r1, .L67+36
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r3, .L67+40
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L68:
	.align	2
.L67:
	.word	DMANow
	.word	largemantilesPal
	.word	100679680
	.word	dialogueFontTiles
	.word	5124
	.word	6412
	.word	100714496
	.word	speakingMan2Map
	.word	100704256
	.word	gameInstructions2Map
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
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L72
.L70:
	mov	r1, #5
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L73+56
	strb	r1, [r2]
	str	r3, [r5, #20]
	str	r3, [r5]
	str	r0, [r5, #4]
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
	@ link register save eliminated.
	ldr	r3, .L80
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L80+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseTwo
.L81:
	.align	2
.L80:
	.word	oldButtons
	.word	buttons
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
	push	{r4, r5, r6, lr}
	mov	r2, #768
	mov	r4, #67108864
	mov	r5, #0
	ldr	r6, .L84
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L84+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L84+8
	ldr	r1, .L84+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L84+16
	ldr	r2, .L84+20
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L84+24
	ldr	r1, .L84+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L84+32
	mov	r0, #3
	ldr	r1, .L84+36
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r3, .L84+40
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L85:
	.align	2
.L84:
	.word	DMANow
	.word	largemantilesPal
	.word	100679680
	.word	dialogueFontTiles
	.word	5124
	.word	6412
	.word	100714496
	.word	speakingMan2Map
	.word	100704256
	.word	gameInstructions3Map
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
	ldr	ip, .L88
	ldr	r2, .L88+4
	ldr	r1, .L88+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L88+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L88+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L88+20
	ldr	r1, .L88+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L88+28
	ldr	r1, .L88+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L88+36
	ldr	r1, .L88+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L88+44
	ldr	r1, .L88+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L88+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L88+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L88+60
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L88+64
	ldr	r3, .L88+68
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L89:
	.align	2
.L88:
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
	@ link register save eliminated.
	ldr	r3, .L95
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L95+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseThree
.L96:
	.align	2
.L95:
	.word	oldButtons
	.word	buttons
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
	ldr	r8, .L99
	ldr	r7, .L99+4
	ldr	r5, .L99+8
	strh	r6, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L99+12
	mov	lr, pc
	bx	r5
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L99+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L99+20
	mov	r0, #3
	ldr	r1, .L99+24
	mov	lr, pc
	bx	r5
	mov	r2, #8
	ldr	r3, .L99+28
	strh	r6, [r4, #16]	@ movhi
	strh	r6, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L100:
	.align	2
.L99:
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
	ldr	r4, .L118
	ldr	r3, .L118+4
	mov	r0, r4
	add	r1, r4, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #4]
	ldrh	r2, [r4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L118+12
	mov	lr, pc
	bx	r2
	ldr	r3, .L118+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L118+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L118+24
	mov	lr, pc
	bx	r5
	ldr	r3, .L118+28
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L115
.L102:
	ldr	r3, .L118+32
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L116
.L103:
	ldr	r3, .L118+36
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L101
	ldr	r3, .L118+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L117
.L101:
	pop	{r4, r5, r6, lr}
	bx	lr
.L116:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L103
	ldr	r3, .L118+44
	mov	lr, pc
	bx	r3
	bl	goToPhaseOne
	b	.L103
.L115:
	bl	goToStartInstructions
	b	.L102
.L117:
	ldr	r3, .L118+48
	ldr	r2, .L118+52
	ldr	ip, [r3, #16]
	ldr	r0, [r3, #20]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L118+56
	ldr	r3, .L118+44
	str	ip, [r4, #28]
	str	r0, [r4, #32]
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToPause
.L119:
	.align	2
.L118:
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
	ldr	r3, .L122
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L122+4
	ldr	r3, .L122+8
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	goToPause
.L123:
	.align	2
.L122:
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
	ldr	r3, .L142
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L142+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r4, .L142+8
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r2, .L142+12
	sub	r3, r3, #1
	str	r1, [r2, #20]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L126
.L128:
	.word	.L133
	.word	.L132
	.word	.L131
	.word	.L130
	.word	.L129
	.word	.L127
.L127:
	bl	goToPhaseThreeInstructions
.L134:
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldr	r3, .L142+16
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L133:
	bl	goToStartThree
	b	.L134
.L132:
	bl	goToStartInstructions
	b	.L134
.L131:
	bl	goToPhaseOne
	b	.L134
.L130:
	bl	goToPhaseTwoInstructions
	b	.L134
.L129:
	bl	goToPhaseTwo
	b	.L134
.L126:
	bl	goToStart
	b	.L134
.L143:
	.align	2
.L142:
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
	ldr	r2, .L146
	ldr	ip, .L146+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L146+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L146+12
	ldr	r4, .L146+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L146+20
	ldr	r3, .L146+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L146+28
	mov	r3, #15
	ldr	r2, .L146+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L146+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L147:
	.align	2
.L146:
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
	ldr	r5, .L161
	ldr	r3, .L161+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L161+8
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L161+12
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L161+16
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
	ldr	r2, .L161+20
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L161+24
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L161+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L161+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L159
	ldr	r3, .L161+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L160
.L150:
	ldr	r3, .L161+40
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseOne.part.0
.L148:
	pop	{r4, r5, r6, lr}
	bx	lr
.L159:
	bl	goToLose
	ldr	r3, .L161+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L150
.L160:
	bl	goToPhaseTwoInstructions
	b	.L150
.L162:
	.align	2
.L161:
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
	ldr	r5, .L176
	ldr	r3, .L176+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L176+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L176+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L176+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L176+20
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
	ldr	r2, .L176+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L176+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L176+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L176+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L176+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L174
	ldr	r3, .L176+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L175
.L165:
	ldr	r3, .L176+48
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseTwo.part.0
.L163:
	pop	{r4, r5, r6, lr}
	bx	lr
.L174:
	bl	goToLose
	ldr	r3, .L176+44
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L165
.L175:
	bl	goToPhaseThreeInstructions
	b	.L165
.L177:
	.align	2
.L176:
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
	ldr	r3, .L180
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L181:
	.align	2
.L180:
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
	ldr	r2, .L184
	ldr	ip, .L184+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L184+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L184+12
	ldr	r4, .L184+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L184+20
	ldr	r3, .L184+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L184+28
	mov	r3, #15
	ldr	r2, .L184+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L184+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L185:
	.align	2
.L184:
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
	ldr	r5, .L195
	ldr	r3, .L195+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L195+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L195+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L195+16
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L195+20
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L195+24
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
	ldr	r2, .L195+28
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L195+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L195+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L195+40
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L195+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L195+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L193
	ldr	r3, .L195+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L194
.L186:
	pop	{r4, r5, r6, lr}
	bx	lr
.L193:
	bl	goToLose
	ldr	r3, .L195+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L186
.L194:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L196:
	.align	2
.L195:
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
	ldr	r3, .L207
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L207+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L206
	pop	{r4, lr}
	bx	lr
.L206:
	bl	goToSplashScreen
	ldr	r3, .L207+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L208:
	.align	2
.L207:
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
	ldr	r6, .L211
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L211+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L211+8
	ldr	r1, .L211+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L211+16
	mov	r3, #1024
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L211+20
	ldr	r1, .L211+24
	mov	lr, pc
	bx	r6
	mov	r2, #11
	ldr	r3, .L211+28
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L212:
	.align	2
.L211:
	.word	DMANow
	.word	largemantilesPal
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
	ldr	r3, .L238
	ldrh	r2, [r3]
	ldr	r1, .L238+4
	tst	r2, #128
	ldr	r0, [r1, #24]
	beq	.L214
	ldr	ip, .L238+8
	ldrh	ip, [ip]
	tst	ip, #128
	bne	.L214
	cmp	r0, #0
	moveq	r2, #1
	streq	r2, [r1, #24]
	beq	.L216
	tst	r2, #64
	beq	.L216
	tst	ip, #64
	bne	.L216
	cmp	r0, #1
	moveq	r2, #0
	streq	r2, [r1, #24]
	beq	.L218
.L217:
	cmp	r0, #0
	bne	.L216
.L218:
	mov	r2, #83886080
	mov	ip, #31
	mov	r0, #0
	strh	ip, [r2, #28]	@ movhi
	strh	r0, [r2, #30]	@ movhi
.L219:
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L238+8
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r3, [r1, #24]
	cmp	r3, #0
	bne	.L221
	b	goToStart
.L214:
	tst	r2, #64
	beq	.L217
	ldr	r2, .L238+8
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L217
	cmp	r0, #1
	moveq	r2, #0
	streq	r2, [r1, #24]
	bne	.L217
	b	.L218
.L216:
	mov	r2, #83886080
	mov	ip, #0
	mov	r0, #31
	strh	ip, [r2, #28]	@ movhi
	strh	r0, [r2, #30]	@ movhi
	b	.L219
.L221:
	b	goToGameInstructions
.L239:
	.align	2
.L238:
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
	ldr	r3, .L266
	mov	lr, pc
	bx	r3
	ldr	r3, .L266+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L266+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L266+12
	ldr	r7, .L266+16
	ldr	r6, .L266+20
	ldr	fp, .L266+24
	ldr	r10, .L266+28
	ldr	r9, .L266+32
	ldr	r8, .L266+36
	ldr	r5, .L266+40
.L255:
	ldrh	r1, [r4]
	strh	r1, [r7]	@ movhi
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L241
.L243:
	.word	.L253
	.word	.L252
	.word	.L251
	.word	.L250
	.word	.L249
	.word	.L248
	.word	.L247
	.word	.L246
	.word	.L245
	.word	.L244
	.word	.L244
	.word	.L242
.L244:
	tst	r1, #8
	ldrne	r3, .L266+44
	movne	lr, pc
	bxne	r3
.L241:
	mov	lr, pc
	bx	r8
	b	.L255
.L245:
	ldr	r3, .L266+48
	mov	lr, pc
	bx	r3
	b	.L241
.L246:
	ldr	r3, .L266+52
	mov	lr, pc
	bx	r3
	b	.L241
.L247:
	tst	r1, #8
	beq	.L241
	tst	r3, #8
	bne	.L241
	ldr	r3, .L266+56
	mov	lr, pc
	bx	r3
	b	.L241
.L248:
	ldr	r3, .L266+60
	mov	lr, pc
	bx	r3
	b	.L241
.L252:
	mov	lr, pc
	bx	r10
	b	.L241
.L242:
	tst	r1, #8
	beq	.L241
	tst	r3, #8
	bne	.L241
	ldr	r3, .L266+8
	mov	lr, pc
	bx	r3
	b	.L241
.L253:
	mov	lr, pc
	bx	fp
	b	.L241
.L250:
	ldr	r3, .L266+64
	mov	lr, pc
	bx	r3
	b	.L241
.L251:
	mov	lr, pc
	bx	r9
	b	.L241
.L249:
	tst	r1, #8
	beq	.L241
	tst	r3, #8
	bne	.L241
	ldr	r3, .L266+68
	mov	lr, pc
	bx	r3
	b	.L241
.L267:
	.align	2
.L266:
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
	.word	goToPhaseThree
	.word	phaseTwo
	.word	phaseOne
	.word	goToPhaseTwo
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
	ldr	r3, .L273
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L273+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToSplashScreen
.L274:
	.align	2
.L273:
	.word	oldButtons
	.word	buttons
	.size	gameInstructions, .-gameInstructions
	.align	2
	.global	resetGameState
	.syntax unified
	.arm
	.fpu softvfp
	.type	resetGameState, %function
resetGameState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	ldr	r2, .L277
	str	lr, [sp, #-4]!
	ldr	ip, .L277+4
	ldr	lr, .L277+8
	str	r3, [r2]
	ldr	r0, .L277+12
	ldr	r2, .L277+16
	ldr	r1, .L277+20
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	str	r3, [r2, #24]
	ldr	lr, [sp], #4
	bx	lr
.L278:
	.align	2
.L277:
	.word	gameOver
	.word	winPhaseTwo
	.word	winPhaseOne
	.word	winPhaseThree
	.word	.LANCHOR0
	.word	next
	.size	resetGameState, .-resetGameState
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
	.type	begin, %object
	.size	begin, 4
begin:
	.space	4
	.type	startPage, %object
	.size	startPage, 4
startPage:
	.space	4
	.type	resumingFromPause, %object
	.size	resumingFromPause, 4
resumingFromPause:
	.space	4
	.type	splashSelection, %object
	.size	splashSelection, 4
splashSelection:
	.space	4
	.type	savedStartX, %object
	.size	savedStartX, 4
savedStartX:
	.space	4
	.type	savedStartY, %object
	.size	savedStartY, 4
savedStartY:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
