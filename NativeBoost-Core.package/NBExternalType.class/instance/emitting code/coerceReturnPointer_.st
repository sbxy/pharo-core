coerceReturnPointer: gen

	"Return a pointer to receiver. 
	lets just return its value"
	
	| asm EAX cont done |
	asm := gen asm.
	EAX := asm EAX.
	cont := asm uniqueLabelName: 'cont'.
	done := asm uniqueLabelName: 'done'.
	
	(gen optReturnNullAsNil or: [gen optFailOnReturnNull ]) ifTrue: [
		asm or: EAX with: EAX.
		gen optFailOnReturnNull 
			ifTrue: [	asm jz: gen failedLabel. ]
			ifFalse: [
				asm jnz: cont.
				gen proxy nilObject.
				asm jmp: done 	]
	].
	asm label: cont.
	gen optReturnPtrAsExternalAddress 
		ifTrue: [ 
			(NBExternalAddress asNBExternalType: gen) coerceReturnValue: gen ]
		ifFalse: [ 
			gen optReturnPtrAsInt ifFalse: [
				self error: 'Function returns a pointer, but returning raw pointer value is prohibited by options' ].

			gen proxy positive32BitIntegerFor: asm EAX ].
	asm label: done
	