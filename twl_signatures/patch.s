.arm.little

.create "sigpatch.bin", 0
.thumb

	mov r0, #0
	add sp, #312
	pop {r4, r5, r6, pc}

.close

.create "rsa.bin", 0
.thumb

	mov r0, #1

.close

.create "sha.bin", 0
.thumb

	mov r0, #1
	bx lr

.close

.create "header.bin", 0
.thumb

	mov r0, #0
	.halfword 0

.close
