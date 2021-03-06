subclassResponsibilityFor: aSelector in: aClass 
	| methodNode position source |
	source := aClass sourceCodeFor: aSelector.
	methodNode := RBParser parseMethod: source onError: [:err :pos | ^nil].
	position := methodNode arguments isEmpty 
				ifTrue: [methodNode selectorParts last stop]
				ifFalse: [methodNode arguments last stop].
	^'<1s><n><t>self subclassResponsibility' 
		expandMacrosWith: (source copyFrom: 1 to: position)