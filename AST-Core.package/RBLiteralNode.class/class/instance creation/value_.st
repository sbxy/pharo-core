value: aValue 
	^((aValue class == Array or: [aValue class == ByteArray]) 
		ifTrue: [RBLiteralArrayNode]
		ifFalse: [RBLiteralValueNode]) value: aValue