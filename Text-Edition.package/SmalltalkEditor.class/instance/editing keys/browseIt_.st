browseIt: t1 
	Smalltalk tools userManager canBrowse
		ifFalse: [^ false].
	self browseIt.
	^ true