getErrorFromJit: aContext
	| lastError method |
	method := aContext method.

	"Check that method has a primitive 220"
	(method primitive = self jitPrimitiveNumber)
		ifFalse: [ ^ ErrNoNBPrimitive ].

	(method pragmas anySatisfy: [:p | p keyword == #primitive:error: ])
	ifTrue: [
		"A primitive error is always the last temp (ensured by compiler) "
		lastError := aContext  tempAt: method numTemps. 
	] ifFalse: [ lastError := ErrInvalidPrimitiveVoltageUse ].

	^ lastError 