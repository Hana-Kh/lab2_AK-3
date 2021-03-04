.global lab1
.syntax unified

#define A #3
#define B #3
#define C #3

lab1:
	push {lr}
	mov r0, A
	add r0, B	// A + B
	lsr r1, r0, #1	// (A + B)/2
	mov r0, #1
	mov r2, C
	bl f_func 	// C!
	add r0, r1	// (A + B)/2 + C!
	pop {pc}
	
f_func:
	push {lr}
.start:
	mul r0, r2
	subs r2, #1
	bne .start
	pop {pc}
