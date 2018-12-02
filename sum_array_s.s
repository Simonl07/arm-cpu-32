main:
	add sp, sp, #255
	add sp, sp, #255
	add sp, sp, #255
	add sp, sp, #255
	add sp, sp, #4
	sub sp, sp, #16
	mov r0, #99
	str r0, [sp, #12]
	mov r0, #72
	str r0, [sp, #8]
	mov r0, #40
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp]
	mov r0, sp
	mov r1, #4
	b sum_array_s

sum_array_s:

	mov r2, r0
	mov r0, #0
	mov r3, #0
	
loop:
	cmp r3, r1
	beq halt
	ldr r12, [r2, #4]
	add r2, r2, #4
	add r0, r0, r12
	add r3, r3, #1
	b loop

halt:
	b halt
	