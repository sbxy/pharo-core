accessing
iconNamed: aSymbol
	^ Icons at: aSymbol ifAbsentPut: [self default perform: aSymbol]