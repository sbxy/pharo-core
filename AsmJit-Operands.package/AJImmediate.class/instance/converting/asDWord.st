asDWord
	"answer the 32bit word representing a value"
	(self fitsInSize: 4)
		ifFalse: [ Error signal: self asString, ' exceeds doubleword (32bit) range' ].

	(self isSigned and: [ value < 0 ]) ifTrue: [ ^ (1<<32) + value ].
	
	^ value