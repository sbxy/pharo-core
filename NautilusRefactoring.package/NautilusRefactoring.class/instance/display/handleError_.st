handleError: anException
	anException actionBlock isNil
		ifTrue: [ self inform: anException messageText ]
		ifFalse: [ 
			(self confirm: anException messageText) 
				ifTrue: [ anException actionBlock value ] ].
	anException resume