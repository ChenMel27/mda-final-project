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
	ldr	r2, .L34
	ldr	r4, .L34+4
	str	r3, [r2]
	sub	sp, sp, #16
	strh	r1, [r5]	@ movhi
	ldr	r2, .L34+8
	str	r3, [r4, #20]
	mov	lr, pc
	bx	r2
	mov	r2, #53760
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r5, .L34+12
	mov	r2, #83886080
	ldr	r1, .L34+16
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L34+20
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L34+24
	ldr	r1, .L34+28
	mov	lr, pc
	bx	r5
	mov	ip, #120
	ldr	r6, .L34+32
	ldr	r5, .L34+36
	ldr	lr, .L34+40
.L21:
	mov	r0, r5
	mov	r1, r6
	sub	r3, ip, #4
.L22:
	lsl	r2, r3, #1
	ldrh	r2, [lr, r2]
	add	r3, r3, #1
	cmp	ip, r3
	strh	r2, [r1], #2	@ movhi
	strh	r2, [r0], #2	@ movhi
	bne	.L22
	add	ip, ip, #32
	cmp	ip, #248
	add	r6, r6, #8
	add	r5, r5, #8
	bne	.L21
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
	ldr	r3, .L34+44
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	ldr	lr, .L34+48
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
	ldr	r3, .L34+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L34+56
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #96
	ldr	r1, .L34+60
	str	r3, [r4]
	mov	r2, #1
	ldr	r1, [r1]
	ldr	r0, .L34+64
	ldr	r3, .L34+68
	str	ip, [r4, #4]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L34+72
	strb	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L35:
	.align	2
.L34:
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
	ldr	r4, .L38
	strh	r3, [r2]	@ movhi
	ldr	r6, .L38+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L38+8
	str	r5, [r4, #20]
	mov	lr, pc
	bx	r6
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L38+12
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r2, .L38+16
	ldr	r1, .L38+20
	mov	r3, #4096
	mov	lr, pc
	bx	r6
	ldr	r3, .L38+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+28
	mov	lr, pc
	bx	r3
	mov	r6, #1
	mov	r0, #96
	mov	lr, #170
	ldr	r2, .L38+32
	ldr	r1, .L38+36
	ldr	r3, .L38+40
	ldr	ip, .L38+44
	str	r5, [r4]
	str	r5, [r2]
	str	r0, [r4, #4]
	str	r6, [r4, #8]
	mov	r2, r5
	ldr	r4, .L38+48
	ldr	r1, [r1]
	ldr	r0, .L38+52
	str	lr, [r3, #20]
	str	ip, [r3, #16]
	mov	lr, pc
	bx	r4
	ldr	r3, .L38+56
	strb	r6, [r3]
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
	ldr	r4, .L42
	strh	r3, [r2]	@ movhi
	ldr	r5, .L42+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+8
	str	r6, [r4, #20]
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+12
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L42+16
	ldr	r1, .L42+20
	mov	r3, #4096
	mov	lr, pc
	bx	r5
	mov	r5, #96
	ldr	r3, .L42+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L42+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L42+32
	ldr	lr, [r4, #24]
	ldr	r3, .L42+36
	ldr	ip, [r4, #28]
	str	r6, [r4]
	str	r5, [r4, #4]
	ldr	r1, [r2]
	ldr	r4, .L42+40
	mov	r2, #1
	ldr	r0, .L42+44
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L42+48
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	.align	2
.L42:
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
	ldr	r6, .L46
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L46+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L46+8
	ldr	r1, .L46+12
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L46+16
	ldr	r1, .L46+20
	mov	lr, pc
	bx	r6
	ldr	r3, .L46+24
	ldr	r2, .L46+28
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L46+32
	ldr	r1, .L46+36
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L46+40
	ldr	r1, .L46+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #2
	ldr	r1, .L46+48
	ldr	r3, .L46+52
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #16]
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L47:
	.align	2
.L46:
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
	ldr	r3, .L69
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, r5, r6, lr}
	bne	.L66
	ldr	r4, .L69+4
.L49:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	bne	.L50
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	ldr	r3, .L69+8
	ldrh	r3, [r3]
	tst	r3, #8
	ldr	r4, .L69+4
	bne	.L49
	ldr	r3, [r4, #16]
	add	r2, r3, #1
	str	r2, [r4, #16]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L49
.L51:
	.word	.L58
	.word	.L57
	.word	.L56
	.word	.L55
	.word	.L54
	.word	.L53
	.word	.L52
	.word	.L50
.L50:
	mov	r3, #0
	str	r3, [r4, #12]
	bl	goToStartTwo
	mov	r2, #1
	ldr	r3, .L69+12
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L52:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L69+16
	ldr	r1, .L69+20
	ldr	r5, .L69+24
	mov	lr, pc
	bx	r5
	b	.L49
.L58:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L69+16
	ldr	r1, .L69+28
	ldr	r5, .L69+24
	mov	lr, pc
	bx	r5
	b	.L49
.L57:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L69+16
	ldr	r1, .L69+32
	ldr	r5, .L69+24
	mov	lr, pc
	bx	r5
	b	.L49
.L56:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L69+16
	ldr	r1, .L69+36
	ldr	r5, .L69+24
	mov	lr, pc
	bx	r5
	b	.L49
.L55:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L69+16
	ldr	r1, .L69+40
	ldr	r5, .L69+24
	mov	lr, pc
	bx	r5
	b	.L49
.L54:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L69+16
	ldr	r1, .L69+44
	ldr	r5, .L69+24
	mov	lr, pc
	bx	r5
	b	.L49
.L53:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L69+16
	ldr	r1, .L69+48
	ldr	r5, .L69+24
	mov	lr, pc
	bx	r5
	b	.L49
.L70:
	.align	2
.L69:
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
	ldr	ip, .L77
	ldr	r2, .L77+4
	ldr	r1, .L77+8
	strh	lr, [r0]	@ movhi
	ldr	r4, .L77+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L77+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L77+20
	ldr	r1, .L77+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L77+28
	ldr	r1, .L77+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L77+36
	ldr	r1, .L77+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r1, .L77+44
	ldr	r2, .L77+48
	mov	lr, pc
	bx	r4
	ldr	r3, .L77+52
	ldr	r1, .L77+56
	add	r0, r3, #64
	sub	r1, r1, r3
.L72:
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	strb	r2, [r3, #1]!
	cmp	r3, r0
	bne	.L72
	mov	r3, #0
	ldr	r4, .L77+60
	ldr	r2, [r4, #20]
	cmp	r2, r3
	str	r3, [r4, #32]
	str	r3, [r4, #36]
	beq	.L76
.L73:
	mov	r1, #3
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L77+64
	strb	r1, [r2]
	str	r3, [r4, #20]
	str	r3, [r4]
	str	r0, [r4, #4]
	pop	{r4, lr}
	bx	lr
.L76:
	ldr	r3, .L77+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L77+72
	mov	lr, pc
	bx	r3
	b	.L73
.L78:
	.align	2
.L77:
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
	ldr	r3, .L81
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToPhaseOne
.L82:
	.align	2
.L81:
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
	ldr	r6, .L85
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L85+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L85+8
	ldr	r1, .L85+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L85+16
	ldr	r2, .L85+20
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L85+24
	ldr	r1, .L85+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L85+32
	mov	r0, #3
	ldr	r1, .L85+36
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r3, .L85+40
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L86:
	.align	2
.L85:
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
	ldr	ip, .L91
	ldr	r2, .L91+4
	ldr	r1, .L91+8
	strh	lr, [r0]	@ movhi
	ldr	r4, .L91+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L91+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L91+20
	ldr	r1, .L91+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L91+28
	ldr	r1, .L91+32
	mov	lr, pc
	bx	r4
	ldr	r5, .L91+36
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L91+40
	ldr	r1, .L91+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L91+48
	ldr	r1, .L91+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L90
.L88:
	mov	r1, #5
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L91+56
	strb	r1, [r2]
	str	r3, [r5, #20]
	str	r3, [r5]
	str	r0, [r5, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L90:
	ldr	r3, .L91+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+64
	mov	lr, pc
	bx	r3
	b	.L88
.L92:
	.align	2
.L91:
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
	ldr	r3, .L98
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L98+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseTwo
.L99:
	.align	2
.L98:
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
	ldr	r6, .L102
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L102+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L102+8
	ldr	r1, .L102+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L102+16
	ldr	r2, .L102+20
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L102+24
	ldr	r1, .L102+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L102+32
	mov	r0, #3
	ldr	r1, .L102+36
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r3, .L102+40
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L103:
	.align	2
.L102:
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
	ldr	ip, .L106
	ldr	r2, .L106+4
	ldr	r1, .L106+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L106+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L106+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L106+20
	ldr	r1, .L106+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L106+28
	ldr	r1, .L106+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L106+36
	ldr	r1, .L106+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L106+44
	ldr	r1, .L106+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L106+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L106+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L106+60
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L106+64
	ldr	r3, .L106+68
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L107:
	.align	2
.L106:
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
	ldr	r3, .L113
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L113+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseThree
.L114:
	.align	2
.L113:
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
	ldr	r3, .L117
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+4
	ldr	r2, .L117+8
	ldr	r1, .L117+12
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r4, #12]	@ movhi
	mov	r2, #83886080
	ldr	r4, .L117+16
	ldr	r1, .L117+20
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L117+24
	ldr	r1, .L117+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L117+32
	ldr	r1, .L117+36
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L117+40
	ldr	r1, .L117+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L117+48
	ldr	r1, .L117+52
	mov	lr, pc
	bx	r4
	mov	r1, #8
	mov	r0, #96
	ldr	r2, .L117+56
	ldr	r3, .L117+60
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L118:
	.align	2
.L117:
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
	ldr	r4, .L139
	sub	sp, sp, #12
	ldr	r3, .L139+4
	mov	lr, pc
	bx	r3
	mov	r0, r4
	add	r1, r4, #4
	ldr	r3, .L139+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L139+12
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #4]
	ldrh	r2, [r4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L139+16
	mov	lr, pc
	bx	r2
	ldr	r3, .L139+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L139+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L139+28
	mov	lr, pc
	bx	r5
	ldr	r3, .L139+32
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L135
.L120:
	ldr	r3, .L139+36
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L136
.L121:
	ldr	ip, .L139+40
	ldr	r3, [ip]
	add	r3, r3, #1
	cmp	r3, #15
	strle	r3, [ip]
	bgt	.L137
.L123:
	ldr	r3, .L139+44
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L119
	ldr	r3, .L139+48
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L138
.L119:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L136:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L121
	ldr	r3, .L139+52
	mov	lr, pc
	bx	r3
	bl	goToPhaseOne
	b	.L121
.L137:
	ldr	r6, .L139+56
	ldr	r3, [r6]
	mov	lr, #0
	rsbs	r3, r3, #1
	movcc	r3, #0
	ldr	r5, .L139+60
	ldr	r7, .L139+64
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
.L135:
	bl	goToStartInstructions
	b	.L120
.L138:
	ldr	r3, .L139+68
	ldr	r2, .L139+72
	ldr	ip, [r3, #16]
	ldr	r0, [r3, #20]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L139+76
	ldr	r3, .L139+52
	str	ip, [r4, #24]
	str	r0, [r4, #28]
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToPause
.L140:
	.align	2
.L139:
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
	ldr	r2, .L156
	ldr	ip, .L156+4
	strh	r2, [r3]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r3, .L156+8
	ldr	r1, .L156+12
	ldr	r4, .L156+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r3, .L156+20
	ldr	r0, .L156+24
	mov	lr, pc
	bx	r3
	mov	r3, #8
	ldr	r2, .L156+28
	ldrh	r2, [r2]
	ldr	r4, .L156+32
	tst	r2, #8
	strb	r3, [r4]
	beq	.L141
	ldr	r3, .L156+36
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L141
	mov	r1, #1
	ldr	r5, .L156+40
	ldrb	r3, [r5]	@ zero_extendqisi2
	ldr	r2, .L156+44
	sub	r3, r3, #1
	str	r1, [r2, #20]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L143
.L145:
	.word	.L150
	.word	.L149
	.word	.L148
	.word	.L147
	.word	.L146
	.word	.L144
.L144:
	bl	goToPhaseThreeInstructions
.L151:
	ldrb	r3, [r5]	@ zero_extendqisi2
	strb	r3, [r4]
.L141:
	pop	{r4, r5, r6, lr}
	bx	lr
.L150:
	bl	goToStartThree
	b	.L151
.L149:
	bl	goToStartInstructions
	b	.L151
.L148:
	bl	goToPhaseOne
	b	.L151
.L147:
	bl	goToPhaseTwoInstructions
	b	.L151
.L146:
	bl	goToPhaseTwo
	b	.L151
.L143:
	bl	goToStart
	b	.L151
.L157:
	.align	2
.L156:
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
	ldr	r3, .L160
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L160+4
	ldr	r2, .L160+8
	ldr	r1, .L160+12
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r4, #12]	@ movhi
	mov	r2, #83886080
	ldr	r4, .L160+16
	ldr	r1, .L160+20
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L160+24
	ldr	r1, .L160+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L160+32
	ldr	r1, .L160+36
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L160+40
	ldr	r1, .L160+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L160+48
	ldr	r1, .L160+52
	mov	lr, pc
	bx	r4
	mov	r1, #9
	mov	r0, #96
	ldr	r2, .L160+56
	ldr	r3, .L160+60
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L161:
	.align	2
.L160:
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
	ldr	r4, .L230
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L223
.L163:
	ldr	r1, .L230+4
	ldr	r3, .L230+8
	sub	r0, r1, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L230+12
	mov	lr, pc
	bx	r3
	mov	lr, #67108864
	ldm	r4, {r0, r1}
	ldr	ip, [r4, #44]
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
	strle	ip, [r4, #44]
	ble	.L169
	mov	r2, #0
	ldr	r3, [r4, #48]
	sub	r0, r3, r2
	rsbs	r3, r0, #0
	adc	r3, r3, r0
	str	r2, [r4, #44]
	str	r3, [r4, #48]
	ldr	r0, .L230+16
	ldr	lr, .L230+20
	ldr	ip, .L230+24
	ldr	r5, .L230+28
.L165:
	sub	r2, r0, #64
.L168:
	ldrh	r3, [r2]
	and	r1, r3, lr
	cmp	r1, #231
	and	r3, r3, ip
	orreq	r3, r3, #255
	strheq	r3, [r2]	@ movhi
	beq	.L167
	cmp	r1, #255
	orreq	r3, r3, #231
	strheq	r3, [r2]	@ movhi
.L167:
	add	r2, r2, #2
	cmp	r0, r2
	bne	.L168
	add	r0, r0, #64
	cmp	r0, r5
	bne	.L165
.L169:
	ldr	r3, [r4, #32]
	add	r3, r3, #1
	tst	r3, #3
	str	r3, [r4, #32]
	bne	.L173
	ldr	r3, [r4, #36]
	cmp	r3, #99
	bgt	.L173
	ldr	r6, .L230+32
	add	r3, r3, #1
	str	r3, [r4, #36]
	ldr	r8, .L230+36
	add	r7, r6, #64
.L175:
	ldrb	r3, [r6, #1]!	@ zero_extendqisi2
	lsl	r5, r3, #1
	cmp	r3, #0
	add	r5, r5, #83886080
	beq	.L174
	mov	r3, #2000
	mov	r1, #0
	ldr	r2, [r4, #36]
	ldrh	r0, [r5]
	mov	lr, pc
	bx	r8
	strh	r0, [r5]	@ movhi
.L174:
	cmp	r7, r6
	bne	.L175
.L173:
	ldr	r3, [r4, #52]
	add	r3, r3, #1
	cmp	r3, #200
	str	r3, [r4, #52]
	ble	.L172
	ldr	r10, [r4, #56]
	cmp	r10, #0
	beq	.L224
.L172:
	ldr	r3, [r4, #68]
	cmp	r3, #0
	bne	.L185
.L193:
	mov	r5, #512
	ldr	r3, .L230+40
	ldrb	r2, [r3, #56]	@ zero_extendqisi2
	ldr	r4, .L230+44
	lsl	r2, r2, #3
	strh	r5, [r4, r2]	@ movhi
	ldr	r3, .L230+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L230+52
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r1, r4
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L230+56
	mov	lr, pc
	bx	r4
	ldr	r3, .L230+60
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L225
	ldr	r3, .L230+64
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L226
.L197:
	ldr	r3, .L230+68
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L162
	ldr	r3, .L230+72
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L227
.L162:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L224:
	ldr	r3, [r4, #60]
	add	r3, r3, #1
	cmp	r3, #60
	strle	r3, [r4, #60]
	ble	.L172
	ldr	r5, [r4, #64]
	mov	r2, #1
	rsbs	r1, r5, #1
	movcc	r1, #0
	ldr	r3, .L230+76
	str	r10, [r4, #60]
	str	r10, [r4, #72]
	str	r10, [r4, #76]
	str	r2, [r4, #68]
	str	r2, [r4, #56]
	str	r1, [r4, #64]
	add	r0, r3, #512
	rsb	r1, r3, #83886080
.L177:
	ldrh	r2, [r1, r3]
	strh	r2, [r3, #2]!	@ movhi
	cmp	r3, r0
	bne	.L177
	ldr	r0, .L230+28
	ldr	r7, .L230+80
	ldr	r8, .L230+84
	ldr	r6, .L230+88
.L178:
	ldr	lr, .L230+20
	ldr	ip, .L230+24
	ldr	r9, .L230+88
	sub	r2, r0, #64
	b	.L183
.L229:
	cmp	r1, r6
	orreq	r3, r3, #320
	orreq	r3, r3, #2
	strheq	r3, [r2]	@ movhi
	beq	.L181
	orr	r3, r3, #344
	cmp	r1, #348
	orr	r3, r3, #3
	bne	.L181
.L222:
	strh	r3, [r2]	@ movhi
.L181:
	add	r2, r2, #2
	cmp	r0, r2
	beq	.L228
.L183:
	ldrh	r3, [r2]
	cmp	r5, #0
	and	r1, r3, lr
	and	r3, r3, ip
	bne	.L229
	cmp	r1, r7
	orreq	r3, r3, r9
	strheq	r3, [r2]	@ movhi
	beq	.L181
	cmp	r1, r8
	bne	.L181
	orr	r3, r3, #348
	b	.L222
.L185:
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	cmp	r3, #8
	ldr	r10, [r4, #76]
	ble	.L184
	mov	r2, #0
	ldr	r3, [r4, #72]
	sub	r1, r3, r2
	rsbs	r3, r1, #0
	adc	r3, r3, r1
	add	r10, r10, #1
	str	r10, [r4, #76]
	str	r3, [r4, #72]
	str	r2, [r4, #80]
.L189:
	cmp	r10, #3
	ble	.L190
	mov	r3, #0
	ldr	r2, .L230+32
	str	r3, [r4, #68]
	ldr	r0, .L230+92
	add	r1, r2, #64
.L192:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	lslne	r3, r3, #1
	addne	r3, r3, #83886080
	strhne	r0, [r3]	@ movhi
	cmp	r1, r2
	bne	.L192
	b	.L193
.L225:
	bl	goToLose
	ldr	r3, .L230+64
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L197
.L226:
	bl	goToPhaseTwoInstructions
	b	.L197
.L223:
	mov	r2, #1
	ldr	r3, .L230+96
	ldr	r0, .L230+100
	ldr	r1, [r3]
	ldr	r3, .L230+104
	str	r2, [r4, #40]
	mov	lr, pc
	bx	r3
	b	.L163
.L190:
	ldr	r2, .L230+32
	ldr	r5, [r4, #72]
	ldr	r4, .L230+108
	add	lr, r2, #64
.L196:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	lsl	r3, r3, #1
	beq	.L194
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
.L194:
	cmp	lr, r2
	bne	.L196
	b	.L193
.L228:
	ldr	r3, .L230+112
	add	r0, r0, #64
	cmp	r0, r3
	bne	.L178
	mov	r3, #1
.L184:
	str	r3, [r4, #80]
	b	.L189
.L227:
	ldr	r2, .L230+116
	ldr	r3, .L230+120
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	goToPause
.L231:
	.align	2
.L230:
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
	ldr	r5, .L249
	ldr	r3, .L249+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L249+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L249+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L249+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L249+20
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
	ldr	r2, .L249+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L249+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L249+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L249+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L249+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L246
.L233:
	ldr	r3, .L249+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L247
.L234:
	ldr	r3, .L249+48
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L232
	ldr	r3, .L249+52
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L248
.L232:
	pop	{r4, r5, r6, lr}
	bx	lr
.L247:
	bl	goToPhaseThreeInstructions
	b	.L234
.L246:
	bl	goToLose
	b	.L233
.L248:
	ldr	r2, .L249+56
	ldr	r3, .L249+60
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	b	goToPause
.L250:
	.align	2
.L249:
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
	ldr	r5, .L258
	ldr	r3, .L258+4
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
	ldr	r2, .L258+8
	strh	ip, [r4, #22]	@ movhi
	strh	r3, [r4, #24]	@ movhi
	strh	r0, [r4, #26]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L258+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L258+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L258+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L258+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L251
	ldr	r3, .L258+28
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L257
.L251:
	pop	{r4, r5, r6, lr}
	bx	lr
.L257:
	bl	goToSplashScreen
	ldr	r3, .L258+32
	strb	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L259:
	.align	2
.L258:
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
	ldr	r3, .L262
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L262+4
	ldr	r1, .L262+8
	ldr	r0, .L262+12
	strh	r5, [r4, #16]	@ movhi
	mov	r3, #256
	strh	r5, [r4, #18]	@ movhi
	strh	r2, [r4, #8]	@ movhi
	strh	r1, [r4, #10]	@ movhi
	mov	r2, #83886080
	strh	r0, [r4, #12]	@ movhi
	ldr	r1, .L262+16
	ldr	r4, .L262+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L262+24
	ldr	r1, .L262+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L262+32
	ldr	r1, .L262+36
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L262+40
	ldr	r1, .L262+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L262+48
	ldr	r1, .L262+52
	mov	lr, pc
	bx	r4
	mov	r1, #10
	mov	r0, #96
	ldr	r2, .L262+56
	ldr	r3, .L262+60
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L263:
	.align	2
.L262:
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L273
	ldr	r3, .L273+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L273+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L273+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L273+16
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L273+20
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L273+24
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
	ldr	r2, .L273+28
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L273+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L273+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L273+40
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L273+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L273+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L271
	ldr	r3, .L273+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L272
.L264:
	pop	{r4, r5, r6, lr}
	bx	lr
.L271:
	bl	goToLose
	ldr	r3, .L273+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L264
.L272:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L274:
	.align	2
.L273:
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
	ldr	r6, .L278
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L278+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L278+8
	ldr	r1, .L278+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L278+16
	mov	r3, #1024
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L278+20
	ldr	r1, .L278+24
	mov	lr, pc
	bx	r6
	mov	r2, #11
	ldr	r3, .L278+28
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L279:
	.align	2
.L278:
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
	ldr	r10, .L312
	ldrh	r3, [r10]
	tst	r3, #128
	bne	.L307
	ldr	r6, .L312+4
.L281:
	tst	r3, #64
	bne	.L311
.L284:
	ldr	r3, [r6, #88]
	ldr	r9, .L312+8
	cmp	r3, #0
	ldr	r7, .L312+12
	streq	r9, [r6, #88]
.L290:
	ldr	r3, .L312+16
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	mov	r5, #0
	ldrh	fp, [r3, #4]
	ldr	r8, .L312+20
.L286:
	ldr	r3, [r6, #88]
	ldr	r4, [r3, r5]
	lsl	r4, r4, #1
	ldrh	r0, [r7, r4]
	mov	r3, #30
	mov	r1, fp
	ldr	r2, [r6, #92]
	mov	lr, pc
	bx	r8
	add	r5, r5, #4
	add	r4, r4, #83886080
	cmp	r5, #12
	strh	r0, [r4]	@ movhi
	bne	.L286
	ldr	r2, [r9, #24]
	ldr	r3, [r6, #92]
	add	r3, r2, r3
	sub	r1, r3, #1
	cmp	r1, #28
	str	r3, [r6, #92]
	ldrh	r3, [r10]
	rsbhi	r2, r2, #0
	strhi	r2, [r9, #24]
	tst	r3, #8
	beq	.L280
	ldr	r3, .L312+24
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L280
	ldr	r3, [r6, #84]
	cmp	r3, #0
	beq	.L289
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToGameInstructions
.L280:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L307:
	ldr	r2, .L312+24
	ldrh	r2, [r2]
	tst	r2, #128
	ldr	r6, .L312+4
	bne	.L281
	ldr	r2, [r6, #84]
	cmp	r2, #0
	bne	.L281
	ldr	r9, .L312+8
	mov	r2, r9
	ldr	r7, .L312+12
	add	r0, r9, #12
.L282:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L282
	mov	r3, #1
	mov	r2, #0
	str	r0, [r6, #88]
	str	r3, [r6, #84]
	str	r3, [r9, #24]
	str	r2, [r6, #92]
	b	.L290
.L311:
	ldr	r3, .L312+24
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L284
	ldr	r3, [r6, #84]
	cmp	r3, #0
	beq	.L284
	ldr	r2, .L312+28
	ldr	r7, .L312+12
	add	r0, r2, #12
.L285:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L285
	mov	r3, #0
	mov	r2, #1
	ldr	r9, .L312+8
	str	r3, [r6, #84]
	str	r3, [r6, #92]
	str	r2, [r9, #24]
	str	r9, [r6, #88]
	b	.L290
.L289:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToStart
.L313:
	.align	2
.L312:
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
	ldr	r3, .L339
	mov	lr, pc
	bx	r3
	ldr	r3, .L339+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L339+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L339+12
	ldr	r7, .L339+16
	ldr	r6, .L339+20
	ldr	fp, .L339+24
	ldr	r10, .L339+28
	ldr	r9, .L339+32
	ldr	r8, .L339+36
	ldr	r5, .L339+40
.L328:
	ldrh	r1, [r4]
	strh	r1, [r7]	@ movhi
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L315
.L317:
	.word	.L327
	.word	.L326
	.word	.L325
	.word	.L324
	.word	.L323
	.word	.L322
	.word	.L321
	.word	.L320
	.word	.L319
	.word	.L318
	.word	.L318
	.word	.L316
.L318:
	mov	lr, pc
	bx	r9
.L315:
	mov	lr, pc
	bx	r8
	b	.L328
.L319:
	ldr	r3, .L339+44
	mov	lr, pc
	bx	r3
	b	.L315
.L320:
	ldr	r3, .L339+48
	mov	lr, pc
	bx	r3
	b	.L315
.L321:
	tst	r1, #8
	beq	.L315
	tst	r3, #8
	bne	.L315
	ldr	r3, .L339+52
	mov	lr, pc
	bx	r3
	b	.L315
.L322:
	ldr	r3, .L339+56
	mov	lr, pc
	bx	r3
	b	.L315
.L326:
	mov	lr, pc
	bx	r10
	b	.L315
.L316:
	tst	r1, #8
	beq	.L315
	tst	r3, #8
	bne	.L315
	ldr	r3, .L339+60
	mov	lr, pc
	bx	r3
	b	.L315
.L327:
	mov	lr, pc
	bx	fp
	b	.L315
.L324:
	ldr	r3, .L339+64
	mov	lr, pc
	bx	r3
	b	.L315
.L325:
	ldr	r3, .L339+68
	mov	lr, pc
	bx	r3
	b	.L315
.L323:
	tst	r1, #8
	beq	.L315
	tst	r3, #8
	bne	.L315
	ldr	r3, .L339+72
	mov	lr, pc
	bx	r3
	b	.L315
.L340:
	.align	2
.L339:
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
	ldr	r3, .L346
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L346+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L347:
	.align	2
.L346:
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
	ldr	r2, .L350
	str	lr, [sp, #-4]!
	ldr	ip, .L350+4
	ldr	lr, .L350+8
	str	r3, [r2]
	ldr	r0, .L350+12
	ldr	r2, .L350+16
	ldr	r1, .L350+20
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
.L351:
	.align	2
.L350:
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
	.type	direction.4366, %object
	.size	direction.4366, 4
direction.4366:
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
	.type	hasPlayedPOAudio.4451, %object
	.size	hasPlayedPOAudio.4451, 4
hasPlayedPOAudio.4451:
	.space	4
	.type	tileAnimTimer.4456, %object
	.size	tileAnimTimer.4456, 4
tileAnimTimer.4456:
	.space	4
	.type	tileAnimState.4457, %object
	.size	tileAnimState.4457, 4
tileAnimState.4457:
	.space	4
	.type	swapDelayFrames.4480, %object
	.size	swapDelayFrames.4480, 4
swapDelayFrames.4480:
	.space	4
	.type	hasFlashedOnce.4481, %object
	.size	hasFlashedOnce.4481, 4
hasFlashedOnce.4481:
	.space	4
	.type	swapTimer.4478, %object
	.size	swapTimer.4478, 4
swapTimer.4478:
	.space	4
	.type	swapped.4479, %object
	.size	swapped.4479, 4
swapped.4479:
	.space	4
	.type	isFlashing.4455, %object
	.size	isFlashing.4455, 4
isFlashing.4455:
	.space	4
	.type	flashState.4452, %object
	.size	flashState.4452, 4
flashState.4452:
	.space	4
	.type	flashFrame.4454, %object
	.size	flashFrame.4454, 4
flashFrame.4454:
	.space	4
	.type	flashTimer.4453, %object
	.size	flashTimer.4453, 4
flashTimer.4453:
	.space	4
	.type	usingAltIndices.4369, %object
	.size	usingAltIndices.4369, 4
usingAltIndices.4369:
	.space	4
	.type	animatedIndices.4368, %object
	.size	animatedIndices.4368, 4
animatedIndices.4368:
	.space	4
	.type	t.4365, %object
	.size	t.4365, 4
t.4365:
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
