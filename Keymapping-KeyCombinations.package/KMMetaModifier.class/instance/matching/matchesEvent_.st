matchesEvent: aKeyboardEvent
	self flag: #todo. "Command in windows and linux platforms is 'meta' key and do not have any sense (for the 
	 environment, right now). In the future we need to create a KMMetaModifier to handle properly this, and 
	 keep command as a mac-specific key"
	(Smalltalk os isUnix or: [ Smalltalk os isWin32 ])
		ifTrue: [ ^ aKeyboardEvent controlKeyPressed ].		 

	^ aKeyboardEvent commandKeyPressed