= other
	^ super = other
		ifFalse: [ false ]
		ifTrue: [ self compactClassIndex = other compactClassIndex ]