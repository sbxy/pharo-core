classInstVarNamesFor: aPseudoClass
	| tokens |
	
	self flag: #traits.
	aPseudoClass metaClass hasDefinition ifFalse: [^ #()].
	tokens := aPseudoClass metaClass definition parseLiterals.
	"tokens size = 4 ifFalse: [self error: 'Unrecognized metaclass definition']."
	^ tokens last findTokens: ' '