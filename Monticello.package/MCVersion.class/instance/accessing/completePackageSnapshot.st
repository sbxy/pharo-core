completePackageSnapshot
	^ completePackageSnapshot 
		ifNil: [ completePackageSnapshot := self loadCompletePackageSnapshot]