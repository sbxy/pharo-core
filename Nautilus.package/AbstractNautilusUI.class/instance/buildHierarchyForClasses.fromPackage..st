private
buildHierarchyForClasses: aCollection fromPackage: aPackage

	| result classes |
	result := IdentityDictionary new.
	classes := aCollection asSet.
	classes do: [:class || level |
		level := OrderedCollection with: class.
		class allSuperclassesDo: [:superClass |
			(classes includes: superClass)
				ifTrue: [ level add: superClass beforeIndex: 1 ]].
		(aPackage definedClasses includes: class)
			ifTrue: [ level addFirst: ' ']
			ifFalse: [ level addFirst: ''].
		result at: class put: level ].
	^ result