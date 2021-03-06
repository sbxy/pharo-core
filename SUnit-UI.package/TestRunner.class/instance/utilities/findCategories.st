findCategories
	| visible |
	visible := Set new.
	self baseClass withAllSubclassesDo: [ :each |
		each category ifNotNil: [ :category |
			visible add: category ] ].
	^ Array streamContents: [ :stream |
		Smalltalk organization categories do: [ :each |
			((visible includes: each) 
					and: [ categoryPattern isNil or: [ (categoryPattern matchesIn: each) isEmpty not]])
				ifTrue: [ stream nextPut: each ] ] ].