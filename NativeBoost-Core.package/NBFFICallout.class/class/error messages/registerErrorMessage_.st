registerErrorMessage: aString
	| newCode |
	
	CustomErrorMessages ifNil: [ 
		CustomErrorMessages := Dictionary new.
		CustomErrorCodes := Dictionary new.
	].

	(CustomErrorMessages includesKey: aString) ifTrue: [
		^ CustomErrorMessages at: aString
	].
	
	"add new message and register code for it "

		
	newCode := 600 + CustomErrorCodes size.
	CustomErrorMessages at: aString put: newCode.
	CustomErrorCodes at: newCode put: aString.
	
	^ newCode