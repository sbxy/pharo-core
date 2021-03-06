assertClass: readerClass providesServices: labels
	| services suffix |
	suffix := readerClass extension.
	self assert: (Smalltalk tools fileList isReaderNamedRegistered: readerClass name).
	services := readerClass fileReaderServicesForFile: 'foo' suffix: suffix.
	self assert: ((services collect: [:service | service buttonLabel]) includesAllOf: labels)