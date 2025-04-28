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
	mov	r1, #100663296
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r0, .L18
	ldr	r2, .L18+4
	sub	sp, sp, #44
	strh	r0, [r3]	@ movhi
	ldr	r3, .L18+8
	str	r1, [r2]
	ldr	fp, .L18+12
	mov	lr, pc
	bx	r3
	mov	r2, #83886080
	ldr	r1, .L18+16
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	fp
	ldr	r0, .L18+20
	ldr	r3, .L18+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+28
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L18+32
	ldr	r3, .L18+36
	add	r9, sp, #4
	mov	lr, pc
	bx	r3
	mov	r2, r9
	ldr	r3, .L18+16
	add	r0, r3, #34
.L2:
	ldrh	r1, [r3], #2
	cmp	r3, r0
	strh	r1, [r2], #2	@ movhi
	bne	.L2
	mov	r10, #0
	ldr	r5, .L18+40
	ldr	r8, .L18+44
	ldr	r7, .L18+48
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
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L18+52
	mov	lr, pc
	bx	fp
	ldr	r0, .L18+56
	ldr	r3, .L18+24
	mov	lr, pc
	bx	r3
	mov	r4, #0
	mov	r5, #83886080
	ldr	r6, .L18+60
	ldr	r7, .L18+64
	b	.L11
.L8:
	add	r4, r4, #1
.L11:
	mov	lr, pc
	bx	r8
	umull	r2, r3, r6, r4
	tst	r3, #8
	mvn	r3, #64512
	strheq	r7, [r5, #8]	@ movhi
	strheq	r3, [r5, #6]	@ movhi
	strhne	r3, [r5, #8]	@ movhi
	strhne	r7, [r5, #6]	@ movhi
	cmp	r4, #30
	mvneq	r3, #32768
	strheq	r3, [r5, #32]	@ movhi
	beq	.L8
	cmp	r4, #60
	mvneq	r3, #32768
	strheq	r3, [r5, #34]	@ movhi
	beq	.L8
	cmp	r4, #90
	mvneq	r3, #32768
	strheq	r3, [r5, #36]	@ movhi
	beq	.L8
	cmp	r4, #179
	bne	.L8
	mov	r2, #83886080
	ldr	r1, .L18+68
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	fp
	ldr	r0, .L18+72
	ldr	r3, .L18+24
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, .L18+76
	ldr	r4, .L18+80
	str	r3, [r2]
	ldr	lr, .L18+84
	ldr	r2, .L18+88
	ldr	ip, .L18+92
	ldr	r0, .L18+96
	ldr	r1, .L18+100
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
.L19:
	.align	2
.L18:
	.word	1028
	.word	videoBuffer
	.word	stopSounds
	.word	DMANow
	.word	splashp1Pal
	.word	splashp1Bitmap
	.word	drawFullscreenImage4
	.word	splashSound_length
	.word	splashSound_data
	.word	playSoundA
	.word	83886078
	.word	waitForVBlank
	.word	blendColor
	.word	animateStartPal
	.word	animateStartBitmap
	.word	-858993459
	.word	8984
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
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #0
	mov	r5, #67108864
	mov	r1, #4608
	ldr	r2, .L30
	ldr	r4, .L30+4
	str	r3, [r2]
	sub	sp, sp, #16
	strh	r1, [r5]	@ movhi
	ldr	r2, .L30+8
	str	r3, [r4, #20]
	mov	lr, pc
	bx	r2
	mov	r2, #53760
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r5, .L30+12
	mov	r2, #83886080
	ldr	r1, .L30+16
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L30+20
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L30+24
	ldr	r1, .L30+28
	mov	lr, pc
	bx	r5
	mov	ip, #120
	ldr	r6, .L30+32
	ldr	r5, .L30+36
	ldr	lr, .L30+40
.L21:
	mov	r0, r5
	mov	r1, r6
	sub	r3, ip, #4
.L22:
	lsl	r2, r3, #1
	ldrh	r2, [lr, r2]
	add	r3, r3, #1
	cmp	r3, ip
	strh	r2, [r1], #2	@ movhi
	strh	r2, [r0], #2	@ movhi
	bne	.L22
	cmp	r3, #216
	add	r6, r6, #8
	add	r5, r5, #8
	add	ip, r3, #32
	bne	.L21
	mov	ip, sp
	ldr	r3, .L30+44
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	ldr	lr, .L30+48
	add	r5, sp, #16
.L24:
	mov	r1, lr
	ldr	r3, [ip], #4
	lsl	r3, r3, #4
	add	r0, r3, #16
.L25:
	lsl	r2, r3, #1
	add	r2, r2, #100663296
	ldrh	r2, [r2]
	add	r3, r3, #1
	cmp	r3, r0
	strh	r2, [r1, #2]!	@ movhi
	bne	.L25
	cmp	ip, r5
	add	lr, lr, #32
	bne	.L24
	ldr	r3, .L30+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+56
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #96
	ldr	r1, .L30+60
	str	r3, [r4]
	mov	r2, #1
	ldr	r1, [r1]
	ldr	r0, .L30+64
	ldr	r3, .L30+68
	str	ip, [r4, #4]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L30+72
	strb	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	cheatOn
	.word	.LANCHOR0
	.word	hideSprites
	.word	DMANow
	.word	sTSPal
	.word	sTSTiles
	.word	100700160
	.word	sTMMap
	.word	originalBlock
	.word	currentBlock
	.word	100706304
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
	ldr	r4, .L34
	strh	r3, [r2]	@ movhi
	ldr	r6, .L34+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L34+8
	str	r5, [r4, #20]
	mov	lr, pc
	bx	r6
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L34+12
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r2, .L34+16
	ldr	r1, .L34+20
	mov	r3, #4096
	mov	lr, pc
	bx	r6
	ldr	r3, .L34+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L34+28
	mov	lr, pc
	bx	r3
	mov	r6, #1
	mov	r0, #96
	mov	lr, #170
	ldr	r2, .L34+32
	ldr	r1, .L34+36
	ldr	r3, .L34+40
	ldr	ip, .L34+44
	str	r5, [r4]
	str	r5, [r2]
	str	r0, [r4, #4]
	str	r6, [r4, #8]
	mov	r2, r5
	ldr	r4, .L34+48
	ldr	r1, [r1]
	ldr	r0, .L34+52
	str	lr, [r3, #20]
	str	ip, [r3, #16]
	mov	lr, pc
	bx	r4
	ldr	r3, .L34+56
	strb	r6, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L35:
	.align	2
.L34:
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
	.word	430
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
	ldr	r4, .L38
	strh	r3, [r2]	@ movhi
	ldr	r5, .L38+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L38+8
	str	r6, [r4, #20]
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L38+12
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L38+16
	ldr	r1, .L38+20
	mov	r3, #4096
	mov	lr, pc
	bx	r5
	mov	r5, #96
	ldr	r3, .L38+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L38+32
	ldr	lr, [r4, #24]
	ldr	r3, .L38+36
	ldr	ip, [r4, #28]
	str	r6, [r4]
	str	r5, [r4, #4]
	ldr	r1, [r2]
	ldr	r4, .L38+40
	mov	r2, #1
	ldr	r0, .L38+44
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L38+48
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L39:
	.align	2
.L38:
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
	ldr	r6, .L42
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L42+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L42+8
	ldr	r1, .L42+12
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+16
	ldr	r1, .L42+20
	mov	lr, pc
	bx	r6
	ldr	r3, .L42+24
	ldr	r2, .L42+28
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L42+32
	ldr	r1, .L42+36
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L42+40
	ldr	r1, .L42+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #2
	ldr	r1, .L42+48
	ldr	r3, .L42+52
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #16]
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	.align	2
.L42:
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
	ldr	r3, .L65
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, r5, r6, lr}
	bne	.L62
	ldr	r4, .L65+4
.L45:
	ldr	r3, [r4, #12]
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
	ldr	r3, [r4, #16]
	add	r2, r3, #1
	str	r2, [r4, #16]
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
	str	r3, [r4, #12]
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
	push	{r4, lr}
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
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L73+36
	ldr	r1, .L73+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r1, .L73+44
	ldr	r2, .L73+48
	mov	lr, pc
	bx	r4
	ldr	r3, .L73+52
	ldr	r1, .L73+56
	add	r0, r3, #64
	sub	r1, r1, r3
.L68:
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	strb	r2, [r3, #1]!
	cmp	r3, r0
	bne	.L68
	mov	r3, #0
	ldr	r4, .L73+60
	ldr	r2, [r4, #20]
	cmp	r2, r3
	str	r3, [r4, #32]
	str	r3, [r4, #36]
	beq	.L72
.L69:
	mov	r1, #3
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L73+64
	strb	r1, [r2]
	str	r3, [r4, #20]
	str	r3, [r4]
	str	r0, [r4, #4]
	pop	{r4, lr}
	bx	lr
.L72:
	ldr	r3, .L73+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L73+72
	mov	lr, pc
	bx	r3
	b	.L69
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
	.word	100720640
	.word	bgOneBackMap
	.word	dayTMMap
	.word	100724736
	.word	originalTile358-1
	.word	100702592
	.word	.LANCHOR0
	.word	state
	.word	initPlayer
	.word	initHealth
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
	ldr	r3, .L77
	mov	lr, pc
	bx	r3
	ldr	r3, .L77+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToPhaseOne
.L78:
	.align	2
.L77:
	.word	mgba_open
	.word	setupSounds
	.size	initialize, .-initialize
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
	ldr	r6, .L81
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L81+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L81+8
	ldr	r1, .L81+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L81+16
	ldr	r2, .L81+20
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L81+24
	ldr	r1, .L81+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L81+32
	mov	r0, #3
	ldr	r1, .L81+36
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r3, .L81+40
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L82:
	.align	2
.L81:
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
	ldr	ip, .L87
	ldr	r2, .L87+4
	ldr	r1, .L87+8
	strh	lr, [r0]	@ movhi
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
	ldr	r5, .L87+36
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L87+40
	ldr	r1, .L87+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L87+48
	ldr	r1, .L87+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L86
.L84:
	mov	r1, #5
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L87+56
	strb	r1, [r2]
	str	r3, [r5, #20]
	str	r3, [r5]
	str	r0, [r5, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L86:
	ldr	r3, .L87+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+64
	mov	lr, pc
	bx	r3
	b	.L84
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
	ldr	r3, .L94
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L94+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseTwo
.L95:
	.align	2
.L94:
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
	ldr	r6, .L98
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L98+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L98+8
	ldr	r1, .L98+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L98+16
	ldr	r2, .L98+20
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L98+24
	ldr	r1, .L98+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L98+32
	mov	r0, #3
	ldr	r1, .L98+36
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r3, .L98+40
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L99:
	.align	2
.L98:
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
	ldr	ip, .L102
	ldr	r2, .L102+4
	ldr	r1, .L102+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L102+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L102+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L102+20
	ldr	r1, .L102+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L102+28
	ldr	r1, .L102+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L102+36
	ldr	r1, .L102+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L102+44
	ldr	r1, .L102+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L102+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L102+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L102+60
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L102+64
	ldr	r3, .L102+68
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L103:
	.align	2
.L102:
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
	ldr	r3, .L109
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L109+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseThree
.L110:
	.align	2
.L109:
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
	push	{r4, r5, r6, lr}
	mov	r2, #5888
	mov	r4, #67108864
	mov	r5, #0
	ldr	r3, .L113
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L113+4
	ldr	r2, .L113+8
	ldr	r1, .L113+12
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r4, #12]	@ movhi
	mov	r2, #83886080
	ldr	r4, .L113+16
	ldr	r1, .L113+20
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L113+24
	ldr	r1, .L113+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L113+32
	ldr	r1, .L113+36
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L113+40
	ldr	r1, .L113+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L113+48
	ldr	r1, .L113+52
	mov	lr, pc
	bx	r4
	mov	r1, #8
	mov	r0, #96
	ldr	r2, .L113+56
	ldr	r3, .L113+60
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L114:
	.align	2
.L113:
	.word	initAnimatedPlayer
	.word	23172
	.word	23685
	.word	24198
	.word	DMANow
	.word	foregroundPal
	.word	100679680
	.word	foregroundTiles
	.word	100716544
	.word	loseloseMap
	.word	100720640
	.word	bgTwoBackMap
	.word	100724736
	.word	dayTMMap
	.word	state
	.word	.LANCHOR0
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
	ldr	r4, .L141
	sub	sp, sp, #12
	ldr	r3, .L141+4
	mov	lr, pc
	bx	r3
	mov	r0, r4
	add	r1, r4, #4
	ldr	r3, .L141+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L141+12
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #4]
	ldrh	r2, [r4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L141+16
	mov	lr, pc
	bx	r2
	ldr	r3, .L141+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L141+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L141+28
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #8]
	ldr	r3, [r4, #40]
	orrs	r3, r2, r3
	bne	.L117
	mov	r5, #27
	mov	lr, #364
.L116:
	mov	r1, #57
	asr	ip, r5, #5
	add	ip, ip, #9
	and	r0, r5, #31
	lsl	ip, ip, #1
	lsl	r0, r0, #5
.L118:
	add	r2, ip, r1, asr #5
	and	r3, r1, #31
	lsl	r2, r2, #11
	add	r3, r3, r0
	add	r1, r1, #1
	add	r2, r2, #100663296
	lsl	r3, r3, #1
	cmp	r1, #67
	strh	lr, [r2, r3]	@ movhi
	bne	.L118
	add	r5, r5, #1
	cmp	r5, #37
	bne	.L116
	mov	r3, #1
	str	r3, [r4, #40]
.L117:
	ldr	r3, .L141+32
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L137
.L120:
	ldr	r3, .L141+36
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L138
.L121:
	ldr	ip, .L141+40
	ldr	r3, [ip]
	add	r3, r3, #1
	cmp	r3, #15
	strle	r3, [ip]
	bgt	.L139
.L123:
	ldr	r3, .L141+44
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L115
	ldr	r3, .L141+48
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L140
.L115:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L138:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L121
	ldr	r3, .L141+52
	mov	lr, pc
	bx	r3
	bl	goToPhaseOne
	b	.L121
.L139:
	ldr	r6, .L141+56
	ldr	r3, [r6]
	mov	lr, #0
	rsbs	r3, r3, #1
	movcc	r3, #0
	ldr	r5, .L141+60
	ldr	r7, .L141+64
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
	b	.L123
.L137:
	bl	goToStartInstructions
	b	.L120
.L140:
	ldr	r3, .L141+68
	ldr	r2, .L141+72
	ldr	ip, [r3, #16]
	ldr	r0, [r3, #20]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L141+76
	ldr	r3, .L141+52
	str	ip, [r4, #24]
	str	r0, [r4, #28]
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToPause
.L142:
	.align	2
.L141:
	.word	.LANCHOR0
	.word	animateTilemapShift
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
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	push	{r4, r5, r6, lr}
	mov	lr, #100663296
	ldr	r2, .L158
	ldr	ip, .L158+4
	strh	r2, [r3]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r3, .L158+8
	ldr	r1, .L158+12
	ldr	r4, .L158+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r3, .L158+20
	ldr	r0, .L158+24
	mov	lr, pc
	bx	r3
	mov	r3, #8
	ldr	r2, .L158+28
	ldrh	r2, [r2]
	ldr	r4, .L158+32
	tst	r2, #4
	strb	r3, [r4]
	beq	.L143
	ldr	r3, .L158+36
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L143
	mov	r1, #1
	ldr	r5, .L158+40
	ldrb	r3, [r5]	@ zero_extendqisi2
	ldr	r2, .L158+44
	sub	r3, r3, #1
	str	r1, [r2, #20]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L145
.L147:
	.word	.L152
	.word	.L151
	.word	.L150
	.word	.L149
	.word	.L148
	.word	.L146
.L146:
	bl	goToPhaseThreeInstructions
.L153:
	ldrb	r3, [r5]	@ zero_extendqisi2
	strb	r3, [r4]
.L143:
	pop	{r4, r5, r6, lr}
	bx	lr
.L152:
	bl	goToStartThree
	b	.L153
.L151:
	bl	goToStartInstructions
	b	.L153
.L150:
	bl	goToPhaseOne
	b	.L153
.L149:
	bl	goToPhaseTwoInstructions
	b	.L153
.L148:
	bl	goToPhaseTwo
	b	.L153
.L145:
	bl	goToStart
	b	.L153
.L159:
	.align	2
.L158:
	.word	1028
	.word	videoBuffer
	.word	-2147483392
	.word	startPausePal
	.word	DMANow
	.word	drawFullscreenImage4
	.word	startPauseBitmap
	.word	oldButtons
	.word	state
	.word	buttons
	.word	prevState
	.word	.LANCHOR0
	.size	pause, .-pause
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
	push	{r4, r5, r6, lr}
	mov	r2, #5888
	mov	r4, #67108864
	mov	r5, #0
	ldr	r3, .L162
	strh	r5, [r4, #80]	@ movhi
	strh	r5, [r4, #82]	@ movhi
	strh	r5, [r4, #84]	@ movhi
	strh	r5, [r4, #76]	@ movhi
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L162+4
	ldr	r2, .L162+8
	ldr	r1, .L162+12
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r4, #12]	@ movhi
	mov	r2, #83886080
	ldr	r4, .L162+16
	ldr	r1, .L162+20
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L162+24
	ldr	r1, .L162+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L162+32
	ldr	r1, .L162+36
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L162+40
	ldr	r1, .L162+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L162+48
	ldr	r1, .L162+52
	mov	lr, pc
	bx	r4
	mov	r1, #9
	mov	r0, #96
	ldr	r2, .L162+56
	ldr	r3, .L162+60
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L163:
	.align	2
.L162:
	.word	initAnimatedPlayer
	.word	23172
	.word	23685
	.word	24198
	.word	DMANow
	.word	foregroundPal
	.word	100679680
	.word	foregroundTiles
	.word	100716544
	.word	loseloseMap
	.word	100720640
	.word	bgAnimatedBackMap
	.word	100724736
	.word	duskTMMap
	.word	state
	.word	.LANCHOR0
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L232
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L225
.L165:
	ldr	r1, .L232+4
	ldr	r3, .L232+8
	sub	r0, r1, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L232+12
	mov	lr, pc
	bx	r3
	mov	lr, #67108864
	ldm	r4, {r0, r1}
	ldr	ip, [r4, #48]
	add	r2, r0, r0, lsr #31
	add	r3, r1, r1, lsr #31
	asr	r2, r2, #1
	asr	r3, r3, #1
	add	ip, ip, #1
	lsl	r2, r2, #16
	lsl	r0, r0, #16
	lsl	r1, r1, #16
	lsl	r3, r3, #16
	lsr	r2, r2, #16
	lsr	r0, r0, #16
	lsr	r1, r1, #16
	lsr	r3, r3, #16
	cmp	ip, #15
	strh	r0, [lr, #16]	@ movhi
	strh	r1, [lr, #18]	@ movhi
	strh	r2, [lr, #20]	@ movhi
	strh	r3, [lr, #22]	@ movhi
	strle	ip, [r4, #48]
	ble	.L171
	mov	r2, #0
	ldr	r3, [r4, #52]
	sub	r0, r3, r2
	rsbs	r3, r0, #0
	adc	r3, r3, r0
	str	r2, [r4, #48]
	str	r3, [r4, #52]
	ldr	r0, .L232+16
	ldr	lr, .L232+20
	ldr	ip, .L232+24
	ldr	r5, .L232+28
.L167:
	sub	r2, r0, #64
.L170:
	ldrh	r3, [r2]
	and	r1, r3, lr
	cmp	r1, #231
	and	r3, r3, ip
	orreq	r3, r3, #255
	strheq	r3, [r2]	@ movhi
	beq	.L169
	cmp	r1, #255
	orreq	r3, r3, #231
	strheq	r3, [r2]	@ movhi
.L169:
	add	r2, r2, #2
	cmp	r0, r2
	bne	.L170
	add	r0, r0, #64
	cmp	r0, r5
	bne	.L167
.L171:
	ldr	r3, [r4, #32]
	add	r3, r3, #1
	tst	r3, #3
	str	r3, [r4, #32]
	bne	.L175
	ldr	r3, [r4, #36]
	cmp	r3, #99
	bgt	.L175
	ldr	r6, .L232+32
	add	r3, r3, #1
	str	r3, [r4, #36]
	ldr	r8, .L232+36
	add	r7, r6, #64
.L177:
	ldrb	r3, [r6, #1]!	@ zero_extendqisi2
	lsl	r5, r3, #1
	cmp	r3, #0
	add	r5, r5, #83886080
	beq	.L176
	mov	r3, #2000
	mov	r1, #0
	ldr	r2, [r4, #36]
	ldrh	r0, [r5]
	mov	lr, pc
	bx	r8
	strh	r0, [r5]	@ movhi
.L176:
	cmp	r7, r6
	bne	.L177
.L175:
	ldr	r3, [r4, #56]
	add	r3, r3, #1
	cmp	r3, #200
	str	r3, [r4, #56]
	ble	.L174
	ldr	r10, [r4, #60]
	cmp	r10, #0
	beq	.L226
.L174:
	ldr	r3, [r4, #72]
	cmp	r3, #0
	bne	.L187
.L195:
	mov	r5, #512
	ldr	r3, .L232+40
	ldrb	r2, [r3, #56]	@ zero_extendqisi2
	ldr	r4, .L232+44
	lsl	r2, r2, #3
	strh	r5, [r4, r2]	@ movhi
	ldr	r3, .L232+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L232+52
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r1, r4
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L232+56
	mov	lr, pc
	bx	r4
	ldr	r3, .L232+60
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L227
	ldr	r3, .L232+64
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L228
.L199:
	ldr	r3, .L232+68
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L164
	ldr	r3, .L232+72
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L229
.L164:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L226:
	ldr	r3, [r4, #64]
	add	r3, r3, #1
	cmp	r3, #60
	strle	r3, [r4, #64]
	ble	.L174
	ldr	r5, [r4, #68]
	mov	r2, #1
	rsbs	r1, r5, #1
	movcc	r1, #0
	ldr	r3, .L232+76
	str	r10, [r4, #64]
	str	r10, [r4, #76]
	str	r10, [r4, #80]
	str	r2, [r4, #72]
	str	r2, [r4, #60]
	str	r1, [r4, #68]
	add	r0, r3, #512
	rsb	r1, r3, #83886080
.L179:
	ldrh	r2, [r1, r3]
	strh	r2, [r3, #2]!	@ movhi
	cmp	r3, r0
	bne	.L179
	ldr	r0, .L232+28
	ldr	r7, .L232+80
	ldr	r8, .L232+84
	ldr	r6, .L232+88
.L180:
	ldr	lr, .L232+20
	ldr	ip, .L232+24
	ldr	r9, .L232+88
	sub	r2, r0, #64
	b	.L185
.L231:
	cmp	r1, r6
	orreq	r3, r3, #320
	orreq	r3, r3, #2
	strheq	r3, [r2]	@ movhi
	beq	.L183
	orr	r3, r3, #344
	cmp	r1, #348
	orr	r3, r3, #3
	bne	.L183
.L224:
	strh	r3, [r2]	@ movhi
.L183:
	add	r2, r2, #2
	cmp	r0, r2
	beq	.L230
.L185:
	ldrh	r3, [r2]
	cmp	r5, #0
	and	r1, r3, lr
	and	r3, r3, ip
	bne	.L231
	cmp	r1, r7
	orreq	r3, r3, r9
	strheq	r3, [r2]	@ movhi
	beq	.L183
	cmp	r1, r8
	bne	.L183
	orr	r3, r3, #348
	b	.L224
.L187:
	ldr	r3, [r4, #84]
	add	r3, r3, #1
	cmp	r3, #8
	ldr	r10, [r4, #80]
	ble	.L186
	mov	r2, #0
	ldr	r3, [r4, #76]
	sub	r1, r3, r2
	rsbs	r3, r1, #0
	adc	r3, r3, r1
	add	r10, r10, #1
	str	r10, [r4, #80]
	str	r3, [r4, #76]
	str	r2, [r4, #84]
.L191:
	cmp	r10, #3
	ble	.L192
	mov	r3, #0
	ldr	r2, .L232+32
	str	r3, [r4, #72]
	ldr	r0, .L232+92
	add	r1, r2, #64
.L194:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	lslne	r3, r3, #1
	addne	r3, r3, #83886080
	strhne	r0, [r3]	@ movhi
	cmp	r1, r2
	bne	.L194
	b	.L195
.L227:
	bl	goToLose
	ldr	r3, .L232+64
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L199
.L228:
	bl	goToPhaseTwoInstructions
	b	.L199
.L225:
	mov	r2, #1
	ldr	r3, .L232+96
	ldr	r0, .L232+100
	ldr	r1, [r3]
	ldr	r3, .L232+104
	str	r2, [r4, #44]
	mov	lr, pc
	bx	r3
	b	.L165
.L192:
	ldr	r2, .L232+32
	ldr	r5, [r4, #76]
	ldr	r4, .L232+108
	add	lr, r2, #64
.L198:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	lsl	r3, r3, #1
	beq	.L196
	ldrh	r1, [r4, r3]
	add	ip, r3, #83886080
	lsr	r3, r1, #1
	mov	r0, r3
	and	r3, r3, #480
	and	r0, r0, #15360
	orr	r3, r3, r0
	and	r0, r1, #31
	cmp	r5, #0
	orr	r3, r3, r0, lsr #1
	strhne	r3, [ip]	@ movhi
	strheq	r1, [ip]	@ movhi
.L196:
	cmp	lr, r2
	bne	.L198
	b	.L195
.L230:
	ldr	r3, .L232+112
	add	r0, r0, #64
	cmp	r0, r3
	bne	.L180
	mov	r3, #1
.L186:
	str	r3, [r4, #84]
	b	.L191
.L229:
	ldr	r2, .L232+116
	ldr	r3, .L232+120
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	goToPause
.L233:
	.align	2
.L232:
	.word	.LANCHOR0
	.word	.LANCHOR0+4
	.word	updatePlayer
	.word	updateHealth
	.word	100718656
	.word	1023
	.word	-1024
	.word	100720704
	.word	originalTile358-1
	.word	blendColor
	.word	guide
	.word	shadowOAM
	.word	drawPlayer
	.word	drawHealth
	.word	DMANow
	.word	gameOver
	.word	winPhaseOne
	.word	oldButtons
	.word	buttons
	.word	savedFadePalette-2
	.word	322
	.word	347
	.word	323
	.word	10570
	.word	pOAudio_length
	.word	pOAudio_data
	.word	playSoundB
	.word	savedFadePalette
	.word	100722752
	.word	state
	.word	prevState
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
	ldr	r5, .L251
	ldr	r3, .L251+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L251+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L251+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L251+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L251+20
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
	ldr	r2, .L251+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L251+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L251+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L251+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L251+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L248
.L235:
	ldr	r3, .L251+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L249
.L236:
	ldr	r3, .L251+48
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L234
	ldr	r3, .L251+52
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L250
.L234:
	pop	{r4, r5, r6, lr}
	bx	lr
.L249:
	bl	goToPhaseThreeInstructions
	b	.L236
.L248:
	bl	goToLose
	b	.L235
.L250:
	ldr	r2, .L251+56
	ldr	r3, .L251+60
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	b	goToPause
.L252:
	.align	2
.L251:
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
	.word	buttons
	.word	state
	.word	prevState
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L260
	ldr	r3, .L260+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	ldr	r2, [r5, #4]
	add	r1, r3, #1
	cmp	r1, #0
	addlt	r3, r3, #4
	movge	r3, r1
	cmp	r2, #0
	add	r0, r2, #3
	movge	r0, r2
	mov	r4, #67108864
	add	lr, r1, r1, lsr #31
	add	ip, r2, r2, lsr #31
	asr	r3, r3, #2
	asr	r0, r0, #2
	asr	lr, lr, #1
	asr	ip, ip, #1
	str	r1, [r5]
	lsl	r3, r3, #16
	lsl	lr, lr, #16
	lsl	r0, r0, #16
	lsl	r2, r2, #16
	lsl	ip, ip, #16
	lsl	r1, r1, #16
	lsr	lr, lr, #16
	lsr	ip, ip, #16
	lsr	r1, r1, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	lsr	r0, r0, #16
	strh	r1, [r4, #16]	@ movhi
	strh	r2, [r4, #18]	@ movhi
	strh	lr, [r4, #20]	@ movhi
	ldr	r2, .L260+8
	strh	ip, [r4, #22]	@ movhi
	strh	r3, [r4, #24]	@ movhi
	strh	r0, [r4, #26]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L260+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L260+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L260+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L260+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L253
	ldr	r3, .L260+28
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L259
.L253:
	pop	{r4, r5, r6, lr}
	bx	lr
.L259:
	bl	goToSplashScreen
	ldr	r3, .L260+32
	strb	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L261:
	.align	2
.L260:
	.word	.LANCHOR0
	.word	hideSprites
	.word	updateAnimatedPlayer
	.word	drawAnimatedPlayer
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	state
	.size	lose, .-lose
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
	push	{r4, r5, r6, lr}
	mov	r2, #5888
	mov	r4, #67108864
	mov	r5, #0
	ldr	r3, .L264
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L264+4
	ldr	r1, .L264+8
	ldr	r0, .L264+12
	strh	r5, [r4, #16]	@ movhi
	mov	r3, #256
	strh	r5, [r4, #18]	@ movhi
	strh	r2, [r4, #8]	@ movhi
	strh	r1, [r4, #10]	@ movhi
	mov	r2, #83886080
	strh	r0, [r4, #12]	@ movhi
	ldr	r1, .L264+16
	ldr	r4, .L264+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L264+24
	ldr	r1, .L264+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L264+32
	ldr	r1, .L264+36
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L264+40
	ldr	r1, .L264+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L264+48
	ldr	r1, .L264+52
	mov	lr, pc
	bx	r4
	mov	r1, #10
	mov	r0, #96
	ldr	r2, .L264+56
	ldr	r3, .L264+60
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L265:
	.align	2
.L264:
	.word	initAnimatedPlayer
	.word	23172
	.word	23685
	.word	24198
	.word	foregroundPal
	.word	DMANow
	.word	100679680
	.word	foregroundTiles
	.word	100716544
	.word	winwinMap
	.word	100720640
	.word	bgAnimatedBackMap
	.word	100724736
	.word	dayTMMap
	.word	state
	.word	.LANCHOR0
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
	ldr	r1, .L283
	push	{r4, r5, r6, lr}
	sub	r0, r1, #4
	ldr	r3, .L283+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L283+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L283+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L283+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L283+20
	ldrh	r3, [r3, #12]
	rsb	r2, r3, #19
	cmp	r2, #4
	bhi	.L267
	sub	r3, r3, #14
	cmp	r3, #5
	movlt	r0, r3
	movge	r0, #5
	mov	r1, #67108864
	mov	ip, #199
	lsl	r2, r0, #8
	orr	r2, r2, r0, lsl #4
	orr	r2, r2, r0
	orr	r2, r2, r0, lsl #12
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	strh	r2, [r1, #76]	@ movhi
	ldrh	r2, [r1, #8]
	orr	r2, r2, #64
	strh	r2, [r1, #8]	@ movhi
	ldrh	r2, [r1, #10]
	orr	r2, r2, #64
	strh	r2, [r1, #10]	@ movhi
	add	r3, r3, r3, lsl #1
	ldrh	r2, [r1, #12]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	orr	r2, r2, #64
	strh	r2, [r1, #12]	@ movhi
	strh	ip, [r1, #80]	@ movhi
	strh	r3, [r1, #84]	@ movhi
.L268:
	ldr	r3, .L283+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L270
	ldr	r0, .L283+28
	ldr	lr, .L283+32
	ldr	ip, .L283+36
	ldr	r4, .L283+40
	ldr	r5, .L283+44
.L269:
	sub	r2, r0, #64
.L272:
	ldrh	r3, [r2]
	and	r1, r3, lr
	cmp	r1, ip
	andeq	r3, r3, r4
	orreq	r3, r3, #105
	strheq	r3, [r2]	@ movhi
	add	r2, r2, #2
	cmp	r2, r0
	bne	.L272
	add	r0, r0, #64
	cmp	r0, r5
	bne	.L269
.L270:
	mov	lr, #67108864
	mov	r4, #512
	ldr	r3, .L283+48
	ldr	ip, [r3]
	ldr	r1, [r3, #4]
	ldr	r3, .L283+52
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L283+56
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
	ldr	r2, .L283+60
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L283+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L283+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L283+72
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L283+76
	mov	lr, pc
	bx	r4
	ldr	r3, .L283+80
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L281
.L273:
	ldr	r3, .L283+84
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L282
	pop	{r4, r5, r6, lr}
	bx	lr
.L267:
	rsb	r2, r3, #20
	cmp	r2, #5
	ble	.L268
	mov	r3, #67108864
	mov	r2, #0
	strh	r2, [r3, #76]	@ movhi
	ldr	r1, .L283+88
	ldrh	r0, [r3, #8]
	and	r1, r1, r0
	strh	r1, [r3, #8]	@ movhi
	ldr	r1, .L283+88
	ldrh	r0, [r3, #10]
	and	r1, r1, r0
	strh	r1, [r3, #10]	@ movhi
	ldr	r1, .L283+88
	ldrh	r0, [r3, #12]
	and	r1, r1, r0
	strh	r1, [r3, #12]	@ movhi
	strh	r2, [r3, #80]	@ movhi
	strh	r2, [r3, #84]	@ movhi
	b	.L268
.L282:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L281:
	bl	goToLose
	b	.L273
.L284:
	.align	2
.L283:
	.word	.LANCHOR0+4
	.word	updatePlayerThree
	.word	updateSnow
	.word	updateHealth
	.word	updatePlayerPalette
	.word	67109120
	.word	leftWallTouched
	.word	100716608
	.word	1023
	.word	399
	.word	-1024
	.word	100718656
	.word	.LANCHOR0
	.word	guide
	.word	shadowOAM
	.word	drawPlayerThree
	.word	drawSnow
	.word	drawHealth
	.word	drawTimer
	.word	DMANow
	.word	gameOver
	.word	winPhaseThree
	.word	65471
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
	@ link register save eliminated.
	b	lose
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
	ldr	r6, .L288
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L288+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L288+8
	ldr	r1, .L288+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L288+16
	mov	r3, #1024
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L288+20
	ldr	r1, .L288+24
	mov	lr, pc
	bx	r6
	mov	r2, #11
	ldr	r3, .L288+28
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L289:
	.align	2
.L288:
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
	ldr	r10, .L322
	ldrh	r3, [r10]
	tst	r3, #128
	bne	.L317
	ldr	r6, .L322+4
.L291:
	tst	r3, #64
	bne	.L321
.L294:
	ldr	r3, [r6, #92]
	ldr	r9, .L322+8
	cmp	r3, #0
	ldr	r7, .L322+12
	streq	r9, [r6, #92]
.L300:
	ldr	r3, .L322+16
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	mov	r5, #0
	ldrh	fp, [r3, #4]
	ldr	r8, .L322+20
.L296:
	ldr	r3, [r6, #92]
	ldr	r4, [r3, r5]
	lsl	r4, r4, #1
	ldrh	r0, [r7, r4]
	mov	r3, #30
	mov	r1, fp
	ldr	r2, [r6, #96]
	mov	lr, pc
	bx	r8
	add	r5, r5, #4
	add	r4, r4, #83886080
	cmp	r5, #12
	strh	r0, [r4]	@ movhi
	bne	.L296
	ldr	r2, [r9, #24]
	ldr	r3, [r6, #96]
	add	r3, r2, r3
	sub	r1, r3, #1
	cmp	r1, #28
	str	r3, [r6, #96]
	ldrh	r3, [r10]
	rsbhi	r2, r2, #0
	strhi	r2, [r9, #24]
	tst	r3, #8
	beq	.L290
	ldr	r3, .L322+24
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L290
	ldr	r3, [r6, #88]
	cmp	r3, #0
	beq	.L299
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToGameInstructions
.L290:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L317:
	ldr	r2, .L322+24
	ldrh	r2, [r2]
	tst	r2, #128
	ldr	r6, .L322+4
	bne	.L291
	ldr	r2, [r6, #88]
	cmp	r2, #0
	bne	.L291
	ldr	r9, .L322+8
	mov	r2, r9
	ldr	r7, .L322+12
	add	r0, r9, #12
.L292:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L292
	mov	r3, #1
	mov	r2, #0
	str	r0, [r6, #92]
	str	r3, [r6, #88]
	str	r3, [r9, #24]
	str	r2, [r6, #96]
	b	.L300
.L321:
	ldr	r3, .L322+24
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L294
	ldr	r3, [r6, #88]
	cmp	r3, #0
	beq	.L294
	ldr	r2, .L322+28
	ldr	r7, .L322+12
	add	r0, r2, #12
.L295:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L295
	mov	r3, #0
	mov	r2, #1
	ldr	r9, .L322+8
	str	r3, [r6, #88]
	str	r3, [r6, #96]
	str	r2, [r9, #24]
	str	r9, [r6, #92]
	b	.L300
.L299:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToStart
.L323:
	.align	2
.L322:
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
	ldr	r3, .L349
	mov	lr, pc
	bx	r3
	ldr	r3, .L349+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L349+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L349+12
	ldr	r7, .L349+16
	ldr	r6, .L349+20
	ldr	fp, .L349+24
	ldr	r10, .L349+28
	ldr	r9, .L349+32
	ldr	r8, .L349+36
	ldr	r5, .L349+40
.L338:
	ldrh	r1, [r4]
	strh	r1, [r7]	@ movhi
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L325
.L327:
	.word	.L337
	.word	.L336
	.word	.L335
	.word	.L334
	.word	.L333
	.word	.L332
	.word	.L331
	.word	.L330
	.word	.L329
	.word	.L328
	.word	.L328
	.word	.L326
.L328:
	mov	lr, pc
	bx	r9
.L325:
	mov	lr, pc
	bx	r8
	b	.L338
.L329:
	ldr	r3, .L349+44
	mov	lr, pc
	bx	r3
	b	.L325
.L330:
	ldr	r3, .L349+48
	mov	lr, pc
	bx	r3
	b	.L325
.L331:
	tst	r1, #8
	beq	.L325
	tst	r3, #8
	bne	.L325
	ldr	r3, .L349+52
	mov	lr, pc
	bx	r3
	b	.L325
.L332:
	ldr	r3, .L349+56
	mov	lr, pc
	bx	r3
	b	.L325
.L336:
	mov	lr, pc
	bx	r10
	b	.L325
.L326:
	tst	r1, #8
	beq	.L325
	tst	r3, #8
	bne	.L325
	ldr	r3, .L349+60
	mov	lr, pc
	bx	r3
	b	.L325
.L337:
	mov	lr, pc
	bx	fp
	b	.L325
.L334:
	ldr	r3, .L349+64
	mov	lr, pc
	bx	r3
	b	.L325
.L335:
	ldr	r3, .L349+68
	mov	lr, pc
	bx	r3
	b	.L325
.L333:
	tst	r1, #8
	beq	.L325
	tst	r3, #8
	bne	.L325
	ldr	r3, .L349+72
	mov	lr, pc
	bx	r3
	b	.L325
.L350:
	.align	2
.L349:
	.word	mgba_open
	.word	setupSounds
	.word	goToPhaseOne
	.word	buttons
	.word	oldButtons
	.word	state
	.word	splashScreen
	.word	start
	.word	lose
	.word	waitForVBlank
	.word	67109120
	.word	pause
	.word	phaseThree
	.word	goToPhaseThree
	.word	phaseTwo
	.word	goToStart
	.word	phaseOne
	.word	startInstructions
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
	ldr	r3, .L356
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L356+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L357:
	.align	2
.L356:
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
	ldr	r2, .L360
	str	lr, [sp, #-4]!
	ldr	ip, .L360+4
	ldr	lr, .L360+8
	str	r3, [r2]
	ldr	r0, .L360+12
	ldr	r2, .L360+16
	ldr	r1, .L360+20
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
.L361:
	.align	2
.L360:
	.word	gameOver
	.word	winPhaseTwo
	.word	winPhaseOne
	.word	winPhaseThree
	.word	.LANCHOR0
	.word	next
	.size	resetGameState, .-resetGameState
	.comm	savedFadePalette,512,4
	.global	flashFrame
	.global	isFlashing
	.global	tileFadeStep
	.global	tileFadeTimer
	.comm	originalTile358,64,4
	.global	bridgeUncovered
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
	.global	shiftTimer
	.global	shiftOffset
	.global	shiftingRight
	.comm	originalBlock,32,4
	.comm	currentBlock,32,4
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
	.comm	leftWallTouched,4,4
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
	.type	direction.4368, %object
	.size	direction.4368, 4
direction.4368:
	.word	1
	.type	shiftingRight, %object
	.size	shiftingRight, 4
shiftingRight:
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
	.type	tileFadeTimer, %object
	.size	tileFadeTimer, 4
tileFadeTimer:
	.space	4
	.type	tileFadeStep, %object
	.size	tileFadeStep, 4
tileFadeStep:
	.space	4
	.type	bridgeUncovered, %object
	.size	bridgeUncovered, 4
bridgeUncovered:
	.space	4
	.type	hasPlayedPOAudio.4454, %object
	.size	hasPlayedPOAudio.4454, 4
hasPlayedPOAudio.4454:
	.space	4
	.type	tileAnimTimer.4459, %object
	.size	tileAnimTimer.4459, 4
tileAnimTimer.4459:
	.space	4
	.type	tileAnimState.4460, %object
	.size	tileAnimState.4460, 4
tileAnimState.4460:
	.space	4
	.type	swapDelayFrames.4483, %object
	.size	swapDelayFrames.4483, 4
swapDelayFrames.4483:
	.space	4
	.type	hasFlashedOnce.4484, %object
	.size	hasFlashedOnce.4484, 4
hasFlashedOnce.4484:
	.space	4
	.type	swapTimer.4481, %object
	.size	swapTimer.4481, 4
swapTimer.4481:
	.space	4
	.type	swapped.4482, %object
	.size	swapped.4482, 4
swapped.4482:
	.space	4
	.type	isFlashing.4458, %object
	.size	isFlashing.4458, 4
isFlashing.4458:
	.space	4
	.type	flashState.4455, %object
	.size	flashState.4455, 4
flashState.4455:
	.space	4
	.type	flashFrame.4457, %object
	.size	flashFrame.4457, 4
flashFrame.4457:
	.space	4
	.type	flashTimer.4456, %object
	.size	flashTimer.4456, 4
flashTimer.4456:
	.space	4
	.type	usingAltIndices.4371, %object
	.size	usingAltIndices.4371, 4
usingAltIndices.4371:
	.space	4
	.type	animatedIndices.4370, %object
	.size	animatedIndices.4370, 4
animatedIndices.4370:
	.space	4
	.type	t.4367, %object
	.size	t.4367, 4
t.4367:
	.space	4
	.type	flashFrame, %object
	.size	flashFrame, 4
flashFrame:
	.space	4
	.type	isFlashing, %object
	.size	isFlashing, 4
isFlashing:
	.space	4
	.type	shiftTimer, %object
	.size	shiftTimer, 4
shiftTimer:
	.space	4
	.type	shiftOffset, %object
	.size	shiftOffset, 4
shiftOffset:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
