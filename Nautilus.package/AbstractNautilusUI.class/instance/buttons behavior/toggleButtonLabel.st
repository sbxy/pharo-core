toggleButtonLabel

	^ self showPackages
		ifTrue: [ 'Hierarchy' ]
		ifFalse: [ 'Flat' ]