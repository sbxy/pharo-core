store: numBytes accumulated: accumBytes

	| toShift left |
	
	asm label: ('write', numBytes asString , 'to' , accumBytes asString) asSymbol.
	
	(accumBytes + numBytes ) > 4 
		ifTrue: [ toShift := 4 - accumBytes. left := numBytes - toShift ] 
		ifFalse: [ toShift := numBytes. left := 0 ].
	
	(accumBytes = 0 and: [numBytes = 4]) ifTrue: [
		"just store directly"
		asm mov: asm EAX to: asm EDI ptr.	
	].
	asm shrd: asm EBX with: asm EAX with: toShift * 8.
	
