signalError: error
	"set error/code and signal it"
	(errorCode := error) isSymbol 
		ifTrue: [
			" some errors produced by VM translated to symbols. we unifying it here to draw better description from our pool (see
			NativeBoostConstants class>> #initErrorDescriptions )"
			errorCode := ((Smalltalk specialObjectsArray at: 52) indexOf: error ifAbsent: [ ^self signal: self description ]) -1
		].
	
	^ self signal: self description