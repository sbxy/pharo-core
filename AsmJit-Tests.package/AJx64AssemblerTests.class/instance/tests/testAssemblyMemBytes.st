testAssemblyMemBytes
	asm
		mov: (RSI ptr + ECX size: 1) -> BL;
		mov: BL -> (RSI ptr + ECX size: 1).
	self assert: asm bytes = #(16r8A 16r1C 16r0E 16r88 16r1C 16r0E) asByteArray