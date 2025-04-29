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
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, lr}
	ldr	r1, .L12
	ldr	r4, .L12+4
	sub	sp, sp, #16
	ldr	r2, .L12+8
	str	r3, [r1]
	mov	r5, #67108864
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	mov	r2, #4608
	ldr	r3, .L12+12
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #53760
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r5, .L12+16
	mov	r2, #83886080
	ldr	r1, .L12+20
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+24
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L12+28
	ldr	r1, .L12+32
	mov	lr, pc
	bx	r5
	mov	ip, #120
	ldr	r6, .L12+36
	ldr	r5, .L12+40
	ldr	lr, .L12+44
.L2:
	mov	r0, r5
	mov	r1, r6
	sub	r3, ip, #4
.L3:
	lsl	r2, r3, #1
	ldrh	r2, [lr, r2]
	add	r3, r3, #1
	cmp	r3, ip
	strh	r2, [r1], #2	@ movhi
	strh	r2, [r0], #2	@ movhi
	bne	.L3
	cmp	r3, #216
	add	r6, r6, #8
	add	r5, r5, #8
	add	ip, r3, #32
	bne	.L2
	mov	ip, sp
	ldr	r3, .L12+48
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	ldr	lr, .L12+52
	add	r5, sp, #16
.L5:
	mov	r1, lr
	ldr	r3, [ip], #4
	lsl	r3, r3, #4
	add	r0, r3, #16
.L6:
	lsl	r2, r3, #1
	add	r2, r2, #100663296
	ldrh	r2, [r2]
	add	r3, r3, #1
	cmp	r3, r0
	strh	r2, [r1, #2]!	@ movhi
	bne	.L6
	cmp	ip, r5
	add	lr, lr, #32
	bne	.L5
	ldr	r3, .L12+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+60
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #96
	ldr	r1, .L12+64
	str	r3, [r4, #4]
	mov	r2, #1
	ldr	r1, [r1]
	ldr	r0, .L12+68
	ldr	r3, .L12+72
	str	ip, [r4, #8]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L12+76
	strb	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	cheatOn
	.word	.LANCHOR0
	.word	stopSounds
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	mov	r4, #0
	mov	ip, #53760
	mov	r0, #67108864
	mov	r1, #4608
	ldr	r5, .L16+4
	ldr	r6, .L16+8
	str	r4, [r5]
	mov	r3, #256
	strh	r1, [r0]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #10]	@ movhi
	ldr	r1, .L16+12
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L16+16
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r2, .L16+20
	ldr	r1, .L16+24
	mov	r3, #4096
	mov	lr, pc
	bx	r6
	ldr	r3, .L16+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+32
	mov	lr, pc
	bx	r3
	mov	r6, #1
	mov	r2, #96
	mov	lr, #170
	ldr	r0, .L16+36
	ldr	r1, .L16+40
	ldr	r3, .L16+44
	ldr	ip, .L16+48
	str	r4, [r5, #4]
	str	r4, [r0]
	str	r2, [r5, #8]
	str	r6, [r5, #12]
	mov	r2, r6
	ldr	r1, [r1]
	ldr	r0, .L16+52
	ldr	r5, .L16+56
	str	lr, [r3, #20]
	str	ip, [r3, #16]
	mov	lr, pc
	bx	r5
	ldr	r3, .L16+60
	mov	r2, r4
	ldr	r1, [r3]
	ldr	r0, .L16+64
	ldr	r3, .L16+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+72
	strb	r6, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	stopSounds
	.word	.LANCHOR0
	.word	DMANow
	.word	sTSPal
	.word	sTSTiles
	.word	100700160
	.word	sTMMap
	.word	initStartPlayer
	.word	initGuideSprite
	.word	next
	.word	animaljam_length
	.word	startPlayer
	.word	430
	.word	animaljam_data
	.word	playSoundA
	.word	action_length
	.word	action_data
	.word	playSoundB
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L20
	mov	lr, pc
	bx	r3
	mov	r6, #0
	mov	ip, #53760
	mov	r0, #67108864
	mov	r1, #4608
	ldr	r4, .L20+4
	ldr	r5, .L20+8
	str	r6, [r4]
	mov	r3, #256
	strh	r1, [r0]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #10]	@ movhi
	ldr	r1, .L20+12
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L20+16
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L20+20
	ldr	r1, .L20+24
	mov	r3, #4096
	mov	lr, pc
	bx	r5
	mov	r5, #96
	ldr	r3, .L20+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+32
	mov	lr, pc
	bx	r3
	ldr	r2, .L20+36
	ldr	lr, [r4, #16]
	ldr	r3, .L20+40
	ldr	ip, [r4, #20]
	str	r6, [r4, #4]
	str	r5, [r4, #8]
	ldr	r1, [r2]
	ldr	r4, .L20+44
	mov	r2, #1
	ldr	r0, .L20+48
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L20+52
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	stopSounds
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
	ldr	r6, .L24
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L24+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L24+8
	ldr	r1, .L24+12
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L24+16
	ldr	r1, .L24+20
	mov	lr, pc
	bx	r6
	ldr	r3, .L24+24
	ldr	r2, .L24+28
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L24+32
	ldr	r1, .L24+36
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L24+40
	ldr	r1, .L24+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #2
	ldr	r1, .L24+48
	ldr	r3, .L24+52
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #24]
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L25:
	.align	2
.L24:
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
	ldr	r3, .L47
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, r5, r6, lr}
	bne	.L44
	ldr	r4, .L47+4
.L27:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L28
	pop	{r4, r5, r6, lr}
	bx	lr
.L44:
	ldr	r3, .L47+8
	ldrh	r3, [r3]
	tst	r3, #8
	ldr	r4, .L47+4
	bne	.L27
	ldr	r3, [r4, #24]
	add	r2, r3, #1
	str	r2, [r4, #24]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L27
.L29:
	.word	.L36
	.word	.L35
	.word	.L34
	.word	.L33
	.word	.L32
	.word	.L31
	.word	.L30
	.word	.L28
.L28:
	mov	r3, #0
	str	r3, [r4, #28]
	bl	goToStartTwo
	mov	r2, #1
	ldr	r3, .L47+12
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L30:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L47+16
	ldr	r1, .L47+20
	ldr	r5, .L47+24
	mov	lr, pc
	bx	r5
	b	.L27
.L36:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L47+16
	ldr	r1, .L47+28
	ldr	r5, .L47+24
	mov	lr, pc
	bx	r5
	b	.L27
.L35:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L47+16
	ldr	r1, .L47+32
	ldr	r5, .L47+24
	mov	lr, pc
	bx	r5
	b	.L27
.L34:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L47+16
	ldr	r1, .L47+36
	ldr	r5, .L47+24
	mov	lr, pc
	bx	r5
	b	.L27
.L33:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L47+16
	ldr	r1, .L47+40
	ldr	r5, .L47+24
	mov	lr, pc
	bx	r5
	b	.L27
.L32:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L47+16
	ldr	r1, .L47+44
	ldr	r5, .L47+24
	mov	lr, pc
	bx	r5
	b	.L27
.L31:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L47+16
	ldr	r1, .L47+48
	ldr	r5, .L47+24
	mov	lr, pc
	bx	r5
	b	.L27
.L48:
	.align	2
.L47:
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
	ldr	r3, .L55
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+4
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L55+8
	ldr	r3, .L55+12
	mov	lr, pc
	bx	r3
	mov	r0, #67108864
	mov	lr, #0
	mov	r3, #5888
	ldr	ip, .L55+16
	ldr	r2, .L55+20
	ldr	r1, .L55+24
	strh	lr, [r0]	@ movhi
	ldr	r4, .L55+28
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L55+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L55+36
	ldr	r1, .L55+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L55+44
	ldr	r1, .L55+48
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L55+52
	ldr	r1, .L55+56
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r1, .L55+60
	ldr	r2, .L55+64
	mov	lr, pc
	bx	r4
	ldr	r3, .L55+68
	ldr	r1, .L55+72
	add	r0, r3, #64
	sub	r1, r1, r3
.L50:
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	strb	r2, [r3, #1]!
	cmp	r3, r0
	bne	.L50
	mov	r3, #0
	ldr	r4, .L55+76
	ldr	r2, [r4]
	cmp	r2, r3
	str	r3, [r4, #32]
	str	r3, [r4, #36]
	beq	.L54
.L51:
	mov	r1, #3
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L55+80
	strb	r1, [r2]
	str	r3, [r4]
	str	r3, [r4, #4]
	str	r0, [r4, #8]
	pop	{r4, lr}
	bx	lr
.L54:
	ldr	r3, .L55+84
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+88
	mov	lr, pc
	bx	r3
	b	.L51
.L56:
	.align	2
.L55:
	.word	stopSounds
	.word	phasetwoaudio_length
	.word	phasetwoaudio_data
	.word	playSoundA
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
	ldr	r3, .L59
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToPhaseOne
.L60:
	.align	2
.L59:
	.word	mgba_open
	.word	stopSounds
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
	ldr	r3, .L63
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L63+4
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L63+8
	ldr	r3, .L63+12
	mov	lr, pc
	bx	r3
	ldr	r6, .L63+16
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L63+20
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L63+24
	ldr	r1, .L63+28
	mov	lr, pc
	bx	r6
	ldr	r3, .L63+32
	ldr	r2, .L63+36
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L63+40
	ldr	r1, .L63+44
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L63+48
	mov	r0, #3
	ldr	r1, .L63+52
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r3, .L63+56
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	stopSounds
	.word	winaudio_length
	.word	winaudio_data
	.word	playSoundA
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
	ldr	r3, .L69
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+4
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L69+8
	ldr	r3, .L69+12
	mov	lr, pc
	bx	r3
	mov	r0, #67108864
	mov	lr, #0
	mov	r3, #5888
	ldr	ip, .L69+16
	ldr	r2, .L69+20
	ldr	r1, .L69+24
	strh	lr, [r0]	@ movhi
	ldr	r4, .L69+28
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L69+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L69+36
	ldr	r1, .L69+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L69+44
	ldr	r1, .L69+48
	mov	lr, pc
	bx	r4
	ldr	r5, .L69+52
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L69+56
	ldr	r1, .L69+60
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L69+64
	ldr	r1, .L69+68
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L68
.L66:
	mov	r1, #5
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L69+72
	strb	r1, [r2]
	str	r3, [r5]
	str	r3, [r5, #4]
	str	r0, [r5, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L68:
	ldr	r3, .L69+76
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+80
	mov	lr, pc
	bx	r3
	b	.L66
.L70:
	.align	2
.L69:
	.word	stopSounds
	.word	phaseoneaudio_length
	.word	phaseoneaudio_data
	.word	playSoundA
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
	ldr	r3, .L76
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L76+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseTwo
.L77:
	.align	2
.L76:
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
	ldr	r3, .L80
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+4
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L80+8
	ldr	r3, .L80+12
	mov	lr, pc
	bx	r3
	ldr	r6, .L80+16
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L80+20
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L80+24
	ldr	r1, .L80+28
	mov	lr, pc
	bx	r6
	ldr	r3, .L80+32
	ldr	r2, .L80+36
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L80+40
	ldr	r1, .L80+44
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L80+48
	mov	r0, #3
	ldr	r1, .L80+52
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r3, .L80+56
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L81:
	.align	2
.L80:
	.word	stopSounds
	.word	fortnite_length
	.word	fortnite_data
	.word	playSoundA
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
	ldr	r3, .L84
	mov	lr, pc
	bx	r3
	ldr	r3, .L84+4
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L84+8
	ldr	r3, .L84+12
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r0, #67108864
	mov	r3, #5888
	ldr	ip, .L84+16
	ldr	r2, .L84+20
	ldr	r1, .L84+24
	strh	r5, [r0]	@ movhi
	ldr	r4, .L84+28
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L84+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L84+36
	ldr	r1, .L84+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L84+44
	ldr	r1, .L84+48
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L84+52
	ldr	r1, .L84+56
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L84+60
	ldr	r1, .L84+64
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L84+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L84+72
	mov	lr, pc
	bx	r3
	ldr	r3, .L84+76
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L84+80
	ldr	r3, .L84+84
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L85:
	.align	2
.L84:
	.word	stopSounds
	.word	phasethreeaudio_length
	.word	phasethreeaudio_data
	.word	playSoundA
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
	.word	initSnowThree
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
	ldr	r3, .L91
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L91+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseThree
.L92:
	.align	2
.L91:
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
	ldr	r3, .L95
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L95+4
	ldr	r2, .L95+8
	ldr	r1, .L95+12
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r4, #12]	@ movhi
	mov	r2, #83886080
	ldr	r4, .L95+16
	ldr	r1, .L95+20
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L95+24
	ldr	r1, .L95+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L95+32
	ldr	r1, .L95+36
	mov	lr, pc
	bx	r4
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
	mov	r1, #8
	mov	r0, #96
	ldr	r2, .L95+56
	ldr	r3, .L95+60
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L96:
	.align	2
.L95:
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
	ldr	r4, .L123
	sub	sp, sp, #12
	ldr	r3, .L123+4
	mov	lr, pc
	bx	r3
	add	r0, r4, #4
	add	r1, r4, #8
	ldr	r3, .L123+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L123+12
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L123+16
	mov	lr, pc
	bx	r2
	ldr	r3, .L123+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L123+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L123+28
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #40]
	orrs	r3, r2, r3
	bne	.L99
	mov	r5, #27
	mov	lr, #364
.L98:
	mov	r1, #57
	asr	ip, r5, #5
	add	ip, ip, #9
	and	r0, r5, #31
	lsl	ip, ip, #1
	lsl	r0, r0, #5
.L100:
	add	r2, ip, r1, asr #5
	and	r3, r1, #31
	lsl	r2, r2, #11
	add	r3, r3, r0
	add	r1, r1, #1
	add	r2, r2, #100663296
	lsl	r3, r3, #1
	cmp	r1, #67
	strh	lr, [r2, r3]	@ movhi
	bne	.L100
	add	r5, r5, #1
	cmp	r5, #37
	bne	.L98
	mov	r3, #1
	str	r3, [r4, #40]
.L99:
	ldr	r3, .L123+32
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L119
.L102:
	ldr	r3, .L123+36
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L120
.L103:
	ldr	ip, .L123+40
	ldr	r3, [ip]
	add	r3, r3, #1
	cmp	r3, #15
	strle	r3, [ip]
	bgt	.L121
.L105:
	ldr	r3, .L123+44
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L97
	ldr	r3, .L123+48
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L122
.L97:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L120:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L103
	ldr	r3, .L123+52
	mov	lr, pc
	bx	r3
	bl	goToPhaseOne
	b	.L103
.L121:
	ldr	r6, .L123+56
	ldr	r3, [r6]
	mov	lr, #0
	rsbs	r3, r3, #1
	movcc	r3, #0
	ldr	r5, .L123+60
	ldr	r7, .L123+64
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
	b	.L105
.L119:
	bl	goToStartInstructions
	b	.L102
.L122:
	ldr	r3, .L123+68
	ldr	r2, .L123+72
	ldr	ip, [r3, #16]
	ldr	r0, [r3, #20]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L123+76
	ldr	r3, .L123+52
	str	ip, [r4, #16]
	str	r0, [r4, #20]
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToPause
.L124:
	.align	2
.L123:
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
	ldr	r2, .L140
	ldr	ip, .L140+4
	strh	r2, [r3]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r3, .L140+8
	ldr	r1, .L140+12
	ldr	r4, .L140+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r3, .L140+20
	ldr	r0, .L140+24
	mov	lr, pc
	bx	r3
	mov	r3, #8
	ldr	r2, .L140+28
	ldrh	r2, [r2]
	ldr	r4, .L140+32
	tst	r2, #4
	strb	r3, [r4]
	beq	.L125
	ldr	r3, .L140+36
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L125
	mov	r1, #1
	ldr	r5, .L140+40
	ldrb	r3, [r5]	@ zero_extendqisi2
	ldr	r2, .L140+44
	sub	r3, r3, #1
	str	r1, [r2]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L127
.L129:
	.word	.L134
	.word	.L133
	.word	.L132
	.word	.L131
	.word	.L130
	.word	.L128
.L128:
	bl	goToPhaseThreeInstructions
.L135:
	ldrb	r3, [r5]	@ zero_extendqisi2
	strb	r3, [r4]
.L125:
	pop	{r4, r5, r6, lr}
	bx	lr
.L134:
	bl	goToStartThree
	b	.L135
.L133:
	bl	goToStartInstructions
	b	.L135
.L132:
	bl	goToPhaseOne
	b	.L135
.L131:
	bl	goToPhaseTwoInstructions
	b	.L135
.L130:
	bl	goToPhaseTwo
	b	.L135
.L127:
	bl	goToStart
	b	.L135
.L141:
	.align	2
.L140:
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
	ldr	r3, .L144
	mov	lr, pc
	bx	r3
	ldr	r3, .L144+4
	ldr	r0, .L144+8
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r3, .L144+12
	mov	lr, pc
	bx	r3
	mov	r4, #67108864
	mov	r5, #0
	mov	r2, #5888
	strh	r5, [r4, #80]	@ movhi
	ldr	r3, .L144+16
	strh	r5, [r4, #82]	@ movhi
	strh	r5, [r4, #82]	@ movhi
	strh	r5, [r4, #76]	@ movhi
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L144+20
	ldr	r2, .L144+24
	ldr	r1, .L144+28
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r4, #12]	@ movhi
	mov	r2, #83886080
	ldr	r4, .L144+32
	ldr	r1, .L144+36
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L144+40
	ldr	r1, .L144+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L144+48
	ldr	r1, .L144+52
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L144+56
	ldr	r1, .L144+60
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L144+64
	ldr	r1, .L144+68
	mov	lr, pc
	bx	r4
	mov	r1, #9
	mov	r0, #96
	ldr	r2, .L144+72
	ldr	r3, .L144+76
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L145:
	.align	2
.L144:
	.word	stopSounds
	.word	loseaudio_length
	.word	loseaudio_data
	.word	playSoundA
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
	ldr	r4, .L217
	ldr	r3, .L217+4
	add	r1, r4, #8
	add	r0, r4, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L217+8
	mov	lr, pc
	bx	r3
	mov	lr, #67108864
	ldmib	r4, {r0, r1}
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
	ble	.L152
	mov	r2, #0
	ldr	r3, [r4, #48]
	sub	r0, r3, r2
	rsbs	r3, r0, #0
	adc	r3, r3, r0
	str	r2, [r4, #44]
	str	r3, [r4, #48]
	ldr	r0, .L217+12
	ldr	lr, .L217+16
	ldr	ip, .L217+20
	ldr	r5, .L217+24
.L148:
	sub	r2, r0, #64
.L151:
	ldrh	r3, [r2]
	and	r1, r3, lr
	cmp	r1, #231
	and	r3, r3, ip
	orreq	r3, r3, #255
	strheq	r3, [r2]	@ movhi
	beq	.L150
	cmp	r1, #255
	orreq	r3, r3, #231
	strheq	r3, [r2]	@ movhi
.L150:
	add	r2, r2, #2
	cmp	r0, r2
	bne	.L151
	add	r0, r0, #64
	cmp	r0, r5
	bne	.L148
.L152:
	ldr	r3, [r4, #32]
	add	r3, r3, #1
	tst	r3, #3
	str	r3, [r4, #32]
	bne	.L156
	ldr	r3, [r4, #36]
	cmp	r3, #99
	bgt	.L156
	ldr	r6, .L217+28
	add	r3, r3, #1
	str	r3, [r4, #36]
	ldr	r8, .L217+32
	add	r7, r6, #64
.L158:
	ldrb	r3, [r6, #1]!	@ zero_extendqisi2
	lsl	r5, r3, #1
	cmp	r3, #0
	add	r5, r5, #83886080
	beq	.L157
	mov	r3, #2000
	mov	r1, #0
	ldr	r2, [r4, #36]
	ldrh	r0, [r5]
	mov	lr, pc
	bx	r8
	strh	r0, [r5]	@ movhi
.L157:
	cmp	r7, r6
	bne	.L158
.L156:
	ldr	r3, [r4, #52]
	add	r3, r3, #1
	cmp	r3, #200
	str	r3, [r4, #52]
	ble	.L155
	ldr	r10, [r4, #56]
	cmp	r10, #0
	beq	.L210
.L155:
	ldr	r3, [r4, #68]
	cmp	r3, #0
	bne	.L168
.L176:
	mov	r6, #512
	ldr	r3, .L217+36
	ldrb	r2, [r3, #56]	@ zero_extendqisi2
	ldr	r5, .L217+40
	lsl	r2, r2, #3
	strh	r6, [r5, r2]	@ movhi
	ldr	r3, .L217+44
	mov	lr, pc
	bx	r3
	ldr	r4, .L217+48
	ldr	r3, .L217+52
	mov	lr, pc
	bx	r3
	mov	r3, r6
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r5, .L217+56
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L211
	ldr	r3, .L217+60
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L212
.L180:
	ldr	r3, .L217+64
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L213
.L181:
	ldr	r3, .L217+68
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L146
	ldr	r3, .L217+72
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L214
.L146:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L210:
	ldr	r3, [r4, #60]
	add	r3, r3, #1
	cmp	r3, #60
	strle	r3, [r4, #60]
	ble	.L155
	ldr	r5, [r4, #64]
	mov	r2, #1
	rsbs	r1, r5, #1
	movcc	r1, #0
	ldr	r3, .L217+76
	str	r10, [r4, #60]
	str	r10, [r4, #72]
	str	r10, [r4, #76]
	str	r2, [r4, #68]
	str	r2, [r4, #56]
	str	r1, [r4, #64]
	add	r0, r3, #512
	rsb	r1, r3, #83886080
.L160:
	ldrh	r2, [r1, r3]
	strh	r2, [r3, #2]!	@ movhi
	cmp	r3, r0
	bne	.L160
	ldr	r0, .L217+24
	ldr	r7, .L217+80
	ldr	r8, .L217+84
	ldr	r6, .L217+88
.L161:
	ldr	lr, .L217+16
	ldr	ip, .L217+20
	ldr	r9, .L217+88
	sub	r2, r0, #64
	b	.L166
.L216:
	cmp	r1, r6
	orreq	r3, r3, #320
	orreq	r3, r3, #2
	strheq	r3, [r2]	@ movhi
	beq	.L164
	orr	r3, r3, #344
	cmp	r1, #348
	orr	r3, r3, #3
	bne	.L164
.L209:
	strh	r3, [r2]	@ movhi
.L164:
	add	r2, r2, #2
	cmp	r0, r2
	beq	.L215
.L166:
	ldrh	r3, [r2]
	cmp	r5, #0
	and	r1, r3, lr
	and	r3, r3, ip
	bne	.L216
	cmp	r1, r7
	orreq	r3, r3, r9
	strheq	r3, [r2]	@ movhi
	beq	.L164
	cmp	r1, r8
	bne	.L164
	orr	r3, r3, #348
	b	.L209
.L168:
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	cmp	r3, #8
	ldr	r10, [r4, #76]
	ble	.L167
	mov	r2, #0
	ldr	r3, [r4, #72]
	sub	r1, r3, r2
	rsbs	r3, r1, #0
	adc	r3, r3, r1
	add	r10, r10, #1
	str	r10, [r4, #76]
	str	r3, [r4, #72]
	str	r2, [r4, #80]
.L172:
	cmp	r10, #3
	ble	.L173
	mov	r3, #0
	ldr	r2, .L217+28
	str	r3, [r4, #68]
	ldr	r0, .L217+92
	add	r1, r2, #64
.L175:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	lslne	r3, r3, #1
	addne	r3, r3, #83886080
	strhne	r0, [r3]	@ movhi
	cmp	r1, r2
	bne	.L175
	b	.L176
.L211:
	ldr	r3, .L217+96
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L217+100
	ldr	r3, .L217+104
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r3, [r4]
	ldr	r3, .L217+60
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L180
.L212:
	bl	goToLose
	ldr	r3, .L217+64
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L181
.L213:
	bl	goToPhaseTwoInstructions
	b	.L181
.L173:
	ldr	r2, .L217+28
	ldr	r5, [r4, #72]
	ldr	r4, .L217+108
	add	lr, r2, #64
.L179:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	lsl	r3, r3, #1
	beq	.L177
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
.L177:
	cmp	lr, r2
	bne	.L179
	b	.L176
.L215:
	ldr	r3, .L217+112
	add	r0, r0, #64
	cmp	r0, r3
	bne	.L161
	mov	r3, #1
.L167:
	str	r3, [r4, #80]
	b	.L172
.L214:
	ldr	r2, .L217+116
	ldr	r3, .L217+120
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	goToPause
.L218:
	.align	2
.L217:
	.word	.LANCHOR0
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
	.word	playHealth
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
	.word	healthaudio_length
	.word	healthaudio_data
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
	ldr	r5, .L241
	ldr	r3, .L241+4
	add	r1, r5, #8
	add	r0, r5, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L241+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L241+12
	mov	lr, pc
	bx	r3
	mov	r4, #512
	mov	lr, #67108864
	ldr	ip, [r5, #4]
	ldr	r1, [r5, #8]
	ldr	r3, .L241+16
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L241+20
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
	ldr	r2, .L241+24
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L241+28
	mov	lr, pc
	bx	r3
	ldr	r6, .L241+32
	ldr	r3, .L241+36
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L241+40
	mov	lr, pc
	bx	r4
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L237
.L220:
	ldr	r3, .L241+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L238
.L221:
	ldr	r3, .L241+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L239
.L222:
	ldr	r3, .L241+52
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L219
	ldr	r3, .L241+56
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L240
.L219:
	pop	{r4, r5, r6, lr}
	bx	lr
.L239:
	bl	goToPhaseThreeInstructions
	b	.L222
.L238:
	bl	goToLose
	b	.L221
.L237:
	ldr	r3, .L241+60
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L241+64
	ldr	r3, .L241+68
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r3, [r6]
	b	.L220
.L240:
	ldr	r2, .L241+72
	ldr	r3, .L241+76
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	b	goToPause
.L242:
	.align	2
.L241:
	.word	.LANCHOR0
	.word	updatePlayerTwo
	.word	updateSnow
	.word	updateHealth
	.word	guide
	.word	shadowOAM
	.word	drawPlayerTwo
	.word	drawSnow
	.word	playSound
	.word	drawHealth
	.word	DMANow
	.word	gameOver
	.word	winPhaseTwo
	.word	oldButtons
	.word	buttons
	.word	healthaudio_length
	.word	healthaudio_data
	.word	playSoundB
	.word	state
	.word	prevState
	.size	phaseTwo, .-phaseTwo
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
	ldr	r3, .L245
	mov	lr, pc
	bx	r3
	ldr	r3, .L245+4
	ldr	r0, .L245+8
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r3, .L245+12
	mov	lr, pc
	bx	r3
	mov	r4, #67108864
	mov	r5, #0
	mov	r2, #5888
	strh	r5, [r4]	@ movhi
	ldr	r3, .L245+16
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L245+20
	ldr	r1, .L245+24
	ldr	r0, .L245+28
	strh	r5, [r4, #16]	@ movhi
	mov	r3, #256
	strh	r5, [r4, #18]	@ movhi
	strh	r2, [r4, #8]	@ movhi
	strh	r1, [r4, #10]	@ movhi
	mov	r2, #83886080
	strh	r0, [r4, #12]	@ movhi
	ldr	r1, .L245+32
	ldr	r4, .L245+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L245+40
	ldr	r1, .L245+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L245+48
	ldr	r1, .L245+52
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L245+56
	ldr	r1, .L245+60
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L245+64
	ldr	r1, .L245+68
	mov	lr, pc
	bx	r4
	mov	r1, #10
	mov	r0, #96
	ldr	r2, .L245+72
	ldr	r3, .L245+76
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L246:
	.align	2
.L245:
	.word	stopSounds
	.word	winaudio_length
	.word	winaudio_data
	.word	playSoundA
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
	ldr	r1, .L264
	push	{r4, r5, r6, lr}
	sub	r0, r1, #4
	ldr	r3, .L264+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L264+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L264+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L264+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L264+20
	ldrh	r3, [r3, #12]
	rsb	r2, r3, #19
	cmp	r2, #2
	bhi	.L248
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
	strh	r3, [r1, #82]	@ movhi
.L249:
	ldr	r3, .L264+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L251
	ldr	r0, .L264+28
	ldr	lr, .L264+32
	ldr	ip, .L264+36
	ldr	r4, .L264+40
	ldr	r5, .L264+44
.L250:
	sub	r2, r0, #64
.L253:
	ldrh	r3, [r2]
	and	r1, r3, lr
	cmp	r1, ip
	andeq	r3, r3, r4
	orreq	r3, r3, #105
	strheq	r3, [r2]	@ movhi
	add	r2, r2, #2
	cmp	r2, r0
	bne	.L253
	add	r0, r0, #64
	cmp	r0, r5
	bne	.L250
.L251:
	mov	lr, #67108864
	mov	r4, #512
	ldr	r3, .L264+48
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #8]
	ldr	r3, .L264+52
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L264+56
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
	ldr	r2, .L264+60
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L264+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L264+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L264+72
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L264+76
	mov	lr, pc
	bx	r4
	ldr	r3, .L264+80
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L262
.L254:
	ldr	r3, .L264+84
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L263
	pop	{r4, r5, r6, lr}
	bx	lr
.L248:
	rsb	r2, r3, #20
	cmp	r2, #3
	ble	.L249
	mov	r3, #67108864
	mov	r2, #0
	strh	r2, [r3, #76]	@ movhi
	ldr	r1, .L264+88
	ldrh	r0, [r3, #8]
	and	r1, r1, r0
	strh	r1, [r3, #8]	@ movhi
	ldr	r1, .L264+88
	ldrh	r0, [r3, #10]
	and	r1, r1, r0
	strh	r1, [r3, #10]	@ movhi
	ldr	r1, .L264+88
	ldrh	r0, [r3, #12]
	and	r1, r1, r0
	strh	r1, [r3, #12]	@ movhi
	strh	r2, [r3, #80]	@ movhi
	strh	r2, [r3, #82]	@ movhi
	b	.L249
.L263:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L262:
	bl	goToLose
	b	.L254
.L265:
	.align	2
.L264:
	.word	.LANCHOR0+8
	.word	updatePlayerThree
	.word	updateSnowThree
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
	.word	drawSnowThree
	.word	drawHealth
	.word	drawTimer
	.word	DMANow
	.word	gameOver
	.word	winPhaseThree
	.word	65471
	.size	phaseThree, .-phaseThree
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
	ldr	r6, .L268
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L268+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L268+8
	ldr	r1, .L268+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L268+16
	mov	r3, #1024
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L268+20
	ldr	r1, .L268+24
	mov	lr, pc
	bx	r6
	mov	r2, #11
	ldr	r3, .L268+28
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L269:
	.align	2
.L268:
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
	ldr	r10, .L302
	ldrh	r3, [r10]
	tst	r3, #128
	bne	.L297
	ldr	r6, .L302+4
.L271:
	tst	r3, #64
	bne	.L301
.L274:
	ldr	r3, [r6, #88]
	ldr	r9, .L302+8
	cmp	r3, #0
	ldr	r7, .L302+12
	streq	r9, [r6, #88]
.L280:
	ldr	r3, .L302+16
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	mov	r5, #0
	ldrh	fp, [r3, #4]
	ldr	r8, .L302+20
.L276:
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
	bne	.L276
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
	beq	.L270
	ldr	r3, .L302+24
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L270
	ldr	r3, [r6, #84]
	cmp	r3, #0
	beq	.L279
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToGameInstructions
.L270:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L297:
	ldr	r2, .L302+24
	ldrh	r2, [r2]
	tst	r2, #128
	ldr	r6, .L302+4
	bne	.L271
	ldr	r2, [r6, #84]
	cmp	r2, #0
	bne	.L271
	ldr	r3, .L302+28
	ldr	r9, .L302+8
	ldr	r1, [r3]
	ldr	r0, .L302+32
	ldr	r3, .L302+36
	mov	lr, pc
	bx	r3
	mov	r2, r9
	ldr	r7, .L302+12
	add	r0, r9, #12
.L272:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L272
	mov	r3, #1
	mov	r2, #0
	str	r0, [r6, #88]
	str	r3, [r6, #84]
	str	r3, [r9, #24]
	str	r2, [r6, #92]
	b	.L280
.L301:
	ldr	r3, .L302+24
	ldrh	r2, [r3]
	ands	r2, r2, #64
	bne	.L274
	ldr	r3, [r6, #84]
	cmp	r3, #0
	beq	.L274
	ldr	r3, .L302+28
	ldr	r0, .L302+32
	ldr	r1, [r3]
	ldr	r3, .L302+36
	mov	lr, pc
	bx	r3
	ldr	r2, .L302+40
	ldr	r7, .L302+12
	add	r0, r2, #12
.L275:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L275
	mov	r3, #0
	mov	r2, #1
	ldr	r9, .L302+8
	str	r3, [r6, #84]
	str	r3, [r6, #92]
	str	r2, [r9, #24]
	str	r9, [r6, #88]
	b	.L280
.L279:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToStart
.L303:
	.align	2
.L302:
	.word	oldButtons
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	splashp3Pal
	.word	waitForVBlank
	.word	blendColor
	.word	buttons
	.word	click_length
	.word	click_data
	.word	playSoundB
	.word	.LANCHOR2+12
	.size	splashScreen, .-splashScreen
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
	ldr	r3, .L309
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L309+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L310:
	.align	2
.L309:
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
	mov	r2, #0
	ldr	r0, .L315
	ldr	r3, .L315+4
	ldr	r1, .L315+8
	str	lr, [sp, #-4]!
	ldr	ip, .L315+12
	ldr	lr, .L315+16
	str	r2, [r0]
	str	r2, [r3]
	ldr	r0, .L315+20
	ldr	r3, .L315+24
	str	r2, [r1]
	ldr	r1, .L315+28
	str	r2, [lr]
	str	r2, [ip]
	str	r2, [r0, #4]
	str	r2, [r0, #8]
	str	r2, [r0, #12]
	str	r2, [r0, #28]
	str	r2, [r0, #24]
	str	r2, [r0]
	str	r2, [r0, #32]
	str	r2, [r0, #36]
	str	r2, [r0, #96]
	str	r2, [r0, #100]
	sub	r1, r1, r3
	add	r0, r3, #64
.L312:
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	strb	r2, [r3, #1]!
	cmp	r3, r0
	bne	.L312
	ldr	lr, [sp], #4
	bx	lr
.L316:
	.align	2
.L315:
	.word	gameOver
	.word	winPhaseOne
	.word	winPhaseTwo
	.word	next
	.word	winPhaseThree
	.word	.LANCHOR0
	.word	originalTile358-1
	.word	100702592
	.size	resetGameState, .-resetGameState
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
	mov	r1, #100663296
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r0, .L333
	ldr	r2, .L333+4
	sub	sp, sp, #44
	strh	r0, [r3]	@ movhi
	ldr	r3, .L333+8
	str	r1, [r2]
	ldr	fp, .L333+12
	mov	lr, pc
	bx	r3
	mov	r2, #83886080
	ldr	r1, .L333+16
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	fp
	ldr	r0, .L333+20
	ldr	r3, .L333+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L333+28
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L333+32
	ldr	r3, .L333+36
	add	r9, sp, #4
	mov	lr, pc
	bx	r3
	mov	r2, r9
	ldr	r3, .L333+16
	add	r0, r3, #34
.L318:
	ldrh	r1, [r3], #2
	cmp	r3, r0
	strh	r1, [r2], #2	@ movhi
	bne	.L318
	mov	r10, #0
	ldr	r5, .L333+40
	ldr	r8, .L333+44
	ldr	r7, .L333+48
	sub	r5, r5, r9
	add	r6, r9, #34
.L320:
	mov	lr, pc
	bx	r8
	mov	r4, r9
.L319:
	ldrh	r0, [r4], #2
	mov	r3, #120
	mov	r2, r10
	mov	r1, #0
	mov	lr, pc
	bx	r7
	cmp	r4, r6
	strh	r0, [r5, r4]	@ movhi
	bne	.L319
	add	r10, r10, #1
	cmp	r10, #121
	bne	.L320
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
	ldr	r1, .L333+52
	mov	lr, pc
	bx	fp
	ldr	r0, .L333+56
	ldr	r3, .L333+24
	mov	lr, pc
	bx	r3
	mov	r4, #0
	mov	r5, #83886080
	ldr	r6, .L333+60
	ldr	r7, .L333+64
	b	.L328
.L326:
	add	r4, r4, #1
.L328:
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
	beq	.L326
	cmp	r4, #60
	mvneq	r3, #32768
	strheq	r3, [r5, #34]	@ movhi
	beq	.L326
	cmp	r4, #90
	mvneq	r3, #32768
	strheq	r3, [r5, #36]	@ movhi
	beq	.L326
	cmp	r4, #179
	bne	.L326
	mov	r2, #83886080
	ldr	r1, .L333+68
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	fp
	ldr	r0, .L333+72
	ldr	r3, .L333+24
	mov	lr, pc
	bx	r3
	bl	resetGameState
	mov	r2, #0
	ldr	r3, .L333+76
	strb	r2, [r3]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L334:
	.align	2
.L333:
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
	.word	state
	.size	goToSplashScreen, .-goToSplashScreen
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
	ldr	r5, .L342
	ldr	r3, .L342+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #8]
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
	str	r1, [r5, #4]
	lsl	r3, r3, #16
	lsl	lr, lr, #16
	lsl	r0, r0, #16
	lsl	r2, r2, #16
	lsl	ip, ip, #16
	lsl	r1, r1, #16
	lsr	lr, lr, #16
	lsr	ip, ip, #16
	lsr	r0, r0, #16
	lsr	r1, r1, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r1, [r4, #16]	@ movhi
	strh	r2, [r4, #18]	@ movhi
	strh	lr, [r4, #20]	@ movhi
	ldr	r2, .L342+8
	strh	ip, [r4, #22]	@ movhi
	strh	r3, [r4, #24]	@ movhi
	strh	r0, [r4, #26]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L342+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L342+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L342+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L342+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L335
	ldr	r3, .L342+28
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L341
.L335:
	pop	{r4, r5, r6, lr}
	bx	lr
.L341:
	bl	goToSplashScreen
	ldr	r3, .L342+32
	strb	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L343:
	.align	2
.L342:
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
	ldr	r3, .L369
	mov	lr, pc
	bx	r3
	ldr	r4, .L369+4
	ldr	r7, .L369+8
	ldr	r6, .L369+12
	ldr	fp, .L369+16
	ldr	r10, .L369+20
	ldr	r9, .L369+24
	ldr	r8, .L369+28
	ldr	r5, .L369+32
.L358:
	ldrh	r1, [r4]
	strh	r1, [r7]	@ movhi
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L345
.L347:
	.word	.L357
	.word	.L356
	.word	.L355
	.word	.L354
	.word	.L353
	.word	.L352
	.word	.L351
	.word	.L350
	.word	.L349
	.word	.L348
	.word	.L348
	.word	.L346
.L348:
	mov	lr, pc
	bx	r9
.L345:
	mov	lr, pc
	bx	r8
	b	.L358
.L349:
	ldr	r3, .L369+36
	mov	lr, pc
	bx	r3
	b	.L345
.L350:
	ldr	r3, .L369+40
	mov	lr, pc
	bx	r3
	b	.L345
.L351:
	tst	r1, #8
	beq	.L345
	tst	r3, #8
	bne	.L345
	ldr	r3, .L369+44
	mov	lr, pc
	bx	r3
	b	.L345
.L352:
	ldr	r3, .L369+48
	mov	lr, pc
	bx	r3
	b	.L345
.L356:
	mov	lr, pc
	bx	r10
	b	.L345
.L346:
	tst	r1, #8
	beq	.L345
	tst	r3, #8
	bne	.L345
	ldr	r3, .L369+52
	mov	lr, pc
	bx	r3
	b	.L345
.L357:
	mov	lr, pc
	bx	fp
	b	.L345
.L354:
	ldr	r3, .L369+56
	mov	lr, pc
	bx	r3
	b	.L345
.L355:
	ldr	r3, .L369+60
	mov	lr, pc
	bx	r3
	b	.L345
.L353:
	tst	r1, #8
	beq	.L345
	tst	r3, #8
	bne	.L345
	ldr	r3, .L369+64
	mov	lr, pc
	bx	r3
	b	.L345
.L370:
	.align	2
.L369:
	.word	initialize
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
	.global	altIndices
	.global	primaryIndices
	.comm	originalTiles,128,4
	.global	bridgeUncovered
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
	.comm	savedFadePalette,512,4
	.global	flashFrame
	.global	isFlashing
	.global	tileFadeStep
	.global	tileFadeTimer
	.comm	originalTile358,64,4
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
	.comm	leftWallTouched,4,4
	.comm	winPhaseThree,4,4
	.comm	playerPaletteWork,512,4
	.comm	playSound,4,4
	.comm	winPhaseTwo,4,4
	.comm	snows,180,4
	.comm	playHealth,4,4
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
	.type	direction.4420, %object
	.size	direction.4420, 4
direction.4420:
	.word	1
	.type	shiftingRight, %object
	.size	shiftingRight, 4
shiftingRight:
	.word	1
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
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
	.type	tileAnimTimer.4503, %object
	.size	tileAnimTimer.4503, 4
tileAnimTimer.4503:
	.space	4
	.type	tileAnimState.4504, %object
	.size	tileAnimState.4504, 4
tileAnimState.4504:
	.space	4
	.type	swapDelayFrames.4526, %object
	.size	swapDelayFrames.4526, 4
swapDelayFrames.4526:
	.space	4
	.type	hasFlashedOnce.4527, %object
	.size	hasFlashedOnce.4527, 4
hasFlashedOnce.4527:
	.space	4
	.type	swapTimer.4524, %object
	.size	swapTimer.4524, 4
swapTimer.4524:
	.space	4
	.type	swapped.4525, %object
	.size	swapped.4525, 4
swapped.4525:
	.space	4
	.type	isFlashing.4502, %object
	.size	isFlashing.4502, 4
isFlashing.4502:
	.space	4
	.type	flashState.4499, %object
	.size	flashState.4499, 4
flashState.4499:
	.space	4
	.type	flashFrame.4501, %object
	.size	flashFrame.4501, 4
flashFrame.4501:
	.space	4
	.type	flashTimer.4500, %object
	.size	flashTimer.4500, 4
flashTimer.4500:
	.space	4
	.type	usingAltIndices.4423, %object
	.size	usingAltIndices.4423, 4
usingAltIndices.4423:
	.space	4
	.type	animatedIndices.4422, %object
	.size	animatedIndices.4422, 4
animatedIndices.4422:
	.space	4
	.type	t.4419, %object
	.size	t.4419, 4
t.4419:
	.space	4
	.type	isFlashing, %object
	.size	isFlashing, 4
isFlashing:
	.space	4
	.type	flashFrame, %object
	.size	flashFrame, 4
flashFrame:
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
