main:
	mov r0, #5
	
fib_iter_s:
	mov r1, r0
	cmp r1, #2
	movlt r0, r1
	beq halt

	mov r12, #2
	mov r2, #1
	mov r3, #0

loop:
	cmp r12, r1
	bgt halt
	add r0, r2, r3
	mov r3, r2
	mov r2, r0
	add r12, #1
	b loop	
halt:
	b halt
	