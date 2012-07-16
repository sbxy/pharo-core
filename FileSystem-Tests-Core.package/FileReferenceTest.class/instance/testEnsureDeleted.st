tests
testEnsureDeleted

	| reference |
	reference := filesystem / 'plonk'.
	
	"Deletes the file if it exists"
	reference ensureFile.
	self assert: reference exists. 
	reference ensureDeleted. 
	self deny: reference exists. 

	"No-op if file does not exist"
	self shouldnt: [reference ensureDeleted] raise: Error.
