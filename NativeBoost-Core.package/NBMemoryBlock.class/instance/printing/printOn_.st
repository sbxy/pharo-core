printOn: aStream

	super printOn: aStream.
	
	aStream 
		nextPutAll: '( @ 16r';
		nextPutAll: (address printStringBase: 16);
		nextPutAll: ', ';
		print: length.
		
	free ifTrue: [ aStream nextPutAll: ', free' ].
	
	aStream nextPut: $)