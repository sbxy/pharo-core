uncompressedFileName: fullName
	^((fullName endsWith: '.gz') and: [self confirm: ('{1}
appears to be a compressed file.
Do you want to uncompress it?' translated format:{fullName})])
		ifFalse: [fullName]
		ifTrue:[self saveContents: fullName]