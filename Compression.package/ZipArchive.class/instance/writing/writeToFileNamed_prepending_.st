writeToFileNamed: aFileName prepending: aString
	
	"Catch attempts to overwrite existing zip file"
	(self canWriteToFileNamed: aFileName)
		ifFalse: [ ^self error: (aFileName, ' is needed by one or more members in this archive') ].
	StandardFileStream 
		forceNewFileNamed: aFileName
		do: [ :stream | self writeTo: stream prepending: aString].
	