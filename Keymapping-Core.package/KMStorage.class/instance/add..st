accessing
add: aKeymap
	aKeymap hasName
		ifTrue: [ namedRegistry at: aKeymap name put: aKeymap ]
		ifFalse: [ annonimousRegistry add: aKeymap ].