checkMethod: aContext
	(self packageSatisfying: [ :info | info includesMethod: aContext selector ofClass: aContext selectedClass ]) isNil
		ifTrue: [ self result addClass: aContext selectedClass selector: aContext selector ]