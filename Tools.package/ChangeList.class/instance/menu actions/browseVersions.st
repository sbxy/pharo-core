browseVersions
	| change browser |
	listIndex = 0
		ifTrue: [^ nil ].
	change := changeList at: listIndex.
	change classIncludesSelector		
			ifFalse: [ ^nil ].
	browser := super browseVersions.
	browser ifNotNil: [ browser addedChangeRecord: change ].
	^browser