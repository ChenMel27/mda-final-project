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
	ldr	r2, .L4+28
	ldr	r1, .L4+32
	str	r3, [r2]
	ldr	r2, .L4+36
	ldr	lr, .L4+40
	str	r3, [r1]
	ldr	ip, .L4+44
	ldr	r0, .L4+48
	ldr	r1, .L4+52
	strb	r3, [r2]
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1028
	.word	videoBuffer
	.word	splashScreenPal
	.word	-2147483392
	.word	DMANow
	.word	splashScreenBitmap
	.word	drawFullscreenImage4
	.word	winPhaseOne
	.word	gameOver
	.word	state
	.word	winPhaseTwo
	.word	winPhaseThree
	.word	next
	.word	begin
	.size	goToSplashScreen, .-goToSplashScreen
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
	mov	r1, #67108864
	mov	r5, #0
	mov	r2, #4608
	mov	r0, #53760
	strh	r5, [r1]	@ movhi
	ldr	r4, .L8
	strh	r2, [r1]	@ movhi
	mov	r3, #256
	strh	r0, [r1, #10]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L8+4
	mov	lr, pc
	bx	r4
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L8+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+24
	mov	lr, pc
	bx	r3
	mov	r1, #1
	mov	r0, #96
	ldr	r2, .L8+28
	ldr	r3, .L8+32
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	sTSPal
	.word	sTSTiles
	.word	100700160
	.word	sTMMap
	.word	initStartPlayer
	.word	initGuideSprite
	.word	state
	.word	.LANCHOR0
	.size	goToStart, .-goToStart
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	splashScreen.part.0, %function
splashScreen.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L16
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	bl	goToStart
	mov	r2, #1
	ldr	r3, .L16+4
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	buttons
	.word	state
	.size	splashScreen.part.0, .-splashScreen.part.0
	.set	pause.part.0,splashScreen.part.0
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
	ldr	r3, .L20
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	splashScreen.part.0
.L21:
	.align	2
.L20:
	.word	oldButtons
	.size	splashScreen, .-splashScreen
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
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L24
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L24+4
	mov	lr, pc
	bx	r4
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L24+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L24+12
	ldr	r1, .L24+16
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L24+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L24+24
	mov	lr, pc
	bx	r3
	mov	lr, #436
	mov	r1, #1
	mov	ip, #0
	mov	r0, #96
	ldr	r2, .L24+28
	str	lr, [r2, #16]
	ldr	r2, .L24+32
	ldr	r3, .L24+36
	strb	r1, [r2]
	str	ip, [r3]
	str	r0, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	DMANow
	.word	sTSPal
	.word	sTSTiles
	.word	100700160
	.word	sTMMap
	.word	initStartPlayer
	.word	initGuideSprite
	.word	startPlayer
	.word	state
	.word	.LANCHOR0
	.size	goToStartTwo, .-goToStartTwo
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
	push	{r4, lr}
	ldr	r3, .L28
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #0
	mov	ip, #2
	ldr	r4, .L28+4
	ldr	r0, .L28+8
	strh	r3, [r2]	@ movhi
	ldr	lr, .L28+12
	strh	r4, [r2]	@ movhi
	ldr	r1, .L28+16
	ldr	r2, .L28+20
	strb	ip, [r0]
	str	r3, [lr]
	str	r2, [r1]
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	waitForVBlank
	.word	1044
	.word	state
	.word	startPage
	.word	videoBuffer
	.word	100704256
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
	push	{r4, lr}
	ldr	r3, .L34
	mov	lr, pc
	bx	r3
	ldr	r3, .L34+4
	ldr	r4, [r3]
	cmp	r4, #1
	beq	.L33
	pop	{r4, lr}
	bx	lr
.L33:
	mov	r2, #0
	str	r2, [r3]
	bl	goToStartTwo
	ldr	r3, .L34+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	drawStartInstructionsDialouge
	.word	begin
	.word	state
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
	mov	r5, #0
	mov	r3, #5888
	ldr	ip, .L38
	ldr	r2, .L38+4
	ldr	r1, .L38+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L38+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #12]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #8]	@ movhi
	ldr	r1, .L38+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L38+20
	ldr	r1, .L38+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L38+28
	ldr	r1, .L38+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L38+36
	ldr	r1, .L38+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L38+44
	ldr	r1, .L38+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L38+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+56
	mov	lr, pc
	bx	r3
	mov	r1, #3
	mov	r0, #96
	ldr	r2, .L38+60
	ldr	r3, .L38+64
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	23174
	.word	23684
	.word	24197
	.word	DMANow
	.word	foregroundPal
	.word	100679680
	.word	foregroundTiles
	.word	100716544
	.word	dayTMMap
	.word	100720640
	.word	bgOneFrontMap
	.word	100724736
	.word	bgOneBackMap
	.word	initPlayer
	.word	initHealth
	.word	state
	.word	.LANCHOR0
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
	ldr	r3, .L42
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToPhaseOne
.L43:
	.align	2
.L42:
	.word	mgba_open
	.size	initialize, .-initialize
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
	mov	r5, #67108864
	ldr	r4, .L53
	ldr	r3, .L53+4
	mov	r0, r4
	add	r1, r4, #4
	mov	lr, pc
	bx	r3
	ldrh	r2, [r4, #4]
	ldrh	r3, [r4]
	strh	r3, [r5, #20]	@ movhi
	strh	r2, [r5, #22]	@ movhi
	ldr	r3, .L53+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L53+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L53+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L53+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L53+24
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L51
	ldr	r3, .L53+28
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L52
.L44:
	pop	{r4, r5, r6, lr}
	bx	lr
.L51:
	ldr	r3, .L53+32
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #2
	ldr	r1, .L53+36
	ldr	lr, .L53+40
	strh	r3, [r5]	@ movhi
	strh	r1, [r5]	@ movhi
	str	r3, [lr]
	ldr	r3, .L53+28
	ldr	r3, [r3]
	ldr	r0, .L53+44
	ldr	r2, .L53+48
	ldr	r1, .L53+52
	cmp	r3, #1
	strb	ip, [r0]
	str	r1, [r2]
	bne	.L44
.L52:
	pop	{r4, r5, r6, lr}
	b	goToPhaseOne
.L54:
	.align	2
.L53:
	.word	.LANCHOR0
	.word	updateStartPlayer
	.word	drawStartPlayer
	.word	drawGuideSprite
	.word	DMANow
	.word	shadowOAM
	.word	checkPlayerGuideCollision
	.word	next
	.word	waitForVBlank
	.word	1044
	.word	startPage
	.word	state
	.word	videoBuffer
	.word	100704256
	.size	start, .-start
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
	mov	r5, #0
	mov	r3, #5888
	ldr	ip, .L57
	ldr	r2, .L57+4
	ldr	r1, .L57+8
	strh	r5, [r0]	@ movhi
	ldr	r4, .L57+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L57+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L57+20
	ldr	r1, .L57+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L57+28
	ldr	r1, .L57+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L57+36
	ldr	r1, .L57+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L57+44
	ldr	r1, .L57+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L57+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L57+56
	mov	lr, pc
	bx	r3
	mov	r1, #4
	mov	r0, #96
	ldr	r2, .L57+60
	ldr	r3, .L57+64
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L58:
	.align	2
.L57:
	.word	24196
	.word	23174
	.word	23685
	.word	DMANow
	.word	foregroundPal
	.word	100679680
	.word	foregroundTiles
	.word	100716544
	.word	dayTMMap
	.word	100720640
	.word	bgTwoBackMap
	.word	100724736
	.word	bgTwoFrontMap
	.word	initPlayerTwo
	.word	initSnow
	.word	state
	.word	.LANCHOR0
	.size	goToPhaseTwo, .-goToPhaseTwo
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
	ldr	r5, .L67
	ldr	r3, .L67+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+8
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L67+12
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L67+16
	lsl	r0, r0, #16
	lsl	ip, ip, #16
	lsl	r1, r1, #16
	lsl	r2, r2, #16
	lsr	r0, r0, #16
	lsr	ip, ip, #16
	lsr	r1, r1, #16
	lsl	r3, r3, #3
	lsr	r2, r2, #16
	strh	ip, [lr, #20]	@ movhi
	strh	r1, [lr, #22]	@ movhi
	strh	r0, [lr, #24]	@ movhi
	strh	r2, [lr, #26]	@ movhi
	ldr	r2, .L67+20
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L67+24
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r2, #117440512
	mov	r1, r5
	mov	r0, #3
	ldr	r4, .L67+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L67+32
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r2, #7
	ldrne	r3, .L67+36
	strbne	r2, [r3]
	ldr	r3, .L67+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L66
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	pop	{r4, r5, r6, lr}
	b	goToPhaseTwo
.L68:
	.align	2
.L67:
	.word	.LANCHOR0
	.word	updatePlayer
	.word	updateHealth
	.word	guide
	.word	shadowOAM
	.word	drawPlayer
	.word	drawHealth
	.word	DMANow
	.word	gameOver
	.word	state
	.word	winPhaseOne
	.size	phaseOne, .-phaseOne
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
	mov	r2, #4864
	ldr	ip, .L71
	ldr	r1, .L71+4
	strh	r5, [r0]	@ movhi
	ldr	r4, .L71+8
	strh	r2, [r0]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #8]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #10]	@ movhi
	ldr	r1, .L71+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L71+16
	ldr	r1, .L71+20
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L71+24
	ldr	r1, .L71+28
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L71+32
	ldr	r1, .L71+36
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L71+40
	mov	lr, pc
	bx	r3
	mov	r1, #5
	mov	r0, #96
	ldr	r2, .L71+44
	ldr	r3, .L71+48
	strb	r1, [r2]
	str	r5, [r3]
	str	r0, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	24197
	.word	23684
	.word	DMANow
	.word	foregroundPal
	.word	100679680
	.word	foregroundTiles
	.word	100720640
	.word	bgOneFrontMap
	.word	100724736
	.word	bgOneBackMap
	.word	initPlayerThree
	.word	state
	.word	.LANCHOR0
	.size	goToPhaseThree, .-goToPhaseThree
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
	ldr	r5, .L81
	ldr	r3, .L81+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L81+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L81+20
	lsl	r0, r0, #16
	lsl	ip, ip, #16
	lsl	r1, r1, #16
	lsl	r2, r2, #16
	lsr	r0, r0, #16
	lsr	ip, ip, #16
	lsr	r1, r1, #16
	lsl	r3, r3, #3
	lsr	r2, r2, #16
	strh	ip, [lr, #24]	@ movhi
	strh	r1, [lr, #26]	@ movhi
	strh	r0, [lr, #20]	@ movhi
	strh	r2, [lr, #22]	@ movhi
	ldr	r2, .L81+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L81+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r2, #117440512
	mov	r1, r5
	mov	r0, #3
	ldr	r4, .L81+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L81+40
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r2, #7
	ldrne	r3, .L81+44
	strbne	r2, [r3]
	ldr	r3, .L81+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L80
	pop	{r4, r5, r6, lr}
	bx	lr
.L80:
	pop	{r4, r5, r6, lr}
	b	goToPhaseThree
.L82:
	.align	2
.L81:
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
	.word	state
	.word	winPhaseTwo
	.size	phaseTwo, .-phaseTwo
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
	ldr	r5, .L93
	ldr	r3, .L93+4
	mov	r0, r5
	add	r1, r5, #4
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5]
	ldr	r1, [r5, #4]
	ldr	r3, .L93+8
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L93+12
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
	strh	r4, [r5, r3]	@ movhi
	ldr	r2, .L93+16
	mov	lr, pc
	bx	r2
	mov	r2, #117440512
	mov	r3, r4
	mov	r1, r5
	ldr	r4, .L93+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L93+24
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r2, #7
	ldrne	r3, .L93+28
	strbne	r2, [r3]
	ldr	r3, .L93+32
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r2, #8
	ldrne	r3, .L93+28
	strbne	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L94:
	.align	2
.L93:
	.word	.LANCHOR0
	.word	updatePlayerThree
	.word	guide
	.word	shadowOAM
	.word	drawPlayerThree
	.word	DMANow
	.word	gameOver
	.word	state
	.word	winPhaseThree
	.size	phaseThree, .-phaseThree
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
	@ link register save eliminated.
	mov	r2, #6
	ldr	r3, .L96
	strb	r2, [r3]
	bx	lr
.L97:
	.align	2
.L96:
	.word	state
	.size	goToPause, .-goToPause
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
	ldr	r2, .L101
	push	{r4, lr}
	mov	r0, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L101+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L101+8
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	pause.part.0
.L98:
	pop	{r4, lr}
	bx	lr
.L102:
	.align	2
.L101:
	.word	1028
	.word	fillScreen4
	.word	oldButtons
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
	@ link register save eliminated.
	mov	r2, #7
	ldr	r3, .L104
	strb	r2, [r3]
	bx	lr
.L105:
	.align	2
.L104:
	.word	state
	.size	goToLose, .-goToLose
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
	mov	r3, #67108864
	mov	r0, #0
	ldr	r2, .L113
	push	{r4, lr}
	strh	r0, [r3]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L113+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L113+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L106
	ldr	r3, .L113+12
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L112
.L106:
	pop	{r4, lr}
	bx	lr
.L112:
	bl	goToSplashScreen
	ldr	r3, .L113+16
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L114:
	.align	2
.L113:
	.word	1028
	.word	fillScreen4
	.word	oldButtons
	.word	buttons
	.word	state
	.size	lose, .-lose
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, fp, lr}
	ldr	r3, .L130
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	ldr	r3, .L130+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L130+8
	ldr	r8, .L130+12
	ldr	r5, .L130+16
	ldr	fp, .L130+20
	ldr	r10, .L130+24
	ldr	r9, .L130+28
	ldr	r7, .L130+32
	ldr	r6, .L130+36
.L128:
	ldrh	r2, [r4]
	strh	r2, [r8]	@ movhi
	ldrb	r3, [r5]	@ zero_extendqisi2
	ldrh	r1, [r6, #48]
	strh	r1, [r4]	@ movhi
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L116
.L118:
	.word	.L125
	.word	.L124
	.word	.L123
	.word	.L122
	.word	.L121
	.word	.L120
	.word	.L119
	.word	.L117
	.word	.L117
.L117:
	mov	lr, pc
	bx	r9
.L116:
	mov	lr, pc
	bx	r7
	b	.L128
.L119:
	ldr	r3, .L130+40
	mov	lr, pc
	bx	r3
	b	.L116
.L120:
	ldr	r3, .L130+44
	mov	lr, pc
	bx	r3
	b	.L116
.L121:
	ldr	r3, .L130+48
	mov	lr, pc
	bx	r3
	b	.L116
.L122:
	ldr	r3, .L130+52
	mov	lr, pc
	bx	r3
	b	.L116
.L123:
	ldr	r3, .L130+56
	mov	lr, pc
	bx	r3
	ldr	r3, [r10]
	cmp	r3, #1
	bne	.L116
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [r10]
	ldr	r3, .L130+60
	mov	lr, pc
	bx	r3
	ldr	r3, [sp, #4]
	strb	r3, [r5]
	b	.L116
.L125:
	tst	r2, #8
	beq	.L116
	ldr	r3, .L130+64
	mov	lr, pc
	bx	r3
	b	.L116
.L124:
	mov	lr, pc
	bx	fp
	b	.L116
.L131:
	.align	2
.L130:
	.word	mgba_open
	.word	goToPhaseOne
	.word	buttons
	.word	oldButtons
	.word	state
	.word	start
	.word	begin
	.word	lose
	.word	waitForVBlank
	.word	67109120
	.word	pause
	.word	phaseThree
	.word	phaseTwo
	.word	phaseOne
	.word	drawStartInstructionsDialouge
	.word	goToStartTwo
	.word	splashScreen.part.0
	.size	main, .-main
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
	@ link register save eliminated.
	mov	r2, #8
	ldr	r3, .L133
	strb	r2, [r3]
	bx	lr
.L134:
	.align	2
.L133:
	.word	state
	.size	goToWin, .-goToWin
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
	mov	r3, #67108864
	mov	r0, #0
	ldr	r2, .L142
	push	{r4, lr}
	strh	r0, [r3]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L142+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L142+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L135
	ldr	r3, .L142+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L141
.L135:
	pop	{r4, lr}
	bx	lr
.L141:
	bl	goToStart
	mov	r2, #1
	ldr	r3, .L142+16
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L143:
	.align	2
.L142:
	.word	1028
	.word	fillScreen4
	.word	oldButtons
	.word	buttons
	.word	state
	.size	win, .-win
	.global	vOff
	.global	hOff
	.comm	state,1,1
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	healthBarFrames,72,4
	.comm	next,4,4
	.comm	begin,4,4
	.comm	startPage,4,4
	.comm	winPhaseThree,4,4
	.comm	winPhaseTwo,4,4
	.comm	snows,180,4
	.comm	winPhaseOne,4,4
	.comm	gameOver,4,4
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
