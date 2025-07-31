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
	.file	"phaseThree.c"
	.text
	.align	2
	.global	initPlayerThree
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayerThree, %function
initPlayerThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r1, #0
	mov	r4, #3
	mov	r5, #64
	mov	r3, #17
	mov	r2, #24
	mov	lr, #1
	mov	r8, #20
	mov	r7, #102
	mov	r6, #112
	ldr	ip, .L6
	mov	r0, r4
	str	r5, [ip, #4]
	str	r3, [ip, #24]
	str	r2, [ip, #28]
	strb	r1, [ip, #56]
	str	r1, [ip, #44]
	str	r1, [ip, #36]
	str	r1, [ip, #12]
	mov	r3, #256
	ldr	r2, .L6+4
	ldr	r1, .L6+8
	ldr	r5, .L6+12
	str	r4, [ip, #48]
	str	r8, [ip, #16]
	str	r7, [ip, #20]
	str	r6, [ip]
	str	lr, [ip, #40]
	str	lr, [ip, #52]
	str	lr, [ip, #8]
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #16384
	ldr	r2, .L6+16
	ldr	r1, .L6+20
	mov	lr, pc
	bx	r5
	ldr	r3, .L6+24
	ldr	r2, .L6+28
	add	r0, r3, #512
.L2:
	ldrh	r1, [r3, #2]!
	cmp	r3, r0
	strh	r1, [r2, #2]!	@ movhi
	bne	.L2
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	player
	.word	83886592
	.word	playerPal
	.word	DMANow
	.word	100728832
	.word	playerTiles
	.word	playerPal-2
	.word	playerPaletteWork-2
	.size	initPlayerThree, .-initPlayerThree
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayerThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerThree, %function
updatePlayerThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L234
	ldr	ip, [r4, #20]
	ldr	lr, [r4, #16]
	ldr	r9, .L234+4
	add	r8, lr, ip, lsl #9
	ldr	r5, [r4, #24]
	ldr	r6, [r4, #28]
	ldrb	r2, [r9, r8]	@ zero_extendqisi2
	sub	sp, sp, #44
	add	r7, r6, ip
	str	r3, [r4, #40]
	cmp	r2, #3
	lsl	r3, ip, #9
	add	r2, r5, lr
	str	r5, [sp, #4]
	str	r6, [sp, #20]
	str	r2, [sp, #32]
	sub	fp, r2, #1
	mov	r5, r0
	mov	r6, r1
	str	r7, [sp, #24]
	str	r3, [sp, #8]
	sub	r2, r7, #1
	beq	.L9
	add	r3, fp, r3
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L9
	add	r3, lr, r2, lsl #9
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	cmp	r3, #3
	lsl	r3, r2, #9
	beq	.L9
	add	r3, fp, r3
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L9
	ldr	r7, .L234+8
.L10:
	ldr	r3, .L234+12
	ldrb	r1, [r3, r8]	@ zero_extendqisi2
	cmp	r1, #4
	beq	.L11
.L218:
	ldr	r0, [sp, #8]
	add	r0, fp, r0
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	cmp	r0, #4
	beq	.L11
	add	r0, lr, r2, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	cmp	r0, #4
	lsl	r0, r2, #9
	beq	.L11
	add	r0, fp, r0
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	cmp	r0, #4
	beq	.L11
	ldr	r8, [r7, #4]
	b	.L12
.L9:
	ldr	r7, .L234+8
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L10
	mov	r0, #1
	ldr	r1, .L234+16
	ldr	r3, .L234+20
	ldrh	r10, [r1, #10]
	and	r3, r3, r10
	strh	r3, [r1, #10]	@ movhi
	ldr	r3, .L234+12
	ldrb	r1, [r3, r8]	@ zero_extendqisi2
	cmp	r1, #4
	str	r0, [r7]
	bne	.L218
.L11:
	mov	r0, #1
	mov	r8, r0
	str	r0, [r7, #4]
.L12:
	ldr	r0, .L234+24
	ldrh	r0, [r0]
	str	r0, [sp, #12]
	mvn	r0, r0
	ldr	r10, [r4, #12]
	cmp	r1, #2
	str	r10, [sp, #28]
	and	r0, r0, #128
	add	r1, r10, #1
	beq	.L13
	ldr	r10, [sp, #8]
	add	r10, fp, r10
	ldrb	r10, [r3, r10]	@ zero_extendqisi2
	cmp	r10, #2
	beq	.L13
	add	r10, lr, r2, lsl #9
	ldrb	r10, [r3, r10]	@ zero_extendqisi2
	cmp	r10, #2
	lsl	r2, r2, #9
	beq	.L13
	add	r2, fp, r2
	ldrb	r2, [r3, r2]	@ zero_extendqisi2
	cmp	r2, #2
	beq	.L13
	mov	r2, #0
	ldr	r10, .L234+28
	cmp	r8, r2
	str	r2, [r7, #8]
	str	r0, [r10]
	strne	r2, [sp, #36]
	beq	.L14
.L15:
	ldr	r3, [sp, #12]
	lsr	r3, r3, #5
	eor	r3, r3, #1
	cmp	lr, #0
	movle	r3, #0
	andgt	r3, r3, #1
	cmp	r3, #0
	bne	.L219
.L45:
	ldr	r3, [r4, #16]
	str	r3, [sp, #16]
	ldr	r3, [r4, #20]
.L47:
	ldr	r2, [sp, #12]
	ands	ip, r2, #16
	beq	.L220
.L49:
	ldr	ip, [r4, #40]
.L51:
	cmp	r1, #4
	str	r1, [r4, #12]
	ble	.L206
	mov	r1, #4
	ldr	r2, [sp, #20]
	str	r1, [r4, #12]
	add	r8, r2, r3
.L54:
	ldr	r2, [sp, #32]
	ldr	r0, [sp, #20]
	add	r10, r2, r0, lsl #9
	sub	r10, r10, #1
	mov	r0, r8
	mov	fp, #0
	add	r10, r9, r10
	add	r2, r9, lr
	b	.L68
.L64:
	ldrb	lr, [r2, r0, lsl #9]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	lr, #1
	sub	r9, r0, r8
	beq	.L67
	ldrb	lr, [r10, r3, lsl #9]	@ zero_extendqisi2
	cmp	lr, #1
	beq	.L67
	cmp	r1, r9
	mov	fp, #1
	add	r3, r3, #1
	ble	.L221
.L68:
	cmp	r0, #255
	ble	.L64
.L67:
	cmp	fp, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #12]
	mov	r3, #1
.L62:
	ldr	r2, [sp, #36]
	cmp	r2, #0
	bne	.L43
	ldr	r2, .L234+32
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L43
	ldr	r2, [sp, #12]
	eor	r2, r2, #64
	ands	r3, r3, r2, lsr #6
	mvnne	r3, #11
	strne	r3, [r4, #12]
	b	.L43
.L13:
	ldr	r2, [r7, #8]
	add	r2, r2, #1
	cmp	r2, #3
	str	r2, [r7, #8]
	bgt	.L16
	ldr	r3, .L234+28
	cmp	r1, #4
	str	r0, [r3]
	bgt	.L76
	str	r1, [r4, #12]
	str	lr, [sp, #16]
	ldr	r8, .L234+36
.L26:
	mov	r3, #0
	ldr	r2, .L234+40
	str	r3, [r8]
	str	r3, [r2]
.L69:
	ldr	r3, [sp, #4]
	add	r3, r3, r3, lsr #31
	ldr	r2, [sp, #16]
	asr	r3, r3, #1
	rsb	r3, r3, #120
	sub	r3, r2, r3
	str	r3, [r5]
	ldr	r3, [r4, #28]
	add	r3, r3, r3, lsr #31
	ldr	r2, [r4, #20]
	asr	r3, r3, #1
	rsb	r3, r3, #80
	sub	r3, r2, r3
	str	r3, [r6]
	ldr	r3, [r5]
	bic	r3, r3, r3, asr #31
	str	r3, [r5]
	ldr	r3, [r6]
	bic	r3, r3, r3, asr #31
	str	r3, [r6]
	ldr	r3, [r5]
	cmp	r3, #272
	movge	r3, #272
	str	r3, [r5]
	ldr	r3, [r6]
	cmp	r3, #96
	movge	r3, #96
	str	r3, [r6]
	ldr	r3, [r4, #16]
	ldr	r1, [r4, #24]
	ldr	r2, .L234+44
	add	r3, r3, r1
	cmp	r3, r2
	movgt	r3, #1
	strgt	r3, [r7, #12]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L16:
	mov	r2, #0
	cmp	r8, r2
	ldr	r8, .L234+28
	str	r2, [r7, #8]
	str	r0, [r8]
	bne	.L77
	mov	r8, #1
.L14:
	ldr	r2, [sp, #12]
	lsr	r2, r2, #5
	eor	r2, r2, #1
	cmp	lr, #0
	movle	r2, #0
	andgt	r2, r2, #1
	cmp	r2, #0
	bne	.L222
.L19:
	ldr	ip, [r4, #20]
.L21:
	ldr	r2, [sp, #12]
	ands	r9, r2, #16
	bne	.L23
	ldr	r2, [sp, #4]
	ldr	r0, [r4, #16]
	rsb	r2, r2, #512
	cmp	r0, r2
	str	r0, [sp, #16]
	bge	.L23
	mov	r2, #1
	ldr	r10, [r4, #8]
	mov	r0, r9
	str	r9, [r4, #36]
	ldr	r9, [sp, #24]
	str	r10, [sp, #36]
	add	r10, r10, fp
	add	r9, r10, r9, lsl #9
	ldr	r10, [sp, #24]
	str	r1, [sp, #4]
	rsb	r10, r10, r10, lsl #23
	ldr	r1, [sp, #8]
	str	r2, [r4, #40]
	lsl	r10, r10, #9
	add	r2, r3, r9
.L25:
	add	r9, r1, r2
	ldrb	r9, [r9, r10]	@ zero_extendqisi2
	cmp	r9, #1
	beq	.L24
	ldrb	r9, [r2, #-512]	@ zero_extendqisi2
	cmp	r9, #1
	bne	.L223
.L24:
	add	r0, r0, #1
	cmp	r0, #4
	sub	r2, r2, #512
	bne	.L25
	ldr	r1, [sp, #4]
.L23:
	cmp	r1, #4
	str	r1, [r4, #12]
	bgt	.L224
	cmp	r1, #0
	bge	.L225
	ldr	r2, [sp, #28]
	mvn	r10, r2
	add	r2, r3, lr
	sub	r10, ip, r10
	add	r3, r3, fp
	mov	fp, #0
	b	.L34
.L30:
	ldrb	r0, [r2, r1, lsl #9]	@ zero_extendqisi2
	cmp	r0, #1
	beq	.L33
	ldrb	r0, [r3, r1, lsl #9]	@ zero_extendqisi2
	cmp	r0, #1
	beq	.L33
	cmp	r1, r10
	mov	fp, #1
	beq	.L226
	mov	ip, r1
.L34:
	cmp	ip, #0
	sub	r1, ip, #1
	bgt	.L30
.L33:
	mov	r3, #0
	cmp	fp, #0
	strne	ip, [r4, #20]
	str	r3, [r4, #12]
.L35:
	cmp	r8, #0
	bne	.L44
	ldr	r2, .L234+32
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L44
	ldr	r2, [sp, #12]
	eor	r2, r2, #64
	ands	r3, r3, r2, lsr #6
	bne	.L227
.L44:
	ldr	r3, [r4, #16]
	str	r3, [sp, #16]
	ldr	r3, [r4, #24]
	ldr	ip, [r4, #40]
	str	r3, [sp, #4]
.L43:
	ldr	r8, .L234+36
	ldr	r3, [r8]
	cmp	ip, #0
	add	r3, r3, #1
	str	r3, [r8]
	beq	.L26
	ldr	r2, .L234+48
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L69
	ldr	r9, .L234+40
	ldr	r0, [r9]
	ldr	r3, .L234+52
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r9]
	str	r3, [r8]
	b	.L69
.L224:
	mov	r1, #4
	ldr	r2, [sp, #20]
	str	r1, [r4, #12]
	add	r10, r2, ip
.L27:
	ldr	r0, [sp, #20]
	ldr	r2, [sp, #32]
	add	fp, r2, r0, lsl #9
	sub	fp, fp, #1
	add	fp, r3, fp
	mov	r0, r10
	add	r3, r3, lr
	mov	lr, #0
	b	.L41
.L37:
	ldrb	r2, [r3, r0, lsl #9]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	r2, #1
	sub	r9, r0, r10
	beq	.L40
	ldrb	r2, [fp, ip, lsl #9]	@ zero_extendqisi2
	cmp	r2, #1
	beq	.L40
	cmp	r1, r9
	mov	lr, #1
	add	ip, ip, #1
	ble	.L228
.L41:
	cmp	r0, #255
	ble	.L37
.L40:
	mov	r3, #0
	cmp	lr, #0
	str	r3, [r4, #12]
	strne	ip, [r4, #20]
	mov	r3, #1
	b	.L35
.L220:
	ldr	r2, [sp, #4]
	ldr	r0, [sp, #16]
	rsb	r2, r2, #512
	cmp	r2, r0
	ble	.L49
	ldr	r10, [r4, #8]
	mov	r0, ip
	str	ip, [r4, #36]
	ldr	ip, [sp, #24]
	add	r2, r10, fp
	add	r2, r2, ip, lsl #9
	rsb	r8, ip, ip, lsl #23
	mov	ip, #1
	str	r10, [sp, #24]
	str	ip, [r4, #40]
	ldr	r10, [sp, #8]
	add	r2, r9, r2
	lsl	r8, r8, #9
.L53:
	add	ip, r10, r2
	ldrb	ip, [ip, r8]	@ zero_extendqisi2
	cmp	ip, #1
	beq	.L52
	ldrb	ip, [r2, #-512]	@ zero_extendqisi2
	cmp	ip, #1
	bne	.L229
.L52:
	add	r0, r0, #1
	cmp	r0, #4
	sub	r2, r2, #512
	bne	.L53
	mov	ip, #1
	b	.L51
.L77:
	mov	r3, #1
	str	r3, [sp, #36]
	b	.L15
.L76:
	mov	r3, #4
	str	lr, [sp, #16]
	str	r3, [r4, #12]
	ldr	r8, .L234+36
	b	.L26
.L219:
	mov	r0, #1
	mov	r2, #0
	ldr	r3, [r4, #8]
	ldr	r8, [sp, #24]
	sub	r3, lr, r3
	str	r3, [sp, #16]
	str	r0, [r4, #40]
	str	r0, [r4, #36]
	add	r3, r3, r8, lsl #9
	rsb	r0, r8, r8, lsl #23
	ldr	r10, [sp, #8]
	add	r3, r9, r3
	lsl	r0, r0, #9
.L48:
	add	r8, r3, r10
	ldrb	r8, [r8, r0]	@ zero_extendqisi2
	cmp	r8, #1
	beq	.L46
	ldrb	r8, [r3, #-512]	@ zero_extendqisi2
	cmp	r8, #1
	bne	.L230
.L46:
	add	r2, r2, #1
	cmp	r2, #4
	sub	r3, r3, #512
	bne	.L48
	b	.L45
.L222:
	mov	r9, #1
	mov	r2, #0
	ldr	r0, [r4, #8]
	ldr	r10, [sp, #24]
	sub	r0, lr, r0
	str	r0, [sp, #16]
	str	r9, [r4, #40]
	str	r9, [r4, #36]
	str	ip, [sp, #36]
	add	r0, r0, r10, lsl #9
	rsb	r9, r10, r10, lsl #23
	ldr	ip, [sp, #8]
	add	r0, r3, r0
	lsl	r9, r9, #9
.L22:
	add	r10, ip, r0
	ldrb	r10, [r10, r9]	@ zero_extendqisi2
	cmp	r10, #1
	beq	.L20
	ldrb	r10, [r0, #-512]	@ zero_extendqisi2
	cmp	r10, #1
	bne	.L231
.L20:
	add	r2, r2, #1
	cmp	r2, #4
	sub	r0, r0, #512
	bne	.L22
	b	.L19
.L206:
	cmp	r1, #0
	bge	.L232
	ldr	r2, [sp, #28]
	mvn	r8, r2
	mov	r10, #0
	add	lr, r9, lr
	sub	r8, r3, r8
	add	r2, r9, fp
	b	.L61
.L57:
	ldrb	r0, [lr, r1, lsl #9]	@ zero_extendqisi2
	cmp	r0, #1
	beq	.L60
	ldrb	r0, [r2, r1, lsl #9]	@ zero_extendqisi2
	cmp	r0, #1
	beq	.L60
	cmp	r1, r8
	mov	r10, #1
	beq	.L233
	mov	r3, r1
.L61:
	cmp	r3, #0
	sub	r1, r3, #1
	bgt	.L57
.L60:
	cmp	r10, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #12]
	b	.L62
.L232:
	ldr	r2, [sp, #20]
	add	r8, r2, r3
	bne	.L54
	add	r2, lr, r8, lsl #9
	ldrb	r3, [r9, r2]	@ zero_extendqisi2
	cmp	r3, #1
	lsl	r8, r8, #9
	beq	.L62
	add	r8, fp, r8
	ldrb	r3, [r9, r8]	@ zero_extendqisi2
	sub	r2, r3, #1
	rsbs	r3, r2, #0
	adc	r3, r3, r2
	b	.L62
.L225:
	ldr	r2, [sp, #20]
	add	r10, r2, ip
	bne	.L27
	add	r2, lr, r10, lsl #9
	ldrb	r2, [r3, r2]	@ zero_extendqisi2
	cmp	r2, #1
	moveq	r3, r2
	lsl	r10, r10, #9
	beq	.L35
	add	r10, fp, r10
	ldrb	r3, [r3, r10]	@ zero_extendqisi2
	sub	r1, r3, #1
	rsbs	r3, r1, #0
	adc	r3, r3, r1
	b	.L35
.L227:
	mvn	r3, #11
	str	r3, [r4, #12]
	ldr	r3, [r4, #16]
	str	r3, [sp, #16]
	ldr	r3, [r4, #24]
	ldr	ip, [r4, #40]
	str	r3, [sp, #4]
	b	.L43
.L233:
	mov	r3, #0
	str	r8, [r4, #20]
	b	.L62
.L226:
	mov	r3, #0
	str	r10, [r4, #20]
	b	.L35
.L221:
	str	r3, [r4, #20]
	mov	r3, #0
	b	.L62
.L228:
	mov	r3, #0
	str	ip, [r4, #20]
	b	.L35
.L231:
	cmp	r2, #1
	movlt	r2, #1
	ldr	ip, [sp, #36]
	sub	r2, r2, #1
	sub	ip, ip, r2
	ldr	r2, [sp, #16]
	str	ip, [r4, #20]
	str	r2, [r4, #16]
	b	.L21
.L230:
	cmp	r2, #1
	movge	r3, r2
	movlt	r3, #1
	ldr	r2, [sp, #16]
	sub	r3, r3, #1
	sub	r3, ip, r3
	str	r3, [r4, #20]
	str	r2, [r4, #16]
	b	.L47
.L223:
	ldr	r2, [sp, #16]
	ldr	r9, [sp, #36]
	sub	ip, ip, r0
	add	r2, r2, r9
	ldr	r1, [sp, #4]
	str	r2, [r4, #16]
	str	ip, [r4, #20]
	b	.L23
.L229:
	ldr	r2, [sp, #16]
	ldr	r10, [sp, #24]
	sub	r3, r3, r0
	add	r2, r2, r10
	mov	ip, #1
	str	r2, [sp, #16]
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	b	.L51
.L235:
	.align	2
.L234:
	.word	player
	.word	bgThreeFrontCMCheatBitmap
	.word	.LANCHOR0
	.word	bgThreeFrontCMBitmap
	.word	67109120
	.word	65407
	.word	buttons
	.word	isDucking
	.word	oldButtons
	.word	hikerFrameCounter
	.word	hikerFrame
	.word	510
	.word	hikerFrameDelay
	.word	__aeabi_idivmod
	.size	updatePlayerThree, .-updatePlayerThree
	.align	2
	.global	drawPlayerThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerThree, %function
drawPlayerThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r2, .L242
	ldr	r1, .L242+4
	ldr	r3, [r2, #20]
	ldr	r1, [r1]
	ldr	r0, .L242+8
	ldrb	ip, [r2, #56]	@ zero_extendqisi2
	ldr	lr, [r2, #36]
	sub	r3, r3, r1
	ldr	r4, .L242+12
	ldr	r1, .L242+16
	ldr	r5, [r0]
	ldr	r2, [r2, #16]
	and	r3, r3, #255
	lsl	r0, ip, #3
	orr	r3, r3, r4
	cmp	lr, #0
	strh	r3, [r1, r0]	@ movhi
	add	ip, r1, ip, lsl #3
	sub	r2, r2, r5
	bne	.L237
	lsl	r3, r2, #23
	lsr	r3, r3, #23
	orr	r3, r3, r4
	strh	r3, [ip, #2]	@ movhi
.L238:
	ldr	r2, .L242+20
	ldr	r3, .L242+24
	ldr	ip, [r2]
	ldr	r2, .L242+28
	ldr	r3, [r3, ip, lsl #2]
	ldr	r2, [r2]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r2, #0
	addne	r3, r3, #32
	addeq	r3, r3, #160
	lsl	r3, r3, #22
	lsr	r3, r3, #22
	add	r1, r1, r0
	strh	r3, [r1, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L237:
	cmp	lr, #1
	lsleq	r2, r2, #23
	lsreq	r2, r2, #23
	orreq	r2, r2, #36864
	strheq	r2, [ip, #2]	@ movhi
	b	.L238
.L243:
	.align	2
.L242:
	.word	player
	.word	vOff
	.word	hOff
	.word	-32768
	.word	shadowOAM
	.word	hikerFrame
	.word	hikerFrames
	.word	.LANCHOR0
	.size	drawPlayerThree, .-drawPlayerThree
	.align	2
	.global	colorAtThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	colorAtThree, %function
colorAtThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L245
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L246:
	.align	2
.L245:
	.word	bgThreeFrontCMBitmap
	.size	colorAtThree, .-colorAtThree
	.align	2
	.global	colorAtThreeCheat
	.syntax unified
	.arm
	.fpu softvfp
	.type	colorAtThreeCheat, %function
colorAtThreeCheat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L248
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L249:
	.align	2
.L248:
	.word	bgThreeFrontCMCheatBitmap
	.size	colorAtThreeCheat, .-colorAtThreeCheat
	.align	2
	.global	initCountdownTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCountdownTimer, %function
initCountdownTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	ip, #49152
	mov	r0, #131
	mov	r1, #132
	ldr	r3, .L251
	strh	r2, [r3, #10]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	strh	r1, [r3, #14]	@ movhi
	bx	lr
.L252:
	.align	2
.L251:
	.word	67109120
	.size	initCountdownTimer, .-initCountdownTimer
	.align	2
	.global	drawTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTimer, %function
drawTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L256
	ldrh	r3, [r3, #12]
	rsbs	r3, r3, #20
	moveq	r1, #1
	ldreq	r2, .L256+4
	str	lr, [sp, #-4]!
	streq	r1, [r2]
	ldr	r1, .L256+8
	mov	ip, #10
	mov	r0, r1
	ldr	r2, .L256+12
	bic	r3, r3, r3, asr #31
	umull	lr, r2, r3, r2
	lsr	r2, r2, #3
	add	lr, r2, r2, lsl #2
	sub	r3, r3, lr, lsl #1
	add	r3, r3, #480
	lsl	r3, r3, #1
	ldr	lr, .L256+16
	strh	ip, [r0, #8]!	@ movhi
	strh	r3, [r1, #12]	@ movhi
	add	r2, r2, #480
	ldr	r3, .L256+20
	lsl	r2, r2, #1
	strh	lr, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L257:
	.align	2
.L256:
	.word	67109120
	.word	gameOver
	.word	shadowOAM+400
	.word	-858993459
	.word	16564
	.word	16580
	.size	drawTimer, .-drawTimer
	.global	__aeabi_i2f
	.global	__aeabi_fdiv
	.global	__aeabi_fmul
	.global	__aeabi_f2iz
	.global	__aeabi_fsub
	.global	__aeabi_fadd
	.align	2
	.global	updatePlayerPalette
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerPalette, %function
updatePlayerPalette:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L260
	ldrh	r0, [r3, #12]
	rsb	r0, r0, #20
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	bic	r0, r0, r0, asr #31
	ldr	r9, .L260+4
	mov	lr, pc
	bx	r9
	ldr	r1, .L260+8
	ldr	r3, .L260+12
	mov	lr, pc
	bx	r3
	mov	r6, r0
	ldr	r3, .L260+16
	ldrh	r7, [r3, #2]
	and	r0, r7, #31
	mov	lr, pc
	bx	r9
	ldr	r8, .L260+20
	mov	r1, r6
	mov	lr, pc
	bx	r8
	ldr	r10, .L260+24
	mov	lr, pc
	bx	r10
	mov	r4, r0
	lsr	r0, r7, #5
	and	r0, r0, #31
	mov	lr, pc
	bx	r9
	mov	r1, r6
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r10
	mov	r5, r0
	lsr	r0, r7, #10
	and	r0, r0, #31
	mov	lr, pc
	bx	r9
	mov	r1, r6
	mov	lr, pc
	bx	r8
	mov	r3, r0
	ldr	r2, .L260+28
	mov	r1, r6
	mov	r0, #1065353216
	mov	r6, r3
	mov	lr, pc
	bx	r2
	ldr	r1, .L260+32
	mov	lr, pc
	bx	r8
	ldr	r3, .L260+36
	mov	r1, r0
	mov	r0, r6
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r10
	cmp	r5, #31
	movge	r5, #31
	cmp	r4, #31
	movge	r4, #31
	cmp	r0, #31
	movlt	r3, r0
	movge	r3, #31
	orr	r0, r4, r5, lsl #5
	ldr	r1, .L260+40
	orr	r0, r0, r3, lsl #10
	strh	r0, [r1, #2]!	@ movhi
	ldr	r4, .L260+44
	mov	r3, #1
	mov	r0, #3
	ldr	r2, .L260+48
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L261:
	.align	2
.L260:
	.word	67109120
	.word	__aeabi_i2f
	.word	1101004800
	.word	__aeabi_fdiv
	.word	playerPal
	.word	__aeabi_fmul
	.word	__aeabi_f2iz
	.word	__aeabi_fsub
	.word	1106771968
	.word	__aeabi_fadd
	.word	playerPaletteWork
	.word	DMANow
	.word	83886594
	.size	updatePlayerPalette, .-updatePlayerPalette
	.align	2
	.global	drawSnowThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSnowThree, %function
drawSnowThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	lr, #512
	mov	r7, #448
	ldr	r1, .L270
	ldr	r2, .L270+4
	ldr	r3, .L270+8
	ldr	r4, [r1]
	ldr	r5, [r2]
	ldr	r0, .L270+12
	ldr	r6, .L270+16
	add	ip, r3, #180
.L267:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #56]	@ zero_extendqisi2
	lsl	r9, r2, #3
	moveq	r2, r9
	strheq	lr, [r0, r2]	@ movhi
	beq	.L264
	ldr	r1, [r3, #16]
	sub	r1, r1, r4
	add	r8, r1, #16
	cmp	r8, #256
	bhi	.L265
	ldr	r8, [r3, #20]
	sub	r8, r8, r5
	add	r10, r8, #16
	cmp	r10, #176
	bhi	.L265
	and	r1, r1, r6
	add	r9, r0, r2, lsl #3
	and	r8, r8, #255
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r9, #2]	@ movhi
	strh	r7, [r9, #4]	@ movhi
	strh	r8, [r0, r2]	@ movhi
.L264:
	add	r3, r3, #60
	cmp	r3, ip
	bne	.L267
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L265:
	strh	lr, [r0, r9]	@ movhi
	b	.L264
.L271:
	.align	2
.L270:
	.word	hOff
	.word	vOff
	.word	snows
	.word	shadowOAM
	.word	511
	.size	drawSnowThree, .-drawSnowThree
	.align	2
	.global	resetSnowThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	resetSnowThree, %function
resetSnowThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L274
	mov	r4, r0
	mov	lr, pc
	bx	r6
	ldr	r3, .L274+4
	smull	r2, r3, r0, r3
	add	r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #7
	ldr	r2, .L274+8
	ldr	r1, .L274+12
	ldr	r2, [r2]
	rsb	r3, r3, r3, lsl #3
	sub	r0, r0, r3, lsl #5
	rsb	r4, r4, r4, lsl #4
	add	r4, r1, r4, lsl #2
	ldr	r3, .L274+16
	add	r0, r0, r2
	str	r0, [r4, #16]
	ldr	r5, [r3]
	mov	lr, pc
	bx	r6
	ldr	r3, .L274+20
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #1
	sub	r0, r5, r0
	sub	r0, r0, #16
	str	r0, [r4, #20]
	pop	{r4, r5, r6, lr}
	bx	lr
.L275:
	.align	2
.L274:
	.word	rand
	.word	-1840700269
	.word	hOff
	.word	snows
	.word	vOff
	.word	1717986919
	.size	resetSnowThree, .-resetSnowThree
	.align	2
	.global	initSnowThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSnowThree, %function
initSnowThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r0, .L280
	ldr	r3, .L280+4
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r7, #16
	mov	r6, #1
	ldr	r4, .L280+8
.L277:
	add	r3, r5, #120
	mov	r0, r5
	add	r5, r5, #1
	str	r7, [r4, #24]
	str	r7, [r4, #28]
	str	r6, [r4, #52]
	str	r6, [r4, #12]
	strb	r3, [r4, #56]
	bl	resetSnowThree
	cmp	r5, #3
	add	r4, r4, #60
	bne	.L277
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L281:
	.align	2
.L280:
	.word	1234
	.word	srand
	.word	snows
	.size	initSnowThree, .-initSnowThree
	.align	2
	.global	updateSnowThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSnowThree, %function
updateSnowThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #0
	ldr	r4, .L293
	ldr	r6, .L293+4
	ldr	r7, .L293+8
	ldr	r8, .L293+12
	ldr	r10, .L293+16
	ldr	r9, .L293+20
	ldr	fp, .L293+24
	sub	sp, sp, #20
.L288:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L284
	mov	r3, #16
	add	r2, r6, #24
	ldm	r2, {r2, ip}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #12]
	str	r2, [sp, #8]
	add	r1, r0, r1
	ldr	r2, [r6, #16]
	ldr	r0, [r6, #20]
	str	r2, [sp]
	str	r0, [sp, #4]
	mov	r2, r3
	str	ip, [sp, #12]
	ldr	r0, [r4, #16]
	str	r1, [r4, #20]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L291
	ldr	r3, [r8]
	ldr	r2, [r4, #20]
	add	r3, r3, #160
	cmp	r2, r3
	bgt	.L292
.L284:
	add	r5, r5, #1
	cmp	r5, #3
	add	r4, r4, #60
	bne	.L288
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L291:
	mov	r0, r9
	ldr	r1, [r10]
	mov	r2, #0
	mov	lr, pc
	bx	fp
	mov	r2, #0
	ldr	r1, .L293+28
	ldr	r3, [r1, #52]
	sub	r3, r3, #1
	cmp	r3, r2
	str	r3, [r1, #52]
	moveq	r1, #1
	mov	lr, #20
	mov	ip, #101
	ldreq	r3, .L293+32
	streq	r1, [r3]
	ldr	r3, .L293+36
	mov	r0, r5
	str	lr, [r6, #16]
	str	ip, [r6, #20]
	str	r2, [r6, #12]
	str	r2, [r3]
	str	r2, [r8]
	bl	resetSnowThree
	b	.L284
.L292:
	mov	r0, r5
	bl	resetSnowThree
	b	.L284
.L294:
	.align	2
.L293:
	.word	snows
	.word	player
	.word	collision
	.word	vOff
	.word	healthaudio_length
	.word	healthaudio_data
	.word	playSoundB
	.word	health
	.word	gameOver
	.word	hOff
	.size	updateSnowThree, .-updateSnowThree
	.global	secondsElapsed
	.comm	soundB,24,4
	.comm	soundA,24,4
	.comm	healthBarFrames,72,4
	.comm	snows,180,4
	.global	leftWallTouched
	.global	winPhaseThree
	.comm	playerPaletteWork,512,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	timerPaused, %object
	.size	timerPaused, 4
timerPaused:
	.space	4
	.type	leftWallTouched, %object
	.size	leftWallTouched, 4
leftWallTouched:
	.space	4
	.type	slowCounter.4670, %object
	.size	slowCounter.4670, 4
slowCounter.4670:
	.space	4
	.type	winPhaseThree, %object
	.size	winPhaseThree, 4
winPhaseThree:
	.space	4
	.type	secondsElapsed, %object
	.size	secondsElapsed, 4
secondsElapsed:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
