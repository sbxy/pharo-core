openLog
	"This is a _private_ method,
	Because it really belongs to logging facility,
	we should delegate to it at some point "

	^ (FileStream fileNamed: Smalltalk tools debugger logFileName)
		ifNil: [ Transcript ]
		ifNotNil: [ :stream | 
			stream
				wantsLineEndConversion: true;
				setToEnd;
				yourself ]