initialization
initialDirectoryList

	| dirList |
	dirList := (FileSystem disk root) directories collect: [ :each |
		FileDirectoryWrapper with: each name: each basename model: self].
	
	dirList isEmpty ifTrue:[
		dirList := Array with: (FileDirectoryWrapper 
			with: FileSystem disk workingDirectory
			name: FileSystem disk workingDirectory basename 
			model: self)].
		
	^dirList