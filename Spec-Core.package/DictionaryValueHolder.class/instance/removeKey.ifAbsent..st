protocol
removeKey: key ifAbsent: aBlock 
	| result |
	
	result := contents removeKey: key ifAbsent: aBlock.
	self contentsChanged.
	^ result