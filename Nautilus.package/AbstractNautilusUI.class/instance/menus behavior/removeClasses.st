removeClasses
	"Remove the selected class from the system, at interactive user request.  Make certain the user really wants to do this, since it is not reversible.  Answer true if removal actually happened."

	| result scroll |
	self okToChange ifFalse: [^ false].
	scroll := list2 scrollValue y.
				
	result := self removeClasses: (self selectedClasses collect: #theNonMetaClass).

	result
		ifTrue: [	
			classesSelection removeAll.
			self selectedClass: nil ].
	list2 vScrollValue: scroll.
	^ result