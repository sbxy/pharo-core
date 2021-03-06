rewriteTempNamedWrite: aTempName forContext: aContext
	| rewriter offset |

	offset := aContext tempNames indexOf: aTempName.
	rewriter := RBParseTreeRewriter new.
	rewriter 
		replace:  aTempName, ' := ``@object'
		with: 'ThisContext namedTempAt:', offset asString,  'put: ``@object'.	
		
	(rewriter executeTree: self) 
		ifTrue: [^rewriter tree]
		ifFalse: [^self].