sourceFileStreamIfAbsent: aBlock
	^ self sourceFileStream ifNil: aBlock