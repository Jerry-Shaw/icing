.arm.little

.create "patch1.bin", 0

	.word 0xFFFF0B28

.close

.create "patch2.bin", 0
	// bic r1, sp, IMM - We don't actually specify the immediate here.
	.byte 0x10
	.halfword 0xE3CD
	orr r1, r1, #0xf00
	add r1, r1, #0x28
	ldr r2, [r1]
	stmdb r2!, {sp, lr}
	mov sp, r2
	blx r0
	pop {r0, r1}
	mov sp, r0
	bx r1

.close
