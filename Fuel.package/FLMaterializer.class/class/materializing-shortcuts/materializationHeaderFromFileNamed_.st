materializationHeaderFromFileNamed: aFilename

	^StandardFileStream 
		oldFileNamed: aFilename 
		do: [:aFileStream | 
			(self newDefault materializeHeaderFrom: aFileStream binary) ]
