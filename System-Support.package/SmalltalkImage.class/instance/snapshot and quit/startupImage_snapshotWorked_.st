startupImage: isNewImage snapshotWorked: snapshotResult
	| startupErrors |
	self vm setGCParameters.
	deferredStartupActions := nil.
	isNewImage
		ifTrue: [ Smalltalk clearExternalObjects ].
	startupErrors := OrderedCollection new.
	UIManager default
		boot: isNewImage
		during: [ 
			startupErrors addAll: (self processStartUpList: isNewImage).
			isNewImage
				ifTrue: [ self recordStartupStamp ] ].
	startupErrors addAll: (self executeDeferredStartupActions: isNewImage).
	startupErrors isEmpty
		ifFalse: [ self handleStartupErrors: startupErrors ].
	snapshotResult ifNil: [ self error: 'Failed to write image file (disk full?)' ]