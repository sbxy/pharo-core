loadSymbol: aSymbolName fromModule: moduleName

	(moduleName = '' or: [moduleName = 0 ]) ifTrue: [
		"if module name is empty, try to retrieve symbol from globals "
		^ self getGlobalSymbolPointer: aSymbolName 
		].
	^ super loadSymbol: aSymbolName fromModule: moduleName