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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r1, .L16
	ldr	r4, .L16+4
	sub	sp, sp, #16
	ldr	r2, .L16+8
	str	r3, [r1]
	mov	r5, #67108864
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	mov	r2, #4608
	ldr	r3, .L16+12
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #53760
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r5, .L16+16
	mov	r2, #83886080
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L16+24
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L16+28
	ldr	r1, .L16+32
	mov	lr, pc
	bx	r5
	ldr	ip, .L16+36
	ldr	lr, .L16+40
	mov	r8, ip
	mov	r7, lr
	mov	r5, #120
	ldr	r6, .L16+44
.L2:
	mov	r0, r7
	mov	r1, r8
	sub	r3, r5, #4
.L3:
	lsl	r2, r3, #1
	ldrh	r2, [r6, r2]
	add	r3, r3, #1
	cmp	r3, r5
	strh	r2, [r1], #2	@ movhi
	strh	r2, [r0], #2	@ movhi
	bne	.L3
	cmp	r3, #216
	add	r8, r8, #8
	add	r7, r7, #8
	add	r5, r3, #32
	bne	.L2
	ldr	r6, .L16+48
	ldr	r3, .L16+40
.L5:
	ldrh	r5, [ip]
	ldrh	r0, [ip, #2]
	ldrh	r1, [ip, #4]
	ldrh	r2, [ip, #6]
	add	ip, ip, #8
	cmp	ip, r6
	strh	r5, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	add	r3, r3, #8
	bne	.L5
	mov	r3, #117
	ldr	r2, .L16+44
.L6:
	ldrh	r0, [lr]
	add	r1, r2, r3, lsl #1
	strh	r0, [r1, #-2]	@ movhi
	ldrh	r0, [lr, #2]
	lsl	r1, r3, #1
	strh	r0, [r2, r1]	@ movhi
	ldrh	r0, [lr, #4]
	add	r1, r2, r3, lsl #1
	strh	r0, [r1, #2]	@ movhi
	add	r3, r3, #32
	ldrh	r0, [lr, #6]
	cmp	r3, #245
	strh	r0, [r1, #4]	@ movhi
	add	lr, lr, #8
	bne	.L6
	mov	ip, sp
	ldr	r3, .L16+52
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	ldr	lr, .L16+56
	add	r5, sp, #16
.L7:
	mov	r1, lr
	ldr	r3, [ip], #4
	lsl	r3, r3, #4
	add	r0, r3, #16
.L8:
	lsl	r2, r3, #1
	add	r2, r2, #100663296
	ldrh	r2, [r2]
	add	r3, r3, #1
	cmp	r3, r0
	strh	r2, [r1, #2]!	@ movhi
	bne	.L8
	cmp	r5, ip
	add	lr, lr, #32
	bne	.L7
	ldr	r3, .L16+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+64
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #96
	ldr	r1, .L16+68
	str	r3, [r4, #4]
	mov	r2, #1
	ldr	r1, [r1]
	ldr	r0, .L16+72
	ldr	r3, .L16+76
	str	ip, [r4, #8]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L16+80
	strb	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L17:
	.align	2
.L16:
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
	.word	originalBlock+32
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
	ldr	r3, .L20
	mov	lr, pc
	bx	r3
	mov	r4, #0
	mov	ip, #53760
	mov	r0, #67108864
	mov	r1, #4608
	ldr	r5, .L20+4
	ldr	r6, .L20+8
	str	r4, [r5]
	mov	r3, #256
	strh	r1, [r0]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #10]	@ movhi
	ldr	r1, .L20+12
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L20+16
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r2, .L20+20
	ldr	r1, .L20+24
	mov	r3, #4096
	mov	lr, pc
	bx	r6
	ldr	r3, .L20+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+32
	mov	lr, pc
	bx	r3
	mov	r6, #1
	mov	r2, #96
	mov	lr, #170
	ldr	r0, .L20+36
	ldr	r1, .L20+40
	ldr	r3, .L20+44
	ldr	ip, .L20+48
	str	r4, [r5, #4]
	str	r4, [r0]
	str	r2, [r5, #8]
	str	r6, [r5, #12]
	mov	r2, r6
	ldr	r1, [r1]
	ldr	r0, .L20+52
	ldr	r5, .L20+56
	str	lr, [r3, #20]
	str	ip, [r3, #16]
	mov	lr, pc
	bx	r5
	ldr	r3, .L20+60
	mov	r2, r4
	ldr	r1, [r3]
	ldr	r0, .L20+64
	ldr	r3, .L20+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+72
	strb	r6, [r3]
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
	ldr	r3, .L30
	mov	lr, pc
	bx	r3
	mov	ip, #53760
	mov	r0, #67108864
	mov	r2, #0
	mov	r1, #4608
	ldr	r4, .L30+4
	ldr	r5, .L30+8
	str	r2, [r4]
	mov	r3, #256
	strh	r1, [r0]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #10]	@ movhi
	ldr	r1, .L30+12
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L30+16
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L30+20
	ldr	r1, .L30+24
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #12]
	cmp	r3, #0
	bne	.L24
	mov	r5, #27
	mov	lr, #364
.L23:
	mov	r1, #57
	asr	ip, r5, #5
	add	ip, ip, #9
	and	r0, r5, #31
	lsl	ip, ip, #1
	lsl	r0, r0, #5
.L25:
	add	r2, ip, r1, asr #5
	and	r3, r1, #31
	lsl	r2, r2, #11
	add	r3, r3, r0
	add	r1, r1, #1
	add	r2, r2, #100663296
	lsl	r3, r3, #1
	cmp	r1, #67
	strh	lr, [r2, r3]	@ movhi
	bne	.L25
	add	r5, r5, #1
	cmp	r5, #37
	bne	.L23
	mov	r3, #0
	str	r3, [r4, #16]
.L24:
	ldr	r3, .L30+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+32
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r2, #96
	mov	ip, #1
	ldr	r0, .L30+36
	ldr	r3, .L30+40
	str	r1, [r4, #4]
	str	r2, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #24]
	strb	ip, [r0]
	str	r1, [r3, #16]
	str	r2, [r3, #20]
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	.align	2
.L30:
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
	ldr	r6, .L34
	strh	r5, [r4]	@ movhi
	mov	r3, #256
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L34+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L34+8
	ldr	r1, .L34+12
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L34+16
	ldr	r1, .L34+20
	mov	lr, pc
	bx	r6
	ldr	r3, .L34+24
	ldr	r2, .L34+28
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L34+32
	ldr	r1, .L34+36
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L34+40
	ldr	r1, .L34+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #2
	ldr	r1, .L34+48
	ldr	r3, .L34+52
	strh	r5, [r4, #16]	@ movhi
	str	r5, [r1, #28]
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L35:
	.align	2
.L34:
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
	ldr	r3, .L57
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, r5, r6, lr}
	bne	.L54
	ldr	r4, .L57+4
.L37:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L38
	pop	{r4, r5, r6, lr}
	bx	lr
.L54:
	ldr	r3, .L57+8
	ldrh	r3, [r3]
	tst	r3, #8
	ldr	r4, .L57+4
	bne	.L37
	ldr	r3, [r4, #28]
	add	r2, r3, #1
	str	r2, [r4, #28]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L37
.L39:
	.word	.L46
	.word	.L45
	.word	.L44
	.word	.L43
	.word	.L42
	.word	.L41
	.word	.L40
	.word	.L38
.L38:
	mov	r3, #0
	str	r3, [r4, #32]
	bl	goToStartTwo
	mov	r2, #1
	ldr	r3, .L57+12
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L40:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L57+16
	ldr	r1, .L57+20
	ldr	r5, .L57+24
	mov	lr, pc
	bx	r5
	b	.L37
.L46:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L57+16
	ldr	r1, .L57+28
	ldr	r5, .L57+24
	mov	lr, pc
	bx	r5
	b	.L37
.L45:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L57+16
	ldr	r1, .L57+32
	ldr	r5, .L57+24
	mov	lr, pc
	bx	r5
	b	.L37
.L44:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L57+16
	ldr	r1, .L57+36
	ldr	r5, .L57+24
	mov	lr, pc
	bx	r5
	b	.L37
.L43:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L57+16
	ldr	r1, .L57+40
	ldr	r5, .L57+24
	mov	lr, pc
	bx	r5
	b	.L37
.L42:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L57+16
	ldr	r1, .L57+44
	ldr	r5, .L57+24
	mov	lr, pc
	bx	r5
	b	.L37
.L41:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L57+16
	ldr	r1, .L57+48
	ldr	r5, .L57+24
	mov	lr, pc
	bx	r5
	b	.L37
.L58:
	.align	2
.L57:
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
	ldr	ip, .L65
	ldr	r2, .L65+4
	ldr	r1, .L65+8
	strh	lr, [r0]	@ movhi
	ldr	r4, .L65+12
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L65+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L65+20
	ldr	r1, .L65+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L65+28
	ldr	r1, .L65+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L65+36
	ldr	r1, .L65+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r1, .L65+44
	ldr	r2, .L65+48
	mov	lr, pc
	bx	r4
	ldr	r3, .L65+52
	ldr	r1, .L65+56
	add	r0, r3, #64
	sub	r1, r1, r3
.L60:
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	strb	r2, [r3, #1]!
	cmp	r3, r0
	bne	.L60
	mov	r3, #0
	ldr	r4, .L65+60
	ldr	r2, [r4]
	cmp	r2, r3
	str	r3, [r4, #36]
	str	r3, [r4, #40]
	beq	.L64
.L61:
	mov	r5, #0
	ldr	r3, .L65+64
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L65+68
	ldr	r3, .L65+72
	str	r5, [r4]
	mov	lr, pc
	bx	r3
	mov	r2, #3
	mov	r1, #96
	ldr	r3, .L65+76
	strb	r2, [r3]
	str	r5, [r4, #4]
	str	r1, [r4, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L64:
	ldr	r3, .L65+80
	mov	lr, pc
	bx	r3
	ldr	r3, .L65+84
	mov	lr, pc
	bx	r3
	b	.L61
.L66:
	.align	2
.L65:
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
	ldr	r3, .L69
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+4
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L69+8
	ldr	r3, .L69+12
	mov	lr, pc
	bx	r3
	ldr	r6, .L69+16
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L69+20
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L69+24
	ldr	r1, .L69+28
	mov	lr, pc
	bx	r6
	ldr	r3, .L69+32
	ldr	r2, .L69+36
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L69+40
	ldr	r1, .L69+44
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L69+48
	mov	r0, #3
	ldr	r1, .L69+52
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r3, .L69+56
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L70:
	.align	2
.L69:
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
	ldr	r3, .L75
	mov	lr, pc
	bx	r3
	ldr	r3, .L75+4
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L75+8
	ldr	r3, .L75+12
	mov	lr, pc
	bx	r3
	mov	r0, #67108864
	mov	lr, #0
	mov	r3, #5888
	ldr	ip, .L75+16
	ldr	r2, .L75+20
	ldr	r1, .L75+24
	strh	lr, [r0]	@ movhi
	ldr	r4, .L75+28
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L75+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L75+36
	ldr	r1, .L75+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L75+44
	ldr	r1, .L75+48
	mov	lr, pc
	bx	r4
	ldr	r5, .L75+52
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L75+56
	ldr	r1, .L75+60
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L75+64
	ldr	r1, .L75+68
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L74
.L72:
	mov	r1, #5
	mov	r3, #0
	mov	r0, #96
	ldr	r2, .L75+72
	strb	r1, [r2]
	str	r3, [r5]
	str	r3, [r5, #4]
	str	r0, [r5, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L74:
	ldr	r3, .L75+76
	mov	lr, pc
	bx	r3
	ldr	r3, .L75+80
	mov	lr, pc
	bx	r3
	b	.L72
.L76:
	.align	2
.L75:
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
	ldr	r3, .L82
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L82+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseTwo
.L83:
	.align	2
.L82:
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
	ldr	r3, .L86
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+4
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L86+8
	ldr	r3, .L86+12
	mov	lr, pc
	bx	r3
	ldr	r6, .L86+16
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L86+20
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L86+24
	ldr	r1, .L86+28
	mov	lr, pc
	bx	r6
	ldr	r3, .L86+32
	ldr	r2, .L86+36
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #1024
	ldr	r2, .L86+40
	ldr	r1, .L86+44
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L86+48
	mov	r0, #3
	ldr	r1, .L86+52
	mov	lr, pc
	bx	r6
	mov	r2, #6
	ldr	r3, .L86+56
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strh	r5, [r4, #20]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L87:
	.align	2
.L86:
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
	ldr	r3, .L90
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+4
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L90+8
	ldr	r3, .L90+12
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r0, #67108864
	mov	r3, #5888
	ldr	ip, .L90+16
	ldr	r2, .L90+20
	ldr	r1, .L90+24
	strh	r5, [r0]	@ movhi
	ldr	r4, .L90+28
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L90+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L90+36
	ldr	r1, .L90+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L90+44
	ldr	r1, .L90+48
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L90+52
	ldr	r1, .L90+56
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L90+60
	ldr	r1, .L90+64
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L90+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+72
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+76
	mov	lr, pc
	bx	r3
	mov	r1, #7
	mov	r0, #96
	ldr	r2, .L90+80
	ldr	r3, .L90+84
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L91:
	.align	2
.L90:
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
	ldr	r3, .L97
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L97+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPhaseThree
.L98:
	.align	2
.L97:
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
	ldr	r3, .L101
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L101+4
	ldr	r2, .L101+8
	ldr	r1, .L101+12
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r4, #12]	@ movhi
	mov	r2, #83886080
	ldr	r4, .L101+16
	ldr	r1, .L101+20
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L101+24
	ldr	r1, .L101+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L101+32
	ldr	r1, .L101+36
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L101+40
	ldr	r1, .L101+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L101+48
	ldr	r1, .L101+52
	mov	lr, pc
	bx	r4
	mov	r1, #8
	mov	r0, #96
	ldr	r2, .L101+56
	ldr	r3, .L101+60
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L102:
	.align	2
.L101:
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
	ldr	r4, .L129
	sub	sp, sp, #12
	ldr	r3, .L129+4
	mov	lr, pc
	bx	r3
	add	r0, r4, #4
	add	r1, r4, #8
	ldr	r3, .L129+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L129+12
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4, #8]
	ldrh	r2, [r4, #4]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L129+16
	mov	lr, pc
	bx	r2
	ldr	r3, .L129+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L129+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L129+28
	mov	lr, pc
	bx	r5
	add	r2, r4, #12
	ldmia	r2, {r2, r3}
	orr	r3, r2, r3
	cmp	r3, #0
	bne	.L105
	mov	r5, #27
	mov	lr, #364
.L104:
	mov	r1, #57
	asr	ip, r5, #5
	add	ip, ip, #9
	and	r0, r5, #31
	lsl	ip, ip, #1
	lsl	r0, r0, #5
.L106:
	add	r2, ip, r1, asr #5
	and	r3, r1, #31
	lsl	r2, r2, #11
	add	r3, r3, r0
	add	r1, r1, #1
	add	r2, r2, #100663296
	lsl	r3, r3, #1
	cmp	r1, #67
	strh	lr, [r2, r3]	@ movhi
	bne	.L106
	add	r5, r5, #1
	cmp	r5, #37
	bne	.L104
	mov	r3, #1
	str	r3, [r4, #16]
.L105:
	ldr	r3, .L129+32
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L125
.L108:
	ldr	r3, .L129+36
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L126
.L109:
	ldr	ip, .L129+40
	ldr	r3, [ip]
	add	r3, r3, #1
	cmp	r3, #15
	strle	r3, [ip]
	bgt	.L127
.L111:
	ldr	r3, .L129+44
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L103
	ldr	r3, .L129+48
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L128
.L103:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L126:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L109
	ldr	r3, .L129+52
	mov	lr, pc
	bx	r3
	bl	goToPhaseOne
	b	.L109
.L127:
	ldr	r6, .L129+56
	ldr	r3, [r6]
	mov	lr, #0
	rsbs	r3, r3, #1
	movcc	r3, #0
	ldr	r5, .L129+60
	ldr	r7, .L129+64
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
	b	.L111
.L125:
	ldr	r3, .L129+68
	mov	lr, pc
	bx	r3
	bl	goToStartInstructions
	b	.L108
.L128:
	ldr	r3, .L129+72
	ldr	r2, .L129+76
	ldr	ip, [r3, #16]
	ldr	r0, [r3, #20]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L129+80
	ldr	r3, .L129+68
	str	ip, [r4, #20]
	str	r0, [r4, #24]
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToPause
.L130:
	.align	2
.L129:
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
	ldr	r2, .L146
	ldr	ip, .L146+4
	strh	r2, [r3]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r3, .L146+8
	ldr	r1, .L146+12
	ldr	r4, .L146+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	ldr	r3, .L146+20
	ldr	r0, .L146+24
	mov	lr, pc
	bx	r3
	mov	r3, #8
	ldr	r2, .L146+28
	ldrh	r2, [r2]
	ldr	r4, .L146+32
	tst	r2, #4
	strb	r3, [r4]
	beq	.L131
	ldr	r3, .L146+36
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L131
	mov	r1, #1
	ldr	r5, .L146+40
	ldrb	r3, [r5]	@ zero_extendqisi2
	ldr	r2, .L146+44
	sub	r3, r3, #1
	str	r1, [r2]
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
	ldrb	r3, [r5]	@ zero_extendqisi2
	strb	r3, [r4]
.L131:
	pop	{r4, r5, r6, lr}
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
.L147:
	.align	2
.L146:
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
	ldr	r3, .L150
	mov	lr, pc
	bx	r3
	ldr	r3, .L150+4
	ldr	r0, .L150+8
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r3, .L150+12
	mov	lr, pc
	bx	r3
	mov	r4, #67108864
	mov	r5, #0
	mov	r2, #5888
	strh	r5, [r4, #80]	@ movhi
	ldr	r3, .L150+16
	strh	r5, [r4, #82]	@ movhi
	strh	r5, [r4, #82]	@ movhi
	strh	r5, [r4, #76]	@ movhi
	strh	r5, [r4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L150+20
	ldr	r2, .L150+24
	ldr	r1, .L150+28
	strh	r3, [r4, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r4, #12]	@ movhi
	mov	r2, #83886080
	ldr	r4, .L150+32
	ldr	r1, .L150+36
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L150+40
	ldr	r1, .L150+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L150+48
	ldr	r1, .L150+52
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L150+56
	ldr	r1, .L150+60
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L150+64
	ldr	r1, .L150+68
	mov	lr, pc
	bx	r4
	mov	r1, #9
	mov	r0, #96
	ldr	r2, .L150+72
	ldr	r3, .L150+76
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L151:
	.align	2
.L150:
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
	ldr	r4, .L223
	ldr	r3, .L223+4
	add	r1, r4, #8
	add	r0, r4, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L223+8
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
	ble	.L158
	mov	r2, #0
	ldr	r3, [r4, #48]
	sub	r0, r3, r2
	rsbs	r3, r0, #0
	adc	r3, r3, r0
	str	r2, [r4, #44]
	str	r3, [r4, #48]
	ldr	r0, .L223+12
	ldr	lr, .L223+16
	ldr	ip, .L223+20
	ldr	r5, .L223+24
.L154:
	sub	r2, r0, #64
.L157:
	ldrh	r3, [r2]
	and	r1, r3, lr
	cmp	r1, #231
	and	r3, r3, ip
	orreq	r3, r3, #255
	strheq	r3, [r2]	@ movhi
	beq	.L156
	cmp	r1, #255
	orreq	r3, r3, #231
	strheq	r3, [r2]	@ movhi
.L156:
	add	r2, r2, #2
	cmp	r0, r2
	bne	.L157
	add	r0, r0, #64
	cmp	r0, r5
	bne	.L154
.L158:
	ldr	r3, [r4, #36]
	add	r3, r3, #1
	tst	r3, #3
	str	r3, [r4, #36]
	bne	.L162
	ldr	r3, [r4, #40]
	cmp	r3, #99
	bgt	.L162
	ldr	r6, .L223+28
	add	r3, r3, #1
	str	r3, [r4, #40]
	ldr	r8, .L223+32
	add	r7, r6, #64
.L164:
	ldrb	r3, [r6, #1]!	@ zero_extendqisi2
	lsl	r5, r3, #1
	cmp	r3, #0
	add	r5, r5, #83886080
	beq	.L163
	mov	r3, #2000
	mov	r1, #0
	ldr	r2, [r4, #40]
	ldrh	r0, [r5]
	mov	lr, pc
	bx	r8
	strh	r0, [r5]	@ movhi
.L163:
	cmp	r7, r6
	bne	.L164
.L162:
	ldr	r3, [r4, #52]
	add	r3, r3, #1
	cmp	r3, #200
	str	r3, [r4, #52]
	ble	.L161
	ldr	r10, [r4, #56]
	cmp	r10, #0
	beq	.L216
.L161:
	ldr	r3, [r4, #68]
	cmp	r3, #0
	bne	.L174
.L182:
	mov	r6, #512
	ldr	r3, .L223+36
	ldrb	r2, [r3, #56]	@ zero_extendqisi2
	ldr	r5, .L223+40
	lsl	r2, r2, #3
	strh	r6, [r5, r2]	@ movhi
	ldr	r3, .L223+44
	mov	lr, pc
	bx	r3
	ldr	r4, .L223+48
	ldr	r3, .L223+52
	mov	lr, pc
	bx	r3
	mov	r3, r6
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r5, .L223+56
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L217
	ldr	r3, .L223+60
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L218
.L186:
	ldr	r3, .L223+64
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L219
.L187:
	ldr	r3, .L223+68
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L152
	ldr	r3, .L223+72
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L220
.L152:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L216:
	ldr	r3, [r4, #60]
	add	r3, r3, #1
	cmp	r3, #60
	strle	r3, [r4, #60]
	ble	.L161
	ldr	r5, [r4, #64]
	mov	r2, #1
	rsbs	r1, r5, #1
	movcc	r1, #0
	ldr	r3, .L223+76
	str	r10, [r4, #60]
	str	r10, [r4, #72]
	str	r10, [r4, #76]
	str	r2, [r4, #68]
	str	r2, [r4, #56]
	str	r1, [r4, #64]
	add	r0, r3, #512
	rsb	r1, r3, #83886080
.L166:
	ldrh	r2, [r1, r3]
	strh	r2, [r3, #2]!	@ movhi
	cmp	r3, r0
	bne	.L166
	ldr	r0, .L223+24
	ldr	r7, .L223+80
	ldr	r8, .L223+84
	ldr	r6, .L223+88
.L167:
	ldr	lr, .L223+16
	ldr	ip, .L223+20
	ldr	r9, .L223+88
	sub	r2, r0, #64
	b	.L172
.L222:
	cmp	r1, r6
	orreq	r3, r3, #320
	orreq	r3, r3, #2
	strheq	r3, [r2]	@ movhi
	beq	.L170
	orr	r3, r3, #344
	cmp	r1, #348
	orr	r3, r3, #3
	bne	.L170
.L215:
	strh	r3, [r2]	@ movhi
.L170:
	add	r2, r2, #2
	cmp	r0, r2
	beq	.L221
.L172:
	ldrh	r3, [r2]
	cmp	r5, #0
	and	r1, r3, lr
	and	r3, r3, ip
	bne	.L222
	cmp	r1, r7
	orreq	r3, r3, r9
	strheq	r3, [r2]	@ movhi
	beq	.L170
	cmp	r1, r8
	bne	.L170
	orr	r3, r3, #348
	b	.L215
.L174:
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	cmp	r3, #8
	ldr	r10, [r4, #76]
	ble	.L173
	mov	r2, #0
	ldr	r3, [r4, #72]
	sub	r1, r3, r2
	rsbs	r3, r1, #0
	adc	r3, r3, r1
	add	r10, r10, #1
	str	r10, [r4, #76]
	str	r3, [r4, #72]
	str	r2, [r4, #80]
.L178:
	cmp	r10, #3
	ble	.L179
	mov	r3, #0
	ldr	r2, .L223+28
	str	r3, [r4, #68]
	ldr	r0, .L223+92
	add	r1, r2, #64
.L181:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	lslne	r3, r3, #1
	addne	r3, r3, #83886080
	strhne	r0, [r3]	@ movhi
	cmp	r1, r2
	bne	.L181
	b	.L182
.L217:
	ldr	r3, .L223+96
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L223+100
	ldr	r3, .L223+104
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r3, [r4]
	ldr	r3, .L223+60
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L186
.L218:
	bl	goToLose
	ldr	r3, .L223+64
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L187
.L219:
	bl	goToPhaseTwoInstructions
	b	.L187
.L179:
	ldr	r2, .L223+28
	ldr	r5, [r4, #72]
	ldr	r4, .L223+108
	add	lr, r2, #64
.L185:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	lsl	r3, r3, #1
	beq	.L183
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
.L183:
	cmp	lr, r2
	bne	.L185
	b	.L182
.L221:
	ldr	r3, .L223+112
	add	r0, r0, #64
	cmp	r0, r3
	bne	.L167
	mov	r3, #1
.L173:
	str	r3, [r4, #80]
	b	.L178
.L220:
	ldr	r2, .L223+116
	ldr	r3, .L223+120
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	goToPause
.L224:
	.align	2
.L223:
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
	ldr	r6, .L247
	ldr	r3, .L247+4
	add	r1, r6, #8
	add	r0, r6, #4
	mov	lr, pc
	bx	r3
	ldr	r3, .L247+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L247+12
	mov	lr, pc
	bx	r3
	ldmib	r6, {r3, ip}
	ldr	r1, .L247+16
	add	r0, r3, r3, lsr #31
	add	r2, ip, ip, lsr #31
	ldrb	lr, [r1, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	lsl	r3, r3, #16
	ldr	r6, .L247+20
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
	ldr	r1, .L247+24
	strh	r0, [r4, #20]	@ movhi
	strh	r2, [r4, #22]	@ movhi
	strh	r5, [r6, r3]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L247+28
	mov	lr, pc
	bx	r3
	ldr	r7, .L247+32
	ldr	r3, .L247+36
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r1, r6
	mov	r2, #117440512
	mov	r0, #3
	ldr	r5, .L247+40
	mov	lr, pc
	bx	r5
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L243
.L226:
	ldr	r3, .L247+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L244
.L227:
	ldr	r3, .L247+48
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L245
.L228:
	ldr	r3, .L247+52
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L225
	ldr	r3, .L247+56
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L246
.L225:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L245:
	bl	goToPhaseThreeInstructions
	b	.L228
.L244:
	bl	goToLose
	b	.L227
.L243:
	mov	r5, #0
	ldr	r2, .L247+60
	ldr	r3, .L247+64
	ldr	ip, .L247+68
	strh	r5, [r2, #6]	@ movhi
	ldr	r1, [r3]
	str	r5, [r4, #208]
	mov	r2, r5
	ldr	r0, .L247+72
	ldr	r3, .L247+76
	str	r5, [ip, #8]
	mov	lr, pc
	bx	r3
	str	r5, [r7]
	b	.L226
.L246:
	ldr	r2, .L247+80
	ldr	r3, .L247+84
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	b	goToPause
.L248:
	.align	2
.L247:
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
	ldr	r3, .L251
	mov	lr, pc
	bx	r3
	ldr	r3, .L251+4
	ldr	r0, .L251+8
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r3, .L251+12
	mov	lr, pc
	bx	r3
	mov	r4, #67108864
	mov	r5, #0
	mov	r2, #5888
	strh	r5, [r4]	@ movhi
	ldr	r3, .L251+16
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L251+20
	ldr	r1, .L251+24
	ldr	r0, .L251+28
	strh	r5, [r4, #16]	@ movhi
	mov	r3, #256
	strh	r5, [r4, #18]	@ movhi
	strh	r2, [r4, #8]	@ movhi
	strh	r1, [r4, #10]	@ movhi
	mov	r2, #83886080
	strh	r0, [r4, #12]	@ movhi
	ldr	r1, .L251+32
	ldr	r4, .L251+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12800
	mov	r0, #3
	ldr	r2, .L251+40
	ldr	r1, .L251+44
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L251+48
	ldr	r1, .L251+52
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L251+56
	ldr	r1, .L251+60
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L251+64
	ldr	r1, .L251+68
	mov	lr, pc
	bx	r4
	mov	r1, #10
	mov	r0, #96
	ldr	r2, .L251+72
	ldr	r3, .L251+76
	strb	r1, [r2]
	str	r5, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L252:
	.align	2
.L251:
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
	ldr	r1, .L270
	push	{r4, r5, r6, lr}
	sub	r0, r1, #4
	ldr	r3, .L270+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L270+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L270+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L270+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L270+20
	ldrh	r3, [r3, #12]
	rsb	r2, r3, #19
	cmp	r2, #2
	bhi	.L254
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
.L255:
	ldr	r3, .L270+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L257
	ldr	r0, .L270+28
	ldr	lr, .L270+32
	ldr	ip, .L270+36
	ldr	r4, .L270+40
	ldr	r5, .L270+44
.L256:
	sub	r2, r0, #64
.L259:
	ldrh	r3, [r2]
	and	r1, r3, lr
	cmp	r1, ip
	andeq	r3, r3, r4
	orreq	r3, r3, #105
	strheq	r3, [r2]	@ movhi
	add	r2, r2, #2
	cmp	r2, r0
	bne	.L259
	add	r0, r0, #64
	cmp	r0, r5
	bne	.L256
.L257:
	mov	lr, #67108864
	mov	r4, #512
	ldr	r3, .L270+48
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #8]
	ldr	r3, .L270+52
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	asr	r0, r0, #1
	asr	r2, r2, #1
	ldr	r5, .L270+56
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
	ldr	r2, .L270+60
	strh	r4, [r5, r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L270+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L270+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L270+72
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L270+76
	mov	lr, pc
	bx	r4
	ldr	r3, .L270+80
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L268
.L260:
	ldr	r3, .L270+84
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L269
	pop	{r4, r5, r6, lr}
	bx	lr
.L254:
	rsb	r2, r3, #20
	cmp	r2, #3
	ble	.L255
	mov	r3, #67108864
	mov	r2, #0
	strh	r2, [r3, #76]	@ movhi
	ldr	r1, .L270+88
	ldrh	r0, [r3, #8]
	and	r1, r1, r0
	strh	r1, [r3, #8]	@ movhi
	ldr	r1, .L270+88
	ldrh	r0, [r3, #10]
	and	r1, r1, r0
	strh	r1, [r3, #10]	@ movhi
	ldr	r1, .L270+88
	ldrh	r0, [r3, #12]
	and	r1, r1, r0
	strh	r1, [r3, #12]	@ movhi
	strh	r2, [r3, #80]	@ movhi
	strh	r2, [r3, #82]	@ movhi
	b	.L255
.L269:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L268:
	bl	goToLose
	b	.L260
.L271:
	.align	2
.L270:
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
	ldr	r6, .L274
	strh	r5, [r4]	@ movhi
	mov	r2, #83886080
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	ldr	r1, .L274+4
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L274+8
	ldr	r1, .L274+12
	mov	lr, pc
	bx	r6
	ldr	r2, .L274+16
	mov	r3, #1024
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L274+20
	ldr	r1, .L274+24
	mov	lr, pc
	bx	r6
	mov	r2, #11
	ldr	r3, .L274+28
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #18]	@ movhi
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L275:
	.align	2
.L274:
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
	ldr	r10, .L308
	ldrh	r3, [r10]
	tst	r3, #128
	bne	.L303
	ldr	r6, .L308+4
.L277:
	tst	r3, #64
	bne	.L307
.L280:
	ldr	r3, [r6, #88]
	ldr	r9, .L308+8
	cmp	r3, #0
	ldr	r7, .L308+12
	streq	r9, [r6, #88]
.L286:
	ldr	r3, .L308+16
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	mov	r5, #0
	ldrh	fp, [r3, #4]
	ldr	r8, .L308+20
.L282:
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
	bne	.L282
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
	beq	.L276
	ldr	r3, .L308+24
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L276
	ldr	r3, [r6, #84]
	cmp	r3, #0
	beq	.L285
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToGameInstructions
.L276:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L303:
	ldr	r2, .L308+24
	ldrh	r2, [r2]
	tst	r2, #128
	ldr	r6, .L308+4
	bne	.L277
	ldr	r2, [r6, #84]
	cmp	r2, #0
	bne	.L277
	ldr	r3, .L308+28
	ldr	r9, .L308+8
	ldr	r1, [r3]
	ldr	r0, .L308+32
	ldr	r3, .L308+36
	mov	lr, pc
	bx	r3
	mov	r2, r9
	ldr	r7, .L308+12
	add	r0, r9, #12
.L278:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L278
	mov	r3, #1
	mov	r2, #0
	str	r0, [r6, #88]
	str	r3, [r6, #84]
	str	r3, [r9, #24]
	str	r2, [r6, #92]
	b	.L286
.L307:
	ldr	r3, .L308+24
	ldrh	r2, [r3]
	ands	r2, r2, #64
	bne	.L280
	ldr	r3, [r6, #84]
	cmp	r3, #0
	beq	.L280
	ldr	r3, .L308+28
	ldr	r0, .L308+32
	ldr	r1, [r3]
	ldr	r3, .L308+36
	mov	lr, pc
	bx	r3
	ldr	r2, .L308+40
	ldr	r7, .L308+12
	add	r0, r2, #12
.L281:
	ldr	r3, [r2], #4
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	cmp	r0, r2
	add	r3, r3, #83886080
	strh	r1, [r3]	@ movhi
	bne	.L281
	mov	r3, #0
	mov	r2, #1
	ldr	r9, .L308+8
	str	r3, [r6, #84]
	str	r3, [r6, #92]
	str	r2, [r9, #24]
	str	r9, [r6, #88]
	b	.L286
.L285:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToStart
.L309:
	.align	2
.L308:
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
	ldr	r3, .L315
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L315+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L316:
	.align	2
.L315:
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
	mov	r0, #0
	ldr	r2, .L323
	mov	r1, r2
	ldr	ip, .L323+4
	ldr	r3, .L323+8
	push	{r4, r5, lr}
	str	r0, [ip]
	ldr	lr, .L323+12
	ldr	ip, .L323+16
	str	r0, [r3]
	ldr	r3, .L323+20
	str	r0, [lr]
	str	r0, [ip]
	ldr	lr, .L323+24
	ldr	ip, .L323+28
	str	r0, [r3]
	ldr	r3, .L323+32
	str	r0, [lr]
	str	r0, [ip, #4]
	str	r0, [ip, #8]
	str	r0, [ip, #12]
	str	r0, [ip, #32]
	str	r0, [ip, #28]
	str	r0, [ip]
	str	r0, [ip, #16]
	str	r0, [ip, #36]
	str	r0, [ip, #40]
	str	r0, [ip, #96]
	str	r0, [ip, #100]
	add	r5, r3, #32
.L318:
	ldrh	r4, [r3]
	ldrh	lr, [r3, #2]
	ldrh	ip, [r3, #4]
	ldrh	r0, [r3, #6]
	add	r3, r3, #8
	cmp	r3, r5
	strh	r4, [r1]	@ movhi
	strh	lr, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	strh	r0, [r1, #6]	@ movhi
	add	r1, r1, #8
	bne	.L318
	mov	r3, #117
	ldr	r1, .L323+36
.L319:
	ldrh	ip, [r2]
	add	r0, r1, r3, lsl #1
	strh	ip, [r0, #-2]	@ movhi
	ldrh	ip, [r2, #2]
	lsl	r0, r3, #1
	strh	ip, [r1, r0]	@ movhi
	ldrh	ip, [r2, #4]
	add	r0, r1, r3, lsl #1
	strh	ip, [r0, #2]	@ movhi
	add	r3, r3, #32
	ldrh	ip, [r2, #6]
	cmp	r3, #245
	strh	ip, [r0, #4]	@ movhi
	add	r2, r2, #8
	bne	.L319
	pop	{r4, r5, lr}
	bx	lr
.L324:
	.align	2
.L323:
	.word	currentBlock
	.word	gameOver
	.word	winPhaseOne
	.word	winPhaseTwo
	.word	winPhaseThree
	.word	next
	.word	leftWallTouched
	.word	.LANCHOR0
	.word	originalBlock
	.word	100706304
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
	ldr	r0, .L341
	ldr	r2, .L341+4
	sub	sp, sp, #44
	strh	r0, [r3]	@ movhi
	ldr	r3, .L341+8
	str	r1, [r2]
	ldr	fp, .L341+12
	mov	lr, pc
	bx	r3
	mov	r2, #83886080
	ldr	r1, .L341+16
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	fp
	ldr	r0, .L341+20
	ldr	r3, .L341+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L341+28
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L341+32
	ldr	r3, .L341+36
	add	r9, sp, #4
	mov	lr, pc
	bx	r3
	mov	r2, r9
	ldr	r3, .L341+16
	add	r0, r3, #34
.L326:
	ldrh	r1, [r3], #2
	cmp	r3, r0
	strh	r1, [r2], #2	@ movhi
	bne	.L326
	mov	r10, #0
	ldr	r5, .L341+40
	ldr	r8, .L341+44
	ldr	r7, .L341+48
	sub	r5, r5, r9
	add	r6, r9, #34
.L328:
	mov	lr, pc
	bx	r8
	mov	r4, r9
.L327:
	ldrh	r0, [r4], #2
	mov	r3, #120
	mov	r2, r10
	mov	r1, #0
	mov	lr, pc
	bx	r7
	cmp	r4, r6
	strh	r0, [r5, r4]	@ movhi
	bne	.L327
	add	r10, r10, #1
	cmp	r10, #121
	bne	.L328
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
	ldr	r1, .L341+52
	mov	lr, pc
	bx	fp
	ldr	r0, .L341+56
	ldr	r3, .L341+24
	mov	lr, pc
	bx	r3
	mov	r4, #0
	mov	r5, #83886080
	ldr	r6, .L341+60
	ldr	r7, .L341+64
	b	.L336
.L334:
	add	r4, r4, #1
.L336:
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
	beq	.L334
	cmp	r4, #60
	mvneq	r3, #32768
	strheq	r3, [r5, #34]	@ movhi
	beq	.L334
	cmp	r4, #90
	mvneq	r3, #32768
	strheq	r3, [r5, #36]	@ movhi
	beq	.L334
	cmp	r4, #179
	bne	.L334
	mov	r2, #83886080
	ldr	r1, .L341+68
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	fp
	ldr	r0, .L341+72
	ldr	r3, .L341+24
	mov	lr, pc
	bx	r3
	bl	resetGameState
	mov	r2, #0
	ldr	r3, .L341+76
	strb	r2, [r3]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L342:
	.align	2
.L341:
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
	ldr	r3, .L345
	mov	lr, pc
	bx	r3
	ldr	r3, .L345+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L345+8
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #1
	ldrh	r3, [r2, #4]
	orr	r3, r3, #8
	strh	r3, [r2, #4]	@ movhi
	ldr	r3, .L345+12
	ldrh	r2, [r3]
	ldr	r0, .L345+16
	ldr	ip, .L345+20
	orr	r2, r2, r1
	strh	r2, [r3]	@ movhi
	pop	{r4, lr}
	str	ip, [r0, #4092]
	strh	r1, [r3, #8]	@ movhi
	b	goToSplashScreen
.L346:
	.align	2
.L345:
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
	ldr	r5, .L354
	ldr	r3, .L354+4
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
	ldr	r2, .L354+8
	strh	ip, [r4, #22]	@ movhi
	strh	r3, [r4, #24]	@ movhi
	strh	r0, [r4, #26]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L354+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L354+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L354+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L354+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L347
	ldr	r3, .L354+28
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L353
.L347:
	pop	{r4, r5, r6, lr}
	bx	lr
.L353:
	bl	goToSplashScreen
	ldr	r3, .L354+32
	strb	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L355:
	.align	2
.L354:
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
	ldr	r3, .L381
	mov	lr, pc
	bx	r3
	ldr	r4, .L381+4
	ldr	r7, .L381+8
	ldr	r6, .L381+12
	ldr	fp, .L381+16
	ldr	r10, .L381+20
	ldr	r9, .L381+24
	ldr	r8, .L381+28
	ldr	r5, .L381+32
.L370:
	ldrh	r1, [r4]
	strh	r1, [r7]	@ movhi
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L357
.L359:
	.word	.L369
	.word	.L368
	.word	.L367
	.word	.L366
	.word	.L365
	.word	.L364
	.word	.L363
	.word	.L362
	.word	.L361
	.word	.L360
	.word	.L360
	.word	.L358
.L360:
	mov	lr, pc
	bx	r9
.L357:
	mov	lr, pc
	bx	r8
	b	.L370
.L361:
	ldr	r3, .L381+36
	mov	lr, pc
	bx	r3
	b	.L357
.L362:
	ldr	r3, .L381+40
	mov	lr, pc
	bx	r3
	b	.L357
.L363:
	tst	r1, #8
	beq	.L357
	tst	r3, #8
	bne	.L357
	ldr	r3, .L381+44
	mov	lr, pc
	bx	r3
	b	.L357
.L364:
	ldr	r3, .L381+48
	mov	lr, pc
	bx	r3
	b	.L357
.L368:
	mov	lr, pc
	bx	r10
	b	.L357
.L358:
	tst	r1, #8
	beq	.L357
	tst	r3, #8
	bne	.L357
	ldr	r3, .L381+52
	mov	lr, pc
	bx	r3
	b	.L357
.L369:
	mov	lr, pc
	bx	fp
	b	.L357
.L366:
	ldr	r3, .L381+56
	mov	lr, pc
	bx	r3
	b	.L357
.L367:
	ldr	r3, .L381+60
	mov	lr, pc
	bx	r3
	b	.L357
.L365:
	tst	r1, #8
	beq	.L357
	tst	r3, #8
	bne	.L357
	ldr	r3, .L381+64
	mov	lr, pc
	bx	r3
	b	.L357
.L382:
	.align	2
.L381:
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
	.type	direction.4424, %object
	.size	direction.4424, 4
direction.4424:
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
	.type	tileAnimTimer.4540, %object
	.size	tileAnimTimer.4540, 4
tileAnimTimer.4540:
	.space	4
	.type	tileAnimState.4541, %object
	.size	tileAnimState.4541, 4
tileAnimState.4541:
	.space	4
	.type	swapDelayFrames.4563, %object
	.size	swapDelayFrames.4563, 4
swapDelayFrames.4563:
	.space	4
	.type	hasFlashedOnce.4564, %object
	.size	hasFlashedOnce.4564, 4
hasFlashedOnce.4564:
	.space	4
	.type	swapTimer.4561, %object
	.size	swapTimer.4561, 4
swapTimer.4561:
	.space	4
	.type	swapped.4562, %object
	.size	swapped.4562, 4
swapped.4562:
	.space	4
	.type	isFlashing.4539, %object
	.size	isFlashing.4539, 4
isFlashing.4539:
	.space	4
	.type	flashState.4536, %object
	.size	flashState.4536, 4
flashState.4536:
	.space	4
	.type	flashFrame.4538, %object
	.size	flashFrame.4538, 4
flashFrame.4538:
	.space	4
	.type	flashTimer.4537, %object
	.size	flashTimer.4537, 4
flashTimer.4537:
	.space	4
	.type	usingAltIndices.4427, %object
	.size	usingAltIndices.4427, 4
usingAltIndices.4427:
	.space	4
	.type	animatedIndices.4426, %object
	.size	animatedIndices.4426, 4
animatedIndices.4426:
	.space	4
	.type	t.4423, %object
	.size	t.4423, 4
t.4423:
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
