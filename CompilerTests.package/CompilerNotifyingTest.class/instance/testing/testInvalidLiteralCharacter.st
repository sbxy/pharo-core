testInvalidLiteralCharacter
	self setUpForErrorsIn: '^ #yourself , #` Invalid literal character ->`) , #end'.
	self enumerateAllSelections.