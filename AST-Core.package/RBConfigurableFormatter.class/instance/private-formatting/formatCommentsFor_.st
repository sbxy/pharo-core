formatCommentsFor: aNode 
	originalSource isNil ifTrue: [^self].
	aNode comments do: 
			[:each | 
			codeStream
				space;
				nextPutAll: (originalSource copyFrom: each first to: each last)]