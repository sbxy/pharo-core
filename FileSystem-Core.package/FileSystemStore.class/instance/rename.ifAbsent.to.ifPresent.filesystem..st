private
rename: sourcePath ifAbsent: absentBlock to: destinationPath ifPresent: presentBlock filesystem: anFSFilesystem

	self deprecated: 'Use #rename:ifAbsent:to:ifPresent:filesystem:' on: '3 April 2012' in: 'Pharo 1.4'.
	^ self 
		rename: sourcePath 
		ifAbsent: absentBlock 
		to: destinationPath 
		ifPresent: presentBlock 
		fileSystem: anFSFilesystem.