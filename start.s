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
	.global	flashColorInTile
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	flashColorInTile, %function
flashColorInTile:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	subs	r5, r3, #0
	movne	r5, #1
	ldr	r7, [sp, #24]
	rsb	r8, r7, #100663296
	sub	r6, r7, #2
	add	r8, r8, r0, lsl #5
	add	r7, r7, #30
.L4:
	mov	ip, #0
	mov	r0, ip
	ldrh	r4, [r6, #2]!
.L3:
	asr	r3, r4, ip
	and	r3, r3, #15
	cmp	r3, r1
	movne	lr, #0
	andeq	lr, r5, #1
	cmp	lr, #0
	movne	r3, r2
	orr	r0, r0, r3, lsl ip
	add	ip, ip, #4
	lsl	r0, r0, #16
	cmp	ip, #16
	lsr	r0, r0, #16
	bne	.L3
	cmp	r7, r6
	strh	r0, [r8, r6]	@ movhi
	bne	.L4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	flashColorInTile, .-flashColorInTile
	.align	2
	.global	fillTileWithColor
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillTileWithColor, %function
fillTileWithColor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	orr	r1, r1, r1, lsl #4
	lsl	r3, r0, #5
	and	r2, r1, #255
	add	r3, r3, #100663296
	orr	r2, r2, r2, lsl #8
	add	r1, r3, #32
.L11:
	strh	r2, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L11
	bx	lr
	.size	fillTileWithColor, .-fillTileWithColor
	.align	2
	.global	initStartPlayer
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
	ldr	ip, .L16
	str	r3, [ip, #16]
	strb	r3, [ip, #56]
	str	r3, [ip, #44]
	str	r3, [ip, #36]
	str	r3, [ip, #12]
	str	r4, [ip]
	str	r2, [ip, #4]
	str	r1, [ip, #48]
	str	r0, [ip, #40]
	ldr	r4, .L16+4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L16+8
	ldr	r1, .L16+12
	str	r5, [ip, #20]
	str	lr, [ip, #24]
	str	lr, [ip, #28]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L16+16
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L17:
	.align	2
.L16:
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
	ldr	r3, .L20
	str	r0, [r3, #28]
	strb	r1, [r3, #56]
	ldr	r0, .L20+4
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
.L21:
	.align	2
.L20:
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
	mov	r9, #0
	ldr	r4, .L156
	ldr	r6, .L156+4
	ldr	r2, .L156+8
	add	r3, r4, #20
	ldm	r3, {r3, r5, lr}
	ldr	r6, [r6]
	ldr	ip, [r4, #16]
	ldrh	r2, [r2]
	cmp	r6, r9
	add	fp, r5, ip
	add	r8, lr, r3
	mov	r6, r0
	mov	r7, r1
	str	r9, [r4, #40]
	sub	sp, sp, #12
	sub	r9, fp, #1
	sub	r1, r8, #1
	and	r0, r2, #16
	beq	.L23
	cmp	r0, #0
	beq	.L24
.L147:
	ldr	r8, .L156+12
.L25:
	tst	r2, #32
	bne	.L33
	mov	r5, #1
	ldr	r0, [r4, #16]
	str	r5, [r4, #40]
	str	r5, [r4, #36]
	ldr	r5, [r8, #12]
	subs	r0, r0, #1
	ldr	r10, .L156+16
	str	r5, [sp, #4]
	bmi	.L34
	add	r5, r10, r3, lsl #9
	ldrb	fp, [r5, r0]	@ zero_extendqisi2
	add	r5, r10, r1, lsl #9
	cmp	fp, #0
	ldrb	r5, [r5, r0]	@ zero_extendqisi2
	beq	.L35
	cmp	r5, #0
	beq	.L36
	str	r0, [r4, #16]
.L34:
	ldr	r5, [sp, #4]
	cmp	r5, #0
	bne	.L38
	add	r5, r10, r3, lsl #9
	ldrb	fp, [r5, r0]	@ zero_extendqisi2
.L81:
	cmp	fp, #3
	beq	.L39
.L38:
	add	r1, r10, r1, lsl #9
	ldrb	r5, [r1, r0]	@ zero_extendqisi2
.L35:
	cmp	r5, #3
	bne	.L33
.L39:
	mov	r1, #1
	str	r1, [r8, #12]
.L33:
	tst	r2, #64
	bne	.L42
	mov	r0, #1
	mov	r1, #2
	subs	r3, r3, #1
	ldr	r10, .L156+16
	str	r0, [r4, #40]
	str	r1, [r4, #36]
	ldr	r5, [r8, #12]
	bmi	.L43
	add	r1, r10, ip
	ldrb	r0, [r1, r3, lsl #9]	@ zero_extendqisi2
	add	r1, r10, r9
	cmp	r0, #0
	ldrb	r1, [r1, r3, lsl #9]	@ zero_extendqisi2
	beq	.L44
	cmp	r1, #0
	beq	.L45
	str	r3, [r4, #20]
.L43:
	cmp	r5, #0
	bne	.L47
	add	r1, r10, ip
	ldrb	r0, [r1, r3, lsl #9]	@ zero_extendqisi2
.L80:
	cmp	r0, #3
	beq	.L48
.L47:
	add	r10, r10, r9
	ldrb	r1, [r10, r3, lsl #9]	@ zero_extendqisi2
.L44:
	cmp	r1, #3
	bne	.L42
.L48:
	mov	r3, #1
	str	r3, [r8, #12]
.L42:
	tst	r2, #128
	beq	.L50
	ldr	r2, [r4, #40]
	ldr	r5, [r4, #24]
.L51:
	ldr	r3, [r8, #16]
	cmp	r2, #0
	add	r3, r3, #1
	str	r3, [r8, #16]
	streq	r2, [r8, #20]
	streq	r2, [r8, #16]
	bne	.L58
.L78:
	add	r5, r5, r5, lsr #31
	ldr	r3, [r4, #16]
	asr	r5, r5, #1
	rsb	r5, r5, #120
	sub	r5, r3, r5
	str	r5, [r6]
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
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L24:
	mov	r8, #1
	ldr	r10, .L156+16
	add	r5, ip, r5
	cmp	fp, #512
	add	fp, r10, r3, lsl #9
	str	r0, [r4, #36]
	str	r8, [r4, #40]
	ldrb	r0, [fp, r5]	@ zero_extendqisi2
	add	fp, ip, r8
	blt	.L152
.L26:
	cmp	r0, #2
	beq	.L30
	add	r10, r10, r1, lsl #9
	ldrb	r8, [r10, r5]	@ zero_extendqisi2
.L27:
	cmp	r8, #2
	bne	.L147
.L30:
	mov	r0, #1
	ldr	r8, .L156+12
	str	r0, [r8, #8]
	b	.L25
.L23:
	cmp	r0, #0
	bne	.L149
	mov	r10, #1
	ldr	r8, .L156+20
	cmp	fp, #512
	add	fp, r8, r3, lsl #9
	add	r8, ip, r5
	str	r0, [r4, #36]
	str	r8, [sp, #4]
	ldrb	r0, [fp, r8]	@ zero_extendqisi2
	str	r10, [r4, #40]
	add	fp, ip, r10
	blt	.L153
.L61:
	cmp	r0, #2
	beq	.L65
	ldr	r0, .L156+20
	add	r8, r0, r1, lsl #9
	ldr	r0, [sp, #4]
	ldrb	r10, [r8, r0]	@ zero_extendqisi2
.L62:
	cmp	r10, #2
	bne	.L149
.L65:
	mov	r0, #1
	ldr	r8, .L156+12
	tst	r2, #32
	str	r0, [r8, #8]
	beq	.L154
.L68:
	tst	r2, #64
	bne	.L71
	mov	r0, #1
	mov	r1, #2
	subs	r3, r3, #1
	str	r0, [r4, #40]
	str	r1, [r4, #36]
	bmi	.L71
	ldr	r1, .L156+20
	add	r0, r1, ip
	ldrb	r0, [r0, r3, lsl #9]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L71
	add	r1, r1, r9
	ldrb	r1, [r1, r3, lsl #9]	@ zero_extendqisi2
	cmp	r1, #0
	strne	r3, [r4, #20]
.L71:
	tst	r2, #128
	beq	.L73
	ldr	r2, [r4, #40]
	b	.L51
.L50:
	mov	r1, #1
	mov	r2, #3
	ldr	r3, [r4, #20]
	rsb	r0, lr, #512
	cmp	r3, r0
	str	r1, [r4, #40]
	add	lr, lr, r3
	ldr	r10, .L156+16
	add	r3, r3, r1
	str	r2, [r4, #36]
	ldr	r1, [r8, #12]
	ldr	r5, [r4, #24]
	bge	.L52
	add	r2, r10, ip
	ldrb	r0, [r2, lr, lsl #9]	@ zero_extendqisi2
	add	r2, r10, r9
	cmp	r0, #0
	ldrb	r2, [r2, lr, lsl #9]	@ zero_extendqisi2
	beq	.L53
	cmp	r2, #0
	beq	.L54
	str	r3, [r4, #20]
.L52:
	cmp	r1, #0
	bne	.L148
	add	ip, r10, ip
	ldrb	r0, [ip, lr, lsl #9]	@ zero_extendqisi2
.L79:
	cmp	r0, #3
	beq	.L56
.L148:
	add	r9, r10, r9
	ldrb	r2, [r9, lr, lsl #9]	@ zero_extendqisi2
.L53:
	cmp	r2, #3
	bne	.L150
.L56:
	mov	r2, #1
	ldr	r3, [r8, #16]
	add	r3, r3, r2
	str	r3, [r8, #16]
	str	r2, [r8, #12]
.L58:
	ldr	r2, .L156+24
	ldr	r2, [r2]
	cmp	r2, r3
	bge	.L78
	ldr	r0, [r8, #20]
	ldr	r3, .L156+28
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r8, #20]
	str	r3, [r8, #16]
	b	.L78
.L153:
	ldr	r10, .L156+20
	cmp	r0, #0
	add	r10, r10, r1, lsl #9
	ldrb	r10, [r10, r8]	@ zero_extendqisi2
	beq	.L62
	cmp	r10, #0
	bne	.L155
	cmp	r0, #2
	beq	.L65
.L149:
	tst	r2, #32
	ldr	r8, .L156+12
	bne	.L68
.L154:
	mov	r0, #1
	ldr	r10, [r4, #16]
	subs	r10, r10, #1
	str	r0, [r4, #40]
	str	r0, [r4, #36]
	bmi	.L68
	ldr	r0, .L156+20
	add	fp, r0, r3, lsl #9
	ldrb	fp, [fp, r10]	@ zero_extendqisi2
	cmp	fp, #0
	beq	.L68
	add	r1, r0, r1, lsl #9
	ldrb	r1, [r1, r10]	@ zero_extendqisi2
	cmp	r1, #0
	strne	r10, [r4, #16]
	b	.L68
.L73:
	mov	r1, #1
	mov	r2, #3
	ldr	r3, [r4, #20]
	str	r1, [r4, #40]
	rsb	r1, lr, #512
	cmp	r3, r1
	str	r2, [r4, #36]
	bge	.L150
	ldr	r1, .L156+20
	add	lr, lr, r3
	add	ip, r1, ip
	ldrb	r2, [ip, lr, lsl #9]	@ zero_extendqisi2
	cmp	r2, #0
	add	r2, r3, #1
	beq	.L150
	add	r9, r1, r9
	ldrb	r3, [r9, lr, lsl #9]	@ zero_extendqisi2
	cmp	r3, #0
	ldr	r3, [r8, #16]
	add	r3, r3, #1
	strne	r2, [r4, #20]
	strne	r3, [r8, #16]
	bne	.L58
	b	.L151
.L54:
	cmp	r1, #0
	beq	.L79
.L150:
	ldr	r3, [r8, #16]
	add	r3, r3, #1
.L151:
	str	r3, [r8, #16]
	b	.L58
.L152:
	add	r8, r10, r1, lsl #9
	cmp	r0, #0
	ldrb	r8, [r8, r5]	@ zero_extendqisi2
	beq	.L27
	cmp	r8, #0
	beq	.L28
	str	fp, [r4, #16]
	b	.L26
.L36:
	ldr	r5, [sp, #4]
	cmp	r5, #0
	beq	.L81
	b	.L33
.L45:
	cmp	r5, #0
	beq	.L80
	b	.L42
.L28:
	cmp	r0, #2
	bne	.L147
	b	.L30
.L155:
	str	fp, [r4, #16]
	b	.L61
.L157:
	.align	2
.L156:
	.word	startPlayer
	.word	talkedToGuide
	.word	buttons
	.word	.LANCHOR0
	.word	townCMBitmap
	.word	townCM2Bitmap
	.word	.LANCHOR1
	.word	__aeabi_idivmod
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
	ldr	r3, .L171
	ldr	r2, .L171+4
	ldr	r1, [r3, #24]
	ldr	r0, [r2, #4]
	add	r1, r1, #1
	cmp	r1, r0
	push	{r4, lr}
	str	r1, [r3, #24]
	ble	.L159
	ldr	r0, [r2, #8]
	ldr	r1, [r3, #28]
	cmn	r0, #1
	add	r1, r1, #1
	beq	.L170
	rsbs	ip, r1, #0
	and	ip, ip, #3
	and	r0, r1, #3
	rsbpl	r0, ip, #0
.L161:
	mov	r1, #0
	str	r0, [r3, #28]
	str	r1, [r3, #24]
.L159:
	ldr	r1, [r3, #32]
	ldr	ip, [r2, #12]
	add	r1, r1, #1
	ldr	r0, .L171+8
	cmp	r1, ip
	str	r1, [r3, #32]
	ldr	r1, [r0, #16]
	ble	.L162
	mov	ip, #0
	ldr	lr, [r2, #16]
	ldr	r4, [r2, #8]
	mla	r1, r4, lr, r1
	str	ip, [r3, #32]
	str	r1, [r0, #16]
.L162:
	ldr	ip, [r3]
	cmp	ip, r1
	ble	.L163
	mov	lr, #1
	mov	r1, #0
	str	ip, [r0, #16]
	str	lr, [r2, #8]
	str	r1, [r3, #28]
.L164:
	ldr	r3, [r3, #12]
	cmp	r3, #0
	movne	r1, #11
	movne	r2, #6
	ldrne	r3, .L171+12
	pop	{r4, lr}
	strne	r1, [r3, #28]
	strne	r2, [r3, #24]
	bx	lr
.L163:
	ldr	ip, [r3, #4]
	cmp	ip, r1
	mvnlt	lr, #0
	movlt	r1, #0
	strlt	ip, [r0, #16]
	strlt	lr, [r2, #8]
	strlt	r1, [r3, #28]
	b	.L164
.L170:
	ldr	r0, .L171+16
	smull	lr, ip, r0, r1
	asr	r0, r1, #31
	rsb	r0, r0, ip, asr #1
	add	r0, r0, r0, lsl #2
	sub	r0, r1, r0
	b	.L161
.L172:
	.align	2
.L171:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	guide
	.word	startPlayer
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
	ldr	r2, .L183
	ldr	lr, .L183+4
	ldr	r2, [r2]
	ldr	r3, [lr, #20]
	ldrb	r1, [lr, #56]	@ zero_extendqisi2
	sub	r3, r3, r2
	ldr	ip, .L183+8
	ldr	r2, .L183+12
	ldr	r4, .L183+16
	and	r3, r3, #255
	orr	r3, r3, ip
	lsl	r5, r1, #3
	strh	r3, [r2, r5]	@ movhi
	ldr	r0, .L183+20
	ldr	r3, [r4, #12]
	ldr	r0, [r0]
	cmp	r3, #0
	ldr	r3, [lr, #16]
	add	r2, r2, r1, lsl #3
	sub	r3, r3, r0
	beq	.L174
	lsl	r3, r3, #23
	ldr	r1, .L183+24
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	strh	r3, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
.L173:
	pop	{r4, r5, lr}
	bx	lr
.L174:
	ldr	r1, [lr, #36]
	cmp	r1, #0
	bne	.L176
	ldr	r0, [r4, #20]
	ldr	r1, .L183+28
	add	r1, r1, r0, lsl #2
	ldr	r0, [r1, #20]
	lsl	r3, r3, #23
	add	r0, r0, #32
	lsr	r3, r3, #23
	lsl	r0, r0, #22
	orr	r3, r3, ip
	lsr	r0, r0, #22
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L176:
	cmp	r1, #1
	beq	.L181
	cmp	r1, #2
	beq	.L182
	cmp	r1, #3
	bne	.L173
	ldr	r0, [r4, #20]
	ldr	r1, .L183+28
	add	r1, r1, r0, lsl #2
	ldr	r1, [r1, #60]
	b	.L180
.L181:
	ldr	r0, [r4, #20]
	ldr	r1, .L183+28
	add	r1, r1, r0, lsl #2
	ldr	r1, [r1, #20]
	lsl	r3, r3, #23
	add	r1, r1, #32
	lsr	r3, r3, #23
	lsl	r1, r1, #22
	orr	r3, r3, #36864
	lsr	r1, r1, #22
	strh	r3, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	b	.L173
.L182:
	ldr	r0, [r4, #20]
	ldr	r1, .L183+28
	add	r1, r1, r0, lsl #2
	ldr	r1, [r1, #40]
.L180:
	lsl	r3, r3, #23
	add	r1, r1, #32
	lsr	r3, r3, #23
	lsl	r1, r1, #22
	orr	r3, r3, ip
	lsr	r1, r1, #22
	strh	r3, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	b	.L173
.L184:
	.align	2
.L183:
	.word	vOff
	.word	startPlayer
	.word	-32768
	.word	shadowOAM
	.word	.LANCHOR0
	.word	hOff
	.word	458
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
	ldr	r2, .L189
	ldr	r1, .L189+4
	ldr	lr, .L189+8
	ldr	r1, [r1]
	ldr	r3, [r2, #20]
	ldr	r4, .L189+12
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
	ldr	r0, .L189+16
	lsl	ip, ip, #3
	strh	r3, [r0, ip]	@ movhi
	ldr	r3, .L189+20
	ldr	r3, [r3, #28]
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
.L190:
	.align	2
.L189:
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
	ldr	r3, .L193
	add	r1, r3, #24
	ldm	r1, {r1, ip}
	ldr	r2, [r3, #20]
	ldr	r3, [r3, #16]
	sub	sp, sp, #16
	ldr	r0, .L193+4
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #16
	ldm	r0, {r0, r1, r2, r3}
	ldr	r4, .L193+8
	mov	lr, pc
	bx	r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L194:
	.align	2
.L193:
	.word	guide
	.word	startPlayer
	.word	collision
	.size	checkPlayerGuideCollision, .-checkPlayerGuideCollision
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
	.global	guideMoveDirection
	.global	transformedPlayer
	.global	guideMoveDelay
	.global	guideMoveCounter
	.global	guidePatrolRightBound
	.global	guidePatrolLeftBound
	.global	guideSpeed
	.global	guideAnimIndex
	.global	guideFrameDelay
	.global	guideFrameCounter
	.comm	originalTiles,128,4
	.global	tileFlashState
	.global	tileFlashTimer
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
	.type	transformedPlayer, %object
	.size	transformedPlayer, 4
transformedPlayer:
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
	.type	tileFlashState, %object
	.size	tileFlashState, 4
tileFlashState:
	.space	4
	.type	tileFlashTimer, %object
	.size	tileFlashTimer, 4
tileFlashTimer:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
