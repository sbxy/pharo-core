create
	"create me in the FT2Plugin. This gets my handle, and loads the fields"
	
	fileContentsExternalMemory 
		ifNil: [		
			self
				newFaceFromFile: filename asFileReference
				index: index ]
		ifNotNil: [
			self 
				newFaceFromExternalMemory: fileContentsExternalMemory 
				index: index ].
	self loadFields
