packageFromPattern: pattern withCaption: aCaption
	"If there is a package whose name exactly given by pattern, return it.
	If there is only one package in the system whose name matches pattern, return it.
	Otherwise, put up a menu offering the names of all packages that match pattern, and return the class chosen, else nil if nothing chosen.
	This method ignores tab, space, & cr characters in the pattern"

	| toMatch potentialPackageNames packageNames exactMatch index |
	(toMatch := pattern
		copyWithoutAll:
			{(Character space).
			(Character cr).
			(Character tab)}) isEmpty
		ifTrue: [ ^ nil ].
	
	self packageOrganizerClass default packageNamed: toMatch ifAbsent: [ nil ].
	
	toMatch := (toMatch copyWithout: $.) asLowercase.
	potentialPackageNames := (self packageOrganizerClass default packages collect: [:each | each name]) asOrderedCollection.
	packageNames := pattern last = $.
		ifTrue: [ potentialPackageNames select: [ :nm | nm asLowercase = toMatch ] ]
		ifFalse: [ potentialPackageNames select: [ :n | n includesSubstring: toMatch caseSensitive: false ] ].
	packageNames isEmpty
		ifTrue: [ ^ nil ].
	exactMatch := packageNames detect: [ :each | each asLowercase = toMatch ] ifNone: [ nil ].
	index := packageNames size = 1
		ifTrue: [ 1 ]
		ifFalse: [ 
			exactMatch
				ifNil: [ UIManager default chooseFrom: packageNames lines: #() title: aCaption ]
				ifNotNil: [ 
					packageNames addFirst: exactMatch.
					UIManager default chooseFrom: packageNames lines: #(1) title: aCaption ] ].
	index = 0
		ifTrue: [ ^ nil ].
	^ self packageOrganizerClass default packageNamed: (packageNames at: index)"
	self default packageFromPattern: 'Nau' withCaption: ''
	self default packageFromPattern: 'orph' withCaption: ''
	self default packageFromPattern: 'TCompil' withCaption: ''
"