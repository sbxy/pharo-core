primAddGCRoot: addr

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	"add a given address as GC root"
	
	^ self nbCallout function: #(void ( ulong addr ) ) emit: [:gen |
		| proxy asm |
		proxy := gen proxy.
		asm := gen asm.
		
		asm 
			pop: asm EAX. "address"
			
		proxy addGCRoot: asm EAX.
	].
	
