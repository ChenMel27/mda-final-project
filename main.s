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
	ldr	r3, .L26
	mov	lr, pc
	bx	r3
	mov	ip, #53760
	mov	r0, #67108864
	mov	r2, #0
	mov	r1, #4608
	ldr	r4, .L26+4
	ldr	r5, .L26+8
	str	r2, [r4]
	mov	r3, #256
	strh	r1, [r0]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #10]	@ movhi
	ldr	r1, .L26+12
	mov	r0, #3
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
	ldr	r3, [r4, #12]
	cmp	r3, #0
	bne	.L20
	mov	r5, #27
	mov	lr, #364
.L19:
	mov	r1, #57
	asr	ip, r5, #5
	add	ip, ip, #9
	and	r0, r5, #31
	lsl	ip, ip, #1
	lsl	r0, r0, #5
.L21:
	add	r2, ip, r1, asr #5
	and	r3, r1, #31
	lsl	r2, r2, #11
	add	r3, r3, r0
	add	r1, r1, #1
	add	r2, r2, #100663296
	lsl	r3, r3, #1
	cmp	r1, #67
	strh	lr, [r2, r3]	@ movhi
	bne	.L21
	add	r5, r5, #1
	cmp	r5, #37
	bne	.L19
	mov	r3, #0
	str	r3, [r4, #16]
.L20:
	ldr	r3, .L26+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L26+32
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r2, #96
	mov	ip, #1
	ldr	r0, .L26+36
	ldr	r3, .L26+40
	str	r1, [r4, #4]
	str	r2, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #24]
	strb	ip, [r0]
	str	r1, [r3, #16]
	str	r2, [r3, #20]
	pop	{r4, r5, r6, lr}
	bx	lr
.L27:
	.align	2
.L26:
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
	ldr	r6, .L30
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L30+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L30+8
	ldr	r1, .L30+12
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L30+16
	ldr	r1, .L30+20
	mov	lr, pc
	bx	r6
	ldr	r3, .L30+24
	ldr	r2, .L30+28
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L30+32
	ldr	r1, .L30+36
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L30+40
	ldr	r1, .L30+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #2
	ldr	r1, .L30+48
	ldr	r3, .L30+52
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #28]
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	.align	2
.L30:
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
	ldr	ip, .L61
	ldr	r2, .L61+4
	ldr	r1, .L61+8
	strh	lr, [r0]	@ movhi
	ldr	r4, .L61+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L61+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L61+20
	ldr	r1, .L61+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L61+28
	ldr	r1, .L61+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L61+36
	ldr	r1, .L61+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r1, .L61+44
	ldr	r2, .L61+48
	mov	lr, pc
	bx	r4
	ldr	r3, .L61+52
	ldr	r1, .L61+56
	add	r0, r3, #64
	sub	r1, r1, r3
.L56:
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	strb	r2, [r3, #1]!
	cmp	r3, r0
	bne	.L56
	mov	r3, #0
	ldr	r4, .L61+60
	ldr	r2, [r4]
	cmp	r2, r3
	str	r3, [r4, #36]
	str	r3, [r4, #40]
	beq	.L60
.L57:
	mov	r5, #0
	ldr	r3, .L61+64
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L61+68
	ldr	r3, .L61+72
	str	r5, [r4]
	mov	lr, pc
	bx	r3
	mov	r2, #3
	mov	r1, #96
	ldr	r3, .L61+76
	strb	r2, [r3]
	str	r5, [r4, #4]
	str	r1, [r4, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L60:
	ldr	r3, .L61+80
	mov	lr, pc
	bx	r3
	ldr	r3, .L61+84
	mov	lr, pc
	bx	r3
	b	.L57
.L62:
	.align	2
.L61:
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
	ldr	r3, .L65
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L65+4
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L65+8
	ldr	r3, .L65+12
	mov	lr, pc
	bx	r3
	ldr	r6, .L65+16
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L65+20
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L65+24
	ldr	r1, .L65+28
	mov	lr, pc
	bx	r6
	ldr	r3, .L65+32
	ldr	r2, .L65+36
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L65+40
	ldr	r1, .L65+44
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L65+48
	mov	r0, #3
	ldr	r1, .L65+52
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r3, .L65+56
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	.align	2
.L65:
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
	ldr	r3, .L71
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+4
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L71+8
	ldr	r3, .L71+12
	mov	lr, pc
	bx	r3
	mov	r0, #67108864
	mov	lr, #0
	mov	r3, #5888
	ldr	ip, .L71+16
	ldr	r2, .L71+20
	ldr	r1, .L71+24
	strh	lr, [r0]	@ movhi
	ldr	r4, .L71+28
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L71+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L71+36
	ldr	r1, .L71+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L71+44
	ldr	r1, .L71+48
	mov	lr, pc
	bx	r4
	ldr	r5, .L71+52
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L71+56
	ldr	r1, .L71+60
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L71+64
	ldr	r1, .L71+68
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L70
.L68:
	mov	r1, #5
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L71+72
	strb	r1, [r2]
	str	r3, [r5]
	str	r3, [r5, #4]
	str	r0, [r5, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L70:
	ldr	r3, .L71+76
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+80
	mov	lr, pc
	bx	r3
	b	.L68
.L72:
	.align	2
.L71:
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
	ldr	r3, .L78
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L78+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseTwo
.L79:
	.align	2
.L78:
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
	ldr	r3, .L82
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L82+4
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L82+8
	ldr	r3, .L82+12
	mov	lr, pc
	bx	r3
	ldr	r6, .L82+16
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L82+20
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L82+24
	ldr	r1, .L82+28
	mov	lr, pc
	bx	r6
	ldr	r3, .L82+32
	ldr	r2, .L82+36
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L82+40
	ldr	r1, .L82+44
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L82+48
	mov	r0, #3
	ldr	r1, .L82+52
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r3, .L82+56
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L83:
	.align	2
.L82:
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
	ldr	r3, .L86
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+4
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L86+8
	ldr	r3, .L86+12
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r0, #67108864
	mov	r3, #5888
	ldr	ip, .L86+16
	ldr	r2, .L86+20
	ldr	r1, .L86+24
	strh	r5, [r0]	@ movhi
	ldr	r4, .L86+28
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L86+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L86+36
	ldr	r1, .L86+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L86+44
	ldr	r1, .L86+48
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L86+52
	ldr	r1, .L86+56
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L86+60
	ldr	r1, .L86+64
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L86+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+72
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+76
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L86+80
	ldr	r3, .L86+84
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L87:
	.align	2
.L86:
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
	ldr	r3, .L93
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L93+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseThree
.L94:
	.align	2
.L93:
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
	ldr	r3, .L97
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L97+4
	ldr	r2, .L97+8
	ldr	r1, .L97+12
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r4, #12]	@ movhi
	mov	r2, #83886080
	ldr	r4, .L97+16
	ldr	r1, .L97+20
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L97+24
	ldr	r1, .L97+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L97+32
	ldr	r1, .L97+36
	mov	lr, pc
	bx	r4
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
	mov	r1, #8
	mov	r0, #96
	ldr	r2, .L97+56
	ldr	r3, .L97+60
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L98:
	.align	2
.L97:
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
	ldr	r4, .L125
	sub	sp, sp, #12
	ldr	r3, .L125+4
	mov	lr, pc
	bx	r3
	add	r0, r4, #4
	add	r1, r4, #8
	ldr	r3, .L125+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L125+12
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L125+16
	mov	lr, pc
	bx	r2
	ldr	r3, .L125+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L125+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L125+28
	mov	lr, pc
	bx	r5
	add	r2, r4, #12
	ldmia	r2, {r2, r3}
	orr	r3, r2, r3
	cmp	r3, #0
	bne	.L101
	mov	r5, #27
	mov	lr, #364
.L100:
	mov	r1, #57
	asr	ip, r5, #5
	add	ip, ip, #9
	and	r0, r5, #31
	lsl	ip, ip, #1
	lsl	r0, r0, #5
.L102:
	add	r2, ip, r1, asr #5
	and	r3, r1, #31
	lsl	r2, r2, #11
	add	r3, r3, r0
	add	r1, r1, #1
	add	r2, r2, #100663296
	lsl	r3, r3, #1
	cmp	r1, #67
	strh	lr, [r2, r3]	@ movhi
	bne	.L102
	add	r5, r5, #1
	cmp	r5, #37
	bne	.L100
	mov	r3, #1
	str	r3, [r4, #16]
.L101:
	ldr	r3, .L125+32
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L121
.L104:
	ldr	r3, .L125+36
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L122
.L105:
	ldr	ip, .L125+40
	ldr	r3, [ip]
	add	r3, r3, #1
	cmp	r3, #15
	strle	r3, [ip]
	bgt	.L123
.L107:
	ldr	r3, .L125+44
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L99
	ldr	r3, .L125+48
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L124
.L99:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L122:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L105
	ldr	r3, .L125+52
	mov	lr, pc
	bx	r3
	bl	goToPhaseOne
	b	.L105
.L123:
	ldr	r6, .L125+56
	ldr	r3, [r6]
	mov	lr, #0
	rsbs	r3, r3, #1
	movcc	r3, #0
	ldr	r5, .L125+60
	ldr	r7, .L125+64
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
	b	.L107
.L121:
	ldr	r3, .L125+68
	mov	lr, pc
	bx	r3
	bl	goToStartInstructions
	b	.L104
.L124:
	ldr	r3, .L125+72
	ldr	r2, .L125+76
	ldr	ip, [r3, #16]
	ldr	r0, [r3, #20]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L125+80
	ldr	r3, .L125+68
	str	ip, [r4, #20]
	str	r0, [r4, #24]
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
	ldr	r2, .L142
	ldr	ip, .L142+4
	strh	r2, [r3]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r3, .L142+8
	ldr	r1, .L142+12
	ldr	r4, .L142+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r3, .L142+20
	ldr	r0, .L142+24
	mov	lr, pc
	bx	r3
	mov	r3, #8
	ldr	r2, .L142+28
	ldrh	r2, [r2]
	ldr	r4, .L142+32
	tst	r2, #4
	strb	r3, [r4]
	beq	.L127
	ldr	r3, .L142+36
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L127
	mov	r1, #1
	ldr	r5, .L142+40
	ldrb	r3, [r5]	@ zero_extendqisi2
	ldr	r2, .L142+44
	sub	r3, r3, #1
	str	r1, [r2]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L129
.L131:
	.word	.L136
	.word	.L135
	.word	.L134
	.word	.L133
	.word	.L132
	.word	.L130
.L130:
	bl	goToPhaseThreeInstructions
.L137:
	ldrb	r3, [r5]	@ zero_extendqisi2
	strb	r3, [r4]
.L127:
	pop	{r4, r5, r6, lr}
	bx	lr
.L136:
	bl	goToStartThree
	b	.L137
.L135:
	bl	goToStartInstructions
	b	.L137
.L134:
	bl	goToPhaseOne
	b	.L137
.L133:
	bl	goToPhaseTwoInstructions
	b	.L137
.L132:
	bl	goToPhaseTwo
	b	.L137
.L129:
	bl	goToStart
	b	.L137
.L143:
	.align	2
.L142:
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
	ldr	r3, .L146
	mov	lr, pc
	bx	r3
	ldr	r3, .L146+4
	ldr	r0, .L146+8
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r3, .L146+12
	mov	lr, pc
	bx	r3
	mov	r4, #67108864
	mov	r5, #0
	mov	r2, #5888
	strh	r5, [r4, #80]	@ movhi
	ldr	r3, .L146+16
	strh	r5, [r4, #82]	@ movhi
	strh	r5, [r4, #82]	@ movhi
	strh	r5, [r4, #76]	@ movhi
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L146+20
	ldr	r2, .L146+24
	ldr	r1, .L146+28
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r4, #12]	@ movhi
	mov	r2, #83886080
	ldr	r4, .L146+32
	ldr	r1, .L146+36
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L146+40
	ldr	r1, .L146+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L146+48
	ldr	r1, .L146+52
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L146+56
	ldr	r1, .L146+60
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L146+64
	ldr	r1, .L146+68
	mov	lr, pc
	bx	r4
	mov	r1, #9
	mov	r0, #96
	ldr	r2, .L146+72
	ldr	r3, .L146+76
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L147:
	.align	2
.L146:
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
	ldr	r4, .L219
	ldr	r3, .L219+4
	add	r1, r4, #8
	add	r0, r4, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L219+8
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
	ble	.L154
	mov	r2, #0
	ldr	r3, [r4, #48]
	sub	r0, r3, r2
	rsbs	r3, r0, #0
	adc	r3, r3, r0
	str	r2, [r4, #44]
	str	r3, [r4, #48]
	ldr	r0, .L219+12
	ldr	lr, .L219+16
	ldr	ip, .L219+20
	ldr	r5, .L219+24
.L150:
	sub	r2, r0, #64
.L153:
	ldrh	r3, [r2]
	and	r1, r3, lr
	cmp	r1, #231
	and	r3, r3, ip
	orreq	r3, r3, #255
	strheq	r3, [r2]	@ movhi
	beq	.L152
	cmp	r1, #255
	orreq	r3, r3, #231
	strheq	r3, [r2]	@ movhi
.L152:
	add	r2, r2, #2
	cmp	r0, r2
	bne	.L153
	add	r0, r0, #64
	cmp	r0, r5
	bne	.L150
.L154:
	ldr	r3, [r4, #36]
	add	r3, r3, #1
	tst	r3, #3
	str	r3, [r4, #36]
	bne	.L158
	ldr	r3, [r4, #40]
	cmp	r3, #99
	bgt	.L158
	ldr	r6, .L219+28
	add	r3, r3, #1
	str	r3, [r4, #40]
	ldr	r8, .L219+32
	add	r7, r6, #64
.L160:
	ldrb	r3, [r6, #1]!	@ zero_extendqisi2
	lsl	r5, r3, #1
	cmp	r3, #0
	add	r5, r5, #83886080
	beq	.L159
	mov	r3, #2000
	mov	r1, #0
	ldr	r2, [r4, #40]
	ldrh	r0, [r5]
	mov	lr, pc
	bx	r8
	strh	r0, [r5]	@ movhi
.L159:
	cmp	r7, r6
	bne	.L160
.L158:
	ldr	r3, [r4, #52]
	add	r3, r3, #1
	cmp	r3, #200
	str	r3, [r4, #52]
	ble	.L157
	ldr	r10, [r4, #56]
	cmp	r10, #0
	beq	.L212
.L157:
	ldr	r3, [r4, #68]
	cmp	r3, #0
	bne	.L170
.L178:
	mov	r6, #512
	ldr	r3, .L219+36
	ldrb	r2, [r3, #56]	@ zero_extendqisi2
	ldr	r5, .L219+40
	lsl	r2, r2, #3
	strh	r6, [r5, r2]	@ movhi
	ldr	r3, .L219+44
	mov	lr, pc
	bx	r3
	ldr	r4, .L219+48
	ldr	r3, .L219+52
	mov	lr, pc
	bx	r3
	mov	r3, r6
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r5, .L219+56
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L213
	ldr	r3, .L219+60
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L214
.L182:
	ldr	r3, .L219+64
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L215
.L183:
	ldr	r3, .L219+68
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L148
	ldr	r3, .L219+72
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L216
.L148:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L212:
	ldr	r3, [r4, #60]
	add	r3, r3, #1
	cmp	r3, #60
	strle	r3, [r4, #60]
	ble	.L157
	ldr	r5, [r4, #64]
	mov	r2, #1
	rsbs	r1, r5, #1
	movcc	r1, #0
	ldr	r3, .L219+76
	str	r10, [r4, #60]
	str	r10, [r4, #72]
	str	r10, [r4, #76]
	str	r2, [r4, #68]
	str	r2, [r4, #56]
	str	r1, [r4, #64]
	add	r0, r3, #512
	rsb	r1, r3, #83886080
.L162:
	ldrh	r2, [r1, r3]
	strh	r2, [r3, #2]!	@ movhi
	cmp	r3, r0
	bne	.L162
	ldr	r0, .L219+24
	ldr	r7, .L219+80
	ldr	r8, .L219+84
	ldr	r6, .L219+88
.L163:
	ldr	lr, .L219+16
	ldr	ip, .L219+20
	ldr	r9, .L219+88
	sub	r2, r0, #64
	b	.L168
.L218:
	cmp	r1, r6
	orreq	r3, r3, #320
	orreq	r3, r3, #2
	strheq	r3, [r2]	@ movhi
	beq	.L166
	orr	r3, r3, #344
	cmp	r1, #348
	orr	r3, r3, #3
	bne	.L166
.L211:
	strh	r3, [r2]	@ movhi
.L166:
	add	r2, r2, #2
	cmp	r0, r2
	beq	.L217
.L168:
	ldrh	r3, [r2]
	cmp	r5, #0
	and	r1, r3, lr
	and	r3, r3, ip
	bne	.L218
	cmp	r1, r7
	orreq	r3, r3, r9
	strheq	r3, [r2]	@ movhi
	beq	.L166
	cmp	r1, r8
	bne	.L166
	orr	r3, r3, #348
	b	.L211
.L170:
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	cmp	r3, #8
	ldr	r10, [r4, #76]
	ble	.L169
	mov	r2, #0
	ldr	r3, [r4, #72]
	sub	r1, r3, r2
	rsbs	r3, r1, #0
	adc	r3, r3, r1
	add	r10, r10, #1
	str	r10, [r4, #76]
	str	r3, [r4, #72]
	str	r2, [r4, #80]
.L174:
	cmp	r10, #3
	ble	.L175
	mov	r3, #0
	ldr	r2, .L219+28
	str	r3, [r4, #68]
	ldr	r0, .L219+92
	add	r1, r2, #64
.L177:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	lslne	r3, r3, #1
	addne	r3, r3, #83886080
	strhne	r0, [r3]	@ movhi
	cmp	r1, r2
	bne	.L177
	b	.L178
.L213:
	ldr	r3, .L219+96
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L219+100
	ldr	r3, .L219+104
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r3, [r4]
	ldr	r3, .L219+60
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L182
.L214:
	bl	goToLose
	ldr	r3, .L219+64
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L183
.L215:
	bl	goToPhaseTwoInstructions
	b	.L183
.L175:
	ldr	r2, .L219+28
	ldr	r5, [r4, #72]
	ldr	r4, .L219+108
	add	lr, r2, #64
.L181:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	lsl	r3, r3, #1
	beq	.L179
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
.L179:
	cmp	lr, r2
	bne	.L181
	b	.L178
.L217:
	ldr	r3, .L219+112
	add	r0, r0, #64
	cmp	r0, r3
	bne	.L163
	mov	r3, #1
.L169:
	str	r3, [r4, #80]
	b	.L174
.L216:
	ldr	r2, .L219+116
	ldr	r3, .L219+120
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	goToPause
.L220:
	.align	2
.L219:
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
	ldr	r6, .L243
	ldr	r3, .L243+4
	add	r1, r6, #8
	add	r0, r6, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L243+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L243+12
	mov	lr, pc
	bx	r3
	ldmib	r6, {r3, ip}
	ldr	r1, .L243+16
	add	r0, r3, r3, lsr #31
	add	r2, ip, ip, lsr #31
	ldrb	lr, [r1, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	lsl	r3, r3, #16
	ldr	r6, .L243+20
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
	ldr	r1, .L243+24
	strh	r0, [r4, #20]	@ movhi
	strh	r2, [r4, #22]	@ movhi
	strh	r5, [r6, r3]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L243+28
	mov	lr, pc
	bx	r3
	ldr	r7, .L243+32
	ldr	r3, .L243+36
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r1, r6
	mov	r2, #117440512
	mov	r0, #3
	ldr	r5, .L243+40
	mov	lr, pc
	bx	r5
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L239
.L222:
	ldr	r3, .L243+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L240
.L223:
	ldr	r3, .L243+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L241
.L224:
	ldr	r3, .L243+52
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L221
	ldr	r3, .L243+56
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L242
.L221:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L241:
	bl	goToPhaseThreeInstructions
	b	.L224
.L240:
	bl	goToLose
	b	.L223
.L239:
	mov	r5, #0
	ldr	r2, .L243+60
	ldr	r3, .L243+64
	ldr	ip, .L243+68
	strh	r5, [r2, #6]	@ movhi
	ldr	r1, [r3]
	str	r5, [r4, #208]
	mov	r2, r5
	ldr	r0, .L243+72
	ldr	r3, .L243+76
	str	r5, [ip, #8]
	mov	lr, pc
	bx	r3
	str	r5, [r7]
	b	.L222
.L242:
	ldr	r2, .L243+80
	ldr	r3, .L243+84
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	b	goToPause
.L244:
	.align	2
.L243:
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
	ldr	r3, .L247
	mov	lr, pc
	bx	r3
	ldr	r3, .L247+4
	ldr	r0, .L247+8
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r3, .L247+12
	mov	lr, pc
	bx	r3
	mov	r4, #67108864
	mov	r5, #0
	mov	r2, #5888
	strh	r5, [r4]	@ movhi
	ldr	r3, .L247+16
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L247+20
	ldr	r1, .L247+24
	ldr	r0, .L247+28
	strh	r5, [r4, #16]	@ movhi
	mov	r3, #256
	strh	r5, [r4, #18]	@ movhi
	strh	r2, [r4, #8]	@ movhi
	strh	r1, [r4, #10]	@ movhi
	mov	r2, #83886080
	strh	r0, [r4, #12]	@ movhi
	ldr	r1, .L247+32
	ldr	r4, .L247+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L247+40
	ldr	r1, .L247+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L247+48
	ldr	r1, .L247+52
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L247+56
	ldr	r1, .L247+60
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L247+64
	ldr	r1, .L247+68
	mov	lr, pc
	bx	r4
	mov	r1, #10
	mov	r0, #96
	ldr	r2, .L247+72
	ldr	r3, .L247+76
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L248:
	.align	2
.L247:
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
	ldr	r1, .L266
	push	{r4, r5, r6, lr}
	sub	r0, r1, #4
	ldr	r3, .L266+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L266+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L266+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L266+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L266+20
	ldrh	r3, [r3, #12]
	rsb	r2, r3, #19
	cmp	r2, #2
	bhi	.L250
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
.L251:
	ldr	r3, .L266+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L253
	ldr	r0, .L266+28
	ldr	lr, .L266+32
	ldr	ip, .L266+36
	ldr	r4, .L266+40
	ldr	r5, .L266+44
.L252:
	sub	r2, r0, #64
.L255:
	ldrh	r3, [r2]
	and	r1, r3, lr
	cmp	r1, ip
	andeq	r3, r3, r4
	orreq	r3, r3, #105
	strheq	r3, [r2]	@ movhi
	add	r2, r2, #2
	cmp	r2, r0
	bne	.L255
	add	r0, r0, #64
	cmp	r0, r5
	bne	.L252
.L253:
	mov	lr, #67108864
	mov	r4, #512
	ldr	r3, .L266+48
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #8]
	ldr	r3, .L266+52
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L266+56
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
	ldr	r2, .L266+60
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L266+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L266+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L266+72
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L266+76
	mov	lr, pc
	bx	r4
	ldr	r3, .L266+80
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L264
.L256:
	ldr	r3, .L266+84
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L265
	pop	{r4, r5, r6, lr}
	bx	lr
.L250:
	rsb	r2, r3, #20
	cmp	r2, #3
	ble	.L251
	mov	r3, #67108864
	mov	r2, #0
	strh	r2, [r3, #76]	@ movhi
	ldr	r1, .L266+88
	ldrh	r0, [r3, #8]
	and	r1, r1, r0
	strh	r1, [r3, #8]	@ movhi
	ldr	r1, .L266+88
	ldrh	r0, [r3, #10]
	and	r1, r1, r0
	strh	r1, [r3, #10]	@ movhi
	ldr	r1, .L266+88
	ldrh	r0, [r3, #12]
	and	r1, r1, r0
	strh	r1, [r3, #12]	@ movhi
	strh	r2, [r3, #80]	@ movhi
	strh	r2, [r3, #82]	@ movhi
	b	.L251
.L265:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L264:
	bl	goToLose
	b	.L256
.L267:
	.align	2
.L266:
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
	ldr	r6, .L270
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L270+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L270+8
	ldr	r1, .L270+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L270+16
	mov	r3, #1024
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L270+20
	ldr	r1, .L270+24
	mov	lr, pc
	bx	r6
	mov	r2, #11
	ldr	r3, .L270+28
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L271:
	.align	2
.L270:
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
	ldr	r10, .L304
	ldrh	r3, [r10]
	tst	r3, #128
	bne	.L299
	ldr	r6, .L304+4
.L273:
	tst	r3, #64
	bne	.L303
.L276:
	ldr	r3, [r6, #88]
	ldr	r9, .L304+8
	cmp	r3, #0
	ldr	r7, .L304+12
	streq	r9, [r6, #88]
.L282:
	ldr	r3, .L304+16
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	mov	r5, #0
	ldrh	fp, [r3, #4]
	ldr	r8, .L304+20
.L278:
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
	bne	.L278
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
	beq	.L272
	ldr	r3, .L304+24
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L272
	ldr	r3, [r6, #84]
	cmp	r3, #0
	beq	.L281
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToGameInstructions
.L272:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L299:
	ldr	r2, .L304+24
	ldrh	r2, [r2]
	tst	r2, #128
	ldr	r6, .L304+4
	bne	.L273
	ldr	r2, [r6, #84]
	cmp	r2, #0
	bne	.L273
	ldr	r3, .L304+28
	ldr	r9, .L304+8
	ldr	r1, [r3]
	ldr	r0, .L304+32
	ldr	r3, .L304+36
	mov	lr, pc
	bx	r3
	mov	r2, r9
	ldr	r7, .L304+12
	add	r0, r9, #12
.L274:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L274
	mov	r3, #1
	mov	r2, #0
	str	r0, [r6, #88]
	str	r3, [r6, #84]
	str	r3, [r9, #24]
	str	r2, [r6, #92]
	b	.L282
.L303:
	ldr	r3, .L304+24
	ldrh	r2, [r3]
	ands	r2, r2, #64
	bne	.L276
	ldr	r3, [r6, #84]
	cmp	r3, #0
	beq	.L276
	ldr	r3, .L304+28
	ldr	r0, .L304+32
	ldr	r1, [r3]
	ldr	r3, .L304+36
	mov	lr, pc
	bx	r3
	ldr	r2, .L304+40
	ldr	r7, .L304+12
	add	r0, r2, #12
.L277:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L277
	mov	r3, #0
	mov	r2, #1
	ldr	r9, .L304+8
	str	r3, [r6, #84]
	str	r3, [r6, #92]
	str	r2, [r9, #24]
	str	r9, [r6, #88]
	b	.L282
.L281:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToStart
.L305:
	.align	2
.L304:
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
	ldr	r3, .L311
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L311+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L312:
	.align	2
.L311:
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
	ldr	ip, .L317
	ldr	r0, .L317+4
	ldr	r3, .L317+8
	ldr	r1, .L317+12
	str	lr, [sp, #-4]!
	str	r2, [ip]
	ldr	lr, .L317+16
	ldr	ip, .L317+20
	str	r2, [r0]
	str	r2, [r3]
	ldr	r0, .L317+24
	ldr	r3, .L317+28
	str	r2, [r1]
	ldr	r1, .L317+32
	str	r2, [lr]
	str	r2, [ip]
	str	r2, [r0, #4]
	str	r2, [r0, #8]
	str	r2, [r0, #12]
	str	r2, [r0, #32]
	str	r2, [r0, #28]
	str	r2, [r0]
	str	r2, [r0, #16]
	str	r2, [r0, #36]
	str	r2, [r0, #40]
	str	r2, [r0, #96]
	str	r2, [r0, #100]
	sub	r1, r1, r3
	add	r0, r3, #64
.L314:
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	strb	r2, [r3, #1]!
	cmp	r3, r0
	bne	.L314
	ldr	lr, [sp], #4
	bx	lr
.L318:
	.align	2
.L317:
	.word	gameOver
	.word	winPhaseOne
	.word	winPhaseTwo
	.word	winPhaseThree
	.word	next
	.word	leftWallTouched
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
	ldr	r0, .L335
	ldr	r2, .L335+4
	sub	sp, sp, #44
	strh	r0, [r3]	@ movhi
	ldr	r3, .L335+8
	str	r1, [r2]
	ldr	fp, .L335+12
	mov	lr, pc
	bx	r3
	mov	r2, #83886080
	ldr	r1, .L335+16
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	fp
	ldr	r0, .L335+20
	ldr	r3, .L335+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L335+28
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L335+32
	ldr	r3, .L335+36
	add	r9, sp, #4
	mov	lr, pc
	bx	r3
	mov	r2, r9
	ldr	r3, .L335+16
	add	r0, r3, #34
.L320:
	ldrh	r1, [r3], #2
	cmp	r3, r0
	strh	r1, [r2], #2	@ movhi
	bne	.L320
	mov	r10, #0
	ldr	r5, .L335+40
	ldr	r8, .L335+44
	ldr	r7, .L335+48
	sub	r5, r5, r9
	add	r6, r9, #34
.L322:
	mov	lr, pc
	bx	r8
	mov	r4, r9
.L321:
	ldrh	r0, [r4], #2
	mov	r3, #120
	mov	r2, r10
	mov	r1, #0
	mov	lr, pc
	bx	r7
	cmp	r4, r6
	strh	r0, [r5, r4]	@ movhi
	bne	.L321
	add	r10, r10, #1
	cmp	r10, #121
	bne	.L322
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
	ldr	r1, .L335+52
	mov	lr, pc
	bx	fp
	ldr	r0, .L335+56
	ldr	r3, .L335+24
	mov	lr, pc
	bx	r3
	mov	r4, #0
	mov	r5, #83886080
	ldr	r6, .L335+60
	ldr	r7, .L335+64
	b	.L330
.L328:
	add	r4, r4, #1
.L330:
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
	beq	.L328
	cmp	r4, #60
	mvneq	r3, #32768
	strheq	r3, [r5, #34]	@ movhi
	beq	.L328
	cmp	r4, #90
	mvneq	r3, #32768
	strheq	r3, [r5, #36]	@ movhi
	beq	.L328
	cmp	r4, #179
	bne	.L328
	mov	r2, #83886080
	ldr	r1, .L335+68
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	fp
	ldr	r0, .L335+72
	ldr	r3, .L335+24
	mov	lr, pc
	bx	r3
	bl	resetGameState
	mov	r2, #0
	ldr	r3, .L335+76
	strb	r2, [r3]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L336:
	.align	2
.L335:
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
	ldr	r3, .L339
	mov	lr, pc
	bx	r3
	ldr	r3, .L339+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L339+8
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #1
	ldrh	r3, [r2, #4]
	orr	r3, r3, #8
	strh	r3, [r2, #4]	@ movhi
	ldr	r3, .L339+12
	ldrh	r2, [r3]
	ldr	r0, .L339+16
	ldr	ip, .L339+20
	orr	r2, r2, r1
	strh	r2, [r3]	@ movhi
	pop	{r4, lr}
	str	ip, [r0, #4092]
	strh	r1, [r3, #8]	@ movhi
	b	goToSplashScreen
.L340:
	.align	2
.L339:
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
	ldr	r5, .L348
	ldr	r3, .L348+4
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
	ldr	r2, .L348+8
	strh	ip, [r4, #22]	@ movhi
	strh	r3, [r4, #24]	@ movhi
	strh	r0, [r4, #26]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L348+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L348+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L348+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L348+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L341
	ldr	r3, .L348+28
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L347
.L341:
	pop	{r4, r5, r6, lr}
	bx	lr
.L347:
	bl	goToSplashScreen
	ldr	r3, .L348+32
	strb	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L349:
	.align	2
.L348:
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
	ldr	r3, .L375
	mov	lr, pc
	bx	r3
	ldr	r4, .L375+4
	ldr	r7, .L375+8
	ldr	r6, .L375+12
	ldr	fp, .L375+16
	ldr	r10, .L375+20
	ldr	r9, .L375+24
	ldr	r8, .L375+28
	ldr	r5, .L375+32
.L364:
	ldrh	r1, [r4]
	strh	r1, [r7]	@ movhi
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L351
.L353:
	.word	.L363
	.word	.L362
	.word	.L361
	.word	.L360
	.word	.L359
	.word	.L358
	.word	.L357
	.word	.L356
	.word	.L355
	.word	.L354
	.word	.L354
	.word	.L352
.L354:
	mov	lr, pc
	bx	r9
.L351:
	mov	lr, pc
	bx	r8
	b	.L364
.L355:
	ldr	r3, .L375+36
	mov	lr, pc
	bx	r3
	b	.L351
.L356:
	ldr	r3, .L375+40
	mov	lr, pc
	bx	r3
	b	.L351
.L357:
	tst	r1, #8
	beq	.L351
	tst	r3, #8
	bne	.L351
	ldr	r3, .L375+44
	mov	lr, pc
	bx	r3
	b	.L351
.L358:
	ldr	r3, .L375+48
	mov	lr, pc
	bx	r3
	b	.L351
.L362:
	mov	lr, pc
	bx	r10
	b	.L351
.L352:
	tst	r1, #8
	beq	.L351
	tst	r3, #8
	bne	.L351
	ldr	r3, .L375+52
	mov	lr, pc
	bx	r3
	b	.L351
.L363:
	mov	lr, pc
	bx	fp
	b	.L351
.L360:
	ldr	r3, .L375+56
	mov	lr, pc
	bx	r3
	b	.L351
.L361:
	ldr	r3, .L375+60
	mov	lr, pc
	bx	r3
	b	.L351
.L359:
	tst	r1, #8
	beq	.L351
	tst	r3, #8
	bne	.L351
	ldr	r3, .L375+64
	mov	lr, pc
	bx	r3
	b	.L351
.L376:
	.align	2
.L375:
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
	.type	bridgeUncovered, %object
	.size	bridgeUncovered, 4
bridgeUncovered:
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
	.type	tileAnimTimer.4516, %object
	.size	tileAnimTimer.4516, 4
tileAnimTimer.4516:
	.space	4
	.type	tileAnimState.4517, %object
	.size	tileAnimState.4517, 4
tileAnimState.4517:
	.space	4
	.type	swapDelayFrames.4539, %object
	.size	swapDelayFrames.4539, 4
swapDelayFrames.4539:
	.space	4
	.type	hasFlashedOnce.4540, %object
	.size	hasFlashedOnce.4540, 4
hasFlashedOnce.4540:
	.space	4
	.type	swapTimer.4537, %object
	.size	swapTimer.4537, 4
swapTimer.4537:
	.space	4
	.type	swapped.4538, %object
	.size	swapped.4538, 4
swapped.4538:
	.space	4
	.type	isFlashing.4515, %object
	.size	isFlashing.4515, 4
isFlashing.4515:
	.space	4
	.type	flashState.4512, %object
	.size	flashState.4512, 4
flashState.4512:
	.space	4
	.type	flashFrame.4514, %object
	.size	flashFrame.4514, 4
flashFrame.4514:
	.space	4
	.type	flashTimer.4513, %object
	.size	flashTimer.4513, 4
flashTimer.4513:
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
