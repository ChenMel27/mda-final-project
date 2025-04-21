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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r3, #4608
	mov	r5, #67108864
	mov	r2, #0
	ldr	r4, .L26
	strh	r3, [r5]	@ movhi
	sub	sp, sp, #20
	ldr	r3, .L26+4
	str	r2, [r4, #20]
	mov	lr, pc
	bx	r3
	mov	r2, #53760
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r5, .L26+8
	mov	r2, #83886080
	ldr	r1, .L26+12
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L26+16
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L26+20
	ldr	r1, .L26+24
	mov	lr, pc
	bx	r5
	mov	r5, #27
	mov	lr, #364
.L17:
	mov	r1, #57
	asr	ip, r5, #5
	add	ip, ip, #9
	and	r0, r5, #31
	lsl	ip, ip, #1
	lsl	r0, r0, #5
.L18:
	add	r2, ip, r1, asr #5
	and	r3, r1, #31
	lsl	r2, r2, #11
	add	r3, r3, r0
	add	r1, r1, #1
	add	r2, r2, #100663296
	lsl	r3, r3, #1
	cmp	r1, #67
	strh	lr, [r2, r3]	@ movhi
	bne	.L18
	add	r5, r5, #1
	cmp	r5, #37
	bne	.L17
	mov	ip, sp
	ldr	r3, .L26+28
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	ldr	lr, .L26+32
	add	r5, sp, #16
.L20:
	mov	r1, lr
	ldr	r3, [ip], #4
	lsl	r3, r3, #4
	add	r0, r3, #16
.L21:
	lsl	r2, r3, #1
	add	r2, r2, #100663296
	ldrh	r2, [r2]
	add	r3, r3, #1
	cmp	r0, r3
	strh	r2, [r1, #2]!	@ movhi
	bne	.L21
	cmp	r5, ip
	add	lr, lr, #32
	bne	.L20
	ldr	r3, .L26+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L26+40
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #96
	ldr	r1, .L26+44
	str	r3, [r4]
	mov	r2, #1
	ldr	r1, [r1]
	ldr	r0, .L26+48
	ldr	r3, .L26+52
	str	ip, [r4, #4]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L26+56
	strb	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L27:
	.align	2
.L26:
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
	ldr	r4, .L30
	strh	r3, [r2]	@ movhi
	ldr	r6, .L30+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L30+8
	str	r5, [r4, #20]
	mov	lr, pc
	bx	r6
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L30+12
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r2, .L30+16
	ldr	r1, .L30+20
	mov	r3, #4096
	mov	lr, pc
	bx	r6
	ldr	r3, .L30+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+28
	mov	lr, pc
	bx	r3
	mov	r3, #96
	mov	r6, #1
	mov	lr, #436
	ldr	r2, .L30+32
	ldr	r1, .L30+36
	ldr	ip, .L30+40
	str	r5, [r2]
	str	r3, [r4, #4]
	mov	r2, r5
	ldr	r3, .L30+44
	ldr	r1, [r1]
	ldr	r0, .L30+48
	str	r5, [r4]
	str	r6, [r4, #8]
	str	lr, [ip, #16]
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+52
	strb	r6, [r3]
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
	ldr	r4, .L34
	strh	r3, [r2]	@ movhi
	ldr	r5, .L34+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L34+8
	str	r6, [r4, #20]
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L34+12
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L34+16
	ldr	r1, .L34+20
	mov	r3, #4096
	mov	lr, pc
	bx	r5
	mov	r5, #96
	ldr	r3, .L34+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L34+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L34+32
	ldr	lr, [r4, #28]
	ldr	r3, .L34+36
	ldr	ip, [r4, #32]
	str	r6, [r4]
	str	r5, [r4, #4]
	ldr	r1, [r2]
	ldr	r4, .L34+40
	mov	r2, #1
	ldr	r0, .L34+44
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L34+48
	strb	r2, [r3]
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
	ldr	r6, .L38
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L38+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L38+8
	ldr	r1, .L38+12
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L38+16
	ldr	r1, .L38+20
	mov	lr, pc
	bx	r6
	ldr	r3, .L38+24
	ldr	r2, .L38+28
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L38+32
	ldr	r1, .L38+36
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L38+40
	ldr	r1, .L38+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #2
	ldr	r1, .L38+48
	ldr	r3, .L38+52
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #16]
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L39:
	.align	2
.L38:
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
	ldr	r3, .L61
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, r5, r6, lr}
	bne	.L58
	ldr	r4, .L61+4
.L41:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	bne	.L42
	pop	{r4, r5, r6, lr}
	bx	lr
.L58:
	ldr	r3, .L61+8
	ldrh	r3, [r3]
	tst	r3, #8
	ldr	r4, .L61+4
	bne	.L41
	ldr	r3, [r4, #16]
	add	r2, r3, #1
	str	r2, [r4, #16]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L41
.L43:
	.word	.L50
	.word	.L49
	.word	.L48
	.word	.L47
	.word	.L46
	.word	.L45
	.word	.L44
	.word	.L42
.L42:
	mov	r3, #0
	str	r3, [r4, #12]
	bl	goToStartTwo
	mov	r2, #1
	ldr	r3, .L61+12
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L44:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+16
	ldr	r1, .L61+20
	ldr	r5, .L61+24
	mov	lr, pc
	bx	r5
	b	.L41
.L50:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+16
	ldr	r1, .L61+28
	ldr	r5, .L61+24
	mov	lr, pc
	bx	r5
	b	.L41
.L49:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+16
	ldr	r1, .L61+32
	ldr	r5, .L61+24
	mov	lr, pc
	bx	r5
	b	.L41
.L48:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+16
	ldr	r1, .L61+36
	ldr	r5, .L61+24
	mov	lr, pc
	bx	r5
	b	.L41
.L47:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+16
	ldr	r1, .L61+40
	ldr	r5, .L61+24
	mov	lr, pc
	bx	r5
	b	.L41
.L46:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+16
	ldr	r1, .L61+44
	ldr	r5, .L61+24
	mov	lr, pc
	bx	r5
	b	.L41
.L45:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+16
	ldr	r1, .L61+48
	ldr	r5, .L61+24
	mov	lr, pc
	bx	r5
	b	.L41
.L62:
	.align	2
.L61:
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
	ldr	ip, .L67
	ldr	r2, .L67+4
	ldr	r1, .L67+8
	strh	lr, [r0]	@ movhi
	ldr	r4, .L67+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L67+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L67+20
	ldr	r1, .L67+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L67+28
	ldr	r1, .L67+32
	mov	lr, pc
	bx	r4
	ldr	r5, .L67+36
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L67+40
	ldr	r1, .L67+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L67+48
	ldr	r1, .L67+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L66
.L64:
	mov	r1, #3
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L67+56
	strb	r1, [r2]
	str	r3, [r5, #20]
	str	r3, [r5]
	str	r0, [r5, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	ldr	r3, .L67+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+64
	mov	lr, pc
	bx	r3
	b	.L64
.L68:
	.align	2
.L67:
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
	ldr	r6, .L71
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L71+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L71+8
	ldr	r1, .L71+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L71+16
	ldr	r2, .L71+20
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L71+24
	ldr	r1, .L71+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L71+32
	mov	r0, #3
	ldr	r1, .L71+36
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r3, .L71+40
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L72:
	.align	2
.L71:
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
	mov	r1, #5
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
	ldr	r3, .L84
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L84+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseTwo
.L85:
	.align	2
.L84:
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
	ldr	r6, .L88
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L88+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L88+8
	ldr	r1, .L88+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L88+16
	ldr	r2, .L88+20
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L88+24
	ldr	r1, .L88+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L88+32
	mov	r0, #3
	ldr	r1, .L88+36
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r3, .L88+40
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L89:
	.align	2
.L88:
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
	ldr	ip, .L92
	ldr	r2, .L92+4
	ldr	r1, .L92+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L92+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L92+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L92+20
	ldr	r1, .L92+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L92+28
	ldr	r1, .L92+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L92+36
	ldr	r1, .L92+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L92+44
	ldr	r1, .L92+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L92+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L92+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L92+60
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L92+64
	ldr	r3, .L92+68
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L93:
	.align	2
.L92:
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
	ldr	r3, .L99
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L99+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseThree
.L100:
	.align	2
.L99:
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
	ldr	r8, .L103
	ldr	r7, .L103+4
	ldr	r5, .L103+8
	strh	r6, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L103+12
	mov	lr, pc
	bx	r5
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L103+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L103+20
	mov	r0, #3
	ldr	r1, .L103+24
	mov	lr, pc
	bx	r5
	mov	r2, #8
	ldr	r3, .L103+28
	strh	r6, [r4, #16]	@ movhi
	strh	r6, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L104:
	.align	2
.L103:
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
	ldr	r4, .L125
	sub	sp, sp, #12
	mov	r0, r4
	add	r1, r4, #4
	ldr	r3, .L125+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L125+8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #4]
	ldrh	r2, [r4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L125+12
	mov	lr, pc
	bx	r2
	ldr	r3, .L125+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L125+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L125+24
	mov	lr, pc
	bx	r5
	ldr	r3, .L125+28
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L121
.L106:
	ldr	r3, .L125+32
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L122
.L107:
	ldr	ip, .L125+36
	ldr	r3, [ip]
	add	r3, r3, #1
	cmp	r3, #15
	strle	r3, [ip]
	bgt	.L123
.L109:
	ldr	r3, .L125+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L105
	ldr	r3, .L125+44
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L124
.L105:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L122:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L107
	ldr	r3, .L125+48
	mov	lr, pc
	bx	r3
	bl	goToPhaseOne
	b	.L107
.L123:
	ldr	r6, .L125+52
	ldr	r3, [r6]
	mov	lr, #0
	rsbs	r3, r3, #1
	movcc	r3, #0
	ldr	r5, .L125+56
	ldr	r7, .L125+60
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
	b	.L109
.L121:
	bl	goToStartInstructions
	b	.L106
.L124:
	ldr	r3, .L125+64
	ldr	r2, .L125+68
	ldr	ip, [r3, #16]
	ldr	r0, [r3, #20]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L125+72
	ldr	r3, .L125+48
	str	ip, [r4, #28]
	str	r0, [r4, #32]
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToPause
.L126:
	.align	2
.L125:
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
	ldr	r3, .L129
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L129+4
	ldr	r3, .L129+8
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	goToPause
.L130:
	.align	2
.L129:
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
	ldr	r3, .L149
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L149+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r4, .L149+8
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r2, .L149+12
	sub	r3, r3, #1
	str	r1, [r2, #20]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L133
.L135:
	.word	.L140
	.word	.L139
	.word	.L138
	.word	.L137
	.word	.L136
	.word	.L134
.L134:
	bl	goToPhaseThreeInstructions
.L141:
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldr	r3, .L149+16
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L140:
	bl	goToStartThree
	b	.L141
.L139:
	bl	goToStartInstructions
	b	.L141
.L138:
	bl	goToPhaseOne
	b	.L141
.L137:
	bl	goToPhaseTwoInstructions
	b	.L141
.L136:
	bl	goToPhaseTwo
	b	.L141
.L133:
	bl	goToStart
	b	.L141
.L150:
	.align	2
.L149:
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
	ldr	r2, .L153
	ldr	ip, .L153+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L153+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L153+12
	ldr	r4, .L153+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L153+20
	ldr	r3, .L153+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L153+28
	mov	r3, #15
	ldr	r2, .L153+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L153+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L154:
	.align	2
.L153:
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
	ldr	r5, .L168
	ldr	r3, .L168+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L168+8
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L168+12
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L168+16
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
	ldr	r2, .L168+20
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L168+24
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L168+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L168+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L166
	ldr	r3, .L168+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L167
.L157:
	ldr	r3, .L168+40
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseOne.part.0
.L155:
	pop	{r4, r5, r6, lr}
	bx	lr
.L166:
	bl	goToLose
	ldr	r3, .L168+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L157
.L167:
	bl	goToPhaseTwoInstructions
	b	.L157
.L169:
	.align	2
.L168:
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
	ldr	r5, .L183
	ldr	r3, .L183+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L183+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L183+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L183+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L183+20
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
	ldr	r2, .L183+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L183+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L183+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L183+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L183+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L181
	ldr	r3, .L183+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L182
.L172:
	ldr	r3, .L183+48
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseTwo.part.0
.L170:
	pop	{r4, r5, r6, lr}
	bx	lr
.L181:
	bl	goToLose
	ldr	r3, .L183+44
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L172
.L182:
	bl	goToPhaseThreeInstructions
	b	.L172
.L184:
	.align	2
.L183:
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
	ldr	r3, .L187
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L188:
	.align	2
.L187:
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
	ldr	r2, .L191
	ldr	ip, .L191+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L191+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L191+12
	ldr	r4, .L191+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L191+20
	ldr	r3, .L191+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L191+28
	mov	r3, #15
	ldr	r2, .L191+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L191+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L192:
	.align	2
.L191:
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
	ldr	r5, .L202
	ldr	r3, .L202+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L202+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L202+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L202+16
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L202+20
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L202+24
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
	ldr	r2, .L202+28
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L202+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L202+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L202+40
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L202+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L202+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L200
	ldr	r3, .L202+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L201
.L193:
	pop	{r4, r5, r6, lr}
	bx	lr
.L200:
	bl	goToLose
	ldr	r3, .L202+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L193
.L201:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L203:
	.align	2
.L202:
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
	ldr	r3, .L214
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L214+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L213
	pop	{r4, lr}
	bx	lr
.L213:
	bl	goToSplashScreen
	ldr	r3, .L214+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L215:
	.align	2
.L214:
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
	ldr	r6, .L218
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L218+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L218+8
	ldr	r1, .L218+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L218+16
	mov	r3, #1024
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L218+20
	ldr	r1, .L218+24
	mov	lr, pc
	bx	r6
	mov	r2, #11
	ldr	r3, .L218+28
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L219:
	.align	2
.L218:
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
	ldr	r3, .L245
	ldrh	r2, [r3]
	ldr	r1, .L245+4
	tst	r2, #128
	ldr	r0, [r1, #24]
	beq	.L221
	ldr	ip, .L245+8
	ldrh	ip, [ip]
	tst	ip, #128
	bne	.L221
	cmp	r0, #0
	moveq	r2, #1
	streq	r2, [r1, #24]
	beq	.L223
	tst	r2, #64
	beq	.L223
	tst	ip, #64
	bne	.L223
	cmp	r0, #1
	moveq	r2, #0
	streq	r2, [r1, #24]
	beq	.L225
.L224:
	cmp	r0, #0
	bne	.L223
.L225:
	mov	r2, #83886080
	mov	ip, #31
	mov	r0, #0
	strh	ip, [r2, #28]	@ movhi
	strh	r0, [r2, #30]	@ movhi
.L226:
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L245+8
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r3, [r1, #24]
	cmp	r3, #0
	bne	.L228
	b	goToStart
.L221:
	tst	r2, #64
	beq	.L224
	ldr	r2, .L245+8
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L224
	cmp	r0, #1
	moveq	r2, #0
	streq	r2, [r1, #24]
	bne	.L224
	b	.L225
.L223:
	mov	r2, #83886080
	mov	ip, #0
	mov	r0, #31
	strh	ip, [r2, #28]	@ movhi
	strh	r0, [r2, #30]	@ movhi
	b	.L226
.L228:
	b	goToGameInstructions
.L246:
	.align	2
.L245:
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
	ldr	r3, .L273
	mov	lr, pc
	bx	r3
	ldr	r3, .L273+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L273+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L273+12
	ldr	r7, .L273+16
	ldr	r6, .L273+20
	ldr	fp, .L273+24
	ldr	r10, .L273+28
	ldr	r9, .L273+32
	ldr	r8, .L273+36
	ldr	r5, .L273+40
.L262:
	ldrh	r1, [r4]
	strh	r1, [r7]	@ movhi
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L248
.L250:
	.word	.L260
	.word	.L259
	.word	.L258
	.word	.L257
	.word	.L256
	.word	.L255
	.word	.L254
	.word	.L253
	.word	.L252
	.word	.L251
	.word	.L251
	.word	.L249
.L251:
	tst	r1, #8
	ldrne	r3, .L273+44
	movne	lr, pc
	bxne	r3
.L248:
	mov	lr, pc
	bx	r8
	b	.L262
.L252:
	ldr	r3, .L273+48
	mov	lr, pc
	bx	r3
	b	.L248
.L253:
	ldr	r3, .L273+52
	mov	lr, pc
	bx	r3
	b	.L248
.L254:
	tst	r1, #8
	beq	.L248
	tst	r3, #8
	bne	.L248
	ldr	r3, .L273+56
	mov	lr, pc
	bx	r3
	b	.L248
.L255:
	ldr	r3, .L273+60
	mov	lr, pc
	bx	r3
	b	.L248
.L259:
	mov	lr, pc
	bx	r10
	b	.L248
.L249:
	tst	r1, #8
	beq	.L248
	tst	r3, #8
	bne	.L248
	ldr	r3, .L273+8
	mov	lr, pc
	bx	r3
	b	.L248
.L260:
	mov	lr, pc
	bx	fp
	b	.L248
.L257:
	ldr	r3, .L273+64
	mov	lr, pc
	bx	r3
	b	.L248
.L258:
	mov	lr, pc
	bx	r9
	b	.L248
.L256:
	tst	r1, #8
	beq	.L248
	tst	r3, #8
	bne	.L248
	ldr	r3, .L273+68
	mov	lr, pc
	bx	r3
	b	.L248
.L274:
	.align	2
.L273:
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
	ldr	r3, .L280
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L280+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToSplashScreen
.L281:
	.align	2
.L280:
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
	ldr	r2, .L284
	str	lr, [sp, #-4]!
	ldr	ip, .L284+4
	ldr	lr, .L284+8
	str	r3, [r2]
	ldr	r0, .L284+12
	ldr	r2, .L284+16
	ldr	r1, .L284+20
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
.L285:
	.align	2
.L284:
	.word	gameOver
	.word	winPhaseTwo
	.word	winPhaseOne
	.word	winPhaseThree
	.word	.LANCHOR0
	.word	next
	.size	resetGameState, .-resetGameState
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
