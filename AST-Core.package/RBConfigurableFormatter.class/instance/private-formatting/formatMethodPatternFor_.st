formatMethodPatternFor: aMethodNode 
	aMethodNode arguments isEmpty
		ifTrue: [codeStream nextPutAll: aMethodNode selector]
		ifFalse: 
			[self
				with: aMethodNode selectorParts
				and: aMethodNode arguments
				do: 
					[:key :arg | 
					codeStream nextPutAll: key value.
					self space.
					self visitNode: arg]
				separatedBy: 
					[MethodSignatureOnMultipleLines
						ifTrue: [self newLine]
						ifFalse: [self space]]]