visitPragmaNode: aPragmaNode
	aPragmaNode selectorParts do: [ :token|
	self 
		addStyle: #pragmaKeyword
		forNode: token ].
	
	aPragmaNode arguments do: [ :each | self visitNode: each ]