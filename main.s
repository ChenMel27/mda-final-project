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
	ldr	ip, .L4+28
	ldr	r1, .L4+32
	str	r3, [ip]
	strh	r3, [r2, #26]	@ movhi
	strh	r0, [r2, #24]	@ movhi
	strb	r3, [r1]
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
	.word	.LANCHOR0
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
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToSplashScreen
.L9:
	.align	2
.L8:
	.word	mgba_open
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
	mov	r5, #0
	mov	r6, #67108864
	ldr	r4, .L18
	strh	r5, [r6]	@ movhi
	ldr	r3, .L18+4
	str	r5, [r4, #4]
	mov	lr, pc
	bx	r3
	mov	r3, #4608
	mov	r2, #53760
	strh	r3, [r6]	@ movhi
	mov	r0, #3
	strh	r2, [r6, #10]	@ movhi
	mov	r3, #256
	ldr	r6, .L18+8
	mov	r2, #83886080
	ldr	r1, .L18+12
	mov	lr, pc
	bx	r6
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L18+16
	mov	lr, pc
	bx	r6
	ldr	r2, .L18+20
	ldr	r1, .L18+24
	mov	r0, #3
	mov	r3, #4096
	mov	lr, pc
	bx	r6
	ldr	r3, .L18+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+32
	mov	lr, pc
	bx	r3
	mov	r2, #1
	mov	r1, #96
	ldr	r3, .L18+36
	strb	r2, [r3]
	str	r5, [r4, #8]
	str	r1, [r4, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.word	hideSprites
	.word	DMANow
	.word	sTSPal
	.word	sTSTiles
	.word	100700160
	.word	sTMMap
	.word	initStartPlayer
	.word	initGuideSprite
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
	ldr	r4, .L22
	strh	r3, [r2]	@ movhi
	ldr	r6, .L22+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L22+8
	str	r5, [r4, #4]
	mov	lr, pc
	bx	r6
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L22+12
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r2, .L22+16
	ldr	r1, .L22+20
	mov	r3, #4096
	mov	lr, pc
	bx	r6
	ldr	r3, .L22+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+28
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	ip, #96
	mov	r1, #436
	ldr	r0, .L22+32
	ldr	lr, .L22+36
	ldr	r2, .L22+40
	strb	r3, [r0]
	str	r5, [r4, #8]
	str	r5, [lr]
	str	ip, [r4, #12]
	str	r3, [r4, #16]
	str	r1, [r2, #16]
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	.LANCHOR0
	.word	DMANow
	.word	sTSPal
	.word	sTSTiles
	.word	100700160
	.word	sTMMap
	.word	initStartPlayer
	.word	initGuideSprite
	.word	state
	.word	next
	.word	startPlayer
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
	ldr	r4, .L26
	strh	r3, [r2]	@ movhi
	ldr	r5, .L26+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L26+8
	str	r6, [r4, #4]
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L26+12
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L26+16
	ldr	r1, .L26+20
	mov	r3, #4096
	mov	lr, pc
	bx	r5
	ldr	r3, .L26+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L26+28
	mov	lr, pc
	bx	r3
	mov	r1, #1
	mov	lr, #96
	ldr	r2, .L26+32
	ldr	ip, [r4, #20]
	ldr	r0, [r4, #24]
	ldr	r3, .L26+36
	strb	r1, [r2]
	str	r6, [r4, #8]
	str	lr, [r4, #12]
	str	ip, [r3, #16]
	str	r0, [r3, #20]
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
	.word	state
	.word	startPlayer
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #256
	mov	r4, #67108864
	mov	r5, #0
	ldr	r8, .L30
	ldr	r7, .L30+4
	ldr	r6, .L30+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L30+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L30+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L30+20
	ldr	r1, .L30+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #2
	ldr	r1, .L30+28
	ldr	r3, .L30+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #28]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	100679680
	.word	dialogueFontTiles
	.word	DMANow
	.word	dialogueFontPal
	.word	5124
	.word	100704256
	.word	diaOneMap
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
	ldr	r3, .L53
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, r5, r6, lr}
	bne	.L50
	ldr	r4, .L53+4
.L33:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L34
	pop	{r4, r5, r6, lr}
	bx	lr
.L50:
	ldr	r3, .L53+8
	ldrh	r3, [r3]
	tst	r3, #8
	ldr	r4, .L53+4
	bne	.L33
	ldr	r3, [r4, #28]
	add	r2, r3, #1
	str	r2, [r4, #28]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L33
.L35:
	.word	.L42
	.word	.L41
	.word	.L40
	.word	.L39
	.word	.L38
	.word	.L37
	.word	.L36
	.word	.L34
.L34:
	mov	r3, #0
	str	r3, [r4, #32]
	bl	goToStartTwo
	mov	r2, #1
	ldr	r3, .L53+12
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L36:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L53+16
	ldr	r1, .L53+20
	ldr	r5, .L53+24
	mov	lr, pc
	bx	r5
	b	.L33
.L42:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L53+16
	ldr	r1, .L53+28
	ldr	r5, .L53+24
	mov	lr, pc
	bx	r5
	b	.L33
.L41:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L53+16
	ldr	r1, .L53+32
	ldr	r5, .L53+24
	mov	lr, pc
	bx	r5
	b	.L33
.L40:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L53+16
	ldr	r1, .L53+36
	ldr	r5, .L53+24
	mov	lr, pc
	bx	r5
	b	.L33
.L39:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L53+16
	ldr	r1, .L53+40
	ldr	r5, .L53+24
	mov	lr, pc
	bx	r5
	b	.L33
.L38:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L53+16
	ldr	r1, .L53+44
	ldr	r5, .L53+24
	mov	lr, pc
	bx	r5
	b	.L33
.L37:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L53+16
	ldr	r1, .L53+48
	ldr	r5, .L53+24
	mov	lr, pc
	bx	r5
	b	.L33
.L54:
	.align	2
.L53:
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
	ldr	ip, .L59
	ldr	r2, .L59+4
	ldr	r1, .L59+8
	strh	lr, [r0]	@ movhi
	ldr	r4, .L59+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L59+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L59+20
	ldr	r1, .L59+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L59+28
	ldr	r1, .L59+32
	mov	lr, pc
	bx	r4
	ldr	r5, .L59+36
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L59+40
	ldr	r1, .L59+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L59+48
	ldr	r1, .L59+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.L58
.L56:
	mov	r1, #3
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L59+56
	strb	r1, [r2]
	str	r3, [r5, #4]
	str	r3, [r5, #8]
	str	r0, [r5, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L58:
	ldr	r3, .L59+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+64
	mov	lr, pc
	bx	r3
	b	.L56
.L60:
	.align	2
.L59:
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #256
	mov	r4, #67108864
	mov	r5, #0
	ldr	r8, .L63
	ldr	r7, .L63+4
	ldr	r6, .L63+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L63+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L63+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L63+20
	ldr	r1, .L63+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r1, .L63+28
	ldr	r3, .L63+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #28]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	100679680
	.word	dialogueFontTiles
	.word	DMANow
	.word	dialogueFontPal
	.word	5124
	.word	100704256
	.word	diaOneMap
	.word	.LANCHOR0
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
	ldr	ip, .L69
	ldr	r2, .L69+4
	ldr	r1, .L69+8
	strh	lr, [r0]	@ movhi
	ldr	r4, .L69+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L69+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L69+20
	ldr	r1, .L69+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L69+28
	ldr	r1, .L69+32
	mov	lr, pc
	bx	r4
	ldr	r5, .L69+36
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L69+40
	ldr	r1, .L69+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L69+48
	ldr	r1, .L69+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.L68
.L66:
	mov	r1, #5
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L69+56
	strb	r1, [r2]
	str	r3, [r5, #4]
	str	r3, [r5, #8]
	str	r0, [r5, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L68:
	ldr	r3, .L69+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+64
	mov	lr, pc
	bx	r3
	b	.L66
.L70:
	.align	2
.L69:
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
	ldr	r3, .L89
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L89+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L89+8
	ldr	r3, [r2, #28]
	add	r1, r3, #1
	push	{r4, lr}
	str	r1, [r2, #28]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L71
.L74:
	.word	.L81
	.word	.L80
	.word	.L79
	.word	.L78
	.word	.L77
	.word	.L76
	.word	.L75
	.word	.L73
.L76:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L89+12
	ldr	r1, .L89+16
	ldr	r4, .L89+20
	mov	lr, pc
	bx	r4
.L71:
	pop	{r4, lr}
	bx	lr
.L73:
	pop	{r4, lr}
	b	goToPhaseTwo
.L81:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L89+12
	ldr	r1, .L89+24
	ldr	r4, .L89+20
	mov	lr, pc
	bx	r4
	b	.L71
.L80:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L89+12
	ldr	r1, .L89+28
	ldr	r4, .L89+20
	mov	lr, pc
	bx	r4
	b	.L71
.L79:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L89+12
	ldr	r1, .L89+32
	ldr	r4, .L89+20
	mov	lr, pc
	bx	r4
	b	.L71
.L78:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L89+12
	ldr	r1, .L89+36
	ldr	r4, .L89+20
	mov	lr, pc
	bx	r4
	b	.L71
.L77:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L89+12
	ldr	r1, .L89+40
	ldr	r4, .L89+20
	mov	lr, pc
	bx	r4
	b	.L71
.L75:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L89+12
	ldr	r1, .L89+44
	ldr	r4, .L89+20
	mov	lr, pc
	bx	r4
	b	.L71
.L90:
	.align	2
.L89:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	100704256
	.word	diaSevenMap
	.word	DMANow
	.word	diaTwoMap
	.word	diaThreeMap
	.word	diaFourMap
	.word	diaFiveMap
	.word	diaSixMap
	.word	diaEightMap
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #256
	mov	r4, #67108864
	mov	r5, #0
	ldr	r8, .L93
	ldr	r7, .L93+4
	ldr	r6, .L93+8
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L93+12
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r1, r7
	mov	r3, #16384
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L93+16
	mov	r2, r8
	mov	r1, r7
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L93+20
	ldr	r1, .L93+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r1, .L93+28
	ldr	r3, .L93+32
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #28]
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L94:
	.align	2
.L93:
	.word	100679680
	.word	dialogueFontTiles
	.word	DMANow
	.word	dialogueFontPal
	.word	5124
	.word	100704256
	.word	diaOneMap
	.word	.LANCHOR0
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
	ldr	ip, .L97
	ldr	r2, .L97+4
	ldr	r1, .L97+8
	strh	r5, [r0]	@ movhi
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
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L97+36
	ldr	r1, .L97+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L97+44
	ldr	r1, .L97+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L97+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L97+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L97+60
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L97+64
	ldr	r3, .L97+68
	strb	r1, [r2]
	str	r5, [r3, #8]
	str	r0, [r3, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
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
	ldr	r3, .L117
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L117+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L117+8
	ldr	r3, [r2, #28]
	add	r1, r3, #1
	push	{r4, lr}
	str	r1, [r2, #28]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L99
.L102:
	.word	.L109
	.word	.L108
	.word	.L107
	.word	.L106
	.word	.L105
	.word	.L104
	.word	.L103
	.word	.L101
.L104:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L117+12
	ldr	r1, .L117+16
	ldr	r4, .L117+20
	mov	lr, pc
	bx	r4
.L99:
	pop	{r4, lr}
	bx	lr
.L101:
	pop	{r4, lr}
	b	goToPhaseThree
.L109:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L117+12
	ldr	r1, .L117+24
	ldr	r4, .L117+20
	mov	lr, pc
	bx	r4
	b	.L99
.L108:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L117+12
	ldr	r1, .L117+28
	ldr	r4, .L117+20
	mov	lr, pc
	bx	r4
	b	.L99
.L107:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L117+12
	ldr	r1, .L117+32
	ldr	r4, .L117+20
	mov	lr, pc
	bx	r4
	b	.L99
.L106:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L117+12
	ldr	r1, .L117+36
	ldr	r4, .L117+20
	mov	lr, pc
	bx	r4
	b	.L99
.L105:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L117+12
	ldr	r1, .L117+40
	ldr	r4, .L117+20
	mov	lr, pc
	bx	r4
	b	.L99
.L103:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L117+12
	ldr	r1, .L117+44
	ldr	r4, .L117+20
	mov	lr, pc
	bx	r4
	b	.L99
.L118:
	.align	2
.L117:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	100704256
	.word	diaSevenMap
	.word	DMANow
	.word	diaTwoMap
	.word	diaThreeMap
	.word	diaFourMap
	.word	diaFiveMap
	.word	diaSixMap
	.word	diaEightMap
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L140
	ldr	r3, .L140+4
	add	r0, r4, #8
	add	r1, r4, #12
	mov	lr, pc
	bx	r3
	ldr	r3, .L140+8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #12]
	ldrh	r2, [r4, #8]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L140+12
	mov	lr, pc
	bx	r2
	ldr	r3, .L140+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L140+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L140+24
	mov	lr, pc
	bx	r5
	ldr	r3, .L140+28
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L137
.L124:
	ldr	r3, .L140+32
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L138
.L125:
	ldr	r3, .L140+36
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L123
	ldr	r3, .L140+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L139
.L123:
	pop	{r4, r5, r6, lr}
	bx	lr
.L138:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L125
	bl	goToPhaseOne
	b	.L125
.L137:
	bl	goToStartInstructions
	b	.L124
.L139:
	ldr	r3, .L140+44
	ldr	r2, .L140+48
	add	r0, r3, #16
	ldrb	r2, [r2]	@ zero_extendqisi2
	ldr	r3, .L140+52
	ldm	r0, {r0, r1}
	strb	r2, [r3]
	str	r0, [r4, #20]
	str	r1, [r4, #24]
	pop	{r4, r5, r6, lr}
	b	goToPause
.L141:
	.align	2
.L140:
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
	ldr	r3, .L144
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r2, .L144+4
	ldr	r3, .L144+8
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	goToPause
.L145:
	.align	2
.L144:
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
	ldr	r3, .L164
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L164+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r4, .L164+8
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r2, .L164+12
	sub	r3, r3, #1
	str	r1, [r2, #4]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L148
.L150:
	.word	.L155
	.word	.L154
	.word	.L153
	.word	.L152
	.word	.L151
	.word	.L149
.L149:
	bl	goToPhaseThreeInstructions
.L156:
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldr	r3, .L164+16
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L155:
	bl	goToStartThree
	b	.L156
.L154:
	bl	goToStartInstructions
	b	.L156
.L153:
	bl	goToPhaseOne
	b	.L156
.L152:
	bl	goToPhaseTwoInstructions
	b	.L156
.L151:
	bl	goToPhaseTwo
	b	.L156
.L148:
	bl	goToStart
	b	.L156
.L165:
	.align	2
.L164:
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
	ldr	r2, .L168
	ldr	ip, .L168+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L168+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L168+12
	ldr	r4, .L168+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L168+20
	ldr	r3, .L168+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L168+28
	mov	r3, #15
	ldr	r2, .L168+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L168+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L169:
	.align	2
.L168:
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
	ldr	r5, .L183
	ldr	r3, .L183+4
	add	r1, r5, #12
	add	r0, r5, #8
	mov	lr, pc
	bx	r3
	ldr	r3, .L183+8
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #8]
	ldr	r1, [r5, #12]
	ldr	r3, .L183+12
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L183+16
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
	ldr	r2, .L183+20
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L183+24
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L183+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L183+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L181
	ldr	r3, .L183+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L182
.L172:
	ldr	r3, .L183+40
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseOne.part.0
.L170:
	pop	{r4, r5, r6, lr}
	bx	lr
.L181:
	bl	goToLose
	ldr	r3, .L183+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L172
.L182:
	bl	goToPhaseTwoInstructions
	b	.L172
.L184:
	.align	2
.L183:
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
	ldr	r5, .L198
	ldr	r3, .L198+4
	add	r1, r5, #12
	add	r0, r5, #8
	mov	lr, pc
	bx	r3
	ldr	r3, .L198+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L198+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #8]
	ldr	r1, [r5, #12]
	ldr	r3, .L198+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L198+20
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
	ldr	r2, .L198+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L198+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L198+32
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L198+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L198+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L196
	ldr	r3, .L198+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L197
.L187:
	ldr	r3, .L198+48
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	phaseTwo.part.0
.L185:
	pop	{r4, r5, r6, lr}
	bx	lr
.L196:
	bl	goToLose
	ldr	r3, .L198+44
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L187
.L197:
	bl	goToPhaseThreeInstructions
	b	.L187
.L199:
	.align	2
.L198:
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
	ldr	r3, .L202
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L203:
	.align	2
.L202:
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
	ldr	r2, .L206
	ldr	ip, .L206+4
	strh	r2, [r3]	@ movhi
	ldr	r1, .L206+8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r3, .L206+12
	ldr	r4, .L206+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, .L206+20
	ldr	r3, .L206+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L206+28
	mov	r3, #15
	ldr	r2, .L206+32
	mov	r1, #70
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L206+36
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L207:
	.align	2
.L206:
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
	ldr	r5, .L217
	ldr	r3, .L217+4
	add	r1, r5, #12
	add	r0, r5, #8
	mov	lr, pc
	bx	r3
	ldr	r3, .L217+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L217+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L217+16
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #8]
	ldr	r1, [r5, #12]
	ldr	r3, .L217+20
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L217+24
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
	ldr	r2, .L217+28
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L217+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L217+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L217+40
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L217+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L217+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L215
	ldr	r3, .L217+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L216
.L208:
	pop	{r4, r5, r6, lr}
	bx	lr
.L215:
	bl	goToLose
	ldr	r3, .L217+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L208
.L216:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L218:
	.align	2
.L217:
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
	ldr	r3, .L229
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L229+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L228
	pop	{r4, lr}
	bx	lr
.L228:
	bl	goToSplashScreen
	ldr	r3, .L229+8
	strb	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L230:
	.align	2
.L229:
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
	ldr	r6, .L233
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L233+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L233+8
	ldr	r1, .L233+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L233+16
	mov	r3, #1024
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L233+20
	ldr	r1, .L233+24
	mov	lr, pc
	bx	r6
	mov	r2, #11
	ldr	r3, .L233+28
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L234:
	.align	2
.L233:
	.word	DMANow
	.word	dialogueFontPal
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
	ldr	r3, .L260
	ldrh	r2, [r3]
	ldr	r1, .L260+4
	tst	r2, #128
	ldr	r0, [r1]
	beq	.L236
	ldr	ip, .L260+8
	ldrh	ip, [ip]
	tst	ip, #128
	bne	.L236
	cmp	r0, #0
	moveq	r2, #1
	streq	r2, [r1]
	beq	.L238
	tst	r2, #64
	beq	.L238
	tst	ip, #64
	bne	.L238
	cmp	r0, #1
	moveq	r2, #0
	streq	r2, [r1]
	beq	.L240
.L239:
	cmp	r0, #0
	bne	.L238
.L240:
	mov	r2, #83886080
	mov	ip, #31
	mov	r0, #0
	strh	ip, [r2, #24]	@ movhi
	strh	r0, [r2, #26]	@ movhi
.L241:
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L260+8
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.L243
	b	goToStart
.L236:
	tst	r2, #64
	beq	.L239
	ldr	r2, .L260+8
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L239
	cmp	r0, #1
	moveq	r2, #0
	streq	r2, [r1]
	bne	.L239
	b	.L240
.L238:
	mov	r2, #83886080
	mov	ip, #0
	mov	r0, #31
	strh	ip, [r2, #24]	@ movhi
	strh	r0, [r2, #26]	@ movhi
	b	.L241
.L243:
	b	goToGameInstructions
.L261:
	.align	2
.L260:
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
	ldr	r3, .L282
	mov	lr, pc
	bx	r3
	ldr	r3, .L282+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L282+8
	ldr	r7, .L282+12
	ldr	r6, .L282+16
	ldr	fp, .L282+20
	ldr	r10, .L282+24
	ldr	r9, .L282+28
	ldr	r8, .L282+32
	ldr	r5, .L282+36
.L277:
	ldrh	r1, [r4]
	strh	r1, [r7]	@ movhi
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L263
.L265:
	.word	.L275
	.word	.L274
	.word	.L273
	.word	.L272
	.word	.L271
	.word	.L270
	.word	.L269
	.word	.L268
	.word	.L267
	.word	.L266
	.word	.L266
	.word	.L264
.L266:
	tst	r1, #8
	ldrne	r3, .L282+40
	movne	lr, pc
	bxne	r3
.L263:
	mov	lr, pc
	bx	r8
	b	.L277
.L267:
	ldr	r3, .L282+44
	mov	lr, pc
	bx	r3
	b	.L263
.L268:
	ldr	r3, .L282+48
	mov	lr, pc
	bx	r3
	b	.L263
.L269:
	ldr	r3, .L282+52
	mov	lr, pc
	bx	r3
	b	.L263
.L270:
	ldr	r3, .L282+56
	mov	lr, pc
	bx	r3
	b	.L263
.L271:
	ldr	r3, .L282+60
	mov	lr, pc
	bx	r3
	b	.L263
.L272:
	ldr	r3, .L282+64
	mov	lr, pc
	bx	r3
	b	.L263
.L273:
	mov	lr, pc
	bx	r9
	b	.L263
.L274:
	mov	lr, pc
	bx	r10
	b	.L263
.L264:
	tst	r1, #8
	beq	.L263
	tst	r3, #8
	bne	.L263
	ldr	r3, .L282+4
	mov	lr, pc
	bx	r3
	b	.L263
.L275:
	mov	lr, pc
	bx	fp
	b	.L263
.L283:
	.align	2
.L282:
	.word	mgba_open
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
	.word	phaseThreeInstructions
	.word	phaseTwo
	.word	phaseTwoInstructions
	.word	phaseOne
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
	ldr	r3, .L289
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L289+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToSplashScreen
.L290:
	.align	2
.L289:
	.word	oldButtons
	.word	buttons
	.size	gameInstructions, .-gameInstructions
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
	.comm	healthBarFrames,72,4
	.comm	next,4,4
	.comm	winPhaseThree,4,4
	.comm	playerPaletteWork,512,4
	.comm	winPhaseTwo,4,4
	.comm	snows,360,4
	.comm	sbb,4,4
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
	.type	splashSelection, %object
	.size	splashSelection, 4
splashSelection:
	.space	4
	.type	resumingFromPause, %object
	.size	resumingFromPause, 4
resumingFromPause:
	.space	4
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
	.type	savedStartX, %object
	.size	savedStartX, 4
savedStartX:
	.space	4
	.type	savedStartY, %object
	.size	savedStartY, 4
savedStartY:
	.space	4
	.type	startPage, %object
	.size	startPage, 4
startPage:
	.space	4
	.type	begin, %object
	.size	begin, 4
begin:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
