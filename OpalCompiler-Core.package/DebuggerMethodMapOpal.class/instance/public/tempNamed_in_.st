tempNamed: name in: aContext
	"Answer the value of the temp with name in aContext"
	
	| scope var |
	scope := aContext sourceNode scope.
	var := scope lookupVar: name.
	^var readFromContext: aContext scope: scope.
		