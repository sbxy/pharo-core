mcRepositoryAsUser: usernameString withPassword: passwordString

	^ MCFtpRepository
			host: (self port ifNil: [ self authority ] ifNotNil: [ self authority , ':', self port ])
			directory: self fullPath allButFirst "FTW: MCFtpRepository assumes NO prefixed / in the path"
			user: usernameString
			password: passwordString.