queryKeys
	^ self hasQuery
		ifTrue: [ self query keys ]
		ifFalse: [ #() ]