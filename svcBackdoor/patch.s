.arm.little

.create "patch1.bin", 0

	.word 0xFFFF0B28

.close

.create "patch2.bin", 0

	.word 0x0FE3CD10
	.word 0x28E3811C
	.word 0x00E28110
	.word 0x00E59120
	.word 0x02E92260
	.word 0x30E1A0D0
	.word 0x03E12FFF
	.word 0x00E8BD00
	.word 0x11E1A0D0
	.halfword 0x2FFF
	.byte 0xE1

.close
