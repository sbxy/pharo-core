fieldAt: aFieldName put: value
	"This method is used by auto-generated accessor method(s) to generate code for accessing
	field(s) of external structure. Do not override"

	^ NBFFICallout handleFailureIn: thisContext sender
		nativeCode: [:gen | self emitWrite: aFieldName generator: gen. gen bytes ]
