nbUInt32AtOffset: zeroBasedOffset  put: value
	
	"Store unsigned 32-bit integer into memory at (receiver's address + ZERO-based offset) using native byte order.
	Note, there is no range checking "

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout function: #(void (self, ulong zeroBasedOffset, uint32 value)) emit: [:gen |
		| asm |
		
		asm := gen asm.
		asm 
			pop: asm EAX;  "pointer to receiver's first byte"
			pop: asm ECX; "offset"
			pop: asm EDX; "value"
			mov: asm EDX to: asm EAX ptr32 + asm ECX
	]
