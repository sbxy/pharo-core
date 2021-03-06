parseAnonFunction: aFunctionDefinition

"
Parse a function definition in a form of: 

#( returnType (arguments) )
or

'returnType (arguments)'


Answer an instance of NBFnSpec class
"
	| argsSpec retType |
	
	fnSpec := NBFnSpec new.
	
	aFunctionDefinition isString ifTrue: [

		retType :=  (aFunctionDefinition copyUpTo: $( ) trimBoth.
		argsSpec := ((aFunctionDefinition copyAfter: $( ) copyUpTo: $)) trimBoth.
	
	] ifFalse: [

		argsSpec := aFunctionDefinition last gather: [:ea | ea asString, ' ' ].
		retType := aFunctionDefinition allButLast  gather: [:ea | ea asString, ' ' ].
	].
	
	stream := retType readStream.
	fnSpec returnType: (requestor returnType: self parseType).

	stream atEnd ifFalse: [ self error: 'Nothing more expected after function type'].	
	
	stream := argsSpec readStream.
	self parseArguments.

	^ fnSpec