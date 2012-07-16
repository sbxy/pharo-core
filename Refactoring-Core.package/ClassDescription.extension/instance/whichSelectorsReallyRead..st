*refactoring-core-fixes
whichSelectorsReallyRead: aString
	"This is a modified version of #whichSelectorsRead: that does exclude the writers."
	
	| index |
	index := self
		instVarIndexFor: aString
		ifAbsent: [ ^ IdentitySet new ].
	^ methodDict keys select: [ :each |
		(methodDict at: each)
			readsField: index ]