requestFullName
	| initialAnswer |
	
	initialAnswer := fullName isEmptyOrNil
				ifTrue: ['FirstnameLastname' translated]
				ifFalse: [fullName].
				
	self checkAndSetFullNameWith: (AuthorNameRequest new initialAnswer: initialAnswer) signal