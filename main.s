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
	ldr	r3, .L22
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToSplashScreen
.L23:
	.align	2
.L22:
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
	ldr	r3, .L28
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L27
	pop	{r4, lr}
	bx	lr
.L27:
	bl	goToSplashScreen
	ldr	r3, .L28+4
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
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
	push	{r4, r5, r6, lr}
	mov	r3, #0
	mov	r5, #67108864
	mov	r1, #4608
	ldr	r2, .L44
	ldr	r4, .L44+4
	str	r3, [r2]
	sub	sp, sp, #16
	strh	r1, [r5]	@ movhi
	ldr	r2, .L44+8
	str	r3, [r4, #20]
	mov	lr, pc
	bx	r2
	mov	r2, #53760
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r5, .L44+12
	mov	r2, #83886080
	ldr	r1, .L44+16
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L44+20
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L44+24
	ldr	r1, .L44+28
	mov	lr, pc
	bx	r5
	mov	ip, #120
	ldr	r6, .L44+32
	ldr	r5, .L44+36
	ldr	lr, .L44+40
.L31:
	mov	r0, r5
	mov	r1, r6
	sub	r3, ip, #4
.L32:
	lsl	r2, r3, #1
	ldrh	r2, [lr, r2]
	add	r3, r3, #1
	cmp	ip, r3
	strh	r2, [r1], #2	@ movhi
	strh	r2, [r0], #2	@ movhi
	bne	.L32
	add	ip, ip, #32
	cmp	ip, #248
	add	r6, r6, #8
	add	r5, r5, #8
	bne	.L31
	mov	r5, #27
	mov	lr, #364
.L33:
	mov	r1, #57
	asr	ip, r5, #5
	add	ip, ip, #9
	and	r0, r5, #31
	lsl	ip, ip, #1
	lsl	r0, r0, #5
.L34:
	add	r2, ip, r1, asr #5
	and	r3, r1, #31
	lsl	r2, r2, #11
	add	r3, r3, r0
	add	r1, r1, #1
	add	r2, r2, #100663296
	lsl	r3, r3, #1
	cmp	r1, #67
	strh	lr, [r2, r3]	@ movhi
	bne	.L34
	add	r5, r5, #1
	cmp	r5, #37
	bne	.L33
	mov	ip, sp
	ldr	r3, .L44+44
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	ldr	lr, .L44+48
	add	r5, sp, #16
.L36:
	mov	r1, lr
	ldr	r3, [ip], #4
	lsl	r3, r3, #4
	add	r0, r3, #16
.L37:
	lsl	r2, r3, #1
	add	r2, r2, #100663296
	ldrh	r2, [r2]
	add	r3, r3, #1
	cmp	r0, r3
	strh	r2, [r1, #2]!	@ movhi
	bne	.L37
	cmp	r5, ip
	add	lr, lr, #32
	bne	.L36
	ldr	r3, .L44+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L44+56
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #96
	ldr	r1, .L44+60
	str	r3, [r4]
	mov	r2, #1
	ldr	r1, [r1]
	ldr	r0, .L44+64
	ldr	r3, .L44+68
	str	ip, [r4, #4]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L44+72
	strb	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L45:
	.align	2
.L44:
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
	ldr	r4, .L48
	strh	r3, [r2]	@ movhi
	ldr	r6, .L48+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L48+8
	str	r5, [r4, #20]
	mov	lr, pc
	bx	r6
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L48+12
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r2, .L48+16
	ldr	r1, .L48+20
	mov	r3, #4096
	mov	lr, pc
	bx	r6
	ldr	r3, .L48+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L48+28
	mov	lr, pc
	bx	r3
	mov	r6, #1
	mov	r0, #96
	mov	lr, #170
	ldr	r2, .L48+32
	ldr	r1, .L48+36
	ldr	r3, .L48+40
	ldr	ip, .L48+44
	str	r5, [r4]
	str	r5, [r2]
	str	r0, [r4, #4]
	str	r6, [r4, #8]
	mov	r2, r5
	ldr	r4, .L48+48
	ldr	r1, [r1]
	ldr	r0, .L48+52
	str	lr, [r3, #20]
	str	ip, [r3, #16]
	mov	lr, pc
	bx	r4
	ldr	r3, .L48+56
	strb	r6, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L49:
	.align	2
.L48:
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
	ldr	r4, .L52
	strh	r3, [r2]	@ movhi
	ldr	r5, .L52+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L52+8
	str	r6, [r4, #20]
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L52+12
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L52+16
	ldr	r1, .L52+20
	mov	r3, #4096
	mov	lr, pc
	bx	r5
	mov	r5, #96
	ldr	r3, .L52+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L52+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L52+32
	ldr	lr, [r4, #24]
	ldr	r3, .L52+36
	ldr	ip, [r4, #28]
	str	r6, [r4]
	str	r5, [r4, #4]
	ldr	r1, [r2]
	ldr	r4, .L52+40
	mov	r2, #1
	ldr	r0, .L52+44
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L52+48
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L53:
	.align	2
.L52:
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
	ldr	r6, .L56
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L56+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L56+8
	ldr	r1, .L56+12
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L56+16
	ldr	r1, .L56+20
	mov	lr, pc
	bx	r6
	ldr	r3, .L56+24
	ldr	r2, .L56+28
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L56+32
	ldr	r1, .L56+36
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L56+40
	ldr	r1, .L56+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #2
	ldr	r1, .L56+48
	ldr	r3, .L56+52
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #16]
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L57:
	.align	2
.L56:
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
	ldr	r3, .L79
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, r5, r6, lr}
	bne	.L76
	ldr	r4, .L79+4
.L59:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	bne	.L60
	pop	{r4, r5, r6, lr}
	bx	lr
.L76:
	ldr	r3, .L79+8
	ldrh	r3, [r3]
	tst	r3, #8
	ldr	r4, .L79+4
	bne	.L59
	ldr	r3, [r4, #16]
	add	r2, r3, #1
	str	r2, [r4, #16]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L59
.L61:
	.word	.L68
	.word	.L67
	.word	.L66
	.word	.L65
	.word	.L64
	.word	.L63
	.word	.L62
	.word	.L60
.L60:
	mov	r3, #0
	str	r3, [r4, #12]
	bl	goToStartTwo
	mov	r2, #1
	ldr	r3, .L79+12
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L62:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L79+16
	ldr	r1, .L79+20
	ldr	r5, .L79+24
	mov	lr, pc
	bx	r5
	b	.L59
.L68:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L79+16
	ldr	r1, .L79+28
	ldr	r5, .L79+24
	mov	lr, pc
	bx	r5
	b	.L59
.L67:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L79+16
	ldr	r1, .L79+32
	ldr	r5, .L79+24
	mov	lr, pc
	bx	r5
	b	.L59
.L66:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L79+16
	ldr	r1, .L79+36
	ldr	r5, .L79+24
	mov	lr, pc
	bx	r5
	b	.L59
.L65:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L79+16
	ldr	r1, .L79+40
	ldr	r5, .L79+24
	mov	lr, pc
	bx	r5
	b	.L59
.L64:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L79+16
	ldr	r1, .L79+44
	ldr	r5, .L79+24
	mov	lr, pc
	bx	r5
	b	.L59
.L63:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L79+16
	ldr	r1, .L79+48
	ldr	r5, .L79+24
	mov	lr, pc
	bx	r5
	b	.L59
.L80:
	.align	2
.L79:
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
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L87+36
	ldr	r1, .L87+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r1, .L87+44
	ldr	r2, .L87+48
	mov	lr, pc
	bx	r4
	ldr	r3, .L87+52
	ldr	r1, .L87+56
	add	r0, r3, #64
	sub	r1, r1, r3
.L82:
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	strb	r2, [r3, #1]!
	cmp	r3, r0
	bne	.L82
	mov	r3, #0
	ldr	r4, .L87+60
	ldr	r2, [r4, #20]
	cmp	r2, r3
	str	r3, [r4, #32]
	str	r3, [r4, #36]
	beq	.L86
.L83:
	mov	r1, #3
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L87+64
	strb	r1, [r2]
	str	r3, [r4, #20]
	str	r3, [r4]
	str	r0, [r4, #4]
	pop	{r4, lr}
	bx	lr
.L86:
	ldr	r3, .L87+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+72
	mov	lr, pc
	bx	r3
	b	.L83
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
	ldr	r6, .L91
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L91+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L91+8
	ldr	r1, .L91+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L91+16
	ldr	r2, .L91+20
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L91+24
	ldr	r1, .L91+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L91+32
	mov	r0, #3
	ldr	r1, .L91+36
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r3, .L91+40
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L92:
	.align	2
.L91:
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
	ldr	ip, .L97
	ldr	r2, .L97+4
	ldr	r1, .L97+8
	strh	lr, [r0]	@ movhi
	ldr	r4, .L97+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L97+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L97+20
	ldr	r1, .L97+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L97+28
	ldr	r1, .L97+32
	mov	lr, pc
	bx	r4
	ldr	r5, .L97+36
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L97+40
	ldr	r1, .L97+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L97+48
	ldr	r1, .L97+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L96
.L94:
	mov	r1, #5
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L97+56
	strb	r1, [r2]
	str	r3, [r5, #20]
	str	r3, [r5]
	str	r0, [r5, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L96:
	ldr	r3, .L97+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L97+64
	mov	lr, pc
	bx	r3
	b	.L94
.L98:
	.align	2
.L97:
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
	ldr	r3, .L104
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L104+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseTwo
.L105:
	.align	2
.L104:
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
	ldr	r6, .L108
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L108+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L108+8
	ldr	r1, .L108+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L108+16
	ldr	r2, .L108+20
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L108+24
	ldr	r1, .L108+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L108+32
	mov	r0, #3
	ldr	r1, .L108+36
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r3, .L108+40
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L109:
	.align	2
.L108:
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
	ldr	ip, .L112
	ldr	r2, .L112+4
	ldr	r1, .L112+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L112+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L112+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L112+20
	ldr	r1, .L112+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L112+28
	ldr	r1, .L112+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L112+36
	ldr	r1, .L112+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L112+44
	ldr	r1, .L112+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L112+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L112+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L112+60
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L112+64
	ldr	r3, .L112+68
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L113:
	.align	2
.L112:
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
	ldr	r3, .L119
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L119+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseThree
.L120:
	.align	2
.L119:
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
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L145
	sub	sp, sp, #12
	ldr	r3, .L145+4
	mov	lr, pc
	bx	r3
	mov	r0, r4
	add	r1, r4, #4
	ldr	r3, .L145+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L145+12
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #4]
	ldrh	r2, [r4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L145+16
	mov	lr, pc
	bx	r2
	ldr	r3, .L145+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L145+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L145+28
	mov	lr, pc
	bx	r5
	ldr	r3, .L145+32
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L141
.L126:
	ldr	r3, .L145+36
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L142
.L127:
	ldr	ip, .L145+40
	ldr	r3, [ip]
	add	r3, r3, #1
	cmp	r3, #15
	strle	r3, [ip]
	bgt	.L143
.L129:
	ldr	r3, .L145+44
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L125
	ldr	r3, .L145+48
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L144
.L125:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L142:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L127
	ldr	r3, .L145+52
	mov	lr, pc
	bx	r3
	bl	goToPhaseOne
	b	.L127
.L143:
	ldr	r6, .L145+56
	ldr	r3, [r6]
	mov	lr, #0
	rsbs	r3, r3, #1
	movcc	r3, #0
	ldr	r5, .L145+60
	ldr	r7, .L145+64
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
	b	.L129
.L141:
	bl	goToStartInstructions
	b	.L126
.L144:
	ldr	r3, .L145+68
	ldr	r2, .L145+72
	ldr	ip, [r3, #16]
	ldr	r0, [r3, #20]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L145+76
	ldr	r3, .L145+52
	str	ip, [r4, #24]
	str	r0, [r4, #28]
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToPause
.L146:
	.align	2
.L145:
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
	ldr	r3, .L165
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L165+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r4, .L165+8
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r2, .L165+12
	sub	r3, r3, #1
	str	r1, [r2, #20]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L149
.L151:
	.word	.L156
	.word	.L155
	.word	.L154
	.word	.L153
	.word	.L152
	.word	.L150
.L150:
	bl	goToPhaseThreeInstructions
.L157:
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldr	r3, .L165+16
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L156:
	bl	goToStartThree
	b	.L157
.L155:
	bl	goToStartInstructions
	b	.L157
.L154:
	bl	goToPhaseOne
	b	.L157
.L153:
	bl	goToPhaseTwoInstructions
	b	.L157
.L152:
	bl	goToPhaseTwo
	b	.L157
.L149:
	bl	goToStart
	b	.L157
.L166:
	.align	2
.L165:
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
	ldr	r2, .L169
	ldr	ip, .L169+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L169+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L169+12
	ldr	r4, .L169+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L169+20
	ldr	r3, .L169+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L169+28
	mov	r3, #15
	ldr	r2, .L169+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L169+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L170:
	.align	2
.L169:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L239
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L232
.L172:
	ldr	r1, .L239+4
	ldr	r3, .L239+8
	sub	r0, r1, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L239+12
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
	ble	.L178
	mov	r2, #0
	ldr	r3, [r4, #48]
	sub	r0, r3, r2
	rsbs	r3, r0, #0
	adc	r3, r3, r0
	str	r2, [r4, #44]
	str	r3, [r4, #48]
	ldr	r0, .L239+16
	ldr	lr, .L239+20
	ldr	ip, .L239+24
	ldr	r5, .L239+28
.L174:
	sub	r2, r0, #64
.L177:
	ldrh	r3, [r2]
	and	r1, r3, lr
	cmp	r1, #231
	and	r3, r3, ip
	orreq	r3, r3, #255
	strheq	r3, [r2]	@ movhi
	beq	.L176
	cmp	r1, #255
	orreq	r3, r3, #231
	strheq	r3, [r2]	@ movhi
.L176:
	add	r2, r2, #2
	cmp	r0, r2
	bne	.L177
	add	r0, r0, #64
	cmp	r0, r5
	bne	.L174
.L178:
	ldr	r3, [r4, #32]
	add	r3, r3, #1
	tst	r3, #3
	str	r3, [r4, #32]
	bne	.L182
	ldr	r3, [r4, #36]
	cmp	r3, #99
	bgt	.L182
	ldr	r6, .L239+32
	add	r3, r3, #1
	str	r3, [r4, #36]
	ldr	r8, .L239+36
	add	r7, r6, #64
.L184:
	ldrb	r3, [r6, #1]!	@ zero_extendqisi2
	lsl	r5, r3, #1
	cmp	r3, #0
	add	r5, r5, #83886080
	beq	.L183
	mov	r3, #2000
	mov	r1, #0
	ldr	r2, [r4, #36]
	ldrh	r0, [r5]
	mov	lr, pc
	bx	r8
	strh	r0, [r5]	@ movhi
.L183:
	cmp	r7, r6
	bne	.L184
.L182:
	ldr	r3, [r4, #52]
	add	r3, r3, #1
	cmp	r3, #200
	str	r3, [r4, #52]
	ble	.L181
	ldr	r10, [r4, #56]
	cmp	r10, #0
	beq	.L233
.L181:
	ldr	r3, [r4, #68]
	cmp	r3, #0
	bne	.L194
.L202:
	mov	r5, #512
	ldr	r3, .L239+40
	ldrb	r2, [r3, #56]	@ zero_extendqisi2
	ldr	r4, .L239+44
	lsl	r2, r2, #3
	strh	r5, [r4, r2]	@ movhi
	ldr	r3, .L239+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L239+52
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r1, r4
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L239+56
	mov	lr, pc
	bx	r4
	ldr	r3, .L239+60
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L234
	ldr	r3, .L239+64
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L235
.L206:
	ldr	r3, .L239+68
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L171
	ldr	r3, .L239+72
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L236
.L171:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L233:
	ldr	r3, [r4, #60]
	add	r3, r3, #1
	cmp	r3, #60
	strle	r3, [r4, #60]
	ble	.L181
	ldr	r5, [r4, #64]
	mov	r2, #1
	rsbs	r1, r5, #1
	movcc	r1, #0
	ldr	r3, .L239+76
	str	r10, [r4, #60]
	str	r10, [r4, #72]
	str	r10, [r4, #76]
	str	r2, [r4, #68]
	str	r2, [r4, #56]
	str	r1, [r4, #64]
	add	r0, r3, #512
	rsb	r1, r3, #83886080
.L186:
	ldrh	r2, [r1, r3]
	strh	r2, [r3, #2]!	@ movhi
	cmp	r3, r0
	bne	.L186
	ldr	r0, .L239+28
	ldr	r7, .L239+80
	ldr	r8, .L239+84
	ldr	r6, .L239+88
.L187:
	ldr	lr, .L239+20
	ldr	ip, .L239+24
	ldr	r9, .L239+88
	sub	r2, r0, #64
	b	.L192
.L238:
	cmp	r1, r6
	orreq	r3, r3, #320
	orreq	r3, r3, #2
	strheq	r3, [r2]	@ movhi
	beq	.L190
	orr	r3, r3, #344
	cmp	r1, #348
	orr	r3, r3, #3
	bne	.L190
.L231:
	strh	r3, [r2]	@ movhi
.L190:
	add	r2, r2, #2
	cmp	r0, r2
	beq	.L237
.L192:
	ldrh	r3, [r2]
	cmp	r5, #0
	and	r1, r3, lr
	and	r3, r3, ip
	bne	.L238
	cmp	r1, r7
	orreq	r3, r3, r9
	strheq	r3, [r2]	@ movhi
	beq	.L190
	cmp	r1, r8
	bne	.L190
	orr	r3, r3, #348
	b	.L231
.L194:
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	cmp	r3, #8
	ldr	r10, [r4, #76]
	ble	.L193
	mov	r2, #0
	ldr	r3, [r4, #72]
	sub	r1, r3, r2
	rsbs	r3, r1, #0
	adc	r3, r3, r1
	add	r10, r10, #1
	str	r10, [r4, #76]
	str	r3, [r4, #72]
	str	r2, [r4, #80]
.L198:
	cmp	r10, #3
	ble	.L199
	mov	r3, #0
	ldr	r2, .L239+32
	str	r3, [r4, #68]
	ldr	r0, .L239+92
	add	r1, r2, #64
.L201:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	lslne	r3, r3, #1
	addne	r3, r3, #83886080
	strhne	r0, [r3]	@ movhi
	cmp	r1, r2
	bne	.L201
	b	.L202
.L234:
	bl	goToLose
	ldr	r3, .L239+64
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L206
.L235:
	bl	goToPhaseTwoInstructions
	b	.L206
.L232:
	mov	r2, #1
	ldr	r3, .L239+96
	ldr	r0, .L239+100
	ldr	r1, [r3]
	ldr	r3, .L239+104
	str	r2, [r4, #40]
	mov	lr, pc
	bx	r3
	b	.L172
.L199:
	ldr	r2, .L239+32
	ldr	r5, [r4, #72]
	ldr	r4, .L239+108
	add	lr, r2, #64
.L205:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	lsl	r3, r3, #1
	beq	.L203
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
.L203:
	cmp	lr, r2
	bne	.L205
	b	.L202
.L237:
	ldr	r3, .L239+112
	add	r0, r0, #64
	cmp	r0, r3
	bne	.L187
	mov	r3, #1
.L193:
	str	r3, [r4, #80]
	b	.L198
.L236:
	ldr	r2, .L239+116
	ldr	r3, .L239+120
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	goToPause
.L240:
	.align	2
.L239:
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
	ldr	r5, .L258
	ldr	r3, .L258+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L258+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L258+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L258+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L258+20
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
	ldr	r2, .L258+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L258+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L258+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L258+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L258+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L255
.L242:
	ldr	r3, .L258+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L256
.L243:
	ldr	r3, .L258+48
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L241
	ldr	r3, .L258+52
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L257
.L241:
	pop	{r4, r5, r6, lr}
	bx	lr
.L256:
	bl	goToPhaseThreeInstructions
	b	.L243
.L255:
	bl	goToLose
	b	.L242
.L257:
	ldr	r2, .L258+56
	ldr	r3, .L258+60
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	b	goToPause
.L259:
	.align	2
.L258:
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
	@ link register save eliminated.
	ldr	r3, .L262
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L263:
	.align	2
.L262:
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
	ldr	r2, .L266
	ldr	ip, .L266+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L266+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L266+12
	ldr	r4, .L266+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L266+20
	ldr	r3, .L266+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L266+28
	mov	r3, #15
	ldr	r2, .L266+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L266+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L267:
	.align	2
.L266:
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
	ldr	r5, .L277
	ldr	r3, .L277+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L277+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L277+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L277+16
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L277+20
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L277+24
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
	ldr	r2, .L277+28
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L277+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L277+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L277+40
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L277+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L277+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L275
	ldr	r3, .L277+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L276
.L268:
	pop	{r4, r5, r6, lr}
	bx	lr
.L275:
	bl	goToLose
	ldr	r3, .L277+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L268
.L276:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L278:
	.align	2
.L277:
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
	ldr	r3, .L289
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L289+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L288
	pop	{r4, lr}
	bx	lr
.L288:
	bl	goToSplashScreen
	ldr	r3, .L289+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L290:
	.align	2
.L289:
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
	ldr	r6, .L293
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L293+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L293+8
	ldr	r1, .L293+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L293+16
	mov	r3, #1024
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L293+20
	ldr	r1, .L293+24
	mov	lr, pc
	bx	r6
	mov	r2, #11
	ldr	r3, .L293+28
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L294:
	.align	2
.L293:
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
	ldr	r10, .L327
	ldrh	r3, [r10]
	tst	r3, #128
	bne	.L322
	ldr	r6, .L327+4
.L296:
	tst	r3, #64
	bne	.L326
.L299:
	ldr	r3, [r6, #88]
	ldr	r9, .L327+8
	cmp	r3, #0
	ldr	r7, .L327+12
	streq	r9, [r6, #88]
.L305:
	ldr	r3, .L327+16
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	mov	r5, #0
	ldrh	fp, [r3, #4]
	ldr	r8, .L327+20
.L301:
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
	bne	.L301
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
	beq	.L295
	ldr	r3, .L327+24
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L295
	ldr	r3, [r6, #84]
	cmp	r3, #0
	beq	.L304
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToGameInstructions
.L295:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L322:
	ldr	r2, .L327+24
	ldrh	r2, [r2]
	tst	r2, #128
	ldr	r6, .L327+4
	bne	.L296
	ldr	r2, [r6, #84]
	cmp	r2, #0
	bne	.L296
	ldr	r9, .L327+8
	mov	r2, r9
	ldr	r7, .L327+12
	add	r0, r9, #12
.L297:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L297
	mov	r3, #1
	mov	r2, #0
	str	r0, [r6, #88]
	str	r3, [r6, #84]
	str	r3, [r9, #24]
	str	r2, [r6, #92]
	b	.L305
.L326:
	ldr	r3, .L327+24
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L299
	ldr	r3, [r6, #84]
	cmp	r3, #0
	beq	.L299
	ldr	r2, .L327+28
	ldr	r7, .L327+12
	add	r0, r2, #12
.L300:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L300
	mov	r3, #0
	mov	r2, #1
	ldr	r9, .L327+8
	str	r3, [r6, #84]
	str	r3, [r6, #92]
	str	r2, [r9, #24]
	str	r9, [r6, #88]
	b	.L305
.L304:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToStart
.L328:
	.align	2
.L327:
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
	ldr	r3, .L355
	mov	lr, pc
	bx	r3
	ldr	r3, .L355+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L355+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L355+12
	ldr	r7, .L355+16
	ldr	r6, .L355+20
	ldr	fp, .L355+24
	ldr	r10, .L355+28
	ldr	r9, .L355+32
	ldr	r8, .L355+36
	ldr	r5, .L355+40
.L344:
	ldrh	r1, [r4]
	strh	r1, [r7]	@ movhi
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L330
.L332:
	.word	.L342
	.word	.L341
	.word	.L340
	.word	.L339
	.word	.L338
	.word	.L337
	.word	.L336
	.word	.L335
	.word	.L334
	.word	.L333
	.word	.L333
	.word	.L331
.L333:
	tst	r1, #8
	ldrne	r3, .L355+44
	movne	lr, pc
	bxne	r3
.L330:
	mov	lr, pc
	bx	r8
	b	.L344
.L334:
	ldr	r3, .L355+48
	mov	lr, pc
	bx	r3
	b	.L330
.L335:
	ldr	r3, .L355+52
	mov	lr, pc
	bx	r3
	b	.L330
.L336:
	tst	r1, #8
	beq	.L330
	tst	r3, #8
	bne	.L330
	ldr	r3, .L355+56
	mov	lr, pc
	bx	r3
	b	.L330
.L337:
	ldr	r3, .L355+60
	mov	lr, pc
	bx	r3
	b	.L330
.L341:
	mov	lr, pc
	bx	r10
	b	.L330
.L331:
	tst	r1, #8
	beq	.L330
	tst	r3, #8
	bne	.L330
	ldr	r3, .L355+64
	mov	lr, pc
	bx	r3
	b	.L330
.L342:
	mov	lr, pc
	bx	fp
	b	.L330
.L339:
	ldr	r3, .L355+68
	mov	lr, pc
	bx	r3
	b	.L330
.L340:
	mov	lr, pc
	bx	r9
	b	.L330
.L338:
	tst	r1, #8
	beq	.L330
	tst	r3, #8
	bne	.L330
	ldr	r3, .L355+72
	mov	lr, pc
	bx	r3
	b	.L330
.L356:
	.align	2
.L355:
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
	ldr	r3, .L362
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L362+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L363:
	.align	2
.L362:
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
	ldr	r2, .L366
	str	lr, [sp, #-4]!
	ldr	ip, .L366+4
	ldr	lr, .L366+8
	str	r3, [r2]
	ldr	r0, .L366+12
	ldr	r2, .L366+16
	ldr	r1, .L366+20
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
.L367:
	.align	2
.L366:
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
	.type	direction.4361, %object
	.size	direction.4361, 4
direction.4361:
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
	.type	hasPlayedPOAudio.4446, %object
	.size	hasPlayedPOAudio.4446, 4
hasPlayedPOAudio.4446:
	.space	4
	.type	tileAnimTimer.4451, %object
	.size	tileAnimTimer.4451, 4
tileAnimTimer.4451:
	.space	4
	.type	tileAnimState.4452, %object
	.size	tileAnimState.4452, 4
tileAnimState.4452:
	.space	4
	.type	swapDelayFrames.4475, %object
	.size	swapDelayFrames.4475, 4
swapDelayFrames.4475:
	.space	4
	.type	hasFlashedOnce.4476, %object
	.size	hasFlashedOnce.4476, 4
hasFlashedOnce.4476:
	.space	4
	.type	swapTimer.4473, %object
	.size	swapTimer.4473, 4
swapTimer.4473:
	.space	4
	.type	swapped.4474, %object
	.size	swapped.4474, 4
swapped.4474:
	.space	4
	.type	isFlashing.4450, %object
	.size	isFlashing.4450, 4
isFlashing.4450:
	.space	4
	.type	flashState.4447, %object
	.size	flashState.4447, 4
flashState.4447:
	.space	4
	.type	flashFrame.4449, %object
	.size	flashFrame.4449, 4
flashFrame.4449:
	.space	4
	.type	flashTimer.4448, %object
	.size	flashTimer.4448, 4
flashTimer.4448:
	.space	4
	.type	usingAltIndices.4364, %object
	.size	usingAltIndices.4364, 4
usingAltIndices.4364:
	.space	4
	.type	animatedIndices.4363, %object
	.size	animatedIndices.4363, 4
animatedIndices.4363:
	.space	4
	.type	t.4360, %object
	.size	t.4360, 4
t.4360:
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
