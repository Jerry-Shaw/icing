.arm.little

.create "svcBackdoor1.bin", 0

	.word 0xFFFF0B28

.close

.create "svcBackdoor2.bin", 0

    // original code taken from 4.1 O3DS FIRM // 0x3B5C0
	bic r1, sp, #0xFF    // FF 10 CD E3
	orr r1, r1, #0xF00   // 0F 1C 81 E3
	add r1, r1, #0x28    // 28 10 81 E2
	ldr r2, [r1]         // 00 20 91 E5
	stmdb r2!, {sp, lr}  // 00 60 22 E9
	mov sp, r2           // 02 D0 A0 E1
	blx r0               // 30 FF 2F E1
	pop {r0, r1}         // 03 00 BD E8
	mov sp, r0           // 00 D0 A0 E1
	bx r1                // 11 FF 2F E1

.close
