storeBinaryOn: aStream
	"Store the receiver on a binary (file) stream"
	value < 256 
		ifTrue:[aStream basicNextPut: value]
		ifFalse:[aStream nextInt32Put: value].