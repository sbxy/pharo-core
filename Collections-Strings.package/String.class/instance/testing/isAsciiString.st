isAsciiString

	^ self anySatisfy: [ :each | each asciiValue > 127 ]
