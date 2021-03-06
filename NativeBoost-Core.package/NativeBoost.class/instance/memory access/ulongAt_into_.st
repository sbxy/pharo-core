ulongAt: addr into: returnValueBuffer

	"read uint from given address"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^ self nbCallout
		" do not use optimizations, since it may lead to infinite resursion"
		options: #( - optDirectProxyFnAddress optUseStackPointer + optNoAlignment);
		function: #( NBBootstrapUlong (ulong addr))
		emit: [:gen | |asm|
			asm := gen asm.
			asm pop: asm EAX.
			asm mov: asm EAX ptr to: asm EAX
			]
