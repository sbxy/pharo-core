default
	^ Default ifNil: [ Default := PharoFilesOpener new ]