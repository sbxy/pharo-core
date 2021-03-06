recompileCurrentMethodTo: aText notifying: aNotifyer
	| classOfMethod selector |
	
	classOfMethod := self selectedClass.
	selector := classOfMethod compiler parseSelector: aText.
	(selector == self selectedMessageName or: [(self selectedMessageName isDoIt)
		and: [selector numArgs = self selectedMessageName numArgs]]) ifFalse: [
			self inform: 'can''t change selector'. ^ nil].
		
	selector := classOfMethod 
		compile: aText 
		classified: self selectedMessageCategoryName 
		notifying: aNotifyer.
	^ selector 
		ifNotNil: [ classOfMethod compiledMethodAt: selector ]
		