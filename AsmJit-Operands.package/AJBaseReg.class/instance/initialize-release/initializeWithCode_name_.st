initializeWithCode: aRegisterCode name: aSymbol
	super initialize.
	self code: aRegisterCode.	"Also sets size"
	name := aSymbol