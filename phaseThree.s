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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, #0
	ldr	r4, .L233
	add	r2, r4, #16
	ldm	r2, {r2, ip}
	ldr	r3, .L233+4
	add	lr, r2, ip, lsl #9
	ldr	r5, [r4, #24]
	ldr	r6, [r4, #28]
	ldrb	r9, [r3, lr]	@ zero_extendqisi2
	sub	sp, sp, #44
	add	r8, r5, r2
	add	r10, r6, ip
	cmp	r9, #3
	str	r5, [sp, #20]
	str	r6, [sp, #12]
	mov	r5, r0
	mov	r6, r1
	str	r8, [sp, #28]
	str	r10, [sp, #16]
	str	r7, [r4, #40]
	sub	r0, r8, #1
	sub	r1, r10, #1
	lsl	fp, ip, #9
	beq	.L9
	add	r7, r0, fp
	ldrb	r7, [r3, r7]	@ zero_extendqisi2
	cmp	r7, #3
	beq	.L10
	add	r7, r2, r1, lsl #9
	ldrb	r7, [r3, r7]	@ zero_extendqisi2
	cmp	r7, #3
	lsl	r7, r1, #9
	beq	.L10
	add	r7, r0, r7
	ldrb	r7, [r3, r7]	@ zero_extendqisi2
	cmp	r7, #3
	beq	.L10
	cmp	r9, #4
	ldr	r7, .L233+8
	bne	.L79
.L12:
	mov	r8, #1
	mov	lr, r8
	str	r8, [r7, #4]
.L13:
	ldr	r8, .L233+12
	ldrh	r8, [r8]
	str	r8, [sp, #8]
	mvn	r8, r8
	ldr	r10, [r4, #12]
	cmp	r9, #2
	add	r9, r10, #1
	str	r10, [sp, #24]
	str	r9, [sp, #4]
	and	r8, r8, #128
	beq	.L14
	add	r9, r0, fp
	ldrb	r9, [r3, r9]	@ zero_extendqisi2
	cmp	r9, #2
	beq	.L14
	add	r9, r2, r1, lsl #9
	ldrb	r9, [r3, r9]	@ zero_extendqisi2
	cmp	r9, #2
	lsl	r1, r1, #9
	beq	.L14
	add	r1, r0, r1
	ldrb	r1, [r3, r1]	@ zero_extendqisi2
	cmp	r1, #2
	beq	.L14
	mov	r1, #0
	ldr	r9, .L233+16
	cmp	lr, r1
	str	r1, [r7, #8]
	str	r8, [r9]
	strne	r1, [sp, #32]
	beq	.L15
.L16:
	ldr	r3, [sp, #8]
	lsr	r3, r3, #5
	eor	r3, r3, #1
	cmp	r2, #0
	movle	r3, #0
	andgt	r3, r3, #1
	cmp	r3, #0
	bne	.L217
	ldr	r8, [r4, #16]
	ldr	r3, [r4, #20]
.L47:
	ldr	r1, [sp, #8]
	ands	r1, r1, #16
	bne	.L49
	ldr	ip, [sp, #20]
	rsb	ip, ip, #512
	cmp	ip, r8
	ble	.L49
	ldr	r9, [r4, #8]
	ldr	lr, [sp, #16]
	mov	ip, r1
	str	r1, [r4, #36]
	add	r1, r9, r0
	add	r1, r1, lr, lsl #9
	rsb	r10, lr, lr, lsl #23
	mov	lr, #1
	str	lr, [r4, #40]
	ldr	lr, .L233+20
	lsl	r10, r10, #9
	add	r1, r1, lr
.L53:
	add	lr, r1, fp
	ldrb	lr, [lr, r10]	@ zero_extendqisi2
	cmp	lr, #1
	beq	.L52
	ldrb	lr, [r1, #-512]	@ zero_extendqisi2
	cmp	lr, #1
	bne	.L218
.L52:
	add	ip, ip, #1
	cmp	ip, #4
	sub	r1, r1, #512
	bne	.L53
	mov	r1, #1
.L51:
	ldr	ip, [sp, #4]
	cmp	ip, #4
	str	ip, [r4, #12]
	ble	.L206
.L230:
	mov	r0, #4
	ldr	ip, [sp, #12]
	str	r0, [r4, #12]
	str	r0, [sp, #4]
	add	ip, ip, r3
.L54:
	ldr	lr, [sp, #12]
	ldr	r0, [sp, #28]
	ldr	r10, .L233+20
	add	r9, r0, lr, lsl #9
	sub	r9, r9, #1
	ldr	lr, [sp, #4]
	add	r9, r10, r9
	mov	fp, #0
	add	r10, r10, r2
	str	r1, [sp, #4]
	mov	r2, ip
	b	.L68
.L64:
	ldrb	r1, [r10, r2, lsl #9]	@ zero_extendqisi2
	add	r2, r2, #1
	cmp	r1, #1
	sub	r0, r2, ip
	beq	.L67
	ldrb	r1, [r9, r3, lsl #9]	@ zero_extendqisi2
	cmp	r1, #1
	beq	.L67
	cmp	r0, lr
	mov	fp, #1
	add	r3, r3, #1
	bge	.L219
.L68:
	cmp	r2, #255
	ble	.L64
.L67:
	cmp	fp, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #12]
	mov	r3, #1
	ldr	r1, [sp, #4]
.L62:
	ldr	r2, [sp, #32]
	cmp	r2, #0
	bne	.L27
	ldr	r2, .L233+24
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L27
	ldr	r2, [sp, #8]
	eor	r2, r2, #64
	ands	r3, r3, r2, lsr #6
	mvnne	r3, #11
	strne	r3, [r4, #12]
	b	.L27
.L10:
	ldr	r7, .L233+8
	ldr	r8, [r7]
	cmp	r8, #0
	bne	.L11
.L78:
	ldr	r9, .L233+28
	ldr	r8, .L233+32
	ldrh	r10, [r9, #10]
	and	r8, r8, r10
	strh	r8, [r9, #10]	@ movhi
	mov	r8, #1
	ldrb	r9, [r3, lr]	@ zero_extendqisi2
	str	r8, [r7]
.L11:
	cmp	r9, #4
	beq	.L12
.L79:
	add	lr, r0, fp
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	cmp	lr, #4
	beq	.L12
	add	lr, r2, r1, lsl #9
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	cmp	lr, #4
	lsl	lr, r1, #9
	beq	.L12
	add	lr, r0, lr
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	cmp	lr, #4
	beq	.L12
	ldr	lr, [r7, #4]
	b	.L13
.L14:
	ldr	r1, [r7, #8]
	add	r1, r1, #1
	cmp	r1, #3
	str	r1, [r7, #8]
	bgt	.L17
	ldr	r3, .L233+16
	cmp	lr, #0
	str	r8, [r3]
	beq	.L18
	ldr	r3, [sp, #4]
	cmp	r3, #4
	str	r3, [r4, #12]
	movgt	r3, #4
	ldr	r1, [r4, #40]
	ldr	r8, [r4, #16]
	strgt	r3, [r4, #12]
.L27:
	ldr	r9, .L233+36
	ldr	r3, [r9]
	cmp	r1, #0
	add	r3, r3, #1
	str	r3, [r9]
	bne	.L220
	ldr	r3, .L233+40
	str	r1, [r9]
	str	r1, [r3]
.L70:
	ldr	r3, [r4, #24]
	add	r3, r3, r3, lsr #31
	asr	r3, r3, #1
	rsb	r3, r3, #120
	sub	r8, r8, r3
	str	r8, [r5]
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
	ldr	r2, .L233+44
	add	r3, r3, r1
	cmp	r3, r2
	movgt	r3, #1
	strgt	r3, [r7, #12]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L9:
	ldr	r7, .L233+8
	ldr	r8, [r7]
	cmp	r8, #0
	beq	.L78
	b	.L79
.L17:
	mov	r1, #0
	cmp	lr, r1
	ldr	lr, .L233+16
	str	r1, [r7, #8]
	str	r8, [lr]
	bne	.L80
	mov	lr, #1
.L15:
	ldr	r1, [sp, #8]
	lsr	r1, r1, #5
	eor	r1, r1, #1
	cmp	r2, #0
	movle	r1, #0
	andgt	r1, r1, #1
	cmp	r1, #0
	ldreq	r1, [r4, #20]
	bne	.L221
.L22:
	ldr	ip, [sp, #8]
	ands	r9, ip, #16
	bne	.L24
	ldr	ip, [sp, #20]
	ldr	r8, [r4, #16]
	rsb	ip, ip, #512
	cmp	r8, ip
	str	r8, [sp, #32]
	bge	.L24
	ldr	ip, [r4, #8]
	mov	r8, r9
	str	r9, [r4, #36]
	ldr	r9, [sp, #16]
	str	ip, [sp, #20]
	add	ip, ip, r0
	add	ip, ip, r9, lsl #9
	rsb	r10, r9, r9, lsl #23
	mov	r9, #1
	str	r9, [r4, #40]
	add	ip, r3, ip
	lsl	r10, r10, #9
.L26:
	add	r9, fp, ip
	ldrb	r9, [r9, r10]	@ zero_extendqisi2
	cmp	r9, #1
	beq	.L25
	ldrb	r9, [ip, #-512]	@ zero_extendqisi2
	cmp	r9, #1
	bne	.L222
.L25:
	add	r8, r8, #1
	cmp	r8, #4
	sub	ip, ip, #512
	bne	.L26
.L24:
	ldr	ip, [sp, #4]
	cmp	ip, #4
	str	ip, [r4, #12]
	bgt	.L223
	ldr	ip, [sp, #4]
	cmp	ip, #0
	bge	.L224
	ldr	ip, [sp, #24]
	mvn	r9, ip
	add	r10, r3, r2
	sub	r9, r1, r9
	mov	r2, #0
	add	r3, r3, r0
	b	.L35
.L31:
	ldrb	ip, [r10, r0, lsl #9]	@ zero_extendqisi2
	cmp	ip, #1
	beq	.L34
	ldrb	ip, [r3, r0, lsl #9]	@ zero_extendqisi2
	cmp	ip, #1
	beq	.L34
	cmp	r0, r9
	mov	r2, #1
	beq	.L225
	mov	r1, r0
.L35:
	cmp	r1, #0
	sub	r0, r1, #1
	bgt	.L31
.L34:
	mov	r3, #0
	cmp	r2, #0
	strne	r1, [r4, #20]
	str	r3, [r4, #12]
.L36:
	cmp	lr, #0
	bne	.L216
	ldr	r2, .L233+24
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L216
	ldr	r2, [sp, #8]
	eor	r2, r2, #64
	ands	r3, r3, r2, lsr #6
	bne	.L226
.L216:
	ldr	r1, [r4, #40]
	ldr	r8, [r4, #16]
	b	.L27
.L80:
	mov	r3, #1
	str	r3, [sp, #32]
	b	.L16
.L223:
	mov	r0, #4
	ldr	ip, [sp, #12]
	str	r0, [r4, #12]
	str	r0, [sp, #4]
	add	r9, ip, r1
.L28:
	ldr	ip, [sp, #12]
	ldr	r0, [sp, #28]
	add	r0, r0, ip, lsl #9
	sub	r0, r0, #1
	add	r10, r3, r2
	mov	ip, r9
	mov	r2, #0
	ldr	fp, [sp, #4]
	add	r0, r3, r0
	b	.L42
.L38:
	ldrb	r3, [r10, ip, lsl #9]	@ zero_extendqisi2
	add	ip, ip, #1
	cmp	r3, #1
	sub	r8, ip, r9
	beq	.L41
	ldrb	r3, [r0, r1, lsl #9]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L41
	cmp	fp, r8
	mov	r2, #1
	add	r1, r1, #1
	ble	.L227
.L42:
	cmp	ip, #255
	ble	.L38
.L41:
	mov	r3, #0
	cmp	r2, #0
	str	r3, [r4, #12]
	strne	r1, [r4, #20]
	mov	r3, #1
	b	.L36
.L18:
	ldr	r3, [sp, #4]
	cmp	r3, #4
	str	r3, [r4, #12]
	ble	.L216
	mov	r3, #4
	ldr	r1, [r4, #40]
	str	r3, [r4, #12]
	ldr	r8, [r4, #16]
	b	.L27
.L221:
	mov	r9, #1
	ldr	r10, [sp, #16]
	str	r9, [r4, #40]
	str	r9, [r4, #36]
	rsb	r9, r10, r10, lsl #23
	lsl	r9, r9, #9
	str	ip, [sp, #36]
	mov	r1, #0
	mov	ip, r9
	ldr	r8, [r4, #8]
	sub	r8, r2, r8
	str	r8, [sp, #32]
	add	r8, r8, r10, lsl #9
	add	r8, r3, r8
.L23:
	add	r9, fp, r8
	ldrb	r9, [r9, ip]	@ zero_extendqisi2
	cmp	r9, #1
	beq	.L21
	ldrb	r9, [r8, #-512]	@ zero_extendqisi2
	cmp	r9, #1
	bne	.L228
.L21:
	add	r1, r1, #1
	cmp	r1, #4
	sub	r8, r8, #512
	bne	.L23
	str	r10, [sp, #16]
	ldr	r1, [r4, #20]
	b	.L22
.L217:
	mov	lr, #1
	mov	r1, #0
	ldr	r8, [r4, #8]
	ldr	r10, [sp, #16]
	ldr	r3, .L233+20
	sub	r8, r2, r8
	str	lr, [r4, #40]
	str	lr, [r4, #36]
	add	r9, r8, r10, lsl #9
	rsb	lr, r10, r10, lsl #23
	add	r3, r9, r3
	lsl	lr, lr, #9
.L48:
	add	r9, r3, fp
	ldrb	r9, [r9, lr]	@ zero_extendqisi2
	cmp	r9, #1
	beq	.L46
	ldrb	r9, [r3, #-512]	@ zero_extendqisi2
	cmp	r9, #1
	bne	.L229
.L46:
	add	r1, r1, #1
	cmp	r1, #4
	sub	r3, r3, #512
	bne	.L48
	str	r10, [sp, #16]
	ldr	r8, [r4, #16]
	ldr	r3, [r4, #20]
	b	.L47
.L220:
	ldr	r2, .L233+48
	ldr	r2, [r2]
	cmp	r3, r2
	ble	.L70
	ldr	r10, .L233+40
	ldr	r0, [r10]
	ldr	r3, .L233+52
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r10]
	str	r3, [r9]
	b	.L70
.L49:
	ldr	ip, [sp, #4]
	cmp	ip, #4
	ldr	r1, [r4, #40]
	str	ip, [r4, #12]
	bgt	.L230
.L206:
	ldr	ip, [sp, #4]
	cmp	ip, #0
	bge	.L231
	ldr	ip, [sp, #24]
	mvn	r9, ip
	ldr	ip, .L233+20
	sub	r9, r3, r9
	add	r10, r2, ip
	add	r0, ip, r0
	mov	r2, #0
	b	.L61
.L57:
	ldrb	lr, [r10, ip, lsl #9]	@ zero_extendqisi2
	cmp	lr, #1
	beq	.L60
	ldrb	lr, [r0, ip, lsl #9]	@ zero_extendqisi2
	cmp	lr, #1
	beq	.L60
	cmp	ip, r9
	mov	r2, #1
	beq	.L232
	mov	r3, ip
.L61:
	cmp	r3, #0
	sub	ip, r3, #1
	bgt	.L57
.L60:
	cmp	r2, #0
	strne	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #12]
	b	.L62
.L231:
	ldr	ip, [sp, #12]
	add	ip, ip, r3
	bne	.L54
	ldr	lr, .L233+20
	add	r10, r2, ip, lsl #9
	ldrb	r3, [r10, lr]	@ zero_extendqisi2
	cmp	r3, #1
	lsl	ip, ip, #9
	beq	.L62
	add	ip, r0, ip
	ldrb	r3, [ip, lr]	@ zero_extendqisi2
	sub	r2, r3, #1
	rsbs	r3, r2, #0
	adc	r3, r3, r2
	b	.L62
.L224:
	ldr	ip, [sp, #12]
	add	r9, ip, r1
	bne	.L28
	add	r10, r2, r9, lsl #9
	ldrb	r2, [r3, r10]	@ zero_extendqisi2
	cmp	r2, #1
	moveq	r3, r2
	lsl	r9, r9, #9
	beq	.L36
	add	r9, r0, r9
	ldrb	r3, [r3, r9]	@ zero_extendqisi2
	sub	r1, r3, #1
	rsbs	r3, r1, #0
	adc	r3, r3, r1
	b	.L36
.L226:
	mvn	r3, #11
	ldr	r1, [r4, #40]
	str	r3, [r4, #12]
	ldr	r8, [r4, #16]
	b	.L27
.L232:
	mov	r3, #0
	str	r9, [r4, #20]
	b	.L62
.L225:
	mov	r3, #0
	str	r9, [r4, #20]
	b	.L36
.L219:
	str	r3, [r4, #20]
	ldr	r1, [sp, #4]
	mov	r3, #0
	b	.L62
.L227:
	mov	r3, #0
	str	r1, [r4, #20]
	b	.L36
.L229:
	cmp	r1, #1
	movge	r3, r1
	movlt	r3, #1
	sub	r3, r3, #1
	sub	r3, ip, r3
	str	r10, [sp, #16]
	str	r3, [r4, #20]
	str	r8, [r4, #16]
	b	.L47
.L228:
	cmp	r1, #1
	movlt	r1, #1
	ldr	ip, [sp, #36]
	sub	r1, r1, #1
	sub	r1, ip, r1
	ldr	ip, [sp, #32]
	str	r10, [sp, #16]
	str	r1, [r4, #20]
	str	ip, [r4, #16]
	b	.L22
.L218:
	add	r8, r8, r9
	sub	r3, r3, ip
	mov	r1, #1
	str	r8, [r4, #16]
	str	r3, [r4, #20]
	b	.L51
.L222:
	ldr	ip, [sp, #32]
	ldr	r9, [sp, #20]
	sub	r1, r1, r8
	add	ip, ip, r9
	str	ip, [r4, #16]
	str	r1, [r4, #20]
	b	.L24
.L234:
	.align	2
.L233:
	.word	player
	.word	bgThreeFrontCMBitmap
	.word	.LANCHOR0
	.word	buttons
	.word	isDucking
	.word	bgThreeFrontCMCheatBitmap
	.word	oldButtons
	.word	67109120
	.word	65407
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
	ldr	r2, .L241
	ldr	r1, .L241+4
	ldr	r3, [r2, #20]
	ldr	r1, [r1]
	ldr	r0, .L241+8
	ldrb	ip, [r2, #56]	@ zero_extendqisi2
	ldr	lr, [r2, #36]
	sub	r3, r3, r1
	ldr	r4, .L241+12
	ldr	r1, .L241+16
	ldr	r5, [r0]
	ldr	r2, [r2, #16]
	and	r3, r3, #255
	lsl	r0, ip, #3
	orr	r3, r3, r4
	cmp	lr, #0
	strh	r3, [r1, r0]	@ movhi
	add	ip, r1, ip, lsl #3
	sub	r2, r2, r5
	bne	.L236
	lsl	r3, r2, #23
	lsr	r3, r3, #23
	orr	r3, r3, r4
	strh	r3, [ip, #2]	@ movhi
.L237:
	ldr	r2, .L241+20
	ldr	r3, .L241+24
	ldr	ip, [r2]
	ldr	r2, .L241+28
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
.L236:
	cmp	lr, #1
	lsleq	r2, r2, #23
	lsreq	r2, r2, #23
	orreq	r2, r2, #36864
	strheq	r2, [ip, #2]	@ movhi
	b	.L237
.L242:
	.align	2
.L241:
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
	ldr	r3, .L244
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L245:
	.align	2
.L244:
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
	ldr	r3, .L247
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L248:
	.align	2
.L247:
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
	ldr	r3, .L250
	strh	r2, [r3, #10]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	strh	r1, [r3, #14]	@ movhi
	bx	lr
.L251:
	.align	2
.L250:
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
	ldr	r3, .L255
	ldrh	r3, [r3, #12]
	rsbs	r3, r3, #20
	moveq	r1, #1
	ldreq	r2, .L255+4
	str	lr, [sp, #-4]!
	streq	r1, [r2]
	ldr	r1, .L255+8
	mov	ip, #10
	mov	r0, r1
	ldr	r2, .L255+12
	bic	r3, r3, r3, asr #31
	umull	lr, r2, r3, r2
	lsr	r2, r2, #3
	add	lr, r2, r2, lsl #2
	sub	r3, r3, lr, lsl #1
	add	r3, r3, #480
	lsl	r3, r3, #1
	ldr	lr, .L255+16
	strh	ip, [r0, #8]!	@ movhi
	strh	r3, [r1, #12]	@ movhi
	add	r2, r2, #480
	ldr	r3, .L255+20
	lsl	r2, r2, #1
	strh	lr, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L256:
	.align	2
.L255:
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
	ldr	r3, .L259
	ldrh	r0, [r3, #12]
	rsb	r0, r0, #20
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	bic	r0, r0, r0, asr #31
	ldr	r9, .L259+4
	mov	lr, pc
	bx	r9
	ldr	r1, .L259+8
	ldr	r3, .L259+12
	mov	lr, pc
	bx	r3
	mov	r6, r0
	ldr	r3, .L259+16
	ldrh	r7, [r3, #2]
	and	r0, r7, #31
	mov	lr, pc
	bx	r9
	ldr	r8, .L259+20
	mov	r1, r6
	mov	lr, pc
	bx	r8
	ldr	r10, .L259+24
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
	ldr	r2, .L259+28
	mov	r1, r6
	mov	r0, #1065353216
	mov	r6, r3
	mov	lr, pc
	bx	r2
	ldr	r1, .L259+32
	mov	lr, pc
	bx	r8
	ldr	r3, .L259+36
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
	ldr	r1, .L259+40
	orr	r0, r0, r3, lsl #10
	strh	r0, [r1, #2]!	@ movhi
	ldr	r4, .L259+44
	mov	r3, #1
	mov	r0, #3
	ldr	r2, .L259+48
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L260:
	.align	2
.L259:
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
	ldr	r1, .L269
	ldr	r2, .L269+4
	ldr	r3, .L269+8
	ldr	r4, [r1]
	ldr	r5, [r2]
	ldr	r0, .L269+12
	ldr	r6, .L269+16
	add	ip, r3, #180
.L266:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #56]	@ zero_extendqisi2
	lsl	r9, r2, #3
	moveq	r2, r9
	strheq	lr, [r0, r2]	@ movhi
	beq	.L263
	ldr	r1, [r3, #16]
	sub	r1, r1, r4
	add	r8, r1, #16
	cmp	r8, #256
	bhi	.L264
	ldr	r8, [r3, #20]
	sub	r8, r8, r5
	add	r10, r8, #16
	cmp	r10, #176
	bhi	.L264
	and	r1, r1, r6
	add	r9, r0, r2, lsl #3
	and	r8, r8, #255
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r9, #2]	@ movhi
	strh	r7, [r9, #4]	@ movhi
	strh	r8, [r0, r2]	@ movhi
.L263:
	add	r3, r3, #60
	cmp	r3, ip
	bne	.L266
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L264:
	strh	lr, [r0, r9]	@ movhi
	b	.L263
.L270:
	.align	2
.L269:
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
	ldr	r6, .L273
	mov	r4, r0
	mov	lr, pc
	bx	r6
	ldr	r3, .L273+4
	smull	r2, r3, r0, r3
	add	r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #7
	ldr	r2, .L273+8
	ldr	r1, .L273+12
	ldr	r2, [r2]
	rsb	r3, r3, r3, lsl #3
	sub	r0, r0, r3, lsl #5
	rsb	r4, r4, r4, lsl #4
	add	r4, r1, r4, lsl #2
	ldr	r3, .L273+16
	add	r0, r0, r2
	str	r0, [r4, #16]
	ldr	r5, [r3]
	mov	lr, pc
	bx	r6
	ldr	r3, .L273+20
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
.L274:
	.align	2
.L273:
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
	ldr	r0, .L279
	ldr	r3, .L279+4
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r7, #16
	mov	r6, #1
	ldr	r4, .L279+8
.L276:
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
	bne	.L276
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L280:
	.align	2
.L279:
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
	ldr	r4, .L292
	ldr	r6, .L292+4
	ldr	r7, .L292+8
	ldr	r8, .L292+12
	ldr	r10, .L292+16
	ldr	r9, .L292+20
	ldr	fp, .L292+24
	sub	sp, sp, #20
.L287:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L283
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
	bne	.L290
	ldr	r3, [r8]
	ldr	r2, [r4, #20]
	add	r3, r3, #160
	cmp	r2, r3
	bgt	.L291
.L283:
	add	r5, r5, #1
	cmp	r5, #3
	add	r4, r4, #60
	bne	.L287
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L290:
	mov	r0, r9
	ldr	r1, [r10]
	mov	r2, #0
	mov	lr, pc
	bx	fp
	mov	r2, #0
	ldr	r1, .L292+28
	ldr	r3, [r1, #52]
	sub	r3, r3, #1
	cmp	r3, r2
	str	r3, [r1, #52]
	moveq	r1, #1
	mov	lr, #20
	mov	ip, #101
	ldreq	r3, .L292+32
	streq	r1, [r3]
	ldr	r3, .L292+36
	mov	r0, r5
	str	lr, [r6, #16]
	str	ip, [r6, #20]
	str	r2, [r6, #12]
	str	r2, [r3]
	str	r2, [r8]
	bl	resetSnowThree
	b	.L283
.L291:
	mov	r0, r5
	bl	resetSnowThree
	b	.L283
.L293:
	.align	2
.L292:
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
