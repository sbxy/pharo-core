printOn: aStream

	super printOn: aStream.
	color isNil
		ifFalse: [ aStream nextPutAll: ' color: ', color printString].
	emphasis isNil
		ifFalse: [ aStream nextPutAll: ' emphasis: ', emphasis printString].
	tokens isNil
		ifFalse: [ aStream nextPutAll: ' tokens: ', tokens printString]
	
	