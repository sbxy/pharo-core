typeSize
	
	"Answer a number of bytes, which receiver type takes in memory"

	pointerArity > 0 ifTrue: [ ^ self pointerSize ].
	^ self valueSize 