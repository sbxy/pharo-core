notify: message at: location in: code
	self flag: #hack.
	"Should use the new OPalWarnings directly instead of recreating a SyntaxErrorNotification"
	SyntaxErrorNotification 
		inClass: STCommandLineHandler
		category: nil 
		withCode: code
		doitFlag: nil
		errorMessage: message
		location: location.