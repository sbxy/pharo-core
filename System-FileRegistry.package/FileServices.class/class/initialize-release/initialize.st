initialize
	"FileServices initialize"
	Smalltalk globals allClassesDo: [ :aClass |
		(aClass class includesSelector: #fileReaderServicesForFile:suffix:)
			ifTrue: [self registerFileReader: aClass]].