main:
	add sp, sp, #255
	add sp, sp, #255
	add sp, sp, #255
	add sp, sp, #255
	add sp, sp, #4
	mov r0, #10
	bl fib_rec_s
	b halt

fib_rec_s:
	cmp r0, #2 
	bxlt lr
	
	sub sp, #12
	str r4, [sp]
	str r5, [sp, #4]
	str lr, [sp, #8] 

	mov r4, r0
	mov r0, #0
	mov r5, #0

	sub r0, r4, #1
	bl fib_rec_s
	add r5, r0
	sub r0, r4, #2
	bl fib_rec_s
	add r5, r0

	mov r0, r5


	ldr lr, [sp, #8]
	ldr r5, [sp, #4]
	ldr r4, [sp]
	add sp, #12

	bx lr

halt:
	b halt
	