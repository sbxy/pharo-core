subclassesDo: aBlock 
	"Evaluate the argument, aBlock, for each of the receiver's immediate subclasses."
	self subclasses size == 0 
		ifFalse:[self subclasses do: aBlock]