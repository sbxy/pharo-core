structArrayType
	^StructArrayType isNil ifTrue: [StructArrayType := NBExternalArray ofType: self structType] ifFalse:[StructArrayType]