releaseCallbackIndex: anIndex
	| callbacks |
	"release a previously registered zero-based callback index"
	
	callbacks := self at: #callbacks ifAbsent: [^ self ].
	
	freeCallbackIndexes add: anIndex.
	callbacks at: anIndex+1 put: nil.