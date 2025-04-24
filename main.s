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
	ldr	r2, .L18
	ldr	ip, .L18+4
	strh	r2, [r3]	@ movhi
	sub	sp, sp, #44
	mov	r2, #83886080
	ldr	r1, .L18+8
	mov	r3, #256
	mov	r0, #3
	ldr	fp, .L18+12
	str	lr, [ip]
	mov	lr, pc
	bx	fp
	ldr	r0, .L18+16
	ldr	r3, .L18+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+24
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L18+28
	ldr	r3, .L18+32
	add	r9, sp, #4
	mov	lr, pc
	bx	r3
	mov	r2, r9
	ldr	r3, .L18+8
	add	r0, r3, #34
.L2:
	ldrh	r1, [r3], #2
	cmp	r3, r0
	strh	r1, [r2], #2	@ movhi
	bne	.L2
	mov	r10, #0
	ldr	r5, .L18+36
	ldr	r8, .L18+40
	ldr	r7, .L18+44
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
	ldr	r1, .L18+48
	mov	lr, pc
	bx	fp
	ldr	r0, .L18+52
	ldr	r3, .L18+20
	mov	lr, pc
	bx	r3
	mov	r4, #0
	mov	r5, #83886080
	ldr	r6, .L18+56
	ldr	r7, .L18+60
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
	ldr	r1, .L18+64
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	fp
	ldr	r0, .L18+68
	ldr	r3, .L18+20
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, .L18+72
	ldr	r4, .L18+76
	str	r3, [r2]
	ldr	lr, .L18+80
	ldr	r2, .L18+84
	ldr	ip, .L18+88
	ldr	r0, .L18+92
	ldr	r1, .L18+96
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
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose.part.0, %function
lose.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L24
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L23
	pop	{r4, lr}
	bx	lr
.L23:
	bl	goToSplashScreen
	ldr	r3, .L24+4
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L25:
	.align	2
.L24:
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
	ldr	r2, .L40
	ldr	r4, .L40+4
	str	r3, [r2]
	sub	sp, sp, #16
	strh	r1, [r5]	@ movhi
	ldr	r2, .L40+8
	str	r3, [r4, #20]
	mov	lr, pc
	bx	r2
	mov	r2, #53760
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r5, .L40+12
	mov	r2, #83886080
	ldr	r1, .L40+16
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L40+20
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L40+24
	ldr	r1, .L40+28
	mov	lr, pc
	bx	r5
	mov	ip, #120
	ldr	r6, .L40+32
	ldr	r5, .L40+36
	ldr	lr, .L40+40
.L27:
	mov	r0, r5
	mov	r1, r6
	sub	r3, ip, #4
.L28:
	lsl	r2, r3, #1
	ldrh	r2, [lr, r2]
	add	r3, r3, #1
	cmp	ip, r3
	strh	r2, [r1], #2	@ movhi
	strh	r2, [r0], #2	@ movhi
	bne	.L28
	add	ip, ip, #32
	cmp	ip, #248
	add	r6, r6, #8
	add	r5, r5, #8
	bne	.L27
	mov	r5, #27
	mov	lr, #364
.L29:
	mov	r1, #57
	asr	ip, r5, #5
	add	ip, ip, #9
	and	r0, r5, #31
	lsl	ip, ip, #1
	lsl	r0, r0, #5
.L30:
	add	r2, ip, r1, asr #5
	and	r3, r1, #31
	lsl	r2, r2, #11
	add	r3, r3, r0
	add	r1, r1, #1
	add	r2, r2, #100663296
	lsl	r3, r3, #1
	cmp	r1, #67
	strh	lr, [r2, r3]	@ movhi
	bne	.L30
	add	r5, r5, #1
	cmp	r5, #37
	bne	.L29
	mov	ip, sp
	ldr	r3, .L40+44
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	ldr	lr, .L40+48
	add	r5, sp, #16
.L32:
	mov	r1, lr
	ldr	r3, [ip], #4
	lsl	r3, r3, #4
	add	r0, r3, #16
.L33:
	lsl	r2, r3, #1
	add	r2, r2, #100663296
	ldrh	r2, [r2]
	add	r3, r3, #1
	cmp	r0, r3
	strh	r2, [r1, #2]!	@ movhi
	bne	.L33
	cmp	r5, ip
	add	lr, lr, #32
	bne	.L32
	ldr	r3, .L40+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+56
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #96
	ldr	r1, .L40+60
	str	r3, [r4]
	mov	r2, #1
	ldr	r1, [r1]
	ldr	r0, .L40+64
	ldr	r3, .L40+68
	str	ip, [r4, #4]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L40+72
	strb	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L41:
	.align	2
.L40:
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
	ldr	r3, .L44
	mov	lr, pc
	bx	r3
	ldr	r3, .L44+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L45:
	.align	2
.L44:
	.word	mgba_open
	.word	setupSounds
	.size	initialize, .-initialize
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
	push	{r4, r5, r6, lr}
	mov	r0, #67108864
	mov	lr, #0
	mov	r3, #5888
	ldr	ip, .L85
	ldr	r2, .L85+4
	ldr	r1, .L85+8
	strh	lr, [r0]	@ movhi
	ldr	r4, .L85+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L85+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L85+20
	ldr	r1, .L85+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L85+28
	ldr	r1, .L85+32
	mov	lr, pc
	bx	r4
	ldr	r5, .L85+36
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L85+40
	ldr	r1, .L85+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L85+48
	ldr	r1, .L85+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L84
.L82:
	mov	r1, #3
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L85+56
	strb	r1, [r2]
	str	r3, [r5, #20]
	str	r3, [r5]
	str	r0, [r5, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L84:
	ldr	r3, .L85+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+64
	mov	lr, pc
	bx	r3
	b	.L82
.L86:
	.align	2
.L85:
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
	ldr	r6, .L89
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L89+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L89+8
	ldr	r1, .L89+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L89+16
	ldr	r2, .L89+20
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L89+24
	ldr	r1, .L89+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L89+32
	mov	r0, #3
	ldr	r1, .L89+36
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r3, .L89+40
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L90:
	.align	2
.L89:
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
	ldr	ip, .L95
	ldr	r2, .L95+4
	ldr	r1, .L95+8
	strh	lr, [r0]	@ movhi
	ldr	r4, .L95+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L95+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L95+20
	ldr	r1, .L95+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L95+28
	ldr	r1, .L95+32
	mov	lr, pc
	bx	r4
	ldr	r5, .L95+36
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L95+40
	ldr	r1, .L95+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L95+48
	ldr	r1, .L95+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L94
.L92:
	mov	r1, #5
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L95+56
	strb	r1, [r2]
	str	r3, [r5, #20]
	str	r3, [r5]
	str	r0, [r5, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L94:
	ldr	r3, .L95+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L95+64
	mov	lr, pc
	bx	r3
	b	.L92
.L96:
	.align	2
.L95:
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
	ldr	r3, .L102
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L102+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseTwo
.L103:
	.align	2
.L102:
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
	ldr	r6, .L106
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L106+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L106+8
	ldr	r1, .L106+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L106+16
	ldr	r2, .L106+20
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L106+24
	ldr	r1, .L106+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L106+32
	mov	r0, #3
	ldr	r1, .L106+36
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r3, .L106+40
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L107:
	.align	2
.L106:
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
	ldr	ip, .L110
	ldr	r2, .L110+4
	ldr	r1, .L110+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L110+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L110+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L110+20
	ldr	r1, .L110+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L110+28
	ldr	r1, .L110+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L110+36
	ldr	r1, .L110+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L110+44
	ldr	r1, .L110+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L110+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L110+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L110+60
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L110+64
	ldr	r3, .L110+68
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L111:
	.align	2
.L110:
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
	ldr	r3, .L117
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L117+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseThree
.L118:
	.align	2
.L117:
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
	ldr	r8, .L121
	ldr	r7, .L121+4
	ldr	r5, .L121+8
	strh	r6, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L121+12
	mov	lr, pc
	bx	r5
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L121+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L121+20
	mov	r0, #3
	ldr	r1, .L121+24
	mov	lr, pc
	bx	r5
	mov	r2, #8
	ldr	r3, .L121+28
	strh	r6, [r4, #16]	@ movhi
	strh	r6, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L122:
	.align	2
.L121:
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
	ldr	r4, .L143
	sub	sp, sp, #12
	ldr	r3, .L143+4
	mov	lr, pc
	bx	r3
	mov	r0, r4
	add	r1, r4, #4
	ldr	r3, .L143+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L143+12
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #4]
	ldrh	r2, [r4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L143+16
	mov	lr, pc
	bx	r2
	ldr	r3, .L143+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L143+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L143+28
	mov	lr, pc
	bx	r5
	ldr	r3, .L143+32
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L139
.L124:
	ldr	r3, .L143+36
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L140
.L125:
	ldr	ip, .L143+40
	ldr	r3, [ip]
	add	r3, r3, #1
	cmp	r3, #15
	strle	r3, [ip]
	bgt	.L141
.L127:
	ldr	r3, .L143+44
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L123
	ldr	r3, .L143+48
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L142
.L123:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L140:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L125
	ldr	r3, .L143+52
	mov	lr, pc
	bx	r3
	bl	goToPhaseOne
	b	.L125
.L141:
	ldr	r6, .L143+56
	ldr	r3, [r6]
	mov	lr, #0
	rsbs	r3, r3, #1
	movcc	r3, #0
	ldr	r5, .L143+60
	ldr	r7, .L143+64
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
	b	.L127
.L139:
	bl	goToStartInstructions
	b	.L124
.L142:
	ldr	r3, .L143+68
	ldr	r2, .L143+72
	ldr	ip, [r3, #16]
	ldr	r0, [r3, #20]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L143+76
	ldr	r3, .L143+52
	str	ip, [r4, #24]
	str	r0, [r4, #28]
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToPause
.L144:
	.align	2
.L143:
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
	.syntax unified
	.arm
	.fpu softvfp
	.type	phaseOne.part.0, %function
phaseOne.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L147
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L147+4
	ldr	r3, .L147+8
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	goToPause
.L148:
	.align	2
.L147:
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
	ldr	r3, .L167
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L167+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r4, .L167+8
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r2, .L167+12
	sub	r3, r3, #1
	str	r1, [r2, #20]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L151
.L153:
	.word	.L158
	.word	.L157
	.word	.L156
	.word	.L155
	.word	.L154
	.word	.L152
.L152:
	bl	goToPhaseThreeInstructions
.L159:
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldr	r3, .L167+16
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L158:
	bl	goToStartThree
	b	.L159
.L157:
	bl	goToStartInstructions
	b	.L159
.L156:
	bl	goToPhaseOne
	b	.L159
.L155:
	bl	goToPhaseTwoInstructions
	b	.L159
.L154:
	bl	goToPhaseTwo
	b	.L159
.L151:
	bl	goToStart
	b	.L159
.L168:
	.align	2
.L167:
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
	ldr	r2, .L171
	ldr	ip, .L171+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L171+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L171+12
	ldr	r4, .L171+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L171+20
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L171+28
	mov	r3, #15
	ldr	r2, .L171+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L171+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L172:
	.align	2
.L171:
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
	ldr	r4, .L186
	ldr	r3, .L186+4
	mov	r0, r4
	add	r1, r4, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L186+8
	mov	lr, pc
	bx	r3
	mov	r5, #512
	mov	r2, #67108864
	ldr	r0, .L186+12
	ldrh	r1, [r4]
	ldrh	r3, [r4, #4]
	ldrb	r0, [r0, #56]	@ zero_extendqisi2
	lsl	lr, r1, #18
	ldr	r4, .L186+16
	lsl	ip, r3, #18
	lsr	lr, lr, #16
	lsr	ip, ip, #16
	lsl	r0, r0, #3
	strh	r1, [r2, #16]	@ movhi
	strh	r3, [r2, #18]	@ movhi
	strh	lr, [r2, #20]	@ movhi
	ldr	r3, .L186+20
	strh	ip, [r2, #22]	@ movhi
	strh	r5, [r4, r0]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L186+24
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r1, r4
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L186+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L186+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L184
	ldr	r3, .L186+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L185
.L175:
	ldr	r3, .L186+40
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseOne.part.0
.L173:
	pop	{r4, r5, r6, lr}
	bx	lr
.L184:
	bl	goToLose
	ldr	r3, .L186+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L175
.L185:
	bl	goToPhaseTwoInstructions
	b	.L175
.L187:
	.align	2
.L186:
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
	ldr	r5, .L201
	ldr	r3, .L201+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L201+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L201+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L201+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L201+20
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
	ldr	r2, .L201+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L201+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L201+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L201+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L201+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L199
	ldr	r3, .L201+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L200
.L190:
	ldr	r3, .L201+48
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseTwo.part.0
.L188:
	pop	{r4, r5, r6, lr}
	bx	lr
.L199:
	bl	goToLose
	ldr	r3, .L201+44
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L190
.L200:
	bl	goToPhaseThreeInstructions
	b	.L190
.L202:
	.align	2
.L201:
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
	ldr	r3, .L205
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L206:
	.align	2
.L205:
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
	ldr	r2, .L209
	ldr	ip, .L209+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L209+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L209+12
	ldr	r4, .L209+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L209+20
	ldr	r3, .L209+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L209+28
	mov	r3, #15
	ldr	r2, .L209+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L209+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L210:
	.align	2
.L209:
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
	ldr	r5, .L220
	ldr	r3, .L220+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L220+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L220+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L220+16
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L220+20
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L220+24
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
	ldr	r2, .L220+28
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L220+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L220+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L220+40
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L220+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L220+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L218
	ldr	r3, .L220+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L219
.L211:
	pop	{r4, r5, r6, lr}
	bx	lr
.L218:
	bl	goToLose
	ldr	r3, .L220+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L211
.L219:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L221:
	.align	2
.L220:
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
	ldr	r3, .L232
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L232+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L231
	pop	{r4, lr}
	bx	lr
.L231:
	bl	goToSplashScreen
	ldr	r3, .L232+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L233:
	.align	2
.L232:
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
	ldr	r6, .L236
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L236+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L236+8
	ldr	r1, .L236+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L236+16
	mov	r3, #1024
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L236+20
	ldr	r1, .L236+24
	mov	lr, pc
	bx	r6
	mov	r2, #11
	ldr	r3, .L236+28
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L237:
	.align	2
.L236:
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
	ldr	r10, .L270
	ldrh	r3, [r10]
	tst	r3, #128
	bne	.L265
	ldr	r6, .L270+4
.L239:
	tst	r3, #64
	bne	.L269
.L242:
	ldr	r3, [r6, #36]
	ldr	r9, .L270+8
	cmp	r3, #0
	ldr	r7, .L270+12
	streq	r9, [r6, #36]
.L248:
	ldr	r3, .L270+16
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	mov	r5, #0
	ldrh	fp, [r3, #4]
	ldr	r8, .L270+20
.L244:
	ldr	r3, [r6, #36]
	ldr	r4, [r3, r5]
	lsl	r4, r4, #1
	ldrh	r0, [r7, r4]
	mov	r3, #30
	mov	r1, fp
	ldr	r2, [r6, #40]
	mov	lr, pc
	bx	r8
	add	r5, r5, #4
	add	r4, r4, #83886080
	cmp	r5, #12
	strh	r0, [r4]	@ movhi
	bne	.L244
	ldr	r2, [r9, #24]
	ldr	r3, [r6, #40]
	add	r3, r2, r3
	sub	r1, r3, #1
	cmp	r1, #28
	str	r3, [r6, #40]
	ldrh	r3, [r10]
	rsbhi	r2, r2, #0
	strhi	r2, [r9, #24]
	tst	r3, #8
	beq	.L238
	ldr	r3, .L270+24
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L238
	ldr	r3, [r6, #32]
	cmp	r3, #0
	beq	.L247
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToGameInstructions
.L238:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L265:
	ldr	r2, .L270+24
	ldrh	r2, [r2]
	tst	r2, #128
	ldr	r6, .L270+4
	bne	.L239
	ldr	r2, [r6, #32]
	cmp	r2, #0
	bne	.L239
	ldr	r9, .L270+8
	mov	r2, r9
	ldr	r7, .L270+12
	add	r0, r9, #12
.L240:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L240
	mov	r3, #1
	mov	r2, #0
	str	r0, [r6, #36]
	str	r3, [r6, #32]
	str	r3, [r9, #24]
	str	r2, [r6, #40]
	b	.L248
.L269:
	ldr	r3, .L270+24
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L242
	ldr	r3, [r6, #32]
	cmp	r3, #0
	beq	.L242
	ldr	r2, .L270+28
	ldr	r7, .L270+12
	add	r0, r2, #12
.L243:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L243
	mov	r3, #0
	mov	r2, #1
	ldr	r9, .L270+8
	str	r3, [r6, #32]
	str	r3, [r6, #40]
	str	r2, [r9, #24]
	str	r9, [r6, #36]
	b	.L248
.L247:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToStart
.L271:
	.align	2
.L270:
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
	ldr	r3, .L298
	mov	lr, pc
	bx	r3
	ldr	r3, .L298+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L298+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L298+12
	ldr	r7, .L298+16
	ldr	r6, .L298+20
	ldr	fp, .L298+24
	ldr	r10, .L298+28
	ldr	r9, .L298+32
	ldr	r8, .L298+36
	ldr	r5, .L298+40
.L287:
	ldrh	r1, [r4]
	strh	r1, [r7]	@ movhi
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L273
.L275:
	.word	.L285
	.word	.L284
	.word	.L283
	.word	.L282
	.word	.L281
	.word	.L280
	.word	.L279
	.word	.L278
	.word	.L277
	.word	.L276
	.word	.L276
	.word	.L274
.L276:
	tst	r1, #8
	ldrne	r3, .L298+44
	movne	lr, pc
	bxne	r3
.L273:
	mov	lr, pc
	bx	r8
	b	.L287
.L277:
	ldr	r3, .L298+48
	mov	lr, pc
	bx	r3
	b	.L273
.L278:
	ldr	r3, .L298+52
	mov	lr, pc
	bx	r3
	b	.L273
.L279:
	tst	r1, #8
	beq	.L273
	tst	r3, #8
	bne	.L273
	ldr	r3, .L298+56
	mov	lr, pc
	bx	r3
	b	.L273
.L280:
	ldr	r3, .L298+60
	mov	lr, pc
	bx	r3
	b	.L273
.L284:
	mov	lr, pc
	bx	r10
	b	.L273
.L274:
	tst	r1, #8
	beq	.L273
	tst	r3, #8
	bne	.L273
	ldr	r3, .L298+8
	mov	lr, pc
	bx	r3
	b	.L273
.L285:
	mov	lr, pc
	bx	fp
	b	.L273
.L282:
	ldr	r3, .L298+64
	mov	lr, pc
	bx	r3
	b	.L273
.L283:
	mov	lr, pc
	bx	r9
	b	.L273
.L281:
	tst	r1, #8
	beq	.L273
	tst	r3, #8
	bne	.L273
	ldr	r3, .L298+68
	mov	lr, pc
	bx	r3
	b	.L273
.L299:
	.align	2
.L298:
	.word	mgba_open
	.word	setupSounds
	.word	goToStart
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
	ldr	r3, .L305
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L305+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L306:
	.align	2
.L305:
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
	ldr	r2, .L309
	str	lr, [sp, #-4]!
	ldr	ip, .L309+4
	ldr	lr, .L309+8
	str	r3, [r2]
	ldr	r0, .L309+12
	ldr	r2, .L309+16
	ldr	r1, .L309+20
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
.L310:
	.align	2
.L309:
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
	.type	direction.4358, %object
	.size	direction.4358, 4
direction.4358:
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
	.type	usingAltIndices.4361, %object
	.size	usingAltIndices.4361, 4
usingAltIndices.4361:
	.space	4
	.type	animatedIndices.4360, %object
	.size	animatedIndices.4360, 4
animatedIndices.4360:
	.space	4
	.type	t.4357, %object
	.size	t.4357, 4
t.4357:
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
