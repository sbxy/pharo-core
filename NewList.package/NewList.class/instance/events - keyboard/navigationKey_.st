navigationKey: anEvent

	self isMultipleSelection
		ifTrue: [ | keyString |
			keyString := anEvent keyString.
			keyString = '<Cmd-a>'
				ifTrue: [ 
					self selectAll.
					^ true ].	
			keyString = '<Cmd-i>'
				ifTrue: [ 
					self inverseSelection.
					^ true ].
			keyString = '<Cmd-A>'
				ifTrue: [ 
					self deselectAll.
					^ true ]	].
				
	^ super navigationKey: anEvent