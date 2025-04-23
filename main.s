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
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	lr, #100663296
	ldr	r2, .L10
	ldr	ip, .L10+4
	strh	r2, [r3]	@ movhi
	sub	sp, sp, #44
	mov	r2, #83886080
	ldr	r1, .L10+8
	mov	r3, #256
	mov	r0, #3
	ldr	fp, .L10+12
	str	lr, [ip]
	mov	lr, pc
	bx	fp
	ldr	r0, .L10+16
	ldr	r3, .L10+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L10+24
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L10+28
	ldr	r3, .L10+32
	add	r9, sp, #4
	mov	lr, pc
	bx	r3
	mov	r2, r9
	ldr	r3, .L10+8
	add	r0, r3, #34
.L2:
	ldrh	r1, [r3], #2
	cmp	r3, r0
	strh	r1, [r2], #2	@ movhi
	bne	.L2
	mov	r10, #0
	ldr	r5, .L10+36
	ldr	r8, .L10+40
	ldr	r7, .L10+44
	sub	r5, r5, r9
	add	r6, r9, #34
.L4:
	mov	lr, pc
	bx	r8
	mov	r4, r9
.L3:
	ldrh	r0, [r4], #2
	mov	r3, #120
	mov	r2, r10
	mov	r1, #0
	mov	lr, pc
	bx	r7
	cmp	r4, r6
	strh	r0, [r5, r4]	@ movhi
	bne	.L3
	add	r10, r10, #1
	cmp	r10, #121
	bne	.L4
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r8
	mov	r2, #83886080
	ldr	r1, .L10+48
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	fp
	ldr	r0, .L10+52
	ldr	r3, .L10+20
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, .L10+56
	ldr	r4, .L10+60
	str	r3, [r2]
	ldr	lr, .L10+64
	ldr	r2, .L10+68
	ldr	ip, .L10+72
	ldr	r0, .L10+76
	ldr	r1, .L10+80
	str	r3, [r4]
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	strb	r3, [r1]
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	1028
	.word	videoBuffer
	.word	splashp1Pal
	.word	DMANow
	.word	splashp1Bitmap
	.word	drawFullscreenImage4
	.word	splashSound_length
	.word	splashSound_data
	.word	playSoundA
	.word	83886078
	.word	waitForVBlank
	.word	blendColor
	.word	splashp3Pal
	.word	splashp3Bitmap
	.word	gameOver
	.word	winPhaseOne
	.word	winPhaseTwo
	.word	.LANCHOR0
	.word	winPhaseThree
	.word	next
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
	ldr	r3, .L14
	mov	lr, pc
	bx	r3
	ldr	r3, .L14+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToSplashScreen
.L15:
	.align	2
.L14:
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
	ldr	r3, .L20
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L19
	pop	{r4, lr}
	bx	lr
.L19:
	bl	goToSplashScreen
	ldr	r3, .L20+4
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r3, #4608
	mov	r5, #67108864
	mov	r2, #0
	ldr	r4, .L32
	strh	r3, [r5]	@ movhi
	sub	sp, sp, #20
	ldr	r3, .L32+4
	str	r2, [r4, #20]
	mov	lr, pc
	bx	r3
	mov	r2, #53760
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r5, .L32+8
	mov	r2, #83886080
	ldr	r1, .L32+12
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L32+16
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L32+20
	ldr	r1, .L32+24
	mov	lr, pc
	bx	r5
	mov	r5, #27
	mov	lr, #364
.L23:
	mov	r1, #57
	asr	ip, r5, #5
	add	ip, ip, #9
	and	r0, r5, #31
	lsl	ip, ip, #1
	lsl	r0, r0, #5
.L24:
	add	r2, ip, r1, asr #5
	and	r3, r1, #31
	lsl	r2, r2, #11
	add	r3, r3, r0
	add	r1, r1, #1
	add	r2, r2, #100663296
	lsl	r3, r3, #1
	cmp	r1, #67
	strh	lr, [r2, r3]	@ movhi
	bne	.L24
	add	r5, r5, #1
	cmp	r5, #37
	bne	.L23
	mov	ip, sp
	ldr	r3, .L32+28
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	ldr	lr, .L32+32
	add	r5, sp, #16
.L26:
	mov	r1, lr
	ldr	r3, [ip], #4
	lsl	r3, r3, #4
	add	r0, r3, #16
.L27:
	lsl	r2, r3, #1
	add	r2, r2, #100663296
	ldrh	r2, [r2]
	add	r3, r3, #1
	cmp	r0, r3
	strh	r2, [r1, #2]!	@ movhi
	bne	.L27
	cmp	r5, ip
	add	lr, lr, #32
	bne	.L26
	ldr	r3, .L32+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L32+40
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #96
	ldr	r1, .L32+44
	str	r3, [r4]
	mov	r2, #1
	ldr	r1, [r1]
	ldr	r0, .L32+48
	ldr	r3, .L32+52
	str	ip, [r4, #4]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L32+56
	strb	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.word	hideSprites
	.word	DMANow
	.word	sTSPal
	.word	sTSTiles
	.word	100700160
	.word	sTMMap
	.word	.LANCHOR1
	.word	originalTiles-2
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
	ldr	r4, .L36
	strh	r3, [r2]	@ movhi
	ldr	r6, .L36+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L36+8
	str	r5, [r4, #20]
	mov	lr, pc
	bx	r6
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L36+12
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r2, .L36+16
	ldr	r1, .L36+20
	mov	r3, #4096
	mov	lr, pc
	bx	r6
	ldr	r3, .L36+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+28
	mov	lr, pc
	bx	r3
	mov	r3, #96
	mov	r6, #1
	mov	lr, #436
	ldr	r2, .L36+32
	ldr	r1, .L36+36
	ldr	ip, .L36+40
	str	r5, [r2]
	str	r3, [r4, #4]
	mov	r2, r5
	ldr	r3, .L36+44
	ldr	r1, [r1]
	ldr	r0, .L36+48
	str	r5, [r4]
	str	r6, [r4, #8]
	str	lr, [ip, #16]
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+52
	strb	r6, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L37:
	.align	2
.L36:
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
	ldr	r4, .L40
	strh	r3, [r2]	@ movhi
	ldr	r5, .L40+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L40+8
	str	r6, [r4, #20]
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L40+12
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L40+16
	ldr	r1, .L40+20
	mov	r3, #4096
	mov	lr, pc
	bx	r5
	mov	r5, #96
	ldr	r3, .L40+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L40+32
	ldr	lr, [r4, #24]
	ldr	r3, .L40+36
	ldr	ip, [r4, #28]
	str	r6, [r4]
	str	r5, [r4, #4]
	ldr	r1, [r2]
	ldr	r4, .L40+40
	mov	r2, #1
	ldr	r0, .L40+44
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L40+48
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L41:
	.align	2
.L40:
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
	ldr	r6, .L44
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L44+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L44+8
	ldr	r1, .L44+12
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L44+16
	ldr	r1, .L44+20
	mov	lr, pc
	bx	r6
	ldr	r3, .L44+24
	ldr	r2, .L44+28
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L44+32
	ldr	r1, .L44+36
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L44+40
	ldr	r1, .L44+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #2
	ldr	r1, .L44+48
	ldr	r3, .L44+52
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #16]
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L45:
	.align	2
.L44:
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
	ldr	r3, .L67
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, r5, r6, lr}
	bne	.L64
	ldr	r4, .L67+4
.L47:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	bne	.L48
	pop	{r4, r5, r6, lr}
	bx	lr
.L64:
	ldr	r3, .L67+8
	ldrh	r3, [r3]
	tst	r3, #8
	ldr	r4, .L67+4
	bne	.L47
	ldr	r3, [r4, #16]
	add	r2, r3, #1
	str	r2, [r4, #16]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L47
.L49:
	.word	.L56
	.word	.L55
	.word	.L54
	.word	.L53
	.word	.L52
	.word	.L51
	.word	.L50
	.word	.L48
.L48:
	mov	r3, #0
	str	r3, [r4, #12]
	bl	goToStartTwo
	mov	r2, #1
	ldr	r3, .L67+12
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L50:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L67+16
	ldr	r1, .L67+20
	ldr	r5, .L67+24
	mov	lr, pc
	bx	r5
	b	.L47
.L56:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L67+16
	ldr	r1, .L67+28
	ldr	r5, .L67+24
	mov	lr, pc
	bx	r5
	b	.L47
.L55:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L67+16
	ldr	r1, .L67+32
	ldr	r5, .L67+24
	mov	lr, pc
	bx	r5
	b	.L47
.L54:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L67+16
	ldr	r1, .L67+36
	ldr	r5, .L67+24
	mov	lr, pc
	bx	r5
	b	.L47
.L53:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L67+16
	ldr	r1, .L67+40
	ldr	r5, .L67+24
	mov	lr, pc
	bx	r5
	b	.L47
.L52:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L67+16
	ldr	r1, .L67+44
	ldr	r5, .L67+24
	mov	lr, pc
	bx	r5
	b	.L47
.L51:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L67+16
	ldr	r1, .L67+48
	ldr	r5, .L67+24
	mov	lr, pc
	bx	r5
	b	.L47
.L68:
	.align	2
.L67:
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
	mov	r1, #3
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
	ldr	r6, .L77
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L77+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L77+8
	ldr	r1, .L77+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L77+16
	ldr	r2, .L77+20
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L77+24
	ldr	r1, .L77+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L77+32
	mov	r0, #3
	ldr	r1, .L77+36
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r3, .L77+40
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L78:
	.align	2
.L77:
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
	ldr	ip, .L83
	ldr	r2, .L83+4
	ldr	r1, .L83+8
	strh	lr, [r0]	@ movhi
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
	ldr	r5, .L83+36
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L83+40
	ldr	r1, .L83+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L83+48
	ldr	r1, .L83+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L82
.L80:
	mov	r1, #5
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L83+56
	strb	r1, [r2]
	str	r3, [r5, #20]
	str	r3, [r5]
	str	r0, [r5, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L82:
	ldr	r3, .L83+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+64
	mov	lr, pc
	bx	r3
	b	.L80
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
	ldr	r3, .L90
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L90+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseTwo
.L91:
	.align	2
.L90:
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
	ldr	r6, .L94
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L94+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L94+8
	ldr	r1, .L94+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L94+16
	ldr	r2, .L94+20
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L94+24
	ldr	r1, .L94+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L94+32
	mov	r0, #3
	ldr	r1, .L94+36
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r3, .L94+40
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L95:
	.align	2
.L94:
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
	ldr	ip, .L98
	ldr	r2, .L98+4
	ldr	r1, .L98+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L98+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L98+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L98+20
	ldr	r1, .L98+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L98+28
	ldr	r1, .L98+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L98+36
	ldr	r1, .L98+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L98+44
	ldr	r1, .L98+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L98+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L98+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L98+60
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L98+64
	ldr	r3, .L98+68
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L99:
	.align	2
.L98:
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
	ldr	r3, .L105
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L105+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseThree
.L106:
	.align	2
.L105:
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
	ldr	r8, .L109
	ldr	r7, .L109+4
	ldr	r5, .L109+8
	strh	r6, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L109+12
	mov	lr, pc
	bx	r5
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L109+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L109+20
	mov	r0, #3
	ldr	r1, .L109+24
	mov	lr, pc
	bx	r5
	mov	r2, #8
	ldr	r3, .L109+28
	strh	r6, [r4, #16]	@ movhi
	strh	r6, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L110:
	.align	2
.L109:
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
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L131
	sub	sp, sp, #12
	mov	r0, r4
	add	r1, r4, #4
	ldr	r3, .L131+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L131+8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #4]
	ldrh	r2, [r4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L131+12
	mov	lr, pc
	bx	r2
	ldr	r3, .L131+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L131+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L131+24
	mov	lr, pc
	bx	r5
	ldr	r3, .L131+28
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L127
.L112:
	ldr	r3, .L131+32
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L128
.L113:
	ldr	ip, .L131+36
	ldr	r3, [ip]
	add	r3, r3, #1
	cmp	r3, #15
	strle	r3, [ip]
	bgt	.L129
.L115:
	ldr	r3, .L131+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L111
	ldr	r3, .L131+44
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L130
.L111:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L128:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L113
	ldr	r3, .L131+48
	mov	lr, pc
	bx	r3
	bl	goToPhaseOne
	b	.L113
.L129:
	ldr	r6, .L131+52
	ldr	r3, [r6]
	mov	lr, #0
	rsbs	r3, r3, #1
	movcc	r3, #0
	ldr	r5, .L131+56
	ldr	r7, .L131+60
	str	r5, [sp]
	mov	r2, #4
	str	lr, [ip]
	mov	r1, #3
	mov	r0, #84
	str	r3, [r6]
	mov	lr, pc
	bx	r7
	add	r3, r5, #32
	str	r3, [sp]
	mov	r2, #4
	ldr	r3, [r6]
	mov	r1, #3
	mov	r0, #85
	mov	lr, pc
	bx	r7
	add	r3, r5, #64
	str	r3, [sp]
	mov	r2, #4
	ldr	r3, [r6]
	mov	r1, #3
	mov	r0, #116
	add	r5, r5, #96
	mov	lr, pc
	bx	r7
	mov	r2, #4
	mov	r1, #3
	mov	r0, #117
	str	r5, [sp]
	ldr	r3, [r6]
	mov	lr, pc
	bx	r7
	b	.L115
.L127:
	bl	goToStartInstructions
	b	.L112
.L130:
	ldr	r3, .L131+64
	ldr	r2, .L131+68
	ldr	ip, [r3, #16]
	ldr	r0, [r3, #20]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L131+72
	ldr	r3, .L131+48
	str	ip, [r4, #24]
	str	r0, [r4, #28]
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToPause
.L132:
	.align	2
.L131:
	.word	.LANCHOR0
	.word	updateStartPlayer
	.word	updateGuideSprite
	.word	drawStartPlayer
	.word	drawGuideSprite
	.word	DMANow
	.word	shadowOAM
	.word	checkPlayerGuideCollision
	.word	next
	.word	tileFlashTimer
	.word	oldButtons
	.word	buttons
	.word	stopSounds
	.word	tileFlashState
	.word	originalTiles
	.word	flashColorInTile
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
	ldr	r3, .L135
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L135+4
	ldr	r3, .L135+8
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	goToPause
.L136:
	.align	2
.L135:
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
	ldr	r3, .L155
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L155+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r4, .L155+8
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r2, .L155+12
	sub	r3, r3, #1
	str	r1, [r2, #20]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L139
.L141:
	.word	.L146
	.word	.L145
	.word	.L144
	.word	.L143
	.word	.L142
	.word	.L140
.L140:
	bl	goToPhaseThreeInstructions
.L147:
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldr	r3, .L155+16
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L146:
	bl	goToStartThree
	b	.L147
.L145:
	bl	goToStartInstructions
	b	.L147
.L144:
	bl	goToPhaseOne
	b	.L147
.L143:
	bl	goToPhaseTwoInstructions
	b	.L147
.L142:
	bl	goToPhaseTwo
	b	.L147
.L139:
	bl	goToStart
	b	.L147
.L156:
	.align	2
.L155:
	.word	oldButtons
	.word	buttons
	.word	prevState
	.word	.LANCHOR0
	.word	state
	.size	pause, .-pause
	.section	.rodata.str1.4,"aMS",%progbits,1
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
	ldr	r2, .L159
	ldr	ip, .L159+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L159+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L159+12
	ldr	r4, .L159+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L159+20
	ldr	r3, .L159+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L159+28
	mov	r3, #15
	ldr	r2, .L159+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L159+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L160:
	.align	2
.L159:
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
	ldr	r5, .L174
	ldr	r3, .L174+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L174+8
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L174+12
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L174+16
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
	ldr	r2, .L174+20
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L174+24
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L174+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L174+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L172
	ldr	r3, .L174+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L173
.L163:
	ldr	r3, .L174+40
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseOne.part.0
.L161:
	pop	{r4, r5, r6, lr}
	bx	lr
.L172:
	bl	goToLose
	ldr	r3, .L174+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L163
.L173:
	bl	goToPhaseTwoInstructions
	b	.L163
.L175:
	.align	2
.L174:
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
	ldr	r5, .L189
	ldr	r3, .L189+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L189+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L189+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L189+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L189+20
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
	ldr	r2, .L189+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L189+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L189+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L189+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L189+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L187
	ldr	r3, .L189+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L188
.L178:
	ldr	r3, .L189+48
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseTwo.part.0
.L176:
	pop	{r4, r5, r6, lr}
	bx	lr
.L187:
	bl	goToLose
	ldr	r3, .L189+44
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L178
.L188:
	bl	goToPhaseThreeInstructions
	b	.L178
.L190:
	.align	2
.L189:
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
	ldr	r3, .L193
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L194:
	.align	2
.L193:
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
	ldr	r2, .L197
	ldr	ip, .L197+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L197+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L197+12
	ldr	r4, .L197+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L197+20
	ldr	r3, .L197+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L197+28
	mov	r3, #15
	ldr	r2, .L197+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L197+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L198:
	.align	2
.L197:
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
	ldr	r5, .L208
	ldr	r3, .L208+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L208+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L208+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L208+16
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L208+20
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L208+24
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
	ldr	r2, .L208+28
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L208+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L208+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L208+40
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L208+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L208+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L206
	ldr	r3, .L208+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L207
.L199:
	pop	{r4, r5, r6, lr}
	bx	lr
.L206:
	bl	goToLose
	ldr	r3, .L208+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L199
.L207:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L209:
	.align	2
.L208:
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
	ldr	r3, .L220
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L220+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L219
	pop	{r4, lr}
	bx	lr
.L219:
	bl	goToSplashScreen
	ldr	r3, .L220+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L221:
	.align	2
.L220:
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
	ldr	r6, .L224
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L224+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L224+8
	ldr	r1, .L224+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L224+16
	mov	r3, #1024
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L224+20
	ldr	r1, .L224+24
	mov	lr, pc
	bx	r6
	mov	r2, #11
	ldr	r3, .L224+28
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L225:
	.align	2
.L224:
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r10, .L258
	ldrh	r3, [r10]
	tst	r3, #128
	bne	.L253
	ldr	r6, .L258+4
.L227:
	tst	r3, #64
	bne	.L257
.L230:
	ldr	r3, [r6, #36]
	ldr	r9, .L258+8
	cmp	r3, #0
	ldr	r7, .L258+12
	streq	r9, [r6, #36]
.L236:
	ldr	r3, .L258+16
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	mov	r5, #0
	ldrh	fp, [r3, #4]
	ldr	r8, .L258+20
.L232:
	ldr	r3, [r6, #36]
	ldr	r4, [r3, r5]
	lsl	r4, r4, #1
	ldrh	r0, [r7, r4]
	mov	r3, #20
	mov	r1, fp
	ldr	r2, [r6, #40]
	mov	lr, pc
	bx	r8
	add	r5, r5, #4
	add	r4, r4, #83886080
	cmp	r5, #12
	strh	r0, [r4]	@ movhi
	bne	.L232
	ldr	r2, [r9, #24]
	ldr	r3, [r6, #40]
	add	r3, r2, r3
	sub	r1, r3, #1
	cmp	r1, #18
	str	r3, [r6, #40]
	ldrh	r3, [r10]
	rsbhi	r2, r2, #0
	strhi	r2, [r9, #24]
	tst	r3, #8
	beq	.L226
	ldr	r3, .L258+24
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L226
	ldr	r3, [r6, #32]
	cmp	r3, #0
	beq	.L235
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToGameInstructions
.L226:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L253:
	ldr	r2, .L258+24
	ldrh	r2, [r2]
	tst	r2, #128
	ldr	r6, .L258+4
	bne	.L227
	ldr	r2, [r6, #32]
	cmp	r2, #0
	bne	.L227
	ldr	r9, .L258+8
	mov	r2, r9
	ldr	r7, .L258+12
	add	r0, r9, #12
.L228:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L228
	mov	r3, #1
	mov	r2, #0
	str	r0, [r6, #36]
	str	r3, [r6, #32]
	str	r3, [r9, #24]
	str	r2, [r6, #40]
	b	.L236
.L257:
	ldr	r3, .L258+24
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L230
	ldr	r3, [r6, #32]
	cmp	r3, #0
	beq	.L230
	ldr	r2, .L258+28
	ldr	r7, .L258+12
	add	r0, r2, #12
.L231:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L231
	mov	r3, #0
	mov	r2, #1
	ldr	r9, .L258+8
	str	r3, [r6, #32]
	str	r3, [r6, #40]
	str	r2, [r9, #24]
	str	r9, [r6, #36]
	b	.L236
.L235:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToStart
.L259:
	.align	2
.L258:
	.word	oldButtons
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	splashp3Pal
	.word	waitForVBlank
	.word	blendColor
	.word	buttons
	.word	.LANCHOR2+12
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
.L275:
	ldrh	r1, [r4]
	strh	r1, [r7]	@ movhi
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L261
.L263:
	.word	.L273
	.word	.L272
	.word	.L271
	.word	.L270
	.word	.L269
	.word	.L268
	.word	.L267
	.word	.L266
	.word	.L265
	.word	.L264
	.word	.L264
	.word	.L262
.L264:
	tst	r1, #8
	ldrne	r3, .L286+44
	movne	lr, pc
	bxne	r3
.L261:
	mov	lr, pc
	bx	r8
	b	.L275
.L265:
	ldr	r3, .L286+48
	mov	lr, pc
	bx	r3
	b	.L261
.L266:
	ldr	r3, .L286+52
	mov	lr, pc
	bx	r3
	b	.L261
.L267:
	tst	r1, #8
	beq	.L261
	tst	r3, #8
	bne	.L261
	ldr	r3, .L286+56
	mov	lr, pc
	bx	r3
	b	.L261
.L268:
	ldr	r3, .L286+60
	mov	lr, pc
	bx	r3
	b	.L261
.L272:
	mov	lr, pc
	bx	r10
	b	.L261
.L262:
	tst	r1, #8
	beq	.L261
	tst	r3, #8
	bne	.L261
	ldr	r3, .L286+64
	mov	lr, pc
	bx	r3
	b	.L261
.L273:
	mov	lr, pc
	bx	fp
	b	.L261
.L270:
	ldr	r3, .L286+68
	mov	lr, pc
	bx	r3
	b	.L261
.L271:
	mov	lr, pc
	bx	r9
	b	.L261
.L269:
	tst	r1, #8
	beq	.L261
	tst	r3, #8
	bne	.L261
	ldr	r3, .L286+72
	mov	lr, pc
	bx	r3
	b	.L261
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
	.word	goToPhaseThree
	.word	phaseTwo
	.word	goToStart
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
	ldr	r3, .L293
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L293+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L294:
	.align	2
.L293:
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
	ldr	r2, .L297
	str	lr, [sp, #-4]!
	ldr	ip, .L297+4
	ldr	lr, .L297+8
	str	r3, [r2]
	ldr	r0, .L297+12
	ldr	r2, .L297+16
	ldr	r1, .L297+20
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
	ldr	lr, [sp], #4
	bx	lr
.L298:
	.align	2
.L297:
	.word	gameOver
	.word	winPhaseTwo
	.word	winPhaseOne
	.word	winPhaseThree
	.word	.LANCHOR0
	.word	next
	.size	resetGameState, .-resetGameState
	.global	altIndices
	.global	primaryIndices
	.comm	originalTiles,128,4
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
	.comm	tileFlashState,4,4
	.comm	tileFlashTimer,4,4
	.comm	cheatOn,4,4
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
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
.LC0:
	.word	84
	.word	85
	.word	116
	.word	117
	.data
	.align	2
	.set	.LANCHOR2,. + 0
	.type	primaryIndices, %object
	.size	primaryIndices, 12
primaryIndices:
	.word	13
	.word	14
	.word	15
	.type	altIndices, %object
	.size	altIndices, 12
altIndices:
	.word	16
	.word	17
	.word	18
	.type	fadeDirection.4342, %object
	.size	fadeDirection.4342, 4
fadeDirection.4342:
	.word	1
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
	.type	savedStartX, %object
	.size	savedStartX, 4
savedStartX:
	.space	4
	.type	savedStartY, %object
	.size	savedStartY, 4
savedStartY:
	.space	4
	.type	keySelection.4345, %object
	.size	keySelection.4345, 4
keySelection.4345:
	.space	4
	.type	currentIndices.4344, %object
	.size	currentIndices.4344, 4
currentIndices.4344:
	.space	4
	.type	time.4341, %object
	.size	time.4341, 4
time.4341:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
