checkMethod: aContext 
	(aContext compiledMethod allLiterals anySatisfy: [ :each | self doesLiteralArrayContainComma: each ]) 
		ifTrue: [ 
			result 
				addClass: aContext selectedClass
				selector: aContext selector ]