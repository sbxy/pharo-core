value
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^ self nbCallout function: #(size_t () ) emit: [:gen :proxy :asm | 
		proxy receiver.
		proxy varBytesFirstFieldOf: asm EAX.
		
		self class instanceSize = 4 ifTrue: [
			asm mov: asm EAX ptr to: asm EAX.

		] ifFalse: [	
			"not implemented yet, sorry"
			self notYetImplemented.
		].
	] 
