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
	ldr	r4, .L44
	strh	r3, [r2]	@ movhi
	ldr	r6, .L44+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L44+8
	str	r5, [r4, #20]
	mov	lr, pc
	bx	r6
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L44+12
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r2, .L44+16
	ldr	r1, .L44+20
	mov	r3, #4096
	mov	lr, pc
	bx	r6
	ldr	r3, .L44+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L44+28
	mov	lr, pc
	bx	r3
	mov	r6, #1
	mov	r0, #96
	mov	lr, #170
	ldr	r2, .L44+32
	ldr	r1, .L44+36
	ldr	r3, .L44+40
	ldr	ip, .L44+44
	str	r5, [r4]
	str	r5, [r2]
	str	r0, [r4, #4]
	str	r6, [r4, #8]
	mov	r2, r5
	ldr	r4, .L44+48
	ldr	r1, [r1]
	ldr	r0, .L44+52
	str	lr, [r3, #20]
	str	ip, [r3, #16]
	mov	lr, pc
	bx	r4
	ldr	r3, .L44+56
	strb	r6, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L45:
	.align	2
.L44:
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
	ldr	r4, .L48
	strh	r3, [r2]	@ movhi
	ldr	r5, .L48+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L48+8
	str	r6, [r4, #20]
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L48+12
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L48+16
	ldr	r1, .L48+20
	mov	r3, #4096
	mov	lr, pc
	bx	r5
	mov	r5, #96
	ldr	r3, .L48+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L48+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L48+32
	ldr	lr, [r4, #24]
	ldr	r3, .L48+36
	ldr	ip, [r4, #28]
	str	r6, [r4]
	str	r5, [r4, #4]
	ldr	r1, [r2]
	ldr	r4, .L48+40
	mov	r2, #1
	ldr	r0, .L48+44
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L48+48
	strb	r2, [r3]
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
	ldr	r6, .L52
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L52+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L52+8
	ldr	r1, .L52+12
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L52+16
	ldr	r1, .L52+20
	mov	lr, pc
	bx	r6
	ldr	r3, .L52+24
	ldr	r2, .L52+28
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L52+32
	ldr	r1, .L52+36
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L52+40
	ldr	r1, .L52+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #2
	ldr	r1, .L52+48
	ldr	r3, .L52+52
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #16]
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L53:
	.align	2
.L52:
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
	ldr	r3, .L75
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, r5, r6, lr}
	bne	.L72
	ldr	r4, .L75+4
.L55:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	bne	.L56
	pop	{r4, r5, r6, lr}
	bx	lr
.L72:
	ldr	r3, .L75+8
	ldrh	r3, [r3]
	tst	r3, #8
	ldr	r4, .L75+4
	bne	.L55
	ldr	r3, [r4, #16]
	add	r2, r3, #1
	str	r2, [r4, #16]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L55
.L57:
	.word	.L64
	.word	.L63
	.word	.L62
	.word	.L61
	.word	.L60
	.word	.L59
	.word	.L58
	.word	.L56
.L56:
	mov	r3, #0
	str	r3, [r4, #12]
	bl	goToStartTwo
	mov	r2, #1
	ldr	r3, .L75+12
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L58:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L75+16
	ldr	r1, .L75+20
	ldr	r5, .L75+24
	mov	lr, pc
	bx	r5
	b	.L55
.L64:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L75+16
	ldr	r1, .L75+28
	ldr	r5, .L75+24
	mov	lr, pc
	bx	r5
	b	.L55
.L63:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L75+16
	ldr	r1, .L75+32
	ldr	r5, .L75+24
	mov	lr, pc
	bx	r5
	b	.L55
.L62:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L75+16
	ldr	r1, .L75+36
	ldr	r5, .L75+24
	mov	lr, pc
	bx	r5
	b	.L55
.L61:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L75+16
	ldr	r1, .L75+40
	ldr	r5, .L75+24
	mov	lr, pc
	bx	r5
	b	.L55
.L60:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L75+16
	ldr	r1, .L75+44
	ldr	r5, .L75+24
	mov	lr, pc
	bx	r5
	b	.L55
.L59:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L75+16
	ldr	r1, .L75+48
	ldr	r5, .L75+24
	mov	lr, pc
	bx	r5
	b	.L55
.L76:
	.align	2
.L75:
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
	ldr	ip, .L81
	ldr	r2, .L81+4
	ldr	r1, .L81+8
	strh	lr, [r0]	@ movhi
	ldr	r4, .L81+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L81+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L81+20
	ldr	r1, .L81+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L81+28
	ldr	r1, .L81+32
	mov	lr, pc
	bx	r4
	ldr	r5, .L81+36
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L81+40
	ldr	r1, .L81+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L81+48
	ldr	r1, .L81+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L80
.L78:
	mov	r1, #3
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L81+56
	strb	r1, [r2]
	str	r3, [r5, #20]
	str	r3, [r5]
	str	r0, [r5, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L80:
	ldr	r3, .L81+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+64
	mov	lr, pc
	bx	r3
	b	.L78
.L82:
	.align	2
.L81:
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
	ldr	r3, .L85
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToPhaseOne
.L86:
	.align	2
.L85:
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
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L163
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L163+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r4, .L163+8
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r2, .L163+12
	sub	r3, r3, #1
	str	r1, [r2, #20]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L147
.L149:
	.word	.L154
	.word	.L153
	.word	.L152
	.word	.L151
	.word	.L150
	.word	.L148
.L148:
	bl	goToPhaseThreeInstructions
.L155:
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldr	r3, .L163+16
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L154:
	bl	goToStartThree
	b	.L155
.L153:
	bl	goToStartInstructions
	b	.L155
.L152:
	bl	goToPhaseOne
	b	.L155
.L151:
	bl	goToPhaseTwoInstructions
	b	.L155
.L150:
	bl	goToPhaseTwo
	b	.L155
.L147:
	bl	goToStart
	b	.L155
.L164:
	.align	2
.L163:
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
	ldr	r2, .L167
	ldr	ip, .L167+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L167+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L167+12
	ldr	r4, .L167+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L167+20
	ldr	r3, .L167+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L167+28
	mov	r3, #15
	ldr	r2, .L167+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L167+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L168:
	.align	2
.L167:
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
	ldr	r4, .L193
	ldr	r3, .L193+4
	mov	r0, r4
	add	r1, r4, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L193+8
	mov	lr, pc
	bx	r3
	mov	lr, #67108864
	ldm	r4, {r0, r1}
	ldr	ip, [r4, #32]
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
	strle	ip, [r4, #32]
	ble	.L175
	mov	r2, #0
	ldr	r3, [r4, #36]
	sub	r1, r3, r2
	rsbs	r3, r1, #0
	adc	r3, r3, r1
	str	r2, [r4, #32]
	str	r3, [r4, #36]
	ldr	r0, .L193+12
	ldr	lr, .L193+16
	ldr	ip, .L193+20
	ldr	r4, .L193+24
.L171:
	sub	r2, r0, #64
.L174:
	ldrh	r3, [r2]
	and	r1, r3, lr
	cmp	r1, #231
	and	r3, r3, ip
	orreq	r3, r3, #255
	strheq	r3, [r2]	@ movhi
	beq	.L173
	cmp	r1, #255
	orreq	r3, r3, #231
	strheq	r3, [r2]	@ movhi
.L173:
	add	r2, r2, #2
	cmp	r0, r2
	bne	.L174
	add	r0, r0, #64
	cmp	r0, r4
	bne	.L171
.L175:
	mov	r5, #512
	ldr	r3, .L193+28
	ldrb	r2, [r3, #56]	@ zero_extendqisi2
	ldr	r4, .L193+32
	lsl	r2, r2, #3
	strh	r5, [r4, r2]	@ movhi
	ldr	r3, .L193+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L193+40
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r1, r4
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L193+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L193+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L190
.L176:
	ldr	r3, .L193+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L191
.L177:
	ldr	r3, .L193+56
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L169
	ldr	r3, .L193+60
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L192
.L169:
	pop	{r4, r5, r6, lr}
	bx	lr
.L191:
	bl	goToPhaseTwoInstructions
	b	.L177
.L190:
	bl	goToLose
	b	.L176
.L192:
	ldr	r2, .L193+64
	ldr	r3, .L193+68
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	b	goToPause
.L194:
	.align	2
.L193:
	.word	.LANCHOR0
	.word	updatePlayer
	.word	updateHealth
	.word	100718656
	.word	1023
	.word	-1024
	.word	100720704
	.word	guide
	.word	shadowOAM
	.word	drawPlayer
	.word	drawHealth
	.word	DMANow
	.word	gameOver
	.word	winPhaseOne
	.word	oldButtons
	.word	buttons
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
	ldr	r5, .L212
	ldr	r3, .L212+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L212+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L212+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L212+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L212+20
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
	ldr	r2, .L212+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L212+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L212+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L212+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L212+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L209
.L196:
	ldr	r3, .L212+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L210
.L197:
	ldr	r3, .L212+48
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L195
	ldr	r3, .L212+52
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L211
.L195:
	pop	{r4, r5, r6, lr}
	bx	lr
.L210:
	bl	goToPhaseThreeInstructions
	b	.L197
.L209:
	bl	goToLose
	b	.L196
.L211:
	ldr	r2, .L212+56
	ldr	r3, .L212+60
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	b	goToPause
.L213:
	.align	2
.L212:
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
	ldr	r3, .L216
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L217:
	.align	2
.L216:
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
	ldr	r2, .L220
	ldr	ip, .L220+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L220+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L220+12
	ldr	r4, .L220+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L220+20
	ldr	r3, .L220+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L220+28
	mov	r3, #15
	ldr	r2, .L220+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L220+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L221:
	.align	2
.L220:
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
	ldr	r5, .L231
	ldr	r3, .L231+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L231+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L231+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L231+16
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L231+20
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L231+24
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
	ldr	r2, .L231+28
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L231+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L231+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L231+40
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L231+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L231+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L229
	ldr	r3, .L231+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L230
.L222:
	pop	{r4, r5, r6, lr}
	bx	lr
.L229:
	bl	goToLose
	ldr	r3, .L231+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L222
.L230:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L232:
	.align	2
.L231:
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
	ldr	r3, .L243
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L243+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L242
	pop	{r4, lr}
	bx	lr
.L242:
	bl	goToSplashScreen
	ldr	r3, .L243+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L244:
	.align	2
.L243:
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
	ldr	r6, .L247
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L247+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L247+8
	ldr	r1, .L247+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L247+16
	mov	r3, #1024
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L247+20
	ldr	r1, .L247+24
	mov	lr, pc
	bx	r6
	mov	r2, #11
	ldr	r3, .L247+28
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L248:
	.align	2
.L247:
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
	ldr	r10, .L281
	ldrh	r3, [r10]
	tst	r3, #128
	bne	.L276
	ldr	r6, .L281+4
.L250:
	tst	r3, #64
	bne	.L280
.L253:
	ldr	r3, [r6, #44]
	ldr	r9, .L281+8
	cmp	r3, #0
	ldr	r7, .L281+12
	streq	r9, [r6, #44]
.L259:
	ldr	r3, .L281+16
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	mov	r5, #0
	ldrh	fp, [r3, #4]
	ldr	r8, .L281+20
.L255:
	ldr	r3, [r6, #44]
	ldr	r4, [r3, r5]
	lsl	r4, r4, #1
	ldrh	r0, [r7, r4]
	mov	r3, #30
	mov	r1, fp
	ldr	r2, [r6, #48]
	mov	lr, pc
	bx	r8
	add	r5, r5, #4
	add	r4, r4, #83886080
	cmp	r5, #12
	strh	r0, [r4]	@ movhi
	bne	.L255
	ldr	r2, [r9, #24]
	ldr	r3, [r6, #48]
	add	r3, r2, r3
	sub	r1, r3, #1
	cmp	r1, #28
	str	r3, [r6, #48]
	ldrh	r3, [r10]
	rsbhi	r2, r2, #0
	strhi	r2, [r9, #24]
	tst	r3, #8
	beq	.L249
	ldr	r3, .L281+24
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L249
	ldr	r3, [r6, #40]
	cmp	r3, #0
	beq	.L258
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToGameInstructions
.L249:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L276:
	ldr	r2, .L281+24
	ldrh	r2, [r2]
	tst	r2, #128
	ldr	r6, .L281+4
	bne	.L250
	ldr	r2, [r6, #40]
	cmp	r2, #0
	bne	.L250
	ldr	r9, .L281+8
	mov	r2, r9
	ldr	r7, .L281+12
	add	r0, r9, #12
.L251:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L251
	mov	r3, #1
	mov	r2, #0
	str	r0, [r6, #44]
	str	r3, [r6, #40]
	str	r3, [r9, #24]
	str	r2, [r6, #48]
	b	.L259
.L280:
	ldr	r3, .L281+24
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L253
	ldr	r3, [r6, #40]
	cmp	r3, #0
	beq	.L253
	ldr	r2, .L281+28
	ldr	r7, .L281+12
	add	r0, r2, #12
.L254:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L254
	mov	r3, #0
	mov	r2, #1
	ldr	r9, .L281+8
	str	r3, [r6, #40]
	str	r3, [r6, #48]
	str	r2, [r9, #24]
	str	r9, [r6, #44]
	b	.L259
.L258:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToStart
.L282:
	.align	2
.L281:
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
	ldr	r3, .L309
	mov	lr, pc
	bx	r3
	ldr	r3, .L309+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L309+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L309+12
	ldr	r7, .L309+16
	ldr	r6, .L309+20
	ldr	fp, .L309+24
	ldr	r10, .L309+28
	ldr	r9, .L309+32
	ldr	r8, .L309+36
	ldr	r5, .L309+40
.L298:
	ldrh	r1, [r4]
	strh	r1, [r7]	@ movhi
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L284
.L286:
	.word	.L296
	.word	.L295
	.word	.L294
	.word	.L293
	.word	.L292
	.word	.L291
	.word	.L290
	.word	.L289
	.word	.L288
	.word	.L287
	.word	.L287
	.word	.L285
.L287:
	tst	r1, #8
	ldrne	r3, .L309+44
	movne	lr, pc
	bxne	r3
.L284:
	mov	lr, pc
	bx	r8
	b	.L298
.L288:
	ldr	r3, .L309+48
	mov	lr, pc
	bx	r3
	b	.L284
.L289:
	ldr	r3, .L309+52
	mov	lr, pc
	bx	r3
	b	.L284
.L290:
	tst	r1, #8
	beq	.L284
	tst	r3, #8
	bne	.L284
	ldr	r3, .L309+56
	mov	lr, pc
	bx	r3
	b	.L284
.L291:
	ldr	r3, .L309+60
	mov	lr, pc
	bx	r3
	b	.L284
.L295:
	mov	lr, pc
	bx	r10
	b	.L284
.L285:
	tst	r1, #8
	beq	.L284
	tst	r3, #8
	bne	.L284
	ldr	r3, .L309+64
	mov	lr, pc
	bx	r3
	b	.L284
.L296:
	mov	lr, pc
	bx	fp
	b	.L284
.L293:
	ldr	r3, .L309+68
	mov	lr, pc
	bx	r3
	b	.L284
.L294:
	mov	lr, pc
	bx	r9
	b	.L284
.L292:
	tst	r1, #8
	beq	.L284
	tst	r3, #8
	bne	.L284
	ldr	r3, .L309+72
	mov	lr, pc
	bx	r3
	b	.L284
.L310:
	.align	2
.L309:
	.word	mgba_open
	.word	setupSounds
	.word	goToPhaseOne
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
	ldr	r3, .L316
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L316+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L317:
	.align	2
.L316:
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
	ldr	r2, .L320
	str	lr, [sp, #-4]!
	ldr	ip, .L320+4
	ldr	lr, .L320+8
	str	r3, [r2]
	ldr	r0, .L320+12
	ldr	r2, .L320+16
	ldr	r1, .L320+20
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
.L321:
	.align	2
.L320:
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
	.type	tileAnimTimer.4432, %object
	.size	tileAnimTimer.4432, 4
tileAnimTimer.4432:
	.space	4
	.type	tileAnimState.4433, %object
	.size	tileAnimState.4433, 4
tileAnimState.4433:
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
