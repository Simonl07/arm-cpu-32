main:
	add sp, sp, #255
	add sp, sp, #255
	add sp, sp, #255
	add sp, sp, #255
	add sp, sp, #4
	sub sp, sp, #16
	mov r0, #4
	str r0, [sp, #12]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp]
	mov r0, sp
	mov r1, #4
	b find_max_s

find_max_s:
	mov r2, r0
	mov r3, #0
	ldr r0, [r2]

loop:

	cmp r3, r1
	beq halt
	ldr r12, [r2]
	add r2, r2, #4
	cmp r12, r0
	movgt r0, r12
	add r3, #1
	b loop 
	

halt:
	b halt
	