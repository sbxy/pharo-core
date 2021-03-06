primLeave: leaveAddr stackPtr: saveStackPtr contextOop: senderContext 
	returnValue: oop primitiveMethod: aMethod
	"simply jump to the address, provided in leaveAddr parameter,
	which should be an unsigned integer value"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ NBNativeCodeGen methodAssembly: [:gen | | proxy asm |
		proxy := gen proxy.
		asm := gen asm.
		proxy stackValue: 4. "leaveAddr"
		proxy positive32BitValueOf: EAX.
		asm push: EAX.
		proxy ifFailedJumpTo: #failed.
		asm pop: EAX;
			jmp: EAX.  " jump to callback leave address "
		asm label: #failed.
		gen epilogue.
	]
