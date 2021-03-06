testGZip

	| materialization |
	FileStream forceNewFileNamed: 'number.fuel.zip' do: [:aFileStream | 
		|gzip|
		aFileStream binary.
		gzip := GZipWriteStream on: aFileStream.
		FLSerializer newDefault serialize: 123 on: gzip.
		gzip close. ].
	
	FileStream oldFileNamed: 'number.fuel.zip' do: [:aFileStream | 
		|gzip|
		aFileStream binary.
		gzip := GZipReadStream on: aFileStream.		
		materialization := FLMaterializer newDefault 
			materializeFrom: gzip.
		gzip close. ].