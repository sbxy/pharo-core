decode: stringStream to: byteStream
	[ stringStream atEnd ]
		whileFalse: [ 
			| char1 char2 char3 char4 |
			self skipWhiteSpace: stringStream.
			char1 := stringStream next.
			char2 := stringStream next.
			char3 := stringStream next.
			char4 := stringStream next.
			char1 isNil | char2 isNil | char3 isNil | char4 isNil
				ifTrue: [ ZnCharacterEncodingError signal: 'Illegal Base64 input' ].
			self
				decode: char1
				and: char2
				and: char3
				and: char4
				to: byteStream ]