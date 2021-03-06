nbUlongAt: index put: value
	"Store unsigned long at one-based index.
	Note, there is no range checking "

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^  self nbCallout function: #(void (self, ulong index, ulong value)) emit: [:gen |
		| asm |
		
		asm := gen asm.
		asm 
			pop: asm EAX;  "pointer to receiver's first byte"
			pop: asm ECX; "index"
			add: asm EAX with: asm ECX;
			pop: asm ECX; "value"
			mov: asm ECX to: asm EAX ptr -1
	] 