failWithMessage: aString
	
	| errorCode |
	
	errorCode := self errorCodeForMessage: aString.
	
	^ self failWithCode: errorCode
