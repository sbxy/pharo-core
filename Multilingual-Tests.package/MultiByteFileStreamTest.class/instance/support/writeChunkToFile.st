writeChunkToFile
	FileStream forceNewFileNamed: 'chunkTest.txt' do: [:stream | stream nextPutAll: self chunkString]