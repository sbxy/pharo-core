printOn: aStream

	aStream print: selector.
	arguments ifNotNil: [ 
		aStream  
		space;
		print: arguments ]