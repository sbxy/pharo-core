returnOop0Of: anArg 

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin >
	
	^ self nbCallout
		options: #( + optUseStackPointer optNoAlignment +optCheckIndirectArgBounds - optDirectProxyFnAddress );
		function: #( oop (oop anArg@0) ) emit: [:gen |
			gen asm mov: gen asm ESP ptr to: gen asm EAX ]
	