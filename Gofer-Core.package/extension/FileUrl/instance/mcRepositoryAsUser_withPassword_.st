mcRepositoryAsUser: usernameString withPassword: passwordString
	
	^ MCDirectoryRepository new directory: self asFileReference.