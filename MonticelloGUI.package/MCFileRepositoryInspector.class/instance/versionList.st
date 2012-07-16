morphic ui
versionList
	| result sortBlock |
	result := selectedPackage isNil
		ifTrue: [ versions ifNil: [ ^ #() ]]
		ifFalse: [ (versions ifNil: [ ^ #() ]) select: [ :each | selectedPackage = each first ] ].
	sortBlock := (self orderSpecs at: order) value.
	sortBlock isNil ifFalse: [
		result := result asSortedCollection: [:a :b | [sortBlock value: a value: b] on: Error do: [true]]].
	
	versionPattern ifNotNil: [
		result := result select: [ :package| versionPattern search: package name ]].
					
	^ result collect: [ :each | self versionHighlight: each fourth ]