asString
	^ self item
		ifNotNil: [self level = 1
				ifTrue: [self model level = 2
						ifTrue: [self item name asString]
						ifFalse: [self model level = 3
								ifTrue: [self item asString]]]
				ifFalse: [self item name asString]] 