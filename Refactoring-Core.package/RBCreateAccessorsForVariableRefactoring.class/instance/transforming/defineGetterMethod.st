defineGetterMethod
	| selector definingClass |
	definingClass := self definingClass.
	selector := self safeMethodNameFor: definingClass
				basedOn: variableName asString.
	definingClass 
		compile: ('<1s><n><t>^ <2s>' expandMacrosWith: selector with: variableName)
		classified: #(#accessing).
	^selector