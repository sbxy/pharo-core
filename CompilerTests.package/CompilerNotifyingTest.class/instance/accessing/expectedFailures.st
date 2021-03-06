expectedFailures
	"For these tests, the Compiler does not insert the notification where it would be most informative."
	
	^#(
		"Notifying before the literal (which can be a message send) would be more informative"
		testTooManyLiterals
		
		"Notifying right before the 16th argument would be informative"
		testTooManyArguments
		
		"Notifying before the extraneous argument in the right block woul be useful"
		testifTrueBlockWithArgument  testCaseOtherwiseBlockWithArgument
		
		"Pharo still accept the non standard unichar symbol syntax #) while every other Smalltalk would require quotes #')'"
		testInvalidLiteralCharacter
		)