returnUnionPointer: aPointer
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #(NBTestUnion2Pointers (void * aPointer) ) 
		emit: [:gen :proxy :asm |
			self return4Bytes: asm.
		]
	