tests
testRename

	| file newName tmp originalPwd originalFullName |
	[
		file := (FileLocator imageDirectory / 'oldName') ensureFile.
		originalFullName := file fullName.
		tmp := (FileLocator imageDirectory / 'tmp') ensureDirectory.
		originalPwd := FileSystem disk workingDirectory.
		
		file renameTo: 'newName'.
		
		self deny: originalFullName asFileReference exists.
		self assert: file basename equals: 'newName'.
		self assert: (originalFullName asFileReference parent / 'newName') exists		
	] ensure: [
		file delete.
		tmp deleteAll.
	].