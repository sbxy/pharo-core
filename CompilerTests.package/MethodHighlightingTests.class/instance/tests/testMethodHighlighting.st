testMethodHighlighting
	| map before after method retpc |
	"Test the highlighting of the asXML method.  Test the highlighting of the return
	 statement which should include the whole block supplied to streamContents:."
	"DebuggerMethodMap voidMapCache"
	"DebuggerMethodMap forMethod: MethodHighlightingTests >> #asXML"
	method := MethodHighlightingTests >> #asXML.
	map := DebuggerMethodMap forMethod: method.
	retpc := method endPC.
	before := map rangeForPC: retpc contextIsActiveContext: false.
	map instVarNamed: 'abstractSourceRanges' put: nil.
	after := map rangeForPC: retpc contextIsActiveContext: false.
	self assert: before size > 500.
	self assert: before = after