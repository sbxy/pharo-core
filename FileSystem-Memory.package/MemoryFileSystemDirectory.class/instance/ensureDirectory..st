creation
ensureDirectory: aDirectoryName
	^ self 
		fileEntryAt: aDirectoryName
		put: (MemoryFileSystemDirectory named: aDirectoryName)