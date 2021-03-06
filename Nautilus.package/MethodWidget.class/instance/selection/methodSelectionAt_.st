methodSelectionAt: anIndex

	| elt assoc |
	elt := self getMethods at: anIndex ifAbsent: [ ^ false ].
	
	(methodsSelection keys identityIncludes: elt) ifFalse: [ ^ false].
	
	assoc := methodsSelection associationAt: elt ifAbsent: [ ^ false ].
	assoc key selector = elt selector 
		ifTrue: [ ^ assoc value ]
		ifFalse: [ ^ false ]