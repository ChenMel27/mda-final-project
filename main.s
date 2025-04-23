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
	.global	__aeabi_idiv
	.align	2
	.global	blendColor
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	blendColor, %function
blendColor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r0
	lsr	r4, r0, #5
	and	r4, r4, #31
	lsl	r0, r1, #22
	rsb	r0, r4, r0, lsr #27
	lsr	ip, r6, #10
	ldr	r9, .L4
	mov	r5, r1
	mul	r0, r2, r0
	mov	r1, r3
	mov	r8, r2
	mov	r7, r3
	and	r10, ip, #31
	mov	lr, pc
	bx	r9
	lsl	r3, r5, #17
	add	r4, r0, r4
	rsb	r0, r10, r3, lsr #27
	mov	r1, r7
	mul	r0, r8, r0
	mov	lr, pc
	bx	r9
	and	r6, r6, #31
	add	ip, r0, r10
	and	r5, r5, #31
	sub	r5, r5, r6
	lsl	r4, r4, #5
	lsl	ip, ip, #10
	mov	r1, r7
	mul	r0, r8, r5
	and	ip, ip, #31744
	and	r4, r4, #992
	orr	r4, r4, ip
	mov	lr, pc
	bx	r9
	add	r0, r0, r6
	and	r0, r0, #31
	orr	r0, r4, r0
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	__aeabi_idiv
	.size	blendColor, .-blendColor
	.align	2
	.global	goToSplashScreen
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
	ldr	r2, .L14
	ldr	ip, .L14+4
	strh	r2, [r3]	@ movhi
	sub	sp, sp, #44
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L14+8
	mov	r0, #3
	ldr	r10, .L14+12
	str	lr, [ip]
	ldr	r9, .L14+16
	mov	lr, pc
	bx	r10
	ldr	r0, .L14+20
	mov	lr, pc
	bx	r9
	ldr	r3, .L14+24
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L14+28
	ldr	r3, .L14+32
	add	r8, sp, #4
	mov	lr, pc
	bx	r3
	mov	r2, r8
	ldr	r3, .L14+8
	add	r0, r3, #34
.L7:
	ldrh	r1, [r3], #2
	cmp	r3, r0
	strh	r1, [r2], #2	@ movhi
	bne	.L7
	mov	fp, #0
	ldr	r5, .L14+36
	ldr	r7, .L14+40
	sub	r5, r5, r8
	add	r6, r8, #34
.L9:
	mov	lr, pc
	bx	r7
	mov	r4, r8
.L8:
	ldrh	r0, [r4], #2
	mov	r3, #150
	mov	r2, fp
	mov	r1, #0
	bl	blendColor
	cmp	r4, r6
	strh	r0, [r5, r4]	@ movhi
	bne	.L8
	add	fp, fp, #1
	cmp	fp, #151
	bne	.L9
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r7
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L14+44
	mov	r0, #3
	mov	lr, pc
	bx	r10
	ldr	r0, .L14+48
	mov	lr, pc
	bx	r9
	mov	r3, #0
	ldr	r2, .L14+52
	ldr	r4, .L14+56
	str	r3, [r2]
	ldr	lr, .L14+60
	ldr	r2, .L14+64
	ldr	ip, .L14+68
	ldr	r0, .L14+72
	ldr	r1, .L14+76
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
.L15:
	.align	2
.L14:
	.word	1028
	.word	videoBuffer
	.word	splashp1Pal
	.word	DMANow
	.word	drawFullscreenImage4
	.word	splashp1Bitmap
	.word	splashSound_length
	.word	splashSound_data
	.word	playSoundA
	.word	83886078
	.word	waitForVBlank
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
	ldr	r3, .L18
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToSplashScreen
.L19:
	.align	2
.L18:
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
	push	{r4, r5, lr}
	mov	r3, #4608
	mov	r5, #67108864
	mov	r2, #0
	ldr	r4, .L36
	strh	r3, [r5]	@ movhi
	sub	sp, sp, #20
	ldr	r3, .L36+4
	str	r2, [r4, #20]
	mov	lr, pc
	bx	r3
	mov	r2, #53760
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r5, .L36+8
	mov	r2, #83886080
	ldr	r1, .L36+12
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L36+16
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L36+20
	ldr	r1, .L36+24
	mov	lr, pc
	bx	r5
	mov	r5, #27
	mov	lr, #364
.L27:
	mov	r1, #57
	asr	ip, r5, #5
	add	ip, ip, #9
	and	r0, r5, #31
	lsl	ip, ip, #1
	lsl	r0, r0, #5
.L28:
	add	r2, ip, r1, asr #5
	and	r3, r1, #31
	lsl	r2, r2, #11
	add	r3, r3, r0
	add	r1, r1, #1
	add	r2, r2, #100663296
	lsl	r3, r3, #1
	cmp	r1, #67
	strh	lr, [r2, r3]	@ movhi
	bne	.L28
	add	r5, r5, #1
	cmp	r5, #37
	bne	.L27
	mov	ip, sp
	ldr	r3, .L36+28
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	ldr	lr, .L36+32
	add	r5, sp, #16
.L30:
	mov	r1, lr
	ldr	r3, [ip], #4
	lsl	r3, r3, #4
	add	r0, r3, #16
.L31:
	lsl	r2, r3, #1
	add	r2, r2, #100663296
	ldrh	r2, [r2]
	add	r3, r3, #1
	cmp	r0, r3
	strh	r2, [r1, #2]!	@ movhi
	bne	.L31
	cmp	r5, ip
	add	lr, lr, #32
	bne	.L30
	ldr	r3, .L36+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+40
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #96
	ldr	r1, .L36+44
	str	r3, [r4]
	mov	r2, #1
	ldr	r1, [r1]
	ldr	r0, .L36+48
	ldr	r3, .L36+52
	str	ip, [r4, #4]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L36+56
	strb	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L37:
	.align	2
.L36:
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
	ldr	r4, .L40
	strh	r3, [r2]	@ movhi
	ldr	r6, .L40+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L40+8
	str	r5, [r4, #20]
	mov	lr, pc
	bx	r6
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L40+12
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r2, .L40+16
	ldr	r1, .L40+20
	mov	r3, #4096
	mov	lr, pc
	bx	r6
	ldr	r3, .L40+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+28
	mov	lr, pc
	bx	r3
	mov	r3, #96
	mov	r6, #1
	mov	lr, #436
	ldr	r2, .L40+32
	ldr	r1, .L40+36
	ldr	ip, .L40+40
	str	r5, [r2]
	str	r3, [r4, #4]
	mov	r2, r5
	ldr	r3, .L40+44
	ldr	r1, [r1]
	ldr	r0, .L40+48
	str	r5, [r4]
	str	r6, [r4, #8]
	str	lr, [ip, #16]
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+52
	strb	r6, [r3]
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
	ldr	r4, .L44
	strh	r3, [r2]	@ movhi
	ldr	r5, .L44+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L44+8
	str	r6, [r4, #20]
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L44+12
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L44+16
	ldr	r1, .L44+20
	mov	r3, #4096
	mov	lr, pc
	bx	r5
	mov	r5, #96
	ldr	r3, .L44+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L44+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L44+32
	ldr	lr, [r4, #24]
	ldr	r3, .L44+36
	ldr	ip, [r4, #28]
	str	r6, [r4]
	str	r5, [r4, #4]
	ldr	r1, [r2]
	ldr	r4, .L44+40
	mov	r2, #1
	ldr	r0, .L44+44
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L44+48
	strb	r2, [r3]
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
	ldr	r6, .L48
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L48+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L48+8
	ldr	r1, .L48+12
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L48+16
	ldr	r1, .L48+20
	mov	lr, pc
	bx	r6
	ldr	r3, .L48+24
	ldr	r2, .L48+28
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L48+32
	ldr	r1, .L48+36
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L48+40
	ldr	r1, .L48+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #2
	ldr	r1, .L48+48
	ldr	r3, .L48+52
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #16]
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L49:
	.align	2
.L48:
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
	ldr	r3, .L71
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, r5, r6, lr}
	bne	.L68
	ldr	r4, .L71+4
.L51:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	bne	.L52
	pop	{r4, r5, r6, lr}
	bx	lr
.L68:
	ldr	r3, .L71+8
	ldrh	r3, [r3]
	tst	r3, #8
	ldr	r4, .L71+4
	bne	.L51
	ldr	r3, [r4, #16]
	add	r2, r3, #1
	str	r2, [r4, #16]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L51
.L53:
	.word	.L60
	.word	.L59
	.word	.L58
	.word	.L57
	.word	.L56
	.word	.L55
	.word	.L54
	.word	.L52
.L52:
	mov	r3, #0
	str	r3, [r4, #12]
	bl	goToStartTwo
	mov	r2, #1
	ldr	r3, .L71+12
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L54:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L71+16
	ldr	r1, .L71+20
	ldr	r5, .L71+24
	mov	lr, pc
	bx	r5
	b	.L51
.L60:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L71+16
	ldr	r1, .L71+28
	ldr	r5, .L71+24
	mov	lr, pc
	bx	r5
	b	.L51
.L59:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L71+16
	ldr	r1, .L71+32
	ldr	r5, .L71+24
	mov	lr, pc
	bx	r5
	b	.L51
.L58:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L71+16
	ldr	r1, .L71+36
	ldr	r5, .L71+24
	mov	lr, pc
	bx	r5
	b	.L51
.L57:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L71+16
	ldr	r1, .L71+40
	ldr	r5, .L71+24
	mov	lr, pc
	bx	r5
	b	.L51
.L56:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L71+16
	ldr	r1, .L71+44
	ldr	r5, .L71+24
	mov	lr, pc
	bx	r5
	b	.L51
.L55:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L71+16
	ldr	r1, .L71+48
	ldr	r5, .L71+24
	mov	lr, pc
	bx	r5
	b	.L51
.L72:
	.align	2
.L71:
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
	ldr	r5, .L77+36
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L77+40
	ldr	r1, .L77+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L77+48
	ldr	r1, .L77+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L76
.L74:
	mov	r1, #3
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L77+56
	strb	r1, [r2]
	str	r3, [r5, #20]
	str	r3, [r5]
	str	r0, [r5, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L76:
	ldr	r3, .L77+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L77+64
	mov	lr, pc
	bx	r3
	b	.L74
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #256
	mov	r4, #67108864
	mov	r6, #0
	ldr	r8, .L113
	ldr	r7, .L113+4
	ldr	r5, .L113+8
	strh	r6, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L113+12
	mov	lr, pc
	bx	r5
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L113+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L113+20
	mov	r0, #3
	ldr	r1, .L113+24
	mov	lr, pc
	bx	r5
	mov	r2, #8
	ldr	r3, .L113+28
	strh	r6, [r4, #16]	@ movhi
	strh	r6, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L114:
	.align	2
.L113:
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
	ldr	r4, .L135
	sub	sp, sp, #12
	mov	r0, r4
	add	r1, r4, #4
	ldr	r3, .L135+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L135+8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #4]
	ldrh	r2, [r4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L135+12
	mov	lr, pc
	bx	r2
	ldr	r3, .L135+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L135+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L135+24
	mov	lr, pc
	bx	r5
	ldr	r3, .L135+28
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L131
.L116:
	ldr	r3, .L135+32
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L132
.L117:
	ldr	ip, .L135+36
	ldr	r3, [ip]
	add	r3, r3, #1
	cmp	r3, #15
	strle	r3, [ip]
	bgt	.L133
.L119:
	ldr	r3, .L135+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L115
	ldr	r3, .L135+44
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L134
.L115:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L132:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L117
	ldr	r3, .L135+48
	mov	lr, pc
	bx	r3
	bl	goToPhaseOne
	b	.L117
.L133:
	ldr	r6, .L135+52
	ldr	r3, [r6]
	mov	lr, #0
	rsbs	r3, r3, #1
	movcc	r3, #0
	ldr	r5, .L135+56
	ldr	r7, .L135+60
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
	b	.L119
.L131:
	bl	goToStartInstructions
	b	.L116
.L134:
	ldr	r3, .L135+64
	ldr	r2, .L135+68
	ldr	ip, [r3, #16]
	ldr	r0, [r3, #20]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L135+72
	ldr	r3, .L135+48
	str	ip, [r4, #24]
	str	r0, [r4, #28]
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToPause
.L136:
	.align	2
.L135:
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
	ldr	r3, .L139
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L139+4
	ldr	r3, .L139+8
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	goToPause
.L140:
	.align	2
.L139:
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
	ldr	r3, .L159
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L159+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r4, .L159+8
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r2, .L159+12
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
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldr	r3, .L159+16
	strb	r2, [r3]
	pop	{r4, lr}
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
.L160:
	.align	2
.L159:
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
	ldr	r2, .L163
	ldr	ip, .L163+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L163+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L163+12
	ldr	r4, .L163+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L163+20
	ldr	r3, .L163+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L163+28
	mov	r3, #15
	ldr	r2, .L163+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L163+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L164:
	.align	2
.L163:
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
	ldr	r5, .L178
	ldr	r3, .L178+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L178+8
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L178+12
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L178+16
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
	ldr	r2, .L178+20
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L178+24
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L178+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L178+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L176
	ldr	r3, .L178+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L177
.L167:
	ldr	r3, .L178+40
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseOne.part.0
.L165:
	pop	{r4, r5, r6, lr}
	bx	lr
.L176:
	bl	goToLose
	ldr	r3, .L178+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L167
.L177:
	bl	goToPhaseTwoInstructions
	b	.L167
.L179:
	.align	2
.L178:
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
	ldr	r5, .L193
	ldr	r3, .L193+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L193+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L193+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L193+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L193+20
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
	ldr	r2, .L193+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L193+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L193+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L193+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L193+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L191
	ldr	r3, .L193+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L192
.L182:
	ldr	r3, .L193+48
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseTwo.part.0
.L180:
	pop	{r4, r5, r6, lr}
	bx	lr
.L191:
	bl	goToLose
	ldr	r3, .L193+44
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L182
.L192:
	bl	goToPhaseThreeInstructions
	b	.L182
.L194:
	.align	2
.L193:
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
	ldr	r3, .L197
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L198:
	.align	2
.L197:
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
	ldr	r2, .L201
	ldr	ip, .L201+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L201+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L201+12
	ldr	r4, .L201+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L201+20
	ldr	r3, .L201+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L201+28
	mov	r3, #15
	ldr	r2, .L201+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L201+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L202:
	.align	2
.L201:
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
	ldr	r3, .L212+16
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L212+20
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L212+24
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
	ldr	r2, .L212+28
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L212+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L212+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L212+40
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L212+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L212+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L210
	ldr	r3, .L212+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L211
.L203:
	pop	{r4, r5, r6, lr}
	bx	lr
.L210:
	bl	goToLose
	ldr	r3, .L212+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L203
.L211:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L213:
	.align	2
.L212:
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
	ldr	r3, .L224
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L224+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L223
	pop	{r4, lr}
	bx	lr
.L223:
	bl	goToSplashScreen
	ldr	r3, .L224+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L225:
	.align	2
.L224:
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
	ldr	r6, .L228
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L228+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L228+8
	ldr	r1, .L228+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L228+16
	mov	r3, #1024
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L228+20
	ldr	r1, .L228+24
	mov	lr, pc
	bx	r6
	mov	r2, #11
	ldr	r3, .L228+28
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L229:
	.align	2
.L228:
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
	ldr	r3, .L262
	ldrh	r3, [r3]
	tst	r3, #128
	bne	.L257
	ldr	r8, .L262+4
.L231:
	tst	r3, #64
	bne	.L261
.L234:
	ldr	r3, [r8, #36]
	ldr	r10, .L262+8
	cmp	r3, #0
	ldr	r9, .L262+12
	streq	r10, [r8, #36]
.L240:
	ldr	r3, .L262+16
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	ldr	r7, [r8, #36]
	ldrh	fp, [r3, #4]
	ldr	r6, [r8, #40]
	sub	r5, r7, #4
	add	r7, r7, #8
.L236:
	ldr	r4, [r5, #4]!
	lsl	r4, r4, #1
	ldrh	r0, [r9, r4]
	mov	r3, #20
	mov	r2, r6
	mov	r1, fp
	bl	blendColor
	add	r4, r4, #83886080
	cmp	r7, r5
	strh	r0, [r4]	@ movhi
	bne	.L236
	ldr	r3, [r10, #24]
	add	r6, r6, r3
	sub	r2, r6, #1
	cmp	r2, #18
	rsbhi	r3, r3, #0
	strhi	r3, [r10, #24]
	ldr	r3, .L262
	ldrh	r3, [r3]
	tst	r3, #8
	str	r6, [r8, #40]
	beq	.L230
	ldr	r3, .L262+20
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L230
	ldr	r3, [r8, #32]
	cmp	r3, #0
	beq	.L239
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToGameInstructions
.L230:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L257:
	ldr	r2, .L262+20
	ldrh	r2, [r2]
	tst	r2, #128
	ldr	r8, .L262+4
	bne	.L231
	ldr	r2, [r8, #32]
	cmp	r2, #0
	bne	.L231
	ldr	r10, .L262+8
	mov	r2, r10
	ldr	r9, .L262+12
	add	r0, r10, #12
.L232:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r9, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L232
	mov	r3, #1
	mov	r2, #0
	str	r0, [r8, #36]
	str	r3, [r8, #32]
	str	r3, [r10, #24]
	str	r2, [r8, #40]
	b	.L240
.L261:
	ldr	r3, .L262+20
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L234
	ldr	r3, [r8, #32]
	cmp	r3, #0
	beq	.L234
	ldr	r2, .L262+24
	ldr	r9, .L262+12
	add	r0, r2, #12
.L235:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r9, r3]
	cmp	r2, r0
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L235
	mov	r3, #0
	mov	r2, #1
	ldr	r10, .L262+8
	str	r3, [r8, #32]
	str	r3, [r8, #40]
	str	r2, [r10, #24]
	str	r10, [r8, #36]
	b	.L240
.L239:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToStart
.L263:
	.align	2
.L262:
	.word	oldButtons
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	splashp3Pal
	.word	waitForVBlank
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
	ldr	r3, .L290
	mov	lr, pc
	bx	r3
	ldr	r3, .L290+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L290+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L290+12
	ldr	r7, .L290+16
	ldr	r6, .L290+20
	ldr	fp, .L290+24
	ldr	r10, .L290+28
	ldr	r9, .L290+32
	ldr	r8, .L290+36
	ldr	r5, .L290+40
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
	ldrne	r3, .L290+44
	movne	lr, pc
	bxne	r3
.L265:
	mov	lr, pc
	bx	r8
	b	.L279
.L269:
	ldr	r3, .L290+48
	mov	lr, pc
	bx	r3
	b	.L265
.L270:
	ldr	r3, .L290+52
	mov	lr, pc
	bx	r3
	b	.L265
.L271:
	tst	r1, #8
	beq	.L265
	tst	r3, #8
	bne	.L265
	ldr	r3, .L290+56
	mov	lr, pc
	bx	r3
	b	.L265
.L272:
	ldr	r3, .L290+60
	mov	lr, pc
	bx	r3
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
	ldr	r3, .L290+64
	mov	lr, pc
	bx	r3
	b	.L265
.L277:
	mov	lr, pc
	bx	fp
	b	.L265
.L274:
	ldr	r3, .L290+68
	mov	lr, pc
	bx	r3
	b	.L265
.L275:
	mov	lr, pc
	bx	r9
	b	.L265
.L273:
	tst	r1, #8
	beq	.L265
	tst	r3, #8
	bne	.L265
	ldr	r3, .L290+72
	mov	lr, pc
	bx	r3
	b	.L265
.L291:
	.align	2
.L290:
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
	ldr	r3, .L297
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L297+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L298:
	.align	2
.L297:
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
	ldr	r2, .L301
	str	lr, [sp, #-4]!
	ldr	ip, .L301+4
	ldr	lr, .L301+8
	str	r3, [r2]
	ldr	r0, .L301+12
	ldr	r2, .L301+16
	ldr	r1, .L301+20
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
.L302:
	.align	2
.L301:
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
	.type	direction.4357, %object
	.size	direction.4357, 4
direction.4357:
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
	.type	usingAltIndices.4360, %object
	.size	usingAltIndices.4360, 4
usingAltIndices.4360:
	.space	4
	.type	animatedIndices.4359, %object
	.size	animatedIndices.4359, 4
animatedIndices.4359:
	.space	4
	.type	t.4356, %object
	.size	t.4356, 4
t.4356:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
