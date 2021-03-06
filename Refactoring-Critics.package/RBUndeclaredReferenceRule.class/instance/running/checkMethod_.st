checkMethod: aContext 
	| undeclared |
	undeclared := Undeclared associations
		detect: [ :each |
			(aContext uses: each)
				and: [ aContext compiledMethod refersToLiteral: each ] ]
		ifNone: [ nil ].
	undeclared notNil ifTrue: [ 
		result addSearchString: undeclared key.
		result 
			addClass: aContext selectedClass
			selector: aContext selector ]