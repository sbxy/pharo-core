ensureCreateDirectory: aDirectoryName
	^ self 
		fileEntryAt: aDirectoryName
		put: (MemoryFileSystemDirectory named: aDirectoryName)