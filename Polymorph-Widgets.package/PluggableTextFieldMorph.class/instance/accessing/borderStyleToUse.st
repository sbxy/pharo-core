borderStyleToUse
	"Answer the borderStyle that should be used for the receiver."
	
	^self enabled
		ifTrue: [self theme textFieldNormalBorderStyleFor: self]
		ifFalse: [self theme textFieldDisabledBorderStyleFor: self]