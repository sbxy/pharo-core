saveString: aString toFile: aFileName
	"Save the given string to the given file"
	
	FileStream forceNewFileNamed: aFileName do: 
	[ :stream | 
		stream converter: (TextConverter newForEncoding: encoding).
		stream wantsLineEndConversion: true.
		stream lineEndConvention: lineEnding.
		stream nextPutAll: aString ].
	