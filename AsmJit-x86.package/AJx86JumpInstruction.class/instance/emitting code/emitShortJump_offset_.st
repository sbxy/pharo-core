emitShortJump: desc offset: delta
	"short jump"
	^ self isConditional
		ifTrue: [ {(16r70 + desc opCode1). (delta asByte)} asByteArray ]
		ifFalse: [ {16rEB. (delta asByte)} asByteArray ]