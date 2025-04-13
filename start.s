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
	.file	"start.c"
	.text
	.align	2
	.global	initStartPlayer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initStartPlayer, %function
initStartPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, lr}
	mov	r2, #72
	mov	r4, #112
	mov	r1, #5
	mov	r0, #1
	mov	lr, #16
	mov	r5, #165
	ldr	ip, .L4
	str	r3, [ip, #16]
	strb	r3, [ip, #56]
	str	r3, [ip, #44]
	str	r3, [ip, #36]
	str	r3, [ip, #12]
	str	r4, [ip]
	str	r2, [ip, #4]
	str	r1, [ip, #48]
	str	r0, [ip, #40]
	ldr	r4, .L4+4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+8
	ldr	r1, .L4+12
	str	r5, [ip, #20]
	str	lr, [ip, #24]
	str	lr, [ip, #28]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	startPlayer
	.word	DMANow
	.word	83886592
	.word	playerPal
	.word	100728832
	.word	playerTiles
	.size	initStartPlayer, .-initStartPlayer
	.align	2
	.global	initGuideSprite
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGuideSprite, %function
initGuideSprite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1
	mov	r0, #32
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r6, #436
	mov	r5, #127
	mov	r4, #16
	mov	lr, #416
	mov	ip, #456
	ldr	r3, .L8
	str	r0, [r3, #28]
	strb	r1, [r3, #56]
	ldr	r0, .L8+4
	str	r6, [r3, #16]
	str	r5, [r3, #20]
	str	r4, [r3, #24]
	str	lr, [r0]
	str	r1, [r3, #48]
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #12]
	str	ip, [r0, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	guide
	.word	.LANCHOR0
	.size	initGuideSprite, .-initGuideSprite
	.global	__aeabi_idivmod
	.align	2
	.global	updateStartPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateStartPlayer, %function
updateStartPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, #0
	ldr	r4, .L63
	ldr	r3, .L63+4
	ldr	r2, [r4, #16]
	ldr	r5, [r4, #24]
	ldr	ip, [r4, #20]
	ldr	lr, [r4, #28]
	ldrh	r3, [r3]
	add	r10, r5, r2
	mov	r7, r1
	sub	sp, sp, #12
	sub	r1, r10, #1
	add	r9, lr, ip
	ands	r8, r3, #16
	str	r1, [sp, #4]
	mov	r6, r0
	str	fp, [r4, #40]
	sub	r1, r9, #1
	bne	.L28
	mov	r9, #1
	ldr	r0, .L63+8
	cmp	r10, #512
	add	fp, r0, ip, lsl #9
	str	r8, [r4, #36]
	str	r9, [r4, #40]
	ldrb	r8, [fp, r10]	@ zero_extendqisi2
	add	r9, r2, r9
	blt	.L61
	mov	r9, r2
.L12:
	cmp	r8, #2
	beq	.L15
	add	r0, r0, r1, lsl #9
	ldrb	fp, [r0, r10]	@ zero_extendqisi2
.L13:
	cmp	fp, #2
	bne	.L59
.L15:
	mov	r0, #1
	ldr	r8, .L63+12
	tst	r3, #32
	str	r0, [r8, #8]
	beq	.L62
.L16:
	tst	r3, #64
	bne	.L20
.L17:
	mov	r0, #1
	mov	r1, #2
	subs	ip, ip, #1
	str	r0, [r4, #40]
	str	r1, [r4, #36]
	bmi	.L20
	ldr	r1, .L63+8
	add	r0, r1, r2
	ldrb	r0, [r0, ip, lsl #9]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L20
	ldr	r0, [sp, #4]
	add	r1, r1, r0
	ldrb	r1, [r1, ip, lsl #9]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L20
	tst	r3, #128
	str	ip, [r4, #20]
	beq	.L18
.L24:
	ldr	r3, [r8, #12]
	add	r3, r3, #1
.L60:
	str	r3, [r8, #12]
.L22:
	ldr	r2, .L63+16
	ldr	r2, [r2]
	cmp	r2, r3
	bge	.L27
	ldr	r0, [r8, #16]
	ldr	r3, .L63+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r8, #16]
	str	r3, [r8, #12]
	b	.L27
.L61:
	add	fp, r0, r1, lsl #9
	cmp	r8, #0
	ldrb	fp, [fp, r10]	@ zero_extendqisi2
	beq	.L30
	cmp	fp, #0
	strne	r9, [r4, #16]
	bne	.L12
	cmp	r8, #2
	beq	.L31
.L28:
	mov	r9, r2
.L59:
	tst	r3, #32
	ldr	r8, .L63+12
	bne	.L16
.L62:
	mov	r10, #1
	subs	r0, r9, #1
	str	r10, [r4, #40]
	str	r10, [r4, #36]
	bmi	.L16
	ldr	r10, .L63+8
	add	fp, r10, ip, lsl #9
	ldrb	fp, [fp, r0]	@ zero_extendqisi2
	cmp	fp, #0
	beq	.L16
	add	r1, r10, r1, lsl #9
	ldrb	r1, [r1, r0]	@ zero_extendqisi2
	cmp	r1, #0
	movne	r9, r0
	strne	r0, [r4, #16]
	tst	r3, #64
	beq	.L17
.L20:
	tst	r3, #128
	beq	.L18
	ldr	r3, [r8, #12]
	ldr	r2, [r4, #40]
	add	r3, r3, #1
	cmp	r2, #0
	str	r3, [r8, #12]
	streq	r2, [r8, #16]
	streq	r2, [r8, #12]
	bne	.L22
.L27:
	add	r5, r5, r5, lsr #31
	asr	r5, r5, #1
	rsb	r5, r5, #120
	sub	r9, r9, r5
	str	r9, [r6]
	ldr	r3, [r4, #28]
	add	r3, r3, r3, lsr #31
	ldr	r2, [r4, #20]
	asr	r3, r3, #1
	rsb	r3, r3, #80
	sub	r3, r2, r3
	str	r3, [r7]
	ldr	r3, [r6]
	bic	r3, r3, r3, asr #31
	str	r3, [r6]
	ldr	r3, [r7]
	bic	r3, r3, r3, asr #31
	str	r3, [r7]
	ldr	r3, [r6]
	cmp	r3, #272
	movge	r3, #272
	str	r3, [r6]
	ldr	r3, [r7]
	cmp	r3, #352
	movge	r3, #352
	str	r3, [r7]
	ldr	r3, [r6]
	add	r2, r3, #508
	cmp	r3, #0
	add	r2, r2, #3
	movlt	r3, r2
	ldr	r2, .L63+24
	asr	r3, r3, #9
	add	r3, r3, #20
	str	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L18:
	mov	r0, #1
	mov	r1, #3
	ldr	r3, [r4, #20]
	str	r0, [r4, #40]
	rsb	r0, lr, #512
	cmp	r3, r0
	str	r1, [r4, #36]
	bge	.L24
	ldr	r1, .L63+8
	add	lr, lr, r3
	add	r2, r1, r2
	ldrb	r2, [r2, lr, lsl #9]	@ zero_extendqisi2
	cmp	r2, #0
	add	r2, r3, #1
	beq	.L24
	ldr	r3, [sp, #4]
	add	r1, r1, r3
	ldrb	r3, [r1, lr, lsl #9]	@ zero_extendqisi2
	cmp	r3, #0
	ldr	r3, [r8, #12]
	add	r3, r3, #1
	strne	r2, [r4, #20]
	strne	r3, [r8, #12]
	bne	.L22
	b	.L60
.L30:
	mov	r9, r2
	b	.L13
.L31:
	mov	r9, r2
	b	.L15
.L64:
	.align	2
.L63:
	.word	startPlayer
	.word	buttons
	.word	townCMBitmap
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	__aeabi_idivmod
	.word	sbb
	.size	updateStartPlayer, .-updateStartPlayer
	.align	2
	.global	updateGuideSprite
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGuideSprite, %function
updateGuideSprite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L74
	ldr	r2, .L74+4
	ldr	r1, [r3, #20]
	ldr	r0, [r2, #4]
	add	r1, r1, #1
	cmp	r1, r0
	push	{r4, lr}
	str	r1, [r3, #20]
	ble	.L66
	ldr	r0, [r2, #8]
	ldr	r1, [r3, #24]
	cmn	r0, #1
	add	r1, r1, #1
	beq	.L73
	rsbs	ip, r1, #0
	and	ip, ip, #3
	and	r0, r1, #3
	rsbpl	r0, ip, #0
.L68:
	mov	r1, #0
	str	r0, [r3, #24]
	str	r1, [r3, #20]
.L66:
	ldr	r1, [r3, #28]
	ldr	ip, [r2, #12]
	add	r1, r1, #1
	ldr	r0, .L74+8
	cmp	r1, ip
	str	r1, [r3, #28]
	ldr	r1, [r0, #16]
	ble	.L69
	mov	ip, #0
	ldr	lr, [r2, #16]
	ldr	r4, [r2, #8]
	mla	r1, r4, lr, r1
	str	ip, [r3, #28]
	str	r1, [r0, #16]
.L69:
	ldr	ip, [r3]
	cmp	ip, r1
	ble	.L70
	mov	lr, #1
	mov	r1, #0
	str	lr, [r2, #8]
	str	ip, [r0, #16]
	str	r1, [r3, #24]
	pop	{r4, lr}
	bx	lr
.L70:
	ldr	ip, [r3, #4]
	cmp	ip, r1
	mvnlt	lr, #0
	movlt	r1, #0
	strlt	lr, [r2, #8]
	strlt	ip, [r0, #16]
	strlt	r1, [r3, #24]
	pop	{r4, lr}
	bx	lr
.L73:
	ldr	r0, .L74+12
	smull	lr, ip, r0, r1
	asr	r0, r1, #31
	rsb	r0, r0, ip, asr #1
	add	r0, r0, r0, lsl #2
	sub	r0, r1, r0
	b	.L68
.L75:
	.align	2
.L74:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	guide
	.word	1717986919
	.size	updateGuideSprite, .-updateGuideSprite
	.align	2
	.global	drawStartPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStartPlayer, %function
drawStartPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r2, .L84
	ldr	r1, .L84+4
	ldr	r3, [r2, #20]
	ldr	r0, [r1]
	ldr	r1, .L84+8
	ldrb	ip, [r2, #56]	@ zero_extendqisi2
	ldr	r4, [r1]
	sub	r3, r3, r0
	ldr	r1, [r2, #36]
	ldr	lr, .L84+12
	ldr	r0, .L84+16
	ldr	r2, [r2, #16]
	and	r3, r3, #255
	orr	r3, r3, lr
	lsl	r5, ip, #3
	cmp	r1, #0
	strh	r3, [r0, r5]	@ movhi
	sub	r2, r2, r4
	add	r0, r0, ip, lsl #3
	bne	.L77
	ldr	r3, .L84+20
	ldr	r1, .L84+24
	ldr	r3, [r3, #16]
	add	r1, r1, r3, lsl #2
	ldr	r3, [r1, #20]
	lsl	r2, r2, #23
	add	r3, r3, #32
	lsr	r2, r2, #23
	lsl	r3, r3, #22
	orr	r2, r2, lr
	lsr	r3, r3, #22
	strh	r2, [r0, #2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
.L76:
	pop	{r4, r5, lr}
	bx	lr
.L77:
	cmp	r1, #1
	beq	.L82
	cmp	r1, #2
	beq	.L83
	cmp	r1, #3
	bne	.L76
	ldr	r1, .L84+20
	ldr	r3, .L84+24
	ldr	r1, [r1, #16]
	add	r3, r3, r1, lsl #2
	ldr	r1, [r3, #60]
	lsl	r3, r2, #23
	add	r2, r1, #32
	lsr	r3, r3, #23
	lsl	r2, r2, #22
	orr	r3, r3, lr
	lsr	r2, r2, #22
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	b	.L76
.L82:
	ldr	r1, .L84+20
	ldr	r3, .L84+24
	ldr	r1, [r1, #16]
	add	r3, r3, r1, lsl #2
	ldr	r1, [r3, #20]
	lsl	r2, r2, #23
	add	r1, r1, #32
	lsr	r2, r2, #23
	lsl	r1, r1, #22
	orr	r2, r2, #36864
	lsr	r1, r1, #22
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L83:
	ldr	r1, .L84+20
	ldr	r3, .L84+24
	ldr	r1, [r1, #16]
	add	r3, r3, r1, lsl #2
	ldr	r1, [r3, #40]
	lsl	r2, r2, #23
	add	r1, r1, #32
	lsr	r2, r2, #23
	lsl	r1, r1, #22
	orr	r2, r2, lr
	lsr	r1, r1, #22
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L85:
	.align	2
.L84:
	.word	startPlayer
	.word	vOff
	.word	hOff
	.word	-32768
	.word	shadowOAM
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	drawStartPlayer, .-drawStartPlayer
	.align	2
	.global	drawGuideSprite
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGuideSprite, %function
drawGuideSprite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r2, .L90
	ldr	r1, .L90+4
	ldr	lr, .L90+8
	ldr	r1, [r1]
	ldr	r3, [r2, #20]
	ldr	r4, .L90+12
	ldrb	ip, [r2, #56]	@ zero_extendqisi2
	sub	r3, r3, r1
	ldr	r1, [r2, #16]
	ldr	r2, [r4]
	ldr	r4, [lr, #8]
	cmn	r4, #1
	sub	r1, r1, r2
	moveq	r2, #0
	movne	r2, #4096
	and	r3, r3, #255
	mvn	r3, r3, lsl #17
	lsl	r1, r1, #23
	lsr	r1, r1, #23
	orr	r2, r2, r1
	mvn	r2, r2, lsl #17
	mvn	r3, r3, lsr #17
	mvn	r2, r2, lsr #17
	ldr	r0, .L90+16
	lsl	ip, ip, #3
	strh	r3, [r0, ip]	@ movhi
	ldr	r3, .L90+20
	ldr	r3, [r3, #24]
	addeq	lr, lr, r3, lsl #2
	addne	lr, lr, r3, lsl #2
	ldreq	r3, [lr, #80]
	ldrne	r3, [lr, #100]
	add	r3, r3, #288
	lsl	r3, r3, #22
	add	r1, r0, ip
	lsr	r3, r3, #22
	strh	r2, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L91:
	.align	2
.L90:
	.word	guide
	.word	vOff
	.word	.LANCHOR1
	.word	hOff
	.word	shadowOAM
	.word	.LANCHOR0
	.size	drawGuideSprite, .-drawGuideSprite
	.align	2
	.global	checkPlayerGuideCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkPlayerGuideCollision, %function
checkPlayerGuideCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L94
	add	r1, r3, #24
	ldm	r1, {r1, ip}
	ldr	r2, [r3, #20]
	ldr	r3, [r3, #16]
	sub	sp, sp, #16
	ldr	r0, .L94+4
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #16
	ldm	r0, {r0, r1, r2, r3}
	ldr	r4, .L94+8
	mov	lr, pc
	bx	r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L95:
	.align	2
.L94:
	.word	guide
	.word	startPlayer
	.word	collision
	.size	checkPlayerGuideCollision, .-checkPlayerGuideCollision
	.global	guideMoveDelay
	.global	guideMoveCounter
	.comm	guide,60,4
	.comm	startPlayer,60,4
	.global	startHikerFramesDown
	.global	startHikerFramesUp
	.global	startHikerFramesHorizontal
	.global	startHikerFrame
	.global	startHikerFrameCounter
	.global	startHikerFrameDelay
	.global	guideRightFrames
	.global	guideLeftFrames
	.global	guidePatrolRightBound
	.global	guidePatrolLeftBound
	.global	guideMoveDirection
	.global	guideSpeed
	.global	guideAnimIndex
	.global	guideFrameDelay
	.global	guideFrameCounter
	.global	next
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	startHikerFrameDelay, %object
	.size	startHikerFrameDelay, 4
startHikerFrameDelay:
	.word	4
	.type	guideFrameDelay, %object
	.size	guideFrameDelay, 4
guideFrameDelay:
	.word	6
	.type	guideMoveDirection, %object
	.size	guideMoveDirection, 4
guideMoveDirection:
	.word	-1
	.type	guideMoveDelay, %object
	.size	guideMoveDelay, 4
guideMoveDelay:
	.word	2
	.type	guideSpeed, %object
	.size	guideSpeed, 4
guideSpeed:
	.word	1
	.type	startHikerFramesHorizontal, %object
	.size	startHikerFramesHorizontal, 20
startHikerFramesHorizontal:
	.word	24
	.word	26
	.word	28
	.word	20
	.word	22
	.type	startHikerFramesUp, %object
	.size	startHikerFramesUp, 20
startHikerFramesUp:
	.word	0
	.word	2
	.word	4
	.word	6
	.word	8
	.type	startHikerFramesDown, %object
	.size	startHikerFramesDown, 20
startHikerFramesDown:
	.word	10
	.word	12
	.word	14
	.word	16
	.word	18
	.type	guideLeftFrames, %object
	.size	guideLeftFrames, 20
guideLeftFrames:
	.word	18
	.word	16
	.word	14
	.word	12
	.word	10
	.type	guideRightFrames, %object
	.size	guideRightFrames, 16
guideRightFrames:
	.word	12
	.word	14
	.word	16
	.word	18
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	guidePatrolLeftBound, %object
	.size	guidePatrolLeftBound, 4
guidePatrolLeftBound:
	.space	4
	.type	guidePatrolRightBound, %object
	.size	guidePatrolRightBound, 4
guidePatrolRightBound:
	.space	4
	.type	next, %object
	.size	next, 4
next:
	.space	4
	.type	startHikerFrameCounter, %object
	.size	startHikerFrameCounter, 4
startHikerFrameCounter:
	.space	4
	.type	startHikerFrame, %object
	.size	startHikerFrame, 4
startHikerFrame:
	.space	4
	.type	guideFrameCounter, %object
	.size	guideFrameCounter, 4
guideFrameCounter:
	.space	4
	.type	guideAnimIndex, %object
	.size	guideAnimIndex, 4
guideAnimIndex:
	.space	4
	.type	guideMoveCounter, %object
	.size	guideMoveCounter, 4
guideMoveCounter:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
