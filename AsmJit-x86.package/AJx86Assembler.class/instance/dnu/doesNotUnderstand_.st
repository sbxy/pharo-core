doesNotUnderstand: aMessage
	"try to dispatch a message based on instruction name"
	
	| sel pos |
	sel := aMessage selector. 
	sel isBinary ifTrue: [
		"binary selectors"
		^ super doesNotUnderstand: aMessage ].
	
	"use the first keyword to find the instruction"
	pos := sel indexOf: $:.
	pos > 0 ifTrue: [ sel := (sel first: pos - 1) asSymbol ].
	self instructionDesciptions at: sel ifPresent: [ :description|
		^ self addInstruction: sel description: description operands: aMessage arguments
	].
	
	^ super doesNotUnderstand: aMessage