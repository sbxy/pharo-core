rewriteTempNamedRead: aTempName forContext: aContext
	| rewriter offset |

	offset := aContext tempNames indexOf: aTempName.
	rewriter := RBParseTreeRewriter new.
	rewriter 
		replace:  aTempName
		with: 'ThisContext namedTempAt:', offset asString.

		
	(rewriter executeTree: self) 
		ifTrue: [^rewriter tree]
		ifFalse: [^self].