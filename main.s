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
	.word	unpauseSounds
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
	ldr	r3, .L20+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+32
	mov	lr, pc
	bx	r3
	mov	r1, #1
	mov	lr, #96
	ldr	r2, .L20+36
	ldr	ip, [r4, #16]
	ldr	r0, [r4, #20]
	ldr	r3, .L20+40
	strb	r1, [r2]
	stmib	r4, {r6, lr}
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	pop	{r4, r5, r6, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	unpauseSounds
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
	push	{r4, r5, r6, lr}
	mov	r0, #67108864
	mov	lr, #0
	mov	r3, #5888
	ldr	ip, .L55
	ldr	r2, .L55+4
	ldr	r1, .L55+8
	strh	lr, [r0]	@ movhi
	ldr	r4, .L55+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L55+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L55+20
	ldr	r1, .L55+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L55+28
	ldr	r1, .L55+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L55+36
	ldr	r1, .L55+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r1, .L55+44
	ldr	r2, .L55+48
	mov	lr, pc
	bx	r4
	ldr	r3, .L55+52
	ldr	r1, .L55+56
	add	r0, r3, #64
	sub	r1, r1, r3
.L50:
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	strb	r2, [r3, #1]!
	cmp	r3, r0
	bne	.L50
	mov	r3, #0
	ldr	r4, .L55+60
	ldr	r2, [r4]
	cmp	r2, r3
	str	r3, [r4, #32]
	str	r3, [r4, #36]
	beq	.L54
.L51:
	mov	r5, #0
	ldr	r3, .L55+64
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L55+68
	ldr	r3, .L55+72
	str	r5, [r4]
	mov	lr, pc
	bx	r3
	mov	r2, #3
	mov	r1, #96
	ldr	r3, .L55+76
	strb	r2, [r3]
	str	r5, [r4, #4]
	str	r1, [r4, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L54:
	ldr	r3, .L55+80
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+84
	mov	lr, pc
	bx	r3
	b	.L51
.L56:
	.align	2
.L55:
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
	.word	phasetwoaudio_length
	.word	phasetwoaudio_data
	.word	playSoundA
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
	ldr	r3, .L59
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+4
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L59+8
	ldr	r3, .L59+12
	mov	lr, pc
	bx	r3
	ldr	r6, .L59+16
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L59+20
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L59+24
	ldr	r1, .L59+28
	mov	lr, pc
	bx	r6
	ldr	r3, .L59+32
	ldr	r2, .L59+36
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L59+40
	ldr	r1, .L59+44
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L59+48
	mov	r0, #3
	ldr	r1, .L59+52
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r3, .L59+56
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L60:
	.align	2
.L59:
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
	ldr	r3, .L65
	mov	lr, pc
	bx	r3
	ldr	r3, .L65+4
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L65+8
	ldr	r3, .L65+12
	mov	lr, pc
	bx	r3
	mov	r0, #67108864
	mov	lr, #0
	mov	r3, #5888
	ldr	ip, .L65+16
	ldr	r2, .L65+20
	ldr	r1, .L65+24
	strh	lr, [r0]	@ movhi
	ldr	r4, .L65+28
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L65+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L65+36
	ldr	r1, .L65+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L65+44
	ldr	r1, .L65+48
	mov	lr, pc
	bx	r4
	ldr	r5, .L65+52
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L65+56
	ldr	r1, .L65+60
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L65+64
	ldr	r1, .L65+68
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L64
.L62:
	mov	r1, #5
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L65+72
	strb	r1, [r2]
	str	r3, [r5]
	str	r3, [r5, #4]
	str	r0, [r5, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L64:
	ldr	r3, .L65+76
	mov	lr, pc
	bx	r3
	ldr	r3, .L65+80
	mov	lr, pc
	bx	r3
	b	.L62
.L66:
	.align	2
.L65:
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
	ldr	r3, .L72
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L72+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseTwo
.L73:
	.align	2
.L72:
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
	ldr	r3, .L76
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+4
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L76+8
	ldr	r3, .L76+12
	mov	lr, pc
	bx	r3
	ldr	r6, .L76+16
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+20
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L76+24
	ldr	r1, .L76+28
	mov	lr, pc
	bx	r6
	ldr	r3, .L76+32
	ldr	r2, .L76+36
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L76+40
	ldr	r1, .L76+44
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L76+48
	mov	r0, #3
	ldr	r1, .L76+52
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r3, .L76+56
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L77:
	.align	2
.L76:
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
	ldr	r3, .L80
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+4
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L80+8
	ldr	r3, .L80+12
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r0, #67108864
	mov	r3, #5888
	ldr	ip, .L80+16
	ldr	r2, .L80+20
	ldr	r1, .L80+24
	strh	r5, [r0]	@ movhi
	ldr	r4, .L80+28
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L80+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L80+36
	ldr	r1, .L80+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L80+44
	ldr	r1, .L80+48
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L80+52
	ldr	r1, .L80+56
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L80+60
	ldr	r1, .L80+64
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L80+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+72
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+76
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L80+80
	ldr	r3, .L80+84
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L81:
	.align	2
.L80:
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
	ldr	r3, .L87
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L87+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseThree
.L88:
	.align	2
.L87:
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
	ldr	r3, .L91
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+4
	ldr	r2, .L91+8
	ldr	r1, .L91+12
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r4, #12]	@ movhi
	mov	r2, #83886080
	ldr	r4, .L91+16
	ldr	r1, .L91+20
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L91+24
	ldr	r1, .L91+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L91+32
	ldr	r1, .L91+36
	mov	lr, pc
	bx	r4
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
	mov	r1, #8
	mov	r0, #96
	ldr	r2, .L91+56
	ldr	r3, .L91+60
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L92:
	.align	2
.L91:
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
	ldr	r4, .L119
	sub	sp, sp, #12
	ldr	r3, .L119+4
	mov	lr, pc
	bx	r3
	add	r0, r4, #4
	add	r1, r4, #8
	ldr	r3, .L119+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L119+12
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L119+16
	mov	lr, pc
	bx	r2
	ldr	r3, .L119+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L119+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L119+28
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #40]
	orrs	r3, r2, r3
	bne	.L95
	mov	r5, #27
	mov	lr, #364
.L94:
	mov	r1, #57
	asr	ip, r5, #5
	add	ip, ip, #9
	and	r0, r5, #31
	lsl	ip, ip, #1
	lsl	r0, r0, #5
.L96:
	add	r2, ip, r1, asr #5
	and	r3, r1, #31
	lsl	r2, r2, #11
	add	r3, r3, r0
	add	r1, r1, #1
	add	r2, r2, #100663296
	lsl	r3, r3, #1
	cmp	r1, #67
	strh	lr, [r2, r3]	@ movhi
	bne	.L96
	add	r5, r5, #1
	cmp	r5, #37
	bne	.L94
	mov	r3, #1
	str	r3, [r4, #40]
.L95:
	ldr	r3, .L119+32
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L115
.L98:
	ldr	r3, .L119+36
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L116
.L99:
	ldr	ip, .L119+40
	ldr	r3, [ip]
	add	r3, r3, #1
	cmp	r3, #15
	strle	r3, [ip]
	bgt	.L117
.L101:
	ldr	r3, .L119+44
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L93
	ldr	r3, .L119+48
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L118
.L93:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L116:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L99
	ldr	r3, .L119+52
	mov	lr, pc
	bx	r3
	bl	goToPhaseOne
	b	.L99
.L117:
	ldr	r6, .L119+56
	ldr	r3, [r6]
	mov	lr, #0
	rsbs	r3, r3, #1
	movcc	r3, #0
	ldr	r5, .L119+60
	ldr	r7, .L119+64
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
	b	.L101
.L115:
	ldr	r3, .L119+68
	mov	lr, pc
	bx	r3
	bl	goToStartInstructions
	b	.L98
.L118:
	ldr	r3, .L119+72
	ldr	r2, .L119+76
	ldr	ip, [r3, #16]
	ldr	r0, [r3, #20]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L119+80
	ldr	r3, .L119+68
	str	ip, [r4, #16]
	str	r0, [r4, #20]
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToPause
.L120:
	.align	2
.L119:
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
	.word	pauseSounds
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
	ldr	r2, .L136
	ldr	ip, .L136+4
	strh	r2, [r3]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r3, .L136+8
	ldr	r1, .L136+12
	ldr	r4, .L136+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r3, .L136+20
	ldr	r0, .L136+24
	mov	lr, pc
	bx	r3
	mov	r3, #8
	ldr	r2, .L136+28
	ldrh	r2, [r2]
	ldr	r4, .L136+32
	tst	r2, #4
	strb	r3, [r4]
	beq	.L121
	ldr	r3, .L136+36
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L121
	mov	r1, #1
	ldr	r5, .L136+40
	ldrb	r3, [r5]	@ zero_extendqisi2
	ldr	r2, .L136+44
	sub	r3, r3, #1
	str	r1, [r2]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L123
.L125:
	.word	.L130
	.word	.L129
	.word	.L128
	.word	.L127
	.word	.L126
	.word	.L124
.L124:
	bl	goToPhaseThreeInstructions
.L131:
	ldrb	r3, [r5]	@ zero_extendqisi2
	strb	r3, [r4]
.L121:
	pop	{r4, r5, r6, lr}
	bx	lr
.L130:
	bl	goToStartThree
	b	.L131
.L129:
	bl	goToStartInstructions
	b	.L131
.L128:
	bl	goToPhaseOne
	b	.L131
.L127:
	bl	goToPhaseTwoInstructions
	b	.L131
.L126:
	bl	goToPhaseTwo
	b	.L131
.L123:
	bl	goToStart
	b	.L131
.L137:
	.align	2
.L136:
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
	ldr	r3, .L140
	mov	lr, pc
	bx	r3
	ldr	r3, .L140+4
	ldr	r0, .L140+8
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r3, .L140+12
	mov	lr, pc
	bx	r3
	mov	r4, #67108864
	mov	r5, #0
	mov	r2, #5888
	strh	r5, [r4, #80]	@ movhi
	ldr	r3, .L140+16
	strh	r5, [r4, #82]	@ movhi
	strh	r5, [r4, #82]	@ movhi
	strh	r5, [r4, #76]	@ movhi
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L140+20
	ldr	r2, .L140+24
	ldr	r1, .L140+28
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r4, #12]	@ movhi
	mov	r2, #83886080
	ldr	r4, .L140+32
	ldr	r1, .L140+36
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L140+40
	ldr	r1, .L140+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L140+48
	ldr	r1, .L140+52
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L140+56
	ldr	r1, .L140+60
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L140+64
	ldr	r1, .L140+68
	mov	lr, pc
	bx	r4
	mov	r1, #9
	mov	r0, #96
	ldr	r2, .L140+72
	ldr	r3, .L140+76
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L141:
	.align	2
.L140:
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
	ldr	r4, .L213
	ldr	r3, .L213+4
	add	r1, r4, #8
	add	r0, r4, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L213+8
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
	ble	.L148
	mov	r2, #0
	ldr	r3, [r4, #48]
	sub	r0, r3, r2
	rsbs	r3, r0, #0
	adc	r3, r3, r0
	str	r2, [r4, #44]
	str	r3, [r4, #48]
	ldr	r0, .L213+12
	ldr	lr, .L213+16
	ldr	ip, .L213+20
	ldr	r5, .L213+24
.L144:
	sub	r2, r0, #64
.L147:
	ldrh	r3, [r2]
	and	r1, r3, lr
	cmp	r1, #231
	and	r3, r3, ip
	orreq	r3, r3, #255
	strheq	r3, [r2]	@ movhi
	beq	.L146
	cmp	r1, #255
	orreq	r3, r3, #231
	strheq	r3, [r2]	@ movhi
.L146:
	add	r2, r2, #2
	cmp	r0, r2
	bne	.L147
	add	r0, r0, #64
	cmp	r0, r5
	bne	.L144
.L148:
	ldr	r3, [r4, #32]
	add	r3, r3, #1
	tst	r3, #3
	str	r3, [r4, #32]
	bne	.L152
	ldr	r3, [r4, #36]
	cmp	r3, #99
	bgt	.L152
	ldr	r6, .L213+28
	add	r3, r3, #1
	str	r3, [r4, #36]
	ldr	r8, .L213+32
	add	r7, r6, #64
.L154:
	ldrb	r3, [r6, #1]!	@ zero_extendqisi2
	lsl	r5, r3, #1
	cmp	r3, #0
	add	r5, r5, #83886080
	beq	.L153
	mov	r3, #2000
	mov	r1, #0
	ldr	r2, [r4, #36]
	ldrh	r0, [r5]
	mov	lr, pc
	bx	r8
	strh	r0, [r5]	@ movhi
.L153:
	cmp	r7, r6
	bne	.L154
.L152:
	ldr	r3, [r4, #52]
	add	r3, r3, #1
	cmp	r3, #200
	str	r3, [r4, #52]
	ble	.L151
	ldr	r10, [r4, #56]
	cmp	r10, #0
	beq	.L206
.L151:
	ldr	r3, [r4, #68]
	cmp	r3, #0
	bne	.L164
.L172:
	mov	r6, #512
	ldr	r3, .L213+36
	ldrb	r2, [r3, #56]	@ zero_extendqisi2
	ldr	r5, .L213+40
	lsl	r2, r2, #3
	strh	r6, [r5, r2]	@ movhi
	ldr	r3, .L213+44
	mov	lr, pc
	bx	r3
	ldr	r4, .L213+48
	ldr	r3, .L213+52
	mov	lr, pc
	bx	r3
	mov	r3, r6
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r5, .L213+56
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L207
	ldr	r3, .L213+60
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L208
.L176:
	ldr	r3, .L213+64
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L209
.L177:
	ldr	r3, .L213+68
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L142
	ldr	r3, .L213+72
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L210
.L142:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L206:
	ldr	r3, [r4, #60]
	add	r3, r3, #1
	cmp	r3, #60
	strle	r3, [r4, #60]
	ble	.L151
	ldr	r5, [r4, #64]
	mov	r2, #1
	rsbs	r1, r5, #1
	movcc	r1, #0
	ldr	r3, .L213+76
	str	r10, [r4, #60]
	str	r10, [r4, #72]
	str	r10, [r4, #76]
	str	r2, [r4, #68]
	str	r2, [r4, #56]
	str	r1, [r4, #64]
	add	r0, r3, #512
	rsb	r1, r3, #83886080
.L156:
	ldrh	r2, [r1, r3]
	strh	r2, [r3, #2]!	@ movhi
	cmp	r3, r0
	bne	.L156
	ldr	r0, .L213+24
	ldr	r7, .L213+80
	ldr	r8, .L213+84
	ldr	r6, .L213+88
.L157:
	ldr	lr, .L213+16
	ldr	ip, .L213+20
	ldr	r9, .L213+88
	sub	r2, r0, #64
	b	.L162
.L212:
	cmp	r1, r6
	orreq	r3, r3, #320
	orreq	r3, r3, #2
	strheq	r3, [r2]	@ movhi
	beq	.L160
	orr	r3, r3, #344
	cmp	r1, #348
	orr	r3, r3, #3
	bne	.L160
.L205:
	strh	r3, [r2]	@ movhi
.L160:
	add	r2, r2, #2
	cmp	r0, r2
	beq	.L211
.L162:
	ldrh	r3, [r2]
	cmp	r5, #0
	and	r1, r3, lr
	and	r3, r3, ip
	bne	.L212
	cmp	r1, r7
	orreq	r3, r3, r9
	strheq	r3, [r2]	@ movhi
	beq	.L160
	cmp	r1, r8
	bne	.L160
	orr	r3, r3, #348
	b	.L205
.L164:
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	cmp	r3, #8
	ldr	r10, [r4, #76]
	ble	.L163
	mov	r2, #0
	ldr	r3, [r4, #72]
	sub	r1, r3, r2
	rsbs	r3, r1, #0
	adc	r3, r3, r1
	add	r10, r10, #1
	str	r10, [r4, #76]
	str	r3, [r4, #72]
	str	r2, [r4, #80]
.L168:
	cmp	r10, #3
	ble	.L169
	mov	r3, #0
	ldr	r2, .L213+28
	str	r3, [r4, #68]
	ldr	r0, .L213+92
	add	r1, r2, #64
.L171:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	lslne	r3, r3, #1
	addne	r3, r3, #83886080
	strhne	r0, [r3]	@ movhi
	cmp	r1, r2
	bne	.L171
	b	.L172
.L207:
	ldr	r3, .L213+96
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L213+100
	ldr	r3, .L213+104
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r3, [r4]
	ldr	r3, .L213+60
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L176
.L208:
	bl	goToLose
	ldr	r3, .L213+64
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L177
.L209:
	bl	goToPhaseTwoInstructions
	b	.L177
.L169:
	ldr	r2, .L213+28
	ldr	r5, [r4, #72]
	ldr	r4, .L213+108
	add	lr, r2, #64
.L175:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	lsl	r3, r3, #1
	beq	.L173
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
.L173:
	cmp	lr, r2
	bne	.L175
	b	.L172
.L211:
	ldr	r3, .L213+112
	add	r0, r0, #64
	cmp	r0, r3
	bne	.L157
	mov	r3, #1
.L163:
	str	r3, [r4, #80]
	b	.L168
.L210:
	ldr	r2, .L213+116
	ldr	r3, .L213+120
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	goToPause
.L214:
	.align	2
.L213:
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #67108864
	mov	r5, #512
	ldr	r6, .L237
	ldr	r3, .L237+4
	add	r1, r6, #8
	add	r0, r6, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L237+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L237+12
	mov	lr, pc
	bx	r3
	ldmib	r6, {r3, ip}
	ldr	r1, .L237+16
	add	r0, r3, r3, lsr #31
	add	r2, ip, ip, lsr #31
	ldrb	lr, [r1, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	lsl	r3, r3, #16
	ldr	r6, .L237+20
	lsr	r3, r3, #16
	lsl	r0, r0, #16
	lsl	ip, ip, #16
	lsl	r2, r2, #16
	strh	r3, [r4, #16]	@ movhi
	lsr	r0, r0, #16
	lsl	r3, lr, #3
	lsr	ip, ip, #16
	lsr	r2, r2, #16
	strh	ip, [r4, #18]	@ movhi
	ldr	r1, .L237+24
	strh	r0, [r4, #20]	@ movhi
	strh	r2, [r4, #22]	@ movhi
	strh	r5, [r6, r3]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L237+28
	mov	lr, pc
	bx	r3
	ldr	r7, .L237+32
	ldr	r3, .L237+36
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r1, r6
	mov	r2, #117440512
	mov	r0, #3
	ldr	r5, .L237+40
	mov	lr, pc
	bx	r5
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L233
.L216:
	ldr	r3, .L237+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L234
.L217:
	ldr	r3, .L237+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L235
.L218:
	ldr	r3, .L237+52
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L215
	ldr	r3, .L237+56
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L236
.L215:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L235:
	bl	goToPhaseThreeInstructions
	b	.L218
.L234:
	bl	goToLose
	b	.L217
.L233:
	mov	r5, #0
	ldr	r2, .L237+60
	ldr	r3, .L237+64
	ldr	ip, .L237+68
	strh	r5, [r2, #6]	@ movhi
	ldr	r1, [r3]
	str	r5, [r4, #208]
	mov	r2, r5
	ldr	r0, .L237+72
	ldr	r3, .L237+76
	str	r5, [ip, #8]
	mov	lr, pc
	bx	r3
	str	r5, [r7]
	b	.L216
.L236:
	ldr	r2, .L237+80
	ldr	r3, .L237+84
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	b	goToPause
.L238:
	.align	2
.L237:
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
	.word	67109120
	.word	healthaudio_length
	.word	soundB
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
	ldr	r3, .L241
	mov	lr, pc
	bx	r3
	ldr	r3, .L241+4
	ldr	r0, .L241+8
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r3, .L241+12
	mov	lr, pc
	bx	r3
	mov	r4, #67108864
	mov	r5, #0
	mov	r2, #5888
	strh	r5, [r4]	@ movhi
	ldr	r3, .L241+16
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L241+20
	ldr	r1, .L241+24
	ldr	r0, .L241+28
	strh	r5, [r4, #16]	@ movhi
	mov	r3, #256
	strh	r5, [r4, #18]	@ movhi
	strh	r2, [r4, #8]	@ movhi
	strh	r1, [r4, #10]	@ movhi
	mov	r2, #83886080
	strh	r0, [r4, #12]	@ movhi
	ldr	r1, .L241+32
	ldr	r4, .L241+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L241+40
	ldr	r1, .L241+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L241+48
	ldr	r1, .L241+52
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L241+56
	ldr	r1, .L241+60
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L241+64
	ldr	r1, .L241+68
	mov	lr, pc
	bx	r4
	mov	r1, #10
	mov	r0, #96
	ldr	r2, .L241+72
	ldr	r3, .L241+76
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L242:
	.align	2
.L241:
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
	ldr	r1, .L260
	push	{r4, r5, r6, lr}
	sub	r0, r1, #4
	ldr	r3, .L260+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L260+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L260+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L260+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L260+20
	ldrh	r3, [r3, #12]
	rsb	r2, r3, #19
	cmp	r2, #2
	bhi	.L244
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
.L245:
	ldr	r3, .L260+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L247
	ldr	r0, .L260+28
	ldr	lr, .L260+32
	ldr	ip, .L260+36
	ldr	r4, .L260+40
	ldr	r5, .L260+44
.L246:
	sub	r2, r0, #64
.L249:
	ldrh	r3, [r2]
	and	r1, r3, lr
	cmp	r1, ip
	andeq	r3, r3, r4
	orreq	r3, r3, #105
	strheq	r3, [r2]	@ movhi
	add	r2, r2, #2
	cmp	r2, r0
	bne	.L249
	add	r0, r0, #64
	cmp	r0, r5
	bne	.L246
.L247:
	mov	lr, #67108864
	mov	r4, #512
	ldr	r3, .L260+48
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #8]
	ldr	r3, .L260+52
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L260+56
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
	ldr	r2, .L260+60
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L260+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L260+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L260+72
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L260+76
	mov	lr, pc
	bx	r4
	ldr	r3, .L260+80
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L258
.L250:
	ldr	r3, .L260+84
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L259
	pop	{r4, r5, r6, lr}
	bx	lr
.L244:
	rsb	r2, r3, #20
	cmp	r2, #3
	ble	.L245
	mov	r3, #67108864
	mov	r2, #0
	strh	r2, [r3, #76]	@ movhi
	ldr	r1, .L260+88
	ldrh	r0, [r3, #8]
	and	r1, r1, r0
	strh	r1, [r3, #8]	@ movhi
	ldr	r1, .L260+88
	ldrh	r0, [r3, #10]
	and	r1, r1, r0
	strh	r1, [r3, #10]	@ movhi
	ldr	r1, .L260+88
	ldrh	r0, [r3, #12]
	and	r1, r1, r0
	strh	r1, [r3, #12]	@ movhi
	strh	r2, [r3, #80]	@ movhi
	strh	r2, [r3, #82]	@ movhi
	b	.L245
.L259:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L258:
	bl	goToLose
	b	.L250
.L261:
	.align	2
.L260:
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
	ldr	r6, .L264
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L264+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L264+8
	ldr	r1, .L264+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L264+16
	mov	r3, #1024
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L264+20
	ldr	r1, .L264+24
	mov	lr, pc
	bx	r6
	mov	r2, #11
	ldr	r3, .L264+28
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L265:
	.align	2
.L264:
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
	ldr	r10, .L298
	ldrh	r3, [r10]
	tst	r3, #128
	bne	.L293
	ldr	r6, .L298+4
.L267:
	tst	r3, #64
	bne	.L297
.L270:
	ldr	r3, [r6, #88]
	ldr	r9, .L298+8
	cmp	r3, #0
	ldr	r7, .L298+12
	streq	r9, [r6, #88]
.L276:
	ldr	r3, .L298+16
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	mov	r5, #0
	ldrh	fp, [r3, #4]
	ldr	r8, .L298+20
.L272:
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
	bne	.L272
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
	beq	.L266
	ldr	r3, .L298+24
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L266
	ldr	r3, [r6, #84]
	cmp	r3, #0
	beq	.L275
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToGameInstructions
.L266:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L293:
	ldr	r2, .L298+24
	ldrh	r2, [r2]
	tst	r2, #128
	ldr	r6, .L298+4
	bne	.L267
	ldr	r2, [r6, #84]
	cmp	r2, #0
	bne	.L267
	ldr	r3, .L298+28
	ldr	r9, .L298+8
	ldr	r1, [r3]
	ldr	r0, .L298+32
	ldr	r3, .L298+36
	mov	lr, pc
	bx	r3
	mov	r2, r9
	ldr	r7, .L298+12
	add	r0, r9, #12
.L268:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L268
	mov	r3, #1
	mov	r2, #0
	str	r0, [r6, #88]
	str	r3, [r6, #84]
	str	r3, [r9, #24]
	str	r2, [r6, #92]
	b	.L276
.L297:
	ldr	r3, .L298+24
	ldrh	r2, [r3]
	ands	r2, r2, #64
	bne	.L270
	ldr	r3, [r6, #84]
	cmp	r3, #0
	beq	.L270
	ldr	r3, .L298+28
	ldr	r0, .L298+32
	ldr	r1, [r3]
	ldr	r3, .L298+36
	mov	lr, pc
	bx	r3
	ldr	r2, .L298+40
	ldr	r7, .L298+12
	add	r0, r2, #12
.L271:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L271
	mov	r3, #0
	mov	r2, #1
	ldr	r9, .L298+8
	str	r3, [r6, #84]
	str	r3, [r6, #92]
	str	r2, [r9, #24]
	str	r9, [r6, #88]
	b	.L276
.L275:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToStart
.L299:
	.align	2
.L298:
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
	mov	r2, #0
	ldr	r0, .L311
	ldr	r3, .L311+4
	ldr	r1, .L311+8
	str	lr, [sp, #-4]!
	ldr	ip, .L311+12
	ldr	lr, .L311+16
	str	r2, [r0]
	str	r2, [r3]
	ldr	r0, .L311+20
	ldr	r3, .L311+24
	str	r2, [r1]
	ldr	r1, .L311+28
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
.L308:
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	strb	r2, [r3, #1]!
	cmp	r3, r0
	bne	.L308
	ldr	lr, [sp], #4
	bx	lr
.L312:
	.align	2
.L311:
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
	ldr	r0, .L329
	ldr	r2, .L329+4
	sub	sp, sp, #44
	strh	r0, [r3]	@ movhi
	ldr	r3, .L329+8
	str	r1, [r2]
	ldr	fp, .L329+12
	mov	lr, pc
	bx	r3
	mov	r2, #83886080
	ldr	r1, .L329+16
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	fp
	ldr	r0, .L329+20
	ldr	r3, .L329+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L329+28
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L329+32
	ldr	r3, .L329+36
	add	r9, sp, #4
	mov	lr, pc
	bx	r3
	mov	r2, r9
	ldr	r3, .L329+16
	add	r0, r3, #34
.L314:
	ldrh	r1, [r3], #2
	cmp	r3, r0
	strh	r1, [r2], #2	@ movhi
	bne	.L314
	mov	r10, #0
	ldr	r5, .L329+40
	ldr	r8, .L329+44
	ldr	r7, .L329+48
	sub	r5, r5, r9
	add	r6, r9, #34
.L316:
	mov	lr, pc
	bx	r8
	mov	r4, r9
.L315:
	ldrh	r0, [r4], #2
	mov	r3, #120
	mov	r2, r10
	mov	r1, #0
	mov	lr, pc
	bx	r7
	cmp	r4, r6
	strh	r0, [r5, r4]	@ movhi
	bne	.L315
	add	r10, r10, #1
	cmp	r10, #121
	bne	.L316
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
	ldr	r1, .L329+52
	mov	lr, pc
	bx	fp
	ldr	r0, .L329+56
	ldr	r3, .L329+24
	mov	lr, pc
	bx	r3
	mov	r4, #0
	mov	r5, #83886080
	ldr	r6, .L329+60
	ldr	r7, .L329+64
	b	.L324
.L322:
	add	r4, r4, #1
.L324:
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
	beq	.L322
	cmp	r4, #60
	mvneq	r3, #32768
	strheq	r3, [r5, #34]	@ movhi
	beq	.L322
	cmp	r4, #90
	mvneq	r3, #32768
	strheq	r3, [r5, #36]	@ movhi
	beq	.L322
	cmp	r4, #179
	bne	.L322
	mov	r2, #83886080
	ldr	r1, .L329+68
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	fp
	ldr	r0, .L329+72
	ldr	r3, .L329+24
	mov	lr, pc
	bx	r3
	bl	resetGameState
	mov	r2, #0
	ldr	r3, .L329+76
	strb	r2, [r3]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L330:
	.align	2
.L329:
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
	ldr	r3, .L333
	mov	lr, pc
	bx	r3
	ldr	r3, .L333+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L333+8
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #1
	ldrh	r3, [r2, #4]
	orr	r3, r3, #8
	strh	r3, [r2, #4]	@ movhi
	ldr	r3, .L333+12
	ldrh	r2, [r3]
	ldr	r0, .L333+16
	ldr	ip, .L333+20
	orr	r2, r2, r1
	strh	r2, [r3]	@ movhi
	pop	{r4, lr}
	str	ip, [r0, #4092]
	strh	r1, [r3, #8]	@ movhi
	b	goToSplashScreen
.L334:
	.align	2
.L333:
	.word	mgba_open
	.word	stopSounds
	.word	setupSounds
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	initialize, .-initialize
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
	.type	direction.4421, %object
	.size	direction.4421, 4
direction.4421:
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
	.type	tileAnimTimer.4504, %object
	.size	tileAnimTimer.4504, 4
tileAnimTimer.4504:
	.space	4
	.type	tileAnimState.4505, %object
	.size	tileAnimState.4505, 4
tileAnimState.4505:
	.space	4
	.type	swapDelayFrames.4527, %object
	.size	swapDelayFrames.4527, 4
swapDelayFrames.4527:
	.space	4
	.type	hasFlashedOnce.4528, %object
	.size	hasFlashedOnce.4528, 4
hasFlashedOnce.4528:
	.space	4
	.type	swapTimer.4525, %object
	.size	swapTimer.4525, 4
swapTimer.4525:
	.space	4
	.type	swapped.4526, %object
	.size	swapped.4526, 4
swapped.4526:
	.space	4
	.type	isFlashing.4503, %object
	.size	isFlashing.4503, 4
isFlashing.4503:
	.space	4
	.type	flashState.4500, %object
	.size	flashState.4500, 4
flashState.4500:
	.space	4
	.type	flashFrame.4502, %object
	.size	flashFrame.4502, 4
flashFrame.4502:
	.space	4
	.type	flashTimer.4501, %object
	.size	flashTimer.4501, 4
flashTimer.4501:
	.space	4
	.type	usingAltIndices.4424, %object
	.size	usingAltIndices.4424, 4
usingAltIndices.4424:
	.space	4
	.type	animatedIndices.4423, %object
	.size	animatedIndices.4423, 4
animatedIndices.4423:
	.space	4
	.type	t.4420, %object
	.size	t.4420, 4
t.4420:
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
